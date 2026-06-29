#!/usr/bin/env python3
"""Emit an AP16DU.0 positive-survivor candidate-catalog surface smoke.

This is diagnostic-only generated Lean.  It is not proof evidence.

AP16DT selected shared positive candidate groups as the next production
classifier coordinate.  This emitter validates the theorem surface for the
first candidate chunk: a private finite candidate catalog whose members carry
source-position and row-producer facts, erasing to
`AllTranslationGoodCoverageOnRange`.

The generated theorem still takes the catalog-completeness premise explicitly.
The next phase must prove that premise from `goodDirectionAtRankBool = true`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

from generate_ap16i_positive_membership_smoke import lean_template  # noqa: E402


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_PLAN = Path("scripts/generated/phase6z6k8ap16dt_positive_survivor_classifier_slice_plan.json")
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorCandidateCatalogSurfaceSmoke.lean"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du_candidate_catalog_surface_smoke.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def candidate_ctor(index: int) -> str:
    return f"c{index:03d}"


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def selected_candidates(profile: dict[str, Any], *, chunk: int, chunk_size: int) -> list[dict[str, Any]]:
    candidates = sorted(
        profile.get("positive_candidate_catalog", []),
        key=lambda row: (-int(row.get("case_count", 0)), row.get("key", "")),
    )
    start = chunk * chunk_size
    stop = start + chunk_size
    return candidates[start:stop]


def selected_candidates_from_range_audit(
    profile: dict[str, Any],
    audit: dict[str, Any],
) -> list[dict[str, Any]]:
    by_key = {
        row["key"]: row
        for row in profile.get("positive_candidate_catalog", [])
    }
    selected: list[dict[str, Any]] = []
    missing: list[str] = []
    for row in audit.get("range_candidate_keys", []):
        key = row["key"]
        candidate = by_key.get(key)
        if candidate is None:
            missing.append(key)
        else:
            selected.append(candidate)
    if missing:
        raise SystemExit(
            "range audit names candidate keys missing from AP16I profile: "
            + ", ".join(missing[:5])
        )
    return selected


def emit_candidate_catalog_module(
    *,
    profile: dict[str, Any],
    plan: dict[str, Any],
    candidates: list[dict[str, Any]],
    output: Path,
) -> None:
    lo, hi = profile["ranges"][0]
    ctor_lines = "\n  | ".join(candidate_ctor(i) for i in range(len(candidates)))
    spec_cases: list[str] = []
    key_cases: list[str] = []
    row_cases: list[str] = []
    to_fin_cases: list[str] = []
    key_at_cases: list[str] = []

    for index, group in enumerate(candidates):
        ctor = candidate_ctor(index)
        first, second = group["source_positions"]
        template_ctor = lean_template(group["template_ids"][0])
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
        to_fin_cases.append(
            f"  | .{ctor} => ⟨{index}, by decide⟩"
        )
        key_at_cases.append(
            f"  if i.val = {index} then generatedKey .{ctor} else"
        )

    observed_cases = int(
        plan.get("range_audit_payload", {}).get(
            "profiled_good_direction_cases",
            sum(int(group.get("case_count", 0)) for group in candidates),
        )
    )
    chunk_size = plan["candidate_catalog_route"]["chunk_size"]
    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge

/-!
Generated AP16DU.9F positive-survivor candidate-catalog facts adapter.

This file is diagnostic only.  It validates the multi-candidate catalog
classifier surface selected by AP16DT and erases it through the finite
source/row-facts catalog API.  The generated theorems still assume the
catalog-completeness premise; they do not prove final coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge

set_option linter.unusedVariables false

/-- AP16DU selected candidate catalog: `{len(candidates)}` shared candidate groups. -/
inductive GeneratedCandidate
  | {ctor_lines}
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
{chr(10).join(spec_cases)}

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
{chr(10).join(key_cases)}

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
{chr(10).join(row_cases)}

private def GeneratedCandidate.toFin : GeneratedCandidate -> Fin {len(candidates)}
{chr(10).join(to_fin_cases)}

private def generatedCandidateKeyAt (i : Fin {len(candidates)}) : SourceIndexStateKey :=
{chr(10).join(key_at_cases)}
  generatedKey .{candidate_ctor(len(candidates) - 1)}

private theorem generatedCandidateKeyAt_toFin
    (candidate : GeneratedCandidate) :
    generatedCandidateKeyAt candidate.toFin = generatedKey candidate := by
  cases candidate <;> rfl

private def generatedMember (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

private theorem generatedCandidateSourceFacts
    {{candidate : GeneratedCandidate}} {{rank : Nat}} {{mask : SignMask}}
    (hmember : generatedMember candidate rank mask) :
    SourceIndexStateSourceFacts (generatedKey candidate) rank mask := by
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
  exact (generatedSpec candidate).sourceFacts
    hfirst hsecond hsupport hmember.1

private theorem generatedCandidateRowFacts
    {{candidate : GeneratedCandidate}} {{rank : Nat}} {{mask : SignMask}}
    (hmember : generatedMember candidate rank mask) :
    SourceIndexStateRowFacts (generatedKey candidate) rank mask :=
  (generatedRowProducer candidate).rowFacts hmember.2

private def generatedCatalogClassifier
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    PositiveSurvivorBoolClassifierOnRange {lo} {hi} where
  Candidate := GeneratedCandidate
  spec := generatedSpec
  rowProducer := generatedRowProducer
  key := generatedKey
  Member := generatedMember
  firstIndex := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  secondIndex := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  support := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  source := by
    intro candidate rank mask hmember
    exact hmember.1
  rows := by
    intro candidate rank mask hmember
    exact hmember.2
  completeBool := hcomplete

/--
AP16DU.9F surface theorem for the selected candidate catalog.

The selected chunk has `{len(candidates)}` candidate groups out of
`{plan["profile_summary"]["positive_candidate_groups"]}` and accounts for
`{observed_cases}` profiled GoodDirection cases in the AP16I sample.  The
remaining `hcomplete` premise is the actual AP16DU proof obligation.
-/
theorem generatedCandidateCatalogAllGoodCoverage
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  (generatedCatalogClassifier hcomplete).to_allGoodCoverage

/--
AP16DU.9AB row-property erasure adapter for the selected candidate catalog.

This is the same candidate-completeness premise as
`generatedCandidateCatalogAllGoodCoverage`, but it erases through the
existential source/row bridge instead of constructing a finite key catalog.
-/
theorem generatedCandidateRowPropertyCoverage
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    RowPropertyParametricCoverageOnIdentityRange {lo} {hi} := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood) with
    ⟨candidate, hmember⟩
  exact ⟨generatedKey candidate, generatedCandidateSourceFacts hmember,
    generatedCandidateRowFacts hmember⟩

theorem generatedCandidateCatalogAllGoodCoverage_viaRowProperty
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    (generatedCandidateRowPropertyCoverage hcomplete)

/--
AP16DU.1 catalog-facts adapter for the selected candidate catalog.

This exposes the same candidate-completeness premise as a finite
`SourceRowFactsGoodCatalogOnRange` theorem, which is the current public
source-index coverage API.  The generated candidate data remains private and
is immediately erased to source/row facts.
-/
theorem generatedCandidateSourceRowFactsCatalog
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    SourceRowFactsGoodCatalogOnRange generatedCandidateKeyAt {lo} {hi} := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood) with
    ⟨candidate, hmember⟩
  refine ⟨candidate.toFin, ?_, ?_⟩
  · have hlookup := generatedCandidateKeyAt_toFin candidate
    have hsource := generatedCandidateSourceFacts hmember
    simpa [hlookup] using hsource
  · have hlookup := generatedCandidateKeyAt_toFin candidate
    have hrows := generatedCandidateRowFacts hmember
    simpa [hlookup] using hrows

theorem generatedCandidateCatalogAllGoodCoverage_viaFactsCatalog
    (hcomplete :
      forall {{rank : Nat}} {{mask : SignMask}} (hlt : rank < numPairWords),
        {lo} <= rank ->
          rank < {hi} ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    AllTranslationGoodCoverageOnRange {lo} {hi} :=
  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage
    (generatedCandidateSourceRowFactsCatalog hcomplete)

theorem candidateCatalogSurfaceSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke
"""
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(text, encoding="utf-8")


def write_reports(
    *,
    profile: dict[str, Any],
    plan: dict[str, Any],
    candidates: list[dict[str, Any]],
    output: Path,
    json_path: Path,
    md_path: Path,
) -> None:
    observed_cases = int(
        plan.get("range_audit_payload", {}).get(
            "profiled_good_direction_cases",
            sum(int(group.get("case_count", 0)) for group in candidates),
        )
    )
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9F",
        "mode": "candidate_catalog_surface_smoke",
        "trusted_as_proof": False,
        "lean_output": str(output),
        "range": profile["ranges"][0],
        "candidate_count": len(candidates),
        "observed_good_direction_cases": observed_cases,
        "selection": "range-audit" if plan.get("range_audit_selection") else "global-chunk",
        "total_candidate_groups": plan["profile_summary"]["positive_candidate_groups"],
        "decision": {
            "status": "surface-smoke-generated",
            "notes": [
                "validates the multi-candidate classifier theorem surface",
                "validates erasure to SourceRowFactsGoodCatalogOnRange",
                "validates erasure through RowPropertyParametricCoverageOnIdentityRange",
                "does not prove the catalog-completeness premise",
                "does not import rank-local singleton candidate-facts shards",
                "does not enumerate masks that fail GoodDirection",
            ],
        },
        "next_required_proof": {
            "theorem_premise": "hcomplete",
            "description": (
                "prove that every identity-linear Boolean GoodDirection survivor "
                "in the range belongs to one generated candidate carrying source "
                "and row facts"
            ),
        },
    }
    json_path.parent.mkdir(parents=True, exist_ok=True)
    json_path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    md = [
        "# Phase 6Z.6K.8AP.16DU.9F candidate-catalog facts adapter",
        "",
        "This report is not proof evidence.  It records a generated Lean surface",
        "for the AP16DT candidate-catalog classifier route and the DU.9F",
        "facts-catalog erasure adapter.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Lean output: `{output}`",
        f"- Range: `{payload['range']}`",
        f"- Candidate groups in chunk: `{len(candidates)}`",
        f"- Selection: `{payload['selection']}`",
        f"- Profiled GoodDirection cases represented by chunk: `{observed_cases}`",
        f"- Total candidate groups in AP16I profile: `{payload['total_candidate_groups']}`",
        "",
        "The generated theorems still take `hcomplete` as a premise.  The next",
        "phase must prove that premise; this smoke validates that the",
        "multi-candidate catalog erases both directly to",
        "`AllTranslationGoodCoverageOnRange` and through",
        "`RowPropertyParametricCoverageOnIdentityRange` and",
        "`SourceRowFactsGoodCatalogOnRange`, without rank-local singleton facts",
        "or bad-direction evidence.",
    ]
    md_path.write_text("\n".join(md) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--plan", type=Path, default=DEFAULT_PLAN)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--chunk", type=int, default=0)
    parser.add_argument("--chunk-size", type=int, default=64)
    parser.add_argument(
        "--range-audit",
        type=Path,
        default=None,
        help="optional AP16DU range-coverage audit JSON; when set, select all candidate keys used in that range",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = read_json(args.profile)
    plan = read_json(args.plan)
    if args.range_audit is None:
        candidates = selected_candidates(profile, chunk=args.chunk, chunk_size=args.chunk_size)
    else:
        audit = read_json(args.range_audit)
        candidates = selected_candidates_from_range_audit(profile, audit)
        plan = dict(plan)
        plan["range_audit_selection"] = str(args.range_audit)
        plan["range_audit_payload"] = audit
    if not candidates:
        raise SystemExit("selected candidate chunk is empty")
    emit_candidate_catalog_module(
        profile=profile,
        plan=plan,
        candidates=candidates,
        output=args.output,
    )
    write_reports(
        profile=profile,
        plan=plan,
        candidates=candidates,
        output=args.output,
        json_path=args.json,
        md_path=args.md,
    )
    print(f"wrote {args.output}")
    print(f"candidate_count={len(candidates)}")
    observed_cases = int(
        plan.get("range_audit_payload", {}).get(
            "profiled_good_direction_cases",
            sum(int(group.get("case_count", 0)) for group in candidates),
        )
    )
    print(f"observed_cases={observed_cases}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
