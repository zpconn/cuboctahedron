#!/usr/bin/env python3
"""Emit a bounded DU.9 semantic row-membership range smoke.

This generator is intentionally small and deterministic.  It reads the already
checked DU.9L selector microshards, extracts the emitted `(rank, mask,
ClassifierKey)` rows from each `selectorCoordAt`, and writes a Lean smoke module
that proves semantic row-membership coverage for the bounded `[0,4)` fixture.

The generated Lean module is still proof-producing: it uses the public DU.9P
GoodDirection membership theorems, the DU.9L source/row facts, and the
DU.9AR selector-to-semantic bridge.  The script merely avoids hand-writing the
constructor table.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SUPPORT = ROOT / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
MICRO = SUPPORT / "SourceIndexStateSelectorDU9LMicro"
OUT_DEFAULT = SUPPORT / "RowPropertySemanticRangeGeneratedSmoke.lean"

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
    abbrev = shard.replace("Shard", "Shard")
    lines = [
        f"private theorem semanticFacts_of_{shard.lower()}_case",
        "    {rank : Nat} {mask : SignMask}",
        f"    (hcase : {abbrev}Case rank mask) :",
        "    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,",
        "      SemanticFactsLanguage key firstRole secondRole rank mask := by",
        "  cases hcase with",
    ]
    for row in rows:
        lines.extend(
            [
                f"  | {row.ctor} =>",
                f"      exact semanticFacts_of_{shard.lower()}_key_nonexact",
                f"        {shard}.SelectorPositiveCase.{row.ctor} ClassifierKey.{row.key}",
                f"        (by simp [{shard}.selectorCoordAt]) (by decide)",
            ]
        )
    return "\n".join(lines)


def rank_branch(rank: int, rows_by_shard: dict[str, list[SelectorCase]], indent: str) -> str:
    usable = {
        shard
        for shard, rows in rows_by_shard.items()
        if any(row.rank == rank for row in rows)
    }
    branch_lines = [
        f"{indent}have hcase :=",
        f"{indent}  rank{rank}_selectorPositive_of_GoodDirection hlt hgood",
        f"{indent}cases hcase with",
    ]
    for shard in ["Shard000", "Shard001", "Shard002"]:
        branch = shard.replace("Shard", "shard")
        if shard in usable:
            branch_lines.extend(
                [
                    f"{indent}| {branch} h =>",
                    f"{indent}    exact semanticFacts_of_{shard.lower()}_case h",
                ]
            )
        else:
            branch_lines.extend(
                [
                    f"{indent}| {branch} h =>",
                    f"{indent}    cases h",
                ]
            )
    return "\n".join(branch_lines)


def emit(rows: list[SelectorCase]) -> str:
    rows_by_shard: dict[str, list[SelectorCase]] = {}
    for row in rows:
        rows_by_shard.setdefault(row.shard, []).append(row)

    parts = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership",
        "import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticRangeGeneratedSmoke",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership",
        "",
    ]

    for shard in ["Shard000", "Shard001", "Shard002"]:
        parts.append(shard_case_theorem(shard, rows_by_shard[shard]))
        parts.append("")

    parts.extend(
        [
            "def semanticLanguage0_1 :",
            "    SemanticRowMembershipLanguageOnRange 0 1 where",
            "  Language := SemanticFactsLanguage",
            "  sourceFacts := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.1",
            "  compatible := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.2.1",
            "  rowSemantic := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.2.2",
            "  complete := by",
            "    intro rank mask hlt _hlo hhi _hM hgood",
            "    have hrank : rank = 0 := by omega",
            "    subst rank",
            rank_branch(0, rows_by_shard, "    "),
            "",
            "def semanticLanguage2_4 :",
            "    SemanticRowMembershipLanguageOnRange 2 4 where",
            "  Language := SemanticFactsLanguage",
            "  sourceFacts := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.1",
            "  compatible := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.2.1",
            "  rowSemantic := by",
            "    intro key firstRole secondRole rank mask h",
            "    exact h.2.2",
            "  complete := by",
            "    intro rank mask hlt hlo hhi _hM hgood",
            "    have hrank : rank = 2 ∨ rank = 3 := by omega",
            "    rcases hrank with hrank | hrank",
            "    · subst rank",
            rank_branch(2, rows_by_shard, "      "),
            "    · subst rank",
            rank_branch(3, rows_by_shard, "      "),
            "",
            "theorem allGoodCoverage0_1 :",
            "    AllTranslationGoodCoverageOnRange 0 1 :=",
            "  semanticLanguage0_1.to_allGoodCoverage",
            "",
            "theorem allGoodCoverage2_4 :",
            "    AllTranslationGoodCoverageOnRange 2 4 :=",
            "  semanticLanguage2_4.to_allGoodCoverage",
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
            "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticRangeGeneratedSmoke",
            "",
        ]
    )
    return "\n".join(parts)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=OUT_DEFAULT)
    args = parser.parse_args()

    rows: list[SelectorCase] = []
    for shard in ["Shard000", "Shard001", "Shard002"]:
        rows.extend(parse_shard(shard))
    args.out.write_text(emit(rows))
    print(f"wrote {args.out.relative_to(ROOT)} with {len(rows)} selector cases")


if __name__ == "__main__":
    main()
