#!/usr/bin/env python3
"""Bounded sparse weighted-denominator obstruction profiler for AP.16BH.

AP.16BG added the Lean core:

  WeightedDenomCubeObstruction.notGood

To instantiate it for a Boolean bad-mask cube, generated evidence needs a
nonnegative weighted sum of the 13 internal impact denominators that is
nonpositive for every mask in the cube.  This script performs a deliberately
bounded exact search for small sparse integer weights on the AP16BF singleton
rank cubes.  It emits profiling data only; it is not proof data.
"""

from __future__ import annotations

import argparse
import itertools
import json
import math
import sys
import time
from dataclasses import asdict, dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import check_certificates_independently as exact  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    bitset_for_masks,
    classified_cases_and_bad_masks_for_signature,
    greedy_cover,
    select_signature_containing_rank_mask,
)


DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16bh_denominator_cube_weighted_profile.json"
)


@dataclass(frozen=True)
class WeightWitness:
    support: list[int]
    weights: list[int]
    max_value: str


@dataclass(frozen=True)
class CubeResult:
    index: int
    label: str
    mask_count: int
    masks: list[int]
    common_nonpositive_impacts: list[int]
    sparse_witness: WeightWitness | None


def fraction_to_json(q: Fraction) -> str:
    if q.denominator == 1:
        return str(q.numerator)
    return f"{q.numerator}/{q.denominator}"


def clear_rows(rows: list[list[Fraction]], support: tuple[int, ...]) -> list[list[int]]:
    den = 1
    for row in rows:
        for j in support:
            den = math.lcm(den, row[j].denominator)
    return [[row[j].numerator * (den // row[j].denominator) for j in support]
            for row in rows]


def primitive(weights: tuple[int, ...]) -> bool:
    g = 0
    for w in weights:
      g = math.gcd(g, w)
    return g == 1


def find_sparse_witness(
    rows: list[list[Fraction]],
    *,
    max_support: int,
    max_weight: int,
    deadline: float,
) -> WeightWitness | None:
    for support_size in range(1, max_support + 1):
        for support in itertools.combinations(range(13), support_size):
            int_rows = clear_rows(rows, support)
            for weights in itertools.product(range(1, max_weight + 1),
                                             repeat=support_size):
                if time.monotonic() > deadline:
                    return None
                if not primitive(weights):
                    continue
                ok = True
                max_value: Fraction | None = None
                for int_row, frac_row in zip(int_rows, rows):
                    int_sum = sum(w * a for w, a in zip(weights, int_row))
                    if int_sum > 0:
                        ok = False
                        break
                    value = sum(Fraction(w) * frac_row[j]
                                for w, j in zip(weights, support))
                    if max_value is None or value > max_value:
                        max_value = value
                if ok:
                    return WeightWitness(
                        support=[j + 1 for j in support],
                        weights=list(weights),
                        max_value=fraction_to_json(max_value or Fraction(0)),
                    )
    return None


def profile(
    *,
    profile_path: Path,
    rank: int,
    mask: int,
    max_support: int,
    max_weight: int,
    seconds_per_cube: float,
) -> dict[str, Any]:
    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = [int(mask_value) for mask_value in signature["good_masks"]]
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    good_bitset = bitset_for_masks(good_masks)
    cover = greedy_cover(good_bitset)
    results: list[CubeResult] = []
    for index, cube in enumerate(cover):
        members_bits = cube[2] & ~good_bitset
        masks = [m for m in range(64) if members_bits & (1 << m)]
        rows: list[list[Fraction]] = []
        for cube_mask in masks:
            bad = bad_masks[cube_mask]
            rows.append([
                exact.impact_denom(bad.seq, bad.b, impact)
                for impact in range(1, 14)
            ])
        common = [
            impact + 1
            for impact in range(13)
            if all(row[impact] <= 0 for row in rows)
        ]
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
    return {
        "phase": "Phase 6Z.6K.8AP.16BH",
        "rank": rank,
        "anchor_mask": mask,
        "good_masks": good_masks,
        "cube_count": len(results),
        "max_support": max_support,
        "max_weight": max_weight,
        "seconds_per_cube": seconds_per_cube,
        "accepted_cube_count": len(accepted),
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
        "trusted_as_proof": False,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16BH Denominator-Cube Weighted Profile",
        "",
        "This is a bounded exact profiler, not proof data.",
        "",
        f"- rank: `{data['rank']}`",
        f"- cubes: `{data['cube_count']}`",
        f"- max support: `{data['max_support']}`",
        f"- max weight: `{data['max_weight']}`",
        f"- seconds per cube: `{data['seconds_per_cube']}`",
        f"- cubes with sparse witness: `{data['accepted_cube_count']}`",
        f"- cubes with common nonpositive impact: `{data['common_impact_cube_count']}`",
        "",
        "| cube | masks | common impacts | sparse witness |",
        "| ---: | ---: | --- | --- |",
    ]
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
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--max-support", type=int, default=3)
    parser.add_argument("--max-weight", type=int, default=8)
    parser.add_argument("--seconds-per-cube", type=float, default=3.0)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    data = profile(
        profile_path=args.profile,
        rank=args.rank,
        mask=args.mask,
        max_support=args.max_support,
        max_weight=args.max_weight,
        seconds_per_cube=args.seconds_per_cube,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output} with {data['accepted_cube_count']}/"
        f"{data['cube_count']} sparse witnesses"
    )


if __name__ == "__main__":
    main()
