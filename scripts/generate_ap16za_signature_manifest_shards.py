#!/usr/bin/env python3
"""Emit AP.16Z.1 manifest-driven signature shard smokes.

This bounded driver reads the AP.16Z signature shard manifest and delegates
each shard to `generate_ap16w_shared_candidate_routing_smoke.py`.  It then emits
a thin group module importing the selected routing shards.

The generated Lean files are diagnostic smokes.  They are not final proof
coverage, and by default only the first two manifest shards are emitted.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
DEFAULT_MANIFEST = Path(
    "scripts/generated/phase6z6k8ap16z_signature_shard_manifest.json"
)
DEFAULT_OUT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
)
NAMESPACE_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
)
DEFAULT_GROUP_MODULE = "PositiveSurvivorSharedManifestGroup000Smoke"
DEFAULT_MODULE_PREFIX = "PositiveSurvivorSharedManifest"


def module_name(prefix: str, kind: str, index: int) -> str:
    return f"{prefix}{kind}Shard{index:03d}Smoke"


def emit_group_module(
    *,
    output: Path,
    group_module: str,
    routing_modules: list[str],
    label: str,
) -> None:
    lines: list[str] = [
        *(f"import {NAMESPACE_PREFIX}.{module}" for module in routing_modules),
        "",
        "/-!",
        f"Generated {label} manifest-driven group smoke.",
        "",
        "This module is diagnostic only. It checks that a manifest-driven group",
        "layer can import selected AP.16 shared-candidate routing shards without",
        "exposing large generated data at the group boundary.",
        "-/",
        "",
        f"namespace {NAMESPACE_PREFIX}.{group_module}",
        "",
        "theorem manifestGroupSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {NAMESPACE_PREFIX}.{group_module}",
        "",
    ]
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def run_shard_emitter(
    *,
    shard: dict[str, Any],
    profile: Path,
    out_dir: Path,
    module_prefix: str,
    label: str,
    dry_run: bool,
) -> tuple[str, str]:
    index = int(shard["index"])
    start = int(shard["start_signature"])
    count = int(shard["signature_count"])
    shared_module = module_name(module_prefix, "CandidateFacts", index)
    routing_module = module_name(module_prefix, "Routing", index)
    shared_output = out_dir / f"{shared_module}.lean"
    routing_output = out_dir / f"{routing_module}.lean"
    cmd = [
        sys.executable,
        str(SCRIPT_DIR / "generate_ap16w_shared_candidate_routing_smoke.py"),
        "--profile",
        str(profile),
        "--start-signature",
        str(start),
        "--signatures",
        str(count),
        "--label",
        label,
        "--shared-module",
        shared_module,
        "--routing-module",
        routing_module,
        "--shared-output",
        str(shared_output),
        "--routing-output",
        str(routing_output),
    ]
    print(" ".join(cmd))
    if not dry_run:
        subprocess.run(cmd, check=True)
    return shared_module, routing_module


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument(
        "--profile",
        type=Path,
        default=None,
        help=(
            "Positive-survivor profile to pass to each shard emitter. Defaults "
            "to the manifest input profile if present, otherwise the AP.16W "
            "emitter default."
        ),
    )
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--limit-shards", type=int, default=2)
    parser.add_argument("--module-prefix", default=DEFAULT_MODULE_PREFIX)
    parser.add_argument("--group-module", default=DEFAULT_GROUP_MODULE)
    parser.add_argument("--group-output", type=Path)
    parser.add_argument("--label", default="AP.16Z.1")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    profile = args.profile
    if profile is None and manifest.get("input_profile"):
        profile = Path(str(manifest["input_profile"]))
    if profile is None:
        profile = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
    shards = manifest.get("shards", [])[:args.limit_shards]
    if not shards:
        raise SystemExit("manifest slice is empty")

    routing_modules: list[str] = []
    for shard in shards:
        _shared, routing = run_shard_emitter(
            shard=shard,
            profile=profile,
            out_dir=args.out_dir,
            module_prefix=args.module_prefix,
            label=args.label,
            dry_run=args.dry_run,
        )
        routing_modules.append(routing)

    group_output = args.group_output or args.out_dir / f"{args.group_module}.lean"
    print(f"emit group {group_output}")
    if not args.dry_run:
        emit_group_module(
            output=group_output,
            group_module=args.group_module,
            routing_modules=routing_modules,
            label=args.label,
        )

    print(json.dumps({
        "label": args.label,
        "profile": str(profile),
        "shards_emitted": len(shards),
        "routing_modules": routing_modules,
        "group_module": args.group_module,
        "group_output": str(group_output),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
