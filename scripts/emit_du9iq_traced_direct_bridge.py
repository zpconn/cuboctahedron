#!/usr/bin/env python3
"""Emit a DU9IQ traced direct weighted-denominator bridge.

This generator captures the memory-safe route accepted for the rank-896
support-[2,6] cube:

* import an already checked reduced-bound obstruction module;
* import a checked Walsh translation-vector trace module;
* import only the checked impact-normal trace modules needed by the sparse
  weighted support;
* prove the `weightedDirectWalshDotAtRank = poly.coeffEval` premise by
  composing traced dot polynomials, not by locally unfolding
  `impactNormalWalshAt`.

The emitted Lean is still a smoke/prototype surface.  It is intended to become
the template for production generated weighted-cube bridge leaves.
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
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    dot_coefficients,
    emit_quadratic,
    lean_rat,
)
from generate_ap16cm_walsh_vector_trace_smoke import (  # noqa: E402
    symbolic_translation_final,
    symbolic_translation_prefixes,
)
from generate_ap16cq_compact_denom_consumer_smoke import (  # noqa: E402
    symbolic_impact_normal,
)
from profile_ap16du9be_weighted_walsh_poly import (  # noqa: E402
    compute_rank_walsh_forms,
    weighted_coeffs,
)


BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9iq_weighted_reduced_quadratic_bounds_profile.json"
)
DEFAULT_REPORT = Path(
    "scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated.json"
)
DEFAULT_STEM = "WeightedDenomCubeDU9IQDirectBridgeGenerated"
DEFAULT_REDUCED_MODULE = (
    f"{BASE_MODULE}.WeightedDenomCubeDU9IQReducedBoundSmoke"
)
DEFAULT_VECTOR_TRACE_MODULE = (
    f"{BASE_MODULE}.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke"
)
DEFAULT_NORMAL_TRACE_STEM = "WeightedDenomCubeDU9IQNormalTraceRank896"


def name_suffix(index: int) -> str:
    return "" if index == 0 else f"Idx{index:02d}"


def module_name(stem: str) -> str:
    return f"{BASE_MODULE}.{stem}Smoke"


def lean_path(stem: str) -> Path:
    return BASE_DIR / f"{stem}Smoke.lean"


def normal_module_name(stem: str, index: int) -> str:
    return f"{BASE_MODULE}.{stem}{name_suffix(index)}Smoke"


def normal_name(index: int) -> str:
    return f"generatedNormal{index:02d}"


def dot_name(index: int) -> str:
    return f"dot{index:02d}"


def pattern_name(pattern: str) -> str:
    return "cube" + "".join("x" if char == "*" else char for char in pattern)


def weights_name(support: list[int]) -> str:
    return "weights" + "_".join(str(value) for value in support)


def poly_name(rank: int, support: list[int]) -> str:
    return "poly" + str(rank) + "_" + "_".join(str(value) for value in support)


def parse_fraction(text: Any) -> Fraction:
    return Fraction(str(text))


def load_summary(profile: Path, summary_index: int) -> dict[str, Any]:
    data = json.loads(profile.read_text(encoding="utf-8"))
    summaries = list(data["summaries"])
    if summary_index < 0 or summary_index >= len(summaries):
        raise SystemExit(
            f"summary index {summary_index} out of range 0..{len(summaries) - 1}"
        )
    summary = dict(summaries[summary_index])
    if not summary.get("reduced_bound_nonpositive", False):
        raise SystemExit(
            f"summary {summary_index} does not have a direct nonpositive reduced bound"
        )
    return summary


def theorem_suffix(index: int) -> str:
    return f"{index:02d}"


def dot_eq_defs(
    *,
    dot: str,
    normal: str,
    normal_module: str,
    vector_trace_module: str,
) -> str:
    normal_x = f"{normal_module}.{normal}_x"
    normal_y = f"{normal_module}.{normal}_y"
    normal_z = f"{normal_module}.{normal}_z"
    return ", ".join([
        dot,
        normal,
        f"{normal_module}.{normal}",
        normal_x,
        normal_y,
        normal_z,
        "generatedVector",
        f"{vector_trace_module}.generatedVector",
        f"{vector_trace_module}.generatedVector_x",
        f"{vector_trace_module}.generatedVector_y",
        f"{vector_trace_module}.generatedVector_z",
        "WalshAffineVec3.dot",
        "WalshQuadratic.add",
        "WalshAffine.mul",
    ])


def weighted_sum_expr(
    support: list[int],
    weights: list[Fraction],
    *,
    eval_suffix: str,
) -> str:
    terms: list[str] = []
    for impact, weight in zip(support, weights, strict=True):
        idx = impact - 1
        base = f"{dot_name(idx)}.{eval_suffix}"
        if weight == 1:
            terms.append(base)
        elif weight == -1:
            terms.append(f"-{base}")
        else:
            terms.append(f"{lean_rat(weight)} * {base}")
    return " + ".join(terms) if terms else "0"


def emit_module(
    *,
    namespace: str,
    stem: str,
    summary: dict[str, Any],
    reduced_module: str,
    vector_trace_module: str,
    normal_trace_stem: str,
) -> str:
    rank = int(summary["rank"])
    pattern = str(summary["pattern"])
    support = [int(value) for value in summary["support"]]
    weights = [parse_fraction(value) for value in summary["weights"]]
    word = exact.pair_word_at_rank(rank)
    vector = symbolic_translation_final(word, symbolic_translation_prefixes(word))
    forms, valid = compute_rank_walsh_forms(rank)
    if not valid:
        raise RuntimeError(f"rank {rank} Walsh forms failed external validation")
    weighted = weighted_coeffs(forms, support, weights)

    dot_coeffs: dict[int, dict[tuple[int, ...], Fraction]] = {}
    for impact in support:
        index = impact - 1
        coeffs = dot_coefficients(symbolic_impact_normal(word, index), vector)
        expected = {subset: coeff for subset, coeff in forms[index].items() if coeff}
        if coeffs != expected:
            raise RuntimeError(
                f"impact {impact} dot polynomial mismatch: computed {coeffs}, expected {expected}"
            )
        dot_coeffs[index] = coeffs

    weighted_from_dots: dict[tuple[int, ...], Fraction] = {}
    for impact, weight in zip(support, weights, strict=True):
        index = impact - 1
        for subset, coeff in dot_coeffs[index].items():
            weighted_from_dots[subset] = weighted_from_dots.get(subset, Fraction(0)) + weight * coeff
    weighted_from_dots = {
        subset: coeff for subset, coeff in weighted_from_dots.items() if coeff
    }
    if weighted_from_dots != {subset: coeff for subset, coeff in weighted.items() if coeff}:
        raise RuntimeError("weighted dot polynomial does not match weighted denominator polynomial")

    cube = pattern_name(pattern)
    weights_def = weights_name(support)
    poly = poly_name(rank, support)
    rank_name = f"rank{rank}"

    imports = [
        f"import {reduced_module}",
        *[
            f"import {normal_module_name(normal_trace_stem, impact - 1)}"
            for impact in support
        ],
    ]
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Generated DU9IQ traced direct bridge smoke.",
        "",
        "This file supplies the direct weighted Walsh-dot equality premise for a",
        "single reduced-bound weighted cube.  It composes already checked vector",
        "and normal traces instead of unfolding rank-local normal recurrences.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies",
        f"namespace {namespace.split('.')[-1]}",
        "",
        "open PositiveSurvivorClassifier",
        "open PositiveSurvivorClassifier.ImpactSubcube",
        "open DenominatorCube",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        "abbrev generatedRank : Fin numPairWords :=",
        f"  {vector_trace_module}.generatedRank",
        "",
        "abbrev generatedWord : PairWord :=",
        f"  {vector_trace_module}.generatedWord",
        "",
        "abbrev generatedVector : WalshAffineVec3 :=",
        f"  {vector_trace_module}.generatedVector",
        "",
    ]

    for impact in support:
        index = impact - 1
        mod = normal_module_name(normal_trace_stem, index)
        nm = normal_name(index)
        lines.extend([
            f"abbrev {nm} : WalshAffineVec3 :=",
            f"  {mod}.{nm}",
            "",
        ])

    lines.extend([
        f"abbrev {rank_name} : Nat :=",
        f"  {reduced_module}.{rank_name}",
        "",
        f"abbrev {cube} : MaskSubcube :=",
        f"  {reduced_module}.{cube}",
        "",
        f"abbrev {weights_def} : InternalImpactWeights :=",
        f"  {reduced_module}.{weights_def}",
        "",
        f"abbrev {poly} : WalshQuadratic :=",
        f"  {reduced_module}.{poly}",
        "",
    ])

    for impact in support:
        index = impact - 1
        lines.extend(emit_quadratic(dot_name(index), dot_coeffs[index]))
        lines.append("")

    lines.extend([
        "private theorem generatedRank_eq",
        f"    (hlt : {rank_name} < numPairWords) :",
        f"    (⟨{rank_name}, hlt⟩ : Fin numPairWords) = generatedRank := by",
        "  ext",
        "  rfl",
        "",
        "private theorem directWalshDotAtRank_eq_of_val",
        "    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}",
        "    (h : i.val = j.val) :",
        "    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by",
        "  have hij : i = j := Fin.ext h",
        "  rw [hij]",
        "",
    ])

    for impact in support:
        index = impact - 1
        suffix = theorem_suffix(index)
        nm = normal_name(index)
        mod = normal_module_name(normal_trace_stem, index)
        dot = dot_name(index)
        defs = dot_eq_defs(
            dot=dot,
            normal=nm,
            normal_module=mod,
            vector_trace_module=vector_trace_module,
        )
        lines.extend([
            f"private theorem {dot}_eq :",
            f"    WalshAffineVec3.dot {nm} generatedVector = {dot} := by",
            f"  norm_num [{defs}]",
            "",
            f"private theorem {dot}_eval",
            "    (mask : SignMask) :",
            f"    dot ({nm}.eval mask) (generatedVector.eval mask) =",
            f"      {dot}.coeffEval mask := by",
            f"  have h := WalshAffineVec3.dot_coeffEval {nm} generatedVector mask",
            f"  rw [{dot}_eq] at h",
            "  exact h.symm",
            "",
            f"private theorem direct{suffix}_eq",
            "    (mask : SignMask) " + f"(hlt : {rank_name} < numPairWords) :",
            "    directWalshDotAtRank",
            f"        (⟨{rank_name}, hlt⟩ : Fin numPairWords) mask ({index} : WordIndex) =",
            f"      dot ({nm}.eval mask) (generatedVector.eval mask) := by",
            "  rw [generatedRank_eq hlt]",
            "  unfold directWalshDotAtRank",
            f"  rw [{vector_trace_module}.generatedUnrank_builds]",
            f"  rw [← {mod}.{nm}_eq]",
            f"  rw [← {vector_trace_module}.generatedVector_eq_translationVectorWalsh]",
            "",
            f"private theorem direct{suffix}_eq_of_val",
            f"    (mask : SignMask) (hlt : {rank_name} < numPairWords)",
            f"    {{i : WordIndex}} (hi : i.val = {index}) :",
            "    directWalshDotAtRank",
            f"        (⟨{rank_name}, hlt⟩ : Fin numPairWords) mask i =",
            f"      dot ({nm}.eval mask) (generatedVector.eval mask) := by",
            "  rw [directWalshDotAtRank_eq_of_val",
            f"    (⟨{rank_name}, hlt⟩ : Fin numPairWords) mask (j := ({index} : WordIndex)) hi]",
            f"  exact direct{suffix}_eq mask hlt",
            "",
        ])

    lines.extend([
        f"private theorem {weighted_sum_expr(support, weights, eval_suffix='coeffEval mask')}_eq_poly"
        if False else "private theorem dot_sum_eval",
        "    (mask : SignMask) :",
        f"    {weighted_sum_expr(support, weights, eval_suffix='coeffEval mask')} =",
        f"      {poly}.coeffEval mask := by",
        f"  simp [{', '.join([dot_name(impact - 1) for impact in support])}, {poly},",
        f"    {reduced_module}.{poly}, WalshQuadratic.coeffEval]",
        "  ring_nf",
        "",
        "theorem direct_eq",
        f"    {{mask : SignMask}} (hlt : {rank_name} < numPairWords)",
        f"    (_hmember : {cube}.Member mask) :",
        "    weightedDirectWalshDotAtRank",
        f"        (⟨{rank_name}, hlt⟩ : Fin numPairWords) mask {weights_def} =",
        f"      {poly}.coeffEval mask := by",
        "  unfold weightedDirectWalshDotAtRank",
        f"  norm_num [{weights_def}, {reduced_module}.{weights_def}]",
    ])
    rw_terms = [
        f"direct{theorem_suffix(impact - 1)}_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl)"
        for impact in support
    ] + [
        f"{dot_name(impact - 1)}_eval mask"
        for impact in support
    ]
    lines.extend([
        f"  rw [{', '.join(rw_terms)}]",
        "  exact dot_sum_eval mask",
        "",
        "theorem weightedDenom_nonpos",
        f"    {{mask : SignMask}} (hlt : {rank_name} < numPairWords)",
        f"    (hmember : {cube}.Member mask) :",
        "    weightedDenomAtRank",
        f"      (⟨{rank_name}, hlt⟩ : Fin numPairWords) mask {weights_def} <= 0 :=",
        f"  {reduced_module}.weightedDenom_nonpos_of_reduced_bound",
        "    (fun hlt hmember => direct_eq hlt hmember)",
        "    hlt hmember",
        "",
        "theorem tracedDirectBridgeGeneratedSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace.split('.')[-1]}",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies",
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--summary-index", type=int, default=1)
    parser.add_argument("--stem", default=DEFAULT_STEM)
    parser.add_argument("--reduced-module", default=DEFAULT_REDUCED_MODULE)
    parser.add_argument("--vector-trace-module", default=DEFAULT_VECTOR_TRACE_MODULE)
    parser.add_argument("--normal-trace-stem", default=DEFAULT_NORMAL_TRACE_STEM)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    summary = load_summary(args.profile, args.summary_index)
    namespace = module_name(args.stem)
    path = lean_path(args.stem)
    path.write_text(
        emit_module(
            namespace=namespace,
            stem=args.stem,
            summary=summary,
            reduced_module=args.reduced_module,
            vector_trace_module=args.vector_trace_module,
            normal_trace_stem=args.normal_trace_stem,
        ),
        encoding="utf-8",
    )
    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9IQ traced direct bridge emitter",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "profile": str(args.profile),
        "summary_index": args.summary_index,
        "rank": int(summary["rank"]),
        "pattern": summary["pattern"],
        "support": summary["support"],
        "weights": summary["weights"],
        "module": namespace,
        "path": str(path),
        "reduced_module": args.reduced_module,
        "vector_trace_module": args.vector_trace_module,
        "normal_trace_stem": args.normal_trace_stem,
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# DU9IQ Traced Direct Bridge Generated Smoke",
            "",
            f"- rank: `{summary['rank']}`",
            f"- pattern: `{summary['pattern']}`",
            f"- support: `{summary['support']}`",
            f"- weights: `{summary['weights']}`",
            f"- module: `{namespace}`",
            f"- path: `{path}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path}")


if __name__ == "__main__":
    main()
