#!/usr/bin/env python3
"""Emit an AP.16W shared-candidate/routing smoke.

AP.16V shows that many positive-survivor signatures reuse the same source/row
candidate groups.  AP.16W tests the corresponding Lean module architecture on a
small bounded slice:

* one shared module defines candidate specs/producers and proves concrete
  candidate facts for selected positive masks;
* one routing module imports those facts and proves per-signature all-Good
  coverage by mapping each GoodDirection mask to an already-proved candidate.

This is diagnostic only.  It does not claim global coverage.
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
from generate_ap16i_positive_membership_smoke import lean_template  # noqa: E402
from generate_ap16l_signature_membership_smoke import (  # noqa: E402
    candidate_groups_for_signature,
    mask_member_expr,
)
from generate_ap16s_precomputed_fact_smoke import (  # noqa: E402
    candidate_group_for_mask,
)
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    ROWS_PREDICATE,
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
DEFAULT_OUT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
)
DEFAULT_SHARED_OUTPUT = DEFAULT_OUT_DIR / "PositiveSurvivorSharedCandidateFactsSmoke.lean"
DEFAULT_ROUTING_OUTPUT = DEFAULT_OUT_DIR / "PositiveSurvivorSharedRoutingSmoke.lean"
DEFAULT_SHARED_MODULE = "PositiveSurvivorSharedCandidateFactsSmoke"
DEFAULT_ROUTING_MODULE = "PositiveSurvivorSharedRoutingSmoke"
NAMESPACE_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
)


def candidate_ctor(index: int) -> str:
    return f"c{index:03d}"


def signature_name(index: int) -> str:
    return f"sig_{index:03d}"


def selected_signatures(profile: dict[str, Any], count: int) -> list[dict[str, Any]]:
    signatures = profile.get("positive_survivor_signature_catalog", [])
    if len(signatures) < count:
        raise SystemExit(f"profile has only {len(signatures)} signatures, need {count}")
    return signatures[:count]


def selected_signatures_by_fact_budget(
    profile: dict[str, Any],
    budget: int,
) -> list[dict[str, Any]]:
    signatures = profile.get("positive_survivor_signature_catalog", [])
    selected: list[dict[str, Any]] = []
    total = 0
    for signature in signatures:
        fact_count = len(signature.get("good_masks", []))
        if selected and total + fact_count > budget:
            break
        if not selected and fact_count > budget:
            selected.append(signature)
            break
        selected.append(signature)
        total += fact_count
    if not selected:
        raise SystemExit(f"no signatures selected for fact budget {budget}")
    return selected


def classify_signature_cases(
    signature: dict[str, Any],
    *,
    next_index: int,
) -> tuple[dict[int, ClassifiedCase], int]:
    anchor = int(signature["ranks"][0])
    good_masks = [int(mask) for mask in signature["good_masks"]]
    classified, _by_rank, stats = collect_classified_cases(anchor, 1)
    by_mask = {cc.case.mask: cc for cc in classified}
    cases: dict[int, ClassifiedCase] = {}
    for mask in good_masks:
        if mask not in by_mask:
            raise SystemExit(
                f"rank {anchor} missing classified GoodDirection mask {mask}; stats={stats}"
            )
        original = by_mask[mask]
        cases[mask] = ClassifiedCase(next_index, original.case, original.template_id)
        next_index += 1
    return cases, next_index


def emit_candidate_defs(groups: list[dict[str, Any]]) -> tuple[list[str], dict[str, str]]:
    ctors = "\n  | ".join(candidate_ctor(i) for i in range(len(groups)))
    key_to_ctor = {group["key"]: candidate_ctor(i) for i, group in enumerate(groups)}
    spec_cases = []
    key_cases = []
    row_cases = []
    for index, group in enumerate(groups):
        ctor = candidate_ctor(index)
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
    return [
        f"""inductive GeneratedCandidate
  | {ctors}
deriving DecidableEq, Repr

def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
{chr(10).join(spec_cases)}

def generatedKey : GeneratedCandidate -> SourceIndexStateKey
{chr(10).join(key_cases)}

def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
{chr(10).join(row_cases)}

def CandidateFacts (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask
"""
    ], key_to_ctor


def emit_shared_case_fact(
    *,
    cc: ClassifiedCase,
    group: dict[str, Any],
    ctor: str,
) -> list[str]:
    case = cc.case
    name = lean_case_name(cc.index)
    template_id = group["template_ids"][0]
    if template_id != cc.template_id:
        raise SystemExit(
            f"mask {case.mask}: candidate template {template_id} does not match "
            f"classified template {cc.template_id}"
        )
    rows_predicate = ROWS_PREDICATE[template_id]
    return [
        f"/-- AP.16W shared candidate fact: rank `{case.rank}`, mask `{case.mask}`. -/",
        *case_header_lines_for_family(cc, "generated"),
        *case_shape_lines(cc),
        f"private theorem {name}_sourcePredicate :",
        f"    (generatedSpec .{ctor}).Predicate {name}_rank.val {name}_mask := by",
        "  intro hlt",
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        "  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
        f"  have hshape := {name}_shape hlt",
        f"  have hfirst : (generatedSpec .{ctor}).first.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        f"    simp [generatedSpec, SourcePositionSpec.Holds, hseq, {name}_seq, impactFace] <;> decide",
        f"  have hsecond : (generatedSpec .{ctor}).second.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        "    simp [generatedSpec, SourcePositionSpec.Holds]",
        "  have hsourceChecks :",
        f"      SourceChecks (generatedSpec .{ctor}).support {name}_rank.val hlt {name}_mask := by",
        f"    change SourceChecks {name}_support {name}_rank.val hlt {name}_mask",
        "    exact hshape.1",
        "  exact ⟨hfirst, hsecond, hsourceChecks⟩",
        "",
        f"private theorem {name}_rowsForKey :",
        f"    (generatedKey .{ctor}).template.Rows (generatedKey .{ctor}).support",
        f"      {name}_rank.val {name}_mask := by",
        f"  change {rows_predicate} (generatedKey .{ctor}).support {name}_rank.val {name}_mask",
        f"  rw [show (generatedKey .{ctor}).support = {name}_support by rfl]",
        "  intro hlt",
        f"  exact ({name}_shape hlt).2",
        "",
        f"private theorem {name}_rowProducerApplies :",
        f"    (generatedRowProducer .{ctor}).Applies (generatedKey .{ctor})",
        f"      {name}_rank.val {name}_mask := by",
        f"  exact ⟨rfl, {name}_rowsForKey⟩",
        "",
        f"theorem {name}_candidateFacts :",
        f"    CandidateFacts .{ctor} {case.rank} {exact.lean_sign_mask(case.mask)} := by",
        f"  simpa [CandidateFacts, {name}_rank, {name}_mask] using",
        f"    And.intro {name}_sourcePredicate {name}_rowProducerApplies",
        "",
    ]


def emit_shared_module(
    *,
    groups: list[dict[str, Any]],
    key_to_ctor: dict[str, str],
    signature_cases: list[tuple[dict[str, Any], dict[int, ClassifiedCase]]],
    profile: dict[str, Any],
    output: Path,
    shared_namespace: str,
    label: str,
) -> None:
    candidate_defs, _ = emit_candidate_defs(groups)
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "",
        "/-!",
        f"Generated {label} shared candidate facts smoke.",
        "",
        "This module exports reusable source/row candidate facts for a small",
        "multi-signature AP.16 smoke. It is diagnostic only.",
        "-/",
        "",
        f"namespace {shared_namespace}",
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
        "set_option linter.unnecessarySeqFocus false",
        "set_option linter.unreachableTactic false",
        "",
        *candidate_defs,
    ]
    for signature, cases in signature_cases:
        for mask in signature["good_masks"]:
            mask_int = int(mask)
            cc = cases[mask_int]
            group = candidate_group_for_mask(profile, signature, mask_int)
            ctor = key_to_ctor[signature["mask_candidates"][str(mask_int)][0]]
            lines.extend(emit_shared_case_fact(cc=cc, group=group, ctor=ctor))
    lines.extend([
        f"end {shared_namespace}",
        "",
    ])
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def emit_signature_router(
    *,
    sig_index: int,
    signature: dict[str, Any],
    cases: dict[int, ClassifiedCase],
    key_to_ctor: dict[str, str],
) -> list[str]:
    name = signature_name(sig_index)
    anchor = int(signature["ranks"][0])
    hi = anchor + 1
    good_masks = [int(mask) for mask in signature["good_masks"]]
    candidate_nat_cases = []
    fact_cases = []
    for mask in good_masks:
        ctor = key_to_ctor[signature["mask_candidates"][str(mask)][0]]
        candidate_nat_cases.append(f"  | {mask} => .{ctor}")
        case_name = lean_case_name(cases[mask].index)
        fact_cases.append((mask, case_name, ctor))
    default_ctor = key_to_ctor[signature["mask_candidates"][str(good_masks[0])][0]]

    def handle_case(index: int, indent: str) -> list[str]:
        mask, _case_name, _ctor = fact_cases[index]
        mask_literal = exact.lean_sign_mask(mask)
        return [
            f"{indent}have hmask : mask = {mask_literal} := by",
            f"{indent}  ext",
            f"{indent}  simpa using h",
            f"{indent}rw [hmask]",
            f"{indent}exact {name}_mask_{mask:02d}_signatureFacts",
        ]

    def split_cases(index: int, indent: str) -> list[str]:
        if index == len(fact_cases) - 1:
            return handle_case(index, indent)
        return [
            f"{indent}rcases h with h | h",
            f"{indent}·",
            *handle_case(index, indent + "  "),
            f"{indent}·",
            *split_cases(index + 1, indent + "  "),
        ]

    lines = [
        f"/-- AP.16W signature `{sig_index}` at anchor rank `{anchor}`. -/",
        f"private def {name}GoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(good_masks)}",
        "",
        f"private def {name}CandidateOfNat : Nat -> GeneratedCandidate",
        *candidate_nat_cases,
        f"  | _ => .{default_ctor}",
        "",
        f"private def {name}CandidateOfMask (mask : SignMask) : GeneratedCandidate :=",
        f"  {name}CandidateOfNat mask.val",
        "",
        f"private def {name}SignatureFacts (mask : SignMask) : Prop :=",
        f"  CandidateFacts ({name}CandidateOfMask mask) {anchor} mask",
        "",
    ]
    for mask, case_name, ctor in fact_cases:
        mask_literal = exact.lean_sign_mask(mask)
        lines.extend([
            f"private theorem {name}_mask_{mask:02d}_signatureFacts :",
            f"    {name}SignatureFacts {mask_literal} := by",
            f"  change CandidateFacts .{ctor} {anchor} {mask_literal}",
            f"  exact {case_name}_candidateFacts",
            "",
        ])
    lines.extend([
        f"private theorem {name}AllPositiveMaskFacts",
        "    {mask : SignMask}",
        f"    (h : {name}GoodMaskMember mask) :",
        f"    {name}SignatureFacts mask := by",
        *split_cases(0, "  "),
        "",
        f"private def {name}Classifier",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->",
        f"          {name}GoodMaskMember mask) :",
        f"    PositiveSurvivorBoolSignatureClassifierOnRange {anchor} {hi} :=",
        "  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit",
        f"    {anchor} GeneratedCandidate {name}CandidateOfMask",
        f"    {name}GoodMaskMember {name}SignatureFacts",
        "    generatedSpec generatedRowProducer generatedKey",
        f"    (by intro mask; cases {name}CandidateOfMask mask <;> rfl)",
        f"    (by intro mask; cases {name}CandidateOfMask mask <;> rfl)",
        f"    (by intro mask; cases {name}CandidateOfMask mask <;> rfl)",
        f"    hmask (by intro mask h; exact {name}AllPositiveMaskFacts h)",
        "    (by intro mask h; exact h.1)",
        "    (by intro mask h; exact h.2)",
        "",
        f"theorem {name}AllGoodCoverage",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->",
        f"          {name}GoodMaskMember mask) :",
        f"    AllTranslationGoodCoverageOnRange {anchor} {hi} :=",
        f"  ({name}Classifier hmask).to_allGoodCoverage",
        "",
    ])
    return lines


def emit_routing_module(
    *,
    signature_cases: list[tuple[dict[str, Any], dict[int, ClassifiedCase]]],
    key_to_ctor: dict[str, str],
    output: Path,
    shared_import: str,
    shared_namespace: str,
    routing_namespace: str,
    label: str,
) -> None:
    lines: list[str] = [
        f"import {shared_import}",
        "",
        "/-!",
        f"Generated {label} thin signature-routing smoke.",
        "",
        "This module imports shared candidate facts and proves small",
        "per-signature all-Good coverage theorems by routing GoodDirection masks",
        "to those facts. It is diagnostic only.",
        "-/",
        "",
        f"namespace {routing_namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        f"open {shared_namespace}",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
    ]
    for index, (signature, cases) in enumerate(signature_cases):
        lines.extend(
            emit_signature_router(
                sig_index=index,
                signature=signature,
                cases=cases,
                key_to_ctor=key_to_ctor,
            )
        )
    lines.extend([
        "theorem sharedRoutingSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {routing_namespace}",
        "",
    ])
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--shared-output", type=Path, default=DEFAULT_SHARED_OUTPUT)
    parser.add_argument("--routing-output", type=Path, default=DEFAULT_ROUTING_OUTPUT)
    parser.add_argument("--signatures", type=int, default=2)
    parser.add_argument("--fact-budget", type=int)
    parser.add_argument("--shared-module", default=DEFAULT_SHARED_MODULE)
    parser.add_argument("--routing-module", default=DEFAULT_ROUTING_MODULE)
    parser.add_argument("--label", default="AP.16W")
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if args.fact_budget is not None:
        signatures = selected_signatures_by_fact_budget(profile, args.fact_budget)
    else:
        signatures = selected_signatures(profile, args.signatures)
    shared_namespace = f"{NAMESPACE_PREFIX}.{args.shared_module}"
    routing_namespace = f"{NAMESPACE_PREFIX}.{args.routing_module}"
    shared_import = f"{NAMESPACE_PREFIX}.{args.shared_module}"
    signature_cases: list[tuple[dict[str, Any], dict[int, ClassifiedCase]]] = []
    next_index = 0
    groups_by_key: dict[str, dict[str, Any]] = {}
    for signature in signatures:
        cases, next_index = classify_signature_cases(signature, next_index=next_index)
        signature_cases.append((signature, cases))
        for group in candidate_groups_for_signature(profile, signature):
            groups_by_key[group["key"]] = group
    groups = sorted(groups_by_key.values(), key=lambda group: group["key"])
    _, key_to_ctor = emit_candidate_defs(groups)
    emit_shared_module(
        groups=groups,
        key_to_ctor=key_to_ctor,
        signature_cases=signature_cases,
        profile=profile,
        output=args.shared_output,
        shared_namespace=shared_namespace,
        label=args.label,
    )
    emit_routing_module(
        signature_cases=signature_cases,
        key_to_ctor=key_to_ctor,
        output=args.routing_output,
        shared_import=shared_import,
        shared_namespace=shared_namespace,
        routing_namespace=routing_namespace,
        label=args.label,
    )
    print(
        f"wrote {args.shared_output} and {args.routing_output}; "
        f"signatures={len(signatures)} candidates={len(groups)} "
        f"positive_masks={next_index}"
    )


if __name__ == "__main__":
    main()
