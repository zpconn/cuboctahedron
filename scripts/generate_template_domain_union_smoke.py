#!/usr/bin/env python3
"""Emit a bounded template-domain union smoke.

This diagnostic generated Lean file groups a small number of positive
candidate groups into reusable `TemplateLanguageDomain`s.  It proves one
member bridge per candidate domain, combines them into a union domain, and
leaves domain coverage as a narrow premise.

It is intentionally not global proof evidence.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

from generate_ap16i_positive_membership_smoke import lean_template


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorTemplateDomainUnionSmoke.lean"
)


def candidate_ctor(index: int) -> str:
    return f"c{index:03d}"


def select_top_candidate_groups(profile: dict[str, Any], count: int) -> list[dict[str, Any]]:
    groups = list(profile.get("positive_candidate_catalog", []))
    groups.sort(key=lambda group: int(group.get("case_count", 0)), reverse=True)
    selected = groups[:count]
    if len(selected) != count:
        raise SystemExit(f"requested {count} groups, found {len(selected)}")
    for group in selected:
        if len(group.get("template_ids", [])) != 1:
            raise SystemExit(f"group {group['key']} does not have exactly one template")
        if len(group.get("source_positions", [])) != 2:
            raise SystemExit(f"group {group['key']} does not have two source positions")
    return selected


def mask_set_key(signature: dict[str, Any]) -> tuple[int, ...]:
    return tuple(int(mask) for mask in signature.get("good_masks", []))


def select_top_good_mask_set_groups(profile: dict[str, Any]) -> tuple[list[dict[str, Any]], str]:
    signatures = profile.get("positive_survivor_signature_catalog", [])
    candidate_catalog = {
        group["key"]: group for group in profile.get("positive_candidate_catalog", [])
    }
    groups_by_mask_set: dict[tuple[int, ...], list[dict[str, Any]]] = {}
    for signature in signatures:
        groups_by_mask_set.setdefault(mask_set_key(signature), []).append(signature)
    if not groups_by_mask_set:
        raise SystemExit("profile has no positive survivor signatures")
    best_mask_set, best_signatures = max(
        groups_by_mask_set.items(),
        key=lambda item: (
            len(item[1]),
            sum(int(signature.get("case_count", 0)) for signature in item[1]),
        ),
    )
    candidate_keys: set[str] = set()
    for signature in best_signatures:
        for keys in signature.get("mask_candidates", {}).values():
            candidate_keys.update(keys)
    selected = []
    for key in candidate_keys:
        try:
            selected.append(candidate_catalog[key])
        except KeyError as exc:
            raise SystemExit(f"signature references unknown candidate group {key}") from exc
    selected.sort(key=lambda group: int(group.get("case_count", 0)), reverse=True)
    summary = (
        "selection=top-good-mask-set "
        f"masks={','.join(str(mask) for mask in best_mask_set)} "
        f"signature_count={len(best_signatures)} "
        f"case_count={sum(int(signature.get('case_count', 0)) for signature in best_signatures)} "
        f"candidate_union_size={len(selected)}"
    )
    return selected, summary


def validate_groups(groups: list[dict[str, Any]]) -> None:
    for group in groups:
        if len(group.get("template_ids", [])) != 1:
            raise SystemExit(f"group {group['key']} does not have exactly one template")
        if len(group.get("source_positions", [])) != 2:
            raise SystemExit(f"group {group['key']} does not have two source positions")


def emit_candidate_defs(groups: list[dict[str, Any]]) -> str:
    ctors = "\n  | ".join(candidate_ctor(i) for i in range(len(groups)))
    spec_cases = []
    key_cases = []
    row_cases = []
    for i, group in enumerate(groups):
        ctor = candidate_ctor(i)
        template_ctor = lean_template(group["template_ids"][0])
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


def emit_module(
    profile: dict[str, Any],
    groups: list[dict[str, Any]],
    output: Path,
    selection_summary: str,
) -> None:
    lo, hi = profile["ranges"][0]
    candidate_defs = emit_candidate_defs(groups)
    group_comments = "\n".join(
        f"- `{candidate_ctor(i)}`: `{group['key']}`, cases `{group['case_count']}`"
        for i, group in enumerate(groups)
    )

    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated template-domain union smoke.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.
It groups a few positive candidate domains and proves a union-domain member
bridge without emitting rank/mask tables.

Selection summary: `{selection_summary}`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

{candidate_defs}

private def generatedCandidateDomain
    (candidate : GeneratedCandidate) : TemplateLanguageDomain :=
  fun rank mask =>
    (generatedSpec candidate).Predicate rank mask /\\
      (generatedRowProducer candidate).Applies
        (generatedKey candidate) rank mask

private theorem generatedCandidateDomainMemberBridge
    (candidate : GeneratedCandidate) :
    TemplateLanguageMemberBridgeOnDomain
      (generatedCandidateDomain candidate) := by
  intro rank mask hlt hmem hM hgood
  have hfirst :
      (generatedKey candidate).firstIndex =
        (generatedSpec candidate).first.index := by
    cases candidate <;> rfl
  have hsecond :
      (generatedKey candidate).secondIndex =
        (generatedSpec candidate).second.index := by
    cases candidate <;> rfl
  have hsupport :
      (generatedKey candidate).support =
        (generatedSpec candidate).support := by
    cases candidate <;> rfl
  have hsource :
      SourceIndexStateSourceFacts
        (generatedKey candidate) rank mask :=
    (generatedSpec candidate).sourceFacts
      hfirst hsecond hsupport hmem.1
  have hrows :
      SourceIndexStateRowFacts
        (generatedKey candidate) rank mask :=
    (generatedRowProducer candidate).rowFacts hmem.2
  exact TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows

private def generatedUnionTemplateDomain : TemplateLanguageDomain :=
  fun rank mask =>
    exists candidate : GeneratedCandidate,
      generatedCandidateDomain candidate rank mask

private theorem generatedUnionTemplateDomainMemberBridge :
    TemplateLanguageMemberBridgeOnDomain
      generatedUnionTemplateDomain := by
  intro rank mask hlt hmem hM hgood
  rcases hmem with ⟨candidate, hcandidate⟩
  exact generatedCandidateDomainMemberBridge candidate hlt hcandidate hM hgood

/--
Union-domain smoke over the first bounded profile range `{lo}..{hi}`.

Selection summary: `{selection_summary}`.

Candidate domains:
{group_comments}

The `hcover` premise is intentionally the remaining production obligation:
future generated state/signature coverage must route every identity-linear
GoodDirection case into one of these reusable domains or another compressed
domain family.
-/
theorem generatedUnionTemplateDomainCovers
    (hcover :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageDomainCoversIdentityRange
      generatedUnionTemplateDomain {lo} {hi} := by
  intro rank mask hlt hlo hhi hM hgood
  exact hcover hlt hlo hhi hM hgood

theorem generatedUnionTemplateMemberBridgeViaDomain
    (hcover :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageMemberBridgeOnRange {lo} {hi} :=
  TemplateLanguageMemberBridgeOnDomain.to_range
    (generatedUnionTemplateDomainCovers hcover)
    generatedUnionTemplateDomainMemberBridge

theorem generatedUnionTemplateCoverageViaDomain
    (hcover :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageCoverageOnIdentityRange {lo} {hi} :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedUnionTemplateMemberBridgeViaDomain hcover)

theorem generatedTemplateDomainUnionSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke
"""
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(text, encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--candidate-count", type=int, default=4)
    parser.add_argument(
        "--selection",
        choices=["top-candidates", "top-good-mask-set"],
        default="top-candidates",
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if args.selection == "top-good-mask-set":
        groups, selection_summary = select_top_good_mask_set_groups(profile)
    else:
        groups = select_top_candidate_groups(profile, args.candidate_count)
        selection_summary = (
            f"selection=top-candidates candidate_count={args.candidate_count}"
        )
    validate_groups(groups)
    emit_module(profile, groups, args.output, selection_summary)
    print(f"wrote {args.output}")
    print(selection_summary)
    print("candidate_groups=" + ",".join(group["key"] for group in groups))
    print("case_counts=" + ",".join(str(group["case_count"]) for group in groups))


if __name__ == "__main__":
    main()
