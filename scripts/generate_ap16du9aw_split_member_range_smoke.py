#!/usr/bin/env python3
"""Emit a split member/semantic DU.9 range smoke for `[0,4)`.

This is the generator version of the hand-written DU.9AV bridge smoke.  It
keeps GoodDirection membership and semantic row coverage in separate Lean
modules so semantic row leaves do not import compact-Walsh denominator cover
roots.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SUPPORT = ROOT / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
MICRO = SUPPORT / "SourceIndexStateSelectorDU9LMicro"
SEMANTIC_DEFAULT = SUPPORT / "RowPropertyMemberBridgeSemanticRangeGeneratedSmoke.lean"
MEMBERSHIP_DEFAULT = SUPPORT / "RowPropertyMemberBridgeMembershipRangeGeneratedSmoke.lean"
ROOT_DEFAULT = SUPPORT / "RowPropertyMemberBridgeRangeGeneratedSmoke.lean"

SELECTOR_RE = re.compile(
    r"if rank = (?P<rank>\d+) ∧ mask\.val = (?P<mask>\d+) "
    r"then selectorCoordinateOfKey ClassifierKey\.(?P<key>k\d+)"
)


@dataclass(frozen=True)
class SelectorCase:
    shard: str
    ctor: str
    rank: int
    mask: int
    key: str


def parse_shard(shard: str) -> list[SelectorCase]:
    path = MICRO / f"{shard}.lean"
    text = path.read_text()
    rows: list[SelectorCase] = []
    for idx, match in enumerate(SELECTOR_RE.finditer(text)):
        rows.append(
            SelectorCase(
                shard=shard,
                ctor=f"c{idx:03d}",
                rank=int(match.group("rank")),
                mask=int(match.group("mask")),
                key=match.group("key"),
            )
        )
    if not rows:
        raise SystemExit(f"no selector rows found in {path}")
    return rows


def shard_case_theorem(shard: str, rows: list[SelectorCase]) -> str:
    lines = [
        f"private theorem covered_of_{shard.lower()}_case",
        "    {rank : Nat} {mask : SignMask}",
        f"    (hcase : {shard}Case rank mask) :",
        "    RowPropertyParametricCovered rank mask := by",
        "  cases hcase with",
    ]
    for row in rows:
        lines.extend(
            [
                f"  | {row.ctor} =>",
                "      exact covered_of_existsSemanticFacts",
                f"        (semanticFacts_of_{shard.lower()}_key",
                f"          {shard}.SelectorPositiveCase.{row.ctor} ClassifierKey.{row.key}",
                f"          (by simp [{shard}.selectorCoordAt]) (by decide) (by decide) (by decide))",
            ]
        )
    return "\n".join(lines)


def member_cases(rank: int, rows_by_shard: dict[str, list[SelectorCase]], indent: str) -> str:
    usable = {
        row.shard
        for rows in rows_by_shard.values()
        for row in rows
        if row.rank == rank
    }
    lines = [f"{indent}cases hmember with"]
    for shard in ["Shard000", "Shard001", "Shard002"]:
        branch = shard.replace("Shard", "shard")
        if shard in usable:
            lines.extend(
                [
                    f"{indent}| {branch} h =>",
                    f"{indent}    exact covered_of_{shard.lower()}_case h",
                ]
            )
        else:
            lines.extend([f"{indent}| {branch} h =>", f"{indent}    cases h"])
    return "\n".join(lines)


def emit_semantic(rows_by_shard: dict[str, list[SelectorCase]]) -> str:
    parts = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "",
        "/-!",
        "Generated DU.9AW semantic half for the split member/semantic `[0,4)` smoke.",
        "",
        "This module intentionally does not import compact-Walsh denominator cover modules.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro",
        "",
        "abbrev SelectorMember (rank : Nat) (mask : SignMask) : Prop :=",
        "  SelectorPositiveCase rank mask",
        "",
        "private theorem covered_of_semanticFacts",
        "    {key : SourceIndexStateKey} {firstRole secondRole : RowRole}",
        "    {rank : Nat} {mask : SignMask}",
        "    (h : SemanticFactsLanguage key firstRole secondRole rank mask) :",
        "    RowPropertyParametricCovered rank mask :=",
        "  SourceIndexStateKey.covered_of_source_semantic h.1 h.2.1 h.2.2",
        "",
        "private theorem covered_of_existsSemanticFacts",
        "    {rank : Nat} {mask : SignMask}",
        "    (h :",
        "      ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,",
        "        SemanticFactsLanguage key firstRole secondRole rank mask) :",
        "    RowPropertyParametricCovered rank mask := by",
        "  rcases h with ⟨_key, _firstRole, _secondRole, hsemantic⟩",
        "  exact covered_of_semanticFacts hsemantic",
        "",
    ]
    for shard in ["Shard000", "Shard001", "Shard002"]:
        parts.append(shard_case_theorem(shard, rows_by_shard[shard]))
        parts.append("")
    parts.extend(
        [
            "theorem semanticCoverage0_1 :",
            "    RowPropertyMemberSemanticCoverageOnIdentityRange SelectorMember 0 1 := by",
            "  intro rank _hlt mask hlo hhi _hM hmember",
            "  have hrank : rank = 0 := by omega",
            "  subst rank",
            member_cases(0, rows_by_shard, "  "),
            "",
            "theorem semanticCoverage2_4 :",
            "    RowPropertyMemberSemanticCoverageOnIdentityRange SelectorMember 2 4 := by",
            "  intro rank _hlt mask hlo hhi _hM hmember",
            "  have hrank : rank = 2 ∨ rank = 3 := by omega",
            "  rcases hrank with hrank | hrank",
            "  · subst rank",
            member_cases(2, rows_by_shard, "    "),
            "  · subst rank",
            member_cases(3, rows_by_shard, "    "),
            "",
            "theorem semanticRangeGeneratedSmoke_builds : True := by",
            "  trivial",
            "",
            "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke",
            "",
        ]
    )
    return "\n".join(parts)


def emit_membership() -> str:
    return "\n".join(
        [
            "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
            "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership",
            "",
            "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke",
            "",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership",
            "",
            "abbrev SelectorMember (rank : Nat) (mask : SignMask) : Prop :=",
            "  SelectorPositiveCase rank mask",
            "",
            "theorem membershipCoverage0_1 :",
            "    GoodMaskMembershipOnIdentityRange SelectorMember 0 1 := by",
            "  intro rank hlt mask hlo hhi _hM hgood",
            "  have hrank : rank = 0 := by omega",
            "  subst rank",
            "  exact rank0_selectorPositive_of_GoodDirection hlt hgood",
            "",
            "theorem membershipCoverage2_4 :",
            "    GoodMaskMembershipOnIdentityRange SelectorMember 2 4 := by",
            "  intro rank hlt mask hlo hhi _hM hgood",
            "  have hrank : rank = 2 ∨ rank = 3 := by omega",
            "  rcases hrank with hrank | hrank",
            "  · subst rank",
            "    exact rank2_selectorPositive_of_GoodDirection hlt hgood",
            "  · subst rank",
            "    exact rank3_selectorPositive_of_GoodDirection hlt hgood",
            "",
            "theorem membershipRangeGeneratedSmoke_builds : True := by",
            "  trivial",
            "",
            "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke",
            "",
        ]
    )


def emit_root() -> str:
    return "\n".join(
        [
            "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke",
            "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke",
            "import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002",
            "",
            "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeGeneratedSmoke",
            "",
            "open Cuboctahedron.Generated.Coverage",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge",
            "",
            "theorem allGoodCoverage0_1 :",
            "    AllTranslationGoodCoverageOnRange 0 1 :=",
            "  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage",
            "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke.membershipCoverage0_1",
            "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke.semanticCoverage0_1",
            "",
            "theorem allGoodCoverage2_4 :",
            "    AllTranslationGoodCoverageOnRange 2 4 :=",
            "  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage",
            "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke.membershipCoverage2_4",
            "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke.semanticCoverage2_4",
            "",
            "theorem rank1_allGoodKilled :",
            "    AllTranslationGoodRankKilled 1 := by",
            "  intro hlt mask _hM",
            "  exact",
            "    Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage",
            "      1 (Nat.le_refl 1) (by decide) hlt mask",
            "",
            "theorem allGoodCoverage0_4 :",
            "    AllTranslationGoodCoverageOnRange 0 4 :=",
            "  CoversInterval.concat",
            "    allGoodCoverage0_1",
            "    (CoversInterval.concat",
            "      (CoversInterval.single rank1_allGoodKilled)",
            "      allGoodCoverage2_4)",
            "",
            "theorem rangeGeneratedSmoke_builds : True := by",
            "  trivial",
            "",
            "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeGeneratedSmoke",
            "",
        ]
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--semantic-out", type=Path, default=SEMANTIC_DEFAULT)
    parser.add_argument("--membership-out", type=Path, default=MEMBERSHIP_DEFAULT)
    parser.add_argument("--root-out", type=Path, default=ROOT_DEFAULT)
    args = parser.parse_args()

    rows_by_shard = {
        shard: parse_shard(shard) for shard in ["Shard000", "Shard001", "Shard002"]
    }
    args.semantic_out.write_text(emit_semantic(rows_by_shard))
    args.membership_out.write_text(emit_membership())
    args.root_out.write_text(emit_root())
    total = sum(len(rows) for rows in rows_by_shard.values())
    print(f"wrote split DU.9AW smoke modules with {total} selector cases")


if __name__ == "__main__":
    main()
