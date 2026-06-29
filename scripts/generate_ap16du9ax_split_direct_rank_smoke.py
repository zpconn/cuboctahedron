#!/usr/bin/env python3
"""Emit split direct-local-key rank smoke for rank 6000745.

This is the split version of the retired DU.9AT diagnostic.  It generates
three modules:

* semantic: local source/row facts and `Member -> RowPropertyParametricCovered`;
* membership: compact-Walsh `GoodDirection -> Member`;
* root: composition through `RowPropertyMemberBridge`.

The semantic module deliberately does not import compact-Walsh cover roots.
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

from generate_ap16du9at_direct_semantic_rank_smoke import (  # noqa: E402
    DEFAULT_RANK,
    TEMPLATE_NONAXIS,
    ctor_name,
    family_name,
    local_key_lines,
    local_source_row_lines,
    semantic_positive_lines,
)
from generate_ap16du9k_selector_catalog_slice import applies_lines  # noqa: E402
from generate_source_index_state_bounded_coverage import RankMask, collect_window  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    write_json,
    write_text,
)
from generate_symbolic_row_family_smoke import lean_case_name  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


SUPPORT = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DIAGNOSTIC_SUPPORT = Path("scripts/generated/diagnostics/phase6z6k8ap16du9ax")
DEFAULT_SEMANTIC_OUT = SUPPORT / "RowPropertyMemberBridgeSemanticRank6000745Smoke.lean"
DEFAULT_MEMBERSHIP_OUT = SUPPORT / "RowPropertyMemberBridgeMembershipRank6000745Smoke.lean"
DEFAULT_ROOT_OUT = SUPPORT / "RowPropertyMemberBridgeRank6000745Smoke.lean"
DEFAULT_SEMANTIC_DIAGNOSTIC_OUT = (
    DIAGNOSTIC_SUPPORT / "RowPropertyMemberBridgeSemanticRank6000745Smoke.lean"
)
DEFAULT_MEMBERSHIP_DIAGNOSTIC_OUT = (
    DIAGNOSTIC_SUPPORT / "RowPropertyMemberBridgeMembershipRank6000745Smoke.lean"
)
DEFAULT_ROOT_DIAGNOSTIC_OUT = (
    DIAGNOSTIC_SUPPORT / "RowPropertyMemberBridgeRank6000745Smoke.lean"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9ax_rank6000745_split_direct.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

BASE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
)
DEFAULT_SEMANTIC_NAMESPACE = BASE_NAMESPACE + "RowPropertyMemberBridgeSemanticRank6000745Smoke"
DEFAULT_MEMBERSHIP_NAMESPACE = BASE_NAMESPACE + "RowPropertyMemberBridgeMembershipRank6000745Smoke"
DEFAULT_ROOT_NAMESPACE = BASE_NAMESPACE + "RowPropertyMemberBridgeRank6000745Smoke"
COMPACT_COVER_NAMESPACE = (
    BASE_NAMESPACE + "ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke"
)


def positive_case_inductive_lines(cases: list[RankMask]) -> list[str]:
    lines = [
        "/-- Positive GoodDirection survivor masks represented in this rank leaf. -/",
        "inductive PositiveCase : SignMask -> Prop",
    ]
    for index, key in enumerate(cases):
        lines.append(
            f"  | {ctor_name(index)} : PositiveCase "
            f"(⟨{key.mask}, by decide⟩ : SignMask)"
        )
    return lines + [""]


def positive_case_membership_lines(cases: list[RankMask]) -> list[str]:
    lines = positive_case_inductive_lines(cases)
    lines.extend([
        "private theorem signMask_eq_of_val_eq",
        "    {mask : SignMask} {n : Nat} (hn : n < 64)",
        "    (h : mask.val = n) :",
        "    mask = (⟨n, hn⟩ : SignMask) :=",
        "  Fin.ext h",
        "",
        "theorem positiveCase_of_generatedGoodMaskMember",
        "    {mask : SignMask}",
        "    (hmem : RankGoodMaskMember mask) :",
        "    PositiveCase mask := by",
        "  rcases hmem with " + " | ".join(["h"] * len(cases)),
    ])
    for index, key in enumerate(cases):
        bullet = "·" if index == 0 else "  ·"
        lines.extend([
            f"{bullet} have hmask : mask = (⟨{key.mask}, by decide⟩ : SignMask) :=",
            "      signMask_eq_of_val_eq (by decide) h",
            f"    simpa [hmask] using PositiveCase.{ctor_name(index)}",
        ])
    lines.extend([
        "",
        "theorem positiveCase_of_GoodDirection",
        "    {mask : SignMask} (hlt : rank < numPairWords)",
        "    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :",
        "    PositiveCase mask :=",
        "  positiveCase_of_generatedGoodMaskMember",
        f"    ({COMPACT_COVER_NAMESPACE}.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes hlt hgood)",
        "",
    ])
    return lines


def semantic_module_lines(namespace: str, rank: int, data: Any, cases: list[RankMask]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "",
        "/-!",
        "Generated DU.9AX semantic half for a direct-local-key production-like rank smoke.",
        "",
        "This module intentionally does not import compact-Walsh denominator cover modules.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        f"abbrev rank : Nat := {rank}",
        "",
    ]
    for family_index, family in enumerate(data.families):
        lines.extend(local_key_lines(family_index, family))
    for key in cases:
        family_index, member = data.covered[key]
        lines.extend(applies_lines(family_index, member))
        lines.extend(local_source_row_lines(lean_case_name(member.symbolic.index), family_index))
    lines.extend(positive_case_inductive_lines(cases))
    lines.extend(semantic_positive_lines(cases, data))
    lines.extend(
        [
            "abbrev Member (r : Nat) (mask : SignMask) : Prop :=",
            "  r = rank ∧ PositiveCase mask",
            "",
            "private theorem covered_of_semanticFacts",
            "    {key : SourceIndexStateKey} {firstRole secondRole : RowRole}",
            "    {mask : SignMask}",
            "    (h : SemanticFactsLanguage key firstRole secondRole rank mask) :",
            "    RowPropertyParametricCovered rank mask :=",
            "  SourceIndexStateKey.covered_of_source_semantic h.1 h.2.1 h.2.2",
            "",
            "theorem semanticCoverage :",
            "    RowPropertyMemberSemanticCoverageOnIdentityRange Member rank (rank + 1) := by",
            "  intro r _hlt mask _hlo _hhi _hM hmember",
            "  rcases hmember with ⟨hrank, hcase⟩",
            "  subst r",
            "  rcases semanticFacts_of_positiveCase hcase with",
            "    ⟨key, firstRole, secondRole, hsemantic⟩",
            "  exact covered_of_semanticFacts hsemantic",
            "",
            "theorem semanticRankSmoke_builds : True := by",
            "  trivial",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return lines


def membership_module_lines(namespace: str, rank: int, cases: list[RankMask]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke",
        "",
        "/-!",
        "Generated DU.9AX membership half for a direct-local-key production-like rank smoke.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "",
        f"abbrev rank : Nat := {rank}",
        "",
        "abbrev RankGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {COMPACT_COVER_NAMESPACE}.generatedGoodMaskMember mask",
        "",
    ]
    lines.extend(positive_case_membership_lines(cases))
    lines.extend(
        [
            "abbrev Member (r : Nat) (mask : SignMask) : Prop :=",
            "  r = rank ∧ PositiveCase mask",
            "",
            "theorem membershipCoverage :",
            "    GoodMaskMembershipOnIdentityRange Member rank (rank + 1) := by",
            "  intro r hlt mask _hlo _hhi _hM hgood",
            "  have hrank : r = rank := by omega",
            "  subst r",
            "  exact ⟨rfl, positiveCase_of_GoodDirection hlt hgood⟩",
            "",
            "theorem membershipRankSmoke_builds : True := by",
            "  trivial",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return lines


def root_module_lines(namespace: str, semantic_ns: str, membership_ns: str, rank: int) -> list[str]:
    return [
        f"import {membership_ns}",
        f"import {semantic_ns}",
        "",
        "/-! Root composition for the DU.9AX split direct-local-key rank smoke. -/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "",
        "theorem allGoodCoverage :",
        f"    AllTranslationGoodCoverageOnRange {rank} ({rank} + 1) :=",
        "  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage",
        f"    {membership_ns}.membershipCoverage",
        f"    {semantic_ns}.semanticCoverage",
        "",
        "theorem splitRankSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Split Direct Rank Smoke",
        "",
        "This report is not proof evidence.  The Lean modules listed below are the",
        "proof-producing artifacts.",
        "",
        f"- Rank: `{payload['rank']}`",
        f"- GoodDirection survivors: `{payload['good_direction_survivors']}`",
        f"- Local families: `{payload['local_family_count']}`",
        f"- Semantic module: `{payload['semantic_module']}`",
        f"- Membership module: `{payload['membership_module']}`",
        f"- Root module: `{payload['root_module']}`",
        "",
    ]
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--semantic-out", type=Path, default=DEFAULT_SEMANTIC_DIAGNOSTIC_OUT)
    parser.add_argument("--membership-out", type=Path, default=DEFAULT_MEMBERSHIP_DIAGNOSTIC_OUT)
    parser.add_argument("--root-out", type=Path, default=DEFAULT_ROOT_DIAGNOSTIC_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--semantic-namespace", default=DEFAULT_SEMANTIC_NAMESPACE)
    parser.add_argument("--membership-namespace", default=DEFAULT_MEMBERSHIP_NAMESPACE)
    parser.add_argument("--root-namespace", default=DEFAULT_ROOT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8AP.16DU.9AX")
    args = parser.parse_args()

    semantic_ns = validate_module_namespace(args.semantic_namespace)
    membership_ns = validate_module_namespace(args.membership_namespace)
    root_ns = validate_module_namespace(args.root_namespace)

    data = collect_window(rank_start=args.rank, limit=1)
    cases = sorted(data.covered, key=lambda item: item.mask)
    if not cases:
        raise SystemExit(f"rank {args.rank} has no GoodDirection survivors")
    for family in data.families:
        template = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
        if template not in TEMPLATE_NONAXIS:
            raise SystemExit(f"rank {args.rank} has unsupported template for this smoke: {template}")

    for path in [args.semantic_out, args.membership_out, args.root_out]:
        path.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.semantic_out, "\n".join(semantic_module_lines(semantic_ns, args.rank, data, cases)))
    write_text(args.membership_out, "\n".join(membership_module_lines(membership_ns, args.rank, cases)))
    write_text(args.root_out, "\n".join(root_module_lines(root_ns, semantic_ns, membership_ns, args.rank)))

    payload = {
        "schema_version": 1,
        "phase": args.phase,
        "trusted_as_proof": False,
        "rank": args.rank,
        "good_direction_survivors": len(cases),
        "local_family_count": len(data.families),
        "semantic_module": str(args.semantic_out),
        "membership_module": str(args.membership_out),
        "root_module": str(args.root_out),
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
