#!/usr/bin/env python3
"""Emit an AP.16AP global-shared-candidate manifest smoke.

AP.16AN proved that AP.16AL top-5 profile shards can build, but each manifest
shard still emitted its own candidate-facts module.  AP.16AP tests the next
factorization: one shared candidate-facts module for several manifest shards,
plus thin routing modules per shard.

This is diagnostic only and not final generated coverage.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16w_shared_candidate_routing_smoke import (  # noqa: E402
    NAMESPACE_PREFIX,
    candidate_groups_for_signature,
    classify_signature_cases,
    emit_candidate_defs,
    emit_routing_module,
    emit_shared_module,
)


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16am_top5_materialized_profile.json")
DEFAULT_MANIFEST = Path("scripts/generated/phase6z6k8ap16am_top5_signature_shard_manifest.json")
DEFAULT_OUT_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16ap_global_shared_manifest_smoke.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_PREFIX = "PositiveSurvivorSharedTop5Global"
DEFAULT_GROUP_MODULE = "PositiveSurvivorSharedTop5GlobalGroup000Smoke"


def module_name(prefix: str, kind: str, index: int | None = None) -> str:
    if index is None:
        return f"{prefix}{kind}Smoke"
    return f"{prefix}{kind}Shard{index:03d}Smoke"


def emit_group_module(
    *,
    output: Path,
    group_module: str,
    routing_modules: list[str],
    label: str,
) -> None:
    lines = [
        *(f"import {NAMESPACE_PREFIX}.{module}" for module in routing_modules),
        "",
        "/-!",
        f"Generated {label} global-shared-candidate group smoke.",
        "",
        "This module is diagnostic only. It imports thin routing shards that all",
        "share one candidate-facts module.",
        "-/",
        "",
        f"namespace {NAMESPACE_PREFIX}.{group_module}",
        "",
        "theorem globalSharedGroupSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {NAMESPACE_PREFIX}.{group_module}",
        "",
    ]
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def selected_shards(manifest: dict[str, Any], limit: int) -> list[dict[str, Any]]:
    shards = manifest.get("shards", [])[:limit]
    if not shards:
        raise SystemExit("manifest slice is empty")
    return shards


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument("--limit-shards", type=int, default=2)
    parser.add_argument("--module-prefix", default=DEFAULT_PREFIX)
    parser.add_argument("--group-module", default=DEFAULT_GROUP_MODULE)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--label", default="6Z.6K.8AP.16AP")
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signatures = profile.get("positive_survivor_signature_catalog", [])
    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    shards = selected_shards(manifest, args.limit_shards)

    shard_signature_cases: list[list[tuple[dict[str, Any], dict[int, Any]]]] = []
    all_signature_cases: list[tuple[dict[str, Any], dict[int, Any]]] = []
    groups_by_key: dict[str, dict[str, Any]] = {}
    next_index = 0
    represented_masks = 0

    for shard in shards:
        start = int(shard["start_signature"])
        end = int(shard["end_signature"])
        shard_cases: list[tuple[dict[str, Any], dict[int, Any]]] = []
        for signature in signatures[start:end]:
            cases, next_index = classify_signature_cases(signature, next_index=next_index)
            shard_cases.append((signature, cases))
            all_signature_cases.append((signature, cases))
            represented_masks += len(signature.get("good_masks", []))
            for group in candidate_groups_for_signature(profile, signature):
                groups_by_key[group["key"]] = group
        shard_signature_cases.append(shard_cases)

    groups = sorted(groups_by_key.values(), key=lambda group: group["key"])
    _defs, key_to_ctor = emit_candidate_defs(groups)

    shared_module = module_name(args.module_prefix, "CandidateFacts")
    shared_output = args.out_dir / f"{shared_module}.lean"
    shared_namespace = f"{NAMESPACE_PREFIX}.{shared_module}"
    emit_shared_module(
        groups=groups,
        key_to_ctor=key_to_ctor,
        signature_cases=all_signature_cases,
        profile=profile,
        output=shared_output,
        shared_namespace=shared_namespace,
        label=args.label,
    )

    routing_modules: list[str] = []
    for shard, shard_cases in zip(shards, shard_signature_cases, strict=True):
        index = int(shard["index"])
        routing_module = module_name(args.module_prefix, "Routing", index)
        routing_output = args.out_dir / f"{routing_module}.lean"
        routing_namespace = f"{NAMESPACE_PREFIX}.{routing_module}"
        emit_routing_module(
            signature_cases=shard_cases,
            key_to_ctor=key_to_ctor,
            output=routing_output,
            shared_import=f"{NAMESPACE_PREFIX}.{shared_module}",
            shared_namespace=shared_namespace,
            routing_namespace=routing_namespace,
            label=args.label,
        )
        routing_modules.append(routing_module)

    group_output = args.out_dir / f"{args.group_module}.lean"
    emit_group_module(
        output=group_output,
        group_module=args.group_module,
        routing_modules=routing_modules,
        label=args.label,
    )

    payload = {
        "schema_version": 1,
        "mode": "ap16_global_shared_manifest_smoke",
        "phase": args.label,
        "trusted_as_proof": False,
        "profile": str(args.profile),
        "manifest": str(args.manifest),
        "shards_emitted": len(shards),
        "signature_count": len(all_signature_cases),
        "candidate_count": len(groups),
        "positive_mask_facts": represented_masks,
        "shared_module": shared_module,
        "routing_modules": routing_modules,
        "group_module": args.group_module,
        "outputs": {
            "shared": str(shared_output),
            "group": str(group_output),
            "routing": [str(args.out_dir / f"{module}.lean") for module in routing_modules],
        },
        "decision": {
            "status": "global-shared-manifest-smoke-emitted",
            "notes": [
                "diagnostic Lean smoke only",
                "candidate facts are emitted once for all selected shards",
                "routing modules are thin and import the shared candidate module",
            ],
        },
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(
        "\n".join([
            f"# Phase {args.label} Global Shared Manifest Smoke",
            "",
            "This diagnostic smoke is not proof evidence.",
            "",
            f"- Status: `{payload['decision']['status']}`",
            f"- Shards emitted: `{payload['shards_emitted']}`",
            f"- Signatures represented: `{payload['signature_count']}`",
            f"- Shared candidate groups: `{payload['candidate_count']}`",
            f"- Positive-mask facts: `{payload['positive_mask_facts']}`",
            f"- Shared module: `{shared_module}`",
            f"- Group module: `{args.group_module}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(json.dumps({
        "status": payload["decision"]["status"],
        "shards": payload["shards_emitted"],
        "signatures": payload["signature_count"],
        "candidates": payload["candidate_count"],
        "positive_masks": payload["positive_mask_facts"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
