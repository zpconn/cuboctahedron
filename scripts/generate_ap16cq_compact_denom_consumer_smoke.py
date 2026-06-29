#!/usr/bin/env python3
"""Generate an AP16 compact-denominator consumer for a Walsh trace fixture.

The generated Lean module imports an existing AP16CM/AP16CO Walsh-vector trace
fixture and proves one compact denominator equality through
`impactDenomAtRank_wordImpact_eq_walshDot`.

This smoke intentionally targets impact index 0, where the compact normal is
constant for the current fixture family.  Wider impact support should reuse the
same bridge theorem but generate a proof for the symbolic normal recurrence.
"""

from __future__ import annotations

import argparse
import sys
from fractions import Fraction
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import check_certificates_independently as exact  # noqa: E402
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    emit_walsh_vec,
    lean_rat,
)
from profile_ap16ce_symbolic_translation_vector_recurrence import (  # noqa: E402
    add_scaled_vec,
    clean_vec,
    occurrence_sign_coefficients,
)


DEFAULT_RANK = 101105
DEFAULT_MASK = 6
DEFAULT_IMPACT_INDEX = 0
DEFAULT_TRACE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshVectorTraceRank101105Smoke"
)
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke.lean"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke"
)

WalshAffine = dict[tuple[int, ...], Fraction]
WalshVec3 = list[WalshAffine]


def symbolic_impact_normal(word: list[str], impact_index: int) -> WalshVec3:
    pref_mats = exact.prefix_matrices(word)
    signs = occurrence_sign_coefficients(word)
    pair_id = word[impact_index]
    result: WalshVec3 = [{}, {}, {}]
    add_scaled_vec(
        result,
        signs[impact_index],
        exact.mat_vec(pref_mats[impact_index], exact.vec(exact.NORMALS[pair_id])),
    )
    return clean_vec(result)


def constant_vec(vector: WalshVec3) -> list[Fraction]:
    constants: list[Fraction] = []
    for component in vector:
        unsupported = [
            (subset, coeff) for subset, coeff in component.items()
            if subset and coeff
        ]
        if unsupported:
            raise ValueError(
                "this smoke currently supports only constant compact normals; "
                f"found {unsupported}"
            )
        constants.append(component.get((), Fraction(0)))
    return constants


def build_lean(
    *,
    rank: int,
    mask: int,
    impact_index: int,
    trace_namespace: str,
    namespace: str,
) -> str:
    if impact_index != 0:
        raise ValueError("this smoke currently supports only impact index 0")
    word = exact.pair_word_at_rank(rank)
    if word[impact_index] != "x":
        raise ValueError(
            "impact index 0 smoke expects the first pair to be x; "
            f"rank {rank} starts with {word[impact_index]}"
        )
    normal = symbolic_impact_normal(word, impact_index)
    normal_const = constant_vec(normal)

    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge",
        f"import {trace_namespace}",
        "",
        "/-!",
        f"Generated AP16CQ compact-denominator consumer for rank `{rank}`.",
        "",
        "The module consumes an existing Walsh-vector trace fixture and closes one",
        "compact denominator equality via `impactDenomAtRank_wordImpact_eq_walshDot`.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        "private abbrev generatedRank : Fin numPairWords :=",
        f"  {trace_namespace}.generatedRank",
        "",
        "private abbrev generatedWord : PairWord :=",
        f"  {trace_namespace}.generatedWord",
        "",
        "private abbrev generatedVector : WalshAffineVec3 :=",
        f"  {trace_namespace}.generatedVector",
        "",
        f"private def generatedMask{mask} : SignMask := ⟨{mask}, by decide⟩",
        "",
    ]
    lines.extend(emit_walsh_vec("generatedNormal", normal))
    lines.extend([
        "",
        f"private def firstWordImpactIndex : WordIndex := ⟨{impact_index}, by decide⟩",
        "",
        "private theorem generatedWord_get_first :",
        "    generatedWord.get firstWordImpactIndex = PairId.x := by",
        "  rfl",
        "",
        "private theorem generatedFirstSignedCoeff (mask : SignMask) :",
        "    signedCoeffAt generatedWord mask firstWordImpactIndex = (-1 : Rat) := by",
        "  simp [signedCoeffAt, signedPositiveAt, generatedWord_get_first]",
        "",
        "private theorem generatedNormal_eval_eq_compact (mask : SignMask) :",
        "    generatedNormal.eval mask =",
        "      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)",
        "        (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)",
        "          (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) := by",
        "  have hCompact :",
        "      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)",
        "          (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)",
        "            (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) =",
        f"        {{ x := ({lean_rat(normal_const[0])} : Rat), y := {lean_rat(normal_const[1])}, z := {lean_rat(normal_const[2])} }} := by",
        "    rw [generatedFirstSignedCoeff mask, generatedWord_get_first]",
        "    apply Vec3.ext <;>",
        "      norm_num [firstWordImpactIndex, pairPrefixLinearNat, canonicalNormalQ,",
        "        scalarMul, matVec, matId]",
        "  rw [hCompact]",
        "  apply Vec3.ext <;>",
        "    norm_num [generatedNormal, generatedNormal_x, generatedNormal_y,",
        "      generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval,",
        "      firstWordImpactIndex]",
        "",
        f"private theorem generatedVector_mask{mask}_eq_translationVector :",
        f"    generatedVector.eval generatedMask{mask} =",
        f"      translationVectorOfChoice generatedWord generatedMask{mask} :=",
        f"  {trace_namespace}.generatedVector_eval_eq_translationVector",
        f"    generatedMask{mask}",
        "",
        f"theorem generatedDenomDotCompact_mask{mask} :",
        f"    impactDenomAtRank generatedRank generatedMask{mask}",
        "        (wordImpact firstWordImpactIndex) =",
        f"      Cuboctahedron.dot (generatedNormal.eval generatedMask{mask})",
        f"        (generatedVector.eval generatedMask{mask}) := by",
        "  exact impactDenomAtRank_wordImpact_eq_walshDot",
        f"    {trace_namespace}.generatedUnrank_builds",
        f"    (generatedNormal_eval_eq_compact generatedMask{mask})",
        f"    generatedVector_mask{mask}_eq_translationVector",
        "",
        "theorem compactDenomGeneratedSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--impact-index", type=int, default=DEFAULT_IMPACT_INDEX)
    parser.add_argument("--trace-namespace", default=DEFAULT_TRACE_NAMESPACE)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    args.lean.parent.mkdir(parents=True, exist_ok=True)
    args.lean.write_text(
        build_lean(
            rank=args.rank,
            mask=args.mask,
            impact_index=args.impact_index,
            trace_namespace=args.trace_namespace,
            namespace=args.namespace,
        ),
        encoding="utf-8",
    )
    print(f"wrote {args.lean}")


if __name__ == "__main__":
    main()
