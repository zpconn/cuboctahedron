#!/usr/bin/env python3
"""Emit a semantic rank-903 wrapper for DU9IQ weighted denominator cubes.

This is a small generated smoke adapter for the current translation strategy.
The twelve weighted-cube leaves prove that every non-survivor mask for rank
903 violates GoodDirection.  The source-index classifier already proves the
seven survivor masks impossible.  This script stitches those two theorem
surfaces together without emitting per-mask certificates.
"""

from __future__ import annotations

import json
from pathlib import Path
import argparse


RANK = 903
OUT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "WeightedDenomCubeDU9IQRank903SemanticSmoke.lean"
)
OUT_POSITIVE = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "WeightedDenomCubeDU9IQRank903PositiveFactsSmoke.lean"
)
OUT_POSITIVE_MASKS = {
    mask: Path(
        "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
        f"WeightedDenomCubeDU9IQRank903PositiveMask{mask:02d}Smoke.lean"
    )
    for mask in [18, 22, 24, 25, 54, 55, 63]
}
OUT_BAD_CHUNKS = [
    Path(
        "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
        f"WeightedDenomCubeDU9IQRank903BadMaskFacts{suffix}Smoke.lean"
    )
    for suffix in ["A", "B", "C", "D"]
]
OUT_REPORT = Path(
    "scripts/generated/weighted_denom_cube_du9iq_rank903_semantic_wrapper.json"
)

NS = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "WeightedDenomCubeDU9IQRank903SemanticSmoke"
)
POS_NS = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "WeightedDenomCubeDU9IQRank903PositiveFactsSmoke"
)
POS_MASK_NS_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "WeightedDenomCubeDU9IQRank903PositiveMask"
)
BAD_NS_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "WeightedDenomCubeDU9IQRank903BadMaskFacts"
)
BASE_NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
LEAF_PREFIX = (
    f"{BASE_NS}.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx"
)
SPLIT_FACTS_NS = f"{BASE_NS}.SourceIndexStateSplitFactsDU9IQSmoke"


GOOD_SPLIT_FAMS = {
    18: 0,
    22: 5,
    24: 0,
    25: 14,
    54: 13,
    55: 13,
    63: 15,
}

CUBES = [
    (40, "cubexx1110", "**1110"),
    (41, "cubex00xx1", "*00**1"),
    (42, "cubex10x0x", "*10*0*"),
    (43, "cubexx1x01", "**1*01"),
    (44, "cubexx0x11", "**0*11"),
    (45, "cubex01x1x", "*01*1*"),
    (46, "cube0xx1x1", "0**1*1"),
    (47, "cubexxx100", "***100"),
    (48, "cubex000x0", "*000*0"),
    (49, "cube11x0x0", "11*0*0"),
    (50, "cubex101x0", "*101*0"),
    (51, "cubexx100x", "**100*"),
]


def mask_bits(mask: int) -> str:
    """Return bits in Lean's SignBit order: y,z,d111,d11m,d1m1,dm11."""
    return "".join("1" if (mask // (2**i)) % 2 else "0" for i in range(6))


def pattern_matches(pattern: str, bits: str) -> bool:
    return all(p == "*" or p == b for p, b in zip(pattern, bits, strict=True))


def coverage_assignment() -> dict[int, tuple[int, str, str]]:
    assignment: dict[int, tuple[int, str, str]] = {}
    for mask in range(64):
        if mask in GOOD_SPLIT_FAMS:
            continue
        bits = mask_bits(mask)
        matches = [(idx, name, pattern) for idx, name, pattern in CUBES if pattern_matches(pattern, bits)]
        if not matches:
            raise RuntimeError(f"bad mask {mask} ({bits}) is not covered by any DU9IQ cube")
        assignment[mask] = matches[0]
    return assignment


def disjunction(values: list[int], term: str = "mask.val") -> str:
    pieces = [f"{term} = {value}" for value in values]
    return " \\/\n      ".join(pieces)


def mask_literal(mask: int) -> str:
    return f"(\u27e8{mask}, by decide\u27e9 : SignMask)"


def positive_mask_theorems() -> list[str]:
    lines: list[str] = []
    for mask, fam in GOOD_SPLIT_FAMS.items():
        fam_name = f"fam_{fam:03d}_splitFactsGoodKilled"
        theorem = f"mask{mask:02d}_goodKilled"
        lines.extend(
            [
                f"theorem {theorem} (hlt : rank903 < numPairWords) :",
                f"    TranslationGoodCaseKilled (\u27e8rank903, hlt\u27e9 : Fin numPairWords)",
                f"      {mask_literal(mask)} :=",
                f"  {SPLIT_FACTS_NS}.{fam_name}",
                f"    (r := rank903) (hlt := hlt) (mask := {mask_literal(mask)})",
                "    (by",
                "      exact SourceIndexStateSourceFacts.of_sourcePredicate",
                "        (by rfl) (by rfl) (by rfl) (by decide))",
                "    (by",
                "      exact SourceIndexStateRowFacts.of_rows (by decide))",
                "",
            ]
        )
    return lines


def positive_mask_module_lines(mask: int, fam: int) -> list[str]:
    fam_name = f"fam_{fam:03d}_splitFactsGoodKilled"
    ns = f"{POS_MASK_NS_PREFIX}{mask:02d}Smoke"
    return [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSplitFactsDU9IQSmoke",
        "",
        "/-!",
        f"Generated rank-903 positive survivor fact for mask {mask}.",
        "-/",
        "",
        f"namespace {ns}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "set_option maxHeartbeats 0",
        "",
        "def rank903 : Nat := 903",
        "",
        f"theorem mask{mask:02d}_goodKilled (hlt : rank903 < numPairWords) :",
        f"    TranslationGoodCaseKilled (\u27e8rank903, hlt\u27e9 : Fin numPairWords)",
        f"      {mask_literal(mask)} :=",
        f"  {SPLIT_FACTS_NS}.{fam_name}",
        f"    (r := rank903) (hlt := hlt) (mask := {mask_literal(mask)})",
        "    (by",
        "      exact SourceIndexStateSourceFacts.of_sourcePredicate",
        "        (by rfl) (by rfl) (by rfl) (by decide))",
        "    (by",
        "      exact SourceIndexStateRowFacts.of_rows (by decide))",
        "",
        f"theorem positiveMask{mask:02d}_builds : True := by",
        "  trivial",
        "",
        f"end {ns}",
        "",
    ]


def good_member_dispatch() -> list[str]:
    masks = list(GOOD_SPLIT_FAMS)
    lines = [
        "theorem rank903_goodKilled_of_generatedGoodMaskMember",
        "    {mask : SignMask} (hlt : rank903 < numPairWords)",
        "    (hmem : generatedGoodMaskMember mask) :",
        "    TranslationGoodCaseKilled (\u27e8rank903, hlt\u27e9 : Fin numPairWords) mask := by",
    ]
    intro = "  rcases hmem with "
    names = [f"h{mask:02d}" for mask in masks]
    lines.append(intro + " | ".join(names))
    for mask, name in zip(masks, names, strict=True):
        lines.extend(
            [
                f"  · have hmask : mask = {mask_literal(mask)} :=",
                "      signMask_eq_of_val_eq (by decide) " + name,
                f"    simpa [hmask] using {POS_MASK_NS_PREFIX}{mask:02d}Smoke.mask{mask:02d}_goodKilled hlt",
            ]
        )
    lines.append("")
    return lines


def cube_member_proof(idx: int, cube: str) -> list[str]:
    module = f"{LEAF_PREFIX}{idx}Smoke"
    return [
        "      (by",
        "        intro bit",
        "        cases bit <;> simp [",
        f"          {module}.{cube},",
        "          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])",
    ]


def bad_chunk_suffix(mask: int) -> str:
    return ["A", "B", "C", "D"][mask // 16]


def bad_module(mask: int) -> str:
    return f"{BAD_NS_PREFIX}{bad_chunk_suffix(mask)}Smoke"


def bad_mask_theorem(mask: int, assignment: dict[int, tuple[int, str, str]]) -> list[str]:
    idx, cube, _pattern = assignment[mask]
    module = f"{LEAF_PREFIX}{idx}Smoke"
    return [
        f"theorem mask{mask:02d}_notGood (hlt : rank903 < numPairWords) :",
        f"    \u00ac GoodDirectionAtRank (\u27e8rank903, hlt\u27e9 : Fin numPairWords) {mask_literal(mask)} :=",
        f"  {module}.notGoodDirection hlt",
        *cube_member_proof(idx, cube),
        "",
    ]


def good_direction_cases(assignment: dict[int, tuple[int, str, str]]) -> list[str]:
    lines = [
        "theorem generatedGoodMaskMember_of_goodDirection",
        "    {mask : SignMask} (hlt : rank903 < numPairWords)",
        "    (hgood : GoodDirectionAtRank (\u27e8rank903, hlt\u27e9 : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask := by",
        "  fin_cases mask",
    ]
    for mask in range(64):
        if mask in GOOD_SPLIT_FAMS:
            lines.append("  · simp [generatedGoodMaskMember]")
            continue
        lines.extend(
            [
                "  · exact False.elim",
                f"      (({bad_module(mask)}.mask{mask:02d}_notGood hlt) hgood)",
            ]
        )
    lines.append("")
    return lines


def emit(*, include_positive_experimental: bool) -> None:
    assignment = coverage_assignment()

    positive_mask_lines = {
        mask: positive_mask_module_lines(mask, fam)
        for mask, fam in sorted(GOOD_SPLIT_FAMS.items())
    }
    positive_imports = [
        f"import {POS_MASK_NS_PREFIX}{mask:02d}Smoke"
        for mask in sorted(GOOD_SPLIT_FAMS)
    ]
    positive_lines: list[str] = []
    positive_lines.extend(positive_imports)
    positive_lines.extend(
        [
            "",
            "/-!",
            "Generated rank-903 positive survivor facts aggregator.",
            "-/",
            "",
            f"namespace {POS_NS}",
            "",
        ]
    )
    positive_lines.extend(
        [
            "theorem rank903PositiveFacts_builds : True := by",
            "  trivial",
            "",
            f"end {POS_NS}",
            "",
        ]
    )

    bad_imports = [
        f"import {LEAF_PREFIX}{idx}Smoke"
        for idx, _name, _pattern in CUBES
    ]
    bad_chunk_lines: dict[str, list[str]] = {}
    for suffix, path in zip(["A", "B", "C", "D"], OUT_BAD_CHUNKS, strict=True):
        ns = f"{BAD_NS_PREFIX}{suffix}Smoke"
        lines: list[str] = []
        lines.extend(bad_imports)
        lines.extend(
            [
                "",
                "/-!",
                f"Generated rank-903 bad-mask facts, chunk {suffix}.",
                "-/",
                "",
                f"namespace {ns}",
                "",
                "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
                "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
                "",
                "set_option linter.unusedSimpArgs false",
                "",
                "def rank903 : Nat := 903",
                "",
            ]
        )
        for mask in range(64):
            if mask in GOOD_SPLIT_FAMS or bad_chunk_suffix(mask) != suffix:
                continue
            lines.extend(bad_mask_theorem(mask, assignment))
        lines.extend(
            [
                f"theorem rank903BadMaskFacts{suffix}_builds : True := by",
                "  trivial",
                "",
                f"end {ns}",
                "",
            ]
        )
        bad_chunk_lines[str(path)] = lines

    imports = [f"import {POS_NS}"]
    imports.extend(f"import {BAD_NS_PREFIX}{suffix}Smoke" for suffix in ["A", "B", "C", "D"])

    lines: list[str] = []
    lines.extend(imports)
    lines.extend(
        [
            "",
            "/-!",
            "Generated rank-903 semantic wrapper for DU9IQ weighted denominator cubes.",
            "",
            "The weighted-cube leaves prove that every non-survivor mask violates",
            "`GoodDirectionAtRank`.  The seven survivor masks are then erased through",
            "the source-index/state classifier into `TranslationGoodCaseKilled`.",
            "-/",
            "",
            f"namespace {NS}",
            "",
            "open Cuboctahedron.Generated.Coverage",
            "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
            "",
            "set_option maxRecDepth 10000",
            "",
            "def rank903 : Nat := 903",
            "",
            "def generatedGoodMaskMember (mask : SignMask) : Prop :=",
            f"  {disjunction(list(GOOD_SPLIT_FAMS))}",
            "",
            "private theorem signMask_eq_of_val_eq",
            "    {mask : SignMask} {n : Nat} (hn : n < 64)",
            "    (h : mask.val = n) :",
            "    mask = (\u27e8n, hn\u27e9 : SignMask) :=",
            "  Fin.ext h",
            "",
        ]
    )
    lines.extend(good_member_dispatch())
    lines.extend(good_direction_cases(assignment))
    lines.extend(
        [
            "theorem rank903_allGoodKilled :",
            "    AllTranslationGoodRankKilled rank903 := by",
            "  intro hlt mask _hM",
            "  intro hgood",
            "  have hmem : generatedGoodMaskMember mask :=",
            "    generatedGoodMaskMember_of_goodDirection hlt hgood",
            "  exact (rank903_goodKilled_of_generatedGoodMaskMember hlt hmem) hgood",
            "",
            "theorem rank903SemanticSmoke_builds : True := by",
            "  trivial",
            "",
            f"end {NS}",
            "",
        ]
    )

    if include_positive_experimental:
        for mask, path in OUT_POSITIVE_MASKS.items():
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("\n".join(positive_mask_lines[mask]), encoding="utf-8")

        OUT_POSITIVE.parent.mkdir(parents=True, exist_ok=True)
        OUT_POSITIVE.write_text("\n".join(positive_lines), encoding="utf-8")
    for path_text, chunk_lines in bad_chunk_lines.items():
        path = Path(path_text)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text("\n".join(chunk_lines), encoding="utf-8")

    if include_positive_experimental:
        OUT_LEAN.parent.mkdir(parents=True, exist_ok=True)
        OUT_LEAN.write_text("\n".join(lines), encoding="utf-8")
    OUT_REPORT.parent.mkdir(parents=True, exist_ok=True)
    OUT_REPORT.write_text(
        json.dumps(
            {
                "rank": RANK,
                "output": str(OUT_LEAN) if include_positive_experimental else None,
                "include_positive_experimental": include_positive_experimental,
                "positive_output": str(OUT_POSITIVE) if include_positive_experimental else None,
                "positive_mask_outputs": (
                    {str(mask): str(path) for mask, path in sorted(OUT_POSITIVE_MASKS.items())}
                    if include_positive_experimental else {}
                ),
                "bad_chunk_outputs": [str(path) for path in OUT_BAD_CHUNKS],
                "good_masks": sorted(GOOD_SPLIT_FAMS),
                "good_mask_split_families": {
                    str(k): v for k, v in sorted(GOOD_SPLIT_FAMS.items())
                },
                "bad_mask_count": len(assignment),
                "cube_assignment": {
                    str(mask): {"idx": idx, "cube": cube, "pattern": pattern}
                    for mask, (idx, cube, pattern) in sorted(assignment.items())
                },
            },
            indent=2,
            sort_keys=True,
        )
        + "\n",
        encoding="utf-8",
    )
    if include_positive_experimental:
        print(f"wrote {OUT_LEAN}")
        for path in OUT_POSITIVE_MASKS.values():
            print(f"wrote {path}")
        print(f"wrote {OUT_POSITIVE}")
    for path in OUT_BAD_CHUNKS:
        print(f"wrote {path}")
    print(f"wrote {OUT_REPORT}")
    print(f"good masks: {sorted(GOOD_SPLIT_FAMS)}")
    print(f"bad masks covered: {len(assignment)}")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--include-positive-experimental",
        action="store_true",
        help=(
            "Also emit the rank-903 positive-survivor and wrapper modules. "
            "These currently demonstrate the source/row by-decide memory "
            "blocker and are not part of the normal build path."
        ),
    )
    return parser.parse_args()


if __name__ == "__main__":
    args = parse_args()
    emit(include_positive_experimental=args.include_positive_experimental)
