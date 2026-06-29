#!/usr/bin/env python3
"""Profile AP16CE symbolic translation-vector recurrence.

AP16CD still proves the geometric denominator equality by bounded mask replay.
This diagnostic checks the next smaller target: the translation direction `b`
can be computed as an affine Walsh vector by a symbolic recurrence over the
pair word, rather than by interpolation over all 64 masks.

The report is diagnostic only.  It is meant to guide the Lean checker shape for
the eventual symbolic/scaled denominator bridge.
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
    DEFAULT_RANK,
    build_payload as build_ap16by_payload,
)
from profile_ap16bi_denominator_sign_forms import VAR_NAMES  # noqa: E402


DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16ce_symbolic_translation_vector_recurrence.json"
)

Subset = tuple[int, ...]
WalshAffine = dict[Subset, Fraction]
WalshVec3 = list[WalshAffine]


def clean_affine(coeffs: WalshAffine) -> WalshAffine:
    return {subset: coeff for subset, coeff in sorted(coeffs.items()) if coeff}


def clean_vec(components: WalshVec3) -> WalshVec3:
    return [clean_affine(component) for component in components]


def add_scaled_vec(target: WalshVec3, scale: WalshAffine, vector: exact.Vec) -> None:
    for axis, value in enumerate(vector):
        if not value:
            continue
        for subset, coeff in scale.items():
            target[axis][subset] = target[axis].get(subset, Fraction(0)) + coeff * value


def constant_sign(value: int) -> WalshAffine:
    if value not in (-1, 1):
        raise ValueError(f"expected sign +/-1, got {value}")
    return {(): Fraction(value)}


def bit_sign(bit: int, coefficient: int) -> WalshAffine:
    if coefficient not in (-1, 1):
        raise ValueError(f"expected coefficient +/-1, got {coefficient}")
    return {(bit,): Fraction(coefficient)}


def occurrence_sign_coefficients(word: list[str]) -> list[WalshAffine]:
    """Return affine Walsh sign coefficients for the 13 post-start faces.

    This mirrors `exact.sign_assignment` symbolically:
    * the single `x` occurrence is forced negative;
    * for each other pair, the first occurrence has sign `bit`;
    * the second occurrence has sign `-bit`.
    """

    seen = {pair_id: 0 for pair_id in exact.PAIR_IDS}
    signs: list[WalshAffine] = []
    for pair_id in word:
        occurrence = seen[pair_id]
        seen[pair_id] += 1
        if pair_id == "x":
            signs.append(constant_sign(-1))
            continue
        bit = exact.PAIR_IDS.index(pair_id) - 1
        signs.append(bit_sign(bit, 1 if occurrence == 0 else -1))
    return signs


def symbolic_translation_vector(word: list[str]) -> WalshVec3:
    """Compute `b(mask)` symbolically from the translation recurrence.

    The recurrence is the exact one used by `exact.translation_vector`:

    `b = sum_i sign_i(mask) * pref[i] * DCAN[word[i]]
       + pref[13] * DCAN["x"]`.
    """

    pref = exact.prefix_matrices(word)
    signs = occurrence_sign_coefficients(word)
    result: WalshVec3 = [{}, {}, {}]
    for index, pair_id in enumerate(word):
        contribution = exact.mat_vec(pref[index], exact.DCAN[pair_id])
        add_scaled_vec(result, signs[index], contribution)
    add_scaled_vec(result, {(): Fraction(1)}, exact.mat_vec(pref[-1], exact.DCAN["x"]))
    return clean_vec(result)


def eval_affine(coeffs: WalshAffine, mask: int) -> Fraction:
    total = Fraction(0)
    for subset, coeff in coeffs.items():
        value = 1
        for bit in subset:
            value *= 1 if ((mask >> bit) & 1) else -1
        total += coeff * value
    return total


def eval_vec(vector: WalshVec3, mask: int) -> exact.Vec:
    return tuple(eval_affine(component, mask) for component in vector)  # type: ignore[return-value]


def component_summary(vector: WalshVec3) -> list[dict[str, Any]]:
    summary = []
    for axis_name, component in zip(["x", "y", "z"], vector, strict=True):
        summary.append({
            "axis": axis_name,
            "nonzero_terms": len(component),
            "max_degree": max((len(subset) for subset in component), default=0),
            "terms": {
                ("*".join(VAR_NAMES[index] for index in subset) if subset else "1"):
                (
                    f"{coeff.numerator}/{coeff.denominator}"
                    if coeff.denominator != 1
                    else str(coeff.numerator)
                )
                for subset, coeff in component.items()
            },
        })
    return summary


def vector_equal(left: WalshVec3, right: WalshVec3) -> bool:
    return clean_vec(left) == clean_vec(right)


def build_report(profile_path: Path, ap16bs_path: Path, rank: int, mask: int) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    symbolic = symbolic_translation_vector(word)
    ap16by = build_ap16by_payload(profile_path, ap16bs_path, rank, mask)
    selected_impacts = [int(value) for value in ap16by["selected_impacts"]]
    impact_matches = []
    for item in ap16by["impacts"]:
        impact_matches.append({
            "impact": int(item["impact"]),
            "matches_ap16by_interpolated_vector": vector_equal(symbolic, item["vector"]),
        })

    mismatches = []
    for mask_value in range(64):
        exact_b, _seq = exact.translation_vector(word, mask_value)
        symbolic_b = eval_vec(symbolic, mask_value)
        if symbolic_b != exact_b:
            mismatches.append({
                "mask": mask_value,
                "symbolic": [str(value) for value in symbolic_b],
                "exact": [str(value) for value in exact_b],
            })

    all_impact_matches = all(item["matches_ap16by_interpolated_vector"] for item in impact_matches)
    all_mask_matches = not mismatches
    return {
        "phase": "Phase 6Z.6K.8AP.16CE",
        "status": "accepted_profile" if all_impact_matches and all_mask_matches else "failed_profile",
        "rank": rank,
        "anchor_mask": mask,
        "pair_word": word,
        "selected_impacts": selected_impacts,
        "construction": "symbolic pair-word recurrence for translation vector",
        "uses_mask_interpolation_for_construction": False,
        "validation_uses_64_mask_replay": True,
        "trusted_as_proof": False,
        "vector_summary": component_summary(symbolic),
        "impact_matches": impact_matches,
        "all_ap16by_vector_matches": all_impact_matches,
        "all_exact_mask_evaluations_match": all_mask_matches,
        "mismatch_count": len(mismatches),
        "mismatches": mismatches[:8],
        "next_step": (
            "Extend the same recurrence style to symbolic pre-impact normals, "
            "then replace AP16CD bounded denominator replay with a Lean-checked "
            "symbolic/scaled denominator evaluator."
        ),
    }


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16CE Symbolic Translation-Vector Recurrence",
        "",
        "This report is diagnostic profile evidence, not final proof evidence.",
        "",
        f"- status: `{report['status']}`",
        f"- rank: `{report['rank']}`",
        f"- selected impacts compared against AP16BY: `{report['selected_impacts']}`",
        f"- construction uses mask interpolation: `{report['uses_mask_interpolation_for_construction']}`",
        f"- validation replays all 64 masks externally: `{report['validation_uses_64_mask_replay']}`",
        f"- all AP16BY vector matches: `{report['all_ap16by_vector_matches']}`",
        f"- all exact mask evaluations match: `{report['all_exact_mask_evaluations_match']}`",
        "",
        "## Vector Terms",
        "",
        "| axis | nonzero terms | max degree | terms |",
        "| --- | ---: | ---: | --- |",
    ]
    for item in report["vector_summary"]:
        terms = ", ".join(f"{name}: {value}" for name, value in item["terms"].items())
        lines.append(
            f"| `{item['axis']}` | {item['nonzero_terms']} | "
            f"{item['max_degree']} | `{terms}` |"
        )
    lines.extend([
        "",
        "## Interpretation",
        "",
        "AP16CE confirms that the translation direction side of the AP16CD",
        "denominator equality can be generated by a direct symbolic recurrence over",
        "the pair-word prefix matrices and sign bits.  It does not yet prove the",
        "pre-impact normal side or the final `impactDenomAtRank` equality in Lean.",
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
