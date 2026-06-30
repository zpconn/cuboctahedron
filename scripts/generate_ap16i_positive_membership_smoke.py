#!/usr/bin/env python3
"""Emit a tiny generated AP.16I positive-survivor membership smoke.

This is diagnostic-only generated Lean.  It consumes the accepted AP.16I JSON
profile and emits one representative source-position/row-producer candidate
group as a Lean module.  The generated theorem keeps the AP.16I proof shape:
it assumes `GoodDirectionAtRank` and positive membership facts, and it does not
branch over masks that fail GoodDirection.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorMembershipGeneratedSmoke.lean"
)

TEMPLATE_CONSTRUCTORS = {
    "axis_a_only": "axisAOnly",
    "axis_b_only": "axisBOnly",
    "eq_eq_neg_var_first": "eqEqNegVarFirst",
    "eq_eq_neg_var_second": "eqEqNegVarSecond",
    "eq_eq_pos_var_first": "eqEqPosVarFirst",
    "eq_eq_pos_var_second": "eqEqPosVarSecond",
    "exact_two_source_valid": "exactTwoSourceValid",
    "opp_1m_var_first": "oppOneMinusVarFirst",
    "opp_1m_var_second": "oppOneMinusVarSecond",
    "opp_m1_var_first": "oppMinusOneVarFirst",
    "opp_m1_var_second": "oppMinusOneVarSecond",
}


def lean_template(template_id: str) -> str:
    try:
        return TEMPLATE_CONSTRUCTORS[template_id]
    except KeyError as exc:
        raise SystemExit(f"unknown template id in profile: {template_id}") from exc


def select_group(profile: dict[str, Any], index: int) -> dict[str, Any]:
    groups = profile.get("top_positive_candidate_groups", [])
    if not groups:
        raise SystemExit("profile has no top_positive_candidate_groups")
    if index < 0 or index >= len(groups):
        raise SystemExit(f"group index {index} out of range 0..{len(groups) - 1}")
    group = groups[index]
    if len(group.get("template_ids", [])) != 1:
        raise SystemExit("representative group must have exactly one template")
    if len(group.get("source_positions", [])) != 2:
        raise SystemExit("representative group must have exactly two source positions")
    return group


def emit_module(profile: dict[str, Any], group: dict[str, Any], output: Path) -> None:
    template_id = group["template_ids"][0]
    template_ctor = lean_template(template_id)
    first, second = group["source_positions"]
    lo, hi = profile["ranges"][0]

    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated positive-survivor membership smoke for AP.16I.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json` and
contains one representative positive source-position/row candidate group.
It assumes a `GoodDirectionAtRank` survivor and does not enumerate masks that
fail GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

private def generatedSpec : SourcePairPositionSpec where
  first := {first["lean"]}
  second := {second["lean"]}

private def generatedKey : SourceIndexStateKey where
  firstIndex := generatedSpec.first.index
  secondIndex := generatedSpec.second.index
  support := generatedSpec.support
  template := SourceIndexTemplate.{template_ctor}

private def generatedRowProducer : SourceIndexStateRowProducer where
  Applies := fun key rank mask =>
    key = generatedKey /\\
      key.template.Rows key.support rank mask
  rowFacts := by
    intro key rank mask h
    exact SourceIndexStateRowFacts.of_rows h.2

private def generatedCandidate (rank : Nat) (mask : SignMask) : Prop :=
  generatedSpec.Predicate rank mask /\\
    generatedRowProducer.Applies generatedKey rank mask

/--
Representative generated AP.16I theorem for candidate group `{group["key"]}`.

Observed bounded cases in the profile: `{group["case_count"]}`.
This is a theorem-surface smoke only; future production chunks must prove
the `hclass` classifier from semantic positive-survivor signatures.
-/
theorem generatedGroupSourcePositionCoverage
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    SourcePositionRowProducerGoodCoverageOnRange {lo} {hi} :=
  SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
    generatedSpec generatedRowProducer generatedKey rfl rfl rfl
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact (hclass hlt hlo hhi hM hgood).1)
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact (hclass hlt hlo hhi hM hgood).2)

theorem generatedGroupAllGoodCoverage
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    (generatedGroupSourcePositionCoverage hclass)

theorem generatedGroupTemplateMemberBridge
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageMemberBridgeOnRange {lo} {hi} :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge
    (generatedGroupSourcePositionCoverage hclass)

theorem generatedGroupTemplateCoverage
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageCoverageOnIdentityRange {lo} {hi} :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedGroupTemplateMemberBridge hclass)

theorem generatedPositiveSurvivorMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipGeneratedSmoke
"""
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(text, encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--group-index", type=int, default=0)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    group = select_group(profile, args.group_index)
    emit_module(profile, group, args.output)
    print(f"wrote {args.output}")
    print(f"group={group['key']} cases={group['case_count']}")


if __name__ == "__main__":
    main()
