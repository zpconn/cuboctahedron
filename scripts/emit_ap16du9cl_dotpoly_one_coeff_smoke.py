#!/usr/bin/env python3
"""Emit a cube00 one-coefficient dot-polynomial smoke module.

DU.9CJ/DU.9CK show that cube-local dot-polynomial equality dominates the
weighted denominator cube proof cost.  This DU.9CL microtarget proves only the
constant coefficient equality for cube00, using the traced dot-data module.
It asks whether splitting the 22-field `WalshQuadratic.ext` proof into smaller
coefficient facts can materially reduce cost.
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
)
from emit_ap16du9bt_trace_cert_cover_smoke import (  # noqa: E402
    cube_prefix,
    emit_scaled_poly_named,
    emit_weights_named,
)
from emit_ap16du9ci_trace_cert_normaltrace_chain_smoke import (  # noqa: E402
    module_name as chain_module_name,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertDotPolyOneCoeff"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9cl_dotpoly_one_coeff_smoke.json"
)


def module_name() -> str:
    return f"{BASE_MODULE}.{BASE_NAME}Smoke"


def lean_path() -> Path:
    return BASE_DIR / f"{BASE_NAME}Smoke.lean"


def dot_poly_c_eq(name: str, data_module: str, support: list[int]) -> list[str]:
    defs = [
        "weightedQuadraticFromDotData",
        f"{data_module}.generatedDot",
        f"{name}Weights",
        f"{name}ScaledPoly",
        "ScaledWalshQuadratic.toQuadratic",
        "ScaledWalshQuadratic.coeffRat",
        "WalshQuadratic.add",
        "WalshQuadratic.scale",
    ]
    for one_based_index in support:
        defs.append(f"{data_module}.generatedDot{one_based_index - 1:02d}")
    defs_text = ", ".join(defs)
    return [
        f"private theorem {name}DotPoly_c_eq :",
        f"    (weightedQuadraticFromDotData",
        f"        {data_module}.generatedDot {name}Weights).c =",
        f"      ({name}ScaledPoly.toQuadratic).c := by",
        f"  norm_num [{defs_text}]",
    ]


def build_module(*, cube: dict, data_module: str, namespace: str) -> str:
    name = cube_prefix(cube)
    lines = [
        f"import {data_module}",
        "",
        "/-! Generated DU.9CL cube00 one-coefficient dot-polynomial smoke module. -/",
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
        *emit_scaled_poly_named(name, cube),
        "",
        *dot_poly_c_eq(name, data_module, list(cube["support"])),
        "",
        "theorem dotPolyOneCoeffSmoke_builds : True := by",
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
        "phase": "Phase 6Z.6K.8AP.16DU.9CL",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_index": args.cube_index,
        "coefficient": "c",
        "support": cube["support"],
        "data_module": data_module,
        "module": namespace,
        "path": str(path),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CL Dot-Polynomial One-Coefficient Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube index: `{args.cube_index}`",
            "- coefficient: `c`",
            f"- support: `{cube['support']}`",
            f"- data module: `{data_module}`",
            f"- module: `{namespace}`",
            f"- path: `{path}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path} with one-coefficient dot-polynomial proof")


if __name__ == "__main__":
    main()
