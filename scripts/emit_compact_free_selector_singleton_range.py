#!/usr/bin/env python3
"""Emit a compact-free selector catalog for one rank in one DU.9L shard.

The generated Lean module proves

  SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt rank (rank + 1)

without importing SourceIndexStateSelectorDU9PCompactMembership.  It uses the
rank-local GoodDirection-to-positive-mask cover root plus the DU.9L microshard
source/row facts.

This intentionally supports only ranks whose positive cases all live in one
microshard.  Split-shard ranks need a different coordAt dispatcher and should
be emitted by a later, explicit generator.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SUPPORT = ROOT / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
MICRO = SUPPORT / "SourceIndexStateSelectorDU9LMicro"


def read(path: Path) -> str:
    return path.read_text()


def cover_masks(rank: int) -> list[int]:
    path = SUPPORT / f"ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke.lean"
    text = read(path).split("namespace Subcube000", 1)[0]
    return [int(m.group(1)) for m in re.finditer(r"mask\.val = (\d+)", text)]


def shard_cases(rank: int) -> dict[int, tuple[str, str]]:
    cases: dict[int, tuple[str, str]] = {}
    for shard_path in sorted(MICRO.glob("Shard*.lean")):
        shard = shard_path.stem
        text = read(shard_path)
        pattern = re.compile(
            rf"\|\s+(c\d{{3}})\s*:\s*SelectorPositiveCase {rank} "
            r"\(⟨(\d+), by decide⟩ : SignMask\)"
        )
        for ctor, mask in pattern.findall(text):
            cases[int(mask)] = (shard, ctor)
    return cases


def emit(rank: int) -> tuple[Path, str]:
    masks = cover_masks(rank)
    cases = shard_cases(rank)
    missing = [mask for mask in masks if mask not in cases]
    if missing:
        raise SystemExit(f"missing DU.9L cases for rank {rank}: {missing}")
    shards = sorted({cases[mask][0] for mask in masks})
    if len(shards) != 1:
        raise SystemExit(
            f"rank {rank} uses multiple shards {shards}; use a split-shard emitter"
        )
    shard = shards[0]
    lo = rank
    hi = rank + 1
    module = f"SourceIndexStateSelectorDU9CompactFreeRange{rank}Smoke"
    output = SUPPORT / f"{module}.lean"
    ns = (
        "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
        f"{module}"
    )
    support_ns = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
    cover_ns = (
        f"{support_ns}.ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke"
    )
    batch_ns = (
        f"{support_ns}.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke"
    )

    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter",
        f"import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.{shard}",
        f"import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke",
        "",
        "/-!",
        f"Generated compact-free selector range smoke for `[{lo},{hi})`.",
        "",
        "The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and",
        "erases the rank-local positive-mask proof directly through DU.9L",
        "source/row facts.  It is a bounded singleton-range smoke, not a",
        "production family backend.",
        "-/",
        "",
        f"namespace {ns}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro",
        "",
        f"def coordAt{lo}_{hi} (rank : Nat) (mask : SignMask) :",
        "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=",
        f"  {shard}.selectorCoordAt rank mask",
        "",
        "private theorem signMask_eq_of_val_eq",
        "    {mask : SignMask} {n : Nat} (hn : n < 64)",
        "    (h : mask.val = n) :",
        "    mask = (⟨n, hn⟩ : SignMask) :=",
        "  Fin.ext h",
        "",
    ]

    for mask in masks:
        shard_name, ctor = cases[mask]
        lines.extend(
            [
                f"private theorem rank{rank}_mask{mask}_selector "
                "{mask : SignMask} "
                f"(h : mask.val = {mask}) :",
                f"    {shard_name}.SelectorPositiveCase {rank} mask := by",
                f"  have hmask : mask = (⟨{mask}, by decide⟩ : SignMask) :=",
                "    signMask_eq_of_val_eq (by decide) h",
                f"  simpa [hmask] using {shard_name}.SelectorPositiveCase.{ctor}",
                "",
            ]
        )

    rcases = " | ".join(["h" for _ in masks])
    lines.extend(
        [
            f"theorem rank{rank}_selectorPositive_of_generatedGoodMaskMember",
            "    {mask : SignMask}",
            f"    (hmember : {cover_ns}.generatedGoodMaskMember mask) :",
            f"    {shard}.SelectorPositiveCase {rank} mask := by",
            f"  rcases hmember with {rcases}",
        ]
    )
    for mask in masks:
        lines.append(f"  · exact rank{rank}_mask{mask}_selector h")
    lines.extend(
        [
            "",
            f"theorem rank{rank}_selectorPositive_of_GoodDirection",
            f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
            f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
            f"    {shard}.SelectorPositiveCase {rank} mask :=",
            f"  rank{rank}_selectorPositive_of_generatedGoodMaskMember",
            f"    ({batch_ns}.rank{rank}_goodMaskMember_of_GoodDirection hlt hgood)",
            "",
            f"theorem selectorCatalog{lo}_{hi} :",
            f"    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt{lo}_{hi} {lo} {hi} := by",
            "  intro rank mask hlt _hlo hhi _hM hgood",
            f"  have hrank : rank = {rank} := by omega",
            "  subst rank",
            f"  exact {shard}.selectorPositiveSourceRowFacts",
            f"    (rank{rank}_selectorPositive_of_GoodDirection hlt hgood)",
            "",
            f"theorem selectorCatalog{lo}_{hi}_sourceIndexFacts :",
            "    SourceRowFactsGoodCatalogOnRange",
            "      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt",
            f"      {lo} {hi} :=",
            "  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog",
            f"    selectorCatalog{lo}_{hi}",
            "",
            f"theorem selectorCatalog{lo}_{hi}_allGood :",
            f"    AllTranslationGoodCoverageOnRange {lo} {hi} :=",
            "  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage",
            f"    selectorCatalog{lo}_{hi}",
            "",
            "theorem compactFreeSingletonRangeSmoke_builds : True := by",
            "  trivial",
            "",
            f"end {ns}",
            "",
        ]
    )
    return output, "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, required=True)
    args = parser.parse_args()
    output, text = emit(args.rank)
    output.write_text(text)
    print(output)


if __name__ == "__main__":
    main()
