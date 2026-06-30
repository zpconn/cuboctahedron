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
DEFAULT_SUPPORT_NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
DEFAULT_MICRO_NS = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSelectorDU9LMicro"
)


def read(path: Path) -> str:
    return path.read_text()


def module_path(module: str) -> Path:
    return ROOT / Path(*module.split(".")).with_suffix(".lean")


def parse_prop_masks(text: str, predicate: str) -> list[int]:
    pattern = re.compile(
        rf"def {re.escape(predicate)} \(mask : SignMask\) : Prop :=\n"
        r"(?P<body>.*?)(?:\n\n(?:private\s+)?(?:def|theorem|lemma|inductive|structure|/--)|\Z)",
        re.S,
    )
    match = pattern.search(text)
    if not match:
        raise SystemExit(f"could not find predicate {predicate}")
    return [
        int(mask)
        for mask in re.findall(r"mask\.val = (\d+)", match.group("body"))
    ]


def cover_masks(rank: int, *, cover_path: Path, predicate: str) -> list[int]:
    path = cover_path
    text = read(path).split("namespace Subcube000", 1)[0]
    return parse_prop_masks(text, predicate)


def shard_cases(rank: int, *, micro_dir: Path) -> dict[int, tuple[str, str]]:
    cases: dict[int, tuple[str, str]] = {}
    for shard_path in sorted(micro_dir.glob("Shard*.lean")):
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
    positive_predicate: str,
    positive_theorem: str,
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
            f"    (hmember : {cover_ns}.{positive_predicate} mask) :",
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
            f"    ({cover_ns}.{positive_theorem} hlt hgood)",
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
    positive_predicate: str,
    positive_theorem: str,
) -> list[str]:
    rcases = " | ".join(["h" for _ in masks])
    lines: list[str] = [
        f"theorem rank{rank}_selectorCoordinateSourceRowFacts_of_GoodDirection",
        f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        f"    SelectorCoordinateSourceRowFacts (coordAt{rank}_{rank + 1} {rank} mask) {rank} mask := by",
        f"  have hmember : {cover_ns}.{positive_predicate} mask :=",
        f"    {cover_ns}.{positive_theorem} hlt hgood",
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


def emit(
    rank: int,
    *,
    micro_dir: Path,
    micro_namespace: str,
    positive_module: str | None,
    positive_predicate: str | None,
    positive_theorem: str | None,
    module: str | None,
    output: Path | None,
) -> tuple[Path, str]:
    support_ns = DEFAULT_SUPPORT_NS
    if positive_module is None:
        cover_module = (
            f"{support_ns}.ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke"
        )
        positive_module = (
            f"{support_ns}.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke"
        )
        positive_predicate = "generatedGoodMaskMember"
        positive_theorem = f"rank{rank}_goodMaskMember_of_GoodDirection"
        cover_path = SUPPORT / f"ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke.lean"
    else:
        cover_module = positive_module
        positive_predicate = positive_predicate or f"rank{rank}PositiveMaskMember"
        positive_theorem = positive_theorem or f"goodDirection_rank{rank}PositiveMaskMember"
        cover_path = module_path(positive_module)

    masks = cover_masks(rank, cover_path=cover_path, predicate=positive_predicate)
    cases = shard_cases(rank, micro_dir=micro_dir)
    missing = [mask for mask in masks if mask not in cases]
    if missing:
        raise SystemExit(f"missing DU.9L cases for rank {rank}: {missing}")
    shards = sorted({cases[mask][0] for mask in masks})
    lo = rank
    hi = rank + 1
    module = module or f"SourceIndexStateSelectorDU9CompactFreeRange{rank}Smoke"
    output = output or SUPPORT / f"{module}.lean"
    ns = f"{support_ns}.{module}"
    cover_ns = cover_module

    imports = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter",
    ]
    imports.extend(
        f"import {micro_namespace}.{shard}"
        for shard in shards
    )
    imports.append(f"import {positive_module}")

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
        f"open {micro_namespace}",
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
                positive_predicate=positive_predicate,
                positive_theorem=positive_theorem,
            )
        )
    else:
        lines.extend(
            emit_split_shard_case_bridge(
                rank=rank,
                masks=masks,
                cases=cases,
                cover_ns=cover_ns,
                positive_predicate=positive_predicate,
                positive_theorem=positive_theorem,
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
    parser.add_argument("--micro-dir", type=Path, default=MICRO)
    parser.add_argument("--micro-namespace", default=DEFAULT_MICRO_NS)
    parser.add_argument("--positive-module")
    parser.add_argument("--positive-predicate")
    parser.add_argument("--positive-theorem")
    parser.add_argument("--module")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    output, text = emit(
        args.rank,
        micro_dir=args.micro_dir,
        micro_namespace=args.micro_namespace,
        positive_module=args.positive_module,
        positive_predicate=args.positive_predicate,
        positive_theorem=args.positive_theorem,
        module=args.module,
        output=args.output,
    )
    output.write_text(text)
    print(output)


if __name__ == "__main__":
    main()
