#!/usr/bin/env python3
"""Generate AP.16BT one-impact symbolic Walsh equality smoke.

This smoke tries the smallest Lean-facing version of the AP16BS target:
prove, for rank 100805 and one selected impact, that the exact denominator is
the emitted Walsh polynomial for every `SignMask`.

It deliberately avoids `fin_cases mask`; instead it splits on the six semantic
sign bits.  If this is still expensive, the next route should be a hand-written
symbolic evaluator over the six bits rather than more generated replay.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_ap16bo_walsh_bound_smoke import (  # noqa: E402
    emit_poly,
)
from generate_ap16br_walsh_cover_smoke import emit_common_monomials  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from generate_translation_row_relation_classifier import format_simp_list  # noqa: E402
from profile_ap16bj_walsh_subcube_cover import compute_walsh_forms  # noqa: E402


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshEqualityOneSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16bt_walsh_equality_one_smoke.json"
)

BIT_SPLITS = [
    ("h_y", "PairId.y"),
    ("h_z", "PairId.z"),
    ("h_d111", "PairId.d111"),
    ("h_d11m", "PairId.d11m"),
    ("h_d1m1", "PairId.d1m1"),
    ("h_dm11", "PairId.dm11"),
]

EQUALITY_SIMPS = [
    "impactDenomAtRank",
    "translationSeqAtRankMask",
    "translationBAtRankMask",
    "translationChoiceSeq",
    "totalAff",
    "totalOrder",
    "composeFaceList",
    "faceVectorSeq",
    "faceOfPairSign",
    "maskBitForPair",
    "countPairBeforeNat",
    "impactDenom",
    "impactPlaneNormalQ",
    "copiedNormalQ",
    "preImpactCopyAff",
    "pathPrefixAff",
    "pathPrefixAffNat",
    "impactFace",
    "faceReflectionQ",
    "reflM",
    "reflD",
    "normalQ",
    "offsetQ",
    "matSub",
    "matId",
    "affId",
    "affCompose",
    "scalarMat",
    "outer",
    "dot",
    "matMul",
    "matVec",
    "vecAdd",
    "scalarMul",
    "WalshPoly.eval",
    "generatedPoly",
    "constMonomial",
    "bitMonomial",
    "twoBitMonomial",
    "WalshTerm.eval",
    "WalshMonomial.eval",
    "WalshMonomial.factorValue",
    "SignBit.value",
    "SignBit.toPairId",
]


def impact_name(impact: int) -> str:
    return f"impact{impact:02d}"


def emit_univ(count: int) -> list[str]:
    members = ", ".join(f"⟨{i}, by decide⟩" for i in range(count))
    return [
        "  have huniv :",
        f"      (Finset.univ : Finset (Fin {count})) =",
        f"        {{{members}}} := by",
        "    ext i",
        "    fin_cases i <;> simp",
    ]


def emit_bit_splits() -> list[str]:
    lines: list[str] = []
    for idx, (hyp, pair) in enumerate(BIT_SPLITS):
        prefix = "  " if idx == 0 else "    "
        suffix = " <;>" if idx < len(BIT_SPLITS) - 1 else ""
        lines.append(f"{prefix}by_cases {hyp} : maskBitForPair mask {pair}{suffix}")
    return lines


def emit_lean(rank: int, word: list[str], impact: int, terms) -> str:
    simp_args = EQUALITY_SIMPS + ["generatedUnrank"] + [
        hyp for hyp, _pair in BIT_SPLITS
    ]
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh",
        "",
        "/-!",
        "Generated AP.16BT one-impact Walsh equality smoke.",
        "",
        "This is a bounded diagnostic for the symbolic denominator-equality route.",
        "It proves one selected impact for rank 100805 by splitting on semantic",
        "sign bits, not by `fin_cases mask`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEqualityOneSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        "private def generatedRank : Fin numPairWords := ⟨100805, by decide⟩",
        f"private def generatedWord : PairWord := {exact.lean_pair_word_inline(word)}",
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
    lines.extend(emit_common_monomials())
    lines.append("")
    lines.extend(emit_poly(terms))
    lines.extend([
        "",
        "set_option maxHeartbeats 5000000 in",
        f"theorem {impact_name(impact)}_walsh_eq",
        "    (mask : SignMask) (hlt : 100805 < numPairWords) :",
        "    impactDenomAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask",
        f"      ⟨{impact}, by decide⟩ = generatedPoly.eval mask := by",
        "  have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = generatedRank := by",
        "    ext",
        "    rfl",
        "  rw [hrank]",
    ])
    lines.extend(emit_univ(len(terms)))
    lines.extend(emit_bit_splits())
    lines.extend([
        "    <;> unfold WalshPoly.eval",
        "    <;> rw [huniv]",
        "    <;> norm_num [",
        *format_simp_list(simp_args, indent="      "),
        "      ]",
        "",
        "theorem impactSubcubeWalshEqualityOneSmoke_builds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEqualityOneSmoke",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--impact", type=int, default=1)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    source_profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, args.rank, args.mask)
    good_masks = sorted(int(mask_value) for mask_value in signature["good_masks"])
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        args.rank, good_masks
    )
    forms, failures = compute_walsh_forms(args.rank, good_masks, bad_masks)
    if failures:
        raise RuntimeError(f"Walsh validation failed: {failures[:3]}")
    word = bad_masks[next(iter(bad_masks))].word
    terms = [
        (subset, coeff)
        for subset, coeff in sorted(
            forms[args.impact - 1].items(),
            key=lambda item: (len(item[0]), item[0]),
        )
        if coeff
    ]
    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(
        emit_lean(args.rank, word, args.impact, terms),
        encoding="utf-8",
    )
    report = {
        "phase": "Phase 6Z.6K.8AP.16BT",
        "status": "generated_pending_guarded_build",
        "rank": args.rank,
        "impact": args.impact,
        "term_count": len(terms),
        "max_degree": max((len(subset) for subset, _coeff in terms), default=0),
        "uses_fin_cases_mask": False,
        "uses_semantic_bit_splits": True,
        "trusted_as_final_generated_coverage": False,
        "lean_file": str(args.lean_output),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2), encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16BT Walsh Equality One-Impact Smoke",
            "",
            "Status: generated; guarded Lean build required for acceptance.",
            "",
            f"- rank: `{args.rank}`",
            f"- impact: `{args.impact}`",
            f"- terms: `{len(terms)}`",
            f"- max degree: `{report['max_degree']}`",
            "- mask split style: semantic `maskBitForPair` cases, not `fin_cases mask`",
            "",
        ]),
        encoding="utf-8",
    )
    print(
        f"wrote {args.lean_output}; impact={args.impact} terms={len(terms)}"
    )


if __name__ == "__main__":
    main()
