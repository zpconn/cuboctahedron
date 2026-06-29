#!/usr/bin/env python3
"""Emit the DU.9BL scaled coefficient cover smoke.

The input is the DU.9BI exact coefficient profile for rank 6000745.  The output
is a Lean smoke file that proves every selected weighted cube has nonpositive
`ScaledWalshQuadratic.intEval`, then transports that fact to
`WalshQuadratic.coeffEval` via the hand-written DU.9BJ bridge.

This is a generator smoke, not trusted proof evidence by itself: Lean checks
the emitted integer inequalities.
"""

from __future__ import annotations

import json
from pathlib import Path


PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9bi_weighted_coeff_certificate_profile.json"
)
OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "WeightedDenomCubeRank6000745ScaledCoeffCoverSmoke.lean"
)

BITS = ["y", "z", "d111", "d11m", "d1m1", "dm11"]
COEFFS = [
    "c",
    "y",
    "z",
    "d111",
    "d11m",
    "d1m1",
    "dm11",
    "yz",
    "y_d111",
    "y_d11m",
    "y_d1m1",
    "y_dm11",
    "z_d111",
    "z_d11m",
    "z_d1m1",
    "z_dm11",
    "d111_d11m",
    "d111_d1m1",
    "d111_dm11",
    "d11m_d1m1",
    "d11m_dm11",
    "d1m1_dm11",
]


def lean_bool(value: bool) -> str:
    return "true" if value else "false"


def lean_int(value: int) -> str:
    return str(value)


def emit_cube(cube: dict) -> str:
    idx = int(cube["index"])
    prefix = f"cube{idx:02d}"
    fixed = cube["fixed_bits"]
    free = cube["free_bits"]
    coeffs = cube["scaled_coefficients"]
    lines: list[str] = []

    lines.append(f"-- rank 6000745, DU.9BI cube {idx}, label {cube['label']}")
    lines.append(f"private def {prefix} : MaskSubcube where")
    lines.append("  fixed")
    for bit in BITS:
        if bit in fixed:
            lines.append(f"    | SignBit.{bit} => some {lean_bool(fixed[bit])}")
    lines.append("    | _ => none")
    lines.append("")

    for bit in BITS:
        if bit not in fixed:
            continue
        lines.append(f"private theorem {prefix}_{bit}")
        lines.append(f"    {{mask : SignMask}} (hmask : {prefix}.Member mask) :")
        lines.append(
            f"    maskBitForPair mask PairId.{bit} = {lean_bool(fixed[bit])} := by"
        )
        lines.append(f"  simpa [{prefix}, MaskSubcube.Member, SignBit.toPairId] using")
        lines.append(f"    hmask SignBit.{bit}")
        lines.append("")

    lines.append(f"private def {prefix}Poly : ScaledWalshQuadratic where")
    lines.append(f"  scale := {int(cube['coeff_scale'])}")
    for coeff in COEFFS:
        lines.append(f"  {coeff} := {lean_int(int(coeffs[coeff]))}")
    lines.append("")

    lines.append(f"private theorem {prefix}Poly_intEval_nonpos_on_cube")
    lines.append(f"    {{mask : SignMask}} (hmask : {prefix}.Member mask) :")
    lines.append(f"    {prefix}Poly.intEval mask <= 0 := by")
    for bit in BITS:
        if bit in fixed:
            lines.append(f"  have h_{bit} := {prefix}_{bit} hmask")
    if free:
        first, *rest = free
        lines.append(f"  by_cases h_{first} : maskBitForPair mask PairId.{first}" + (
            " <;>" if rest else ""
        ))
        for pos, bit in enumerate(rest):
            suffix = " <;>" if pos < len(rest) - 1 else ""
            lines.append(
                f"    by_cases h_{bit} : maskBitForPair mask PairId.{bit}{suffix}"
            )
        lines.append(
            f"    <;> norm_num [{prefix}Poly, ScaledWalshQuadratic.intEval,"
        )
    else:
        lines.append(
            f"  norm_num [{prefix}Poly, ScaledWalshQuadratic.intEval,"
        )
    simp_args = [
        "SignBit.intValue",
        "SignBit.toPairId",
        *[f"h_{bit}" for bit in BITS],
    ]
    lines.append("      " + ", ".join(simp_args) + "]")
    lines.append("")

    lines.append(f"theorem {prefix}Poly_coeffEval_nonpos_on_cube")
    lines.append(f"    {{mask : SignMask}} (hmask : {prefix}.Member mask) :")
    lines.append(f"    {prefix}Poly.toQuadratic.coeffEval mask <= 0 :=")
    lines.append(f"  {prefix}Poly.coeffEval_nonpos_of_intEval_nonpos")
    lines.append(f"    (by norm_num [{prefix}Poly])")
    lines.append(f"    ({prefix}Poly_intEval_nonpos_on_cube hmask)")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    data = json.loads(PROFILE.read_text())
    if data["rank"] != 6000745:
        raise SystemExit(f"unexpected rank: {data['rank']}")
    cubes = data["cubes"]

    parts: list[str] = []
    parts.append(
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate"
    )
    parts.append("")
    parts.append("/-!")
    parts.append("Generated DU.9BL scaled weighted-coefficient cover smoke.")
    parts.append("")
    parts.append("This file is emitted from the DU.9BI exact coefficient profile.")
    parts.append("It proves scaled-integer nonpositivity for all 11 selected")
    parts.append("rank-`6000745` weighted cubes and transports each result to")
    parts.append("the rational `WalshQuadratic.coeffEval` surface.")
    parts.append("-/")
    parts.append("")
    parts.append(
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffCoverSmoke"
    )
    parts.append("")
    parts.append(
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier"
    )
    parts.append(
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube"
    )
    parts.append("")
    parts.append("set_option maxHeartbeats 0")
    parts.append("set_option linter.unusedSimpArgs false")
    parts.append("")
    for cube in cubes:
        parts.append(emit_cube(cube))
    parts.append("theorem weightedScaledCoeffCoverSmoke_builds : True := by")
    parts.append("  trivial")
    parts.append("")
    parts.append(
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffCoverSmoke"
    )
    parts.append("")

    OUT.write_text("\n".join(parts))
    print(f"wrote {OUT} ({len(cubes)} cubes)")


if __name__ == "__main__":
    main()
