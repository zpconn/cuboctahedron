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


LOCAL_MODULE_PREFIX = "Cuboctahedron."
LEAN_BUILD_DIR = Path(".lake/build/lib/lean")
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
    "axis-forces-pairsign": {
        "module": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanAxisForcesPairSignSmoke"
        ),
        "path": (
            "Cuboctahedron/Generated/NonIdentity/Residual/"
            "BellmanAxisForcesPairSignSmoke.lean"
        ),
        "description": "axis-forces to pair-sign split bridge smoke",
    },
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
    "split-composition": {
        "module": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingSplitCompositionSmoke"
        ),
        "path": (
            "Cuboctahedron/Generated/NonIdentity/Residual/"
            "BellmanTopPairingSplitCompositionSmoke.lean"
        ),
        "description": "tiny root composing trace and axis-forces split bridge",
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
        choices=["direct-lean"],
        default="direct-lean",
        help=(
            "Only direct Lean checking is allowed in this safety wrapper. "
            "Lake builds have triggered broad rebuilds or failed under hard "
            "address-space caps and require a separate runner."
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
    parser.add_argument(
        "--emit-olean",
        action="store_true",
        help=(
            "Emit the target .olean under the same guard instead of only "
            "type-checking the source. Imports are still preflighted first."
        ),
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


def module_source_path(module: str) -> Path:
    return Path(*module.split(".")).with_suffix(".lean")


def module_olean_path(module: str) -> Path:
    return LEAN_BUILD_DIR.joinpath(*module.split(".")).with_suffix(".olean")


def parse_imports(path: Path) -> list[str]:
    imports: list[str] = []
    try:
        lines = path.read_text(encoding="utf-8").splitlines()
    except OSError as exc:
        raise SystemExit(f"Could not read Lean file {path}: {exc}") from exc
    for line in lines:
        stripped = line.strip()
        if not stripped.startswith("import "):
            continue
        for token in stripped[len("import ") :].split():
            if token.startswith("--"):
                break
            imports.append(token)
    return imports


def local_import_preflight(target_path: str) -> dict[str, Any]:
    target = Path(target_path)
    direct_imports = parse_imports(target)
    local_seen: set[str] = set()
    source_missing: list[str] = []
    olean_missing: list[str] = []
    stale_olean: list[str] = []
    import_artifacts: list[dict[str, Any]] = []
    stack = [module for module in direct_imports if module.startswith(LOCAL_MODULE_PREFIX)]

    while stack:
        module = stack.pop()
        if module in local_seen:
            continue
        local_seen.add(module)
        source_path = module_source_path(module)
        olean_path = module_olean_path(module)
        if not source_path.exists():
            source_missing.append(f"{module} ({source_path})")
            continue
        if not olean_path.exists():
            olean_missing.append(f"{module} ({olean_path})")
        else:
            source_mtime = source_path.stat().st_mtime
            olean_mtime = olean_path.stat().st_mtime
            if olean_mtime < source_mtime:
                stale_olean.append(
                    f"{module} ({olean_path} older than {source_path})"
                )
            import_artifacts.append(
                {
                    "module": module,
                    "source": str(source_path),
                    "olean": str(olean_path),
                    "source_mtime": source_mtime,
                    "olean_mtime": olean_mtime,
                }
            )
        for imported in parse_imports(source_path):
            if imported.startswith(LOCAL_MODULE_PREFIX) and imported not in local_seen:
                stack.append(imported)

    if source_missing or olean_missing or stale_olean:
        details: list[str] = []
        if source_missing:
            details.append(
                "missing local source files:\n  - " + "\n  - ".join(sorted(source_missing)[:20])
            )
        if olean_missing:
            details.append(
                "missing local .olean files:\n  - " + "\n  - ".join(sorted(olean_missing)[:20])
            )
            if len(olean_missing) > 20:
                details.append(f"... and {len(olean_missing) - 20} more missing .olean files")
        if stale_olean:
            details.append(
                "stale local .olean files:\n  - " + "\n  - ".join(sorted(stale_olean)[:20])
            )
            if len(stale_olean) > 20:
                details.append(f"... and {len(stale_olean) - 20} more stale .olean files")
        raise SystemExit(
            "Refusing Bellman smoke run before Lean launch; direct Lean would "
            "load local imports whose build artifacts are absent or stale.\n"
            + "\n".join(details)
        )

    return {
        "direct_imports": direct_imports,
        "local_import_count": len(local_seen),
        "local_imports": sorted(local_seen),
        "checked_olean_count": len(local_seen),
        "import_artifacts": sorted(import_artifacts, key=lambda item: item["module"]),
    }


def main() -> int:
    args = parse_args()
    reject_if_not_strict(args)

    target = TARGETS[args.target]
    import_preflight = local_import_preflight(target["path"])
    output_olean = module_olean_path(target["module"]) if args.emit_olean else None
    if output_olean is not None:
        output_olean.parent.mkdir(parents=True, exist_ok=True)
    guard_json = args.json if args.json is not None else default_json_path(args.target)
    checked_command = [
        "lake",
        "env",
        "lean",
        "-M",
        str(args.lean_memory_mib),
        "-j" + str(args.lean_threads),
        "-s",
        str(args.lean_tstack_kib),
    ]
    if output_olean is not None:
        checked_command.extend(["-o", str(output_olean)])
    checked_command.append(target["path"])
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
            "emit_olean": args.emit_olean,
            "output_olean": None if output_olean is None else str(output_olean),
            "import_preflight": import_preflight,
            "command": command,
        },
    )
    print(
        f"preflight: {import_preflight['local_import_count']} local imports have fresh .olean files",
        file=sys.stderr,
    )
    print(" ".join(command))
    if args.dry_run:
        return 0
    return subprocess.run(command, check=False).returncode


if __name__ == "__main__":
    raise SystemExit(main())
