#!/usr/bin/env python3
"""Emit a one-cube weighted trace-certificate smoke for rank 6000745.

This is the DU.9BS smoke following the DU.9BR chained trace topology.  It
instantiates `WeightedWalshQuadraticTraceCertificate` for the first DU.9BI
weighted cube, using:

* the chained Walsh-vector trace root for the translation vector;
* generated compact Walsh normal records for all 13 internal impacts;
* the DU.9BI scaled coefficient certificate for the selected weighted cube.

The generated theorem reaches `weightedDirectWalshDotAtRank <= 0` on the cube.
It is still smoke evidence, not final generated coverage.
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
from generate_ap16by_walsh_symbolic_all_smoke import emit_walsh_vec  # noqa: E402
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)


BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_RANK = 6000745
DEFAULT_CUBE_INDEX = 0
DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9bi_weighted_coeff_certificate_profile.json"
)
DEFAULT_LEAN = (
    BASE_DIR / "WeightedDenomCubeRank6000745TraceCertOneCubeSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9bs_trace_cert_one_cube_smoke.json"
)
DEFAULT_TRACE_MODULE = (
    f"{BASE_MODULE}.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke"
)
DEFAULT_NAMESPACE = (
    f"{BASE_MODULE}.WeightedDenomCubeRank6000745TraceCertOneCubeSmoke"
)

COEFF_FIELDS = [
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

SIGN_BITS = ["y", "z", "d111", "d11m", "d1m1", "dm11"]


def lean_rat(value: str | int | Fraction) -> str:
    if isinstance(value, str):
        value = Fraction(value)
    elif isinstance(value, int):
        value = Fraction(value)
    if value.denominator == 1:
        return str(value.numerator)
    if value.numerator < 0:
        return f"-{abs(value.numerator)}/{value.denominator}"
    return f"{value.numerator}/{value.denominator}"


def lean_bool(value: bool) -> str:
    return "true" if value else "false"


def lean_pair_id(bit: str) -> str:
    return {
        "y": "PairId.y",
        "z": "PairId.z",
        "d111": "PairId.d111",
        "d11m": "PairId.d11m",
        "d1m1": "PairId.d1m1",
        "dm11": "PairId.dm11",
    }[bit]


def lean_sign_bit(bit: str) -> str:
    return {
        "y": "SignBit.y",
        "z": "SignBit.z",
        "d111": "SignBit.d111",
        "d11m": "SignBit.d11m",
        "d1m1": "SignBit.d1m1",
        "dm11": "SignBit.dm11",
    }[bit]


def emit_weights(weights: list[str], support: list[int]) -> list[str]:
    values = [Fraction(0) for _ in range(13)]
    for impact, weight in zip(support, weights, strict=True):
        if not (1 <= impact <= 13):
            raise ValueError(f"expected 1-based internal impact, got {impact}")
        values[impact - 1] = Fraction(weight)
    lines = ["private def generatedWeights : DenominatorCube.InternalImpactWeights where"]
    for index, value in enumerate(values, start=1):
        lines.append(f"  w{index} := {lean_rat(value)}")
    return lines


def emit_scaled_poly(cube: dict[str, Any]) -> list[str]:
    coeffs = cube["scaled_coefficients"]
    lines = ["private def generatedScaledPoly : ScaledWalshQuadratic where"]
    lines.append(f"  scale := {cube['coeff_scale']}")
    for field in COEFF_FIELDS:
        lines.append(f"  {field} := {coeffs.get(field, 0)}")
    return lines


def emit_cube(cube: dict[str, Any]) -> list[str]:
    fixed: dict[str, bool] = cube["fixed_bits"]
    lines = [
        f"-- rank {DEFAULT_RANK}, DU.9BI cube {cube['index']}, label {cube['label']}",
        "private def generatedCube : MaskSubcube where",
        "  fixed",
    ]
    for bit in SIGN_BITS:
        if bit in fixed:
            lines.append(f"    | {lean_sign_bit(bit)} => some {lean_bool(fixed[bit])}")
    lines.append("    | _ => none")
    lines.append("")
    for bit, value in fixed.items():
        lines.extend([
            f"private theorem generatedCube_{bit}",
            "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
            f"    maskBitForPair mask {lean_pair_id(bit)} = {lean_bool(value)} := by",
            "  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using",
            f"    hmask {lean_sign_bit(bit)}",
            "",
        ])
    return lines


def emit_int_nonpos(cube: dict[str, Any]) -> list[str]:
    fixed = cube["fixed_bits"]
    free = [bit for bit in SIGN_BITS if bit not in fixed]
    lines = [
        "private theorem generatedScaledPoly_intEval_nonpos_on_cube",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    generatedScaledPoly.intEval mask <= 0 := by",
    ]
    for bit in fixed:
        lines.append(f"  have h_{bit} := generatedCube_{bit} hmask")
    for idx, bit in enumerate(free):
        prefix = "  " if idx == 0 else "    "
        sep = " <;>" if idx + 1 == len(free) else " <;>"
        lines.append(
            f"{prefix}by_cases h_{bit} : maskBitForPair mask {lean_pair_id(bit)}{sep}"
        )
    names = [f"h_{bit}" for bit in SIGN_BITS]
    lines.extend([
        "    norm_num [generatedScaledPoly, ScaledWalshQuadratic.intEval,",
        "      SignBit.intValue, SignBit.toPairId, " + ", ".join(names) + "]",
        "",
        "theorem generatedScaledPoly_coeffEval_nonpos_on_cube",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    generatedScaledPoly.toQuadratic.coeffEval mask <= 0 :=",
        "  generatedScaledPoly.coeffEval_nonpos_of_intEval_nonpos",
        "    (by norm_num [generatedScaledPoly])",
        "    (generatedScaledPoly_intEval_nonpos_on_cube hmask)",
    ])
    return lines


def normal_eq_defs(name: str, index: int) -> str:
    return ", ".join([
        name,
        f"{name}_x",
        f"{name}_y",
        f"{name}_z",
        "impactNormalWalshAt",
        "WalshAffineVec3.smulConst",
        "WalshAffine.const",
        "WalshAffine.scale",
        "WalshAffine.bit",
        "WalshAffine.neg",
        "WalshAffine.zero",
        "signedCoeffWalshAt",
        "countPairBeforeNat",
        "generatedWord",
        f"generatedWord_get_{index:02d}",
        "pairPrefixLinearNat",
        "canonicalNormalQ",
        "scalarMul",
        "matVec",
        "matMul",
        "matId",
        "reflM",
        "matSub",
        "scalarMat",
        "outer",
        "dot",
    ])


def emit_normals(word: list[str]) -> list[str]:
    lines: list[str] = []
    for index, pair_id in enumerate(word):
        name = f"generatedNormal{index:02d}"
        lines.extend(emit_walsh_vec(name, symbolic_impact_normal(word, index), visibility="private "))
        lines.append("")
        lines.extend([
            f"private theorem generatedWord_get_{index:02d} :",
            f"    generatedWord.get ({index} : WordIndex) = PairId.{pair_id} := by",
            "  rfl",
            "",
            f"private theorem generatedNormal{index:02d}_eq :",
            f"    {name} = impactNormalWalshAt generatedWord ({index} : WordIndex) := by",
            "  apply WalshAffineVec3.ext <;>",
            "    apply WalshAffine.ext <;>",
            f"    simp [{normal_eq_defs(name, index)}] <;>",
            f"    norm_num [{normal_eq_defs(name, index)}]",
            "",
        ])
    lines.extend([
        "private def generatedNormal : WordIndex -> WalshAffineVec3",
    ])
    for index in range(13):
        lines.append(f"  | ⟨{index}, _⟩ => generatedNormal{index:02d}")
    lines.append("")
    lines.extend([
        "private theorem generatedNormal_eq",
        "    (i : WordIndex) :",
        "    generatedNormal i = impactNormalWalshAt generatedWord i := by",
        "  fin_cases i",
    ])
    for index in range(13):
        lines.append(f"  · simpa [generatedNormal] using generatedNormal{index:02d}_eq")
    return lines


def emit_poly_eq() -> list[str]:
    all_defs = [
        "weightedQuadraticFromAffineData",
        "generatedNormal",
        "generatedWeights",
        "generatedScaledPoly",
        "ScaledWalshQuadratic.toQuadratic",
        "ScaledWalshQuadratic.coeffRat",
        "WalshQuadratic.add",
        "WalshQuadratic.scale",
        "WalshAffineVec3.dot",
        "WalshAffine.mul",
        "WalshAffine.add",
        "WalshAffine.const",
    ]
    for index in range(13):
        all_defs.extend([
            f"generatedNormal{index:02d}",
            f"generatedNormal{index:02d}_x",
            f"generatedNormal{index:02d}_y",
            f"generatedNormal{index:02d}_z",
        ])
    all_defs.extend([
        "generatedVector",
        f"{DEFAULT_TRACE_MODULE}.generatedVector",
        f"{DEFAULT_TRACE_MODULE}.generatedVector_x",
        f"{DEFAULT_TRACE_MODULE}.generatedVector_y",
        f"{DEFAULT_TRACE_MODULE}.generatedVector_z",
    ])
    defs = ", ".join(all_defs)
    return [
        "private theorem generatedPoly_eq :",
        "    weightedQuadraticFromAffineData generatedNormal generatedVector",
        "        generatedWeights = generatedScaledPoly.toQuadratic := by",
        "  apply WalshQuadratic.ext <;>",
        f"    norm_num [{defs}]",
    ]


def build_lean(*, rank: int, cube: dict[str, Any], trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9BS one-cube weighted trace-certificate smoke.",
        "",
        "This file instantiates `WeightedWalshQuadraticTraceCertificate` for the",
        "first DU.9BI rank-`6000745` weighted cube using the DU.9BR chained",
        "Walsh-vector trace root.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "",
        "abbrev generatedRank : Fin numPairWords :=",
        f"  {trace_module}.generatedRank",
        "",
        "abbrev generatedWord : PairWord :=",
        f"  {trace_module}.generatedWord",
        "",
        "abbrev generatedVector : WalshAffineVec3 :=",
        f"  {trace_module}.generatedVector",
        "",
        *emit_weights(cube["weights"], cube["support"]),
        "",
        *emit_cube(cube),
        *emit_scaled_poly(cube),
        "",
        *emit_int_nonpos(cube),
        "",
        *emit_normals(word),
        "",
        *emit_poly_eq(),
        "",
        "private def generatedTraceCert :",
        "    DenominatorCube.WeightedWalshQuadraticTraceCertificate",
        "      generatedRank generatedWeights generatedScaledPoly.toQuadratic where",
        "  word := generatedWord",
        f"  rank_word := {trace_module}.generatedUnrank_builds",
        "  vector := generatedVector",
        f"  vector_trace := {trace_module}.generatedTrace",
        "  normal := generatedNormal",
        "  normal_eq := generatedNormal_eq",
        "  poly_eq := generatedPoly_eq",
        "",
        "theorem generatedWeightedDirect_nonpos_on_cube",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    DenominatorCube.weightedDirectWalshDotAtRank",
        "        generatedRank mask generatedWeights <= 0 := by",
        "  have hcoeff := generatedTraceCert.coeffEval_eq_weightedDirect mask",
        "  have hnonpos := generatedScaledPoly_coeffEval_nonpos_on_cube hmask",
        "  rw [hcoeff] at hnonpos",
        "  exact hnonpos",
        "",
        "theorem weightedTraceCertOneCubeSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--cube-index", type=int, default=DEFAULT_CUBE_INDEX)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--trace-module", default=DEFAULT_TRACE_MODULE)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    cubes = {cube["index"]: cube for cube in profile["cubes"]}
    cube = cubes[args.cube_index]
    args.lean.write_text(
        build_lean(
            rank=args.rank,
            cube=cube,
            trace_module=args.trace_module,
            namespace=args.namespace,
        ),
        encoding="utf-8",
    )
    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9BS",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_index": args.cube_index,
        "cube_label": cube["label"],
        "support": cube["support"],
        "weights": cube["weights"],
        "trace_module": args.trace_module,
        "module": str(args.lean).removesuffix(".lean").replace("/", "."),
        "path": str(args.lean),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9BS Trace-Certificate One-Cube Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube index: `{args.cube_index}`",
            f"- cube label: `{cube['label']}`",
            f"- support: `{cube['support']}`",
            f"- weights: `{cube['weights']}`",
            f"- trace module: `{args.trace_module}`",
            f"- Lean module: `{payload['module']}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {args.lean}")


if __name__ == "__main__":
    main()
