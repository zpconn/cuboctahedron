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

    observed_cases = sum(int(group.get("case_count", 0)) for group in candidates)
    chunk_size = plan["candidate_catalog_route"]["chunk_size"]
    text = f"""import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated AP16DU.0 positive-survivor candidate-catalog surface smoke.

This file is diagnostic only.  It validates the multi-candidate catalog
classifier surface selected by AP16DT.  The generated theorem still assumes the
catalog-completeness premise; it does not prove final coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

set_option linter.unusedVariables false

/-- First AP16DT candidate chunk: `{len(candidates)}` shared candidate groups. -/
inductive GeneratedCandidate
  | {ctor_lines}
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
{chr(10).join(spec_cases)}

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
{chr(10).join(key_cases)}

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
{chr(10).join(row_cases)}

private def generatedMember (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

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
AP16DU.0 surface theorem for the first candidate chunk.

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
    observed_cases = sum(int(group.get("case_count", 0)) for group in candidates)
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.0",
        "mode": "candidate_catalog_surface_smoke",
        "trusted_as_proof": False,
        "lean_output": str(output),
        "range": profile["ranges"][0],
        "candidate_count": len(candidates),
        "observed_good_direction_cases": observed_cases,
        "total_candidate_groups": plan["profile_summary"]["positive_candidate_groups"],
        "decision": {
            "status": "surface-smoke-generated",
            "notes": [
                "validates the multi-candidate classifier theorem surface",
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
        "# Phase 6Z.6K.8AP.16DU.0 candidate-catalog surface smoke",
        "",
        "This report is not proof evidence.  It records a generated Lean surface",
        "for the AP16DT candidate-catalog classifier route.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Lean output: `{output}`",
        f"- Range: `{payload['range']}`",
        f"- Candidate groups in chunk: `{len(candidates)}`",
        f"- Profiled GoodDirection cases represented by chunk: `{observed_cases}`",
        f"- Total candidate groups in AP16I profile: `{payload['total_candidate_groups']}`",
        "",
        "The generated theorem still takes `hcomplete` as a premise.  The next",
        "phase must prove that premise; this smoke only validates that the",
        "multi-candidate catalog erases to `AllTranslationGoodCoverageOnRange`",
        "without rank-local singleton facts or bad-direction evidence.",
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
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = read_json(args.profile)
    plan = read_json(args.plan)
    candidates = selected_candidates(profile, chunk=args.chunk, chunk_size=args.chunk_size)
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
    print(f"observed_cases={sum(int(group.get('case_count', 0)) for group in candidates)}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
