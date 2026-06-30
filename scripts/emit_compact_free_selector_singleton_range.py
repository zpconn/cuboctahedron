#!/usr/bin/env python3
"""Emit a compact-free selector catalog for one rank in one DU.9L shard.

The generated Lean module proves

  SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt rank (rank + 1)

without importing SourceIndexStateSelectorDU9PCompactMembership.  It uses the
rank-local GoodDirection-to-positive-mask cover root plus the DU.9L microshard
source/row facts.

For ranks whose positive cases all live in one microshard, the emitted proof
uses that shard's selector coordinate directly.  For ranks split across
multiple microshards, the emitter constructs a small mask-value dispatcher for
`coordAt` and proves each survivor case directly from its shard-local
source/row fact.
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


def coord_dispatcher(
    *,
    rank: int,
    hi: int,
    cases: dict[int, tuple[str, str]],
    masks: list[int],
) -> list[str]:
    shards = sorted({cases[mask][0] for mask in masks})
    if len(shards) == 1:
        shard = shards[0]
        return [
            f"def coordAt{rank}_{hi} (rank : Nat) (mask : SignMask) :",
            "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=",
            f"  {shard}.selectorCoordAt rank mask",
            "",
        ]

    default_shard = shards[-1]
    by_shard: dict[str, list[int]] = {shard: [] for shard in shards}
    for mask in masks:
        by_shard[cases[mask][0]].append(mask)

    lines = [
        f"def coordAt{rank}_{hi} (rank : Nat) (mask : SignMask) :",
        "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=",
    ]
    indent = "  "
    for shard in shards:
        if shard == default_shard:
            continue
        for mask in by_shard[shard]:
            lines.append(f"{indent}if mask.val = {mask} then {shard}.selectorCoordAt rank mask else")
            indent += "  "
    lines.append(f"{indent}{default_shard}.selectorCoordAt rank mask")
    lines.append("")
    return lines


def emit_single_shard_case_bridge(
    *,
    rank: int,
    shard: str,
    masks: list[int],
    cases: dict[int, tuple[str, str]],
    cover_ns: str,
    batch_ns: str,
) -> list[str]:
    lines: list[str] = []
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
            f"theorem selectorCatalog{rank}_{rank + 1} :",
            f"    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt{rank}_{rank + 1} {rank} {rank + 1} := by",
            "  intro rank mask hlt _hlo hhi _hM hgood",
            f"  have hrank : rank = {rank} := by omega",
            "  subst rank",
            f"  exact {shard}.selectorPositiveSourceRowFacts",
            f"    (rank{rank}_selectorPositive_of_GoodDirection hlt hgood)",
            "",
        ]
    )
    return lines


def emit_split_shard_case_bridge(
    *,
    rank: int,
    masks: list[int],
    cases: dict[int, tuple[str, str]],
    cover_ns: str,
    batch_ns: str,
) -> list[str]:
    rcases = " | ".join(["h" for _ in masks])
    lines: list[str] = [
        f"theorem rank{rank}_selectorCoordinateSourceRowFacts_of_GoodDirection",
        f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        f"    SelectorCoordinateSourceRowFacts (coordAt{rank}_{rank + 1} {rank} mask) {rank} mask := by",
        f"  have hmember : {cover_ns}.generatedGoodMaskMember mask :=",
        f"    {batch_ns}.rank{rank}_goodMaskMember_of_GoodDirection hlt hgood",
        f"  rcases hmember with {rcases}",
    ]
    for mask in masks:
        shard, ctor = cases[mask]
        lines.extend(
            [
                f"  · have hmask : mask = (⟨{mask}, by decide⟩ : SignMask) :=",
                "      signMask_eq_of_val_eq (by decide) h",
                f"    simpa [coordAt{rank}_{rank + 1}, hmask] using",
                f"      {shard}.selectorPositiveSourceRowFacts {shard}.SelectorPositiveCase.{ctor}",
            ]
        )
    lines.extend(
        [
            "",
            f"theorem selectorCatalog{rank}_{rank + 1} :",
            f"    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt{rank}_{rank + 1} {rank} {rank + 1} := by",
            "  intro rank mask hlt _hlo hhi _hM hgood",
            f"  have hrank : rank = {rank} := by omega",
            "  subst rank",
            f"  exact rank{rank}_selectorCoordinateSourceRowFacts_of_GoodDirection hlt hgood",
            "",
        ]
    )
    return lines


def emit(rank: int) -> tuple[Path, str]:
    masks = cover_masks(rank)
    cases = shard_cases(rank)
    missing = [mask for mask in masks if mask not in cases]
    if missing:
        raise SystemExit(f"missing DU.9L cases for rank {rank}: {missing}")
    shards = sorted({cases[mask][0] for mask in masks})
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

    imports = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter",
    ]
    imports.extend(
        f"import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.{shard}"
        for shard in shards
    )
    imports.append(
        f"import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke"
    )

    split_note = (
        "single microshard"
        if len(shards) == 1
        else f"split microshards {', '.join(shards)}"
    )

    lines: list[str] = [
        *imports,
        "",
        "/-!",
        f"Generated compact-free selector range smoke for `[{lo},{hi})`.",
        "",
        "The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and",
        "erases the rank-local positive-mask proof directly through DU.9L",
        f"source/row facts ({split_note}).  It is a bounded singleton-range smoke, not a",
        "production family backend.",
        "-/",
        "",
        f"namespace {ns}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro",
        "",
        *coord_dispatcher(rank=lo, hi=hi, cases=cases, masks=masks),
        "private theorem signMask_eq_of_val_eq",
        "    {mask : SignMask} {n : Nat} (hn : n < 64)",
        "    (h : mask.val = n) :",
        "    mask = (⟨n, hn⟩ : SignMask) :=",
        "  Fin.ext h",
        "",
    ]

    if len(shards) == 1:
        lines.extend(
            emit_single_shard_case_bridge(
                rank=rank,
                shard=shards[0],
                masks=masks,
                cases=cases,
                cover_ns=cover_ns,
                batch_ns=batch_ns,
            )
        )
    else:
        lines.extend(
            emit_split_shard_case_bridge(
                rank=rank,
                masks=masks,
                cases=cases,
                cover_ns=cover_ns,
                batch_ns=batch_ns,
            )
        )

    lines.extend(
        [
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
