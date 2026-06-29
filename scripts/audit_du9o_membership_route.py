#!/usr/bin/env python3
"""Audit the next DU.9 membership route.

DU.9M/DU.9N prove that emitted positive selector cases erase to
`TranslationGoodCaseKilled`.  The remaining bounded proof obligation is:

  identity-linear GoodDirectionAtRank -> emitted SelectorPositiveCase.

This audit intentionally does not emit Lean proof evidence.  It records the
small `[0,4)` positive language, checks which compact-Walsh good-mask cover
modules already exist, and names the missing modules needed for a compressed
membership proof that avoids raw all-mask bad-direction replay.
"""

from __future__ import annotations

import json
from collections import defaultdict
from pathlib import Path
from typing import Any


MANIFEST = Path("scripts/generated/phase6z6k8ap16du9m_microshards_all42.json")
OUT_JSON = Path("scripts/generated/phase6z6k8ap16du9o_membership_route_audit.json")
OUT_MD = Path("scripts/generated/phase6z6k8ap16du9o_membership_route_audit.md")
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")


def cover_module_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke.lean"


def split_trace_root_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshVectorTraceRank{rank}SplitSmoke.lean"


def selected_impacts_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomRank{rank}SelectedImpactsSmoke.lean"


def grouped_cases(manifest: dict[str, Any]) -> dict[int, list[int]]:
    grouped: dict[int, list[int]] = defaultdict(list)
    for shard in manifest["shards"]:
        for case in shard["cases"]:
            grouped[int(case["rank"])].append(int(case["mask"]))
    return {rank: sorted(masks) for rank, masks in sorted(grouped.items())}


def main() -> None:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    grouped = grouped_cases(manifest)
    rank_status = []
    for rank, masks in grouped.items():
        rank_status.append({
            "rank": rank,
            "good_masks": masks,
            "good_mask_count": len(masks),
            "compact_cover_module": str(cover_module_path(rank)),
            "compact_cover_exists": cover_module_path(rank).exists(),
            "split_trace_root": str(split_trace_root_path(rank)),
            "split_trace_root_exists": split_trace_root_path(rank).exists(),
            "selected_impacts_root": str(selected_impacts_path(rank)),
            "selected_impacts_root_exists": selected_impacts_path(rank).exists(),
        })

    missing_cover_ranks = [
        item["rank"] for item in rank_status if not item["compact_cover_exists"]
    ]
    payload = {
        "phase": "6Z.6K.8AP.16DU.9O",
        "trusted_as_proof": False,
        "input_manifest": str(MANIFEST),
        "rank_start": manifest["rank_start"],
        "rank_end": manifest["rank_end"],
        "positive_survivor_count": manifest["emitted_survivors"],
        "ranks_with_positive_survivors": sorted(grouped),
        "rank_status": rank_status,
        "missing_compact_cover_ranks": missing_cover_ranks,
        "recommended_next_step": (
            "Generate compact-Walsh GoodDirection-to-good-mask cover modules "
            "for the missing ranks, then emit a bounded membership root that "
            "maps each good-mask disjunction into the combined DU9M "
            "SelectorPositiveCase constructors."
        ),
        "rejected_route": (
            "Do not prove membership by fin_cases over all 64 masks with "
            "rank-local denominator replay; AP16H already showed that route "
            "recreates the bad-direction evidence burden."
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")

    lines = [
        "# DU.9O Membership Route Audit",
        "",
        "This report is planning telemetry, not proof evidence.",
        "",
        f"- Positive survivors from DU.9M: `{payload['positive_survivor_count']}`",
        f"- Bounded range: `[{payload['rank_start']},{payload['rank_end']})`",
        f"- Ranks with positive survivors: `{payload['ranks_with_positive_survivors']}`",
        "",
        "## Rank Status",
        "",
        "| Rank | Good masks | Compact cover exists | Split trace exists | Selected impacts exists |",
        "| ---: | ---: | :---: | :---: | :---: |",
    ]
    for item in rank_status:
        lines.append(
            f"| {item['rank']} | {item['good_mask_count']} | "
            f"{'yes' if item['compact_cover_exists'] else 'no'} | "
            f"{'yes' if item['split_trace_root_exists'] else 'no'} | "
            f"{'yes' if item['selected_impacts_root_exists'] else 'no'} |"
        )
    lines.extend([
        "",
        "## Decision",
        "",
        payload["recommended_next_step"],
        "",
        "Rejected route:",
        "",
        payload["rejected_route"],
        "",
        "Missing compact-cover ranks:",
        "",
        f"`{missing_cover_ranks}`",
        "",
    ])
    OUT_MD.write_text("\n".join(lines), encoding="utf-8")
    print(f"wrote {OUT_JSON}")
    print(f"wrote {OUT_MD}")


if __name__ == "__main__":
    main()
