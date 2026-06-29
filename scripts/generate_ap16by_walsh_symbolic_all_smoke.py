#!/usr/bin/env python3
"""Generate the AP.16BY all-selected-impact symbolic Walsh smoke.

The generated Lean module checks the AP16BS selected impacts for rank 100805 at
the coefficient level.  It does not emit or check `impactDenomAtRank` facts.
Instead, the script computes affine Walsh forms for the pre-impact normal and
translation vector, checks externally that their dot-product coefficients match
the AP16BS Walsh denominator coefficients, and emits Lean facts that re-check
the small symbolic-dot algebra.
"""

from __future__ import annotations

import argparse
import json
import sys
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
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    fraction_to_text,
    walsh_coefficients,
)
from profile_ap16bj_walsh_subcube_cover import compute_walsh_forms  # noqa: E402


DEFAULT_AP16BS = Path(
    "scripts/generated/phase6z6k8ap16bs_walsh_symbolic_equality_profile.json"
)
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicAllSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16by_walsh_symbolic_all_smoke.json"
)

AFFINE_FIELDS = [
    ("c", ()),
    ("y", (0,)),
    ("z", (1,)),
    ("d111", (2,)),
    ("d11m", (3,)),
    ("d1m1", (4,)),
    ("dm11", (5,)),
]

QUADRATIC_FIELDS = [
    ("c", ()),
    ("y", (0,)),
    ("z", (1,)),
    ("d111", (2,)),
    ("d11m", (3,)),
    ("d1m1", (4,)),
    ("dm11", (5,)),
    ("yz", (0, 1)),
    ("y_d111", (0, 2)),
    ("y_d11m", (0, 3)),
    ("y_d1m1", (0, 4)),
    ("y_dm11", (0, 5)),
    ("z_d111", (1, 2)),
    ("z_d11m", (1, 3)),
    ("z_d1m1", (1, 4)),
    ("z_dm11", (1, 5)),
    ("d111_d11m", (2, 3)),
    ("d111_d1m1", (2, 4)),
    ("d111_dm11", (2, 5)),
    ("d11m_d1m1", (3, 4)),
    ("d11m_dm11", (3, 5)),
    ("d1m1_dm11", (4, 5)),
]


def lean_rat(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    if value.numerator < 0:
        return f"-{abs(value.numerator)}/{value.denominator}"
    return f"{value.numerator}/{value.denominator}"


def lean_name(prefix: str, impact: int, suffix: str) -> str:
    return f"{prefix}Impact{impact}_{suffix}"


def subset_xor(left: tuple[int, ...], right: tuple[int, ...]) -> tuple[int, ...]:
    result = set(left)
    for bit in right:
        if bit in result:
            result.remove(bit)
        else:
            result.add(bit)
    return tuple(sorted(result))


def multiply_affine(
    left: dict[tuple[int, ...], Fraction],
    right: dict[tuple[int, ...], Fraction],
) -> dict[tuple[int, ...], Fraction]:
    result: dict[tuple[int, ...], Fraction] = {}
    for l_subset, l_coeff in left.items():
        if not l_coeff:
            continue
        for r_subset, r_coeff in right.items():
            if not r_coeff:
                continue
            subset = subset_xor(l_subset, r_subset)
            result[subset] = result.get(subset, Fraction(0)) + l_coeff * r_coeff
    return result


def add_poly(
    left: dict[tuple[int, ...], Fraction],
    right: dict[tuple[int, ...], Fraction],
) -> dict[tuple[int, ...], Fraction]:
    result = dict(left)
    for subset, coeff in right.items():
        result[subset] = result.get(subset, Fraction(0)) + coeff
    return result


def coeffs_to_affine(coeffs: dict[tuple[int, ...], Fraction]) -> dict[tuple[int, ...], Fraction]:
    unsupported = [
        (subset, coeff) for subset, coeff in coeffs.items()
        if coeff and len(subset) > 1
    ]
    if unsupported:
        raise ValueError(f"expected affine coefficients, found {unsupported}")
    return {subset: coeff for subset, coeff in coeffs.items() if coeff}


def emit_walsh_affine(
    name: str,
    coeffs: dict[tuple[int, ...], Fraction],
    *,
    visibility: str = "private ",
) -> list[str]:
    coeffs = coeffs_to_affine(coeffs)
    lines = [f"{visibility}def {name} : WalshAffine where"]
    for field, subset in AFFINE_FIELDS:
        lines.append(f"  {field} := {lean_rat(coeffs.get(subset, Fraction(0)))}")
    return lines


def emit_walsh_vec(
    name: str,
    components: list[dict[tuple[int, ...], Fraction]],
    *,
    visibility: str = "private ",
) -> list[str]:
    lines: list[str] = []
    for axis, coeffs in zip(["x", "y", "z"], components, strict=True):
        lines.extend(emit_walsh_affine(f"{name}_{axis}", coeffs, visibility=visibility))
        lines.append("")
    lines.extend([
        f"{visibility}def {name} : WalshAffineVec3 where",
        f"  x := {name}_x",
        f"  y := {name}_y",
        f"  z := {name}_z",
    ])
    return lines


def emit_quadratic(name: str, coeffs: dict[tuple[int, ...], Fraction]) -> list[str]:
    unsupported = [
        (subset, coeff) for subset, coeff in coeffs.items()
        if coeff and (len(subset) > 2 or tuple(sorted(subset)) != tuple(subset))
    ]
    if unsupported:
        raise ValueError(f"expected degree-at-most-two Walsh coefficients, found {unsupported}")
    lines = [f"private def {name} : WalshQuadratic where"]
    for field, subset in QUADRATIC_FIELDS:
        lines.append(f"  {field} := {lean_rat(coeffs.get(subset, Fraction(0)))}")
    return lines


def collect_component_coefficients(
    *,
    rank: int,
    good_masks: list[int],
    bad_masks: dict[int, Any],
    impact: int,
) -> tuple[list[dict[tuple[int, ...], Fraction]], list[dict[tuple[int, ...], Fraction]]]:
    word = bad_masks[next(iter(bad_masks))].word
    normal_values = [[Fraction(0) for _ in range(64)] for _ in range(3)]
    b_values = [[Fraction(0) for _ in range(64)] for _ in range(3)]
    for mask_value in range(64):
        if mask_value in bad_masks:
            seq = bad_masks[mask_value].seq
            b = bad_masks[mask_value].b
        else:
            b, seq = exact.translation_vector(word, mask_value)
        prefixes = exact.path_prefix_affs(seq)
        normal, _offset = exact.impact_plane_normal_offset(seq, prefixes, impact)
        for axis in range(3):
            normal_values[axis][mask_value] = normal[axis]
            b_values[axis][mask_value] = b[axis]
    return (
        [walsh_coefficients(values) for values in normal_values],
        [walsh_coefficients(values) for values in b_values],
    )


def dot_coefficients(
    normal: list[dict[tuple[int, ...], Fraction]],
    vector: list[dict[tuple[int, ...], Fraction]],
) -> dict[tuple[int, ...], Fraction]:
    total: dict[tuple[int, ...], Fraction] = {}
    for n_coeffs, b_coeffs in zip(normal, vector, strict=True):
        total = add_poly(total, multiply_affine(n_coeffs, b_coeffs))
    return {subset: coeff for subset, coeff in total.items() if coeff}


def build_payload(profile_path: Path, ap16bs_path: Path, rank: int, mask: int) -> dict[str, Any]:
    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = sorted(int(mask_value) for mask_value in signature["good_masks"])
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)
    if failures:
        raise RuntimeError(f"Walsh form validation failed: {failures[:3]}")
    ap16bs = json.loads(ap16bs_path.read_text(encoding="utf-8"))
    selected_impacts = [int(value) for value in ap16bs["selected_impacts"]]
    impacts = []
    for impact in selected_impacts:
        normal, vector = collect_component_coefficients(
            rank=rank,
            good_masks=good_masks,
            bad_masks=bad_masks,
            impact=impact,
        )
        expected = {subset: coeff for subset, coeff in forms[impact - 1].items() if coeff}
        computed = dot_coefficients(normal, vector)
        if computed != expected:
            raise RuntimeError(
                f"impact {impact} dot coefficients differ: "
                f"computed={computed}, expected={expected}"
            )
        impacts.append({
            "impact": impact,
            "normal": normal,
            "vector": vector,
            "expected": expected,
            "normal_max_degree": max(
                (len(subset) for coeffs in normal for subset, coeff in coeffs.items() if coeff),
                default=0,
            ),
            "vector_max_degree": max(
                (len(subset) for coeffs in vector for subset, coeff in coeffs.items() if coeff),
                default=0,
            ),
            "expected_terms": sum(1 for coeff in expected.values() if coeff),
        })
    return {
        "rank": rank,
        "anchor_mask": mask,
        "good_masks": good_masks,
        "selected_impacts": selected_impacts,
        "impacts": impacts,
    }


def write_lean(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic",
        "",
        "/-!",
        "AP.16BY generated all-selected-impact symbolic Walsh coefficient smoke.",
        "",
        "This generated smoke checks all AP16BS selected impacts for rank `100805`",
        "at the coefficient level.  It intentionally does not unfold",
        "`impactDenomAtRank`, `totalAff`, or `translationChoiceSeq`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies",
        "namespace PositiveSurvivorClassifier",
        "namespace ImpactSubcube",
        "",
    ]
    theorem_names = []
    for item in payload["impacts"]:
        impact = int(item["impact"])
        normal_name = lean_name("ap16by", impact, "Normal")
        vector_name = lean_name("ap16by", impact, "Vector")
        expected_name = lean_name("ap16by", impact, "Expected")
        theorem_name = lean_name("ap16by", impact, "dot_coefficients")
        eval_name = lean_name("ap16by", impact, "coeffEval_matches_symbolic_dot")
        theorem_names.append(eval_name)
        lines.extend([f"/-- AP16BS rank 100805, impact {impact}. -/"])
        lines.extend(emit_walsh_vec(normal_name, item["normal"]))
        lines.append("")
        lines.extend(emit_walsh_vec(vector_name, item["vector"]))
        lines.append("")
        lines.extend(emit_quadratic(expected_name, item["expected"]))
        lines.extend([
            "",
            f"private theorem {theorem_name} :",
            f"    WalshAffineVec3.dot {normal_name} {vector_name} =",
            f"      {expected_name} := by",
            "  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,",
            f"    WalshAffine.mul, {normal_name}, {vector_name},",
            f"    {expected_name},",
            f"    {normal_name}_x, {normal_name}_y, {normal_name}_z,",
            f"    {vector_name}_x, {vector_name}_y, {vector_name}_z]",
            "",
            f"theorem {eval_name} (mask : SignMask) :",
            f"    {expected_name}.coeffEval mask =",
            "      Cuboctahedron.dot",
            f"        ({normal_name}.eval mask)",
            f"        ({vector_name}.eval mask) := by",
            f"  rw [← {theorem_name}]",
            "  exact WalshAffineVec3.dot_coeffEval",
            f"    {normal_name} {vector_name} mask",
            "",
        ])
    lines.extend([
        "theorem impactSubcubeWalshSymbolicAllSmoke_builds : True := by",
        "  trivial",
        "",
        "end ImpactSubcube",
        "end PositiveSurvivorClassifier",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies",
    ])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def report_payload(payload: dict[str, Any], lean_path: Path) -> dict[str, Any]:
    return {
        "phase": "Phase 6Z.6K.8AP.16BY",
        "status": "generated",
        "rank": payload["rank"],
        "anchor_mask": payload["anchor_mask"],
        "positive_masks": payload["good_masks"],
        "selected_impacts": payload["selected_impacts"],
        "impact_count": len(payload["selected_impacts"]),
        "lean_file": str(lean_path),
        "impact_summaries": [
            {
                "impact": item["impact"],
                "normal_max_degree": item["normal_max_degree"],
                "vector_max_degree": item["vector_max_degree"],
                "expected_terms": item["expected_terms"],
            }
            for item in payload["impacts"]
        ],
        "trusted_as_proof": False,
    }


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16BY Walsh Symbolic All-Selected Smoke",
        "",
        "This report describes generated Lean smoke data; it is not final proof evidence.",
        "",
        f"- rank: `{report['rank']}`",
        f"- selected impacts: `{report['selected_impacts']}`",
        f"- generated Lean file: `{report['lean_file']}`",
        "",
        "| impact | normal max degree | vector max degree | expected terms |",
        "| ---: | ---: | ---: | ---: |",
    ]
    for item in report["impact_summaries"]:
        lines.append(
            f"| {item['impact']} | {item['normal_max_degree']} | "
            f"{item['vector_max_degree']} | {item['expected_terms']} |"
        )
    lines.extend([
        "",
        "The generated module checks coefficient equality through symbolic",
        "`WalshAffineVec3.dot`; it does not unfold `impactDenomAtRank`.",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--ap16bs", type=Path, default=DEFAULT_AP16BS)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    payload = build_payload(args.profile, args.ap16bs, args.rank, args.mask)
    write_lean(payload, args.lean_output)
    report = report_payload(payload, args.lean_output)
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2), encoding="utf-8")
    write_markdown(report, args.report.with_suffix(".md"))
    print(
        f"wrote {args.lean_output} and {args.report}; "
        f"impacts={len(payload['selected_impacts'])}"
    )


if __name__ == "__main__":
    main()
