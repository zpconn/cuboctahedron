#!/usr/bin/env python3
"""Plan the next bounded AP16 compact Walsh-cover batch.

This script is diagnostic/planning infrastructure only.  It consumes the
AP16DD compact Walsh-cover scaling sample and turns it into a concrete bounded
AP16DJ emission/build plan:

* which survivor signatures to try next;
* how many trace/selected-impact/cover modules that would generate;
* which word-impact positions are needed;
* the memory guard settings that must wrap every Lean target.

It intentionally does not emit Lean and does not run Lake.
"""

from __future__ import annotations

import argparse
import json
import statistics
from pathlib import Path
from typing import Any


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8ap16dd_compact_walsh_cover_scaling.json"
)
DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16dj_compact_walsh_batch_plan.json"
)

DEFAULT_EXCLUDED_RANKS = {100805, 101105}

# These are the representative uncached numbers recorded in the accepted AP16DI
# markdown report.  The cached full serial replay is much cheaper, but these are
# safer planning constants for new signatures.
AP16DI_REPRESENTATIVE_COVER_PEAK_MIB = 4309.70
AP16DI_REPRESENTATIVE_ROOT_PEAK_MIB = 4031.95
AP16DI_DEFAULT_RSS_CAP_MIB = 5000
AP16DI_DEFAULT_AVAILABLE_FLOOR_MIB = 12000


def selected_word_impacts(item: dict[str, Any]) -> list[int]:
    return sorted({int(candidate["impact"]) - 1 for candidate in item["selected"]})


def select_results(
    data: dict[str, Any],
    *,
    limit: int,
    excluded_ranks: set[int],
) -> list[dict[str, Any]]:
    selected: list[dict[str, Any]] = []
    for item in data.get("results", []):
        rank = int(item["rank"])
        if rank in excluded_ranks:
            continue
        if int(item.get("uncovered_count", 0)) != 0:
            continue
        selected.append(item)
        if len(selected) >= limit:
            break
    return selected


def module_plan_for_signature(item: dict[str, Any]) -> dict[str, Any]:
    impacts = selected_word_impacts(item)
    rank = int(item["rank"])
    return {
        "rank": rank,
        "anchor_mask": int(item["anchor_mask"]),
        "signature_key_prefix": str(item["signature_key"])[:16],
        "good_mask_count": len(item["good_masks"]),
        "bad_mask_count": int(item["bad_mask_count"]),
        "selected_subcube_count": int(item["selected_count"]),
        "candidate_subcube_count": int(item["candidate_count"]),
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


def summarize(entries: list[dict[str, Any]]) -> dict[str, Any]:
    selected_counts = [entry["selected_subcube_count"] for entry in entries]
    impact_counts = [entry["selected_word_impact_count"] for entry in entries]
    good_mask_counts = [entry["good_mask_count"] for entry in entries]
    all_impacts = sorted({
        impact
        for entry in entries
        for impact in entry["selected_word_impacts"]
    })
    signature_module_count = sum(entry["planned_modules"]["total"] for entry in entries)
    root_module_count = 1 if entries else 0
    return {
        "signature_count": len(entries),
        "rank_count": len({entry["rank"] for entry in entries}),
        "selected_subcubes": {
            "min": min(selected_counts) if selected_counts else 0,
            "mean": statistics.fmean(selected_counts) if selected_counts else 0,
            "max": max(selected_counts) if selected_counts else 0,
            "total": sum(selected_counts),
        },
        "good_masks": {
            "min": min(good_mask_counts) if good_mask_counts else 0,
            "mean": statistics.fmean(good_mask_counts) if good_mask_counts else 0,
            "max": max(good_mask_counts) if good_mask_counts else 0,
        },
        "selected_word_impacts_union": all_impacts,
        "selected_word_impact_union_count": len(all_impacts),
        "selected_word_impacts_per_signature": {
            "min": min(impact_counts) if impact_counts else 0,
            "mean": statistics.fmean(impact_counts) if impact_counts else 0,
            "max": max(impact_counts) if impact_counts else 0,
        },
        "planned_modules": {
            "signature_modules": signature_module_count,
            "batch_root_modules": root_module_count,
            "total": signature_module_count + root_module_count,
        },
        "planned_serial_lean_targets": signature_module_count + root_module_count,
    }


def gate_decision(summary: dict[str, Any], *, limit: int) -> dict[str, Any]:
    reasons: list[str] = []
    accepted = True
    if summary["signature_count"] != limit:
        accepted = False
        reasons.append("fewer signatures available than requested")
    if summary["selected_subcubes"]["max"] > 32:
        accepted = False
        reasons.append("a signature needs more than 32 selected subcubes")
    if summary["selected_word_impacts_per_signature"]["max"] > 8:
        accepted = False
        reasons.append("a signature needs more than 8 selected word impacts")
    if summary["planned_serial_lean_targets"] > 80:
        accepted = False
        reasons.append("bounded batch would require more than 80 serial Lean targets")
    return {
        "accepted_for_next_guarded_emission": accepted,
        "reasons": reasons,
        "lean_build_policy": {
            "parallelism": "serial for generated Lean targets",
            "LEAN_NUM_THREADS": 1,
            "LAKE_JOBS": 1,
            "rss_cap_mib": AP16DI_DEFAULT_RSS_CAP_MIB,
            "available_floor_mib": AP16DI_DEFAULT_AVAILABLE_FLOOR_MIB,
            "per_target_timeout_seconds": 600,
            "stop_on_first_failure": True,
        },
        "representative_ap16di_telemetry": {
            "uncached_cover_peak_mib": AP16DI_REPRESENTATIVE_COVER_PEAK_MIB,
            "root_after_cached_leaves_peak_mib": AP16DI_REPRESENTATIVE_ROOT_PEAK_MIB,
            "note": (
                "These are planning constants from AP16DI.  AP16DJ must collect "
                "fresh per-target telemetry before any larger batch."
            ),
        },
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    summary = payload["summary"]
    gate = payload["gate"]
    lines = [
        "# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Plan",
        "",
        "Diagnostic/planning only; not proof data and not generated Lean.",
        "",
        f"- source profile: `{payload['source_profile']}`",
        f"- requested signature limit: `{payload['requested_limit']}`",
        f"- selected signatures: `{summary['signature_count']}`",
        f"- selected subcubes total: `{summary['selected_subcubes']['total']}`",
        f"- selected subcubes max: `{summary['selected_subcubes']['max']}`",
        f"- selected word-impact union: `{summary['selected_word_impacts_union']}`",
        f"- planned serial Lean targets: `{summary['planned_serial_lean_targets']}`",
        f"- accepted for next guarded emission: `{gate['accepted_for_next_guarded_emission']}`",
        "",
        "Memory/build policy for the next AP16DJ emission smoke:",
        "",
        "```text",
        "LEAN_NUM_THREADS=1",
        "LAKE_JOBS=1",
        f"process-tree RSS cap: {gate['lean_build_policy']['rss_cap_mib']} MiB",
        f"minimum MemAvailable floor: {gate['lean_build_policy']['available_floor_mib']} MiB",
        f"per-target timeout: {gate['lean_build_policy']['per_target_timeout_seconds']}s",
        "build generated targets serially; stop on first failure",
        "```",
        "",
        "Representative AP16DI telemetry used for planning:",
        "",
        f"- uncached cover peak: `{gate['representative_ap16di_telemetry']['uncached_cover_peak_mib']:.2f} MiB`",
        f"- root after cached leaves peak: `{gate['representative_ap16di_telemetry']['root_after_cached_leaves_peak_mib']:.2f} MiB`",
        "",
        "| index | rank | anchor mask | good masks | bad masks | selected subcubes | selected impacts | planned modules | key prefix |",
        "| ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: | --- |",
    ]
    for index, entry in enumerate(payload["entries"]):
        lines.append(
            f"| {index} | {entry['rank']} | {entry['anchor_mask']} | "
            f"{entry['good_mask_count']} | {entry['bad_mask_count']} | "
            f"{entry['selected_subcube_count']} | `{entry['selected_word_impacts']}` | "
            f"{entry['planned_modules']['total']} | `{entry['signature_key_prefix']}` |"
        )
    lines.extend([
        "",
        "Next safe implementation step:",
        "",
        "1. Generalize the AP16DF generator to consume this batch manifest.",
        "2. Generate only the selected AP16DJ signatures.",
        "3. Build every generated target with the AP16DI-style serial memory guard.",
        "4. Accept the batch only if every target stays under the RSS cap and the",
        "   batch root stays small after leaves are cached.",
        "",
    ])
    if gate["reasons"]:
        lines.append("Gate rejection reasons:")
        lines.append("")
        for reason in gate["reasons"]:
            lines.append(f"- {reason}")
        lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--limit", type=int, default=5)
    parser.add_argument(
        "--exclude-rank",
        type=int,
        action="append",
        default=sorted(DEFAULT_EXCLUDED_RANKS),
        help="Rank to exclude because it is already covered by an earlier smoke.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    if args.limit <= 0:
        raise SystemExit("--limit must be positive")
    data = json.loads(args.input.read_text(encoding="utf-8"))
    entries = [
        module_plan_for_signature(item)
        for item in select_results(
            data,
            limit=args.limit,
            excluded_ranks=set(args.exclude_rank or []),
        )
    ]
    summary = summarize(entries)
    payload = {
        "phase": "Phase 6Z.6K.8AP.16DJ",
        "schema_version": 1,
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "source_profile": str(args.input),
        "requested_limit": args.limit,
        "excluded_ranks": sorted(set(args.exclude_rank or [])),
        "summary": summary,
        "gate": gate_decision(summary, limit=args.limit),
        "entries": entries,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(payload, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; signatures={summary['signature_count']} "
        f"targets={summary['planned_serial_lean_targets']} "
        f"accepted={payload['gate']['accepted_for_next_guarded_emission']}"
    )


if __name__ == "__main__":
    main()
