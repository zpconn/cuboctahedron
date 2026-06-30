#!/usr/bin/env python3
"""Profile compact ways to prove the rank-0 survivor-mask premise.

The current rank-0 survivor-only Lean smoke proves the descriptor/candidate
side from the premise

  GoodDirectionAtRank rank0 mask -> Rank0SurvivorMask mask.

This script profiles that missing premise using the same exact rational
geometry helpers as the certificate generator.  It is diagnostic only: it does
not produce trusted proof evidence and it does not emit Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any, Iterable

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9gc_rank0_survivor_premise.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
MASK_PAIR_BITS = list(exact.PAIR_IDS[1:])


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def rat_json(value: Fraction) -> str:
    return exact.rat_to_json(value)


def mask_bits(mask: int) -> str:
    return "".join("1" if (mask >> index) & 1 else "0" for index in range(6))


def pattern_masks(pattern: tuple[int | None, ...]) -> set[int]:
    masks: set[int] = set()
    for mask in range(64):
        if all(bit is None or ((mask >> index) & 1) == bit for index, bit in enumerate(pattern)):
            masks.add(mask)
    return masks


def pattern_text(pattern: tuple[int | None, ...]) -> str:
    return "".join("*" if bit is None else str(bit) for bit in pattern)


@dataclass(frozen=True)
class Cube:
    pattern: tuple[int | None, ...]
    masks: frozenset[int]

    @property
    def fixed_count(self) -> int:
        return sum(bit is not None for bit in self.pattern)

    @property
    def width(self) -> int:
        return len(self.masks)

    def to_json(self) -> dict[str, Any]:
        return {
            "pattern": pattern_text(self.pattern),
            "fixed_count": self.fixed_count,
            "width": self.width,
            "masks": sorted(self.masks),
        }


def all_subcubes_inside(target: set[int]) -> list[Cube]:
    cubes: list[Cube] = []
    for code in range(3**6):
        rest = code
        pattern: list[int | None] = []
        for _ in range(6):
            digit = rest % 3
            rest //= 3
            pattern.append(None if digit == 2 else digit)
        mask_set = pattern_masks(tuple(pattern))
        if mask_set and mask_set <= target:
            cubes.append(Cube(tuple(pattern), frozenset(mask_set)))
    cubes.sort(key=lambda cube: (-cube.width, cube.fixed_count, pattern_text(cube.pattern)))
    return cubes


def greedy_cube_cover(target: set[int]) -> list[Cube]:
    uncovered = set(target)
    cover: list[Cube] = []
    candidates = all_subcubes_inside(target)
    while uncovered:
        best = max(
            candidates,
            key=lambda cube: (
                len(cube.masks & uncovered),
                cube.width,
                -cube.fixed_count,
                pattern_text(cube.pattern),
            ),
        )
        hit = best.masks & uncovered
        if not hit:
            # Should be unreachable because singleton cubes are candidates.
            singleton = min(uncovered)
            pattern = tuple((singleton >> index) & 1 for index in range(6))
            best = Cube(pattern, frozenset({singleton}))
            hit = {singleton}
        cover.append(best)
        uncovered -= hit
    return cover


def collect_rank(rank: int) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        raise RuntimeError(f"rank {rank} is not identity-linear")

    good: list[dict[str, Any]] = []
    bad: list[dict[str, Any]] = []
    bad_by_impact: dict[int, set[int]] = defaultdict(set)
    bad_by_impact_denom: dict[tuple[int, str], set[int]] = defaultdict(set)

    for mask in range(64):
        b, seq = exact.translation_vector(word, mask)
        denominators = [exact.impact_denom(seq, b, impact) for impact in range(1, 14)]
        if all(denom > 0 for denom in denominators):
            good.append({
                "mask": mask,
                "bits": mask_bits(mask),
                "min_denom": rat_json(min(denominators)),
            })
            continue

        first_bad_impact = next(
            impact
            for impact, denom in enumerate(denominators, start=1)
            if denom <= 0
        )
        first_bad_denom = denominators[first_bad_impact - 1]
        nonpositive = [
            {"impact": impact, "denom": rat_json(denom)}
            for impact, denom in enumerate(denominators, start=1)
            if denom <= 0
        ]
        bad.append({
            "mask": mask,
            "bits": mask_bits(mask),
            "first_bad_impact": first_bad_impact,
            "first_bad_denom": rat_json(first_bad_denom),
            "nonpositive_count": len(nonpositive),
            "nonpositive": nonpositive,
        })
        bad_by_impact[first_bad_impact].add(mask)
        bad_by_impact_denom[(first_bad_impact, rat_json(first_bad_denom))].add(mask)

    impact_covers = {
        str(impact): [cube.to_json() for cube in greedy_cube_cover(masks)]
        for impact, masks in sorted(bad_by_impact.items())
    }
    impact_denom_covers = {
        f"{impact}:{denom}": [cube.to_json() for cube in greedy_cube_cover(masks)]
        for (impact, denom), masks in sorted(bad_by_impact_denom.items())
    }

    all_bad_masks = {item["mask"] for item in bad}
    all_bad_cover = greedy_cube_cover(all_bad_masks)
    first_bad_histogram = Counter(item["first_bad_impact"] for item in bad)
    nonpositive_histogram = Counter(item["nonpositive_count"] for item in bad)

    return {
        "rank": rank,
        "pair_word": word,
        "mask_pair_bits": MASK_PAIR_BITS,
        "good_count": len(good),
        "bad_count": len(bad),
        "good_masks": [item["mask"] for item in good],
        "bad_masks": [item["mask"] for item in bad],
        "good": good,
        "bad": bad,
        "first_bad_impact_histogram": {
            str(key): value for key, value in sorted(first_bad_histogram.items())
        },
        "nonpositive_denominator_count_histogram": {
            str(key): value for key, value in sorted(nonpositive_histogram.items())
        },
        "same_first_impact_cube_cover": impact_covers,
        "same_first_impact_denom_cube_cover": impact_denom_covers,
        "all_bad_cube_cover": [cube.to_json() for cube in all_bad_cover],
        "all_bad_cube_cover_count": len(all_bad_cover),
        "same_first_impact_cube_cover_count": sum(len(cubes) for cubes in impact_covers.values()),
        "same_first_impact_denom_cube_cover_count": sum(
            len(cubes) for cubes in impact_denom_covers.values()
        ),
    }


def cover_summary(cubes: Iterable[dict[str, Any]]) -> str:
    return ", ".join(f"`{cube['pattern']}`({cube['width']})" for cube in cubes)


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9GC Rank-0 Survivor Premise Profile",
        "",
        "This diagnostic profiles the missing premise for the rank-0",
        "survivor-only semantic smoke:",
        "",
        "```lean",
        "GoodDirectionAtRank (rank0) mask -> Rank0SurvivorMask mask",
        "```",
        "",
        "It uses exact Python rational arithmetic from the certificate generator.",
        "It is not trusted as proof and emits no Lean.",
        "",
        f"- Rank: `{payload['rank']}`",
        f"- Pair word: `{payload['pair_word']}`",
        f"- Mask bit order: `{payload['mask_pair_bits']}`",
        f"- GoodDirection survivor masks: `{payload['good_count']}`",
        f"- Bad-direction masks: `{payload['bad_count']}`",
        f"- Good masks: `{payload['good_masks']}`",
        f"- Bad masks: `{payload['bad_masks']}`",
        f"- All-bad greedy cube cover count: `{payload['all_bad_cube_cover_count']}`",
        f"- Same-first-impact cube cover count: `{payload['same_first_impact_cube_cover_count']}`",
        f"- Same-first-impact+denom cube cover count: `{payload['same_first_impact_denom_cube_cover_count']}`",
        "",
        "## First Bad Impact Histogram",
        "",
        "| Impact | Masks |",
        "| ---: | ---: |",
    ]
    for impact, count in payload["first_bad_impact_histogram"].items():
        lines.append(f"| {impact} | {count} |")
    lines.extend([
        "",
        "## Same-Impact Cube Covers",
        "",
        "Patterns use `*` for a free bit and the bit order shown above.",
        "",
        "| Impact | Cubes |",
        "| ---: | --- |",
    ])
    for impact, cubes in payload["same_first_impact_cube_cover"].items():
        lines.append(f"| {impact} | {cover_summary(cubes)} |")
    lines.extend([
        "",
        "## All-Bad Cube Cover",
        "",
        cover_summary(payload["all_bad_cube_cover"]),
        "",
        "## Bad Masks",
        "",
        "| Mask | Bits | First bad impact | First bad denominator | Nonpositive denominators |",
        "| ---: | --- | ---: | ---: | ---: |",
    ])
    for item in payload["bad"]:
        lines.append(
            f"| {item['mask']} | `{item['bits']}` | {item['first_bad_impact']} | "
            f"`{item['first_bad_denom']}` | {item['nonpositive_count']} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=0)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = collect_rank(args.rank)
    payload.update({
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9GC",
        "trusted_as_proof": False,
        "decision": {
            "status": "profiled-rank0-survivor-premise",
            "next_gate": (
                "Use the cube/impact structure to decide whether to emit a compact "
                "rank-0 GoodDirection-to-survivor theorem or switch to a stronger "
                "denominator-cube/Farkas premise."
            ),
        },
    })
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "rank": payload["rank"],
        "good_count": payload["good_count"],
        "bad_count": payload["bad_count"],
        "all_bad_cube_cover_count": payload["all_bad_cube_cover_count"],
        "same_first_impact_cube_cover_count": payload["same_first_impact_cube_cover_count"],
        "same_first_impact_denom_cube_cover_count": payload[
            "same_first_impact_denom_cube_cover_count"
        ],
    }, sort_keys=True))


if __name__ == "__main__":
    main()
