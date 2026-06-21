#!/usr/bin/env python3
"""Check public interval shard evidence with a RAM-bounded scheduler.

The public interval evidence emitter deliberately keeps heavy proof-carrying
leaves outside the default Lake package build.  This helper reads a shard
manifest and checks generated Lean files by path with `lake env lean`.

By default it remains serial.  When `--jobs` is greater than 1 (or `auto`), it
uses a conservative memory-weighted scheduler: heavy leaves may run in parallel
only when their configured GiB weights fit under `--memory-budget-gib`.

External `.olean` files are written to a cache outside the generated source tree
so regenerating Lean sources does not wipe compiled evidence.  Cache reuse is
guarded by a SHA-256 hash of the source file.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import dataclasses
import hashlib
import json
import os
import subprocess
import sys
import time
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_CACHE_DIR = REPO_ROOT / "evidence" / ".external_olean_cache"
CACHE_SCHEMA_VERSION = 1


@dataclasses.dataclass(frozen=True)
class CheckTask:
    path: Path
    kind: str
    weight_gib: float


@dataclasses.dataclass(frozen=True)
class CheckResult:
    task: CheckTask
    returncode: int
    cached: bool
    elapsed_seconds: float
    stdout: str
    stderr: str
    max_rss_kb: int | None


def load_manifest(path: Path) -> dict:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def task_weight(kind: str, args: argparse.Namespace) -> float:
    if kind == "nonidentity":
        return args.nonidentity_job_gib
    if kind == "translation":
        return args.translation_job_gib
    if kind == "rank_root":
        return args.rank_root_job_gib
    if kind == "verified_root":
        return args.verified_root_job_gib
    return args.light_job_gib


def leaf_tasks(manifest: dict, args: argparse.Namespace) -> list[CheckTask]:
    tasks: list[CheckTask] = []
    for record in manifest.get("nonidentity", []):
        tasks.append(
            CheckTask(
                REPO_ROOT / record["path"]["path"],
                "nonidentity",
                task_weight("nonidentity", args),
            )
        )
    for record in manifest.get("translation", []):
        tasks.append(
            CheckTask(
                REPO_ROOT / record["path"]["path"],
                "translation",
                task_weight("translation", args),
            )
        )
    return tasks


def rank_root_tasks(manifest: dict, args: argparse.Namespace) -> list[CheckTask]:
    tasks: list[CheckTask] = []
    for record in manifest.get("translation_rank_roots", []):
        tasks.append(
            CheckTask(
                REPO_ROOT / record["path"]["path"],
                "rank_root",
                task_weight("rank_root", args),
            )
        )
    return tasks


def verified_root_path(manifest: dict) -> Path | None:
    record = manifest.get("paths", {}).get("verified_root", {})
    if not record.get("exists"):
        return None
    return REPO_ROOT / record["path"]


def lake_lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return proc.stdout.strip()


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def cache_paths(path: Path, cache_dir: Path) -> tuple[Path, Path]:
    rel = path.relative_to(REPO_ROOT)
    olean = cache_dir / rel.with_suffix(".olean")
    meta = cache_dir / rel.with_suffix(".olean.json")
    return olean, meta


def read_cache_meta(meta_path: Path) -> dict | None:
    try:
        with meta_path.open(encoding="utf-8") as handle:
            return json.load(handle)
    except FileNotFoundError:
        return None
    except json.JSONDecodeError:
        return None


def cache_is_current(path: Path, cache_dir: Path, source_hash: str) -> bool:
    olean, meta_path = cache_paths(path, cache_dir)
    if not olean.exists():
        return False
    meta = read_cache_meta(meta_path)
    if meta is None:
        return False
    return (
        meta.get("schema_version") == CACHE_SCHEMA_VERSION
        and meta.get("source_path") == str(path.relative_to(REPO_ROOT))
        and meta.get("source_sha256") == source_hash
    )


def write_cache_meta(
    path: Path,
    cache_dir: Path,
    *,
    source_hash: str,
    elapsed_seconds: float,
) -> None:
    _olean, meta_path = cache_paths(path, cache_dir)
    meta_path.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "schema_version": CACHE_SCHEMA_VERSION,
        "source_path": str(path.relative_to(REPO_ROOT)),
        "source_sha256": source_hash,
        "elapsed_seconds": elapsed_seconds,
    }
    meta_path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def parse_max_rss_kb(stderr: str) -> int | None:
    marker = "Maximum resident set size (kbytes):"
    for line in stderr.splitlines():
        if marker in line:
            try:
                return int(line.rsplit(":", 1)[1].strip())
            except ValueError:
                return None
    return None


def format_rss(rss_kb: int | None) -> str:
    if rss_kb is None:
        return "rss=?"
    return f"rss={rss_kb / (1024 * 1024):.2f} GiB"


def run_lean_task(
    task: CheckTask,
    *,
    per_task_time: bool,
    compile_external: bool,
    lean_path: str | None,
    cache_dir: Path,
    reuse_cache: bool,
) -> CheckResult:
    path = task.path
    rel = path.relative_to(REPO_ROOT)
    started = time.monotonic()
    source_hash = file_sha256(path) if compile_external else ""
    if compile_external and reuse_cache and cache_is_current(path, cache_dir, source_hash):
        return CheckResult(
            task=task,
            returncode=0,
            cached=True,
            elapsed_seconds=time.monotonic() - started,
            stdout="",
            stderr="",
            max_rss_kb=None,
        )

    cmd = ["lake", "env", "lean"]
    env = None
    if compile_external:
        olean, _meta = cache_paths(path, cache_dir)
        olean.parent.mkdir(parents=True, exist_ok=True)
        cmd.extend(["-R", ".", "-o", str(olean)])
        env = os.environ.copy()
        env["LEAN_PATH"] = (
            f"{cache_dir}:{REPO_ROOT}:{lean_path or lake_lean_path()}"
        )
    cmd.append(str(rel))
    if per_task_time:
        cmd = ["/usr/bin/time", "-v", *cmd]
    proc = subprocess.run(
        cmd,
        cwd=REPO_ROOT,
        env=env,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    elapsed = time.monotonic() - started
    if proc.returncode == 0 and compile_external:
        write_cache_meta(
            path,
            cache_dir,
            source_hash=source_hash,
            elapsed_seconds=elapsed,
        )
    return CheckResult(
        task=task,
        returncode=proc.returncode,
        cached=False,
        elapsed_seconds=elapsed,
        stdout=proc.stdout,
        stderr=proc.stderr,
        max_rss_kb=parse_max_rss_kb(proc.stderr) if per_task_time else None,
    )


def print_result(result: CheckResult) -> None:
    rel = result.task.path.relative_to(REPO_ROOT)
    if result.cached:
        print(f"cached [{result.task.kind}] {rel}", flush=True)
        return
    status = "ok" if result.returncode == 0 else "failed"
    print(
        f"{status} [{result.task.kind}] {rel} "
        f"{result.elapsed_seconds:.1f}s {format_rss(result.max_rss_kb)}",
        flush=True,
    )
    if result.returncode != 0:
        if result.stdout:
            print(result.stdout, end="", flush=True)
        if result.stderr:
            print(result.stderr, end="", file=sys.stderr, flush=True)


def run_tasks_bounded(
    tasks: list[CheckTask],
    *,
    phase_name: str,
    max_jobs: int,
    memory_budget_gib: float,
    per_task_time: bool,
    compile_external: bool,
    lean_path: str | None,
    cache_dir: Path,
    reuse_cache: bool,
) -> int:
    if not tasks:
        return 0
    total_weight = sum(task.weight_gib for task in tasks)
    print(
        f"phase {phase_name}: {len(tasks)} file(s), jobs={max_jobs}, "
        f"budget={memory_budget_gib:.1f} GiB, queued-weight={total_weight:.1f} GiB",
        flush=True,
    )
    pending = list(tasks)
    running: dict[concurrent.futures.Future[CheckResult], CheckTask] = {}
    used_gib = 0.0
    with concurrent.futures.ThreadPoolExecutor(max_workers=max_jobs) as pool:
        while pending or running:
            launched = False
            i = 0
            while len(running) < max_jobs and i < len(pending):
                task = pending[i]
                fits = used_gib + task.weight_gib <= memory_budget_gib
                oversized_alone = not running and task.weight_gib > memory_budget_gib
                if fits or oversized_alone:
                    pending.pop(i)
                    used_gib += task.weight_gib
                    rel = task.path.relative_to(REPO_ROOT)
                    if oversized_alone:
                        print(
                            f"starting oversized [{task.kind}] {rel} "
                            f"weight={task.weight_gib:.1f} GiB",
                            flush=True,
                        )
                    else:
                        print(
                            f"starting [{task.kind}] {rel} "
                            f"weight={task.weight_gib:.1f} GiB "
                            f"used={used_gib:.1f}/{memory_budget_gib:.1f}",
                            flush=True,
                        )
                    future = pool.submit(
                        run_lean_task,
                        task,
                        per_task_time=per_task_time,
                        compile_external=compile_external,
                        lean_path=lean_path,
                        cache_dir=cache_dir,
                        reuse_cache=reuse_cache,
                    )
                    running[future] = task
                    launched = True
                else:
                    i += 1
            if not running:
                raise RuntimeError("scheduler made no progress")
            if launched and len(running) < max_jobs:
                continue
            done, _pending_futures = concurrent.futures.wait(
                running,
                return_when=concurrent.futures.FIRST_COMPLETED,
            )
            for future in done:
                task = running.pop(future)
                used_gib -= task.weight_gib
                result = future.result()
                print_result(result)
                if result.returncode != 0:
                    for other in running:
                        other.cancel()
                    print(
                        f"failed: {result.task.path.relative_to(REPO_ROOT)}",
                        file=sys.stderr,
                    )
                    return result.returncode
    return 0


def run_lean(
    path: Path,
    *,
    time: bool,
    compile_external: bool,
    lean_path: str | None,
    cache_dir: Path,
    reuse_cache: bool,
) -> int:
    task = CheckTask(path, "serial", 1.0)
    result = run_lean_task(
        task,
        per_task_time=time,
        compile_external=compile_external,
        lean_path=lean_path,
        cache_dir=cache_dir,
        reuse_cache=reuse_cache,
    )
    print_result(result)
    return result.returncode


def parse_jobs(value: str) -> int:
    if value == "auto":
        return max(1, os.cpu_count() or 1)
    jobs = int(value)
    if jobs < 1:
        raise argparse.ArgumentTypeError("--jobs must be at least 1 or 'auto'")
    return jobs


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "manifest",
        type=Path,
        help="path to evidence/public_interval_shards/.../manifest.json",
    )
    parser.add_argument(
        "--limit",
        type=int,
        help="check only the first N heavy leaves",
    )
    parser.add_argument(
        "--include-index",
        action="store_true",
        help="also check the lightweight shard Index.lean after the leaves",
    )
    parser.add_argument(
        "--include-rank-roots",
        action="store_true",
        help="also check generated rank aggregator modules after leaves",
    )
    parser.add_argument(
        "--include-verified-root",
        action="store_true",
        help=(
            "also check the generated verified shard root; implies "
            "--compile-external and rank roots"
        ),
    )
    parser.add_argument(
        "--compile-external",
        action="store_true",
        help=(
            "compile external evidence modules to the external olean cache "
            "with `lean -R . -o ...`, allowing generated roots to import them"
        ),
    )
    parser.add_argument(
        "--external-cache-dir",
        type=Path,
        default=DEFAULT_CACHE_DIR,
        help=(
            "directory for generated external .olean files; defaults to "
            "evidence/.external_olean_cache"
        ),
    )
    parser.add_argument(
        "--no-cache-reuse",
        action="store_true",
        help="force Lean to recheck files even when cached .olean hashes match",
    )
    parser.add_argument(
        "--jobs",
        default="1",
        help="parallel Lean jobs for each dependency phase; use 'auto' for CPU count",
    )
    parser.add_argument(
        "--memory-budget-gib",
        type=float,
        default=45.0,
        help="RAM budget used by the weighted scheduler",
    )
    parser.add_argument(
        "--nonidentity-job-gib",
        type=float,
        default=45.0,
        help=(
            "scheduler RAM weight for one nonidentity leaf; default keeps "
            "nonidentity leaves serial after observed high-RSS cases"
        ),
    )
    parser.add_argument(
        "--translation-job-gib",
        type=float,
        default=23.0,
        help=(
            "scheduler RAM weight for one translation mask leaf; default "
            "keeps the heaviest observed translation leaves serial under "
            "the 45 GiB VM budget"
        ),
    )
    parser.add_argument(
        "--rank-root-job-gib",
        type=float,
        default=45.0,
        help=(
            "scheduler RAM weight for one translation rank root; default "
            "keeps rank aggregators serial under the 45 GiB VM budget"
        ),
    )
    parser.add_argument(
        "--verified-root-job-gib",
        type=float,
        default=45.0,
        help=(
            "scheduler RAM weight for one verified shard root; default "
            "keeps final stitching serial under the 45 GiB VM budget"
        ),
    )
    parser.add_argument(
        "--light-job-gib",
        type=float,
        default=2.0,
        help="scheduler RAM weight for lightweight checks such as Index.lean",
    )
    parser.add_argument(
        "--time",
        action="store_true",
        help="wrap each Lean invocation in /usr/bin/time -v",
    )
    args = parser.parse_args()

    manifest_path = args.manifest
    if not manifest_path.is_absolute():
        manifest_path = REPO_ROOT / manifest_path
    manifest = load_manifest(manifest_path)
    compile_external = args.compile_external or args.include_verified_root
    max_jobs = parse_jobs(args.jobs)
    cache_dir = args.external_cache_dir
    if not cache_dir.is_absolute():
        cache_dir = REPO_ROOT / cache_dir
    phases: list[tuple[str, list[CheckTask]]] = []
    paths = leaf_tasks(manifest, args)
    if args.limit is not None:
        paths = paths[:args.limit]
    phases.append(("leaves", paths))
    if args.include_rank_roots or args.include_verified_root:
        phases.append(("rank-roots", rank_root_tasks(manifest, args)))
    if args.include_verified_root:
        root_path = verified_root_path(manifest)
        if root_path is None:
            print("manifest has no verified root", file=sys.stderr)
            return 2
        phases.append((
            "verified-root",
            [CheckTask(root_path, "verified_root", args.verified_root_job_gib)],
        ))
    if args.include_index:
        phases.append((
            "index",
            [
                CheckTask(
                    REPO_ROOT / manifest["paths"]["index"]["path"],
                    "index",
                    args.light_job_gib,
                )
            ],
        ))

    total_count = sum(len(phase_tasks) for _name, phase_tasks in phases)
    mode = "serial" if max_jobs == 1 else "parallel"
    print(
        f"{mode} check count: {total_count}; external cache: "
        f"{cache_dir.relative_to(REPO_ROOT) if cache_dir.is_relative_to(REPO_ROOT) else cache_dir}",
        flush=True,
    )
    lean_path = lake_lean_path() if compile_external else None
    reuse_cache = not args.no_cache_reuse
    for phase_name, phase_tasks in phases:
        if max_jobs == 1:
            print(f"phase {phase_name}: {len(phase_tasks)} file(s)", flush=True)
            for task in phase_tasks:
                code = run_lean(
                    task.path,
                    time=args.time,
                    compile_external=compile_external,
                    lean_path=lean_path,
                    cache_dir=cache_dir,
                    reuse_cache=reuse_cache,
                )
                if code != 0:
                    print(
                        f"failed: {task.path.relative_to(REPO_ROOT)}",
                        file=sys.stderr,
                    )
                    return code
        else:
            code = run_tasks_bounded(
                phase_tasks,
                phase_name=phase_name,
                max_jobs=max_jobs,
                memory_budget_gib=args.memory_budget_gib,
                per_task_time=args.time,
                compile_external=compile_external,
                lean_path=lean_path,
                cache_dir=cache_dir,
                reuse_cache=reuse_cache,
            )
            if code != 0:
                return code
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
