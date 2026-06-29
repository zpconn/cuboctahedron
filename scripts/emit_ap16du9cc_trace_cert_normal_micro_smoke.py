#!/usr/bin/env python3
"""Emit a one-normal smoke module.

DU.9CA/DU.9CB compared coefficient-dot and old-dot proof styles, but both
included the generated normal proof.  This DU.9CC emitter isolates one
`generatedNormal = impactNormalWalshAt ...` proof so we can estimate whether
normal proof replay is the dominant cost in the one-dot microtargets.
"""

from __future__ import annotations

import argparse
import json
import sys
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
    normal_eq_defs,
)
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    emit_walsh_vec,
)
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertNormalMicro"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9cc_trace_cert_normal_micro_smoke.json"
)


def module_name() -> str:
    return f"{BASE_MODULE}.{BASE_NAME}Smoke"


def lean_path() -> Path:
    return BASE_DIR / f"{BASE_NAME}Smoke.lean"


def build_module(*, rank: int, trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    index = 0
    pair_id = word[index]
    normal_name = f"generatedNormal{index:02d}"
    normal_coeffs = symbolic_impact_normal(word, index)

    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9CC one-normal smoke module.",
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
        *emit_walsh_vec(normal_name, normal_coeffs, visibility=""),
        "",
        f"theorem generatedWord_get_{index:02d} :",
        f"    generatedWord.get ({index} : WordIndex) = PairId.{pair_id} := by",
        "  rfl",
        "",
        f"theorem generatedNormal{index:02d}_eq :",
        f"    {normal_name} = impactNormalWalshAt generatedWord ({index} : WordIndex) := by",
        "  apply WalshAffineVec3.ext <;>",
        "    apply WalshAffine.ext <;>",
        f"    simp [{normal_eq_defs(normal_name, index)}] <;>",
        f"    norm_num [{normal_eq_defs(normal_name, index)}]",
        "",
        "theorem normalMicroSmoke_builds : True := by",
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
        "phase": "Phase 6Z.6K.8AP.16DU.9CC",
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
            "# Phase 6Z.6K.8AP.16DU.9CC Normal Micro Smoke",
            "",
            f"- rank: `{args.rank}`",
            "- normal index: `0`",
            f"- module: `{namespace}`",
            f"- path: `{path}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path} with one generated-normal proof")


if __name__ == "__main__":
    main()
