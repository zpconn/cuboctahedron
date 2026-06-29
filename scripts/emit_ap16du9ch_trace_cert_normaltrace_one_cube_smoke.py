#!/usr/bin/env python3
"""Emit a one-cube dot-data smoke using traced impact normals.

DU.9BW keeps weighted-cube checking memory-safe by moving the 13 dot
polynomials into a shared Data module, but that Data module still proves every
generated normal by unfolding `impactNormalWalshAt` directly.  DU.9CD/9CG
showed that `ImpactNormalWalshTrace` is much faster for nontrivial prefixes.

This DU.9CH emitter tests that improvement in the Data-chain setting, but only
for cube 0.  It is a bounded benchmark, not final generated coverage.
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

import check_certificates_independently as exact  # noqa: E402
from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
)
from emit_ap16du9bw_trace_cert_dotdata_chain_smoke import (  # noqa: E402
    build_cube_module,
    emit_dot_data,
)
from emit_ap16du9ce_trace_cert_normal_trace_micro_smoke import (  # noqa: E402
    emit_mat3,
)
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    emit_walsh_vec,
)
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertNormalTraceDataOneCube"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9ch_trace_cert_normaltrace_one_cube_smoke.json"
)


def module_name(suffix: str) -> str:
    return f"{BASE_MODULE}.{BASE_NAME}{suffix}Smoke"


def lean_path(suffix: str) -> Path:
    return BASE_DIR / f"{BASE_NAME}{suffix}Smoke.lean"


def prefix_defs(prefix_name: str) -> str:
    return ", ".join([
        prefix_name,
        "pairPrefixLinearNat",
        "generatedWord",
        "canonicalNormalQ",
        "matMul",
        "matId",
        "reflM",
        "matSub",
        "scalarMat",
        "outer",
        "dot",
    ])


def normal_from_prefix_defs(normal_name: str, prefix_name: str, index: int) -> str:
    return ", ".join([
        normal_name,
        f"{normal_name}_x",
        f"{normal_name}_y",
        f"{normal_name}_z",
        "impactNormalWalshFromPrefix",
        prefix_name,
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
        "canonicalNormalQ",
        "scalarMul",
        "matVec",
        "matId",
    ])


def emit_normals_trace_public(word: list[str]) -> list[str]:
    prefix_matrices = exact.prefix_matrices(word)
    lines: list[str] = []
    for index, pair_id in enumerate(word):
        normal_name = f"generatedNormal{index:02d}"
        prefix_name = f"generatedPrefixM{index:02d}"
        lines.extend(emit_mat3(prefix_name, prefix_matrices[index]))
        lines.append("")
        lines.extend(emit_walsh_vec(
            normal_name,
            symbolic_impact_normal(word, index),
            visibility="",
        ))
        lines.append("")
        lines.extend([
            f"theorem generatedWord_get_{index:02d} :",
            f"    generatedWord.get ({index} : WordIndex) = PairId.{pair_id} := by",
            "  rfl",
            "",
            f"theorem generatedPrefixM{index:02d}_eq :",
            f"    {prefix_name} = pairPrefixLinearNat generatedWord {index} := by",
            f"  norm_num [{prefix_defs(prefix_name)}]",
            "",
            f"theorem generatedNormal{index:02d}_eq_from_prefix :",
            f"    {normal_name} =",
            f"      impactNormalWalshFromPrefix generatedWord ({index} : WordIndex) {prefix_name} := by",
            "  apply WalshAffineVec3.ext <;>",
            "    apply WalshAffine.ext <;>",
            f"    simp [{normal_from_prefix_defs(normal_name, prefix_name, index)}] <;>",
            f"    norm_num [{normal_from_prefix_defs(normal_name, prefix_name, index)}]",
            "",
        ])
    lines.extend([
        "def generatedNormal : WordIndex -> WalshAffineVec3",
    ])
    for index in range(13):
        lines.append(f"  | ⟨{index}, _⟩ => generatedNormal{index:02d}")
    lines.append("")
    lines.extend([
        "def generatedPrefixM : WordIndex -> Mat3 Rat",
    ])
    for index in range(13):
        lines.append(f"  | ⟨{index}, _⟩ => generatedPrefixM{index:02d}")
    lines.append("")
    lines.extend([
        "theorem generatedPrefixM_eq",
        "    (i : WordIndex) :",
        "    generatedPrefixM i = pairPrefixLinearNat generatedWord i.val := by",
        "  fin_cases i",
    ])
    for index in range(13):
        lines.append(
            f"  · simpa [generatedPrefixM] using generatedPrefixM{index:02d}_eq"
        )
    lines.append("")
    lines.extend([
        "theorem generatedNormal_eq_from_prefix",
        "    (i : WordIndex) :",
        "    generatedNormal i = impactNormalWalshFromPrefix generatedWord i (generatedPrefixM i) := by",
        "  fin_cases i",
    ])
    for index in range(13):
        lines.append(
            f"  · simpa [generatedNormal, generatedPrefixM] using generatedNormal{index:02d}_eq_from_prefix"
        )
    lines.extend([
        "",
        "private def generatedNormalTrace :",
        "    ImpactNormalWalshVectorTrace generatedWord generatedNormal where",
        "  prefixM := generatedPrefixM",
        "  prefix_eq := generatedPrefixM_eq",
        "  normal_eq_from_prefix := generatedNormal_eq_from_prefix",
        "",
        "theorem generatedNormal_eq",
        "    (i : WordIndex) :",
        "    generatedNormal i = impactNormalWalshAt generatedWord i :=",
        "  generatedNormalTrace.normal_eq_impactNormalWalshAt i",
    ])
    return lines


def build_data_module(*, rank: int, trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9CH shared dot-data module using traced impact normals.",
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
        *emit_normals_trace_public(word),
        "",
        *emit_dot_data(word, trace_module),
        "",
        "theorem normalTraceDataOneCubeDataSmoke_builds : True := by",
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

    cube_suffix = f"Cube{args.cube_index:02d}"
    cube_module = module_name(cube_suffix)
    lean_path(cube_suffix).write_text(
        build_cube_module(
            cube=cubes[args.cube_index],
            index=args.cube_index,
            import_module=data_module,
            data_module=data_module,
            trace_module=args.trace_module,
            namespace=cube_module,
        ),
        encoding="utf-8",
    )

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9CH",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_index": args.cube_index,
        "trace_module": args.trace_module,
        "data_module": data_module,
        "cube_module": cube_module,
        "cube_path": str(lean_path(cube_suffix)),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CH Normal-Trace Data One-Cube Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube index: `{args.cube_index}`",
            f"- data module: `{data_module}`",
            f"- cube module: `{cube_module}`",
            f"- cube path: `{lean_path(cube_suffix)}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {lean_path(cube_suffix)} using traced normal data")


if __name__ == "__main__":
    main()
