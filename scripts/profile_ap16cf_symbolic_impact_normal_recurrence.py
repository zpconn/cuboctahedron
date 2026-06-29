#!/usr/bin/env python3
"""Profile AP16CF symbolic pre-impact-normal recurrence.

AP16CE showed that the translation direction `b(mask)` can be computed as an
affine Walsh vector by recurrence.  AP16CF checks the companion fact for the
pre-impact copied normal used by denominator rows.

The construction is symbolic and does not interpolate over masks.  External
64-mask replay is used only to validate the profile output against the exact
reference implementation.
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
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    DEFAULT_AP16BS,
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    build_payload as build_ap16by_payload,
    dot_coefficients,
)
from profile_ap16bi_denominator_sign_forms import VAR_NAMES  # noqa: E402
from profile_ap16ce_symbolic_translation_vector_recurrence import (  # noqa: E402
    DEFAULT_RANK,
    WalshAffine,
    WalshVec3,
    add_scaled_vec,
    clean_vec,
    component_summary,
    constant_sign,
    eval_vec,
    occurrence_sign_coefficients,
    symbolic_translation_vector,
)


DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16cf_symbolic_impact_normal_recurrence.json"
)


def impact_normal_basis(word: list[str], impact: int) -> tuple[WalshAffine, exact.Vec]:
    """Return `(sign, copiedCanonicalNormal)` for an impact.

    For post-start impacts, the copied canonical normal is independent of the
    sign mask because opposite faces share the same linear reflection.  The
    sign coefficient carries the chosen side of the opposite-face pair.
    """

    pref = exact.prefix_matrices(word)
    signs = occurrence_sign_coefficients(word)
    if impact == 0:
        return constant_sign(1), exact.mat_vec(pref[0], exact.normal("xp"))
    if impact < 14:
        index = impact - 1
        pair_id = word[index]
        return signs[index], exact.mat_vec(pref[index], exact.vec(exact.NORMALS[pair_id]))
    return constant_sign(1), exact.mat_vec(pref[13], exact.normal("xp"))


def symbolic_impact_normal(word: list[str], impact: int) -> WalshVec3:
    sign, copied = impact_normal_basis(word, impact)
    result: WalshVec3 = [{}, {}, {}]
    add_scaled_vec(result, sign, copied)
    return clean_vec(result)


def vector_equal(left: WalshVec3, right: WalshVec3) -> bool:
    return clean_vec(left) == clean_vec(right)


def term_key(subset: tuple[int, ...]) -> str:
    return "*".join(VAR_NAMES[index] for index in subset) if subset else "1"


def poly_summary(coeffs: dict[tuple[int, ...], Fraction]) -> dict[str, Any]:
    cleaned = {subset: coeff for subset, coeff in sorted(coeffs.items()) if coeff}
    return {
        "nonzero_terms": len(cleaned),
        "max_degree": max((len(subset) for subset in cleaned), default=0),
        "terms": {
            term_key(subset): (
                f"{coeff.numerator}/{coeff.denominator}"
                if coeff.denominator != 1
                else str(coeff.numerator)
            )
            for subset, coeff in cleaned.items()
        },
    }


def build_report(profile_path: Path, ap16bs_path: Path, rank: int, mask: int) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    symbolic_vector = symbolic_translation_vector(word)
    ap16by = build_ap16by_payload(profile_path, ap16bs_path, rank, mask)

    impact_reports = []
    all_normal_matches = True
    all_dot_matches = True
    all_exact_mask_matches = True
    mismatches = []

    for item in ap16by["impacts"]:
        impact = int(item["impact"])
        symbolic_normal = symbolic_impact_normal(word, impact)
        computed_dot = dot_coefficients(symbolic_normal, symbolic_vector)
        expected_dot = {subset: coeff for subset, coeff in item["expected"].items() if coeff}

        normal_matches = vector_equal(symbolic_normal, item["normal"])
        dot_matches = computed_dot == expected_dot
        all_normal_matches = all_normal_matches and normal_matches
        all_dot_matches = all_dot_matches and dot_matches

        exact_normal_mismatches = []
        for mask_value in range(64):
            _b, seq = exact.translation_vector(word, mask_value)
            prefixes = exact.path_prefix_affs(seq)
            exact_normal, _offset = exact.impact_plane_normal_offset(seq, prefixes, impact)
            symbolic_normal_value = eval_vec(symbolic_normal, mask_value)
            if symbolic_normal_value != exact_normal:
                exact_normal_mismatches.append({
                    "mask": mask_value,
                    "symbolic": [str(value) for value in symbolic_normal_value],
                    "exact": [str(value) for value in exact_normal],
                })

        exact_mask_matches = not exact_normal_mismatches
        all_exact_mask_matches = all_exact_mask_matches and exact_mask_matches
        if exact_normal_mismatches:
            mismatches.append({
                "impact": impact,
                "mismatches": exact_normal_mismatches[:8],
            })

        impact_reports.append({
            "impact": impact,
            "normal_matches_ap16by_interpolation": normal_matches,
            "dot_matches_ap16by_expected": dot_matches,
            "all_exact_mask_evaluations_match": exact_mask_matches,
            "normal_summary": component_summary(symbolic_normal),
            "dot_summary": poly_summary(computed_dot),
        })

    status_ok = all_normal_matches and all_dot_matches and all_exact_mask_matches
    return {
        "phase": "Phase 6Z.6K.8AP.16CF",
        "status": "accepted_profile" if status_ok else "failed_profile",
        "rank": rank,
        "anchor_mask": mask,
        "pair_word": word,
        "selected_impacts": [int(item["impact"]) for item in ap16by["impacts"]],
        "construction": "symbolic pair-word recurrence for pre-impact copied normals",
        "uses_mask_interpolation_for_construction": False,
        "validation_uses_64_mask_replay": True,
        "trusted_as_proof": False,
        "vector_recurrence_reused_from_ap16ce": True,
        "all_normal_matches_ap16by_interpolation": all_normal_matches,
        "all_dot_matches_ap16by_expected": all_dot_matches,
        "all_exact_mask_evaluations_match": all_exact_mask_matches,
        "impact_reports": impact_reports,
        "mismatch_count": sum(len(item["mismatches"]) for item in mismatches),
        "mismatches": mismatches,
        "next_step": (
            "Port the vector and normal recurrences into a small Lean symbolic/"
            "scaled denominator evaluator so AP16CD can replace bounded mask "
            "replay with a semantic theorem."
        ),
    }


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16CF Symbolic Impact-Normal Recurrence",
        "",
        "This report is diagnostic profile evidence, not final proof evidence.",
        "",
        f"- status: `{report['status']}`",
        f"- rank: `{report['rank']}`",
        f"- selected impacts: `{report['selected_impacts']}`",
        f"- construction uses mask interpolation: `{report['uses_mask_interpolation_for_construction']}`",
        f"- validation replays all 64 masks externally: `{report['validation_uses_64_mask_replay']}`",
        f"- all normal matches against AP16BY: `{report['all_normal_matches_ap16by_interpolation']}`",
        f"- all dot products match AP16BY expected polynomials: `{report['all_dot_matches_ap16by_expected']}`",
        f"- all exact mask evaluations match: `{report['all_exact_mask_evaluations_match']}`",
        "",
        "## Impact Summary",
        "",
        "| impact | normal terms by axis | dot terms | dot max degree |",
        "| ---: | --- | ---: | ---: |",
    ]
    for item in report["impact_reports"]:
        normal_terms = ", ".join(
            f"{axis['axis']}={axis['nonzero_terms']}"
            for axis in item["normal_summary"]
        )
        lines.append(
            f"| {item['impact']} | `{normal_terms}` | "
            f"{item['dot_summary']['nonzero_terms']} | "
            f"{item['dot_summary']['max_degree']} |"
        )
    lines.extend([
        "",
        "## Interpretation",
        "",
        "AP16CF confirms that AP16CD's symbolic normal/vector records can be",
        "recovered by direct symbolic recurrences for both sides of the dot",
        "product.  The next proof step is no longer a search for coefficients;",
        "it is a Lean checker/theorem that connects these recurrences to",
        "`impactDenomAtRank` without bounded mask replay.",
        "",
        f"Next: {report['next_step']}",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--ap16bs", type=Path, default=DEFAULT_AP16BS)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    report = build_report(args.profile, args.ap16bs, args.rank, args.mask)
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2), encoding="utf-8")
    write_markdown(report, args.report.with_suffix(".md"))
    print(
        f"wrote {args.report} and {args.report.with_suffix('.md')}; "
        f"status={report['status']}"
    )
    if report["status"] != "accepted_profile":
        raise SystemExit(1)


if __name__ == "__main__":
    main()
