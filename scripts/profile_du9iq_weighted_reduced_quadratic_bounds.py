#!/usr/bin/env python3
"""Profile reduced Walsh-quadratic bounds for the DU9IQ weighted hmask cover.

This diagnostic consumes the accepted DU9IQ weighted denominator-cube cover and
computes, for each selected cube, the exact weighted Walsh polynomial.  It then
substitutes the cube's fixed bits, collects cancellations, and bounds the
remaining free-bit polynomial by

    constant + sum(abs(nonconstant coefficients)).

The output is telemetry only.  Lean must still check any emitted certificate.
"""

from __future__ import annotations

import argparse
import json
import sys
import time
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import write_json, write_text  # noqa: E402
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    eval_walsh,
    fraction_to_text,
)
from profile_ap16du9be_weighted_walsh_poly import (  # noqa: E402
    compute_rank_walsh_forms,
    weighted_coeffs,
    weighted_values,
)


DEFAULT_INPUT = Path(
    "scripts/generated/"
    "phase6z6k8ap16du9iq_weighted_denominator_cube_cover_exact_profile.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/"
    "phase6z6k8ap16du9iq_weighted_reduced_quadratic_bounds_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass(frozen=True)
class ReducedCubeSummary:
    rank: int
    pattern: str
    support: list[int]
    weights: list[str]
    fixed_count: int
    mask_count: int
    original_nonzero_terms: int
    reduced_nonzero_terms: int
    reduced_max_degree: int
    reduced_bound: str
    actual_cube_max: str
    reduced_bound_nonpositive: bool
    reduced_bound_matches_actual_max: bool
    split_leaf_count: int
    split_depth: int
    split_certificate_found: bool


def parse_fraction(value: object) -> Fraction:
    return Fraction(str(value))


def fixed_sign(pattern: str, bit_index: int) -> int | None:
    char = pattern[bit_index]
    if char == "0":
        return -1
    if char == "1":
        return 1
    return None


def mask_matches(mask: int, pattern: str) -> bool:
    for bit_index, char in enumerate(pattern):
        if char == "*":
            continue
        if ((mask >> bit_index) & 1) != int(char):
            return False
    return True


def reduce_coeffs(
    coeffs: dict[tuple[int, ...], Fraction],
    pattern: str,
) -> dict[tuple[int, ...], Fraction]:
    reduced: dict[tuple[int, ...], Fraction] = {}
    for subset, coeff in coeffs.items():
        if coeff == 0:
            continue
        scale = 1
        free_bits: list[int] = []
        for bit_index in subset:
            sign = fixed_sign(pattern, bit_index)
            if sign is None:
                free_bits.append(bit_index)
            else:
                scale *= sign
        key = tuple(free_bits)
        reduced[key] = reduced.get(key, Fraction(0)) + coeff * scale
    return {key: value for key, value in reduced.items() if value != 0}


def reduced_bound(reduced: dict[tuple[int, ...], Fraction]) -> Fraction:
    total = reduced.get((), Fraction(0))
    for subset, coeff in reduced.items():
        if subset:
            total += abs(coeff)
    return total


def eval_reduced(reduced: dict[tuple[int, ...], Fraction], mask: int) -> Fraction:
    return eval_walsh(reduced, mask)


def set_pattern_bit(pattern: str, bit_index: int, value: int) -> str:
    return pattern[:bit_index] + str(value) + pattern[bit_index + 1:]


def split_certificate(
    coeffs: dict[tuple[int, ...], Fraction],
    pattern: str,
    *,
    max_depth: int,
) -> dict[str, Any] | None:
    reduced = reduce_coeffs(coeffs, pattern)
    bound = reduced_bound(reduced)
    if bound <= 0:
        return {
            "kind": "leaf",
            "pattern": pattern,
            "bound": fraction_to_text(bound),
            "leaf_count": 1,
            "depth": 0,
        }
    if max_depth <= 0:
        return None

    best: dict[str, Any] | None = None
    for bit_index, char in enumerate(pattern):
        if char != "*":
            continue
        low = split_certificate(
            coeffs, set_pattern_bit(pattern, bit_index, 0),
            max_depth=max_depth - 1,
        )
        high = split_certificate(
            coeffs, set_pattern_bit(pattern, bit_index, 1),
            max_depth=max_depth - 1,
        )
        if low is None or high is None:
            continue
        candidate = {
            "kind": "split",
            "bit": VAR_NAMES[bit_index],
            "bit_index": bit_index,
            "low": low,
            "high": high,
            "leaf_count": int(low["leaf_count"]) + int(high["leaf_count"]),
            "depth": 1 + max(int(low["depth"]), int(high["depth"])),
        }
        if best is None or (
            int(candidate["leaf_count"]), int(candidate["depth"]), bit_index
        ) < (
            int(best["leaf_count"]), int(best["depth"]), int(best["bit_index"])
        ):
            best = candidate
    return best


def profile(input_path: Path) -> dict[str, Any]:
    started = time.perf_counter()
    data = json.loads(input_path.read_text(encoding="utf-8"))
    rank_summaries = data["rank_summaries"]
    forms_by_rank: dict[int, list[dict[tuple[int, ...], Fraction]]] = {}
    summaries: list[ReducedCubeSummary] = []
    invalid_reductions: list[dict[str, Any]] = []

    for rank_summary in rank_summaries:
        rank = int(rank_summary["rank"])
        forms, valid = compute_rank_walsh_forms(rank)
        if not valid:
            raise RuntimeError(f"Walsh forms failed validation for rank {rank}")
        forms_by_rank[rank] = forms
        for cube in rank_summary["selected"]:
            pattern = str(cube["pattern"])
            support = [int(value) for value in cube["support"]]
            weights = [parse_fraction(value) for value in cube["weights"]]
            coeffs = weighted_coeffs(forms, support, weights)
            reduced = reduce_coeffs(coeffs, pattern)
            bound = reduced_bound(reduced)
            masks = [mask for mask in range(64) if mask_matches(mask, pattern)]
            values = weighted_values(rank, support, weights)
            actual_max = max(values[mask] for mask in masks)
            reduction_ok = all(
                eval_reduced(reduced, mask) == values[mask]
                for mask in masks
            )
            if not reduction_ok:
                invalid_reductions.append({
                    "rank": rank,
                    "pattern": pattern,
                    "support": support,
                })
            split = split_certificate(coeffs, pattern, max_depth=2)
            summaries.append(ReducedCubeSummary(
                rank=rank,
                pattern=pattern,
                support=support,
                weights=[fraction_to_text(weight) for weight in weights],
                fixed_count=sum(1 for char in pattern if char != "*"),
                mask_count=len(masks),
                original_nonzero_terms=sum(1 for value in coeffs.values() if value != 0),
                reduced_nonzero_terms=len(reduced),
                reduced_max_degree=max((len(key) for key in reduced), default=0),
                reduced_bound=fraction_to_text(bound),
                actual_cube_max=fraction_to_text(actual_max),
                reduced_bound_nonpositive=bound <= 0,
                reduced_bound_matches_actual_max=bound == actual_max,
                split_leaf_count=int(split["leaf_count"]) if split is not None else 0,
                split_depth=int(split["depth"]) if split is not None else 0,
                split_certificate_found=split is not None,
            ))

    accepted = (
        not invalid_reductions
        and all(row.split_certificate_found for row in summaries)
    )
    elapsed = time.perf_counter() - started
    failing = [row for row in summaries if not row.reduced_bound_nonpositive]
    return {
        "phase": "6Z.6K.8AP.16DU.9IQ reduced weighted Walsh bound profile",
        "trusted_as_proof": False,
        "input": str(input_path),
        "rank_count": len(rank_summaries),
        "cube_count": len(summaries),
        "invalid_reductions": invalid_reductions,
        "failing_reduced_bounds": [row.__dict__ for row in failing[:20]],
        "accepted": accepted,
        "max_reduced_terms": max((row.reduced_nonzero_terms for row in summaries), default=0),
        "max_reduced_degree": max((row.reduced_max_degree for row in summaries), default=0),
        "max_split_leaves": max((row.split_leaf_count for row in summaries), default=0),
        "max_split_depth": max((row.split_depth for row in summaries), default=0),
        "max_original_terms": max((row.original_nonzero_terms for row in summaries), default=0),
        "exact_bound_matches": sum(1 for row in summaries if row.reduced_bound_matches_actual_max),
        "direct_reduced_bound_count": sum(1 for row in summaries if row.reduced_bound_nonpositive),
        "split_needed_count": sum(1 for row in summaries if not row.reduced_bound_nonpositive),
        "summaries": [row.__dict__ for row in summaries],
        "elapsed_seconds": elapsed,
        "decision": {
            "status": "accepted-reduced-weighted-quadratic-profile" if accepted
                else "reject-reduced-weighted-quadratic-profile",
            "next_step": "emit-lean-reduced-weighted-quadratic-smoke" if accepted
                else "profile-stronger-reduced-bound-certificate",
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# DU9IQ Reduced Weighted Walsh Bound Profile",
        "",
        f"- status: `{payload['decision']['status']}`",
        f"- next step: `{payload['decision']['next_step']}`",
        f"- trusted as proof: `{payload['trusted_as_proof']}`",
        f"- ranks: `{payload['rank_count']}`",
        f"- cubes: `{payload['cube_count']}`",
        f"- invalid reductions: `{len(payload['invalid_reductions'])}`",
        f"- direct reduced-bound failures: `{len(payload['failing_reduced_bounds'])}` shown / "
        f"`{sum(1 for row in payload['summaries'] if not row['reduced_bound_nonpositive'])}` total",
        f"- max original nonzero terms: `{payload['max_original_terms']}`",
        f"- max reduced nonzero terms: `{payload['max_reduced_terms']}`",
        f"- max reduced degree: `{payload['max_reduced_degree']}`",
        f"- direct reduced-bound cubes: `{payload['direct_reduced_bound_count']}`",
        f"- split-needed cubes: `{payload['split_needed_count']}`",
        f"- max split leaves: `{payload['max_split_leaves']}`",
        f"- max split depth: `{payload['max_split_depth']}`",
        f"- exact bound matches actual max: `{payload['exact_bound_matches']}`",
        f"- elapsed seconds: `{payload['elapsed_seconds']:.2f}`",
        "",
        "## First Cubes",
        "",
        "| rank | pattern | support | weights | terms | reduced terms | bound | split leaves | actual max |",
        "| ---: | --- | --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["summaries"][:20]:
        lines.append(
            f"| {row['rank']} | `{row['pattern']}` | `{row['support']}` | "
            f"`{row['weights']}` | {row['original_nonzero_terms']} | "
            f"{row['reduced_nonzero_terms']} | `{row['reduced_bound']}` | "
            f"{row['split_leaf_count']} | `{row['actual_cube_max']}` |"
        )
    lines.append("")
    if payload["failing_reduced_bounds"]:
        lines.extend(["## Direct Reduced-Bound Failure Examples", ""])
        for row in payload["failing_reduced_bounds"]:
            lines.append(
                f"- rank `{row['rank']}`, pattern `{row['pattern']}`, "
                f"bound `{row['reduced_bound']}`, actual max `{row['actual_cube_max']}`"
            )
    return "\n".join(lines) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = profile(args.input)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "next_step": payload["decision"]["next_step"],
        "cube_count": payload["cube_count"],
        "max_reduced_terms": payload["max_reduced_terms"],
        "max_reduced_degree": payload["max_reduced_degree"],
        "accepted": payload["accepted"],
    }, indent=2))


if __name__ == "__main__":
    main()
