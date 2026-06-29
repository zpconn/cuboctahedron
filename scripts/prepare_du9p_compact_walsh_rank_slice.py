#!/usr/bin/env python3
"""Prepare an AP16DJ-compatible compact-Walsh slice for DU.9P.

This script does not emit Lean and does not run Lake.  It translates a DU.9P
compact-Walsh cover profile into the small plan/source pair consumed by
`generate_ap16dj_compact_walsh_batch.py`.

The default is rank 0 only because DU.9P explicitly gates scaling on a
rank-0 guarded build.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_RANK = 0


def profile_path(rank: int) -> Path:
    return Path(f"scripts/generated/phase6z6k8ap16du9p_rank{rank}_walsh_subcube_cover.json")


def selected_word_impacts(profile: dict[str, Any]) -> list[int]:
    return sorted({int(candidate["impact"]) - 1 for candidate in profile["selected"]})


def entry_from_profile(profile: dict[str, Any]) -> dict[str, Any]:
    rank = int(profile["rank"])
    impacts = selected_word_impacts(profile)
    return {
        "rank": rank,
        "anchor_mask": int(profile["anchor_mask"]),
        "signature_key_prefix": f"du9p_rank{rank}",
        "good_mask_count": len(profile["good_masks"]),
        "bad_mask_count": int(profile["bad_mask_count"]),
        "selected_subcube_count": int(profile["selected_count"]),
        "candidate_subcube_count": int(profile["candidate_count"]),
        "selected_word_impacts": impacts,
        "selected_word_impact_count": len(impacts),
        "planned_modules": {
            "trace": 1,
            "selected_impact": len(impacts),
            "selected_impact_root": 1,
            "cover": 1,
            "total": 1 + len(impacts) + 1 + 1,
        },
        "planned_namespace_suffix": f"Rank{rank}",
    }


def build_payloads(rank: int, output_prefix: Path) -> tuple[dict[str, Any], dict[str, Any], dict[str, Any]]:
    path = profile_path(rank)
    if not path.exists():
        raise SystemExit(f"missing DU9P profile for rank {rank}: {path}")
    profile = json.loads(path.read_text(encoding="utf-8"))
    if not bool(profile.get("walsh_validated", False)):
        raise SystemExit(f"rank {rank} DU9P profile was not Walsh-validated")
    if int(profile.get("uncovered_count", -1)) != 0:
        raise SystemExit(f"rank {rank} DU9P profile has uncovered masks")
    entry = entry_from_profile(profile)
    plan = {
        "phase": "Phase 6Z.6K.8AP.16DU.9P",
        "schema_version": 1,
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "source_profile": str(path),
        "entries": [entry],
        "summary": {
            "signature_count": 1,
            "rank_count": 1,
            "planned_serial_lean_targets": entry["planned_modules"]["total"] + 1,
            "selected_word_impacts_union": entry["selected_word_impacts"],
            "selected_word_impact_union_count": len(entry["selected_word_impacts"]),
            "selected_subcube_total": entry["selected_subcube_count"],
        },
        "gate": {
            "accepted": True,
            "reason": "rank-only DU9P slice accepted for guarded AP16DJ split-trace emission",
            "max_tree_rss_mib": 5000,
            "min_available_mib": 12000,
            "lean_num_threads": 1,
            "lake_jobs": 1,
        },
    }
    source = {
        "phase": "Phase 6Z.6K.8AP.16DU.9P",
        "schema_version": 1,
        "trusted_as_proof": False,
        "source_profile": str(path),
        "summary": {
            "result_count": 1,
            "ranks": [rank],
        },
        "results": [profile],
    }
    report = {
        "phase": "Phase 6Z.6K.8AP.16DU.9P",
        "trusted_as_proof": False,
        "rank": rank,
        "input_profile": str(path),
        "plan": str(output_prefix.with_name(output_prefix.name + "_compact_walsh_batch_plan.json")),
        "source": str(output_prefix.with_name(output_prefix.name + "_compact_walsh_batch_source.json")),
        "root_lean": (
            "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
            f"ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke.lean"
        ),
        "root_namespace": (
            "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
            f"ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke"
        ),
        "entry": entry,
    }
    report["next_command"] = (
        "python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit "
        f"--plan {report['plan']} "
        f"--source {report['source']} "
        f"--report {output_prefix.with_name(output_prefix.name + '_compact_walsh_batch_generation.json')} "
        f"--root-lean {report['root_lean']} "
        f"--root-namespace {report['root_namespace']}"
    )
    return plan, source, report


def write_markdown(report: dict[str, Any], path: Path) -> None:
    entry = report["entry"]
    lines = [
        "# DU.9P Rank Slice Prep",
        "",
        "This report is planning telemetry, not proof evidence.",
        "",
        f"- Rank: `{report['rank']}`",
        f"- Input profile: `{report['input_profile']}`",
        f"- Plan: `{report['plan']}`",
        f"- Source: `{report['source']}`",
        f"- Root Lean: `{report['root_lean']}`",
        f"- Root namespace: `{report['root_namespace']}`",
        f"- Selected subcubes: `{entry['selected_subcube_count']}`",
        f"- Selected word impacts: `{entry['selected_word_impacts']}`",
        f"- Planned serial Lean targets including AP16DJ root: `{entry['planned_modules']['total'] + 1}`",
        "",
        "Next command:",
        "",
        "```bash",
        report["next_command"],
        "```",
        "",
        "Build policy after emission: run focused targets serially through",
        "`scripts/run_memory_guarded.py`; do not run broad `lake build`.",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--output-prefix", type=Path)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    output_prefix = args.output_prefix or Path(
        f"scripts/generated/phase6z6k8ap16du9p_rank{args.rank}"
    )
    plan, source, report = build_payloads(args.rank, output_prefix)
    plan_path = output_prefix.with_name(output_prefix.name + "_compact_walsh_batch_plan.json")
    source_path = output_prefix.with_name(output_prefix.name + "_compact_walsh_batch_source.json")
    report_path = output_prefix.with_name(output_prefix.name + "_compact_walsh_rank_slice_prep.json")
    for path, payload in [(plan_path, plan), (source_path, source), (report_path, report)]:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(report, report_path.with_suffix(".md"))
    print(f"wrote {plan_path}")
    print(f"wrote {source_path}")
    print(f"wrote {report_path}")
    print(f"rank={args.rank} selected_subcubes={report['entry']['selected_subcube_count']}")


if __name__ == "__main__":
    main()
