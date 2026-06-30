#!/usr/bin/env python3
"""Profile DU9IQ ranks ready for the weighted-cover source-row pipeline.

This joins two profiler outputs:

* weighted denominator cube summaries, grouped by rank;
* positive-survivor signature data, which gives the GoodDirection masks.

For each rank present in both inputs, the script checks whether the selected
weighted cubes cover every mask outside the positive-survivor set.  It is an
engineering profiler only; Lean remains responsible for checking any generated
evidence.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_WEIGHTED = Path(
    "scripts/generated/"
    "phase6z6k8ap16du9iq_weighted_reduced_quadratic_bounds_profile.json"
)
DEFAULT_POSITIVE = Path(
    "scripts/generated/"
    "phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json"
)
DEFAULT_OUTPUT = Path(
    "scripts/generated/"
    "phase6z6k8ap16du9iq_weighted_pipeline_candidates_896_960.json"
)


def normalize_pattern(pattern: str) -> str:
    return pattern.replace("*", "x")


def mask_matches_pattern(mask: int, pattern: str) -> bool:
    pattern = normalize_pattern(pattern)
    if len(pattern) != 6:
        raise ValueError(f"unexpected pattern length: {pattern}")
    for bit, ch in enumerate(pattern):
        value = (mask >> bit) & 1
        if ch != "x" and value != int(ch):
            return False
    return True


def positive_masks_by_rank(data: dict[str, Any]) -> dict[int, list[int]]:
    result: dict[int, list[int]] = {}
    for signature in data["positive_survivor_signature_catalog"]:
        masks = [int(mask) for mask in signature["good_masks"]]
        for rank in signature["ranks"]:
            result[int(rank)] = masks
    return result


def weighted_summaries_by_rank(data: dict[str, Any]) -> dict[int, list[dict[str, Any]]]:
    result: dict[int, list[dict[str, Any]]] = {}
    for summary in data["summaries"]:
        result.setdefault(int(summary["rank"]), []).append(summary)
    return result


def analyze_rank(rank: int, good_masks: list[int], summaries: list[dict[str, Any]]) -> dict[str, Any]:
    good = set(good_masks)
    cover_for_mask: dict[int, int] = {}
    uncovered: list[int] = []
    for mask in range(64):
        if mask in good:
            continue
        for index, summary in enumerate(summaries):
            if mask_matches_pattern(mask, summary["pattern"]):
                cover_for_mask[mask] = index
                break
        else:
            uncovered.append(mask)
    return {
        "rank": rank,
        "positive_masks": good_masks,
        "positive_count": len(good_masks),
        "cube_count": len(summaries),
        "covered_nonpositive_count": len(cover_for_mask),
        "uncovered_nonpositive_masks": uncovered,
        "complete": not uncovered,
        "patterns": [normalize_pattern(summary["pattern"]) for summary in summaries],
        "cover_for_mask": {str(mask): index for mask, index in sorted(cover_for_mask.items())},
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--weighted", type=Path, default=DEFAULT_WEIGHTED)
    parser.add_argument("--positive", type=Path, default=DEFAULT_POSITIVE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    weighted = json.loads(args.weighted.read_text(encoding="utf-8"))
    positive = json.loads(args.positive.read_text(encoding="utf-8"))
    weighted_by_rank = weighted_summaries_by_rank(weighted)
    positive_by_rank = positive_masks_by_rank(positive)

    ranks = sorted(set(weighted_by_rank) & set(positive_by_rank))
    analyses = [
        analyze_rank(rank, positive_by_rank[rank], weighted_by_rank[rank])
        for rank in ranks
    ]
    complete = [entry["rank"] for entry in analyses if entry["complete"]]
    incomplete = [entry["rank"] for entry in analyses if not entry["complete"]]
    report = {
        "phase": "6Z.6K.8AP.16DU.9IQ weighted pipeline candidate profile",
        "weighted_input": str(args.weighted),
        "positive_input": str(args.positive),
        "rank_count": len(analyses),
        "complete_rank_count": len(complete),
        "incomplete_rank_count": len(incomplete),
        "complete_ranks": complete,
        "incomplete_ranks": incomplete,
        "analyses": analyses,
        "trusted_as_proof": False,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    print(json.dumps(report, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
