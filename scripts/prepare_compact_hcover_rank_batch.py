#!/usr/bin/env python3
"""Prepare AP16DJ compact-Walsh batch inputs from rank-cover profiles.

This script emits no Lean and performs no proof checking.  It converts a set of
compact Walsh subcube-cover profile JSON files into the plan/source pair
consumed by `generate_ap16dj_compact_walsh_batch.py`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_PROFILE_GLOB = "scripts/generated/phase6z6k8ap16du9gg_rank*_walsh_subcube_cover.json"
DEFAULT_OUTPUT_PREFIX = Path("scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch")
DEFAULT_ROOT_LEAN = (
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke.lean"
)
DEFAULT_ROOT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke"
)


def selected_word_impacts(profile: dict[str, Any]) -> list[int]:
    return sorted({int(candidate["impact"]) - 1 for candidate in profile["selected"]})


def entry_from_profile(profile: dict[str, Any], signature_key_prefix: str) -> dict[str, Any]:
    rank = int(profile["rank"])
    impacts = selected_word_impacts(profile)
    return {
        "rank": rank,
        "anchor_mask": int(profile["anchor_mask"]),
        "signature_key_prefix": f"{signature_key_prefix}_rank{rank}",
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


def load_profiles(paths: list[Path]) -> list[dict[str, Any]]:
    profiles = []
    for path in paths:
        profile = json.loads(path.read_text(encoding="utf-8"))
        profile["profile_path"] = str(path)
        if not bool(profile.get("walsh_validated", False)):
            raise SystemExit(f"profile is not Walsh-validated: {path}")
        if int(profile.get("uncovered_count", -1)) != 0:
            raise SystemExit(f"profile has uncovered masks: {path}")
        profiles.append(profile)
    profiles.sort(key=lambda item: int(item["rank"]))
    return profiles


def build_payloads(
    *,
    profiles: list[dict[str, Any]],
    output_prefix: Path,
    root_lean: str,
    root_namespace: str,
    phase: str,
    signature_key_prefix: str,
) -> tuple[dict[str, Any], dict[str, Any], dict[str, Any]]:
    entries = [
        entry_from_profile(profile, signature_key_prefix)
        for profile in profiles
    ]
    selected_union = sorted({
        impact for entry in entries for impact in entry["selected_word_impacts"]
    })
    plan_path = output_prefix.with_name(output_prefix.name + "_plan.json")
    source_path = output_prefix.with_name(output_prefix.name + "_source.json")
    generation_path = output_prefix.with_name(output_prefix.name + "_generation.json")
    plan = {
        "phase": phase,
        "schema_version": 1,
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "source_profiles": [profile["profile_path"] for profile in profiles],
        "entries": entries,
        "summary": {
            "signature_count": len(entries),
            "rank_count": len({entry["rank"] for entry in entries}),
            "planned_serial_lean_targets": (
                sum(int(entry["planned_modules"]["total"]) for entry in entries) + 1
            ),
            "selected_word_impacts_union": selected_union,
            "selected_word_impact_union_count": len(selected_union),
            "selected_subcube_total": sum(
                int(entry["selected_subcube_count"]) for entry in entries
            ),
        },
        "gate": {
            "accepted": True,
            "reason": (
                "compact hcover batch profiles are Walsh-validated with zero "
                "uncovered masks; Lean emission still requires guarded builds"
            ),
            "max_tree_rss_mib": 5000,
            "min_available_mib": 12000,
            "lean_num_threads": 1,
            "lake_jobs": 1,
        },
    }
    source = {
        "phase": phase,
        "schema_version": 1,
        "trusted_as_proof": False,
        "source_profiles": [profile["profile_path"] for profile in profiles],
        "summary": {
            "result_count": len(profiles),
            "ranks": [int(profile["rank"]) for profile in profiles],
        },
        "results": profiles,
    }
    report = {
        "phase": phase,
        "schema_version": 1,
        "trusted_as_proof": False,
        "plan": str(plan_path),
        "source": str(source_path),
        "generation_report": str(generation_path),
        "root_lean": root_lean,
        "root_namespace": root_namespace,
        "entries": entries,
        "next_command": (
            "python3 scripts/generate_ap16dj_compact_walsh_batch.py "
            f"--plan {plan_path} "
            f"--source {source_path} "
            f"--report {generation_path} "
            f"--root-lean {root_lean} "
            f"--root-namespace {root_namespace}"
        ),
        "next_emit_command": (
            "python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit "
            f"--plan {plan_path} "
            f"--source {source_path} "
            f"--report {generation_path} "
            f"--root-lean {root_lean} "
            f"--root-namespace {root_namespace}"
        ),
    }
    return plan, source, report


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        f"# {report['phase']} Compact Hcover Batch Prep",
        "",
        "This report is planning telemetry, not proof evidence.",
        "",
        f"- Plan: `{report['plan']}`",
        f"- Source: `{report['source']}`",
        f"- Generation report: `{report['generation_report']}`",
        f"- Root Lean: `{report['root_lean']}`",
        f"- Root namespace: `{report['root_namespace']}`",
        f"- Ranks: `{[entry['rank'] for entry in report['entries']]}`",
        "",
        "| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |",
        "| ---: | ---: | ---: | ---: | --- |",
    ]
    for entry in report["entries"]:
        lines.append(
            f"| {entry['rank']} | {entry['anchor_mask']} | "
            f"{entry['good_mask_count']} | {entry['selected_subcube_count']} | "
            f"`{entry['selected_word_impacts']}` |"
        )
    lines.extend([
        "",
        "Dry-run command:",
        "",
        "```bash",
        report["next_command"],
        "```",
        "",
        "Emit command, only after accepting the dry-run report:",
        "",
        "```bash",
        report["next_emit_command"],
        "```",
        "",
        "Build policy after emission: run focused targets serially through the",
        "AP16DI memory guard.  Do not attach the emitted files to a broad root",
        "until per-target RSS is recorded.",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", action="append", type=Path, dest="profiles")
    parser.add_argument("--profile-glob", default=DEFAULT_PROFILE_GLOB)
    parser.add_argument("--output-prefix", type=Path, default=DEFAULT_OUTPUT_PREFIX)
    parser.add_argument("--root-lean", default=DEFAULT_ROOT_LEAN)
    parser.add_argument("--root-namespace", default=DEFAULT_ROOT_NAMESPACE)
    parser.add_argument("--phase", default="Phase 6Z.6K.8AP.16DU.9GH")
    parser.add_argument("--signature-key-prefix", default="du9gh")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    paths = args.profiles
    if not paths:
        paths = sorted(Path().glob(args.profile_glob), key=lambda p: str(p))
    if not paths:
        raise SystemExit("no compact hcover profiles selected")
    profiles = load_profiles(paths)
    plan, source, report = build_payloads(
        profiles=profiles,
        output_prefix=args.output_prefix,
        root_lean=args.root_lean,
        root_namespace=args.root_namespace,
        phase=args.phase,
        signature_key_prefix=args.signature_key_prefix,
    )
    plan_path = args.output_prefix.with_name(args.output_prefix.name + "_plan.json")
    source_path = args.output_prefix.with_name(args.output_prefix.name + "_source.json")
    report_path = args.output_prefix.with_name(args.output_prefix.name + "_prep.json")
    for path, payload in [(plan_path, plan), (source_path, source), (report_path, report)]:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(report, report_path.with_suffix(".md"))
    print(f"wrote {plan_path}")
    print(f"wrote {source_path}")
    print(f"wrote {report_path}")
    print(f"ranks={[entry['rank'] for entry in report['entries']]}")


if __name__ == "__main__":
    main()
