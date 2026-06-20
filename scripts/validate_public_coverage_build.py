#!/usr/bin/env python3
"""Memory-safe validation workflow for public generated coverage.

This script implements Phase 8 of the public generated coverage plan.  It runs
focused builds and public-only smoke checks in a fixed order, records peak
memory when available, and refuses to run a broad build unless explicitly
requested after all focused checks pass.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import resource
import shutil
import signal
import subprocess
import sys
import time
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Sequence


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_LOG_ROOT = Path("/tmp") / "cuboctahedron_public_coverage_validation"
NONIDENTITY_COVERAGE_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Coverage"
)
TRANSLATION_COVERAGE_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Coverage"
)


@dataclass
class CommandResult:
    index: int
    label: str
    command: list[str]
    exit_code: int | None
    elapsed_seconds: float
    max_rss_kib: int | None
    timed_out: bool
    oom_suspected: bool
    stdout_log: str
    stderr_log: str
    time_log: str | None


def relative(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def module_from_path(path: Path) -> str:
    rel = path.relative_to(REPO_ROOT).with_suffix("")
    return ".".join(rel.parts)


def sanitize_label(label: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", label).strip("_")


def parse_max_rss_kib(time_text: str) -> int | None:
    for line in time_text.splitlines():
        if "Maximum resident set size" in line:
            try:
                return int(line.rsplit(":", 1)[1].strip())
            except ValueError:
                return None
    return None


def suspected_oom(exit_code: int | None, stdout: str, stderr: str) -> bool:
    combined = f"{stdout}\n{stderr}".lower()
    if "out of memory" in combined or "cannot allocate memory" in combined:
        return True
    return exit_code in {134, 137, -6, -9}


def command_plan() -> tuple[list[tuple[str, list[str]]], dict[str, bool]]:
    commands: list[tuple[str, list[str]]] = [
        (
            "generate-public-coverage-hierarchy",
            [
                "python3",
                "scripts/generate_exact_certificates.py",
                "--mode",
                "public-coverage-hierarchy",
            ],
        ),
        (
            "check-public-coverage-hierarchy",
            [
                "python3",
                "scripts/check_certificates_independently.py",
                "--mode",
                "public-coverage-hierarchy",
            ],
        ),
        (
            "py-compile-scripts",
            [
                "python3",
                "-m",
                "py_compile",
                "scripts/generate_exact_certificates.py",
                "scripts/check_certificates_independently.py",
                "scripts/smoke_largest_generated_chunk.py",
            ],
        ),
        (
            "build-coverage-interval",
            ["lake", "build", "Cuboctahedron.Generated.Coverage.Interval"],
        ),
    ]

    nonid_chunks = sorted(NONIDENTITY_COVERAGE_DIR.glob("Chunk*.lean"))
    translation_chunks = sorted(TRANSLATION_COVERAGE_DIR.glob("Chunk*.lean"))
    chunk_status = {
        "nonidentity_chunks_present": bool(nonid_chunks),
        "translation_chunks_present": bool(translation_chunks),
    }

    if nonid_chunks:
        commands.append(
            (
                "build-nonidentity-smallest-chunk",
                ["lake", "build", module_from_path(nonid_chunks[0])],
            )
        )
        if nonid_chunks[-1] != nonid_chunks[0]:
            commands.append(
                (
                    "build-nonidentity-largest-chunk",
                    ["lake", "build", module_from_path(nonid_chunks[-1])],
                )
            )
    commands.extend(
        [
            (
                "build-nonidentity-coverage-all",
                ["lake", "build", "Cuboctahedron.Generated.NonIdentity.Coverage.All"],
            ),
            (
                "build-nonidentity-complete",
                ["lake", "build", "Cuboctahedron.Generated.NonIdentity.Complete"],
            ),
        ]
    )

    if translation_chunks:
        commands.append(
            (
                "build-translation-smallest-chunk",
                ["lake", "build", module_from_path(translation_chunks[0])],
            )
        )
        if translation_chunks[-1] != translation_chunks[0]:
            commands.append(
                (
                    "build-translation-largest-chunk",
                    ["lake", "build", module_from_path(translation_chunks[-1])],
                )
            )
    commands.extend(
        [
            (
                "build-translation-coverage-all",
                ["lake", "build", "Cuboctahedron.Generated.Translation.Coverage.All"],
            ),
            (
                "build-translation-complete",
                ["lake", "build", "Cuboctahedron.Generated.Translation.Complete"],
            ),
            (
                "build-exhaustive-coverage",
                ["lake", "build", "Cuboctahedron.Generated.ExhaustiveCoverage"],
            ),
        ]
    )
    return commands, chunk_status


def terminate_process_group(pid: int) -> None:
    try:
        os.killpg(pid, signal.SIGTERM)
        time.sleep(0.5)
        os.killpg(pid, signal.SIGKILL)
    except ProcessLookupError:
        return


def run_command(
    index: int,
    label: str,
    command: Sequence[str],
    log_dir: Path,
    timeout_seconds: int,
    time_bin: str | None,
) -> CommandResult:
    safe_label = sanitize_label(label)
    stdout_path = log_dir / f"{index:02d}_{safe_label}.stdout.log"
    stderr_path = log_dir / f"{index:02d}_{safe_label}.stderr.log"
    time_path = log_dir / f"{index:02d}_{safe_label}.time.log"
    wrapped = list(command)
    time_log: str | None = None
    if time_bin is not None:
        wrapped = [time_bin, "-v", "-o", str(time_path), *wrapped]
        time_log = relative(time_path) if time_path.is_relative_to(REPO_ROOT) else str(time_path)

    start = time.monotonic()
    timed_out = False
    exit_code: int | None = None
    before_usage = resource.getrusage(resource.RUSAGE_CHILDREN)
    with stdout_path.open("w", encoding="utf-8") as stdout_file, stderr_path.open(
        "w", encoding="utf-8"
    ) as stderr_file:
        process = subprocess.Popen(
            wrapped,
            cwd=REPO_ROOT,
            stdout=stdout_file,
            stderr=stderr_file,
            text=True,
            start_new_session=True,
        )
        try:
            exit_code = process.wait(timeout=timeout_seconds)
        except subprocess.TimeoutExpired:
            timed_out = True
            terminate_process_group(process.pid)
            exit_code = process.wait()
    elapsed = time.monotonic() - start
    after_usage = resource.getrusage(resource.RUSAGE_CHILDREN)

    stdout_text = stdout_path.read_text(encoding="utf-8", errors="replace")
    stderr_text = stderr_path.read_text(encoding="utf-8", errors="replace")
    max_rss_kib: int | None = None
    if time_bin is not None and time_path.exists():
        max_rss_kib = parse_max_rss_kib(
            time_path.read_text(encoding="utf-8", errors="replace")
        )
    if max_rss_kib is None:
        max_rss_kib = max(after_usage.ru_maxrss - before_usage.ru_maxrss, 0)

    return CommandResult(
        index=index,
        label=label,
        command=list(command),
        exit_code=exit_code,
        elapsed_seconds=elapsed,
        max_rss_kib=max_rss_kib,
        timed_out=timed_out,
        oom_suspected=suspected_oom(exit_code, stdout_text, stderr_text),
        stdout_log=str(stdout_path),
        stderr_log=str(stderr_path),
        time_log=str(time_path) if time_bin is not None else None,
    )


def write_summary(log_dir: Path, payload: dict) -> None:
    (log_dir / "summary.json").write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--timeout-seconds",
        type=int,
        default=900,
        help="per-command timeout",
    )
    parser.add_argument(
        "--lean-smoke-memory-gib",
        type=float,
        default=8.0,
        help="memory cap for the public-only Lean smoke",
    )
    parser.add_argument(
        "--log-dir",
        type=Path,
        help="directory for logs and summary.json",
    )
    parser.add_argument(
        "--allow-full-lake-build",
        action="store_true",
        help="run full lake build only after focused checks pass",
    )
    args = parser.parse_args()
    if args.timeout_seconds <= 0:
        parser.error("--timeout-seconds must be positive")
    if args.lean_smoke_memory_gib <= 0:
        parser.error("--lean-smoke-memory-gib must be positive")

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    log_dir = args.log_dir or (DEFAULT_LOG_ROOT / timestamp)
    log_dir.mkdir(parents=True, exist_ok=True)

    commands, chunk_status = command_plan()
    commands.append(
        (
            "public-coverage-smoke",
            [
                "python3",
                "scripts/smoke_largest_generated_chunk.py",
                "--public-coverage-only",
                "--memory-limit-gib",
                str(args.lean_smoke_memory_gib),
                "--timeout-seconds",
                str(args.timeout_seconds),
            ],
        )
    )
    if args.allow_full_lake_build:
        commands.append(("full-lake-build", ["lake", "build"]))

    time_bin = shutil.which("time")
    if time_bin != "/usr/bin/time":
        time_bin = "/usr/bin/time" if Path("/usr/bin/time").exists() else time_bin

    results: list[CommandResult] = []
    failed = False
    print(f"Phase 8 validation logs: {log_dir}")
    print(f"public coverage chunks: {chunk_status}")
    for index, (label, command) in enumerate(commands):
        print(f"[{index + 1}/{len(commands)}] {label}: {' '.join(command)}")
        result = run_command(
            index=index,
            label=label,
            command=command,
            log_dir=log_dir,
            timeout_seconds=args.timeout_seconds,
            time_bin=time_bin,
        )
        results.append(result)
        rss = "unknown" if result.max_rss_kib is None else f"{result.max_rss_kib} KiB"
        print(
            f"  exit={result.exit_code} elapsed={result.elapsed_seconds:.2f}s "
            f"max_rss={rss}"
        )
        if result.timed_out or result.oom_suspected or result.exit_code != 0:
            failed = True
            print(f"  stopping after failed focused check: {label}")
            break

    summary = {
        "schema_version": 1,
        "status": "failed" if failed else "passed",
        "log_dir": str(log_dir),
        "full_lake_build_requested": args.allow_full_lake_build,
        "full_lake_build_attempted": any(
            result.label == "full-lake-build" for result in results
        ),
        "chunk_status": chunk_status,
        "time_binary": time_bin,
        "results": [asdict(result) for result in results],
    }
    write_summary(log_dir, summary)
    print(f"summary: {log_dir / 'summary.json'}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
