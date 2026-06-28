#!/usr/bin/env python3
"""Exact denominator sign-linear form profiler for AP.16BI.

For a fixed identity-linear translation pair-word rank, each internal
denominator is affine-linear in the six translation sign bits.  This script
extracts those exact forms by Walsh interpolation over the 64 masks, validates
them against the exact denominator evaluator, and summarizes the AP16BF cube
bounds that a future pseudo-Boolean/Farkas certificate should use.

The output is profiling/design data only, not proof data.
"""

from __future__ import annotations

import argparse
import json
import sys
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
    "scripts/generated/phase6z6k8ap16bi_denominator_sign_forms.json"
)

VAR_NAMES = ["y", "z", "d111", "d11m", "d1m1", "dm11"]


@dataclass(frozen=True)
class SignLinearForm:
    const: str
    coeffs: list[str]
    nonzero_coeffs: list[str]


@dataclass(frozen=True)
class WalshSummary:
    impact: int
    nonzero_terms: int
    max_degree: int
    degree_histogram: dict[str, int]


@dataclass(frozen=True)
class CubeBound:
    index: int
    label: str
    mask_count: int
    fixed_bits: dict[str, int]
    best_single_impact: int | None
    best_single_max: str | None


def bit(mask: int, j: int) -> int:
    return 1 if ((mask >> j) & 1) else -1


def fraction_to_text(q: Fraction) -> str:
    if q.denominator == 1:
        return str(q.numerator)
    return f"{q.numerator}/{q.denominator}"


def eval_form(const: Fraction, coeffs: list[Fraction], mask: int) -> Fraction:
    return const + sum(coeffs[j] * bit(mask, j) for j in range(6))


def interpolate(values: list[Fraction]) -> tuple[Fraction, list[Fraction]]:
    const = sum(values, Fraction(0)) / 64
    coeffs = []
    for j in range(6):
        coeffs.append(sum(values[mask] * bit(mask, j)
                          for mask in range(64)) / 64)
    return const, coeffs


def subsets6() -> list[tuple[int, ...]]:
    subsets: list[tuple[int, ...]] = [()]
    for j in range(6):
        subsets.extend(tuple(list(s) + [j]) for s in list(subsets) if j not in s)
    return sorted(set(subsets), key=lambda s: (len(s), s))


def monomial(mask: int, subset: tuple[int, ...]) -> int:
    value = 1
    for j in subset:
        value *= bit(mask, j)
    return value


def walsh_coefficients(values: list[Fraction]) -> dict[tuple[int, ...], Fraction]:
    coeffs: dict[tuple[int, ...], Fraction] = {}
    for subset in subsets6():
        coeffs[subset] = (
            sum(values[mask] * monomial(mask, subset) for mask in range(64)) / 64
        )
    return coeffs


def eval_walsh(coeffs: dict[tuple[int, ...], Fraction], mask: int) -> Fraction:
    return sum(coeff * monomial(mask, subset)
               for subset, coeff in coeffs.items())


def cube_fixed_bits(label: str) -> dict[str, int]:
    fixed: dict[str, int] = {}
    for j, char in enumerate(label):
        if char == "0":
            fixed[VAR_NAMES[j]] = -1
        elif char == "1":
            fixed[VAR_NAMES[j]] = 1
    return fixed


def cube_max(form: tuple[Fraction, list[Fraction]], label: str) -> Fraction:
    const, coeffs = form
    total = const
    for j, char in enumerate(label):
        if char == "0":
            total -= coeffs[j]
        elif char == "1":
            total += coeffs[j]
        else:
            total += abs(coeffs[j])
    return total


def profile(profile_path: Path, rank: int, mask: int) -> dict[str, Any]:
    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = [int(mask_value) for mask_value in signature["good_masks"]]
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    # All masks at this rank have the same pair-word; reuse any classified case
    # for seq/b reconstruction per mask.
    denom_values: list[list[Fraction]] = [[Fraction(0) for _ in range(64)]
                                          for _ in range(13)]
    for mask_value in range(64):
        if mask_value in bad_masks:
            seq = bad_masks[mask_value].seq
            b = bad_masks[mask_value].b
        else:
            # Good masks are classified in the positive profile; reconstruct via
            # the exact helpers from the pair-word and mask.
            word = bad_masks[next(iter(bad_masks))].word
            b, seq = exact.translation_vector(word, mask_value)
        for impact in range(1, 14):
            denom_values[impact - 1][mask_value] = exact.impact_denom(
                seq, b, impact
            )
    forms_raw = [interpolate(values) for values in denom_values]
    walsh_raw = [walsh_coefficients(values) for values in denom_values]
    validation_failures = []
    for impact, (const, coeffs) in enumerate(forms_raw, start=1):
        for mask_value in range(64):
            if eval_form(const, coeffs, mask_value) != denom_values[impact - 1][mask_value]:
                validation_failures.append({
                    "impact": impact,
                    "mask": mask_value,
                    "expected": fraction_to_text(denom_values[impact - 1][mask_value]),
                    "actual": fraction_to_text(eval_form(const, coeffs, mask_value)),
                })
                break
    walsh_validation_failures = []
    for impact, coeffs in enumerate(walsh_raw, start=1):
        for mask_value in range(64):
            if eval_walsh(coeffs, mask_value) != denom_values[impact - 1][mask_value]:
                walsh_validation_failures.append({
                    "impact": impact,
                    "mask": mask_value,
                    "expected": fraction_to_text(denom_values[impact - 1][mask_value]),
                    "actual": fraction_to_text(eval_walsh(coeffs, mask_value)),
                })
                break
    walsh_summaries = []
    for impact, coeffs in enumerate(walsh_raw, start=1):
        hist: dict[str, int] = {}
        max_degree = 0
        nonzero_terms = 0
        for subset, coeff in coeffs.items():
            if coeff == 0:
                continue
            degree = len(subset)
            max_degree = max(max_degree, degree)
            nonzero_terms += 1
            hist[str(degree)] = hist.get(str(degree), 0) + 1
        walsh_summaries.append(WalshSummary(
            impact=impact,
            nonzero_terms=nonzero_terms,
            max_degree=max_degree,
            degree_histogram=hist,
        ))
    forms = []
    for const, coeffs in forms_raw:
        forms.append(SignLinearForm(
            const=fraction_to_text(const),
            coeffs=[fraction_to_text(c) for c in coeffs],
            nonzero_coeffs=[
                VAR_NAMES[j] for j, c in enumerate(coeffs) if c != 0
            ],
        ))
    good_bitset = bitset_for_masks(good_masks)
    cube_bounds = []
    for index, cube in enumerate(greedy_cover(good_bitset)):
        members_bits = cube[2] & ~good_bitset
        masks = [m for m in range(64) if members_bits & (1 << m)]
        best_impact: int | None = None
        best_max: Fraction | None = None
        for impact, form in enumerate(forms_raw, start=1):
            bound = cube_max(form, cube[4])
            if best_max is None or bound < best_max:
                best_impact = impact
                best_max = bound
        cube_bounds.append(CubeBound(
            index=index,
            label=str(cube[4]),
            mask_count=len(masks),
            fixed_bits=cube_fixed_bits(str(cube[4])),
            best_single_impact=best_impact,
            best_single_max=fraction_to_text(best_max) if best_max is not None else None,
        ))
    return {
        "phase": "Phase 6Z.6K.8AP.16BI",
        "rank": rank,
        "anchor_mask": mask,
        "good_masks": good_masks,
        "forms_validated": not validation_failures,
        "validation_failures": validation_failures[:10],
        "walsh_validated": not walsh_validation_failures,
        "walsh_validation_failures": walsh_validation_failures[:10],
        "walsh_summaries": [asdict(summary) for summary in walsh_summaries],
        "forms": [asdict(form) for form in forms],
        "cube_bounds": [asdict(bound) for bound in cube_bounds],
        "trusted_as_proof": False,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16BI Denominator Sign Forms",
        "",
        "This is profiling/design data only, not proof data.",
        "",
        f"- rank: `{data['rank']}`",
        f"- affine forms validated against all masks: `{data['forms_validated']}`",
        f"- full Walsh forms validated against all masks: `{data['walsh_validated']}`",
        "",
        "## Walsh Degree Summary",
        "",
        "| impact | nonzero terms | max degree | degree histogram |",
        "| ---: | ---: | ---: | --- |",
    ]
    for summary in data["walsh_summaries"]:
        hist = ", ".join(
            f"{degree}:{count}"
            for degree, count in sorted(summary["degree_histogram"].items())
        )
        lines.append(
            f"| {summary['impact']} | {summary['nonzero_terms']} | "
            f"{summary['max_degree']} | {hist} |"
        )
    lines.extend([
        "",
        "## Affine Projection",
        "",
        "The affine projection below is not a valid denominator representation when",
        "`forms_validated = False`; it is retained only to diagnose the failed",
        "affine assumption.",
        "",
        "| impact | const | nonzero variables |",
        "| ---: | ---: | --- |",
    ])
    for impact, form in enumerate(data["forms"], start=1):
        lines.append(
            f"| {impact} | `{form['const']}` | "
            f"{', '.join(form['nonzero_coeffs'])} |"
        )
    lines.extend([
        "",
        "## Cube Single-Form Bounds",
        "",
        "| cube | masks | fixed bits | best impact | best max |",
        "| ---: | ---: | --- | ---: | ---: |",
    ])
    for bound in data["cube_bounds"]:
        fixed = ", ".join(f"{k}={v}" for k, v in bound["fixed_bits"].items())
        lines.append(
            f"| {bound['label']} | {bound['mask_count']} | {fixed} | "
            f"{bound['best_single_impact']} | `{bound['best_single_max']}` |"
        )
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    data = profile(args.profile, args.rank, args.mask)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; forms_validated={data['forms_validated']}"
    )


if __name__ == "__main__":
    main()
