#!/usr/bin/env python3
"""Profile coefficient-level certificates for weighted denominator cubes.

DU.9BH rejected proving

    weightedDirectWalshDotAtRank = generatedPoly.coeffEval

by unfolding the translation Walsh recurrence in Lean.  This profiler records
the smaller certificate surface that should replace that route:

* a compact quadratic Walsh coefficient record for each weighted witness;
* a positive integer scale clearing all rational denominators;
* exact integer coefficients after scaling;
* exact vertex/cube nonpositivity telemetry.

The output is design telemetry only.  Python computes and validates candidate
data, but Lean still needs a future checker/bridge theorem for the final proof.
"""

from __future__ import annotations

import argparse
import json
import math
import sys
from dataclasses import asdict, dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16du9bf_weighted_quadratic_vertex_smoke import (  # noqa: E402
    FIELD_OF_SUBSET,
    FIELD_ORDER,
    VAR_NAMES,
)
from profile_ap16bj_walsh_subcube_cover import label_masks  # noqa: E402
from profile_ap16du9be_weighted_walsh_poly import (  # noqa: E402
    DEFAULT_DU9BA,
    compute_rank_walsh_forms,
    eval_poly,
    fraction_to_text,
    weighted_coeffs,
    weighted_values,
)


DEFAULT_OUTPUT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9bi_weighted_coeff_certificate_profile.json"
)
DEFAULT_OUTPUT_MD = Path(
    "scripts/generated/phase6z6k8ap16du9bi_weighted_coeff_certificate_profile.md"
)


@dataclass(frozen=True)
class CubeCertificateProfile:
    index: int
    label: str
    free_bits: list[str]
    fixed_bits: dict[str, bool]
    mask_count: int
    support: list[int]
    weights: list[str]
    coeff_scale: int
    nonzero_coefficients: int
    max_abs_scaled_coeff: int
    scaled_coefficients: dict[str, int]
    weighted_values_validated_on_all_masks: bool
    cube_nonpositive: bool
    cube_max: str
    cube_max_masks: list[int]
    term_bound_nonpositive: bool
    suggested_nonpos_method: str
    estimated_lean_lines: int


def parse_fraction(value: object) -> Fraction:
    return Fraction(str(value))


def fixed_bits(label: str) -> dict[str, bool]:
    result: dict[str, bool] = {}
    for index, char in enumerate(label):
        if char == "0":
            result[VAR_NAMES[index]] = False
        elif char == "1":
            result[VAR_NAMES[index]] = True
    return result


def free_bits(label: str) -> list[str]:
    return [VAR_NAMES[index] for index, char in enumerate(label) if char == "*"]


def field_coefficients(coeffs: dict[tuple[int, ...], Fraction]) -> dict[str, Fraction]:
    fields = {field: Fraction(0) for field in FIELD_ORDER}
    for subset, coeff in coeffs.items():
        if coeff == 0:
            continue
        if len(subset) > 2:
            raise ValueError(f"expected quadratic coefficient, got {subset}")
        field = FIELD_OF_SUBSET[tuple(sorted(subset))]
        fields[field] += coeff
    return fields


def clear_denominators(fields: dict[str, Fraction]) -> tuple[int, dict[str, int]]:
    scale = 1
    for coeff in fields.values():
        scale = math.lcm(scale, coeff.denominator)
    scaled = {
        field: coeff.numerator * (scale // coeff.denominator)
        for field, coeff in fields.items()
    }
    return scale, scaled


def term_bound_nonpositive(label: str, coeffs: dict[tuple[int, ...], Fraction]) -> bool:
    def fixed_sign(bit_index: int) -> int | None:
        char = label[bit_index]
        if char == "0":
            return -1
        if char == "1":
            return 1
        return None

    total = Fraction(0)
    for subset, coeff in coeffs.items():
        if coeff == 0:
            continue
        product = 1
        has_free = False
        for bit_index in subset:
            sign = fixed_sign(bit_index)
            if sign is None:
                has_free = True
            else:
                product *= sign
        total += abs(coeff) if has_free else coeff * product
    return total <= 0


def estimate_lines(free_count: int, nonzero_coefficients: int,
                   method: str) -> int:
    base = 48
    coeff_lines = 22
    if method == "term_bound":
        return base + coeff_lines + 3 * nonzero_coefficients
    # Vertex proofs are compact Lean source, but each free bit adds one
    # `by_cases` line and each vertex is discharged by one `norm_num` branch.
    return base + coeff_lines + free_count + (2 ** free_count)


def profile(du9ba_path: Path) -> dict[str, Any]:
    du9ba = json.loads(du9ba_path.read_text(encoding="utf-8"))
    rank = int(du9ba["rank"])
    forms, forms_validated = compute_rank_walsh_forms(rank)
    if not forms_validated:
        raise RuntimeError("individual denominator Walsh validation failed")

    cubes: list[CubeCertificateProfile] = []
    for index, selected in enumerate(du9ba["witnessable_cube_cover"]["selected"]):
        witness = selected["sparse_witness"]
        support = [int(value) for value in witness["support"]]
        weights = [parse_fraction(value) for value in witness["weights"]]
        coeffs = weighted_coeffs(forms, support, weights)
        fields = field_coefficients(coeffs)
        scale, scaled = clear_denominators(fields)
        values = weighted_values(rank, support, weights)
        values_valid = all(eval_poly(coeffs, mask) == values[mask]
                           for mask in range(64))
        masks = [int(value) for value in selected.get(
            "masks", label_masks(selected["label"]))]
        cube_values = {mask: values[mask] for mask in masks}
        cube_max = max(cube_values.values())
        cube_max_masks = [
            mask for mask, value in cube_values.items() if value == cube_max
        ]
        term_ok = term_bound_nonpositive(str(selected["label"]), coeffs)
        method = "term_bound" if term_ok else "vertex_split"
        nonzero = sum(1 for value in scaled.values() if value != 0)
        cubes.append(CubeCertificateProfile(
            index=index,
            label=str(selected["label"]),
            free_bits=free_bits(str(selected["label"])),
            fixed_bits=fixed_bits(str(selected["label"])),
            mask_count=len(masks),
            support=support,
            weights=[fraction_to_text(weight) for weight in weights],
            coeff_scale=scale,
            nonzero_coefficients=nonzero,
            max_abs_scaled_coeff=max(abs(value) for value in scaled.values()),
            scaled_coefficients=scaled,
            weighted_values_validated_on_all_masks=values_valid,
            cube_nonpositive=cube_max <= 0,
            cube_max=fraction_to_text(cube_max),
            cube_max_masks=cube_max_masks,
            term_bound_nonpositive=term_ok,
            suggested_nonpos_method=method,
            estimated_lean_lines=estimate_lines(
                len(free_bits(str(selected["label"]))), nonzero, method),
        ))

    total_lines = sum(cube.estimated_lean_lines for cube in cubes)
    return {
        "phase": "Phase 6Z.6K.8AP.16DU.9BI",
        "rank": rank,
        "word": du9ba.get("word"),
        "source_du9ba": str(du9ba_path),
        "individual_denominator_forms_validated": forms_validated,
        "cube_count": len(cubes),
        "all_weighted_values_validated_on_all_masks": all(
            cube.weighted_values_validated_on_all_masks for cube in cubes),
        "all_cubes_nonpositive": all(cube.cube_nonpositive for cube in cubes),
        "term_bound_cube_count": sum(
            1 for cube in cubes if cube.suggested_nonpos_method == "term_bound"),
        "vertex_split_cube_count": sum(
            1 for cube in cubes if cube.suggested_nonpos_method == "vertex_split"),
        "max_coeff_scale": max(cube.coeff_scale for cube in cubes),
        "max_abs_scaled_coeff": max(cube.max_abs_scaled_coeff for cube in cubes),
        "total_nonzero_coefficients": sum(
            cube.nonzero_coefficients for cube in cubes),
        "estimated_lean_lines": total_lines,
        "cubes": [asdict(cube) for cube in cubes],
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9BI Weighted Coefficient Certificate Profile",
        "",
        "This is telemetry/design data only, not proof data.",
        "",
        f"- rank: `{data['rank']}`",
        f"- word: `{data['word']}`",
        f"- selected weighted cubes: `{data['cube_count']}`",
        f"- all weighted values validated on 64 masks: "
        f"`{data['all_weighted_values_validated_on_all_masks']}`",
        f"- all cubes nonpositive: `{data['all_cubes_nonpositive']}`",
        f"- term-bound cubes: `{data['term_bound_cube_count']}`",
        f"- vertex-split cubes: `{data['vertex_split_cube_count']}`",
        f"- max coefficient denominator scale: `{data['max_coeff_scale']}`",
        f"- max absolute scaled coefficient: `{data['max_abs_scaled_coeff']}`",
        f"- total nonzero scaled coefficients: `{data['total_nonzero_coefficients']}`",
        f"- estimated Lean lines for this rank-local certificate surface: "
        f"`{data['estimated_lean_lines']}`",
        "",
        "| # | cube | masks | support | weights | scale | nonzero | max | method | est. lines |",
        "| ---: | --- | ---: | --- | --- | ---: | ---: | ---: | --- | ---: |",
    ]
    for cube in data["cubes"]:
        lines.append(
            f"| {cube['index']} | `{cube['label']}` | {cube['mask_count']} | "
            f"`{', '.join(map(str, cube['support']))}` | "
            f"`{', '.join(cube['weights'])}` | {cube['coeff_scale']} | "
            f"{cube['nonzero_coefficients']} | `{cube['cube_max']}` | "
            f"`{cube['suggested_nonpos_method']}` | {cube['estimated_lean_lines']} |"
        )
    lines.extend([
        "",
        "Lean-facing implication:",
        "",
        "- A future checker should consume `coeff_scale` and the integer",
        "  `scaled_coefficients` record, prove it corresponds to the weighted",
        "  Walsh coefficient record, and separately prove cube nonpositivity by",
        "  either term bounds or vertex splitting.",
        "- Generated leaves should not unfold `translationVectorWalshOfChoice` or",
        "  `translationPrefixWalshVectorNat`; DU.9BH showed that recurrence replay",
        "  exceeds the current per-leaf memory target even on one cube.",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--du9ba", type=Path, default=DEFAULT_DU9BA)
    parser.add_argument("--out-json", type=Path, default=DEFAULT_OUTPUT_JSON)
    parser.add_argument("--out-md", type=Path, default=DEFAULT_OUTPUT_MD)
    args = parser.parse_args()

    data = profile(args.du9ba)
    args.out_json.parent.mkdir(parents=True, exist_ok=True)
    args.out_json.write_text(json.dumps(data, indent=2, sort_keys=True),
                             encoding="utf-8")
    write_markdown(data, args.out_md)
    print(json.dumps({
        "rank": data["rank"],
        "cube_count": data["cube_count"],
        "all_cubes_nonpositive": data["all_cubes_nonpositive"],
        "max_coeff_scale": data["max_coeff_scale"],
        "estimated_lean_lines": data["estimated_lean_lines"],
        "out_json": str(args.out_json),
        "out_md": str(args.out_md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
