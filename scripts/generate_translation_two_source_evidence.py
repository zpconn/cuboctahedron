#!/usr/bin/env python3
"""Emit bounded proof-carrying two-source translation evidence.

This is the Phase 6Y generated-evidence path.  It deliberately emits only
GoodDirection survivor cases, and it emits Prop-level Lean proofs instead of
large exported certificate tables or packed byte blobs.

The generated Lean files are bounded shards under
`Cuboctahedron/Generated/Translation/TwoSource/Coverage/`.  Each case carries:

* the exact rank, sign mask, pair word, face sequence, and translation vector;
* a two-source Farkas support;
* a local `TwoSourceFarkasSupport.Checked` proof;
* a rank/mask bridge theorem proving `TranslationGoodCaseKilled`.

The external Python checks are not trusted as proof.  They only prevent the
emitter from writing Lean for cases that the generated proof skeleton cannot
possibly validate.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symmetry_compression import (  # noqa: E402
    sorted_source_farkas_terms,
    two_source_multipliers_for_lines,
)


Vec = tuple[Fraction, Fraction, Fraction]
StrictLin2 = tuple[Fraction, Fraction, Fraction]


@dataclass(frozen=True)
class TwoSourceCase:
    rank: int
    mask: int
    word: list[str]
    seq: list[str]
    b: Vec
    first_source: dict[str, Any]
    second_source: dict[str, Any]
    first_line: StrictLin2
    second_line: StrictLin2
    multipliers: tuple[Fraction, Fraction]


def chunked(items: list[TwoSourceCase], size: int) -> list[list[TwoSourceCase]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def lean_module_part(path_part: str) -> str:
    return path_part.replace("/", ".").removesuffix(".lean")


def lean_case_name(case_index: int) -> str:
    return f"case_{case_index:06d}"


def lean_seq_definition(name: str, seq: list[str]) -> list[str]:
    lines = [f"private def {name}_seq : Step14 -> Face"]
    for index, face in enumerate(seq):
        lines.append(f"  | ⟨{index}, _⟩ => {exact.lean_face(face)}")
    return lines


def support_lines(name: str, first_source: dict[str, Any], second_source: dict[str, Any]) -> list[str]:
    return [
        f"private def {name}_support : TwoSourceFarkasSupport where",
        f"  first := {exact.lean_translation_constraint_source(first_source)}",
        f"  second := {exact.lean_translation_constraint_source(second_source)}",
    ]


def lean_strict_lin2(line: StrictLin2) -> str:
    return (
        "{ a := "
        + exact.lean_rat(line[0])
        + ", b := "
        + exact.lean_rat(line[1])
        + ", c := "
        + exact.lean_rat(line[2])
        + " }"
    )


def lean_rat_pair(pair: tuple[Fraction, Fraction]) -> str:
    return f"({exact.lean_rat(pair[0])}, {exact.lean_rat(pair[1])})"


COMMON_B_SIMP = [
    "totalAff",
    "totalOrder",
    "composeFaceList",
    "affCompose",
    "faceReflectionQ",
    "reflM",
    "reflD",
    "normalQ",
    "offsetQ",
    "matSub",
    "matId",
    "affId",
    "scalarMat",
    "outer",
    "dot",
    "matMul",
    "matVec",
    "vecAdd",
    "scalarMul",
]


def format_simp_list(names: list[str], *, indent: str = "      ") -> list[str]:
    lines: list[str] = []
    current: list[str] = []
    current_len = len(indent)
    for name in names:
        add_len = len(name) + (2 if current else 0)
        if current and current_len + add_len > 78:
            lines.append(indent + ", ".join(current) + ",")
            current = [name]
            current_len = len(indent) + len(name)
        else:
            current.append(name)
            current_len += add_len
    if current:
        lines.append(indent + ", ".join(current))
    return lines


def case_lines(case: TwoSourceCase, case_index: int) -> list[str]:
    name = lean_case_name(case_index)
    rank_literal = f"⟨{case.rank}, by decide⟩"
    lines: list[str] = [
        f"private def {name}_rank : Fin numPairWords := {rank_literal}",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(case.mask)}",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(case.word)}",
        *support_lines(name, case.first_source, case.second_source),
        *lean_seq_definition(name, case.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(case.b)}",
        f"private def {name}_firstLine : StrictLin2 := {lean_strict_lin2(case.first_line)}",
        f"private def {name}_secondLine : StrictLin2 := {lean_strict_lin2(case.second_line)}",
        f"private def {name}_multipliers : Rat × Rat := {lean_rat_pair(case.multipliers)}",
        "",
        f"private theorem {name}_rankWord :",
        f"    rankPairWord? {name}_word = some {name}_rank := by",
        "  decide",
        "",
        f"private theorem {name}_unrank :",
        f"    unrankPairWord {name}_rank = {name}_word := by",
        f"  exact (rankPairWord?_eq_some_iff_unrank {name}_word {name}_rank).1",
        f"    {name}_rankWord |>.symm",
        "",
        f"private theorem {name}_seqChoice :",
        f"    translationChoiceSeq {name}_word {name}_mask = {name}_seq := by",
        "  funext i",
        "  fin_cases i <;> rfl",
        "",
        f"private theorem {name}_seqAtRank :",
        f"    translationSeqAtRankMask {name}_rank {name}_mask = {name}_seq := by",
        f"  rw [translationSeqAtRankMask, {name}_unrank]",
        f"  exact {name}_seqChoice",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_bAtRank :",
        f"    translationBAtRankMask {name}_rank {name}_mask = {name}_b := by",
        f"  rw [translationBAtRankMask, {name}_seqAtRank]",
        "  apply Vec3.ext <;>",
        f"    norm_num [{name}_b, {name}_seq,",
        *format_simp_list(COMMON_B_SIMP),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_firstLine_eq :",
        f"    {name}_support.firstLine {name}_seq {name}_b = {name}_firstLine := by",
        f"  norm_num [{name}_firstLine, {name}_support, {name}_seq, {name}_b,",
        *format_simp_list([
            "TwoSourceFarkasSupport.firstLine",
            "translationConstraintSourceLine",
            "xpStartConstraintAt",
            "orderingConstraint",
            "impactInteriorConstraint",
            "nextImpact",
            "impactTimeLin",
            "translationLinePointLin",
            "linDotVec3",
            "Lin2.ltConstraint",
            "Lin2.add",
            "Lin2.scale",
            "Lin2.constOnly",
            "Lin2.y",
            "Lin2.z",
            "impactDenom",
            "impactPlaneNormalQ",
            "impactPlaneOffsetQ",
            "copiedNormalQ",
            "copiedOffsetQ",
            "preImpactCopyAff",
            "pathPrefixAff",
            "pathPrefixAffNat",
            "impactFace",
            "faceReflectionQ",
            "reflM",
            "reflD",
            "normalQ",
            "offsetQ",
            "matSub",
            "matId",
            "affId",
            "affCompose",
            "scalarMat",
            "outer",
            "dot",
            "matMul",
            "matVec",
            "vecAdd",
            "scalarMul",
            "lastImpact",
        ]),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_secondLine_eq :",
        f"    {name}_support.secondLine {name}_seq {name}_b = {name}_secondLine := by",
        f"  norm_num [{name}_secondLine, {name}_support, {name}_seq, {name}_b,",
        *format_simp_list([
            "TwoSourceFarkasSupport.secondLine",
            "translationConstraintSourceLine",
            "xpStartConstraintAt",
            "orderingConstraint",
            "impactInteriorConstraint",
            "nextImpact",
            "impactTimeLin",
            "translationLinePointLin",
            "linDotVec3",
            "Lin2.ltConstraint",
            "Lin2.add",
            "Lin2.scale",
            "Lin2.constOnly",
            "Lin2.y",
            "Lin2.z",
            "impactDenom",
            "impactPlaneNormalQ",
            "impactPlaneOffsetQ",
            "copiedNormalQ",
            "copiedOffsetQ",
            "preImpactCopyAff",
            "pathPrefixAff",
            "pathPrefixAffNat",
            "impactFace",
            "faceReflectionQ",
            "reflM",
            "reflD",
            "normalQ",
            "offsetQ",
            "matSub",
            "matId",
            "affId",
            "affCompose",
            "scalarMat",
            "outer",
            "dot",
            "matMul",
            "matVec",
            "vecAdd",
            "scalarMul",
            "lastImpact",
        ]),
        "    ]",
        "",
        f"private theorem {name}_multipliers_eq :",
        f"    {name}_support.multipliers {name}_seq {name}_b = {name}_multipliers := by",
        f"  rw [TwoSourceFarkasSupport.multipliers, {name}_firstLine_eq,",
        f"    {name}_secondLine_eq]",
        f"  norm_num [{name}_multipliers, {name}_firstLine, {name}_secondLine,",
        "    TwoSourceFarkasSupport.multipliersForLines,",
        "    TwoSourceFarkasSupport.orientNonnegative]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_checkedExplicit :",
        f"    {name}_support.Checked {name}_seq {name}_b := by",
        "  refine",
        "    { first_source_ok := ?_",
        "      second_source_ok := ?_",
        "      first_multiplier_nonneg := ?_",
        "      second_multiplier_nonneg := ?_",
        "      multiplier_positive := ?_",
        "      weighted_a_zero := ?_",
        "      weighted_b_zero := ?_",
        "      weighted_c_nonpos := ?_ }",
        "  · rfl",
        "  · rfl",
        f"  · rw [{name}_multipliers_eq]",
        f"    norm_num [{name}_multipliers]",
        f"  · rw [{name}_multipliers_eq]",
        f"    norm_num [{name}_multipliers]",
        f"  · rw [{name}_multipliers_eq]",
        f"    norm_num [{name}_multipliers]",
        f"  · rw [{name}_multipliers_eq, {name}_firstLine_eq, {name}_secondLine_eq]",
        f"    norm_num [{name}_multipliers, {name}_firstLine, {name}_secondLine]",
        f"  · rw [{name}_multipliers_eq, {name}_firstLine_eq, {name}_secondLine_eq]",
        f"    norm_num [{name}_multipliers, {name}_firstLine, {name}_secondLine]",
        f"  · rw [{name}_multipliers_eq, {name}_firstLine_eq, {name}_secondLine_eq]",
        f"    norm_num [{name}_multipliers, {name}_firstLine, {name}_secondLine]",
        "",
        f"private theorem {name}_checkedAtRank :",
        f"    {name}_support.Checked",
        f"      (translationSeqAtRankMask {name}_rank {name}_mask)",
        f"      (translationBAtRankMask {name}_rank {name}_mask) := by",
        f"  simpa [{name}_seqAtRank, {name}_bAtRank] using",
        f"    {name}_checkedExplicit",
        "",
        f"theorem {name}_goodKilled :",
        f"    TranslationGoodCaseKilled {name}_rank {name}_mask :=",
        f"  goodCaseKilled_of_checked {name}_checkedAtRank",
        "",
    ]
    return lines


def shard_lines(shard_index: int, cases: list[TwoSourceCase], case_offset: int) -> list[str]:
    module_name = f"Cuboctahedron.Generated.Translation.TwoSource.Coverage.Shard{shard_index:03d}"
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.Core",
        "",
        "/-!",
        "Bounded generated two-source translation evidence.",
        "",
        "This file is generated by `scripts/generate_translation_two_source_evidence.py`.",
        "It contains local Prop-level Farkas checks for GoodDirection survivor cases.",
        "-/",
        "",
        f"namespace {module_name}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for local_index, case in enumerate(cases):
        lines.extend(case_lines(case, case_offset + local_index))
    lines.extend([
        f"theorem shard{shard_index:03d}_twoSourceEvidenceBuilds : True := by",
        "  trivial",
        "",
        f"end {module_name}",
        "",
    ])
    return lines


def all_lines(shard_count: int) -> list[str]:
    lines: list[str] = []
    for shard_index in range(shard_count):
        lines.append(
            f"import Cuboctahedron.Generated.Translation.TwoSource.Coverage.Shard{shard_index:03d}"
        )
    lines.extend([
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.Coverage",
        "",
        "theorem boundedTwoSourceEvidenceBuilds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.Coverage",
        "",
    ])
    return lines


def find_source_indices(seq: list[str], b: Vec, source_terms: list[dict[str, Any]]) -> tuple[list[int], list[StrictLin2]]:
    sources = exact.translation_constraint_sources_py(seq)
    constraints = exact.translation_constraints_py(seq, b)
    indices = [sources.index(term["source"]) for term in source_terms]
    return indices, [constraints[index] for index in indices]


def collect_cases(rank_start: int, limit: int, max_cases: int | None) -> tuple[list[TwoSourceCase], dict[str, Any]]:
    cases: list[TwoSourceCase] = []
    stats: dict[str, Any] = {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "pair_words_scanned": 0,
        "identity_words": 0,
        "nonidentity_words_skipped": 0,
        "translation_sign_assignments": 0,
        "good_direction_survivors": 0,
        "bad_direction_or_zero_masks": 0,
        "two_source_cases": 0,
        "non_two_source_cases": 0,
        "emitted_cases": 0,
        "truncated_by_max_cases": False,
    }

    for rank in range(rank_start, rank_start + limit):
        word = exact.pair_word_at_rank(rank)
        if exact.lex_rank_pair_word(word) != rank:
            raise AssertionError(f"rank mismatch for word at rank {rank}")
        stats["pair_words_scanned"] += 1

        if exact.total_linear(word) != exact.mat_id():
            stats["nonidentity_words_skipped"] += 1
            continue

        stats["identity_words"] += 1
        for mask in range(64):
            stats["translation_sign_assignments"] += 1
            needs = exact.translation_needs_farkas(word, mask)
            if needs is None:
                stats["bad_direction_or_zero_masks"] += 1
                continue

            stats["good_direction_survivors"] += 1
            b, seq = needs
            cert = exact.build_translation_family_cert(
                rank,
                mask,
                f"phase6YTranslationTwoSource{rank:09d}_{mask:02d}",
                "farkas",
            ).to_json()
            if cert["seq"] != seq or tuple(Fraction(x) for x in cert["b"]) != b:
                raise AssertionError(f"certificate payload mismatch for rank {rank}, mask {mask}")
            failure = cert["failure"]
            if failure["kind"] != "farkas" or "sourceTerms" not in failure:
                raise AssertionError(f"missing source Farkas terms for rank {rank}, mask {mask}")

            sorted_terms = sorted_source_farkas_terms(failure["sourceTerms"])
            if len(sorted_terms) != 2:
                stats["non_two_source_cases"] += 1
                continue
            stats["two_source_cases"] += 1

            _indices, source_constraints = find_source_indices(seq, b, sorted_terms)
            multipliers = two_source_multipliers_for_lines(
                source_constraints[0],
                source_constraints[1],
            )
            if not exact.check_farkas_py(
                source_constraints,
                [(0, multipliers[0]), (1, multipliers[1])],
            ):
                raise AssertionError(f"two-source reconstruction failed for rank {rank}, mask {mask}")

            cases.append(
                TwoSourceCase(
                    rank=rank,
                    mask=mask,
                    word=word,
                    seq=seq,
                    b=b,
                    first_source=sorted_terms[0]["source"],
                    second_source=sorted_terms[1]["source"],
                    first_line=source_constraints[0],
                    second_line=source_constraints[1],
                    multipliers=multipliers,
                )
            )
            stats["emitted_cases"] += 1
            if max_cases is not None and len(cases) >= max_cases:
                stats["truncated_by_max_cases"] = True
                return cases, stats

    return cases, stats


def write_generated_files(
    cases: list[TwoSourceCase],
    *,
    out_dir: Path,
    cases_per_shard: int,
) -> list[Path]:
    if cases_per_shard <= 0:
        raise ValueError("--cases-per-shard must be positive")
    out_dir.mkdir(parents=True, exist_ok=True)
    for old in out_dir.glob("Shard*.lean"):
        old.unlink()
    all_file = out_dir / "All.lean"
    if all_file.exists():
        all_file.unlink()

    paths: list[Path] = []
    case_offset = 0
    shards = chunked(cases, cases_per_shard)
    for shard_index, shard_cases in enumerate(shards):
        path = out_dir / f"Shard{shard_index:03d}.lean"
        path.write_text("\n".join(shard_lines(shard_index, shard_cases, case_offset)))
        paths.append(path)
        case_offset += len(shard_cases)
    all_file.write_text("\n".join(all_lines(len(shards))))
    paths.append(all_file)
    return paths


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--max-cases", type=int, default=None)
    parser.add_argument("--cases-per-shard", type=int, default=25)
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("Cuboctahedron/Generated/Translation/TwoSource/Coverage"),
    )
    parser.add_argument(
        "--summary",
        type=Path,
        default=Path("scripts/generated/translation_two_source_evidence_000000000_000001000.json"),
    )
    args = parser.parse_args()

    if args.rank_start < 0:
        raise ValueError("--rank-start must be nonnegative")
    if args.limit < 0:
        raise ValueError("--limit must be nonnegative")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        raise ValueError("requested range exceeds pair-word count")

    cases, stats = collect_cases(args.rank_start, args.limit, args.max_cases)
    paths = write_generated_files(
        cases,
        out_dir=args.out_dir,
        cases_per_shard=args.cases_per_shard,
    )

    args.summary.parent.mkdir(parents=True, exist_ok=True)
    summary = {
        "schema_version": 1,
        "mode": "translation_two_source_prop_evidence",
        "trusted_as_proof": False,
        "options": {
            "rank_start": args.rank_start,
            "limit": args.limit,
            "max_cases": args.max_cases,
            "cases_per_shard": args.cases_per_shard,
            "out_dir": str(args.out_dir),
        },
        "stats": stats,
        "generated_files": [str(path) for path in paths],
    }
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")

    print(
        f"emitted {len(cases)} two-source survivor cases across "
        f"{max(len(paths) - 1, 0)} shard(s)"
    )
    print(f"summary: {args.summary}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
