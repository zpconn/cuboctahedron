#!/usr/bin/env python3
"""Emit a one-case AP.16S precomputed source/row fact smoke.

AP.16R showed that asking Lean to rediscover a concrete source/row fact by
unfolding the computed row predicate can OOM.  This diagnostic generator emits a
standalone AP.16S module for one positive survivor.  The module follows the
older accepted row-family pattern:

* precompute the rank word, translation sequence, translation vector, and two
  source lines as private Lean literals;
* prove the line equalities once using the existing bounded `norm_num` path;
* prove the classifier-facing source-position predicate from the precomputed
  sequence and the row-producer predicate from the precomputed line facts.

The script classifies exactly one rank/mask.  Python is only a guardrail; the
generated Lean theorem is the evidence under test.
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

from generate_ap16i_positive_membership_smoke import lean_template  # noqa: E402
from generate_ap16l_signature_membership_smoke import (  # noqa: E402
    select_signature_for_group,
)
from generate_translation_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    ClassifiedCase,
    case_shape_lines,
    collect_classified_cases,
    lean_case_name,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorPrecomputedFactSmoke.lean"
)
DEFAULT_RANK = 100_805
DEFAULT_MASK = 4


def candidate_group_for_mask(
    profile: dict[str, Any],
    signature: dict[str, Any],
    mask: int,
) -> dict[str, Any]:
    catalog = {group["key"]: group for group in profile.get("positive_candidate_catalog", [])}
    keys = signature.get("mask_candidates", {}).get(str(mask), [])
    if not keys:
        raise SystemExit(f"signature {signature['key']} has no candidate for mask {mask}")
    key = keys[0]
    try:
        return catalog[key]
    except KeyError as exc:
        raise SystemExit(f"signature {signature['key']} references unknown candidate {key}") from exc


def select_signature_containing_rank_mask(
    profile: dict[str, Any],
    rank: int,
    mask: int,
) -> dict[str, Any]:
    for group in profile.get("top_positive_candidate_groups", []):
        signature = select_signature_for_group(profile, group)
        if rank in [int(item) for item in signature.get("ranks", [])] and mask in [
            int(item) for item in signature.get("good_masks", [])
        ]:
            return signature
    for signature in profile.get("positive_survivor_signature_catalog", []):
        if rank in [int(item) for item in signature.get("ranks", [])] and mask in [
            int(item) for item in signature.get("good_masks", [])
        ]:
            return signature
    raise SystemExit(f"no positive survivor signature contains rank {rank}, mask {mask}")


def classified_case_at(rank: int, mask: int) -> ClassifiedCase:
    classified, _by_rank, stats = collect_classified_cases(rank, 1)
    for cc in classified:
        if cc.case.rank == rank and cc.case.mask == mask:
            return ClassifiedCase(0, cc.case, cc.template_id)
    raise SystemExit(
        f"rank {rank}, mask {mask} was not classified as a row-template survivor; "
        f"stats={stats}"
    )


def emit_module(
    *,
    profile: dict[str, Any],
    cc: ClassifiedCase,
    signature: dict[str, Any],
    group: dict[str, Any],
    output: Path,
) -> None:
    case = cc.case
    if len(group.get("source_positions", [])) != 2:
        raise SystemExit("selected candidate group does not have exactly two source positions")
    if len(group.get("template_ids", [])) != 1:
        raise SystemExit("selected candidate group does not have exactly one template")
    template_id = group["template_ids"][0]
    if template_id != cc.template_id:
        raise SystemExit(
            f"profile candidate template {template_id} does not match classified case "
            f"template {cc.template_id}"
        )

    first, second = group["source_positions"]
    template_ctor = lean_template(template_id)
    name = lean_case_name(cc.index)
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "",
        "/-!",
        "Generated AP.16S precomputed source/row fact smoke.",
        "",
        "This file is diagnostic only.  It proves one positive-survivor",
        "classifier fact without using the old ordinary translation checker and",
        "without asking Lean to rediscover source/row facts by a large computed",
        "predicate reduction.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedFactSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        f"/-- AP.16S singleton: rank `{case.rank}`, mask `{case.mask}`. -/",
        f"private def generatedSpec : SourcePairPositionSpec where",
        f"  first := {first['lean']}",
        f"  second := {second['lean']}",
        "",
        "private def generatedKey : SourceIndexStateKey where",
        "  firstIndex := generatedSpec.first.index",
        "  secondIndex := generatedSpec.second.index",
        "  support := generatedSpec.support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        "private def generatedRowProducer : SourceIndexStateRowProducer where",
        "  Applies := fun key rank mask =>",
        "    key = generatedKey /\\",
        "      key.template.Rows key.support rank mask",
        "  rowFacts := by",
        "    intro key rank mask h",
        "    exact SourceIndexStateRowFacts.of_rows h.2",
        "",
        *case_header_lines_for_family(cc, "generated"),
        *case_shape_lines(cc),
        f"private theorem generatedSupport_eq_{name}_support :",
        f"    generatedSpec.support = {name}_support := by",
        "  rfl",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_sourcePredicate :",
        f"    generatedSpec.Predicate {name}_rank.val {name}_mask := by",
        "  intro hlt",
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        "  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
        f"  have hshape := {name}_shape hlt",
        "  have hfirst : generatedSpec.first.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        "    simp [generatedSpec, SourcePositionSpec.Holds, hseq,",
        f"      {name}_seq, impactFace]",
        "    decide",
        "  have hsecond : generatedSpec.second.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        "    simp [generatedSpec, SourcePositionSpec.Holds]",
        "  have hsourceChecks :",
        f"      SourceChecks generatedSpec.support {name}_rank.val hlt {name}_mask := by",
        f"    rw [generatedSupport_eq_{name}_support]",
        "    exact hshape.1",
        "  exact ⟨hfirst, hsecond, hsourceChecks⟩",
        "",
        f"private theorem {name}_rowsForKey :",
        f"    generatedKey.template.Rows generatedKey.support {name}_rank.val {name}_mask := by",
        f"  change EqEqPosVarFirstRows generatedKey.support {name}_rank.val {name}_mask",
        f"  rw [show generatedKey.support = {name}_support by rfl]",
        "  intro hlt",
        f"  exact ({name}_shape hlt).2",
        "",
        f"private theorem {name}_rowProducerApplies :",
        f"    generatedRowProducer.Applies generatedKey {name}_rank.val {name}_mask := by",
        f"  exact ⟨rfl, {name}_rowsForKey⟩",
        "",
        "/--",
        "AP.16S bridge target for one positive survivor.",
        "",
        f"Positive-survivor signature: `{signature['key']}`",
        f"Candidate group: `{group['key']}`",
        f"Template: `{template_id}`",
        "-/",
        "theorem generatedPrecomputedFactSmoke :",
        f"    generatedSpec.Predicate {name}_rank.val {name}_mask /\\",
        f"      generatedRowProducer.Applies generatedKey {name}_rank.val {name}_mask := by",
        f"  exact ⟨{name}_sourcePredicate, {name}_rowProducerApplies⟩",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedFactSmoke",
        "",
    ]
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    group = candidate_group_for_mask(profile, signature, args.mask)
    cc = classified_case_at(args.rank, args.mask)
    emit_module(profile=profile, cc=cc, signature=signature, group=group, output=args.output)
    print(
        f"wrote {args.output} for rank {args.rank}, mask {args.mask}, "
        f"signature {signature['key']}, group {group['key']}"
    )


if __name__ == "__main__":
    main()
