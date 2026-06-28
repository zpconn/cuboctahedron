#!/usr/bin/env python3
"""Emit a generated AP.16J/AP.16K positive-survivor classifier smoke.

This is diagnostic-only generated Lean.  It consumes the AP.16I profile and
emits one representative source-position/row candidate as a private
`PositiveSurvivorClassifierOnRange`.  The emitted theorem still assumes the
semantic `hclass` classifier; the point of this smoke is to check the AP.16J
classifier object and erasure path, not to prove full coverage.

It also emits the AP.16K signature-classifier shape.  That surface factors the
remaining classifier proof into compact rank-signature membership,
GoodDirection-mask membership, and source/row facts.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

from generate_ap16i_positive_membership_smoke import lean_template, select_group  # noqa: E402


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorClassifierGeneratedSmoke.lean"
)


def emit_module(profile: dict[str, Any], group: dict[str, Any], output: Path) -> None:
    template_id = group["template_ids"][0]
    template_ctor = lean_template(template_id)
    first, second = group["source_positions"]
    lo, hi = profile["ranges"][0]

    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated positive-survivor classifier smoke for AP.16J.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json` and
contains one representative positive source-position/row candidate group.
It checks the classifier object/erasure surface and does not enumerate masks
that fail GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifierGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

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

private def generatedSignatureRank (_signature : Unit) (_rank : Nat) : Prop :=
  True

private def generatedSignatureGoodMask (_signature : Unit) (_mask : SignMask) : Prop :=
  True

private def generatedClassifier
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    PositiveSurvivorClassifierOnRange {lo} {hi} :=
  PositiveSurvivorClassifierOnRange.of_singleCandidate
    generatedCandidate generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hclass
    (by
      intro rank mask h
      exact h.1)
    (by
      intro rank mask h
      exact h.2)

private def generatedBoolClassifier
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                generatedCandidate rank mask) :
    PositiveSurvivorBoolClassifierOnRange {lo} {hi} :=
  PositiveSurvivorBoolClassifierOnRange.of_singleCandidate
    generatedCandidate generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hclass
    (by
      intro rank mask h
      exact h.1)
    (by
      intro rank mask h
      exact h.2)

private def generatedSignatureBoolClassifier
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists signature : Unit,
                  generatedSignatureRank signature rank /\\
                    generatedSignatureGoodMask signature mask)
    (hsource :
      forall {{signature : Unit}} {{rank : Nat}} {{mask : SignMask}},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedSpec.Predicate rank mask)
    (hrows :
      forall {{signature : Unit}} {{rank : Nat}} {{mask : SignMask}},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedRowProducer.Applies generatedKey rank mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange {lo} {hi} :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleSignatureCandidate
    Unit generatedSignatureRank generatedSignatureGoodMask
    generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hcomplete hsource hrows

/--
Representative generated AP.16J theorem for candidate group `{group["key"]}`.

Observed bounded cases in the AP.16I profile: `{group["case_count"]}`.
This is a theorem-surface smoke only; future production chunks must prove
the `hclass` classifier from semantic positive-survivor signatures.
-/
theorem generatedClassifierAllGoodCoverage
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  (generatedClassifier hclass).to_allGoodCoverage

/--
Boolean-classifier variant for the same representative group.

This is closer to the AP.16K production target: generated chunks may prove the
classifier from a compact Boolean positive-survivor signature, while this
generic surface converts semantic `GoodDirectionAtRank` to
`goodDirectionAtRankBool = true`.
-/
theorem generatedBoolClassifierAllGoodCoverage
    (hclass :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  (generatedBoolClassifier hclass).to_allGoodCoverage

/-!
AP.16K signature-classifier smoke.

The premises below are still diagnostic, but they are now the intended compact
production obligations:

* `hcomplete` assigns every Boolean GoodDirection survivor in this bounded range
  to a positive-survivor signature;
* `hsource` and `hrows` turn that signature/mask membership into semantic
  source-position and row-producer facts.

This is deliberately different from a direct `hclass` premise and does not
branch over masks that fail GoodDirection.
-/
theorem generatedSignatureBoolClassifierAllGoodCoverage
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists signature : Unit,
                  generatedSignatureRank signature rank /\\
                    generatedSignatureGoodMask signature mask)
    (hsource :
      forall {{signature : Unit}} {{rank : Nat}} {{mask : SignMask}},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedSpec.Predicate rank mask)
    (hrows :
      forall {{signature : Unit}} {{rank : Nat}} {{mask : SignMask}},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedRowProducer.Applies generatedKey rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  (generatedSignatureBoolClassifier hcomplete hsource hrows).to_allGoodCoverage

theorem generatedPositiveSurvivorClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifierGeneratedSmoke
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
    print(
        "group="
        f"{group['key']} cases={group['case_count']} "
        f"templates={','.join(group['template_ids'])}"
    )


if __name__ == "__main__":
    main()
