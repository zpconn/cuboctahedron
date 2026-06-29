#!/usr/bin/env python3
"""Emit an all-cube weighted trace-certificate cover smoke for rank 6000745.

This is the DU.9BT scale test after the DU.9BS one-cube trace-certificate
smoke.  It consumes the same DU.9BI coefficient profile, shares the chained
Walsh-vector trace and generated impact-normal records once, then instantiates
one `WeightedWalshQuadraticTraceCertificate` per selected weighted cube.

The generated theorem surface reaches
`DenominatorCube.weightedDirectWalshDotAtRank <= 0` on every selected cube.
It remains smoke evidence, not final generated coverage.
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
from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    COEFF_FIELDS,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
    SIGN_BITS,
    emit_normals,
    lean_bool,
    lean_pair_id,
    lean_rat,
    lean_sign_bit,
)


DEFAULT_LEAN = (
    BASE_DIR / "WeightedDenomCubeRank6000745TraceCertCoverSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9bt_trace_cert_cover_smoke.json"
)
DEFAULT_NAMESPACE = (
    f"{BASE_MODULE}.WeightedDenomCubeRank6000745TraceCertCoverSmoke"
)


def cube_prefix(cube: dict[str, Any]) -> str:
    return f"cube{int(cube['index']):02d}"


def emit_weights_named(name: str, weights: list[str], support: list[int]) -> list[str]:
    values = [Fraction(0) for _ in range(13)]
    for impact, weight in zip(support, weights, strict=True):
        if not (1 <= impact <= 13):
            raise ValueError(f"expected 1-based internal impact, got {impact}")
        values[impact - 1] = Fraction(weight)
    lines = [f"private def {name}Weights : DenominatorCube.InternalImpactWeights where"]
    for index, value in enumerate(values, start=1):
        lines.append(f"  w{index} := {lean_rat(value)}")
    return lines


def emit_scaled_poly_named(name: str, cube: dict[str, Any]) -> list[str]:
    coeffs = cube["scaled_coefficients"]
    lines = [f"private def {name}ScaledPoly : ScaledWalshQuadratic where"]
    lines.append(f"  scale := {cube['coeff_scale']}")
    for field in COEFF_FIELDS:
        lines.append(f"  {field} := {coeffs.get(field, 0)}")
    return lines


def emit_cube_named(name: str, cube: dict[str, Any]) -> list[str]:
    fixed: dict[str, bool] = cube["fixed_bits"]
    lines = [
        f"-- rank {DEFAULT_RANK}, DU.9BI cube {cube['index']}, label {cube['label']}",
        f"private def {name}Cube : MaskSubcube where",
        "  fixed",
    ]
    for bit in SIGN_BITS:
        if bit in fixed:
            lines.append(f"    | {lean_sign_bit(bit)} => some {lean_bool(fixed[bit])}")
    lines.append("    | _ => none")
    lines.append("")
    for bit, value in fixed.items():
        lines.extend([
            f"private theorem {name}Cube_{bit}",
            f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
            f"    maskBitForPair mask {lean_pair_id(bit)} = {lean_bool(value)} := by",
            f"  simpa [{name}Cube, MaskSubcube.Member, SignBit.toPairId] using",
            f"    hmask {lean_sign_bit(bit)}",
            "",
        ])
    return lines


def emit_int_nonpos_named(name: str, cube: dict[str, Any]) -> list[str]:
    fixed = cube["fixed_bits"]
    free = [bit for bit in SIGN_BITS if bit not in fixed]
    lines = [
        f"private theorem {name}ScaledPoly_intEval_nonpos_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    {name}ScaledPoly.intEval mask <= 0 := by",
    ]
    for bit in fixed:
        lines.append(f"  have h_{bit} := {name}Cube_{bit} hmask")
    for idx, bit in enumerate(free):
        prefix = "  " if idx == 0 else "    "
        sep = " <;>" if idx + 1 == len(free) else " <;>"
        lines.append(
            f"{prefix}by_cases h_{bit} : maskBitForPair mask {lean_pair_id(bit)}{sep}"
        )
    names = [f"h_{bit}" for bit in SIGN_BITS]
    lines.extend([
        f"    norm_num [{name}ScaledPoly, ScaledWalshQuadratic.intEval,",
        "      SignBit.intValue, SignBit.toPairId, " + ", ".join(names) + "]",
        "",
        f"theorem {name}ScaledPoly_coeffEval_nonpos_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    {name}ScaledPoly.toQuadratic.coeffEval mask <= 0 :=",
        f"  {name}ScaledPoly.coeffEval_nonpos_of_intEval_nonpos",
        f"    (by norm_num [{name}ScaledPoly])",
        f"    ({name}ScaledPoly_intEval_nonpos_on_cube hmask)",
    ])
    return lines


def emit_poly_eq_named(name: str, trace_module: str) -> list[str]:
    all_defs = [
        "weightedQuadraticFromAffineData",
        "generatedNormal",
        f"{name}Weights",
        f"{name}ScaledPoly",
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
        f"{trace_module}.generatedVector",
        f"{trace_module}.generatedVector_x",
        f"{trace_module}.generatedVector_y",
        f"{trace_module}.generatedVector_z",
    ])
    defs = ", ".join(all_defs)
    return [
        f"private theorem {name}Poly_eq :",
        f"    weightedQuadraticFromAffineData generatedNormal generatedVector",
        f"        {name}Weights = {name}ScaledPoly.toQuadratic := by",
        "  apply WalshQuadratic.ext <;>",
        f"    norm_num [{defs}]",
    ]


def emit_trace_cert_named(name: str, trace_module: str) -> list[str]:
    return [
        f"private def {name}TraceCert :",
        f"    DenominatorCube.WeightedWalshQuadraticTraceCertificate",
        f"      generatedRank {name}Weights {name}ScaledPoly.toQuadratic where",
        "  word := generatedWord",
        f"  rank_word := {trace_module}.generatedUnrank_builds",
        "  vector := generatedVector",
        f"  vector_trace := {trace_module}.generatedTrace",
        "  normal := generatedNormal",
        "  normal_eq := generatedNormal_eq",
        f"  poly_eq := {name}Poly_eq",
        "",
        f"theorem {name}WeightedDirect_nonpos_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    DenominatorCube.weightedDirectWalshDotAtRank",
        f"        generatedRank mask {name}Weights <= 0 := by",
        f"  have hcoeff := {name}TraceCert.coeffEval_eq_weightedDirect mask",
        f"  have hnonpos := {name}ScaledPoly_coeffEval_nonpos_on_cube hmask",
        "  rw [hcoeff] at hnonpos",
        "  exact hnonpos",
    ]


def build_lean(
    *, rank: int, cubes: list[dict[str, Any]], trace_module: str, namespace: str
) -> str:
    word = exact.pair_word_at_rank(rank)
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9BT weighted trace-certificate cover smoke.",
        "",
        "This file instantiates one `WeightedWalshQuadraticTraceCertificate` for",
        "each selected DU.9BI rank-`6000745` weighted cube while sharing the",
        "DU.9BR chained Walsh-vector trace root and generated impact normals.",
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
        *emit_normals(word),
        "",
    ]
    for cube in cubes:
        name = cube_prefix(cube)
        lines.extend(emit_weights_named(name, cube["weights"], cube["support"]))
        lines.append("")
        lines.extend(emit_cube_named(name, cube))
        lines.extend(emit_scaled_poly_named(name, cube))
        lines.append("")
        lines.extend(emit_int_nonpos_named(name, cube))
        lines.append("")
        lines.extend(emit_poly_eq_named(name, trace_module))
        lines.append("")
        lines.extend(emit_trace_cert_named(name, trace_module))
        lines.append("")
    lines.extend([
        "theorem weightedTraceCertCoverSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--trace-module", default=DEFAULT_TRACE_MODULE)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if profile["rank"] != args.rank:
        raise SystemExit(f"unexpected profile rank {profile['rank']}")
    cubes = list(profile["cubes"])
    args.lean.write_text(
        build_lean(
            rank=args.rank,
            cubes=cubes,
            trace_module=args.trace_module,
            namespace=args.namespace,
        ),
        encoding="utf-8",
    )
    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9BT",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_count": len(cubes),
        "cube_indices": [cube["index"] for cube in cubes],
        "trace_module": args.trace_module,
        "module": str(args.lean).removesuffix(".lean").replace("/", "."),
        "path": str(args.lean),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9BT Trace-Certificate Cover Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube count: `{len(cubes)}`",
            f"- cube indices: `{[cube['index'] for cube in cubes]}`",
            f"- trace module: `{args.trace_module}`",
            f"- Lean module: `{payload['module']}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {args.lean} ({len(cubes)} cubes)")


if __name__ == "__main__":
    main()
