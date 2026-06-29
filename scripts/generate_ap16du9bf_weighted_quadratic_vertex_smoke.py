#!/usr/bin/env python3
"""Generate a compact quadratic vertex-bound smoke for DU.9BF.

DU.9BE showed that independent termwise Walsh bounds are too loose for 6 of
the 11 selected weighted cubes, even though the exact cube maxima are
nonpositive.  This script emits a tiny Lean module for one such cube: it defines
the precomputed weighted Walsh quadratic and proves nonpositivity on the cube by
splitting only the cube's free mask bits.

This smoke intentionally does not yet connect the polynomial to
`weightedDenomAtRank`; it tests the compact cube-maximum proof surface.
"""

from __future__ import annotations

import argparse
import json
import sys
from fractions import Fraction
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_ap16du9be_weighted_walsh_poly import (  # noqa: E402
    DEFAULT_DU9BA,
    compute_rank_walsh_forms,
    weighted_coeffs,
)


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "WeightedDenomCubeRank6000745QuadraticVertexSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9bf_weighted_quadratic_vertex_smoke.json"
)

VAR_NAMES = ["y", "z", "d111", "d11m", "d1m1", "dm11"]
BIT_TO_LEAN = {
    "y": "SignBit.y",
    "z": "SignBit.z",
    "d111": "SignBit.d111",
    "d11m": "SignBit.d11m",
    "d1m1": "SignBit.d1m1",
    "dm11": "SignBit.dm11",
}
PAIR_TO_LEAN = {
    "y": "PairId.y",
    "z": "PairId.z",
    "d111": "PairId.d111",
    "d11m": "PairId.d11m",
    "d1m1": "PairId.d1m1",
    "dm11": "PairId.dm11",
}
FIELD_OF_SUBSET = {
    (): "c",
    (0,): "y",
    (1,): "z",
    (2,): "d111",
    (3,): "d11m",
    (4,): "d1m1",
    (5,): "dm11",
    (0, 1): "yz",
    (0, 2): "y_d111",
    (0, 3): "y_d11m",
    (0, 4): "y_d1m1",
    (0, 5): "y_dm11",
    (1, 2): "z_d111",
    (1, 3): "z_d11m",
    (1, 4): "z_d1m1",
    (1, 5): "z_dm11",
    (2, 3): "d111_d11m",
    (2, 4): "d111_d1m1",
    (2, 5): "d111_dm11",
    (3, 4): "d11m_d1m1",
    (3, 5): "d11m_dm11",
    (4, 5): "d1m1_dm11",
}
FIELD_ORDER = [
    "c", "y", "z", "d111", "d11m", "d1m1", "dm11",
    "yz", "y_d111", "y_d11m", "y_d1m1", "y_dm11",
    "z_d111", "z_d11m", "z_d1m1", "z_dm11",
    "d111_d11m", "d111_d1m1", "d111_dm11",
    "d11m_d1m1", "d11m_dm11", "d1m1_dm11",
]


def lean_rat(q: Fraction) -> str:
    if q.denominator == 1:
        return str(q.numerator)
    if q.numerator < 0:
        return f"({q.numerator}/{q.denominator})"
    return f"{q.numerator}/{q.denominator}"


def parse_fraction(value: object) -> Fraction:
    return Fraction(str(value))


def fixed_bits(label: str) -> list[tuple[str, bool]]:
    result = []
    for index, char in enumerate(label):
        if char == "0":
            result.append((VAR_NAMES[index], False))
        elif char == "1":
            result.append((VAR_NAMES[index], True))
    return result


def free_bits(label: str) -> list[str]:
    return [VAR_NAMES[index] for index, char in enumerate(label) if char == "*"]


def emit_cube(label: str) -> list[str]:
    fixed = dict(fixed_bits(label))
    lines = [
        "private def generatedCube : MaskSubcube where",
        "  fixed",
    ]
    for name in VAR_NAMES:
        if name in fixed:
            value = "true" if fixed[name] else "false"
            lines.append(f"    | {BIT_TO_LEAN[name]} => some {value}")
    if len(fixed) < len(VAR_NAMES):
        lines.append("    | _ => none")
    return lines


def emit_fixed_theorems(label: str) -> list[str]:
    lines: list[str] = []
    for name, value in fixed_bits(label):
        bool_text = "true" if value else "false"
        lines.extend([
            "",
            f"private theorem generatedCube_{name}",
            "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
            f"    maskBitForPair mask {PAIR_TO_LEAN[name]} = {bool_text} := by",
            "  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using",
            f"    hmask {BIT_TO_LEAN[name]}",
        ])
    return lines


def emit_poly(coeffs: dict[tuple[int, ...], Fraction]) -> list[str]:
    fields = {field: Fraction(0) for field in FIELD_ORDER}
    for subset, coeff in coeffs.items():
        if coeff == 0:
            continue
        if len(subset) > 2:
            raise ValueError(f"expected quadratic polynomial, found subset {subset}")
        fields[FIELD_OF_SUBSET[tuple(sorted(subset))]] = coeff
    lines = [
        "private def generatedPoly : WalshQuadratic where",
    ]
    for field in FIELD_ORDER:
        lines.append(f"  {field} := {lean_rat(fields[field])}")
    return lines


def emit_nonpos_theorem(label: str) -> list[str]:
    fixed = [name for name, _value in fixed_bits(label)]
    free = free_bits(label)
    lines = [
        "",
        "theorem generatedPoly_nonpos_on_cube",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    generatedPoly.coeffEval mask <= 0 := by",
    ]
    for name in fixed:
        lines.append(f"  have h_{name} := generatedCube_{name} hmask")
    for index, name in enumerate(free):
        prefix = "  " if index == 0 else "    "
        suffix = " <;>" if index < len(free) - 1 else ""
        lines.append(
            f"{prefix}by_cases h_{name} : maskBitForPair mask {PAIR_TO_LEAN[name]}{suffix}"
        )
    simp_args = [
        "generatedPoly",
        "WalshQuadratic.coeffEval",
        "SignBit.value",
        "SignBit.toPairId",
    ]
    simp_args.extend(f"h_{name}" for name in free)
    simp_args.extend(f"h_{name}" for name in fixed)
    indent = "    " if free else "  "
    lines.append(f"{indent}<;> norm_num [{', '.join(simp_args)}]")
    return lines


def payload(du9ba_path: Path, selected_index: int) -> tuple[dict, dict[tuple[int, ...], Fraction]]:
    du9ba = json.loads(du9ba_path.read_text(encoding="utf-8"))
    rank = int(du9ba["rank"])
    selected = du9ba["witnessable_cube_cover"]["selected"][selected_index]
    witness = selected["sparse_witness"]
    forms, forms_validated = compute_rank_walsh_forms(rank)
    if not forms_validated:
        raise RuntimeError("rank Walsh form validation failed")
    coeffs = weighted_coeffs(
        forms,
        [int(value) for value in witness["support"]],
        [parse_fraction(value) for value in witness["weights"]],
    )
    return du9ba, coeffs


def emit_lean(du9ba: dict, coeffs: dict[tuple[int, ...], Fraction],
              selected_index: int) -> str:
    selected = du9ba["witnessable_cube_cover"]["selected"][selected_index]
    label = str(selected["label"])
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic",
        "",
        "/-!",
        "Generated DU.9BF compact weighted Walsh quadratic vertex smoke.",
        "",
        "This file proves nonpositivity of one precomputed weighted denominator",
        "quadratic on one Boolean subcube by splitting only the free mask bits.",
        "It deliberately does not yet connect the polynomial to weightedDenomAtRank.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745QuadraticVertexSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxHeartbeats 0",
        "set_option linter.unusedSimpArgs false",
        "",
        f"-- rank {du9ba['rank']}, cube {selected_index}, label {label}",
    ]
    lines.extend(emit_cube(label))
    lines.extend(emit_fixed_theorems(label))
    lines.append("")
    lines.extend(emit_poly(coeffs))
    lines.extend(emit_nonpos_theorem(label))
    lines.extend([
        "",
        "theorem weightedQuadraticVertexSmoke_builds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745QuadraticVertexSmoke",
        "",
    ])
    return "\n".join(lines)


def write_report(report: Path, lean: Path, du9ba: dict, selected_index: int,
                 coeffs: dict[tuple[int, ...], Fraction]) -> None:
    selected = du9ba["witnessable_cube_cover"]["selected"][selected_index]
    data = {
        "phase": "Phase 6Z.6K.8AP.16DU.9BF",
        "rank": int(du9ba["rank"]),
        "selected_index": selected_index,
        "label": selected["label"],
        "support": selected["sparse_witness"]["support"],
        "weights": selected["sparse_witness"]["weights"],
        "nonzero_terms": sum(1 for coeff in coeffs.values() if coeff != 0),
        "lean": str(lean),
        "trusted_as_proof": False,
        "status": "generated_pending_build",
    }
    report.parent.mkdir(parents=True, exist_ok=True)
    report.write_text(json.dumps(data, indent=2), encoding="utf-8")
    md = report.with_suffix(".md")
    md.write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9BF Weighted Quadratic Vertex Smoke",
            "",
            "This is a generated smoke file report. The Lean file proves compact",
            "polynomial nonpositivity on one cube, but does not yet connect the",
            "polynomial to `weightedDenomAtRank`.",
            "",
            f"- rank: `{data['rank']}`",
            f"- selected cube: `{selected_index}`",
            f"- label: `{data['label']}`",
            f"- support: `{', '.join(str(x) for x in data['support'])}`",
            f"- weights: `{', '.join(str(x) for x in data['weights'])}`",
            f"- nonzero terms: `{data['nonzero_terms']}`",
            f"- Lean file: `{data['lean']}`",
            "",
        ]),
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--du9ba", type=Path, default=DEFAULT_DU9BA)
    parser.add_argument("--selected-index", type=int, default=0)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()
    du9ba, coeffs = payload(args.du9ba, args.selected_index)
    args.lean.parent.mkdir(parents=True, exist_ok=True)
    args.lean.write_text(emit_lean(du9ba, coeffs, args.selected_index), encoding="utf-8")
    write_report(args.report, args.lean, du9ba, args.selected_index, coeffs)
    print(f"wrote {args.lean} and {args.report}")


if __name__ == "__main__":
    main()
