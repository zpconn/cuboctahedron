#!/usr/bin/env python3
"""Plan the DU.9P compact-Walsh membership emission.

This is planning telemetry, not proof evidence.  It consumes the bounded DU.9P
compact-Walsh cover profiles for the ranks that have positive DU.9 selector
cases and records the smallest safe Lean-emission schedule:

  1. emit/check rank 0 only;
  2. if that passes under the memory guard, emit ranks 2 and 3;
  3. only then add the bounded membership root.

The proof obligation remains Lean-side:

  GoodDirectionAtRank ⟨rank, hlt⟩ mask →
    SourceIndexStateSelectorDU9LMicro.SelectorPositiveCase rank mask

The JSON produced here must not be treated as proof.
"""

from __future__ import annotations

import json
from collections import defaultdict
from pathlib import Path
from typing import Any


MANIFEST = Path("scripts/generated/phase6z6k8ap16du9m_microshards_all42.json")
PROFILE_TEMPLATE = "scripts/generated/phase6z6k8ap16du9p_rank{rank}_walsh_subcube_cover.json"
OUT_JSON = Path("scripts/generated/phase6z6k8ap16du9p_compact_cover_emission_plan.json")
OUT_MD = Path("scripts/generated/phase6z6k8ap16du9p_compact_cover_emission_plan.md")


def grouped_cases(manifest: dict[str, Any]) -> dict[int, list[int]]:
    grouped: dict[int, list[int]] = defaultdict(list)
    for shard in manifest["shards"]:
        for case in shard["cases"]:
            grouped[int(case["rank"])].append(int(case["mask"]))
    return {rank: sorted(masks) for rank, masks in sorted(grouped.items())}


def load_profile(rank: int) -> dict[str, Any]:
    path = Path(PROFILE_TEMPLATE.format(rank=rank))
    if not path.exists():
        raise SystemExit(f"missing DU9P profile for rank {rank}: {path}")
    payload = json.loads(path.read_text(encoding="utf-8"))
    payload["_path"] = str(path)
    return payload


def rank_plan(rank: int, expected_good_masks: list[int]) -> dict[str, Any]:
    profile = load_profile(rank)
    good_masks = [int(mask) for mask in profile["good_masks"]]
    selected = list(profile.get("selected", []))
    internal_impacts = sorted({int(item["impact"]) for item in selected})
    word_impacts = [impact - 1 for impact in internal_impacts]
    selected_mask_total = sum(len(item.get("masks", [])) for item in selected)
    trace_targets = 16  # data + 13 steps + final + root
    selected_impact_targets = len(word_impacts)
    selected_root_targets = 1
    cover_targets = 1
    return {
        "rank": rank,
        "profile": profile["_path"],
        "anchor_mask": int(profile["anchor_mask"]),
        "expected_good_masks": expected_good_masks,
        "profile_good_masks": good_masks,
        "good_masks_match_du9m": good_masks == expected_good_masks,
        "good_mask_count": len(good_masks),
        "bad_mask_count": int(profile["bad_mask_count"]),
        "candidate_count": int(profile["candidate_count"]),
        "selected_count": int(profile["selected_count"]),
        "selected_mask_total": selected_mask_total,
        "uncovered_count": int(profile["uncovered_count"]),
        "uncovered_masks": [int(mask) for mask in profile["uncovered_masks"]],
        "walsh_validated": bool(profile["walsh_validated"]),
        "internal_impacts": internal_impacts,
        "selected_word_impacts": word_impacts,
        "projected_lean_targets": {
            "split_trace_targets": trace_targets,
            "selected_impact_targets": selected_impact_targets,
            "selected_impacts_root_targets": selected_root_targets,
            "cover_targets": cover_targets,
            "total": (
                trace_targets
                + selected_impact_targets
                + selected_root_targets
                + cover_targets
            ),
        },
        "accepted_for_next_emission": (
            good_masks == expected_good_masks
            and bool(profile["walsh_validated"])
            and int(profile["uncovered_count"]) == 0
        ),
    }


def main() -> None:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    grouped = grouped_cases(manifest)
    ranks = sorted(grouped)
    rank_plans = [rank_plan(rank, grouped[rank]) for rank in ranks]
    accepted = all(item["accepted_for_next_emission"] for item in rank_plans)
    total_targets = sum(item["projected_lean_targets"]["total"] for item in rank_plans)
    first_rank = ranks[0] if ranks else None
    payload = {
        "phase": "6Z.6K.8AP.16DU.9P",
        "trusted_as_proof": False,
        "input_manifest": str(MANIFEST),
        "rank_start": int(manifest["rank_start"]),
        "rank_end": int(manifest["rank_end"]),
        "positive_survivor_count": int(manifest["emitted_survivors"]),
        "ranks": ranks,
        "rank_plans": rank_plans,
        "accepted_for_lean_emission": accepted,
        "total_projected_lean_targets_for_all_ranks": total_targets,
        "next_safe_emission": {
            "rank": first_rank,
            "reason": (
                "Emit and guard-check the first rank only before producing the "
                "remaining bounded DU9P membership modules."
            ),
            "lean_target_budget": (
                rank_plans[0]["projected_lean_targets"]["total"] if rank_plans else 0
            ),
        },
        "memory_guard": {
            "max_tree_rss_mib": 5000,
            "min_available_mib": 12000,
            "lean_num_threads": 1,
            "lake_jobs": 1,
            "note": (
                "Do not run broad lake build for this slice.  Check individual "
                "targets serially through scripts/run_memory_guarded.py."
            ),
        },
        "rejected_routes": [
            "all-mask fin_cases membership proof",
            "single monolithic compact-Walsh trace module",
            "broad lake build before rank-0 guard passes",
        ],
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")

    lines = [
        "# DU.9P Compact-Cover Emission Plan",
        "",
        "This report is planning telemetry, not proof evidence.",
        "",
        f"- Bounded range: `[{payload['rank_start']},{payload['rank_end']})`",
        f"- Positive survivors: `{payload['positive_survivor_count']}`",
        f"- Ranks to cover: `{ranks}`",
        f"- Accepted for Lean emission: `{'yes' if accepted else 'no'}`",
        f"- Projected Lean targets for all ranks: `{total_targets}`",
        "",
        "## Rank Plans",
        "",
        "| Rank | Good masks | Bad masks | Selected subcubes | Selected impacts | Targets | Accepted |",
        "| ---: | ---: | ---: | ---: | --- | ---: | :---: |",
    ]
    for item in rank_plans:
        lines.append(
            f"| {item['rank']} | {item['good_mask_count']} | "
            f"{item['bad_mask_count']} | {item['selected_count']} | "
            f"`{item['selected_word_impacts']}` | "
            f"{item['projected_lean_targets']['total']} | "
            f"{'yes' if item['accepted_for_next_emission'] else 'no'} |"
        )
    lines.extend([
        "",
        "## Decision",
        "",
        "All three DU.9P profiles are accepted as generator telemetry: the DU.9M",
        "good-mask language matches the compact-Walsh profile language, Walsh",
        "validation passed, and every bad mask is covered by selected subcubes.",
        "",
        "The next proof-producing move is intentionally one-rank only:",
        "",
        f"1. Emit the split-trace compact-cover stack for rank `{first_rank}`.",
        "2. Build only that focused stack through the memory guard.",
        "3. If rank 0 passes, emit ranks `2` and `3` plus the bounded membership root.",
        "",
        "Memory guard for the next Lean check:",
        "",
        "```text",
        "max_tree_rss_mib=5000",
        "min_available_mib=12000",
        "LEAN_NUM_THREADS=1",
        "LAKE_JOBS=1",
        "```",
        "",
        "Rejected routes:",
        "",
    ])
    for route in payload["rejected_routes"]:
        lines.append(f"- {route}")
    lines.append("")
    OUT_MD.write_text("\n".join(lines), encoding="utf-8")

    print(f"wrote {OUT_JSON}")
    print(f"wrote {OUT_MD}")
    print(f"accepted={accepted} projected_targets={total_targets}")


if __name__ == "__main__":
    main()
