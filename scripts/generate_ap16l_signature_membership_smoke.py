#!/usr/bin/env python3
"""Emit a generated AP.16L singleton signature-membership smoke.

This is diagnostic generated Lean for the next AP.16K/AP.16L boundary.  It
uses one positive-survivor signature from the AP.16I catalog and proves the
Boolean classifier's `completeBool` field for the singleton rank interval from
rank bounds, a compact mask-soundness theorem, and theorem-valued source/row
facts.

The emitted module deliberately keeps the remaining hard facts as narrow
premises:

* `hmask` proves that Boolean GoodDirection at the anchor rank implies
  membership in the positive-mask predicate;
* `hfacts` proves theorem-valued source/row facts from that mask membership.

This is smaller than assuming the whole classifier and avoids generating
denominator-nonpositive evidence for masks that fail GoodDirection.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

from generate_ap16i_positive_membership_smoke import lean_template, select_group


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorSignatureMembershipGeneratedSmoke.lean"
)


def select_signature_for_group(profile: dict[str, Any], group: dict[str, Any]) -> dict[str, Any]:
    group_key = group["key"]
    signatures = profile.get("positive_survivor_signature_catalog", [])
    for signature in signatures:
        for candidate_keys in signature.get("mask_candidates", {}).values():
            if group_key in candidate_keys:
                return signature
    raise SystemExit(f"no positive survivor signature found for candidate {group_key}")


def candidate_groups_for_signature(
    profile: dict[str, Any], signature: dict[str, Any]
) -> list[dict[str, Any]]:
    catalog = {group["key"]: group for group in profile.get("positive_candidate_catalog", [])}
    ordered_keys: list[str] = []
    for mask in signature.get("good_masks", []):
        keys = signature.get("mask_candidates", {}).get(str(mask), [])
        if not keys:
            raise SystemExit(f"signature {signature['key']} has no candidate for mask {mask}")
        key = keys[0]
        if key not in catalog:
            raise SystemExit(f"signature {signature['key']} references unknown candidate {key}")
        if key not in ordered_keys:
            ordered_keys.append(key)
    return [catalog[key] for key in ordered_keys]


def candidate_ctor(index: int) -> str:
    return f"c{index:03d}"


def emit_candidate_defs(groups: list[dict[str, Any]]) -> str:
    ctors = "\n  | ".join(candidate_ctor(i) for i in range(len(groups)))
    spec_cases = []
    key_cases = []
    row_cases = []
    for i, group in enumerate(groups):
        ctor = candidate_ctor(i)
        template_id = group["template_ids"][0]
        template_ctor = lean_template(template_id)
        first, second = group["source_positions"]
        spec_cases.append(
            f"""  | .{ctor} => {{
      first := {first["lean"]}
      second := {second["lean"]} }}"""
        )
        key_cases.append(
            f"""  | .{ctor} => {{
      firstIndex := (generatedSpec .{ctor}).first.index
      secondIndex := (generatedSpec .{ctor}).second.index
      support := (generatedSpec .{ctor}).support
      template := SourceIndexTemplate.{template_ctor} }}"""
        )
        row_cases.append(
            f"""  | .{ctor} => {{
      Applies := fun key rank mask =>
        key = generatedKey .{ctor} /\\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }}"""
        )
    return f"""private inductive GeneratedCandidate
  | {ctors}
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
{chr(10).join(spec_cases)}

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
{chr(10).join(key_cases)}

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
{chr(10).join(row_cases)}
"""


def emit_candidate_of_nat(signature: dict[str, Any], groups: list[dict[str, Any]]) -> str:
    key_to_ctor = {group["key"]: candidate_ctor(i) for i, group in enumerate(groups)}
    cases = []
    for mask in signature.get("good_masks", []):
        keys = signature.get("mask_candidates", {}).get(str(mask), [])
        ctor = key_to_ctor[keys[0]]
        cases.append(f"  | {mask} => .{ctor}")
    default_ctor = candidate_ctor(0)
    return f"""private def generatedCandidateOfNat : Nat -> GeneratedCandidate
{chr(10).join(cases)}
  | _ => .{default_ctor}

private def generatedCandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  generatedCandidateOfNat mask.val
"""


def mask_member_expr(good_masks: list[int]) -> str:
    pieces = [f"mask.val = {mask}" for mask in good_masks]
    if not pieces:
        return "False"
    return " \\/\n    ".join(pieces)


def emit_module(profile: dict[str, Any], group: dict[str, Any], signature: dict[str, Any], output: Path) -> None:
    anchor = int(signature["ranks"][0])
    hi = anchor + 1
    good_masks = [int(mask) for mask in signature["good_masks"]]
    mask_expr = mask_member_expr(good_masks)
    candidate_groups = candidate_groups_for_signature(profile, signature)
    candidate_defs = emit_candidate_defs(candidate_groups)
    candidate_of_mask = emit_candidate_of_nat(signature, candidate_groups)
    candidate_map_comment = "\n".join(
        f"Mask {mask}: `{signature['mask_candidates'][str(mask)][0]}`"
        for mask in good_masks
    )

    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated singleton positive-survivor signature-membership smoke for AP.16L.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.

It checks the AP.16L singleton-signature constructor: the Boolean classifier's
`completeBool` field is proved from interval bounds and a compact
signature-local mask theorem, not assumed as one monolithic classifier premise.
No denominator-nonpositive witnesses are emitted for masks that fail
GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

{candidate_defs}

{candidate_of_mask}

private def generatedGoodMaskMember (mask : SignMask) : Prop :=
  {mask_expr}

private def generatedSignatureFacts (mask : SignMask) : Prop :=
  (generatedSpec (generatedCandidateOfMask mask)).Predicate {anchor} mask /\\
    (generatedRowProducer (generatedCandidateOfMask mask)).Applies
      (generatedKey (generatedCandidateOfMask mask)) {anchor} mask

private def generatedSignatureClassifier
    (hmask :
      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),
        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {{mask : SignMask}},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange {anchor} {hi} :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    {anchor} GeneratedCandidate generatedCandidateOfMask
    generatedGoodMaskMember generatedSignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    hmask hfacts
    (by
      intro mask h
      exact h.1)
    (by
      intro mask h
      exact h.2)

/--
AP.16L singleton signature-membership coverage theorem.

Candidate group: `{group["key"]}`
Positive-survivor signature: `{signature["key"]}`
Anchor rank: `{anchor}`
Catalog positive masks: `{", ".join(str(mask) for mask in good_masks)}`
Signature catalog cases: `{signature["case_count"]}`
Candidate groups used: `{len(candidate_groups)}`

Mask-to-candidate map:
{candidate_map_comment}

The remaining premises are exactly the split AP.16O proof obligations for the
next step: prove positive-mask membership from `goodDirectionAtRankBool = true`,
then prove theorem-valued source/row facts for the mask-selected candidate.
-/
theorem generatedSingletonSignatureAllGoodCoverage
    (hmask :
      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),
        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {{mask : SignMask}},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    AllTranslationGoodCoverageOnRange {anchor} {hi} :=
  (generatedSignatureClassifier hmask hfacts).to_allGoodCoverage

theorem generatedPositiveSurvivorSignatureMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke
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
    signature = select_signature_for_group(profile, group)
    emit_module(profile, group, signature, args.output)
    print(f"wrote {args.output}")
    print(
        "group="
        f"{group['key']} cases={group['case_count']} "
        f"signature={signature['key']} rank={signature['ranks'][0]} "
        f"good_masks={','.join(str(m) for m in signature['good_masks'])}"
    )


if __name__ == "__main__":
    main()
