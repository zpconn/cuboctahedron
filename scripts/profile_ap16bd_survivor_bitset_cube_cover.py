#!/usr/bin/env python3
"""Profile Boolean cube covers of non-GoodDirection masks.

AP.16BC showed that completed-rank denominator signatures are rank-local, while
GoodDirection survivor bitsets have some sharing.  This diagnostic asks whether
the complement of each survivor bitset has a small mask-cube cover.  A small
cover would make a denominator-cube/Farkas mask-tree proof worth formalizing.

This script is combinatorial only.  It emits no Lean and is not trusted as
proof.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16bd_survivor_bitset_cube_cover.json"
)
DEFAULT_MD = Path(
    "scripts/generated/phase6z6k8ap16bd_survivor_bitset_cube_cover.md"
)

ALL_MASK_BITS = (1 << 64) - 1


def bitset_for_masks(masks: list[int]) -> int:
    bits = 0
    for mask in masks:
        bits |= 1 << int(mask)
    return bits


def bitset_hex(bits: int) -> str:
    return f"0x{bits:016x}"


def cube_members(fixed_mask: int, fixed_value: int) -> int:
    bits = 0
    for mask in range(64):
        if (mask & fixed_mask) == fixed_value:
            bits |= 1 << mask
    return bits


def cube_label(fixed_mask: int, fixed_value: int) -> str:
    chars = []
    for bit in range(6):
        if fixed_mask & (1 << bit):
            chars.append("1" if fixed_value & (1 << bit) else "0")
        else:
            chars.append("*")
    return "".join(reversed(chars))


ALL_CUBES: list[tuple[int, int, int, int, str]] = []
for fixed_mask in range(64):
    free_bits = [bit for bit in range(6) if not (fixed_mask & (1 << bit))]
    value = fixed_mask
    sub = value
    fixed_values = []
    # Enumerate all values that only use fixed bits.
    fixed_values = [v for v in range(64) if (v & ~fixed_mask) == 0]
    for fixed_value in fixed_values:
        members = cube_members(fixed_mask, fixed_value)
        fixed_count = fixed_mask.bit_count()
        ALL_CUBES.append(
            (
                fixed_mask,
                fixed_value,
                members,
                fixed_count,
                cube_label(fixed_mask, fixed_value),
            )
        )


def maximal_bad_cubes(good_bits: int) -> list[tuple[int, int, int, int, str]]:
    bad_bits = ALL_MASK_BITS & ~good_bits
    candidates = [
        cube
        for cube in ALL_CUBES
        if cube[2] & bad_bits and not (cube[2] & good_bits)
    ]
    maximal = []
    for cube in candidates:
        members = cube[2]
        if any(
            other[2] != members and (members & ~other[2]) == 0
            for other in candidates
        ):
            continue
        maximal.append(cube)
    return maximal


def greedy_cover(good_bits: int) -> list[tuple[int, int, int, int, str]]:
    uncovered = ALL_MASK_BITS & ~good_bits
    cubes = maximal_bad_cubes(good_bits)
    chosen = []
    while uncovered:
        best = max(
            cubes,
            key=lambda cube: (
                (cube[2] & uncovered).bit_count(),
                -cube[3],
                cube[4],
            ),
        )
        covered = best[2] & uncovered
        if not covered:
            raise RuntimeError("cube cover got stuck")
        chosen.append(best)
        uncovered &= ~covered
    return chosen


def survivor_bitsets_from_profile(payload: dict[str, Any]) -> dict[int, list[dict[str, Any]]]:
    groups: dict[int, list[dict[str, Any]]] = defaultdict(list)
    for signature in payload["positive_survivor_signature_catalog"]:
        good_masks = [int(mask) for mask in signature["good_masks"]]
        bits = bitset_for_masks(good_masks)
        groups[bits].append(
            {
                "signature": signature["key"],
                "rank_count": int(signature["rank_count"]),
                "case_count": int(signature["case_count"]),
                "sample_ranks": signature["ranks"][:6],
                "good_masks": good_masks,
            }
        )
    return groups


def profile(payload: dict[str, Any]) -> dict[str, Any]:
    survivor_groups = survivor_bitsets_from_profile(payload)
    summaries = []
    cube_histogram: Counter[str] = Counter()
    fixed_histogram: Counter[str] = Counter()
    weighted_signature_cubes = 0
    weighted_rank_cubes = 0
    total_signatures = 0
    total_ranks = 0

    for bits, members in survivor_groups.items():
        cover = greedy_cover(bits)
        cube_count = len(cover)
        cube_histogram[str(cube_count)] += 1
        signature_count = len(members)
        rank_count = sum(item["rank_count"] for item in members)
        total_signatures += signature_count
        total_ranks += rank_count
        weighted_signature_cubes += cube_count * signature_count
        weighted_rank_cubes += cube_count * rank_count
        for cube in cover:
            fixed_histogram[str(cube[3])] += 1
        summaries.append(
            {
                "survivor_bitset": bitset_hex(bits),
                "good_mask_count": bits.bit_count(),
                "signature_count": signature_count,
                "rank_count": rank_count,
                "cube_count": cube_count,
                "sample_good_masks": members[0]["good_masks"],
                "sample_ranks": members[0]["sample_ranks"],
                "sample_cubes": [
                    {
                        "pattern": cube[4],
                        "fixed_count": cube[3],
                        "covers": (cube[2] & ~bits).bit_count(),
                    }
                    for cube in cover[:8]
                ],
            }
        )

    summaries.sort(key=lambda item: (-item["rank_count"], item["cube_count"], item["survivor_bitset"]))
    max_cube_count = max((item["cube_count"] for item in summaries), default=0)
    avg_cubes_per_signature = (
        weighted_signature_cubes / total_signatures if total_signatures else 0.0
    )
    avg_cubes_per_rank = weighted_rank_cubes / total_ranks if total_ranks else 0.0

    if max_cube_count <= 16 and avg_cubes_per_rank <= 12:
        status = "promising-mask-cube-cover"
    elif max_cube_count <= 32 and avg_cubes_per_rank <= 20:
        status = "borderline-mask-cube-cover"
    else:
        status = "large-mask-cube-cover"

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16BD",
        "trusted_as_proof": False,
        "survivor_bitset_count": len(survivor_groups),
        "signature_count": total_signatures,
        "rank_count": total_ranks,
        "max_cube_count": max_cube_count,
        "average_cubes_per_signature": avg_cubes_per_signature,
        "average_cubes_per_rank": avg_cubes_per_rank,
        "cube_count_histogram": dict(sorted(cube_histogram.items(), key=lambda item: int(item[0]))),
        "cube_fixed_count_histogram": dict(sorted(fixed_histogram.items(), key=lambda item: int(item[0]))),
        "top_survivor_bitsets": summaries[:20],
        "decision": {
            "status": status,
            "notes": [
                "This is a Boolean cube cover only; Lean still needs semantic denominator-cube/Farkas proofs for each cube family.",
                "Small cube counts support formalizing a mask-tree or denominator-cube proof layer.",
            ],
        },
    }


def markdown(result: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16BD Survivor-Bitset Cube-Cover Profile",
        "",
        "This is diagnostic only. It emits no Lean and is not trusted as proof.",
        "",
        f"- Status: `{result['decision']['status']}`",
        f"- Unique survivor bitsets: `{result['survivor_bitset_count']}`",
        f"- Positive-survivor signatures represented: `{result['signature_count']}`",
        f"- Ranks represented: `{result['rank_count']}`",
        f"- Max greedy cube count: `{result['max_cube_count']}`",
        f"- Average cubes per signature: `{result['average_cubes_per_signature']:.2f}`",
        f"- Average cubes per rank: `{result['average_cubes_per_rank']:.2f}`",
        f"- Cube-count histogram: `{result['cube_count_histogram']}`",
        f"- Cube fixed-count histogram: `{result['cube_fixed_count_histogram']}`",
        "",
        "## Decision",
        "",
    ]
    if result["decision"]["status"] == "promising-mask-cube-cover":
        lines.append(
            "The bad-mask complement has small Boolean cube covers.  This supports "
            "formalizing a denominator-cube or mask-tree Farkas proof layer."
        )
    elif result["decision"]["status"] == "borderline-mask-cube-cover":
        lines.append(
            "The cube covers are moderate.  A mask-tree/Farkas layer may still be "
            "viable, but it needs a Lean smoke before any broad generation."
        )
    else:
        lines.append(
            "The cube covers are large.  Prefer symbolic state/language pruning "
            "before formalizing denominator-cube leaves."
        )
    lines.extend(["", "## Top Survivor Bitsets", ""])
    for item in result["top_survivor_bitsets"][:8]:
        lines.append(
            f"- `{item['survivor_bitset']}`: ranks `{item['rank_count']}`, "
            f"signatures `{item['signature_count']}`, good masks `{item['good_mask_count']}`, "
            f"cubes `{item['cube_count']}`, sample cubes `{item['sample_cubes'][:3]}`"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--out-md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = json.loads(args.profile.read_text(encoding="utf-8"))
    result = profile(payload)
    args.out_json.parent.mkdir(parents=True, exist_ok=True)
    args.out_json.write_text(json.dumps(result, indent=2, sort_keys=True), encoding="utf-8")
    args.out_md.write_text(markdown(result), encoding="utf-8")
    print(
        f"wrote {args.out_json} and {args.out_md}; "
        f"{result['survivor_bitset_count']} survivor bitsets"
    )


if __name__ == "__main__":
    main()
