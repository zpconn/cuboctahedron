#!/usr/bin/env python3
"""Emit semantic row-family Lean modules.

This is diagnostic/generated proof code for Phase 6Z.6F and 6Z.6F.1.  The
default smoke mode selects a few high-volume `template_source` families from the
representative profiler report, finds concrete GoodDirection cases in those
families, and emits Lean proving that the cases are killed through semantic
support-family predicates.

The representative-root mode scans the bounded representative windows and emits
a compact family-union root.  It does not replay ordinary translation
certificates, and it does not emit per-rank certificate data.

The Python script is not trusted as proof.  The generated Lean module checks the
semantic family theorems.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_translation_row_relation_classifier import (  # noqa: E402
    COMMON_B_SIMP,
    LINE_SIMPS,
    TEMPLATE_TO_LEAN,
    ClassifiedCase,
    case_shape_lines,
    format_simp_list,
    lean_case_name,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    TwoSourceCase,
    find_source_indices,
    lean_seq_definition,
    lean_strict_lin2,
    support_lines,
    validate_module_namespace,
)
from profile_symmetry_compression import (  # noqa: E402
    sorted_source_farkas_terms,
    two_source_multipliers_for_lines,
)
from profile_translation_row_relation_families import source_pair_digest  # noqa: E402
from profile_translation_row_relation_templates import matching_templates  # noqa: E402
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_REPORT = Path(
    "scripts/generated/translation_row_relation_families_profile_representative.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/FamilySmoke.lean"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/translation_row_family_smoke_summary.json"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.FamilySmoke"
)
DEFAULT_REPRESENTATIVE_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Representative"
)
DEFAULT_REPRESENTATIVE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative"
)
DEFAULT_REPRESENTATIVE_SUMMARY = Path(
    "scripts/generated/translation_row_family_representative_summary.json"
)


@dataclass(frozen=True)
class FamilySpec:
    index: int
    family_key: str
    template_id: str
    source_digest: str
    expected_cases: int


@dataclass
class FamilyCases:
    spec: FamilySpec
    cases: list[ClassifiedCase]


@dataclass
class RepresentativeFamily:
    spec: FamilySpec
    first_case: TwoSourceCase
    observed_cases: int


def expected_template_source_counts(report: dict[str, Any]) -> dict[str, int]:
    counts: dict[str, int] = {}
    for result in report.get("window_results", []):
        checkpoint = result.get("family_checkpoint")
        if not checkpoint:
            continue
        path = Path(checkpoint)
        if not path.exists():
            continue
        payload = read_json(path)
        window_result = payload.get("result", {})
        family_counts = (
            window_result.get("family_counts", {})
            .get("template_source", {})
        )
        for key, count in family_counts.items():
            counts[key] = counts.get(key, 0) + int(count)
    if counts:
        return counts

    # Fallback for portable checkouts where /tmp checkpoints are unavailable:
    # the report stores the largest families directly.  This is enough for smoke
    # behavior, but representative-root generation should normally use the full
    # checkpoint counts.
    for item in report["variant_stats"]["template_source"]["top_families"]:
        counts[str(item["family_key"])] = int(item["cases"])
    return counts


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def parse_template_source_key(index: int, item: dict[str, Any]) -> FamilySpec:
    family_key = str(item["family_key"])
    marker = "|source="
    if marker not in family_key:
        raise ValueError(f"not a template_source family key: {family_key!r}")
    template_id, source_digest = family_key.split(marker, 1)
    if template_id not in TEMPLATE_TO_LEAN:
        raise ValueError(
            f"template {template_id!r} is not supported by the Lean smoke emitter"
        )
    return FamilySpec(
        index=index,
        family_key=family_key,
        template_id=template_id,
        source_digest=source_digest,
        expected_cases=int(item["cases"]),
    )


def select_family_specs(report: dict[str, Any], family_count: int) -> list[FamilySpec]:
    top_families = report["variant_stats"]["template_source"]["top_families"]
    return [
        parse_template_source_key(index, item)
        for index, item in enumerate(top_families[:family_count])
    ]


def classify_case(rank: int, mask: int) -> tuple[str, TwoSourceCase, str] | None:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        return None
    needs = exact.translation_needs_farkas(word, mask)
    if needs is None:
        return None
    b, seq = needs
    source_terms = sorted_source_farkas_terms(
        exact.source_terms_for_translation_farkas(seq, b)
    )
    if len(source_terms) != 2:
        return None
    digest = source_pair_digest(source_terms)
    indices, source_constraints = find_source_indices(seq, b, source_terms)
    multipliers = two_source_multipliers_for_lines(
        source_constraints[0],
        source_constraints[1],
    )
    if not shape_valid(
        multipliers=multipliers,
        first_line=source_constraints[0],
        second_line=source_constraints[1],
    ):
        return None
    matches = [
        template_id
        for template_id in matching_templates(
            source_constraints[0],
            source_constraints[1],
            multipliers,
        )
        if template_id in TEMPLATE_TO_LEAN
    ]
    if not matches:
        return None
    template_id = matches[0]
    family_key = f"{template_id}|source={digest}"
    case = TwoSourceCase(
        rank=rank,
        mask=mask,
        word=word,
        seq=seq,
        b=b,
        first_source=source_terms[0]["source"],
        second_source=source_terms[1]["source"],
        first_line=source_constraints[0],
        second_line=source_constraints[1],
        multipliers=multipliers,
    )
    return family_key, case, template_id


def collect_family_cases(
    report: dict[str, Any],
    specs: list[FamilySpec],
    cases_per_family: int,
) -> list[FamilyCases]:
    by_key = {spec.family_key: FamilyCases(spec=spec, cases=[]) for spec in specs}
    next_case_index = 0
    for window in report["selected_windows"]:
        start = int(window["start"])
        end = int(window["end"])
        for rank in range(start, end):
            if all(len(item.cases) >= cases_per_family for item in by_key.values()):
                return list(by_key.values())
            word = exact.pair_word_at_rank(rank)
            if exact.total_linear(word) != exact.mat_id():
                continue
            for mask in range(64):
                result = classify_case(rank, mask)
                if result is None:
                    continue
                family_key, case, template_id = result
                family = by_key.get(family_key)
                if family is None or len(family.cases) >= cases_per_family:
                    continue
                if template_id != family.spec.template_id:
                    raise AssertionError(
                        f"template mismatch for {family_key}: "
                        f"{template_id} != {family.spec.template_id}"
                    )
                family.cases.append(
                    ClassifiedCase(next_case_index, case, template_id)
                )
                next_case_index += 1
                if all(len(item.cases) >= cases_per_family for item in by_key.values()):
                    return list(by_key.values())
    missing = [
        family.spec.family_key
        for family in by_key.values()
        if len(family.cases) < cases_per_family
    ]
    if missing:
        raise RuntimeError(f"not enough sample cases for families: {missing}")
    return list(by_key.values())


def collect_representative_families(
    report: dict[str, Any],
) -> tuple[list[RepresentativeFamily], dict[str, int]]:
    """Scan the representative windows and group all supported survivors.

    The returned families are diagnostic inputs to generated Lean.  Lean checks
    the semantic family predicates; this scanner is not trusted as proof that a
    future arbitrary rank belongs to a family.
    """

    expected_counts = expected_template_source_counts(report)
    if not expected_counts:
        raise RuntimeError("no template_source family counts available")

    by_key: dict[str, RepresentativeFamily] = {}
    counts = {
        "expected_family_count": len(expected_counts),
        "expected_covered_cases": sum(expected_counts.values()),
        "support_search_pair_words_scanned": 0,
        "support_search_identity_words": 0,
        "support_search_nonidentity_words_skipped": 0,
        "support_search_translation_sign_assignments": 0,
        "support_search_not_good_direction_masks": 0,
        "support_search_good_direction_survivors": 0,
        "support_search_covered_cases": 0,
        "unsupported_good_direction_survivors": 0,
        "families_found": 0,
    }

    for window in report["selected_windows"]:
        start = int(window["start"])
        end = int(window["end"])
        print(
            f"searching representative supports in [{start}, {end}); "
            f"{len(by_key)}/{len(expected_counts)} families found",
            flush=True,
        )
        for rank in range(start, end):
            if len(by_key) == len(expected_counts):
                break
            counts["support_search_pair_words_scanned"] += 1
            word = exact.pair_word_at_rank(rank)
            if exact.total_linear(word) != exact.mat_id():
                counts["support_search_nonidentity_words_skipped"] += 1
                continue
            counts["support_search_identity_words"] += 1
            for mask in range(64):
                if len(by_key) == len(expected_counts):
                    break
                counts["support_search_translation_sign_assignments"] += 1
                needs = exact.translation_needs_farkas(word, mask)
                if needs is None:
                    counts["support_search_not_good_direction_masks"] += 1
                    continue
                counts["support_search_good_direction_survivors"] += 1
                result = classify_case(rank, mask)
                if result is None:
                    counts["unsupported_good_direction_survivors"] += 1
                    continue
                family_key, case, template_id = result
                if family_key not in expected_counts or family_key in by_key:
                    continue
                family = by_key.get(family_key)
                if family is None:
                    spec = parse_template_source_key(
                        len(by_key),
                        {
                            "family_key": family_key,
                            "cases": expected_counts[family_key],
                        },
                    )
                    if template_id != spec.template_id:
                        raise AssertionError(
                            f"template mismatch for {family_key}: "
                            f"{template_id} != {spec.template_id}"
                        )
                    family = RepresentativeFamily(
                        spec=spec,
                        first_case=case,
                        observed_cases=expected_counts[family_key],
                    )
                    by_key[family_key] = family
                elif template_id != family.spec.template_id:
                    raise AssertionError(
                        f"template mismatch for {family_key}: "
                        f"{template_id} != {family.spec.template_id}"
                    )
                counts["support_search_covered_cases"] += 1
                counts["families_found"] = len(by_key)
        if len(by_key) == len(expected_counts):
            break

    if counts["unsupported_good_direction_survivors"] != 0:
        raise RuntimeError(
            "unsupported GoodDirection survivors in representative windows: "
            f"{counts['unsupported_good_direction_survivors']}"
        )
    missing = sorted(set(expected_counts) - set(by_key))
    if missing:
        raise RuntimeError(
            f"could not find support witnesses for {len(missing)} families; "
            f"first missing key: {missing[0]}"
        )

    families = sorted(
        by_key.values(),
        key=lambda family: (-family.observed_cases, family.spec.family_key),
    )
    reindexed: list[RepresentativeFamily] = []
    for index, family in enumerate(families):
        reindexed.append(
            RepresentativeFamily(
                spec=FamilySpec(
                    index=index,
                    family_key=family.spec.family_key,
                    template_id=family.spec.template_id,
                    source_digest=family.spec.source_digest,
                    expected_cases=family.observed_cases,
                ),
                first_case=family.first_case,
                observed_cases=family.observed_cases,
            )
        )
    return reindexed, counts


def case_header_lines_for_family(cc: ClassifiedCase, family_name: str) -> list[str]:
    case = cc.case
    name = lean_case_name(cc.index)
    return [
        f"private def {name}_rank : Fin numPairWords := ⟨{case.rank}, by decide⟩",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(case.mask)}",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(case.word)}",
        *support_lines(name, case.first_source, case.second_source),
        *lean_seq_definition(name, case.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(case.b)}",
        f"private def {name}_firstLine : StrictLin2 := {lean_strict_lin2(case.first_line)}",
        f"private def {name}_secondLine : StrictLin2 := {lean_strict_lin2(case.second_line)}",
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
        *format_simp_list(LINE_SIMPS),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_secondLine_eq :",
        f"    {name}_support.secondLine {name}_seq {name}_b = {name}_secondLine := by",
        f"  norm_num [{name}_secondLine, {name}_support, {name}_seq, {name}_b,",
        *format_simp_list(LINE_SIMPS),
        "    ]",
        "",
    ]


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def group_name(index: int) -> str:
    return f"Group{index:03d}"


def family_lines(family: FamilyCases) -> list[str]:
    if not family.cases:
        raise ValueError(f"family {family.spec.family_key} has no cases")
    name = family_name(family.spec.index)
    first_case = family.cases[0].case
    predicate_name, checked_on = TEMPLATE_TO_LEAN[family.spec.template_id]
    lines = [
        f"/-- Smoke family `{family.spec.family_key}`. -/",
        *support_lines(name, first_case.first_source, first_case.second_source),
        "",
        f"private abbrev {name}_contains (r : Nat) (mask : SignMask) : Prop :=",
        f"  {predicate_name} {name}_support r mask",
        "",
        f"private theorem {name}_checkedOn :",
        f"    SupportFamilyCheckedOn {name}_support {name}_contains := by",
        f"  simpa [{name}_contains] using {checked_on} {name}_support",
        "",
        f"private theorem {name}_killsOn :",
        f"    SupportFamilyKillsOn {name}_support {name}_contains :=",
        f"  SupportFamilyCheckedOn.kills {name}_checkedOn",
        "",
    ]
    for cc in family.cases:
        case_name = lean_case_name(cc.index)
        lines.extend(case_header_lines_for_family(cc, name))
        lines.extend(case_shape_lines(cc))
        lines.extend([
            f"private theorem {case_name}_in_{name} :",
            f"    {name}_contains {case_name}_rank.val {case_name}_mask := by",
            f"  simpa [{name}_contains, {case_name}_support, {name}_support] using {case_name}_shape",
            "",
            f"theorem {case_name}_goodKilled :",
            f"    TranslationGoodCaseKilled {case_name}_rank {case_name}_mask :=",
            f"  {name}_killsOn {case_name}_rank.val {case_name}_rank.isLt",
            f"    {case_name}_mask {case_name}_in_{name}",
            "",
            f"theorem {case_name}_translationKilled :",
            f"    TranslationCaseKilled {case_name}_rank {case_name}_mask :=",
            f"  TranslationGoodCaseKilled.killed {case_name}_goodKilled",
            "",
        ])
    return lines


def module_lines(namespace: str, families: list[FamilyCases]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "/-!",
        "Generated semantic row-family smoke for Phase 6Z.6F.",
        "",
        "This module proves a few representative translation GoodDirection cases",
        "through whole-family row-template predicates.  It deliberately does not",
        "construct ordinary translation certificates or call the old checker.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for family in families:
        lines.extend(family_lines(family))
    lines.extend([
        "theorem familySmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def representative_family_lines(family: RepresentativeFamily) -> list[str]:
    name = family_name(family.spec.index)
    predicate_name, checked_on = TEMPLATE_TO_LEAN[family.spec.template_id]
    return [
        f"/-- Representative family `{family.spec.family_key}`.",
        f"It covered {family.observed_cases} observed GoodDirection survivors in the bounded scan. -/",
        *support_lines(name, family.first_case.first_source, family.first_case.second_source),
        "",
        f"private abbrev {name}_contains (r : Nat) (mask : SignMask) : Prop :=",
        f"  {predicate_name} {name}_support r mask",
        "",
        f"private theorem {name}_checkedOn :",
        f"    SupportFamilyCheckedOn {name}_support {name}_contains := by",
        f"  simpa [{name}_contains] using {checked_on} {name}_support",
        "",
        f"private theorem {name}_killsOn :",
        f"    SupportFamilyKillsOn {name}_support {name}_contains :=",
        f"  SupportFamilyCheckedOn.kills {name}_checkedOn",
        "",
    ]


def representative_group_lines(
    *,
    namespace: str,
    group_index: int,
    families: list[RepresentativeFamily],
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "/-!",
        "Generated bounded representative semantic row-family group.",
        "",
        "This module exports a family-union predicate and theorem.  It contains no",
        "ordinary translation certificates and no per-rank certificate replay.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "",
    ]
    for family in families:
        lines.extend(representative_family_lines(family))

    covered_name = f"{group_name(group_index)}Covered"
    lines.extend([
        f"inductive {covered_name} : Nat -> SignMask -> Prop",
    ])
    for family in families:
        name = family_name(family.spec.index)
        lines.append(
            f"  | {name} {{r : Nat}} {{mask : SignMask}} "
            f"(h : {name}_contains r mask) : {covered_name} r mask"
        )
    lines.extend([
        "",
        f"theorem {group_name(group_index)}GoodCasesKilled",
        f"    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        f"    (h : {covered_name} r mask) :",
        "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by",
        "  cases h with",
    ])
    for family in families:
        name = family_name(family.spec.index)
        lines.extend([
            f"  | {name} h =>",
            f"      exact {name}_killsOn r hlt mask h",
        ])
    lines.extend([
        "",
        f"theorem {group_name(group_index)}_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def representative_root_lines(
    *,
    namespace: str,
    group_namespaces: list[str],
) -> list[str]:
    lines = [
        *[f"import {group_namespace}" for group_namespace in group_namespaces],
        "",
        "/-!",
        "Generated bounded representative semantic row-family root.",
        "",
        "The root composes group-level semantic predicates.  It is deliberately a",
        "bounded representative root, not final full translation coverage.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "inductive RepresentativeFamilyCovered : Nat -> SignMask -> Prop",
    ]
    for index, group_namespace in enumerate(group_namespaces):
        gname = group_name(index)
        lines.append(
            f"  | group{index:03d} {{r : Nat}} {{mask : SignMask}} "
            f"(h : _root_.{group_namespace}.{gname}Covered r mask) : "
            "RepresentativeFamilyCovered r mask"
        )
    lines.extend([
        "",
        "theorem representativeGoodCasesKilled",
        "    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        "    (h : RepresentativeFamilyCovered r mask) :",
        "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by",
        "  cases h with",
    ])
    for index, group_namespace in enumerate(group_namespaces):
        gname = group_name(index)
        lines.extend([
            f"  | group{index:03d} h =>",
            f"      exact _root_.{group_namespace}.{gname}GoodCasesKilled r hlt mask h",
        ])
    lines.extend([
        "",
        "theorem representativeFamilyCoverage_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def chunks(items: list[RepresentativeFamily], size: int) -> list[list[RepresentativeFamily]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def summary_payload(families: list[FamilyCases]) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "translation-row-family-smoke",
        "trusted_as_proof": False,
        "families": [
            {
                "index": family.spec.index,
                "family_key": family.spec.family_key,
                "template_id": family.spec.template_id,
                "source_digest": family.spec.source_digest,
                "expected_cases_in_profile": family.spec.expected_cases,
                "sample_cases": [
                    {
                        "rank": cc.case.rank,
                        "mask": cc.case.mask,
                        "template_id": cc.template_id,
                    }
                    for cc in family.cases
                ],
            }
            for family in families
        ],
    }


def representative_summary_payload(
    *,
    families: list[RepresentativeFamily],
    counts: dict[str, int],
    group_modules: list[str],
    root_module: str,
    families_per_group: int,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "translation-row-family-representative-root",
        "trusted_as_proof": False,
        "bounded_diagnostic_only": True,
        "counts": counts,
        "families_per_group": families_per_group,
        "family_count": len(families),
        "largest_family_size": max((family.observed_cases for family in families), default=0),
        "singleton_family_count": sum(1 for family in families if family.observed_cases == 1),
        "group_modules": group_modules,
        "root_module": root_module,
        "families": [
            {
                "index": family.spec.index,
                "family_key": family.spec.family_key,
                "template_id": family.spec.template_id,
                "source_digest": family.spec.source_digest,
                "observed_cases": family.observed_cases,
                "first_case": {
                    "rank": family.first_case.rank,
                    "mask": family.first_case.mask,
                },
            }
            for family in families
        ],
    }


def emit_smoke(args: argparse.Namespace) -> None:
    namespace = validate_module_namespace(args.module_namespace)
    report = read_json(args.report)
    specs = select_family_specs(report, args.families)
    families = collect_family_cases(report, specs, args.cases_per_family)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(module_lines(namespace, families)), encoding="utf-8")
    write_json(args.summary, summary_payload(families))
    print(f"wrote {args.out}")
    print(f"wrote {args.summary}")
    print(
        "generated family smoke: "
        f"{len(families)} families, "
        f"{sum(len(family.cases) for family in families)} sample cases"
    )


def emit_representative_root(args: argparse.Namespace) -> None:
    base_namespace = validate_module_namespace(args.representative_namespace)
    report = read_json(args.report)
    families, counts = collect_representative_families(report)
    family_groups = chunks(families, args.families_per_group)

    args.representative_dir.mkdir(parents=True, exist_ok=True)
    group_modules: list[str] = []
    for index, family_group in enumerate(family_groups):
        module_name = group_name(index)
        module_namespace = f"{base_namespace}.{module_name}"
        path = args.representative_dir / f"{module_name}.lean"
        path.write_text(
            "\n".join(
                representative_group_lines(
                    namespace=module_namespace,
                    group_index=index,
                    families=family_group,
                )
            ),
            encoding="utf-8",
        )
        group_modules.append(module_namespace)
        print(f"wrote {path}")

    root_namespace = f"{base_namespace}.All"
    root_path = args.representative_dir / "All.lean"
    root_path.write_text(
        "\n".join(
            representative_root_lines(
                namespace=root_namespace,
                group_namespaces=group_modules,
            )
        ),
        encoding="utf-8",
    )
    print(f"wrote {root_path}")

    write_json(
        args.representative_summary,
        representative_summary_payload(
            families=families,
            counts=counts,
            group_modules=group_modules,
            root_module=root_namespace,
            families_per_group=args.families_per_group,
        ),
    )
    print(f"wrote {args.representative_summary}")
    print(
        "generated representative family root: "
        f"{len(families)} families, "
        f"{counts['expected_covered_cases']} observed GoodDirection survivors, "
        f"{len(group_modules)} groups"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--mode",
        choices=["smoke", "representative-root"],
        default="smoke",
    )
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--families", type=int, default=3)
    parser.add_argument("--cases-per-family", type=int, default=2)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--module-namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument(
        "--representative-dir",
        type=Path,
        default=DEFAULT_REPRESENTATIVE_DIR,
    )
    parser.add_argument(
        "--representative-namespace",
        default=DEFAULT_REPRESENTATIVE_NAMESPACE,
    )
    parser.add_argument(
        "--representative-summary",
        type=Path,
        default=DEFAULT_REPRESENTATIVE_SUMMARY,
    )
    parser.add_argument("--families-per-group", type=int, default=16)
    args = parser.parse_args()

    if args.families <= 0:
        parser.error("--families must be positive")
    if args.cases_per_family <= 0:
        parser.error("--cases-per-family must be positive")
    if args.families_per_group <= 0:
        parser.error("--families-per-group must be positive")

    if args.mode == "smoke":
        emit_smoke(args)
    else:
        emit_representative_root(args)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
