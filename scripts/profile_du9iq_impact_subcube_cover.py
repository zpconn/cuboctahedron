#!/usr/bin/env python3
"""Profile compressed impact-subcube covers for the DU9IQ hmask gap.

This diagnostic emits no Lean and is not trusted as proof.  It asks whether
the masks outside the positive-survivor set can be covered by a small number of
Boolean subcubes, each with one exact impact denominator nonpositive on every
mask in the subcube.

The intended Lean surface, if this profile is accepted, is `BadMaskCover` via
`ImpactSubcubeCover`.  This script deliberately avoids the older compact-Walsh
or trace-emitter paths.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

import generate_exact_certificates as exact
from generate_source_index_state_bounded_coverage import RankMask, collect_window
from generate_source_index_state_nonenum_smoke import write_json, write_text


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9iq_impact_subcube_cover_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass(frozen=True)
class Cube:
    pattern: tuple[int | None, ...]
    impact: int
    members: tuple[int, ...]
    max_denom: Fraction

    @property
    def fixed_count(self) -> int:
        return sum(bit is not None for bit in self.pattern)

    @property
    def label(self) -> str:
        return "".join("*" if bit is None else str(bit) for bit in self.pattern)


def frac_text(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def mask_matches(mask: int, pattern: tuple[int | None, ...]) -> bool:
    for bit_index, expected in enumerate(pattern):
        if expected is None:
            continue
        if ((mask >> bit_index) & 1) != expected:
            return False
    return True


def all_patterns() -> list[tuple[int | None, ...]]:
    patterns: list[tuple[int | None, ...]] = [()]
    for _ in range(6):
        patterns = [
            (*prefix, bit)
            for prefix in patterns
            for bit in (None, 0, 1)
        ]
    return patterns


def denom_table_for_rank(rank: int) -> dict[int, dict[int, Fraction]]:
    word = exact.pair_word_at_rank(rank)
    table: dict[int, dict[int, Fraction]] = {}
    for mask in range(64):
        b, seq = exact.translation_vector(list(word), mask)
        table[mask] = {
            impact: exact.impact_denom(seq, b, impact)
            for impact in range(1, 14)
        }
    return table


def candidate_cubes_for_rank(
    *,
    good_masks: set[int],
    bad_masks: set[int],
    denom_table: dict[int, dict[int, Fraction]],
) -> list[Cube]:
    candidates: list[Cube] = []
    for pattern in all_patterns():
        members = tuple(mask for mask in range(64) if mask_matches(mask, pattern))
        if not members:
            continue
        member_set = set(members)
        if member_set & good_masks:
            continue
        if not (member_set & bad_masks):
            continue
        # Keep only the bad members.  If the pattern also contains masks from
        # non-identity ranks it would be an error in this fixed-rank domain, but
        # the fixed rank always has exactly 64 masks.
        if not member_set <= bad_masks:
            continue
        for impact in range(1, 14):
            values = [denom_table[mask][impact] for mask in members]
            max_value = max(values)
            if max_value <= 0:
                candidates.append(Cube(
                    pattern=pattern,
                    impact=impact,
                    members=members,
                    max_denom=max_value,
                ))
    return candidates


def greedy_cover(bad_masks: set[int], candidates: list[Cube]) -> list[Cube]:
    uncovered = set(bad_masks)
    selected: list[Cube] = []
    while uncovered:
        usable = [
            cube for cube in candidates
            if set(cube.members) & uncovered
        ]
        if not usable:
            raise RuntimeError(f"no cube covers masks {sorted(uncovered)}")
        best = max(
            usable,
            key=lambda cube: (
                len(set(cube.members) & uncovered),
                len(cube.members),
                -cube.fixed_count,
                -cube.impact,
                cube.label,
            ),
        )
        selected.append(best)
        uncovered.difference_update(best.members)
    return selected


def cube_json(cube: Cube) -> dict[str, Any]:
    return {
        "pattern": cube.label,
        "fixed_count": cube.fixed_count,
        "impact": cube.impact,
        "mask_count": len(cube.members),
        "masks": list(cube.members),
        "max_denom": frac_text(cube.max_denom),
    }


def profile(
    *,
    rank_start: int,
    limit: int,
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

    for rank in sorted(window.identity_ranks):
        good_masks = good_by_rank.get(rank, set())
        bad_masks = bad_by_rank.get(rank, set())
        denom_table = denom_table_for_rank(rank)
        candidates = candidate_cubes_for_rank(
            good_masks=good_masks,
            bad_masks=bad_masks,
            denom_table=denom_table,
        )
        selected = greedy_cover(bad_masks, candidates)
        total_candidates += len(candidates)
        total_selected += len(selected)
        largest_rank_cover = max(largest_rank_cover, len(selected))
        if selected:
            largest_cube = max(largest_cube, max(len(cube.members) for cube in selected))
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
        "accepted-impact-subcube-profile"
        if accepted
        else "reject-impact-subcube-profile"
    )
    next_step = (
        "implement-lean-impact-subcube-bound-smoke"
        if accepted
        else "profile-weighted-denominator-cube-cover"
    )

    return {
        "phase": "6Z.6K.8AP.16DU.9IQ impact-subcube bad-cover profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "identity_rank_count": len(window.identity_ranks),
        "nonidentity_rank_count": len(window.nonidentity),
        "good_direction_cases": len(window.covered),
        "bad_mask_cases": len(window.bad_masks),
        "total_candidate_cubes": total_candidates,
        "total_selected_cubes": total_selected,
        "largest_rank_cover": largest_rank_cover,
        "largest_selected_cube": largest_cube,
        "max_total_cubes_gate": max_total_cubes_gate,
        "max_rank_cubes_gate": max_rank_cubes_gate,
        "decision": {
            "status": status,
            "next_step": next_step,
            "notes": [
                "this profile emits no Lean",
                "selected subcubes contain no positive-survivor masks",
                "each selected subcube has one impact denominator nonpositive on every member mask",
                "acceptance only authorizes a small Lean bound-smoke, not final production emission",
            ],
        },
        "rank_summaries": rank_rows,
    }


def markdown(data: dict[str, Any]) -> str:
    decision = data["decision"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9IQ Impact-Subcube Cover Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.  It profiles",
        "whether the masks outside the DU9IQ positive survivor sets can be covered",
        "by Boolean subcubes, each killed by one exact nonpositive impact",
        "denominator.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Next step: `{decision['next_step']}`",
        f"- Rank window: `[{data['rank_start']}, {data['rank_end']})`",
        f"- Identity ranks: `{data['identity_rank_count']}`",
        f"- Nonidentity ranks skipped: `{data['nonidentity_rank_count']}`",
        f"- GoodDirection cases: `{data['good_direction_cases']}`",
        f"- Bad-mask cases: `{data['bad_mask_cases']}`",
        f"- Candidate subcubes: `{data['total_candidate_cubes']}`",
        f"- Selected greedy subcubes: `{data['total_selected_cubes']}`",
        f"- Largest per-rank cover: `{data['largest_rank_cover']}`",
        f"- Largest selected subcube: `{data['largest_selected_cube']}`",
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
        "| Rank | Pattern | Impact | Masks | Max denominator |",
        "| ---: | --- | ---: | ---: | ---: |",
    ])
    for row in data["rank_summaries"]:
        for cube in row["selected"]:
            lines.append(
                f"| {row['rank']} | `{cube['pattern']}` | {cube['impact']} | "
                f"{cube['mask_count']} | `{cube['max_denom']}` |"
            )
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
    parser.add_argument("--max-total-cubes-gate", type=int, default=96)
    parser.add_argument("--max-rank-cubes-gate", type=int, default=24)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    data = profile(
        rank_start=args.rank_start,
        limit=args.limit,
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
