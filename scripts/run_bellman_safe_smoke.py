#!/usr/bin/env python3
"""Run allowlisted Bellman smoke targets behind strict memory caps.

This is operational safety tooling, not proof evidence.  It exists because a
recent generated/Bellman run crashed the host.  The wrapper deliberately exposes
only small known targets and forwards them to `scripts/run_memory_guarded.py`
with conservative defaults.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import sys
import time
from typing import Any


DEFAULT_RSS_CAP_MIB = 6_000.0
MAX_RSS_CAP_MIB = 6_000.0
DEFAULT_HARD_ADDRESS_SPACE_MIB = 8_192.0
MAX_HARD_ADDRESS_SPACE_MIB = 8_192.0
DEFAULT_MIN_AVAILABLE_MIB = 24_576.0
MIN_AVAILABLE_FLOOR_MIB = 24_576.0
DEFAULT_TIMEOUT_SECONDS = 60.0
MAX_TIMEOUT_SECONDS = 60.0
DEFAULT_POLL_SECONDS = 0.5
DEFAULT_LEAN_MEMORY_MIB = 6_000
MAX_LEAN_MEMORY_MIB = 6_000
DEFAULT_LEAN_THREADS = 1
MAX_LEAN_THREADS = 1
DEFAULT_LEAN_TSTACK_KIB = 2_048
MAX_LEAN_TSTACK_KIB = 4_096

TARGETS = {
    "generated-trace": {
        "module": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingClosedLanguageGeneratedTraceSmoke"
        ),
        "path": (
            "Cuboctahedron/Generated/NonIdentity/Residual/"
            "BellmanTopPairingClosedLanguageGeneratedTraceSmoke.lean"
        ),
        "description": "standalone generated Bellman closed-language trace shard",
    },
}


def read_mem_available_mib() -> float | None:
    try:
        lines = Path("/proc/meminfo").read_text(encoding="utf-8").splitlines()
    except OSError:
        return None
    for line in lines:
        if line.startswith("MemAvailable:"):
            return int(line.split()[1]) / 1024.0
    return None


def positive_float(text: str) -> float:
    try:
        value = float(text)
    except ValueError as exc:
        raise argparse.ArgumentTypeError(f"expected a number, got {text!r}") from exc
    if value <= 0:
        raise argparse.ArgumentTypeError("value must be positive")
    return value


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--target",
        choices=sorted(TARGETS),
        default="generated-trace",
        help="Allowlisted Bellman smoke target to build.",
    )
    parser.add_argument(
        "--max-tree-rss-mib",
        type=positive_float,
        default=DEFAULT_RSS_CAP_MIB,
        help=f"Process-tree RSS cap.  Must be <= {MAX_RSS_CAP_MIB:.0f} MiB.",
    )
    parser.add_argument(
        "--hard-address-space-mib",
        type=positive_float,
        default=DEFAULT_HARD_ADDRESS_SPACE_MIB,
        help=(
            "Inherited per-process RLIMIT_AS cap. Must be <= "
            f"{MAX_HARD_ADDRESS_SPACE_MIB:.0f} MiB."
        ),
    )
    parser.add_argument(
        "--min-available-mib",
        type=positive_float,
        default=DEFAULT_MIN_AVAILABLE_MIB,
        help=(
            "Minimum system MemAvailable floor.  Must be >= "
            f"{MIN_AVAILABLE_FLOOR_MIB:.0f} MiB."
        ),
    )
    parser.add_argument(
        "--timeout-seconds",
        type=positive_float,
        default=DEFAULT_TIMEOUT_SECONDS,
        help=f"Wall-clock timeout.  Must be <= {MAX_TIMEOUT_SECONDS:.0f}s.",
    )
    parser.add_argument(
        "--poll-seconds",
        type=positive_float,
        default=DEFAULT_POLL_SECONDS,
        help="Guard polling interval.",
    )
    parser.add_argument(
        "--runner",
        choices=["direct-lean", "lake-build"],
        default="direct-lean",
        help=(
            "Use direct Lean checking by default. `lake-build` is retained for "
            "diagnostics but failed under the hard address-space cap on this "
            "target due thread reservation."
        ),
    )
    parser.add_argument(
        "--lean-memory-mib",
        type=int,
        default=DEFAULT_LEAN_MEMORY_MIB,
        help=f"Lean -M memory cap. Must be <= {MAX_LEAN_MEMORY_MIB}.",
    )
    parser.add_argument(
        "--lean-threads",
        type=int,
        default=DEFAULT_LEAN_THREADS,
        help=f"Lean -j thread count. Must be <= {MAX_LEAN_THREADS}.",
    )
    parser.add_argument(
        "--lean-tstack-kib",
        type=int,
        default=DEFAULT_LEAN_TSTACK_KIB,
        help=f"Lean -s thread stack size. Must be <= {MAX_LEAN_TSTACK_KIB}.",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=None,
        help="Optional run summary path.  Defaults under scripts/generated.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print the guarded command without launching it.",
    )
    return parser.parse_args()


def reject_if_not_strict(args: argparse.Namespace) -> None:
    errors: list[str] = []
    if args.max_tree_rss_mib > MAX_RSS_CAP_MIB:
        errors.append(
            f"--max-tree-rss-mib {args.max_tree_rss_mib:g} exceeds "
            f"{MAX_RSS_CAP_MIB:g}"
        )
    if args.hard_address_space_mib > MAX_HARD_ADDRESS_SPACE_MIB:
        errors.append(
            f"--hard-address-space-mib {args.hard_address_space_mib:g} exceeds "
            f"{MAX_HARD_ADDRESS_SPACE_MIB:g}"
        )
    if args.min_available_mib < MIN_AVAILABLE_FLOOR_MIB:
        errors.append(
            f"--min-available-mib {args.min_available_mib:g} is below "
            f"{MIN_AVAILABLE_FLOOR_MIB:g}"
        )
    if args.timeout_seconds > MAX_TIMEOUT_SECONDS:
        errors.append(
            f"--timeout-seconds {args.timeout_seconds:g} exceeds "
            f"{MAX_TIMEOUT_SECONDS:g}"
        )
    if args.lean_memory_mib <= 0 or args.lean_memory_mib > MAX_LEAN_MEMORY_MIB:
        errors.append(
            f"--lean-memory-mib {args.lean_memory_mib} must be in 1..{MAX_LEAN_MEMORY_MIB}"
        )
    if args.lean_threads <= 0 or args.lean_threads > MAX_LEAN_THREADS:
        errors.append(
            f"--lean-threads {args.lean_threads} must be in 1..{MAX_LEAN_THREADS}"
        )
    if args.lean_tstack_kib <= 0 or args.lean_tstack_kib > MAX_LEAN_TSTACK_KIB:
        errors.append(
            f"--lean-tstack-kib {args.lean_tstack_kib} must be in 1..{MAX_LEAN_TSTACK_KIB}"
        )
    available = read_mem_available_mib()
    if available is not None and available < args.min_available_mib:
        errors.append(
            f"current MemAvailable {available:.0f} MiB is below requested floor "
            f"{args.min_available_mib:.0f} MiB"
        )
    if errors:
        raise SystemExit("Refusing Bellman smoke run:\n- " + "\n- ".join(errors))


def default_json_path(target: str) -> Path:
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    return Path("scripts/generated") / f"bellman_safe_smoke_{target}_{timestamp}.json"


def write_wrapper_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def main() -> int:
    args = parse_args()
    reject_if_not_strict(args)

    target = TARGETS[args.target]
    guard_json = args.json if args.json is not None else default_json_path(args.target)
    if args.runner == "direct-lean":
        checked_command = [
            "lake",
            "env",
            "lean",
            "-M",
            str(args.lean_memory_mib),
            "-j" + str(args.lean_threads),
            "-s",
            str(args.lean_tstack_kib),
            target["path"],
        ]
    else:
        checked_command = [
            "lake",
            "build",
            target["module"],
        ]
    command = [
        sys.executable,
        "scripts/run_memory_guarded.py",
        "--timeout-seconds",
        str(args.timeout_seconds),
        "--max-tree-rss-mib",
        str(args.max_tree_rss_mib),
        "--min-available-mib",
        str(args.min_available_mib),
        "--hard-address-space-mib",
        str(args.hard_address_space_mib),
        "--poll-seconds",
        str(args.poll_seconds),
        "--json",
        str(guard_json),
        "--",
        *checked_command,
    ]
    wrapper_json = guard_json.with_suffix(".wrapper.json")
    write_wrapper_json(
        wrapper_json,
        {
            "target": args.target,
            "description": target["description"],
            "module": target["module"],
            "path": target["path"],
            "runner": args.runner,
            "guard_json": str(guard_json),
            "max_tree_rss_mib": args.max_tree_rss_mib,
            "hard_address_space_mib": args.hard_address_space_mib,
            "min_available_mib": args.min_available_mib,
            "timeout_seconds": args.timeout_seconds,
            "poll_seconds": args.poll_seconds,
            "lean_memory_mib": args.lean_memory_mib,
            "lean_threads": args.lean_threads,
            "lean_tstack_kib": args.lean_tstack_kib,
            "command": command,
        },
    )
    print(" ".join(command))
    if args.dry_run:
        return 0
    return subprocess.run(command, check=False).returncode


if __name__ == "__main__":
    raise SystemExit(main())
