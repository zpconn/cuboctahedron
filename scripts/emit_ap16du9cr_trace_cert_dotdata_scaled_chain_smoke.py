#!/usr/bin/env python3
"""Emit an 11-cube dot-data trace chain using scaled coefficient goals.

This DU.9CR scale test reuses the accepted DU.9CI traced-normal shared Data
module and emits only the serial cube chain.  Each cube uses the DU.9CQ
`ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs` bridge instead of the
older rational field equality proof.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
)
from emit_ap16du9bt_trace_cert_cover_smoke import (  # noqa: E402
    cube_prefix,
    emit_cube_named,
    emit_int_nonpos_named,
    emit_scaled_poly_named,
    emit_weights_named,
)
from emit_ap16du9bw_trace_cert_dotdata_chain_smoke import (  # noqa: E402
    build_root_module,
    emit_trace_cert_named,
)
from emit_ap16du9ci_trace_cert_normaltrace_chain_smoke import (  # noqa: E402
    module_name as data_chain_module_name,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertDotDataScaledChain"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9cr_trace_cert_dotdata_scaled_chain_smoke.json"
)


def module_name(suffix: str) -> str:
    return f"{BASE_MODULE}.{BASE_NAME}{suffix}Smoke"


def lean_path(suffix: str) -> Path:
    return BASE_DIR / f"{BASE_NAME}{suffix}Smoke.lean"


def emit_dot_poly_eq_scaled_named(name: str, data_module: str, support: list[int]) -> list[str]:
    defs = [
        "weightedQuadraticFromDotDataCoeffs",
        "weightedQuadraticFromDotDataCoeff",
        f"{data_module}.generatedDot",
        f"{name}Weights",
        f"{name}ScaledPoly",
    ]
    for one_based_index in support:
        defs.append(f"{data_module}.generatedDot{one_based_index - 1:02d}")
    defs_text = ", ".join(defs)
    return [
        f"private theorem {name}DotPoly_eq :",
        f"    weightedQuadraticFromDotData",
        f"        {data_module}.generatedDot {name}Weights =",
        f"      {name}ScaledPoly.toQuadratic := by",
        "  rw [weightedQuadraticFromDotData_eq_coeffs]",
        f"  apply ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs {name}ScaledPoly",
        f"    (by norm_num [{name}ScaledPoly]) <;>",
        f"    norm_num [{defs_text}]",
        "",
        f"private theorem {name}Poly_eq :",
        f"    weightedQuadraticFromAffineData",
        f"        {data_module}.generatedNormal {data_module}.generatedVector",
        f"        {name}Weights = {name}ScaledPoly.toQuadratic := by",
        "  exact",
        "    (weightedQuadraticFromAffineData_eq_fromDotData",
        f"      (normal := {data_module}.generatedNormal)",
        f"      (vector := {data_module}.generatedVector)",
        f"      (dotPoly := {data_module}.generatedDot)",
        f"      (weights := {name}Weights)",
        f"      {data_module}.generatedDot_eq).trans",
        f"      {name}DotPoly_eq",
    ]


def build_cube_module(
    *,
    cube: dict[str, Any],
    index: int,
    import_module: str,
    data_module: str,
    trace_module: str,
    namespace: str,
) -> str:
    name = cube_prefix(cube)
    lines = [
        f"import {import_module}",
        "",
        f"/-! Generated DU.9CR dot-data scaled chained cube module {index}. -/",
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
        *emit_dot_poly_eq_scaled_named(name, data_module, list(cube["support"])),
        "",
        *emit_trace_cert_named(name, data_module, trace_module),
        "",
        f"theorem dotDataScaledChainCube{index:02d}Smoke_builds : True := by",
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
    parser.add_argument("--trace-module", default=DEFAULT_TRACE_MODULE)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if profile["rank"] != args.rank:
        raise SystemExit(f"unexpected profile rank {profile['rank']}")
    cubes = list(profile["cubes"])

    data_module = data_chain_module_name("Data")
    previous_module = data_module
    cube_modules: list[str] = []
    for index, cube in enumerate(cubes):
        suffix = f"Cube{index:02d}"
        cube_module = module_name(suffix)
        lean_path(suffix).write_text(
            build_cube_module(
                cube=cube,
                index=index,
                import_module=previous_module,
                data_module=data_module,
                trace_module=args.trace_module,
                namespace=cube_module,
            ),
            encoding="utf-8",
        )
        cube_modules.append(cube_module)
        previous_module = cube_module

    root_module = module_name("")
    lean_path("").write_text(
        build_root_module(import_module=previous_module, namespace=root_module),
        encoding="utf-8",
    )

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9CR",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_count": len(cubes),
        "trace_module": args.trace_module,
        "data_module": data_module,
        "cube_modules": cube_modules,
        "root_module": root_module,
        "root_path": str(lean_path("")),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CR Trace-Certificate Dot-Data Scaled Chain Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube count: `{len(cubes)}`",
            f"- data module: `{data_module}`",
            f"- root module: `{root_module}`",
            f"- root path: `{lean_path('')}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {lean_path('')} via {len(cubes)} scaled dot-data chained cube modules")


if __name__ == "__main__":
    main()
