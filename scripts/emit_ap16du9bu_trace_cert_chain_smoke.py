#!/usr/bin/env python3
"""Emit chained per-cube weighted trace-certificate smoke modules.

DU.9BT showed that one module containing all 11 rank-6000745 weighted
trace-certificate cubes crosses the 8 GiB focused-build guard.  This DU.9BU
emitter keeps the same proof surface but changes only the source topology:

* `...ChainDataSmoke` exports the shared rank, word, vector, normals, and
  normal correctness proof.
* `...ChainCube00Smoke` imports Data and proves cube 0.
* `...ChainCube01Smoke` imports Cube00 and proves cube 1.
* ...
* `...ChainCube10Smoke` imports Cube09 and proves cube 10.
* `...ChainSmoke` imports Cube10 only.

The chain should force a cold root build to compile heavy cube proofs
serially while keeping each cube module close to the DU.9BS one-cube memory
band.
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

import check_certificates_independently as exact  # noqa: E402
from generate_ap16by_walsh_symbolic_all_smoke import emit_walsh_vec  # noqa: E402
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)
from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
    normal_eq_defs,
)
from emit_ap16du9bt_trace_cert_cover_smoke import (  # noqa: E402
    cube_prefix,
    emit_cube_named,
    emit_int_nonpos_named,
    emit_scaled_poly_named,
    emit_weights_named,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertChain"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9bu_trace_cert_chain_smoke.json"
)


def module_name(suffix: str) -> str:
    return f"{BASE_MODULE}.{BASE_NAME}{suffix}Smoke"


def lean_path(suffix: str) -> Path:
    return BASE_DIR / f"{BASE_NAME}{suffix}Smoke.lean"


def emit_normals_public(word: list[str]) -> list[str]:
    lines: list[str] = []
    for index, pair_id in enumerate(word):
        name = f"generatedNormal{index:02d}"
        lines.extend(emit_walsh_vec(name, symbolic_impact_normal(word, index), visibility=""))
        lines.append("")
        lines.extend([
            f"theorem generatedWord_get_{index:02d} :",
            f"    generatedWord.get ({index} : WordIndex) = PairId.{pair_id} := by",
            "  rfl",
            "",
            f"theorem generatedNormal{index:02d}_eq :",
            f"    {name} = impactNormalWalshAt generatedWord ({index} : WordIndex) := by",
            "  apply WalshAffineVec3.ext <;>",
            "    apply WalshAffine.ext <;>",
            f"    simp [{normal_eq_defs(name, index)}] <;>",
            f"    norm_num [{normal_eq_defs(name, index)}]",
            "",
        ])
    lines.extend([
        "def generatedNormal : WordIndex -> WalshAffineVec3",
    ])
    for index in range(13):
        lines.append(f"  | ⟨{index}, _⟩ => generatedNormal{index:02d}")
    lines.append("")
    lines.extend([
        "theorem generatedNormal_eq",
        "    (i : WordIndex) :",
        "    generatedNormal i = impactNormalWalshAt generatedWord i := by",
        "  fin_cases i",
    ])
    for index in range(13):
        lines.append(f"  · simpa [generatedNormal] using generatedNormal{index:02d}_eq")
    return lines


def build_data_module(*, rank: int, trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9BU shared data module for chained weighted trace",
        "certificate smoke modules.",
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
        *emit_normals_public(word),
        "",
        "theorem chainDataSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def emit_poly_eq_named(name: str, data_module: str, trace_module: str) -> list[str]:
    all_defs = [
        "weightedQuadraticFromAffineData",
        f"{data_module}.generatedNormal",
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
            f"{data_module}.generatedNormal{index:02d}",
            f"{data_module}.generatedNormal{index:02d}_x",
            f"{data_module}.generatedNormal{index:02d}_y",
            f"{data_module}.generatedNormal{index:02d}_z",
        ])
    all_defs.extend([
        f"{data_module}.generatedVector",
        f"{trace_module}.generatedVector",
        f"{trace_module}.generatedVector_x",
        f"{trace_module}.generatedVector_y",
        f"{trace_module}.generatedVector_z",
    ])
    defs = ", ".join(all_defs)
    return [
        f"private theorem {name}Poly_eq :",
        f"    weightedQuadraticFromAffineData",
        f"        {data_module}.generatedNormal {data_module}.generatedVector",
        f"        {name}Weights = {name}ScaledPoly.toQuadratic := by",
        "  apply WalshQuadratic.ext <;>",
        f"    norm_num [{defs}]",
    ]


def emit_trace_cert_named(name: str, data_module: str, trace_module: str) -> list[str]:
    return [
        f"private def {name}TraceCert :",
        f"    DenominatorCube.WeightedWalshQuadraticTraceCertificate",
        f"      {data_module}.generatedRank {name}Weights {name}ScaledPoly.toQuadratic where",
        f"  word := {data_module}.generatedWord",
        f"  rank_word := {trace_module}.generatedUnrank_builds",
        f"  vector := {data_module}.generatedVector",
        f"  vector_trace := {trace_module}.generatedTrace",
        f"  normal := {data_module}.generatedNormal",
        f"  normal_eq := {data_module}.generatedNormal_eq",
        f"  poly_eq := {name}Poly_eq",
        "",
        f"theorem {name}WeightedDirect_nonpos_on_cube",
        f"    {{mask : SignMask}} (hmask : {name}Cube.Member mask) :",
        f"    DenominatorCube.weightedDirectWalshDotAtRank",
        f"        {data_module}.generatedRank mask {name}Weights <= 0 := by",
        f"  have hcoeff := {name}TraceCert.coeffEval_eq_weightedDirect mask",
        f"  have hnonpos := {name}ScaledPoly_coeffEval_nonpos_on_cube hmask",
        "  rw [hcoeff] at hnonpos",
        "  exact hnonpos",
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
        f"/-! Generated DU.9BU chained cube module {index}. -/",
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
        *emit_poly_eq_named(name, data_module, trace_module),
        "",
        *emit_trace_cert_named(name, data_module, trace_module),
        "",
        f"theorem chainCube{index:02d}Smoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def build_root_module(*, import_module: str, namespace: str) -> str:
    return "\n".join([
        f"import {import_module}",
        "",
        "/-! Generated DU.9BU chained weighted trace-certificate root smoke. -/",
        "",
        f"namespace {namespace}",
        "",
        "theorem weightedTraceCertChainSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])


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

    data_suffix = "Data"
    data_module = module_name(data_suffix)
    lean_path(data_suffix).write_text(
        build_data_module(
            rank=args.rank,
            trace_module=args.trace_module,
            namespace=data_module,
        ),
        encoding="utf-8",
    )

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
        "phase": "Phase 6Z.6K.8AP.16DU.9BU",
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
            "# Phase 6Z.6K.8AP.16DU.9BU Trace-Certificate Chain Smoke",
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
    print(f"wrote {lean_path('')} via {len(cubes)} chained cube modules")


if __name__ == "__main__":
    main()
