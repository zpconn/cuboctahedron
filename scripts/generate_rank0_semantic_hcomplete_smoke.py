#!/usr/bin/env python3
"""Emit a rank-0 semantic hcomplete diagnostic smoke.

This diagnostic targets the current missing generated obligation directly:
prove a `SourceIndexStateDescriptorGoodCoverageOnRange 0 1` theorem from
`GoodDirectionAtRank`, without importing compact membership roots and without
turning bad-direction masks into generated coverage evidence.

The emitted Lean file is intentionally tiny and diagnostic only.  It covers the
single identity-linear pair-word at rank 0 by splitting the 64 masks:

* masks satisfying GoodDirection are mapped to broad source-index/state
  descriptors whose `Applies` predicates are checked by existing symbolic row
  helpers;
* masks failing GoodDirection are discharged by a concrete nonpositive impact
  denominator, using the hand-written necessary-condition theorem.
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

import generate_exact_certificates as exact  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Member,
    TEMPLATE_TO_SOURCE_INDEX,
    family_name,
    source_match_lines,
)
from generate_symbolic_row_family_smoke import (  # noqa: E402
    SymbolicCase,
    case_header_lines_for_family,
    classify_choice as symbolic_classify_choice,
    lean_case_name,
    rows_lines,
)
from generate_translation_row_relation_classifier import ClassifiedCase  # noqa: E402
from generate_translation_two_source_evidence import support_lines  # noqa: E402
from generate_translation_two_source_evidence import (  # noqa: E402
    COMMON_B_SIMP,
    format_simp_list,
    lean_seq_definition,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice as profile_classify_choice,
)


DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SemanticHCompleteRank0Smoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9de_rank0_semantic_hcomplete.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SemanticHCompleteRank0Smoke"
)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


DENOM_SIMPS = [
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
]


def bad_not_good_lines(
    *,
    mask: int,
    impact: int,
    seq: list[str],
    b: exact.Vec,
    denom: Any,
) -> list[str]:
    name = f"mask_{mask:02d}_badDirection"
    return [
        f"private def {name}_rank : Fin numPairWords := ⟨0, by decide⟩",
        f"private def {name}_mask : SignMask := ⟨{mask}, by decide⟩",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(exact.pair_word_at_rank(0))}",
        *lean_seq_definition(name, seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(b)}",
        f"private def {name}_denom : Rat := {exact.lean_rat(denom)}",
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
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_denomAtRank :",
        f"    impactDenomAtRank {name}_rank {name}_mask (⟨{impact}, by decide⟩ : Impact15) =",
        f"      {name}_denom := by",
        f"  rw [impactDenomAtRank, {name}_seqAtRank, {name}_bAtRank]",
        f"  norm_num [{name}_denom, {name}_seq, {name}_b,",
        *format_simp_list(DENOM_SIMPS),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_notGood (hlt : 0 < numPairWords) :",
        f"    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) {name}_mask := by",
        "  have hrank :",
        f"      (⟨0, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        "  apply not_goodDirectionAtRank_of_nonpositive_denom",
        "      (r := (⟨0, hlt⟩ : Fin numPairWords))",
        f"      (mask := {name}_mask)",
        f"      (i := (⟨{impact}, by decide⟩ : Impact15))",
        "    <;> try decide",
        f"  rw [hrank, {name}_denomAtRank]",
        f"  norm_num [{name}_denom]",
        "",
    ]


def descriptor_lines(index: int, symbolic: SymbolicCase, source_indices: list[int]) -> list[str]:
    fam = family_name(index)
    name = lean_case_name(symbolic.index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[symbolic.template_id]
    lines: list[str] = [
        f"/-- Rank-0 semantic survivor descriptor for mask {symbolic.case.mask}. -/",
        *support_lines(fam, symbolic.case.first_source, symbolic.case.second_source),
        f"private def {fam}_desc : SourceIndexStateFamilyDescriptor where",
        f"  firstIndex := {source_indices[0]}",
        f"  secondIndex := {source_indices[1]}",
        f"  support := {fam}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        *case_header_lines_for_family(
            ClassifiedCase(symbolic.index, symbolic.case, symbolic.template_id),
            f"{fam}_support",
        ),
        *rows_lines(symbolic),
        *source_match_lines(index, Member(symbolic)),
        f"private theorem {name}_applies :",
        f"    {fam}_desc.Applies {name}_rank.val {name}_mask := by",
        "  exact ⟨",
        f"    {name}_sourceMatches,",
        f"    by simpa [SourceIndexTemplate.Rows, {fam}_desc, {fam}_support, {name}_support] using {name}_rows",
        "  ⟩",
        "",
    ]
    return lines


def module_lines(namespace: str) -> tuple[list[str], dict[str, Any]]:
    rank = 0
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        raise RuntimeError("rank 0 is not identity-linear; smoke assumptions changed")

    good: list[dict[str, Any]] = []
    bad: list[dict[str, Any]] = []
    descriptors: list[tuple[SymbolicCase, list[int]]] = []
    next_index = 0

    for mask in range(64):
        profile = profile_classify_choice(rank, mask)
        if profile is None:
            raise RuntimeError(f"rank 0/mask {mask} unexpectedly nonidentity")
        b, seq = exact.translation_vector(word, mask)
        if profile["status"] == "not_good_direction":
            impact = exact.first_bad_translation_impact(seq, b)
            denom = exact.impact_denom(seq, b, impact)
            bad.append({
                "mask": mask,
                "impact": impact,
                "denom": str(denom),
                "seq": seq,
                "b": b,
                "denom_value": denom,
            })
            continue

        if profile["status"] != "covered":
            raise RuntimeError(f"rank 0/mask {mask} has unsupported status {profile['status']!r}")

        symbolic_result = symbolic_classify_choice(rank, mask)
        if symbolic_result is None:
            raise RuntimeError(f"symbolic classifier failed for rank 0/mask {mask}")
        _family_key, row_key, case, template_id = symbolic_result
        indices = list(profile["sample"]["source_agreement"]["indices"])
        symbolic = SymbolicCase(next_index, case, template_id, str(profile["template_source"]), row_key)
        descriptors.append((symbolic, indices))
        good.append({
            "mask": mask,
            "template_id": template_id,
            "source_indices": indices,
            "case_name": lean_case_name(next_index),
            "family_name": family_name(next_index),
        })
        next_index += 1

    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "",
        "/-!",
        "Generated rank-0 semantic hcomplete smoke for Phase 6Z.6K.8AP.16DU.9DE.",
        "",
        "This file is diagnostic only.  It checks the exact theorem surface needed",
        "for generated positive-survivor completeness: arbitrary identity-linear",
        "`GoodDirectionAtRank` cases map to broad source-index/state descriptors.",
        "Bad-direction masks are used only to contradict the `GoodDirectionAtRank`",
        "hypothesis for this one rank; they are not exported as coverage evidence.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]

    for item in bad:
        lines.extend(bad_not_good_lines(
            mask=int(item["mask"]),
            impact=int(item["impact"]),
            seq=list(item["seq"]),
            b=item["b"],
            denom=item["denom_value"],
        ))

    for index, (symbolic, indices) in enumerate(descriptors):
        lines.extend(descriptor_lines(index, symbolic, indices))

    lines.extend([
        "/--",
        "A microscopic complete semantic classifier for the rank interval `[0,1)`.",
        "",
        "The proof performs a finite mask split only in this diagnostic smoke.",
        "Production evidence must replace the split with state/signature families.",
        "-/",
        "theorem rank0DescriptorGoodCoverage :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 1 := by",
        "  intro rank mask hlt hlo hhi hM hgood",
        "  have hrank : rank = 0 := by omega",
        "  subst rank",
        "  fin_cases mask",
    ])

    good_by_mask = {item["mask"]: item for item in good}
    bad_by_mask = {item["mask"]: item for item in bad}
    for mask in range(64):
        if mask in good_by_mask:
            item = good_by_mask[mask]
            lines.append(
                f"  · exact ⟨{item['family_name']}_desc, by simpa [{item['case_name']}_rank, {item['case_name']}_mask] using {item['case_name']}_applies⟩"
            )
        else:
            if mask not in bad_by_mask:
                raise RuntimeError(f"missing mask {mask}")
            lines.append(
                f"  · exact False.elim ((mask_{mask:02d}_badDirection_notGood hlt) hgood)"
            )
    lines.extend([
        "",
        "theorem rank0AllGoodCoverage : AllTranslationGoodCoverageOnRange 0 1 :=",
        "  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage",
        "    rank0DescriptorGoodCoverage",
        "",
        "theorem semanticHCompleteRank0Smoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])

    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9DE",
        "trusted_as_proof": False,
        "rank_range": [0, 1],
        "word": word,
        "good_direction_survivors": len(good),
        "bad_direction_masks": len(bad),
        "good": good,
        "bad": [
            {key: value for key, value in item.items() if key not in {"seq", "b", "denom_value"}}
            for item in bad
        ],
        "decision": {
            "status": "emitted-rank0-semantic-hcomplete-smoke",
            "notes": [
                "diagnostic only",
                "uses SourceIndexStateDescriptorGoodCoverageOnRange directly",
                "does not import compact membership roots",
                "does not export bad-direction masks as production coverage evidence",
            ],
        },
    }
    return lines, payload


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DE Rank-0 Semantic Hcomplete Smoke",
        "",
        "This diagnostic is not trusted as the final proof.  It emits a tiny Lean",
        "module proving the missing semantic hcomplete shape for the single rank",
        "interval `[0,1)`.",
        "",
        f"- GoodDirection survivors: `{payload['good_direction_survivors']}`",
        f"- Bad-direction masks contradicted locally: `{payload['bad_direction_masks']}`",
        f"- Decision: `{payload['decision']['status']}`",
        "",
        "## Good Masks",
        "",
        "| Mask | Template | Source indices |",
        "| ---: | --- | --- |",
    ]
    for item in payload["good"]:
        lines.append(
            f"| {item['mask']} | `{item['template_id']}` | `{item['source_indices']}` |"
        )
    lines.extend([
        "",
        "## Bad Masks",
        "",
        "| Mask | First bad impact | Denominator |",
        "| ---: | ---: | ---: |",
    ])
    for item in payload["bad"]:
        lines.append(f"| {item['mask']} | {item['impact']} | `{item['denom']}` |")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    lines, payload = module_lines(args.namespace)
    write_text(args.out, "\n".join(lines))
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(f"wrote {args.out}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
