#!/usr/bin/env python3
"""Emit chained weighted trace certificates with coefficient-level dot proofs.

DU.9BY added `WalshDotCoefficientFacts.lean`, whose reconstruction theorem
turns 22 small coefficient equations into a full `WalshAffineVec3.dot`
equality.  This DU.9BZ emitter uses that API in the DU.9BW topology:

  Data(with all dot polys and coefficient proofs) -> Cube00 -> ... -> Root

The experiment measures whether coefficient-level generated proofs are faster
than DU.9BW's full `WalshAffineVec3.dot` unfolding proof.
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
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
)
from emit_ap16du9bw_trace_cert_dotdata_chain_smoke import (  # noqa: E402
    build_cube_module,
    build_root_module,
    emit_dot_poly_eq_named,
    emit_normals_public,
    emit_quadratic_public,
)
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    QUADRATIC_FIELDS,
    dot_coefficients,
)
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)
from profile_ap16ce_symbolic_translation_vector_recurrence import (  # noqa: E402
    symbolic_translation_vector,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertCoeffDotChain"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9bz_trace_cert_coeff_dot_chain_smoke.json"
)


def module_name(suffix: str) -> str:
    return f"{BASE_MODULE}.{BASE_NAME}{suffix}Smoke"


def lean_path(suffix: str) -> Path:
    return BASE_DIR / f"{BASE_NAME}{suffix}Smoke.lean"


def dot_coeff_formula_defs(index: int, field: str, dot_name: str, trace_module: str) -> str:
    return ", ".join([
        f"WalshAffineVec3.dot_{field}",
        f"WalshAffine.mul_{field}",
        f"generatedNormal{index:02d}",
        f"generatedNormal{index:02d}_x",
        f"generatedNormal{index:02d}_y",
        f"generatedNormal{index:02d}_z",
        "generatedVector",
        f"{trace_module}.generatedVector",
        f"{trace_module}.generatedVector_x",
        f"{trace_module}.generatedVector_y",
        f"{trace_module}.generatedVector_z",
        dot_name,
    ])


def emit_dot_coeff_eq(index: int, trace_module: str) -> list[str]:
    dot_name = f"generatedDot{index:02d}"
    lines = [
        f"theorem generatedDot{index:02d}_eq :",
        f"    WalshAffineVec3.dot generatedNormal{index:02d} generatedVector =",
        f"      generatedDot{index:02d} := by",
        "  exact",
        "    WalshAffineVec3.dot_eq_of_coeffs",
        f"      (a := generatedNormal{index:02d})",
        "      (b := generatedVector)",
        f"      (q := generatedDot{index:02d})",
    ]
    for field, _subset in QUADRATIC_FIELDS:
        defs = dot_coeff_formula_defs(index, field, dot_name, trace_module)
        lines.append(f"      (by norm_num [{defs}])")
    lines.append("")
    return lines


def emit_dot_data(word: list[str], trace_module: str) -> list[str]:
    vector_coeffs = symbolic_translation_vector(word)
    lines: list[str] = []
    for index in range(13):
        dot_name = f"generatedDot{index:02d}"
        dot_coeffs = dot_coefficients(symbolic_impact_normal(word, index), vector_coeffs)
        lines.extend(emit_quadratic_public(dot_name, dot_coeffs))
        lines.append("")
        lines.extend(emit_dot_coeff_eq(index, trace_module))
    lines.extend([
        "def generatedDot : WordIndex -> WalshQuadratic",
    ])
    for index in range(13):
        lines.append(f"  | ⟨{index}, _⟩ => generatedDot{index:02d}")
    lines.append("")
    lines.extend([
        "theorem generatedDot_eq",
        "    (i : WordIndex) :",
        "    WalshAffineVec3.dot (generatedNormal i) generatedVector = generatedDot i := by",
        "  fin_cases i",
    ])
    for index in range(13):
        lines.append(
            f"  · simpa [generatedNormal, generatedDot] using generatedDot{index:02d}_eq"
        )
    return lines


def build_data_module(*, rank: int, trace_module: str, namespace: str) -> str:
    word = exact.pair_word_at_rank(rank)
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WalshDotCoefficientFacts",
        f"import {trace_module}",
        "",
        "/-!",
        "Generated DU.9BZ shared dot-data module using coefficient-level dot",
        "facts for chained weighted trace certificate smoke modules.",
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
        *emit_dot_data(word, trace_module),
        "",
        "theorem coeffDotChainDataSmoke_builds : True := by",
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
        "phase": "Phase 6Z.6K.8AP.16DU.9BZ",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "dot_count": 13,
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
            "# Phase 6Z.6K.8AP.16DU.9BZ Trace-Certificate Coeff-Dot Chain Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- dot count: `13`",
            f"- cube count: `{len(cubes)}`",
            f"- data module: `{data_module}`",
            f"- root module: `{root_module}`",
            f"- root path: `{lean_path('')}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {lean_path('')} via 13 coefficient-dot proofs and {len(cubes)} cube modules")


if __name__ == "__main__":
    main()
