#!/usr/bin/env python3
"""Standalone weighted-denominator cube profiler for one translation rank.

This is planning telemetry only, not proof evidence.  It computes the exact
internal impact denominators for all 64 translation sign masks at one pair-word
rank, derives the GoodDirection survivor set directly, covers its complement by
Boolean cubes, and searches for sparse nonnegative integer-weighted denominator
obstructions for each cube.
"""

from __future__ import annotations

import argparse
import json
import time
from dataclasses import asdict
from fractions import Fraction
from pathlib import Path
from typing import Any

import check_certificates_independently as exact
from generate_ap16t_precomputed_signature_smoke import bitset_for_masks, greedy_cover
from profile_ap16bh_denominator_cube_weighted_obstruction import (
    CubeResult,
    find_sparse_witness,
    fraction_to_json,
)


DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16du9ba_rank6000745_weighted_cube_profile.json"
)


def denominator_rows_for_rank(rank: int) -> tuple[list[str], dict[int, list[Fraction]], list[int]]:
    word = exact.pair_word_at_rank(rank)
    rows: dict[int, list[Fraction]] = {}
    good_masks: list[int] = []
    for mask in range(64):
        b, seq = exact.translation_vector(word, mask)
        denoms = [exact.impact_denom(seq, b, impact) for impact in range(1, 14)]
        rows[mask] = denoms
        if all(value > 0 for value in denoms):
            good_masks.append(mask)
    return word, rows, good_masks


def bit(mask: int, index: int) -> str:
    return "1" if ((mask >> index) & 1) else "0"


def masks_for_label(label: str) -> list[int]:
    return [
        mask for mask in range(64)
        if all(char == "*" or bit(mask, index) == char
               for index, char in enumerate(label))
    ]


def all_cube_labels() -> list[str]:
    labels = [""]
    for _ in range(6):
        labels = [prefix + char for prefix in labels for char in "01*"]
    return sorted(labels, key=lambda label: (label.count("*"), label))


def witnessable_cube_candidates(
    *,
    rows_by_mask: dict[int, list[Fraction]],
    good_masks: list[int],
    max_support: int,
    max_weight: int,
    seconds_per_candidate: float,
) -> list[dict[str, Any]]:
    good = set(good_masks)
    candidates: list[dict[str, Any]] = []
    for label in all_cube_labels():
        masks = masks_for_label(label)
        bad_masks = [mask for mask in masks if mask not in good]
        if not bad_masks or len(bad_masks) != len(masks):
            continue
        rows = [rows_by_mask[mask] for mask in bad_masks]
        witness = find_sparse_witness(
            rows,
            max_support=max_support,
            max_weight=max_weight,
            deadline=time.monotonic() + seconds_per_candidate,
        )
        if witness is None:
            continue
        candidates.append({
            "label": label,
            "mask_count": len(bad_masks),
            "masks": bad_masks,
            "sparse_witness": asdict(witness),
        })
    return candidates


def greedy_witness_cover(
    *,
    candidates: list[dict[str, Any]],
    bad_masks: list[int],
) -> dict[str, Any]:
    uncovered = set(bad_masks)
    selected: list[dict[str, Any]] = []
    remaining = list(candidates)
    while uncovered:
        best = max(
            remaining,
            key=lambda candidate: (
                len(uncovered.intersection(candidate["masks"])),
                candidate["mask_count"],
                -candidate["label"].count("*"),
            ),
            default=None,
        )
        if best is None or not uncovered.intersection(best["masks"]):
            break
        selected.append(best)
        uncovered.difference_update(best["masks"])
        remaining.remove(best)
    return {
        "candidate_count": len(candidates),
        "selected_count": len(selected),
        "selected": selected,
        "uncovered_masks": sorted(uncovered),
        "uncovered_count": len(uncovered),
    }


def profile(
    *,
    rank: int,
    max_support: int,
    max_weight: int,
    seconds_per_cube: float,
    seconds_per_candidate: float,
) -> dict[str, Any]:
    started = time.monotonic()
    word, rows_by_mask, good_masks = denominator_rows_for_rank(rank)
    good_bitset = bitset_for_masks(good_masks)
    cover = greedy_cover(good_bitset)
    results: list[CubeResult] = []
    for index, cube in enumerate(cover):
        members_bits = cube[2] & ~good_bitset
        masks = [mask for mask in range(64) if members_bits & (1 << mask)]
        rows = [rows_by_mask[mask] for mask in masks]
        common = [
            impact + 1
            for impact in range(13)
            if rows and all(row[impact] <= 0 for row in rows)
        ]
        witness = None
        if rows:
            witness = find_sparse_witness(
                rows,
                max_support=max_support,
                max_weight=max_weight,
                deadline=time.monotonic() + seconds_per_cube,
            )
        results.append(CubeResult(
            index=index,
            label=str(cube[4]),
            mask_count=len(masks),
            masks=masks,
            common_nonpositive_impacts=common,
            sparse_witness=witness,
        ))
    accepted = [result for result in results if result.sparse_witness is not None]
    uncovered = [
        result.label for result in results
        if result.mask_count and result.sparse_witness is None
    ]
    bad_masks = [mask for mask in range(64) if mask not in set(good_masks)]
    candidates = witnessable_cube_candidates(
        rows_by_mask=rows_by_mask,
        good_masks=good_masks,
        max_support=max_support,
        max_weight=max_weight,
        seconds_per_candidate=seconds_per_candidate,
    )
    witness_cover = greedy_witness_cover(candidates=candidates, bad_masks=bad_masks)
    return {
        "phase": "Phase 6Z.6K.8AP.16DU.9BA",
        "rank": rank,
        "word": word,
        "good_masks": good_masks,
        "good_mask_count": len(good_masks),
        "bad_mask_count": 64 - len(good_masks),
        "cube_count": len(results),
        "bad_cube_count": sum(1 for result in results if result.mask_count),
        "max_support": max_support,
        "max_weight": max_weight,
        "seconds_per_cube": seconds_per_cube,
        "seconds_per_candidate": seconds_per_candidate,
        "accepted_cube_count": len(accepted),
        "uncovered_cube_count": len(uncovered),
        "uncovered_cube_labels": uncovered,
        "common_impact_cube_count": sum(
            1 for result in results if result.common_nonpositive_impacts
        ),
        "results": [
            {
                **{k: v for k, v in asdict(result).items()
                   if k != "sparse_witness"},
                "sparse_witness": (
                    None if result.sparse_witness is None
                    else asdict(result.sparse_witness)
                ),
            }
            for result in results
        ],
        "witnessable_cube_cover": witness_cover,
        "elapsed_seconds": time.monotonic() - started,
        "trusted_as_proof": False,
    }


def markdown(data: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9BA Weighted Cube Rank Profile",
        "",
        "This is exact external telemetry, not proof evidence.",
        "",
        f"- rank: `{data['rank']}`",
        f"- word: `{' '.join(data['word'])}`",
        f"- GoodDirection masks: `{data['good_mask_count']}`",
        f"- non-GoodDirection masks: `{data['bad_mask_count']}`",
        f"- Boolean cubes: `{data['cube_count']}`",
        f"- bad-mask cubes: `{data['bad_cube_count']}`",
        f"- cubes with sparse weighted witness: `{data['accepted_cube_count']}`",
        f"- uncovered cubes: `{data['uncovered_cube_count']}`",
        f"- max support: `{data['max_support']}`",
        f"- max weight: `{data['max_weight']}`",
        f"- seconds per cube: `{data['seconds_per_cube']}`",
        f"- seconds per witnessable-candidate search: `{data['seconds_per_candidate']}`",
        f"- elapsed seconds: `{data['elapsed_seconds']:.3f}`",
        "",
        "## Greedy Cover By Witnessable Cubes",
        "",
        f"- witnessable candidate cubes: `{data['witnessable_cube_cover']['candidate_count']}`",
        f"- selected cubes: `{data['witnessable_cube_cover']['selected_count']}`",
        f"- uncovered masks: `{data['witnessable_cube_cover']['uncovered_count']}`",
        "",
        "| selected cube | masks | sparse witness |",
        "| ---: | ---: | --- |",
    ]
    for candidate in data["witnessable_cube_cover"]["selected"]:
        witness = candidate["sparse_witness"]
        pairs = ", ".join(
            f"{impact}:{weight}"
            for impact, weight in zip(witness["support"], witness["weights"])
        )
        lines.append(
            f"| {candidate['label']} | {candidate['mask_count']} | "
            f"`{pairs}` (max `{witness['max_value']}`) |"
        )
    lines.extend([
        "",
        "## Greedy Cover First, Witness Later",
        "",
        "| cube | masks | common impacts | sparse witness |",
        "| ---: | ---: | --- | --- |",
    ])
    for result in data["results"]:
        witness = result["sparse_witness"]
        if witness is None:
            witness_text = ""
        else:
            pairs = ", ".join(
                f"{impact}:{weight}"
                for impact, weight in zip(witness["support"], witness["weights"])
            )
            witness_text = f"`{pairs}` (max `{witness['max_value']}`)"
        common = ", ".join(str(i) for i in result["common_nonpositive_impacts"])
        lines.append(
            f"| {result['label']} | {result['mask_count']} | {common} | "
            f"{witness_text} |"
        )
    if data["uncovered_cube_labels"]:
        lines.extend([
            "",
            "Uncovered cube labels:",
            "",
        ])
        for label in data["uncovered_cube_labels"]:
            lines.append(f"- `{label}`")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=6_000_745)
    parser.add_argument("--max-support", type=int, default=4)
    parser.add_argument("--max-weight", type=int, default=12)
    parser.add_argument("--seconds-per-cube", type=float, default=5.0)
    parser.add_argument("--seconds-per-candidate", type=float, default=0.25)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    data = profile(
        rank=args.rank,
        max_support=args.max_support,
        max_weight=args.max_weight,
        seconds_per_cube=args.seconds_per_cube,
        seconds_per_candidate=args.seconds_per_candidate,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n",
                           encoding="utf-8")
    args.output.with_suffix(".md").write_text(markdown(data), encoding="utf-8")
    print(
        json.dumps(
            {
                "rank": data["rank"],
                "good_mask_count": data["good_mask_count"],
                "bad_cube_count": data["bad_cube_count"],
                "accepted_cube_count": data["accepted_cube_count"],
                "uncovered_cube_count": data["uncovered_cube_count"],
                "witnessable_candidate_count": data["witnessable_cube_cover"]["candidate_count"],
                "witness_cover_selected_count": data["witnessable_cube_cover"]["selected_count"],
                "witness_cover_uncovered_count": data["witnessable_cube_cover"]["uncovered_count"],
                "elapsed_seconds": round(data["elapsed_seconds"], 3),
                "output": str(args.output),
            },
            indent=2,
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
