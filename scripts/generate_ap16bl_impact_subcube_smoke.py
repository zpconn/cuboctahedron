#!/usr/bin/env python3
"""Emit the AP.16BL impact-subcube cover smoke.

AP.16BJ found a compact bad-mask cover for the rank-100805 positive-survivor
signature: 20 Boolean subcubes, each killed by one internal impact
denominator.  AP.16BK added the Lean semantic interface for such covers.

This smoke connects the two.  It is intentionally not the final production
proof: subcube nonpositivity is still discharged by splitting over the masks in
each selected subcube.  The purpose is to validate the `ImpactSubcubeCover`
surface end-to-end before replacing the local split with a true Walsh/subcube
bound theorem.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import check_certificates_independently as exact_check  # noqa: E402
import generate_exact_certificates as exact  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from generate_ap16l_signature_membership_smoke import mask_member_expr  # noqa: E402
from generate_translation_row_family_smoke import case_header_lines_for_family  # noqa: E402
from generate_translation_row_relation_classifier import (  # noqa: E402
    COMMON_B_SIMP,
    DENOM_SIMPS,
    BadDirectionCase,
    format_simp_list,
    lean_seq_definition,
)


DEFAULT_COVER = Path(
    "scripts/generated/phase6z6k8ap16bj_walsh_subcube_cover.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16bl_impact_subcube_smoke.json"
)


@dataclass(frozen=True)
class DenomCase:
    rank: int
    mask: int
    word: list[str]
    seq: list[str]
    b: tuple[Fraction, Fraction, Fraction]
    impacts: tuple[int, ...]


def case_name(mask: int) -> str:
    return f"rank_000100805_mask_{mask:02d}_subcube"


def cube_ctor(index: int) -> str:
    return f"s{index:03d}"


def impact_suffix(impact: int) -> str:
    return f"impact_{impact:02d}"


def selected_subcubes(path: Path) -> list[dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    if not data.get("walsh_validated"):
        raise SystemExit("AP16BJ Walsh forms did not validate")
    if int(data.get("uncovered_count", 1)) != 0:
        raise SystemExit("AP16BJ cover has uncovered masks")
    return list(data["selected"])


def denom_cases_for_cover(
    rank: int,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
) -> dict[int, DenomCase]:
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    if not bad_masks:
        raise SystemExit(f"rank {rank} did not produce bad masks")
    word = bad_masks[next(iter(bad_masks))].word
    impacts_by_mask: dict[int, set[int]] = defaultdict(set)
    for subcube in subcubes:
        impact = int(subcube["impact"])
        for mask in subcube["masks"]:
            impacts_by_mask[int(mask)].add(impact)
    result: dict[int, DenomCase] = {}
    for mask, impacts in sorted(impacts_by_mask.items()):
        b, seq = exact_check.translation_vector(word, mask)
        result[mask] = DenomCase(
            rank=rank,
            mask=mask,
            word=word,
            seq=seq,
            b=b,
            impacts=tuple(sorted(impacts)),
        )
    return result


def emit_case_header(case: DenomCase) -> list[str]:
    name = case_name(case.mask)
    lines = [
        f"private def {name}_rank : Fin numPairWords := ⟨{case.rank}, by decide⟩",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(case.mask)}",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(case.word)}",
        *lean_seq_definition(name, case.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(case.b)}",
        "",
        f"private theorem {name}_rankWord :",
        f"    rankPairWord? {name}_word = some {name}_rank := by",
        "  decide",
        "",
        f"private theorem {name}_unrank :",
        f"    unrankPairWord {name}_rank = {name}_word := by",
        f"  exact (rankPairWord?_eq_some_iff_unrank {name}_word {name}_rank).1",
        f"    {name}_rankWord |>.symm",
        "",
        f"private theorem {name}_seqChoice :",
        f"    translationChoiceSeq {name}_word {name}_mask = {name}_seq := by",
        "  funext i",
        "  fin_cases i <;> rfl",
        "",
        f"private theorem {name}_seqAtRank :",
        f"    translationSeqAtRankMask {name}_rank {name}_mask = {name}_seq := by",
        f"  rw [translationSeqAtRankMask, {name}_unrank]",
        f"  exact {name}_seqChoice",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_bAtRank :",
        f"    translationBAtRankMask {name}_rank {name}_mask = {name}_b := by",
        f"  rw [translationBAtRankMask, {name}_seqAtRank]",
        "  apply Vec3.ext <;>",
        f"    norm_num [{name}_b, {name}_seq,",
        *format_simp_list(COMMON_B_SIMP),
        "    ]",
        "",
    ]
    return lines


def emit_denom_fact(case: DenomCase, impact: int) -> list[str]:
    name = case_name(case.mask)
    suffix = impact_suffix(impact)
    denom = exact_check.impact_denom(case.seq, case.b, impact)
    return [
        f"private def {name}_{suffix}_denom : Rat := {exact.lean_rat(denom)}",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_{suffix}_denomAtRank :",
        f"    impactDenomAtRank {name}_rank {name}_mask ⟨{impact}, by decide⟩ =",
        f"      {name}_{suffix}_denom := by",
        f"  rw [impactDenomAtRank, {name}_seqAtRank, {name}_bAtRank]",
        f"  norm_num [{name}_{suffix}_denom, {name}_seq, {name}_b,",
        *format_simp_list(DENOM_SIMPS),
        "    ]",
        "",
    ]


def prove_mask_nonpos(mask: int, impact: int, indent: str, hyp: str = "h") -> list[str]:
    name = case_name(mask)
    suffix = impact_suffix(impact)
    return [
        f"{indent}have hmask : mask = {name}_mask := by",
        f"{indent}  ext",
        f"{indent}  simpa [{name}_mask] using {hyp}",
        f"{indent}rw [hmask]",
        f"{indent}have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        f"{indent}  ext",
        f"{indent}  rfl",
        f"{indent}rw [hrank, {name}_{suffix}_denomAtRank]",
        f"{indent}norm_num [{name}_{suffix}_denom]",
    ]


def split_member_cases(masks: list[int], impact: int, indent: str, hyp: str) -> list[str]:
    if len(masks) == 1:
        return prove_mask_nonpos(masks[0], impact, indent, hyp)
    tail = f"{hyp}_tail"
    return [
        f"{indent}rcases {hyp} with h | {tail}",
        f"{indent}·",
        *prove_mask_nonpos(masks[0], impact, indent + "  ", "h"),
        f"{indent}·",
        *split_member_cases(masks[1:], impact, indent + "  ", tail),
    ]


def emit_subcube_defs(subcubes: list[dict[str, Any]], good_masks: list[int]) -> list[str]:
    ctors = "\n  | ".join(cube_ctor(i) for i in range(len(subcubes)))
    lines = [
        f"private def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(good_masks)}",
        "",
        "private inductive GeneratedImpactSubcube",
        f"  | {ctors}",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedSubcubeMember : GeneratedImpactSubcube -> SignMask -> Prop",
    ]
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        label = subcube["label"]
        masks = [int(mask) for mask in subcube["masks"]]
        lines.extend([
            f"  | .{ctor}, mask =>",
            f"      {mask_member_expr(masks)} -- subcube {label}",
        ])
    lines.extend([
        "",
        "private def generatedSubcubeObstruction :",
        "    (cube : GeneratedImpactSubcube) ->",
        "      ImpactSubcubeObstruction 100805 (generatedSubcubeMember cube)",
    ])
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        impact = int(subcube["impact"])
        masks = [int(mask) for mask in subcube["masks"]]
        lines.extend([
            f"  | .{ctor} => {{",
            f"      impact := ⟨{impact}, by decide⟩",
            "      not_zero := by decide",
            "      not_last := by decide",
            "      nonpos := by",
            "        intro mask hlt hmember",
            f"        simp [generatedSubcubeMember] at hmember",
            *split_member_cases(masks, impact, "        ", "hmember"),
            "    }",
        ])
    return lines


def emit_cover_complete(subcubes: list[dict[str, Any]], good_masks: list[int]) -> list[str]:
    mask_to_cube: dict[int, str] = {}
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        for mask in subcube["masks"]:
            mask_to_cube.setdefault(int(mask), ctor)
    lines = [
        "",
        "private theorem generatedSubcube_complete",
        "    {mask : SignMask}",
        "    (hnot : ¬ generatedGoodMaskMember mask) :",
        "    exists cube : GeneratedImpactSubcube, generatedSubcubeMember cube mask := by",
        "  fin_cases mask",
    ]
    for mask in range(64):
        if mask in good_masks:
            lines.append(
                "  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))"
            )
        else:
            ctor = mask_to_cube[mask]
            lines.append(
                f"  · exact ⟨.{ctor}, by simp [generatedSubcubeMember]⟩"
            )
    lines.extend([
        "",
        "private def generatedImpactSubcubeCover :",
        "    ImpactSubcubeCover 100805 generatedGoodMaskMember where",
        "  Family := GeneratedImpactSubcube",
        "  Member := generatedSubcubeMember",
        "  obstruction := generatedSubcubeObstruction",
        "  complete := by",
        "    intro mask hnot",
        "    exact generatedSubcube_complete hnot",
        "",
        "theorem generatedGoodMaskMember_of_GoodDirection_viaImpactSubcubes",
        "    {mask : SignMask} (hlt : 100805 < numPairWords)",
        "    (hgood : GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask :=",
        "  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood",
        "",
        "theorem impactSubcubeSmoke_builds : True := by",
        "  trivial",
    ])
    return lines


def emit_module(
    *,
    rank: int,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
    cases: dict[int, DenomCase],
) -> str:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcube",
        "",
        "/-!",
        "Generated AP.16BL impact-subcube smoke.",
        "",
        "This module instantiates the AP.16BK `ImpactSubcubeCover` interface for",
        "the rank-100805 singleton cover discovered by AP.16BJ.  It is still a",
        "bounded smoke: each selected subcube proves denominator nonpositivity by",
        "splitting over the masks inside that subcube.  A later production emitter",
        "must replace those local splits with genuine Walsh/subcube bound proofs.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
    ]
    for mask, case in sorted(cases.items()):
        lines.extend(emit_case_header(case))
        for impact in case.impacts:
            lines.extend(emit_denom_fact(case, impact))
    lines.extend(emit_subcube_defs(subcubes, good_masks))
    lines.extend(emit_cover_complete(subcubes, good_masks))
    lines.extend([
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeSmoke",
        "",
    ])
    return "\n".join(lines)


def markdown(report: dict[str, Any]) -> str:
    return "\n".join([
        "# Phase 6Z.6K.8AP.16BL Impact-Subcube Smoke",
        "",
        "Status: generated; focused Lean build required for acceptance.",
        "",
        f"- rank: `{report['rank']}`",
        f"- positive masks: `{report['positive_masks']}`",
        f"- selected impact subcubes: `{report['selected_subcubes']}`",
        f"- masks with denominator facts: `{report['denom_masks']}`",
        f"- mask/impact denominator facts: `{report['denom_facts']}`",
        "",
        "This smoke is proof-carrying Lean, but it is not yet production",
        "compression: each subcube nonpositivity proof still splits over the masks",
        "inside that subcube.  The next step is to replace those splits with a",
        "generic Walsh/subcube bound theorem.",
        "",
    ])


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--cover", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    subcubes = selected_subcubes(args.cover)
    cases = denom_cases_for_cover(args.rank, good_masks, subcubes)
    text = emit_module(
        rank=args.rank,
        good_masks=good_masks,
        subcubes=subcubes,
        cases=cases,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(text, encoding="utf-8")

    report = {
        "phase": "Phase 6Z.6K.8AP.16BL",
        "rank": args.rank,
        "positive_masks": good_masks,
        "selected_subcubes": len(subcubes),
        "denom_masks": len(cases),
        "denom_facts": sum(len(case.impacts) for case in cases.values()),
        "lean_file": str(args.output),
        "trusted_as_proof": False,
        "status": "generated_pending_build",
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2), encoding="utf-8")
    args.report.with_suffix(".md").write_text(markdown(report), encoding="utf-8")
    print(
        f"wrote {args.output}; subcubes={len(subcubes)} "
        f"denom_masks={len(cases)} denom_facts={report['denom_facts']}"
    )


if __name__ == "__main__":
    main()
