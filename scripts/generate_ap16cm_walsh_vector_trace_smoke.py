#!/usr/bin/env python3
"""Generate AP16CM Walsh-vector trace smoke.

This smoke exercises the proof-carrying trace bridge in
`TranslationWalshVector.lean`.  It emits the normalized prefix vectors for the
rank-100805 translation-vector fixture and proves the final generated vector is
`translationVectorWalshOfChoice generatedWord` by checking only local step
equalities.
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
    DEFAULT_RANK,
    emit_walsh_vec,
)
from profile_ap16ce_symbolic_translation_vector_recurrence import (  # noqa: E402
    add_scaled_vec,
    clean_vec,
    occurrence_sign_coefficients,
)


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshVectorTraceSmoke.lean"
)

WalshAffine = dict[tuple[int, ...], Fraction]
WalshVec3 = list[WalshAffine]


def zero_vec() -> WalshVec3:
    return [{}, {}, {}]


def symbolic_translation_prefixes(word: list[str]) -> list[WalshVec3]:
    pref_mats = exact.prefix_matrices(word)
    signs = occurrence_sign_coefficients(word)
    current = zero_vec()
    prefixes = [clean_vec(current)]
    for index, pair_id in enumerate(word):
        contribution = exact.mat_vec(pref_mats[index], exact.DCAN[pair_id])
        add_scaled_vec(current, signs[index], contribution)
        prefixes.append(clean_vec(current))
    return prefixes


def symbolic_translation_final(word: list[str], prefixes: list[WalshVec3]) -> WalshVec3:
    pref_mats = exact.prefix_matrices(word)
    current = clean_vec([dict(component) for component in prefixes[-1]])
    add_scaled_vec(current, {(): Fraction(1)}, exact.mat_vec(pref_mats[-1], exact.DCAN["x"]))
    return clean_vec(current)


def emit_pair_word(word: list[str]) -> str:
    items = ", ".join(f"PairId.{pair_id}" for pair_id in word)
    return f"⟨#[{items}], by decide⟩"


def emit_prefix_dispatch(count: int) -> list[str]:
    lines = ["private def generatedPrefix : Nat -> WalshAffineVec3"]
    for index in range(count):
        lines.append(f"  | {index} => generatedPref{index:02d}")
    lines.append(f"  | _ => generatedPref{count - 1:02d}")
    return lines


def emit_word_get_simp(word: list[str]) -> list[str]:
    lines: list[str] = []
    for index, pair_id in enumerate(word):
        lines.extend([
            f"@[simp] private theorem generatedWord_getFin_{index:02d} :",
            f"    Vector.get generatedWord ({index} : WordIndex) = PairId.{pair_id} := by",
            "  rfl",
            "",
            f"@[simp] private theorem generatedWord_get_{index:02d}",
            f"    (h : ({index} : Nat) < 13) :",
            f"    generatedWord.get ⟨{index}, h⟩ = PairId.{pair_id} := by",
            f"  have hi : (⟨{index}, h⟩ : WordIndex) = ({index} : WordIndex) := by",
            "    ext",
            "    rfl",
            "  rw [hi]",
            "  rfl",
            "",
        ])
    return lines


def trace_norm_defs(prefix_indices: list[int], *, include_step: bool, include_final: bool) -> str:
    names: list[str] = [
        "generatedPrefix",
        "WalshAffineVec3.add",
        "WalshAffineVec3.const",
        "WalshAffineVec3.smulConst",
        "WalshAffine.add",
        "WalshAffine.const",
        "WalshAffine.scale",
        "WalshAffine.bit",
        "WalshAffine.neg",
        "WalshAffine.zero",
        "pairPrefixLinearNat",
        "pairReflectionDeltaQ",
        "reflD",
        "canonicalOffsetQ",
        "matVec",
        "matMul",
        "matId",
        "reflM",
        "matSub",
        "scalarMat",
        "outer",
        "dot",
        "scalarMul",
        "canonicalNormalQ",
    ]
    if include_step:
        names.extend([
            "translationPrefixWalshStepAt",
            "signedCoeffWalshAt",
            "countPairBeforeNat",
        ])
    if include_final:
        names.extend([
            "generatedVector",
            "generatedVector_x",
            "generatedVector_y",
            "generatedVector_z",
        ])
    for index in prefix_indices:
        names.extend([
            f"generatedPref{index:02d}",
            f"generatedPref{index:02d}_x",
            f"generatedPref{index:02d}_y",
            f"generatedPref{index:02d}_z",
        ])
    return ", ".join(names)


def build_lean(rank: int) -> str:
    word = exact.pair_word_at_rank(rank)
    prefixes = symbolic_translation_prefixes(word)
    final = symbolic_translation_final(word, prefixes)

    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector",
        "",
        "/-!",
        "Generated AP16CM Walsh-vector trace smoke.",
        "",
        "This file proves the rank-100805 generated Walsh translation vector by",
        "checking local prefix-step equalities against `TranslationWalshVectorTrace`,",
        "rather than reducing the full 13-step recurrence in one equality.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        f"private def generatedRank : Fin numPairWords := ⟨{rank}, by decide⟩",
        "",
        "private def generatedWord : PairWord :=",
        f"  {emit_pair_word(word)}",
        "",
        "private theorem generatedRankWord :",
        "    rankPairWord? generatedWord = some generatedRank := by",
        "  decide",
        "",
        "private theorem generatedUnrank :",
        "    unrankPairWord generatedRank = generatedWord := by",
        "  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1",
        "    generatedRankWord |>.symm",
        "",
    ]

    lines.extend(emit_word_get_simp(word))

    for index, prefix in enumerate(prefixes):
        lines.extend(emit_walsh_vec(f"generatedPref{index:02d}", prefix))
        lines.append("")

    lines.extend(emit_walsh_vec("generatedVector", final))
    lines.append("")
    lines.extend(emit_prefix_dispatch(len(prefixes)))
    lines.append("")
    lines.extend([
        "private theorem generatedTrace_zero :",
        "    generatedPrefix 0 = WalshAffineVec3.zero := by",
        f"  norm_num [{trace_norm_defs([0], include_step=False, include_final=False)},",
        "    WalshAffineVec3.zero]",
        "",
    ])
    for index in range(len(prefixes) - 1):
        step_defs = trace_norm_defs([index, index + 1], include_step=True, include_final=False)
        lines.extend([
            f"private theorem generatedTrace_step_{index:02d} :",
            f"    generatedPrefix ({index} + 1) =",
            f"      translationPrefixWalshStepAt generatedWord ({index} : WordIndex)",
            f"        (generatedPrefix {index}) := by",
            f"  simp [{step_defs}] <;> norm_num [{step_defs}]",
            "",
        ])
    final_defs = trace_norm_defs([len(prefixes) - 1], include_step=False, include_final=True)
    lines.extend([
        "private theorem generatedTrace_final :",
        "    generatedVector =",
        "      WalshAffineVec3.add (generatedPrefix 13)",
        "        (WalshAffineVec3.const",
        "          (matVec (pairPrefixLinearNat generatedWord 13)",
        "            (pairReflectionDeltaQ PairId.x))) := by",
        f"  simp [{final_defs}] <;> norm_num [{final_defs}]",
        "",
    ])
    lines.extend([
        "private def generatedTrace :",
        "    TranslationWalshVectorTrace generatedWord generatedVector where",
        "  pref := generatedPrefix",
        "  zero_eq := generatedTrace_zero",
        "  step_eq := by",
        "    intro i",
        "    fin_cases i",
    ])
    for index in range(len(prefixes) - 1):
        bullet = "    ·"
        lines.append(f"{bullet} exact generatedTrace_step_{index:02d}")
    lines.extend([
        "  final_eq := generatedTrace_final",
        "",
        "theorem generatedVector_eq_translationVectorWalsh :",
        "    generatedVector = translationVectorWalshOfChoice generatedWord :=",
        "  TranslationWalshVectorTrace.final_eq_translationVectorWalsh generatedTrace",
        "",
        "theorem generatedVector_eval_eq_translationVector (mask : SignMask) :",
        "    generatedVector.eval mask = translationVectorOfChoice generatedWord mask := by",
        "  rw [generatedVector_eq_translationVectorWalsh,",
        "    translationVectorWalshOfChoice_eval]",
        "",
        "theorem generatedUnrank_builds :",
        "    unrankPairWord generatedRank = generatedWord :=",
        "  generatedUnrank",
        "",
        "theorem walshVectorTraceSmoke_builds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    args = parser.parse_args()

    args.lean.parent.mkdir(parents=True, exist_ok=True)
    args.lean.write_text(build_lean(args.rank), encoding="utf-8")
    print(f"wrote {args.lean}")


if __name__ == "__main__":
    main()
