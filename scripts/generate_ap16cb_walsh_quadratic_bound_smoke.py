#!/usr/bin/env python3
"""Generate an AP.16CB WalshQuadratic coefficient-bound smoke.

AP16CA added a coefficient-level obstruction surface so generated quadratic
denominator leaves can avoid `WalshPoly.eval`.  This script emits the first
smoke for that surface: one AP16BJ selected subcube, represented as a
`WalshQuadratic`, with one upper bound proof for each coefficient slot.

The generated file proves `generatedPoly.coeffEval mask <= 0` over the subcube.
It deliberately does not yet prove equality to `impactDenomAtRank`; that bridge
is the next separate layer.
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

from generate_ap16bo_walsh_bound_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_SELECTED,
    PAIR_TO_LEAN,
    emit_cube,
    emit_fixed_theorems,
    fixed_cases,
    fraction_to_text,
    lean_rat,
    selected_data,
)
from profile_ap16bi_denominator_sign_forms import VAR_NAMES  # noqa: E402


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshQuadraticBoundSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16cb_walsh_quadratic_bound_smoke.json"
)

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

FIELD_LEMMA_NAMES = [
    "c_le",
    "y_le",
    "z_le",
    "d111_le",
    "d11m_le",
    "d1m1_le",
    "dm11_le",
    "yz_le",
    "y_d111_le",
    "y_d11m_le",
    "y_d1m1_le",
    "y_dm11_le",
    "z_d111_le",
    "z_d11m_le",
    "z_d1m1_le",
    "z_dm11_le",
    "d111_d11m_le",
    "d111_d1m1_le",
    "d111_dm11_le",
    "d11m_d1m1_le",
    "d11m_dm11_le",
    "d1m1_dm11_le",
]


def emit_quadratic(name: str, values: dict[tuple[int, ...], Fraction]) -> list[str]:
    lines = [f"private def {name} : WalshQuadratic where"]
    for field, subset in QUADRATIC_FIELDS:
        lines.append(f"  {field} := {lean_rat(values.get(subset, Fraction(0)))}")
    return lines


def emit_bound_case(subset: tuple[int, ...], label: str) -> list[str]:
    lines: list[str] = []
    fixed_names = {name for name, _sign in fixed_cases(label)}
    free_names = [VAR_NAMES[j] for j in subset if VAR_NAMES[j] not in fixed_names]
    for index in subset:
        bit_name = VAR_NAMES[index]
        if bit_name in fixed_names:
            lines.append(f"    have h_{bit_name} := generatedCube_{bit_name} hmask")
    simp_args = [
        "generatedPoly",
        "generatedBound",
        "SignBit.value",
        "SignBit.toPairId",
    ]
    simp_args.extend(f"h_{VAR_NAMES[index]}" for index in subset)
    if free_names:
        last = len(free_names) - 1
        for idx, name in enumerate(free_names):
            prefix = "    " if idx == 0 else "      "
            suffix = " <;>" if idx < last else ""
            lines.append(
                f"{prefix}by_cases h_{name} : "
                f"maskBitForPair mask {PAIR_TO_LEAN[name]}{suffix}"
            )
        lines.append(f"      <;> norm_num [{', '.join(simp_args)}]")
    else:
        lines.append(f"    norm_num [{', '.join(simp_args)}]")
    return lines


def emit_upper(data: dict[str, Any]) -> list[str]:
    label = data["selected"]["label"]
    coeffs = {subset: coeff for subset, coeff in data["terms"]}
    bounds = {subset: bound for (subset, _coeff), bound in zip(data["terms"], data["bounds"], strict=True)}
    lines: list[str] = []
    lines.extend(emit_quadratic("generatedPoly", coeffs))
    lines.append("")
    lines.extend(emit_quadratic("generatedBound", bounds))
    lines.extend([
        "",
        "private def generatedUpper :",
        "    WalshQuadraticSubcubeUpperBound generatedCube generatedPoly where",
        "  bound := generatedBound",
    ])
    for lemma_name, (_field, subset) in zip(FIELD_LEMMA_NAMES, QUADRATIC_FIELDS, strict=True):
        lines.extend([
            f"  {lemma_name} := by",
            "    intro mask hmask",
        ])
        lines.extend(emit_bound_case(subset, label))
    lines.extend([
        "  total_nonpos := by",
        "    norm_num [WalshQuadratic.boundSum, generatedBound]",
    ])
    return lines


def emit_lean(data: dict[str, Any]) -> str:
    selected = data["selected"]
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic",
        "",
        "/-!",
        "Generated AP.16CB WalshQuadratic coefficient-bound smoke.",
        "",
        "This file is generated by `scripts/generate_ap16cb_walsh_quadratic_bound_smoke.py`.",
        "It proves coefficient-level Walsh nonpositivity for one AP16BJ selected",
        "subcube without using `WalshPoly.eval`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadraticBoundSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        f"-- rank {data['rank']}, selected subcube {data['selected_index']}, "
        f"label {selected['label']}, impact {selected['impact']}",
    ]
    lines.extend(emit_cube(selected["label"]))
    lines.extend(emit_fixed_theorems(selected["label"]))
    lines.append("")
    lines.extend(emit_upper(data))
    lines.extend([
        "",
        "theorem generatedQuadratic_nonpos",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    generatedPoly.coeffEval mask <= 0 :=",
        "  generatedUpper.coeffEval_nonpos hmask",
        "",
        "theorem impactSubcubeWalshQuadraticBoundSmoke_builds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadraticBoundSmoke",
    ])
    return "\n".join(lines) + "\n"


def write_report(data: dict[str, Any], report_path: Path, lean_path: Path) -> None:
    selected = data["selected"]
    report = {
        "phase": "Phase 6Z.6K.8AP.16CB",
        "status": "generated_pending_build",
        "rank": data["rank"],
        "selected_index": data["selected_index"],
        "label": selected["label"],
        "impact": selected["impact"],
        "term_count": len(data["terms"]),
        "bound_sum": fraction_to_text(data["bound_sum"]),
        "lean_file": str(lean_path),
        "connects_to_impactDenomAtRank": False,
        "uses_walsh_poly_eval": False,
        "trusted_as_final_generated_coverage": False,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")
    md_lines = [
        "# Phase 6Z.6K.8AP.16CB WalshQuadratic Bound Smoke",
        "",
        "Status: generated; focused Lean build required for acceptance.",
        "",
        f"- rank: `{report['rank']}`",
        f"- selected subcube: `{report['selected_index']}`",
        f"- label: `{report['label']}`",
        f"- impact: `{report['impact']}`",
        f"- term count: `{report['term_count']}`",
        f"- bound sum: `{report['bound_sum']}`",
        f"- generated Lean file: `{report['lean_file']}`",
        "",
        "This smoke proves `generatedPoly.coeffEval mask <= 0` over the",
        "selected subcube using `WalshQuadraticSubcubeUpperBound`.",
        "It does not yet prove equality with `impactDenomAtRank`.",
        "",
    ]
    report_path.with_suffix(".md").write_text("\n".join(md_lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--selected", type=Path, default=DEFAULT_SELECTED)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--selected-index", type=int, default=0)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    data = selected_data(args.profile, args.selected, args.rank, args.mask, args.selected_index)
    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(emit_lean(data), encoding="utf-8")
    write_report(data, args.report, args.lean_output)
    print(
        f"wrote {args.lean_output}; selected={args.selected_index} "
        f"terms={len(data['terms'])} bound_sum={fraction_to_text(data['bound_sum'])}"
    )


if __name__ == "__main__":
    main()
