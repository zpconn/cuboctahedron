#!/usr/bin/env python3
"""Profile weighted denominator Walsh polynomials for DU.9BE.

DU.9BA found an exact witnessable-first cover for rank 6000745 using sparse
nonnegative combinations of internal impact denominators.  DU.9BD proved one
concrete mask directly in Lean, but that route unfolded too much recurrence.

This profiler stays outside Lean and computes the compact Walsh polynomial for
each selected weighted denominator witness.  It records:

* the weighted polynomial support/degree;
* exact subcube term upper bounds;
* the exact max on the cube;
* whether the term-bound proof would be sharp enough.

The output is telemetry/design data only.  It is not trusted proof evidence.
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
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    eval_walsh,
    fraction_to_text,
    walsh_coefficients,
)
from profile_ap16bj_walsh_subcube_cover import (  # noqa: E402
    label_masks,
)


DEFAULT_DU9BA = Path(
    "scripts/generated/phase6z6k8ap16du9ba_rank6000745_weighted_cube_profile_v2.json"
)
DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16du9be_weighted_walsh_poly_profile.json"
)


@dataclass(frozen=True)
class TermSummary:
    subset: list[str]
    coeff: str
    upper_bound_on_cube: str


@dataclass(frozen=True)
class WeightedCubeSummary:
    index: int
    label: str
    mask_count: int
    support: list[int]
    weights: list[str]
    nonzero_terms: int
    max_degree: int
    degree_histogram: dict[str, int]
    term_bound_sum: str
    actual_cube_max: str
    witness_profile_max: str
    term_bound_matches_actual_max: bool
    term_bound_nonpositive: bool
    polynomial_validated_on_all_masks: bool
    top_terms_by_abs_coeff: list[TermSummary]


def parse_fraction(text: str) -> Fraction:
    return Fraction(text)


def bit(mask: int, bit_index: int) -> int:
    return 1 if ((mask >> bit_index) & 1) else -1


def monomial(mask: int, subset: tuple[int, ...]) -> int:
    value = 1
    for bit_index in subset:
        value *= bit(mask, bit_index)
    return value


def eval_poly(coeffs: dict[tuple[int, ...], Fraction], mask: int) -> Fraction:
    return sum(coeff * monomial(mask, subset) for subset, coeff in coeffs.items())


def fixed_sign(label: str, bit_index: int) -> int | None:
    char = label[bit_index]
    if char == "0":
        return -1
    if char == "1":
        return 1
    return None


def term_upper_bound(label: str, subset: tuple[int, ...], coeff: Fraction) -> Fraction:
    product = 1
    has_free_bit = False
    for bit_index in subset:
        sign = fixed_sign(label, bit_index)
        if sign is None:
            has_free_bit = True
        else:
            product *= sign
    if has_free_bit:
        return abs(coeff)
    return coeff * product


def subset_names(subset: tuple[int, ...]) -> list[str]:
    return [VAR_NAMES[index] for index in subset]


def degree_histogram(coeffs: dict[tuple[int, ...], Fraction]) -> tuple[int, dict[str, int]]:
    max_degree = 0
    hist: dict[str, int] = {}
    for subset, coeff in coeffs.items():
        if coeff == 0:
            continue
        degree = len(subset)
        max_degree = max(max_degree, degree)
        key = str(degree)
        hist[key] = hist.get(key, 0) + 1
    return max_degree, hist


def weighted_coeffs(
    forms: list[dict[tuple[int, ...], Fraction]],
    support: list[int],
    weights: list[Fraction],
) -> dict[tuple[int, ...], Fraction]:
    result: dict[tuple[int, ...], Fraction] = {}
    for impact, weight in zip(support, weights, strict=True):
        for subset, coeff in forms[impact - 1].items():
            result[subset] = result.get(subset, Fraction(0)) + weight * coeff
    return result


def compute_rank_walsh_forms(rank: int) -> tuple[list[dict[tuple[int, ...], Fraction]], bool]:
    word = exact.pair_word_at_rank(rank)
    denom_values: list[list[Fraction]] = [
        [Fraction(0) for _ in range(64)] for _ in range(13)
    ]
    for mask in range(64):
        b, seq = exact.translation_vector(word, mask)
        for impact in range(1, 14):
            denom_values[impact - 1][mask] = exact.impact_denom(seq, b, impact)
    forms = [walsh_coefficients(values) for values in denom_values]
    valid = True
    for impact, coeffs in enumerate(forms, start=1):
        for mask in range(64):
            if eval_walsh(coeffs, mask) != denom_values[impact - 1][mask]:
                valid = False
                break
        if not valid:
            break
    return forms, valid


def weighted_values(
    rank: int,
    support: list[int],
    weights: list[Fraction],
) -> list[Fraction]:
    word = exact.pair_word_at_rank(rank)
    values: list[Fraction] = []
    for mask in range(64):
        b, seq = exact.translation_vector(word, mask)
        total = Fraction(0)
        for impact, weight in zip(support, weights, strict=True):
            total += weight * exact.impact_denom(seq, b, impact)
        values.append(total)
    return values


def top_terms(
    coeffs: dict[tuple[int, ...], Fraction],
    bounds: dict[tuple[int, ...], Fraction],
    limit: int,
) -> list[TermSummary]:
    nonzero = [(subset, coeff) for subset, coeff in coeffs.items() if coeff != 0]
    nonzero.sort(key=lambda item: (-abs(item[1]), len(item[0]), item[0]))
    result = []
    for subset, coeff in nonzero[:limit]:
        result.append(TermSummary(
            subset=subset_names(subset),
            coeff=fraction_to_text(coeff),
            upper_bound_on_cube=fraction_to_text(bounds[subset]),
        ))
    return result


def profile(du9ba_path: Path, rank_override: int | None) -> dict[str, Any]:
    du9ba = json.loads(du9ba_path.read_text(encoding="utf-8"))
    rank = int(du9ba["rank"] if rank_override is None else rank_override)
    if rank != int(du9ba["rank"]):
        raise ValueError(
            f"rank override {rank} does not match DU.9BA profile rank {du9ba['rank']}"
        )
    forms, forms_validated = compute_rank_walsh_forms(rank)
    if not forms_validated:
        raise RuntimeError("individual denominator Walsh validation failed")
    selected = du9ba["witnessable_cube_cover"]["selected"]
    summaries: list[WeightedCubeSummary] = []
    all_validated = True
    for index, cube in enumerate(selected):
        witness = cube["sparse_witness"]
        support = [int(value) for value in witness["support"]]
        weights = [parse_fraction(str(value)) for value in witness["weights"]]
        coeffs = weighted_coeffs(forms, support, weights)
        values = weighted_values(rank, support, weights)
        valid = all(eval_poly(coeffs, mask_value) == values[mask_value]
                    for mask_value in range(64))
        all_validated = all_validated and valid
        masks = [int(value) for value in cube.get("masks", label_masks(cube["label"]))]
        bounds = {
            subset: term_upper_bound(cube["label"], subset, coeff)
            for subset, coeff in coeffs.items()
            if coeff != 0
        }
        term_bound_sum = sum(bounds.values(), Fraction(0))
        actual_cube_max = max(values[mask_value] for mask_value in masks)
        max_degree, hist = degree_histogram(coeffs)
        summaries.append(WeightedCubeSummary(
            index=index,
            label=str(cube["label"]),
            mask_count=len(masks),
            support=support,
            weights=[fraction_to_text(weight) for weight in weights],
            nonzero_terms=sum(1 for coeff in coeffs.values() if coeff != 0),
            max_degree=max_degree,
            degree_histogram=hist,
            term_bound_sum=fraction_to_text(term_bound_sum),
            actual_cube_max=fraction_to_text(actual_cube_max),
            witness_profile_max=str(witness["max_value"]),
            term_bound_matches_actual_max=term_bound_sum == actual_cube_max,
            term_bound_nonpositive=term_bound_sum <= 0,
            polynomial_validated_on_all_masks=valid,
            top_terms_by_abs_coeff=top_terms(coeffs, bounds, 12),
        ))

    return {
        "phase": "Phase 6Z.6K.8AP.16DU.9BE",
        "rank": rank,
        "word": exact.pair_word_at_rank(rank),
        "source_du9ba": str(du9ba_path),
        "individual_denominator_forms_validated": forms_validated,
        "selected_cube_count": len(summaries),
        "all_polynomials_validated_on_all_masks": all_validated,
        "all_term_bounds_nonpositive": all(item.term_bound_nonpositive for item in summaries),
        "term_bound_exact_count": sum(1 for item in summaries if item.term_bound_matches_actual_max),
        "summaries": [asdict(item) for item in summaries],
        "trusted_as_proof": False,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9BE Weighted Walsh Polynomial Profile",
        "",
        "This is telemetry/design data only, not proof data.",
        "",
        f"- rank: `{data['rank']}`",
        f"- word: `{' '.join(data['word'])}`",
        f"- selected DU.9BA cubes: `{data['selected_cube_count']}`",
        f"- all polynomials validated on 64 masks: `{data['all_polynomials_validated_on_all_masks']}`",
        f"- all term-bound sums nonpositive: `{data['all_term_bounds_nonpositive']}`",
        f"- exact term-bound count: `{data['term_bound_exact_count']}`",
        "",
        "| # | cube | masks | support | weights | terms | degree | term bound | actual max | profile max | exact? |",
        "| ---: | --- | ---: | --- | --- | ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for item in data["summaries"]:
        support = ", ".join(str(value) for value in item["support"])
        weights = ", ".join(item["weights"])
        exact_marker = "yes" if item["term_bound_matches_actual_max"] else "no"
        lines.append(
            f"| {item['index']} | `{item['label']}` | {item['mask_count']} | "
            f"`{support}` | `{weights}` | {item['nonzero_terms']} | "
            f"{item['max_degree']} | `{item['term_bound_sum']}` | "
            f"`{item['actual_cube_max']}` | `{item['witness_profile_max']}` | "
            f"{exact_marker} |"
        )
    lines.extend([
        "",
        "Top terms by absolute coefficient:",
        "",
    ])
    for item in data["summaries"]:
        lines.extend([
            f"## Cube {item['index']}: `{item['label']}`",
            "",
            "| subset | coeff | cube upper bound |",
            "| --- | ---: | ---: |",
        ])
        for term in item["top_terms_by_abs_coeff"]:
            subset = "*1*" if not term["subset"] else " ".join(term["subset"])
            lines.append(
                f"| `{subset}` | `{term['coeff']}` | `{term['upper_bound_on_cube']}` |"
            )
        lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--du9ba", type=Path, default=DEFAULT_DU9BA)
    parser.add_argument("--rank", type=int, default=None)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    data = profile(args.du9ba, args.rank)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; cubes={data['selected_cube_count']} "
        f"all_nonpositive={data['all_term_bounds_nonpositive']}"
    )


if __name__ == "__main__":
    main()
