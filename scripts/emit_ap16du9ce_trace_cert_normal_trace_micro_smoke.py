#!/usr/bin/env python3
"""Emit a one-normal smoke module using `ImpactNormalWalshTrace`.

DU.9CC measured the direct generated normal proof.  DU.9CD added a generic
trace surface that splits generated normal checking into a prefix-matrix fact
and a normal-from-prefix fact.  This DU.9CE emitter tests that surface on the
same rank/index fixture as DU.9CC.
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
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
)
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    emit_walsh_vec,
    lean_rat,
)
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertNormalTraceMicro"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9ce_trace_cert_normal_trace_micro_smoke.json"
)


def module_name() -> str:
    return f"{BASE_MODULE}.{BASE_NAME}Smoke"


def lean_path() -> Path:
    return BASE_DIR / f"{BASE_NAME}Smoke.lean"


def mat_entry(matrix: object, row: int, col: int) -> Fraction:
    if hasattr(matrix, "a"):
        return Fraction(matrix.a[row][col])  # type: ignore[attr-defined]
    return Fraction(matrix[row][col])  # type: ignore[index]


def emit_mat3(name: str, matrix: object) -> list[str]:
    fields = [
        ("m00", mat_entry(matrix, 0, 0)),
        ("m01", mat_entry(matrix, 0, 1)),
        ("m02", mat_entry(matrix, 0, 2)),
        ("m10", mat_entry(matrix, 1, 0)),
        ("m11", mat_entry(matrix, 1, 1)),
        ("m12", mat_entry(matrix, 1, 2)),
        ("m20", mat_entry(matrix, 2, 0)),
        ("m21", mat_entry(matrix, 2, 1)),
        ("m22", mat_entry(matrix, 2, 2)),
    ]
    lines = [f"def {name} : Mat3 Rat where"]
    for field, value in fields:
        lines.append(f"  {field} := {lean_rat(Fraction(value))}")
    return lines


def build_module(*, rank: int, trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    index = 0
    pair_id = word[index]
    prefix_m = exact.prefix_matrices(word)[index]
    normal_name = f"generatedNormal{index:02d}"
    prefix_name = f"generatedPrefixM{index:02d}"
    normal_coeffs = symbolic_impact_normal(word, index)

    prefix_defs = ", ".join([
        prefix_name,
        "pairPrefixLinearNat",
        "matId",
        "generatedWord",
    ])
    normal_defs = ", ".join([
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

    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9CE one-normal trace-style smoke module.",
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
        *emit_mat3(prefix_name, prefix_m),
        "",
        *emit_walsh_vec(normal_name, normal_coeffs, visibility=""),
        "",
        f"theorem generatedWord_get_{index:02d} :",
        f"    generatedWord.get ({index} : WordIndex) = PairId.{pair_id} := by",
        "  rfl",
        "",
        f"theorem generatedPrefixM{index:02d}_eq :",
        f"    {prefix_name} = pairPrefixLinearNat generatedWord {index} := by",
        f"  norm_num [{prefix_defs}]",
        "",
        f"theorem generatedNormal{index:02d}_eq_from_prefix :",
        f"    {normal_name} =",
        f"      impactNormalWalshFromPrefix generatedWord ({index} : WordIndex) {prefix_name} := by",
        "  apply WalshAffineVec3.ext <;>",
        "    apply WalshAffine.ext <;>",
        f"    simp [{normal_defs}] <;>",
        f"    norm_num [{normal_defs}]",
        "",
        f"private def generatedNormal{index:02d}Trace :",
        f"    ImpactNormalWalshTrace generatedWord ({index} : WordIndex) {normal_name} where",
        f"  prefixM := {prefix_name}",
        f"  prefix_eq := generatedPrefixM{index:02d}_eq",
        f"  normal_eq_from_prefix := generatedNormal{index:02d}_eq_from_prefix",
        "",
        f"theorem generatedNormal{index:02d}_eq :",
        f"    {normal_name} = impactNormalWalshAt generatedWord ({index} : WordIndex) :=",
        f"  generatedNormal{index:02d}Trace.normal_eq_impactNormalWalshAt",
        "",
        "theorem normalTraceMicroSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--trace-module", default=DEFAULT_TRACE_MODULE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    namespace = module_name()
    path = lean_path()
    path.write_text(
        build_module(rank=args.rank, trace_module=args.trace_module, namespace=namespace),
        encoding="utf-8",
    )

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9CE",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "normal_index": 0,
        "trace_module": args.trace_module,
        "module": namespace,
        "path": str(path),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CE Normal Trace Micro Smoke",
            "",
            f"- rank: `{args.rank}`",
            "- normal index: `0`",
            f"- module: `{namespace}`",
            f"- path: `{path}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path} with one trace-style generated-normal proof")


if __name__ == "__main__":
    main()
