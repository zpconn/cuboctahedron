#!/usr/bin/env python3
"""Memory-bounded checker for generated row-relation classifier leaves.

The row-relation classifier path keeps heavy generated leaves out of broad
package builds until their behavior is measured.  This helper checks only
`Window*.lean` leaf modules with `lake env lean -j1`, records optional
`/usr/bin/time -v` peak RSS, and can compile `.olean` outputs into an external
cache directory keyed by source hash.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import dataclasses
import hashlib
import json
import os
import resource
import shutil
import subprocess
import time
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_COVERAGE_DIR = (
    REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "Translation"
    / "TwoSource"
    / "RowRelationClassifier"
)
DEFAULT_CACHE_DIR = REPO_ROOT / "evidence" / ".row_relation_classifier_olean_cache"
CACHE_SCHEMA_VERSION = 1


@dataclasses.dataclass(frozen=True)
class CheckTask:
    path: Path
    label: str


@dataclasses.dataclass
class CheckResult:
    label: str
    path: str
    returncode: int
    cached: bool
    elapsed_seconds: float
    max_rss_kb: int | None
    stdout: str
    stderr: str


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def lake_lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return proc.stdout.strip()


def cache_paths(path: Path, cache_dir: Path) -> tuple[Path, Path]:
    rel = path.relative_to(REPO_ROOT)
    olean = cache_dir / rel.with_suffix(".olean")
    meta = cache_dir / rel.with_suffix(".olean.json")
    return olean, meta


def lake_olean_path(path: Path) -> Path:
    return REPO_ROOT / ".lake" / "build" / "lib" / "lean" / path.relative_to(REPO_ROOT).with_suffix(".olean")


def mirror_cache_to_lake(path: Path, cache_dir: Path) -> None:
    olean, _meta = cache_paths(path, cache_dir)
    lake_olean = lake_olean_path(path)
    if not olean.exists():
        raise FileNotFoundError(f"cached olean does not exist: {olean}")
    lake_olean.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(olean, lake_olean)


def cache_current(path: Path, cache_dir: Path, source_hash: str) -> bool:
    olean, meta_path = cache_paths(path, cache_dir)
    if not olean.exists() or not meta_path.exists():
        return False
    try:
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
    except json.JSONDecodeError:
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
    meta = {
        "schema_version": CACHE_SCHEMA_VERSION,
        "source_path": str(path.relative_to(REPO_ROOT)),
        "source_sha256": source_hash,
        "elapsed_seconds": elapsed_seconds,
    }
    meta_path.write_text(json.dumps(meta, indent=2, sort_keys=True) + "\n")


def parse_max_rss_kb(stderr: str) -> int | None:
    marker = "Maximum resident set size (kbytes):"
    for line in stderr.splitlines():
        if marker in line:
            try:
                return int(line.rsplit(":", 1)[1].strip())
            except ValueError:
                return None
    return None


def set_memory_limit(limit_gib: float) -> None:
    if limit_gib <= 0:
        return
    limit = int(limit_gib * 1024**3)
    resource.setrlimit(resource.RLIMIT_AS, (limit, limit))


def run_task(
    task: CheckTask,
    *,
    time_command: bool,
    compile_external: bool,
    reuse_cache: bool,
    cache_dir: Path,
    lean_path: str | None,
    lean_memory_limit_gib: float,
    timeout_seconds: int,
    mirror_to_lake: bool,
) -> CheckResult:
    started = time.monotonic()
    path = task.path
    source_hash = file_sha256(path) if compile_external else ""
    if compile_external and reuse_cache and cache_current(path, cache_dir, source_hash):
        if mirror_to_lake:
            mirror_cache_to_lake(path, cache_dir)
        return CheckResult(
            label=task.label,
            path=str(path.relative_to(REPO_ROOT)),
            returncode=0,
            cached=True,
            elapsed_seconds=time.monotonic() - started,
            max_rss_kb=None,
            stdout="",
            stderr="",
        )

    cmd = ["lean", "-j1"] if compile_external else ["lake", "env", "lean", "-j1"]
    env = None
    if compile_external:
        olean, _meta = cache_paths(path, cache_dir)
        olean.parent.mkdir(parents=True, exist_ok=True)
        cmd.extend(["-R", ".", "-o", str(olean)])
        env = os.environ.copy()
        env["LEAN_PATH"] = f"{lean_path or lake_lean_path()}:{cache_dir}"
    cmd.append(str(path.relative_to(REPO_ROOT)))
    if time_command:
        cmd = ["/usr/bin/time", "-v", *cmd]

    try:
        completed = subprocess.run(
            cmd,
            cwd=REPO_ROOT,
            env=env,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=timeout_seconds,
            preexec_fn=lambda: set_memory_limit(lean_memory_limit_gib),
        )
        returncode = completed.returncode
        stdout = completed.stdout
        stderr = completed.stderr
    except subprocess.TimeoutExpired as exc:
        returncode = 124
        stdout = exc.stdout or ""
        stderr = exc.stderr or ""
        if isinstance(stdout, bytes):
            stdout = stdout.decode(errors="replace")
        if isinstance(stderr, bytes):
            stderr = stderr.decode(errors="replace")

    elapsed = time.monotonic() - started
    if compile_external and returncode == 0:
        write_cache_meta(path, cache_dir, source_hash=source_hash, elapsed_seconds=elapsed)
        if mirror_to_lake:
            mirror_cache_to_lake(path, cache_dir)
    return CheckResult(
        label=task.label,
        path=str(path.relative_to(REPO_ROOT)),
        returncode=returncode,
        cached=False,
        elapsed_seconds=elapsed,
        max_rss_kb=parse_max_rss_kb(stderr),
        stdout=stdout,
        stderr=stderr,
    )


def tasks_from_dir(coverage_dir: Path, kind: str) -> list[CheckTask]:
    patterns = {
        "leaves": "Window*.lean",
        "groups": "Group*.lean",
        "root": "AllWindow*.lean",
    }
    paths = sorted(coverage_dir.glob(patterns[kind]))
    return [CheckTask(path=path, label=path.stem) for path in paths]


def task_from_generated_path(raw_path: str) -> CheckTask:
    path = Path(raw_path)
    if not path.is_absolute():
        path = REPO_ROOT / path
    return CheckTask(path=path, label=Path(raw_path).stem)


def tasks_from_summary(summary_path: Path, kind: str) -> list[CheckTask]:
    payload = json.loads(summary_path.read_text(encoding="utf-8"))
    if kind == "leaves":
        tasks = [task_from_generated_path(entry["out"]) for entry in payload.get("shards", [])]
    elif kind == "groups":
        tasks = [task_from_generated_path(entry["out"]) for entry in payload.get("groups", [])]
    else:
        tasks = [task_from_generated_path(payload["options"]["out"])]
    return sorted(tasks, key=lambda task: task.path)


def selected_tasks(tasks: list[CheckTask], select: str) -> list[CheckTask]:
    if select == "all":
        return tasks
    if not tasks:
        return []
    if select == "focused":
        indices = {0, len(tasks) // 2, len(tasks) - 1}
        largest_index = max(range(len(tasks)), key=lambda index: tasks[index].path.stat().st_size)
        indices.add(largest_index)
        return [tasks[index] for index in sorted(indices)]
    wanted: list[CheckTask] = []
    for raw in select.split(","):
        raw = raw.strip()
        if not raw:
            continue
        index = int(raw)
        if index < 0 or index >= len(tasks):
            raise ValueError(f"selected shard index out of range: {index}")
        wanted.append(tasks[index])
    return wanted


def effective_jobs(args: argparse.Namespace) -> int:
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.job_gib <= 0:
        raise ValueError("--job-gib must be positive")
    if args.memory_budget_gib <= 0:
        raise ValueError("--memory-budget-gib must be positive")
    memory_jobs = max(1, int(args.memory_budget_gib // args.job_gib))
    return max(1, min(args.jobs, memory_jobs))


def summarize(results: list[CheckResult]) -> dict[str, float | int | None]:
    failures = [result for result in results if result.returncode != 0]
    rss_values = [result.max_rss_kb for result in results if result.max_rss_kb is not None]
    elapsed_values = [result.elapsed_seconds for result in results]
    return {
        "checked": len(results),
        "failed": len(failures),
        "cached": sum(1 for result in results if result.cached),
        "max_rss_kb": max(rss_values) if rss_values else None,
        "max_elapsed_seconds": max(elapsed_values) if elapsed_values else 0.0,
        "total_elapsed_seconds": sum(elapsed_values),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--coverage-dir", type=Path, default=DEFAULT_COVERAGE_DIR)
    parser.add_argument("--summary", type=Path, default=None)
    parser.add_argument("--kind", choices=["leaves", "groups", "root"], default="leaves")
    parser.add_argument("--select", default="focused", help="'focused', 'all', or comma shard indices")
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--memory-budget-gib", type=float, default=40.0)
    parser.add_argument("--job-gib", type=float, default=10.0)
    parser.add_argument("--lean-memory-limit-gib", type=float, default=12.0)
    parser.add_argument("--timeout-seconds", type=int, default=1800)
    parser.add_argument("--time", action="store_true", help="wrap Lean in /usr/bin/time -v")
    parser.add_argument("--compile-external", action="store_true")
    parser.add_argument("--reuse-cache", action="store_true")
    parser.add_argument("--cache-dir", type=Path, default=DEFAULT_CACHE_DIR)
    parser.add_argument(
        "--mirror-to-lake",
        action="store_true",
        help="copy successful external .oleans into .lake/build/lib/lean for later imports",
    )
    parser.add_argument("--output", type=Path, default=None)
    args = parser.parse_args()

    if args.summary is not None:
        summary = args.summary if args.summary.is_absolute() else REPO_ROOT / args.summary
        all_tasks = tasks_from_summary(summary, args.kind)
        source_label = str(summary.relative_to(REPO_ROOT))
    else:
        coverage_dir = args.coverage_dir
        if not coverage_dir.is_absolute():
            coverage_dir = REPO_ROOT / coverage_dir
        all_tasks = tasks_from_dir(coverage_dir, args.kind)
        source_label = str(coverage_dir.relative_to(REPO_ROOT))
    tasks = selected_tasks(all_tasks, args.select)
    if not tasks:
        raise SystemExit(f"no row-relation leaf tasks selected from {source_label}")

    jobs = effective_jobs(args)
    lean_path = lake_lean_path() if args.compile_external else None
    print(
        f"checking {len(tasks)} of {len(all_tasks)} row-relation leaf shard(s) "
        f"with kind={args.kind}, jobs={jobs} from {source_label}",
        flush=True,
    )

    results: list[CheckResult] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        futures = [
            pool.submit(
                run_task,
                task,
                time_command=args.time,
                compile_external=args.compile_external,
                reuse_cache=args.reuse_cache,
                cache_dir=args.cache_dir,
                lean_path=lean_path,
                lean_memory_limit_gib=args.lean_memory_limit_gib,
                timeout_seconds=args.timeout_seconds,
                mirror_to_lake=args.mirror_to_lake,
            )
            for task in tasks
        ]
        for future in concurrent.futures.as_completed(futures):
            result = future.result()
            results.append(result)
            rss = "rss=?"
            if result.max_rss_kb is not None:
                rss = f"rss={result.max_rss_kb / (1024 * 1024):.2f} GiB"
            status = "cached" if result.cached else f"exit={result.returncode}"
            print(f"{result.label}: {status}, {rss}, {result.elapsed_seconds:.1f}s", flush=True)

    results.sort(key=lambda item: item.path)
    payload = {
        "schema_version": 1,
        "source": source_label,
        "kind": args.kind,
        "select": args.select,
        "jobs_requested": args.jobs,
        "jobs_effective": jobs,
        "memory_budget_gib": args.memory_budget_gib,
        "job_gib": args.job_gib,
        "lean_memory_limit_gib": args.lean_memory_limit_gib,
        "mirror_to_lake": args.mirror_to_lake,
        "summary": summarize(results),
        "results": [dataclasses.asdict(result) for result in results],
    }
    if args.output is not None:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    else:
        print(json.dumps(payload["summary"], indent=2, sort_keys=True))

    return 1 if payload["summary"]["failed"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
