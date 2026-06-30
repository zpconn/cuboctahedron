#!/usr/bin/env python3
"""Profile weighted denominator-cube covers for the DU9IQ hmask gap.

This diagnostic emits no Lean and is not trusted as proof.  It strengthens the
common-impact subcube profile by allowing a Boolean subcube to be killed by a
small nonnegative integer combination of internal impact denominators.

The target Lean surface, if accepted later, is
`DenominatorCube.WeightedDenomCubeCover`.  This script deliberately does not
use the old compact-Walsh or trace-certificate emitters.
"""

from __future__ import annotations

import argparse
import itertools
import json
import math
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

from generate_source_index_state_bounded_coverage import collect_window
from generate_source_index_state_nonenum_smoke import write_json, write_text
from profile_du9iq_impact_subcube_cover import (
    all_patterns,
    denom_table_for_rank,
    frac_text,
    mask_matches,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9iq_weighted_denominator_cube_cover_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass(frozen=True)
class WeightWitness:
    support: tuple[int, ...]
    weights: tuple[int, ...]
    max_value: Fraction

    @property
    def support_text(self) -> str:
        return ",".join(str(i) for i in self.support)

    @property
    def weights_text(self) -> str:
        return ",".join(str(w) for w in self.weights)


@dataclass(frozen=True)
class WeightedCube:
    pattern: tuple[int | None, ...]
    members: tuple[int, ...]
    witness: WeightWitness

    @property
    def fixed_count(self) -> int:
        return sum(bit is not None for bit in self.pattern)

    @property
    def label(self) -> str:
        return "".join("*" if bit is None else str(bit) for bit in self.pattern)


def primitive(weights: tuple[int, ...]) -> bool:
    g = 0
    for weight in weights:
        g = math.gcd(g, weight)
    return g == 1


def witness_for_rows(
    rows: list[list[Fraction]],
    *,
    max_support: int,
    max_weight: int,
) -> WeightWitness | None:
    for support_size in range(1, max_support + 1):
        for support in itertools.combinations(range(1, 14), support_size):
            if support_size == 1:
                weight_options = [(1,)]
            else:
                weight_options = itertools.product(
                    range(1, max_weight + 1),
                    repeat=support_size,
                )
            for weights in weight_options:
                weights = tuple(weights)
                if not primitive(weights):
                    continue
                values = [
                    sum(
                        Fraction(weight) * row[impact - 1]
                        for impact, weight in zip(support, weights, strict=True)
                    )
                    for row in rows
                ]
                max_value = max(values)
                if max_value <= 0:
                    return WeightWitness(
                        support=tuple(support),
                        weights=weights,
                        max_value=max_value,
                    )
    return None


def candidate_cubes_for_rank(
    *,
    good_masks: set[int],
    bad_masks: set[int],
    denom_table: dict[int, dict[int, Fraction]],
    max_support: int,
    max_weight: int,
) -> list[WeightedCube]:
    candidates: list[WeightedCube] = []
    for pattern in all_patterns():
        members = tuple(mask for mask in range(64) if mask_matches(mask, pattern))
        if not members:
            continue
        member_set = set(members)
        if member_set & good_masks:
            continue
        if not (member_set & bad_masks):
            continue
        if not member_set <= bad_masks:
            continue
        rows = [
            [denom_table[mask][impact] for impact in range(1, 14)]
            for mask in members
        ]
        witness = witness_for_rows(
            rows,
            max_support=max_support,
            max_weight=max_weight,
        )
        if witness is not None:
            candidates.append(WeightedCube(
                pattern=pattern,
                members=members,
                witness=witness,
            ))
    return candidates


def greedy_cover(bad_masks: set[int], candidates: list[WeightedCube]) -> list[WeightedCube]:
    uncovered = set(bad_masks)
    selected: list[WeightedCube] = []
    while uncovered:
        usable = [
            cube for cube in candidates
            if set(cube.members) & uncovered
        ]
        if not usable:
            raise RuntimeError(f"no weighted cube covers masks {sorted(uncovered)}")
        best = max(
            usable,
            key=lambda cube: (
                len(set(cube.members) & uncovered),
                len(cube.members),
                -len(cube.witness.support),
                -cube.fixed_count,
                cube.label,
            ),
        )
        selected.append(best)
        uncovered.difference_update(best.members)
    return selected


def cube_json(cube: WeightedCube) -> dict[str, Any]:
    return {
        "pattern": cube.label,
        "fixed_count": cube.fixed_count,
        "mask_count": len(cube.members),
        "masks": list(cube.members),
        "support": list(cube.witness.support),
        "weights": list(cube.witness.weights),
        "max_value": frac_text(cube.witness.max_value),
    }


def profile(
    *,
    rank_start: int,
    limit: int,
    max_support: int,
    max_weight: int,
    max_total_cubes_gate: int,
    max_rank_cubes_gate: int,
) -> dict[str, Any]:
    window = collect_window(rank_start=rank_start, limit=limit)

    good_by_rank: dict[int, set[int]] = {}
    for key in window.covered:
        good_by_rank.setdefault(key.rank, set()).add(key.mask)

    bad_by_rank: dict[int, set[int]] = {}
    for key in window.bad_masks:
        bad_by_rank.setdefault(key.rank, set()).add(key.mask)

    rank_rows: list[dict[str, Any]] = []
    total_selected = 0
    total_candidates = 0
    largest_rank_cover = 0
    largest_cube = 0
    support_hist: dict[str, int] = {}

    for rank in sorted(window.identity_ranks):
        good_masks = good_by_rank.get(rank, set())
        bad_masks = bad_by_rank.get(rank, set())
        denom_table = denom_table_for_rank(rank)
        candidates = candidate_cubes_for_rank(
            good_masks=good_masks,
            bad_masks=bad_masks,
            denom_table=denom_table,
            max_support=max_support,
            max_weight=max_weight,
        )
        selected = greedy_cover(bad_masks, candidates)
        total_candidates += len(candidates)
        total_selected += len(selected)
        largest_rank_cover = max(largest_rank_cover, len(selected))
        if selected:
            largest_cube = max(largest_cube, max(len(cube.members) for cube in selected))
        for cube in selected:
            key = (
                f"{cube.witness.support_text}:"
                f"{cube.witness.weights_text}"
            )
            support_hist[key] = support_hist.get(key, 0) + 1
        rank_rows.append({
            "rank": rank,
            "good_masks": sorted(good_masks),
            "bad_mask_count": len(bad_masks),
            "candidate_cube_count": len(candidates),
            "selected_cube_count": len(selected),
            "selected_mask_total": sum(len(cube.members) for cube in selected),
            "largest_selected_cube": (
                0 if not selected else max(len(cube.members) for cube in selected)
            ),
            "selected": [cube_json(cube) for cube in selected],
        })

    accepted = (
        total_selected <= max_total_cubes_gate
        and largest_rank_cover <= max_rank_cubes_gate
    )
    status = (
        "accepted-weighted-denominator-cube-profile"
        if accepted
        else "reject-weighted-denominator-cube-profile"
    )
    next_step = (
        "implement-lean-weighted-denominator-cube-bound-smoke"
        if accepted
        else "increase-weighted-search-or-profile-nonlocal-hmask-language"
    )

    return {
        "phase": "6Z.6K.8AP.16DU.9IQ weighted denominator-cube bad-cover profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "identity_rank_count": len(window.identity_ranks),
        "nonidentity_rank_count": len(window.nonidentity),
        "good_direction_cases": len(window.covered),
        "bad_mask_cases": len(window.bad_masks),
        "max_support": max_support,
        "max_weight": max_weight,
        "total_candidate_cubes": total_candidates,
        "total_selected_cubes": total_selected,
        "largest_rank_cover": largest_rank_cover,
        "largest_selected_cube": largest_cube,
        "max_total_cubes_gate": max_total_cubes_gate,
        "max_rank_cubes_gate": max_rank_cubes_gate,
        "selected_support_histogram": dict(sorted(
            support_hist.items(),
            key=lambda item: (-item[1], item[0]),
        )),
        "decision": {
            "status": status,
            "next_step": next_step,
            "notes": [
                "this profile emits no Lean",
                "selected cubes contain no positive-survivor masks",
                "each selected cube has a small nonnegative integer denominator combination nonpositive on every member mask",
                "acceptance only authorizes a small Lean bound-smoke, not final production emission",
            ],
        },
        "rank_summaries": rank_rows,
    }


def markdown(data: dict[str, Any]) -> str:
    decision = data["decision"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9IQ Weighted Denominator-Cube Cover Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.  It profiles",
        "whether masks outside the DU9IQ positive survivor sets can be covered by",
        "Boolean subcubes killed by a small nonnegative integer combination of",
        "internal impact denominators.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Next step: `{decision['next_step']}`",
        f"- Rank window: `[{data['rank_start']}, {data['rank_end']})`",
        f"- Identity ranks: `{data['identity_rank_count']}`",
        f"- Nonidentity ranks skipped: `{data['nonidentity_rank_count']}`",
        f"- GoodDirection cases: `{data['good_direction_cases']}`",
        f"- Bad-mask cases: `{data['bad_mask_cases']}`",
        f"- Max support: `{data['max_support']}`",
        f"- Max weight: `{data['max_weight']}`",
        f"- Candidate weighted cubes: `{data['total_candidate_cubes']}`",
        f"- Selected greedy cubes: `{data['total_selected_cubes']}`",
        f"- Largest per-rank cover: `{data['largest_rank_cover']}`",
        f"- Largest selected cube: `{data['largest_selected_cube']}`",
        f"- Total-cube gate: `{data['max_total_cubes_gate']}`",
        f"- Per-rank gate: `{data['max_rank_cubes_gate']}`",
        "",
        "## Rank Summary",
        "",
        "| Rank | Good masks | Bad masks | Candidates | Selected | Largest selected |",
        "| ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in data["rank_summaries"]:
        lines.append(
            f"| {row['rank']} | {len(row['good_masks'])} | "
            f"{row['bad_mask_count']} | {row['candidate_cube_count']} | "
            f"{row['selected_cube_count']} | {row['largest_selected_cube']} |"
        )
    lines.extend([
        "",
        "## Selected Cubes",
        "",
        "| Rank | Pattern | Support | Weights | Masks | Max value |",
        "| ---: | --- | --- | --- | ---: | ---: |",
    ])
    for row in data["rank_summaries"]:
        for cube in row["selected"]:
            lines.append(
                f"| {row['rank']} | `{cube['pattern']}` | "
                f"`{','.join(str(i) for i in cube['support'])}` | "
                f"`{','.join(str(w) for w in cube['weights'])}` | "
                f"{cube['mask_count']} | `{cube['max_value']}` |"
            )
    lines.extend([
        "",
        "## Selected Support Histogram",
        "",
        "| Support:Weights | Count |",
        "| --- | ---: |",
    ])
    for key, count in data["selected_support_histogram"].items():
        lines.append(f"| `{key}` | {count} |")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=896)
    parser.add_argument("--limit", type=int, default=64)
    parser.add_argument("--max-support", type=int, default=2)
    parser.add_argument("--max-weight", type=int, default=8)
    parser.add_argument("--max-total-cubes-gate", type=int, default=96)
    parser.add_argument("--max-rank-cubes-gate", type=int, default=24)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    data = profile(
        rank_start=args.rank_start,
        limit=args.limit,
        max_support=args.max_support,
        max_weight=args.max_weight,
        max_total_cubes_gate=args.max_total_cubes_gate,
        max_rank_cubes_gate=args.max_rank_cubes_gate,
    )
    write_json(args.json, data)
    write_text(args.md, markdown(data))
    print(json.dumps(data["decision"], indent=2))
    print(f"total_selected_cubes={data['total_selected_cubes']}")
    print(f"largest_rank_cover={data['largest_rank_cover']}")


if __name__ == "__main__":
    main()
