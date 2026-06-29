#!/usr/bin/env python3
"""Safely build AP16DF generated modules one target at a time.

This is operational safety tooling, not proof evidence.  AP16DF-style roots
can otherwise ask Lake to build several heavy selected-impact modules as one
dependency tree.  This runner makes that experiment explicit:

1. optionally regenerate the AP16DF Lean files;
2. build every selected-impact leaf under a strict process-tree RSS cap;
3. build the small rank cover/root only after all leaves are cached;
4. write per-target memory telemetry and stop immediately on failure.

The goal is to prevent another machine-level OOM while still letting us learn
whether theorem-level root composition is safe after leaf prebuilds.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import sys
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO = SCRIPT_DIR.parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16df_two_signature_compact_cover_smoke import (  # noqa: E402
    RANK100805_COVER_LEAN,
    RANK101105_COVER_LEAN,
    RANK101105_MANIFEST,
    RANK101105_TRACE_LEAN,
    ROOT_LEAN,
    main as generate_ap16df,
    module_from_path,
)


DEFAULT_JSON = Path("/tmp/ap16df_serial_guarded/summary.json")


def read_manifest() -> dict[str, Any]:
    if not RANK101105_MANIFEST.exists():
        raise SystemExit(
            f"missing {RANK101105_MANIFEST}; rerun with --generate first"
        )
    return json.loads(RANK101105_MANIFEST.read_text(encoding="utf-8"))


def target_name(path: Path) -> str:
    return module_from_path(path)


def planned_targets() -> list[dict[str, str]]:
    manifest = read_manifest()
    targets: list[dict[str, str]] = [
        {
            "kind": "existing_rank100805_cover",
            "module": RANK100805_COVER_LEAN,
        },
        {
            "kind": "rank101105_trace",
            "module": target_name(RANK101105_TRACE_LEAN),
        },
    ]
    for entry in manifest["entries"]:
        targets.append({
            "kind": "rank101105_selected_impact",
            "label": str(entry["label"]),
            "module": target_name(Path(entry["lean"])),
        })
    targets.extend([
        {
            "kind": "rank101105_selected_impacts_root",
            "module": target_name(Path(manifest["root_lean"])),
        },
        {
            "kind": "rank101105_cover",
            "module": target_name(RANK101105_COVER_LEAN),
        },
        {
            "kind": "two_signature_root",
            "module": target_name(ROOT_LEAN),
        },
    ])
    return targets


def run_guarded_target(
    target: str,
    *,
    index: int,
    out_dir: Path,
    rss_cap_mib: int,
    available_floor_mib: int,
    timeout_seconds: int,
    poll_seconds: float,
) -> dict[str, Any]:
    out_dir.mkdir(parents=True, exist_ok=True)
    target_json = out_dir / f"{index:02d}_{target.split('.')[-1]}.json"
    command = [
        "python3",
        "scripts/run_memory_guarded.py",
        "--max-tree-rss-mib",
        str(rss_cap_mib),
        "--min-available-mib",
        str(available_floor_mib),
        "--poll-seconds",
        str(poll_seconds),
        "--json",
        str(target_json),
        "--",
        "bash",
        "-lc",
        (
            "export LEAN_NUM_THREADS=1; "
            "export LAKE_JOBS=1; "
            f"timeout {timeout_seconds}s lake build {target}"
        ),
    ]
    subprocess.run(command, cwd=REPO, check=False)
    if target_json.exists():
        payload = json.loads(target_json.read_text(encoding="utf-8"))
    else:
        payload = {
            "exit_code": None,
            "killed_reason": "memory guard did not write a summary",
        }
    payload["target"] = target
    payload["target_json"] = str(target_json)
    return payload


def write_summary(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--generate",
        action="store_true",
        help="Regenerate AP16DF Lean artifacts before planning/building.",
    )
    parser.add_argument(
        "--plan-only",
        action="store_true",
        help="Only print/write the target plan; do not run Lake.",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=DEFAULT_JSON,
        help="Summary JSON path.",
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("/tmp/ap16df_serial_guarded/targets"),
        help="Directory for per-target guard summaries.",
    )
    parser.add_argument("--rss-cap-mib", type=int, default=5000)
    parser.add_argument("--available-floor-mib", type=int, default=12000)
    parser.add_argument("--timeout-seconds", type=int, default=600)
    parser.add_argument("--poll-seconds", type=float, default=0.5)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.generate:
        generate_ap16df()
    targets = planned_targets()
    summary: dict[str, Any] = {
        "phase": "Phase 6Z.6K.8AP.16DI",
        "description": "Serial guarded AP16DF leaf/root build plan",
        "trusted_as_final_generated_coverage": False,
        "rss_cap_mib": args.rss_cap_mib,
        "available_floor_mib": args.available_floor_mib,
        "timeout_seconds": args.timeout_seconds,
        "targets": targets,
        "results": [],
        "status": "plan_only" if args.plan_only else "running",
    }
    if args.plan_only:
        write_summary(args.json, summary)
        print(json.dumps(summary, indent=2, sort_keys=True))
        return 0

    for index, target in enumerate(targets):
        result = run_guarded_target(
            target["module"],
            index=index,
            out_dir=args.out_dir,
            rss_cap_mib=args.rss_cap_mib,
            available_floor_mib=args.available_floor_mib,
            timeout_seconds=args.timeout_seconds,
            poll_seconds=args.poll_seconds,
        )
        result["kind"] = target["kind"]
        if "label" in target:
            result["label"] = target["label"]
        summary["results"].append(result)
        write_summary(args.json, summary)
        if result.get("exit_code") != 0:
            summary["status"] = "failed_or_guard_stopped"
            summary["failed_target"] = target
            write_summary(args.json, summary)
            print(json.dumps(summary, indent=2, sort_keys=True))
            return 1

    summary["status"] = "passed"
    write_summary(args.json, summary)
    print(json.dumps(summary, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
