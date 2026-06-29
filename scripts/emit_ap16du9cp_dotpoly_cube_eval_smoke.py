#!/usr/bin/env python3
"""Emit a cube00 dot-polynomial cube-evaluation smoke.

DU.9CN proved full equality of all 22 `WalshQuadratic` coefficients.  This
DU.9CP smoke tests a more semantic target: for masks in the selected cube,
prove only the evaluated dot polynomial is nonpositive.  If this is cheaper,
future generated leaves can avoid proving unused polynomial coefficients.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    SIGN_BITS,
    lean_pair_id,
)
from emit_ap16du9bt_trace_cert_cover_smoke import (  # noqa: E402
    cube_prefix,
    emit_cube_named,
    emit_int_nonpos_named,
    emit_scaled_poly_named,
    emit_weights_named,
)
from emit_ap16du9ci_trace_cert_normaltrace_chain_smoke import (  # noqa: E402
    module_name as chain_module_name,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertDotPolyCubeEval"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9cp_dotpoly_cube_eval_smoke.json"
)


def module_name() -> str:
    return f"{BASE_MODULE}.{BASE_NAME}Smoke"


def lean_path() -> Path:
    return BASE_DIR / f"{BASE_NAME}Smoke.lean"


def dot_poly_eval_nonpos(name: str, data_module: str, support: list[int], fixed_bits: dict[str, bool]) -> list[str]:
    free_bits = [bit for bit in SIGN_BITS if bit not in fixed_bits]
    defs = [
        "weightedQuadraticFromDotDataCoeffs",
        "weightedQuadraticFromDotDataCoeff",
        f"{data_module}.generatedDot",
        f"{name}Weights",
        f"{name}ScaledPoly",
        "ScaledWalshQuadratic.toQuadratic",
        "ScaledWalshQuadratic.coeffRat",
        "WalshQuadratic.coeffEval",
        "SignBit.value",
        "SignBit.toPairId",
    ]
    for one_based_index in support:
        defs.append(f"{data_module}.generatedDot{one_based_index - 1:02d}")
    defs_text = ", ".join(defs)

    lines: list[str] = [
        f"private theorem {name}DotPoly_coeffEval_eq_scaled_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    (weightedQuadraticFromDotData",
        f"        {data_module}.generatedDot {name}Weights).coeffEval mask =",
        f"      {name}ScaledPoly.toQuadratic.coeffEval mask := by",
    ]
    for bit in fixed_bits:
        lines.append(f"  have h_{bit} := {name}Cube_{bit} hmask")
    lines.append("  rw [weightedQuadraticFromDotData_eq_coeffs]")
    for idx, bit in enumerate(free_bits):
        prefix = "  " if idx == 0 else "    "
        sep = " <;>" if idx + 1 == len(free_bits) else " <;>"
        lines.append(
            f"{prefix}by_cases h_{bit} : maskBitForPair mask {lean_pair_id(bit)}{sep}"
        )
    names = [f"h_{bit}" for bit in SIGN_BITS]
    lines.extend([
        f"    norm_num [{defs_text}, " + ", ".join(names) + "]",
        "",
        f"theorem {name}DotPoly_coeffEval_nonpos_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    (weightedQuadraticFromDotData",
        f"        {data_module}.generatedDot {name}Weights).coeffEval mask <= 0 := by",
        f"  rw [{name}DotPoly_coeffEval_eq_scaled_on_cube hmask]",
        f"  exact {name}ScaledPoly_coeffEval_nonpos_on_cube hmask",
    ])
    return lines


def build_module(*, cube: dict, data_module: str, namespace: str) -> str:
    name = cube_prefix(cube)
    fixed_bits = dict(cube["fixed_bits"])
    lines = [
        f"import {data_module}",
        "",
        "/-! Generated DU.9CP cube00 dot-polynomial cube-evaluation smoke module. -/",
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
        *emit_weights_named(name, cube["weights"], cube["support"]),
        "",
        *emit_cube_named(name, cube),
        *emit_scaled_poly_named(name, cube),
        "",
        *emit_int_nonpos_named(name, cube),
        "",
        *dot_poly_eval_nonpos(name, data_module, list(cube["support"]), fixed_bits),
        "",
        "theorem dotPolyCubeEvalSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--cube-index", type=int, default=0)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if profile["rank"] != args.rank:
        raise SystemExit(f"unexpected profile rank {profile['rank']}")
    cubes = list(profile["cubes"])
    if args.cube_index < 0 or args.cube_index >= len(cubes):
        raise SystemExit(f"cube index {args.cube_index} out of range 0..{len(cubes) - 1}")

    cube = cubes[args.cube_index]
    namespace = module_name()
    data_module = chain_module_name("Data")
    path = lean_path()
    path.write_text(
        build_module(cube=cube, data_module=data_module, namespace=namespace),
        encoding="utf-8",
    )

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9CP",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_index": args.cube_index,
        "support": cube["support"],
        "fixed_bits": cube["fixed_bits"],
        "data_module": data_module,
        "module": namespace,
        "path": str(path),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CP Dot-Polynomial Cube-Eval Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube index: `{args.cube_index}`",
            f"- support: `{cube['support']}`",
            f"- fixed bits: `{cube['fixed_bits']}`",
            f"- data module: `{data_module}`",
            f"- module: `{namespace}`",
            f"- path: `{path}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path} with dot-polynomial cube-eval proof")


if __name__ == "__main__":
    main()
