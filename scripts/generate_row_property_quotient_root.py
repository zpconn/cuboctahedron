#!/usr/bin/env python3
"""Emit a bounded row-property quotient Lean root for Phase 6Z.6K.6.

This generator is diagnostic only.  It scans a bounded rank window, collects
GoodDirection translation survivors, and emits Lean proving each survivor is
killed through the source-parametric row-property quotient.  It does not emit
ordinary TranslationCert values and does not call checkTranslationCert.
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
from generate_symbolic_row_family_smoke import (  # noqa: E402
    TEMPLATE_TO_SYMBOLIC,
    SymbolicCase,
    case_header_lines_for_family,
    classify_choice,
    common_rank_context_lines,
    fixed_fact_lines,
    line_context_lines,
    row_fact_lines,
    source_agrees_lines,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    ClassifiedCase,
    lean_case_name,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    validate_module_namespace,
)


DEFAULT_OUT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "RowPropertyQuotientRepresentative"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "RowPropertyQuotientRepresentative"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/phase6z6k6_row_property_quotient_representative_summary.json"
)

TEMPLATE_TO_CTOR = {
    "eq_eq_pos_var_first": "eqEqPosVarFirst",
    "eq_eq_pos_var_second": "eqEqPosVarSecond",
    "eq_eq_neg_var_first": "eqEqNegVarFirst",
    "eq_eq_neg_var_second": "eqEqNegVarSecond",
    "opp_1m_var_first": "oppOneMinusVarFirst",
    "opp_1m_var_second": "oppOneMinusVarSecond",
    "opp_m1_var_first": "oppMinusOneVarFirst",
    "opp_m1_var_second": "oppMinusOneVarSecond",
    "axis_a_only": "axisAOnly",
    "axis_b_only": "axisBOnly",
    "exact_two_source_valid": "exactTwoSourceValid",
}


@dataclass(frozen=True)
class RowPropertyCase:
    symbolic: SymbolicCase
    row_property_family: str


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_module(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def chunks(items: list[RowPropertyCase], size: int) -> list[list[RowPropertyCase]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def group_name(index: int) -> str:
    return f"Group{index:03d}"


def row_property_family_key(template_id: str, row_property_key: str) -> str:
    return f"{template_id}|rowProperty={row_property_key}"


def collect_cases(rank_start: int, limit: int) -> tuple[list[RowPropertyCase], dict[str, Any]]:
    cases: list[RowPropertyCase] = []
    stats: dict[str, Any] = {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "pair_words_scanned": 0,
        "nonidentity_words_skipped": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "not_good_direction_masks": 0,
        "good_direction_survivors": 0,
        "covered_cases": 0,
        "unsupported_good_direction_survivors": 0,
        "template_counts": {},
        "row_property_family_counts": {},
    }

    for rank in range(rank_start, rank_start + limit):
        stats["pair_words_scanned"] += 1
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            stats["nonidentity_words_skipped"] += 1
            continue
        stats["identity_words"] += 1
        for mask in range(64):
            stats["translation_sign_assignments"] += 1
            if exact.translation_needs_farkas(word, mask) is None:
                stats["not_good_direction_masks"] += 1
                continue
            stats["good_direction_survivors"] += 1
            result = classify_choice(rank, mask)
            if result is None:
                stats["unsupported_good_direction_survivors"] += 1
                continue
            template_source, row_key, case, template_id = result
            del template_source
            if template_id not in TEMPLATE_TO_CTOR:
                stats["unsupported_good_direction_survivors"] += 1
                continue
            family_key = row_property_family_key(template_id, row_key)
            index = len(cases)
            cases.append(
                RowPropertyCase(
                    symbolic=SymbolicCase(
                        index=index,
                        case=case,
                        template_id=template_id,
                        family_key=family_key,
                        row_property_key=row_key,
                    ),
                    row_property_family=family_key,
                )
            )
            stats["covered_cases"] += 1
            stats["template_counts"][template_id] = (
                int(stats["template_counts"].get(template_id, 0)) + 1
            )
            stats["row_property_family_counts"][family_key] = (
                int(stats["row_property_family_counts"].get(family_key, 0)) + 1
            )

    if stats["unsupported_good_direction_survivors"] != 0:
        raise RuntimeError(
            "unsupported GoodDirection survivors: "
            f"{stats['unsupported_good_direction_survivors']}"
        )
    if stats["covered_cases"] != stats["good_direction_survivors"]:
        raise RuntimeError(
            "coverage mismatch: "
            f"{stats['covered_cases']} != {stats['good_direction_survivors']}"
        )
    stats["row_property_family_count"] = len(stats["row_property_family_counts"])
    return cases, stats


def multiplier_rewrite_lines(name: str) -> list[str]:
    return [
        "SupportPair.multipliersAt, hseq, hb,",
        f"      TwoSourceFarkasSupport.multipliers, {name}_firstLine_eq,",
        f"      {name}_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond",
    ]


def multiplier_norm_lines(name: str) -> list[str]:
    return [
        f"{name}_firstLine, {name}_secondLine,",
        "      TwoSourceFarkasSupport.multipliersForLines,",
        "      TwoSourceFarkasSupport.orientNonnegative",
    ]


def weighted_c_lines(name: str, theorem_name: str) -> list[str]:
    return [
        f"  have {name}_{theorem_name} :",
        f"      (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).1 *",
        f"          (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).c +",
        f"        (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).2 *",
        f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).c <= 0 := by",
        "    rw [",
        *multiplier_rewrite_lines(name),
        "    ]",
        "    norm_num [",
        *multiplier_norm_lines(name),
        "    ]",
    ]


def weighted_coord_zero_lines(name: str, coord: str, theorem_name: str) -> list[str]:
    return [
        f"  have {name}_{theorem_name} :",
        f"      (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).1 *",
        f"          (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).{coord} +",
        f"        (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).2 *",
        f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).{coord} = 0 := by",
        "    rw [",
        *multiplier_rewrite_lines(name),
        "    ]",
        "    norm_num [",
        *multiplier_norm_lines(name),
        "    ]",
    ]


def exact_valid_tail(name: str) -> list[str]:
    return [
        f"  have {name}_w1Nonneg :",
        f"      0 <= (SupportPair.multipliersAt {name}_support",
        f"        {name}_rank.val hlt {name}_mask).1 := by",
        "    rw [",
        *multiplier_rewrite_lines(name),
        "    ]",
        "    norm_num [",
        *multiplier_norm_lines(name),
        "    ]",
        f"  have {name}_w2Nonneg :",
        f"      0 <= (SupportPair.multipliersAt {name}_support",
        f"        {name}_rank.val hlt {name}_mask).2 := by",
        "    rw [",
        *multiplier_rewrite_lines(name),
        "    ]",
        "    norm_num [",
        *multiplier_norm_lines(name),
        "    ]",
        f"  have {name}_somePos :",
        f"      0 < (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).1 \\/",
        f"        0 < (SupportPair.multipliersAt {name}_support",
        f"          {name}_rank.val hlt {name}_mask).2 := by",
        "    rw [",
        *multiplier_rewrite_lines(name),
        "    ]",
        "    norm_num [",
        *multiplier_norm_lines(name),
        "    ]",
        *weighted_coord_zero_lines(name, "a", "weightedA"),
        *weighted_coord_zero_lines(name, "b", "weightedB"),
        *weighted_c_lines(name, "weightedCNonpos"),
        f"  exact ⟨{name}_w1Nonneg, {name}_w2Nonneg, {name}_somePos,",
        f"    {name}_weightedA, {name}_weightedB, {name}_weightedCNonpos⟩",
    ]


def rows_tail(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    if cc.template_id == "eq_eq_pos_var_first":
        return [
            *row_fact_lines(name, "first", "EqEqPosRow", "rowFirst"),
            *fixed_fact_lines(name, "second", 1, 1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "eq_eq_pos_var_second":
        return [
            *fixed_fact_lines(name, "first", 1, 1, "fixedFirst"),
            *row_fact_lines(name, "second", "EqEqPosRow", "rowSecond"),
            f"  exact ⟨{name}_fixedFirst, {name}_rowSecond⟩",
        ]
    if cc.template_id == "eq_eq_neg_var_first":
        return [
            *row_fact_lines(name, "first", "EqEqNegRow", "rowFirst"),
            *fixed_fact_lines(name, "second", -1, -1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "eq_eq_neg_var_second":
        return [
            *fixed_fact_lines(name, "first", -1, -1, "fixedFirst"),
            *row_fact_lines(name, "second", "EqEqNegRow", "rowSecond"),
            f"  exact ⟨{name}_fixedFirst, {name}_rowSecond⟩",
        ]
    if cc.template_id == "opp_1m_var_first":
        return [
            *row_fact_lines(name, "first", "OppPosRow", "rowFirst"),
            *fixed_fact_lines(name, "second", 1, -1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "opp_1m_var_second":
        return [
            *fixed_fact_lines(name, "first", 1, -1, "fixedFirst"),
            *row_fact_lines(name, "second", "OppPosRow", "rowSecond"),
            f"  exact ⟨{name}_fixedFirst, {name}_rowSecond⟩",
        ]
    if cc.template_id == "opp_m1_var_first":
        return [
            *row_fact_lines(name, "first", "OppNegRow", "rowFirst"),
            *fixed_fact_lines(name, "second", -1, 1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "opp_m1_var_second":
        return [
            *fixed_fact_lines(name, "first", -1, 1, "fixedFirst"),
            *row_fact_lines(name, "second", "OppNegRow", "rowSecond"),
            f"  exact ⟨{name}_fixedFirst, {name}_rowSecond⟩",
        ]
    if cc.template_id == "axis_a_only":
        return [
            f"  have {name}_firstBZero :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).b = 0 := by",
            f"    rw [FirstLineAt, hfirst]",
            f"    norm_num [{name}_firstLine]",
            f"  have {name}_secondBZero :",
            f"      (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).b = 0 := by",
            f"    rw [SecondLineAt, hsecond]",
            f"    norm_num [{name}_secondLine]",
            f"  have {name}_aProductNeg :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).a *",
            f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).a < 0 := by",
            f"    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]",
            f"    norm_num [{name}_firstLine, {name}_secondLine]",
            *weighted_c_lines(name, "weightedCNonpos"),
            f"  exact ⟨{name}_firstBZero, {name}_secondBZero,",
            f"    {name}_aProductNeg, {name}_weightedCNonpos⟩",
        ]
    if cc.template_id == "axis_b_only":
        return [
            f"  have {name}_firstAZero :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).a = 0 := by",
            f"    rw [FirstLineAt, hfirst]",
            f"    norm_num [{name}_firstLine]",
            f"  have {name}_secondAZero :",
            f"      (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).a = 0 := by",
            f"    rw [SecondLineAt, hsecond]",
            f"    norm_num [{name}_secondLine]",
            f"  have {name}_bProductNeg :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).b *",
            f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).b < 0 := by",
            f"    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]",
            f"    norm_num [{name}_firstLine, {name}_secondLine]",
            *weighted_c_lines(name, "weightedCNonpos"),
            f"  exact ⟨{name}_firstAZero, {name}_secondAZero,",
            f"    {name}_bProductNeg, {name}_weightedCNonpos⟩",
        ]
    if cc.template_id == "exact_two_source_valid":
        return exact_valid_tail(name)
    raise ValueError(f"unsupported row-property template {cc.template_id!r}")


def rows_lines(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    rows_pred = TEMPLATE_TO_SYMBOLIC[cc.template_id]["rows"]
    return [
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_rows :",
        f"    {rows_pred} {name}_support {name}_rank.val {name}_mask := by",
        "  intro hlt",
        *line_context_lines(name),
        *rows_tail(cc),
        "",
    ]


def covered_lines(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    ctor = TEMPLATE_TO_CTOR[cc.template_id]
    exists_pred = f"Exists{TEMPLATE_TO_SYMBOLIC[cc.template_id]['predicate']}Rows"
    return [
        f"private theorem {name}_existsRows :",
        f"    {exists_pred} {name}_rank.val {name}_mask :=",
        f"  ⟨{name}_support, {name}_sourceAgrees, {name}_rows⟩",
        "",
        f"private theorem {name}_covered :",
        f"    RowPropertyParametricCovered {name}_rank.val {name}_mask :=",
        f"  RowPropertyParametricCovered.{ctor} {name}_existsRows",
        "",
    ]


def group_lines(
    *,
    namespace: str,
    group_index: int,
    cases: list[RowPropertyCase],
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "",
        "/-!",
        "Generated bounded row-property quotient group for Phase 6Z.6K.6.",
        "",
        "This module keeps source agreement local to each bounded proof case and",
        "exports only semantic row-property quotient coverage.",
        "",
        "Memory note: validate this file through the external memory-bounded",
        "checker, not through a broad generated-root `lake build`.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for rpc in cases:
        cc = rpc.symbolic
        name = lean_case_name(cc.index)
        lines.extend([
            f"/-- Bounded row-property quotient case `{rpc.row_property_family}`. -/",
            *case_header_lines_for_family(
                ClassifiedCase(cc.index, cc.case, cc.template_id),
                f"{name}_family",
            ),
            *source_agrees_lines(cc),
            *rows_lines(cc),
            *covered_lines(cc),
        ])

    covered_name = f"{group_name(group_index)}Covered"
    lines.append(f"inductive {covered_name} : Nat -> SignMask -> Prop")
    for rpc in cases:
        name = lean_case_name(rpc.symbolic.index)
        lines.append(
            f"  | {name} : {covered_name} {name}_rank.val {name}_mask"
        )
    lines.extend([
        "",
        f"theorem {group_name(group_index)}GoodCasesKilled",
        f"    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        f"    (h : {covered_name} r mask) :",
        "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by",
        "  cases h with",
    ])
    for rpc in cases:
        name = lean_case_name(rpc.symbolic.index)
        lines.extend([
            f"  | {name} =>",
            f"      exact RowPropertyParametricCovered.kills {name}_covered",
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


def root_lines(namespace: str, group_namespaces: list[str]) -> list[str]:
    lines = [
        *[f"import {group_namespace}" for group_namespace in group_namespaces],
        "",
        "/-!",
        "Generated bounded row-property quotient root for Phase 6Z.6K.6.",
        "",
        "This is a bounded validation root, not final full translation coverage.",
        "Do not validate this target with a broad `lake build`: Lake may compile",
        "all imported generated groups concurrently.  Use the external",
        "memory-bounded checker and cache workflow recorded in the summary JSON.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "inductive RowPropertyQuotientRepresentativeCovered : Nat -> SignMask -> Prop",
    ]
    for index, group_namespace in enumerate(group_namespaces):
        gname = group_name(index)
        lines.append(
            f"  | group{index:03d} {{r : Nat}} {{mask : SignMask}} "
            f"(h : _root_.{group_namespace}.{gname}Covered r mask) : "
            "RowPropertyQuotientRepresentativeCovered r mask"
        )
    lines.extend([
        "",
        "theorem rowPropertyQuotientRepresentativeGoodCasesKilled",
        "    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        "    (h : RowPropertyQuotientRepresentativeCovered r mask) :",
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
        "theorem rowPropertyQuotientRepresentative_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def clear_generated_dir(path: Path) -> None:
    path.mkdir(parents=True, exist_ok=True)
    for item in path.glob("Group*.lean"):
        item.unlink()
    all_file = path / "All.lean"
    if all_file.exists():
        all_file.unlink()


def module_path_for_namespace(namespace: str) -> str:
    return namespace


def summary_payload(
    *,
    args: argparse.Namespace,
    cases: list[RowPropertyCase],
    stats: dict[str, Any],
    group_modules: list[str],
    root_module: str,
) -> dict[str, Any]:
    generated_files = sorted(str(path) for path in args.out_dir.glob("*.lean"))
    groups = [
        {
            "module": module,
            "out": str(args.out_dir / f"{group_name(index)}.lean"),
        }
        for index, module in enumerate(group_modules)
    ]
    root_path = args.out_dir / "All.lean"
    return {
        "schema_version": 1,
        "mode": "phase6z6k6_row_property_quotient_representative",
        "trusted_as_proof": False,
        "bounded_diagnostic_only": True,
        "do_not_broad_lake_build": True,
        "recommended_checker": "scripts/check_row_relation_classifier_shards.py",
        "rank_start": args.rank_start,
        "limit": args.limit,
        "cases_per_group": args.cases_per_group,
        "stats": stats,
        "case_count": len(cases),
        "row_property_family_count": stats["row_property_family_count"],
        "groups": groups,
        "options": {
            "out": str(root_path),
            "root_module": root_module,
        },
        "group_modules": group_modules,
        "root_module": root_module,
        "generated_files": generated_files,
        "largest_generated_file_bytes": max(
            (Path(path).stat().st_size for path in generated_files),
            default=0,
        ),
        "row_property_families": [
            {
                "family_key": key,
                "cases": count,
            }
            for key, count in sorted(
                stats["row_property_family_counts"].items(),
                key=lambda item: (-int(item[1]), item[0]),
            )
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--cases-per-group", type=int, default=32)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.cases_per_group <= 0:
        parser.error("--cases-per-group must be positive")

    base_namespace = validate_module_namespace(args.namespace)
    cases, stats = collect_cases(args.rank_start, args.limit)
    case_groups = chunks(cases, args.cases_per_group)

    clear_generated_dir(args.out_dir)
    group_modules: list[str] = []
    for index, group_cases in enumerate(case_groups):
        module_name = group_name(index)
        module_namespace = f"{base_namespace}.{module_name}"
        group_path = args.out_dir / f"{module_name}.lean"
        write_module(
            group_path,
            group_lines(
                namespace=module_namespace,
                group_index=index,
                cases=group_cases,
            ),
        )
        group_modules.append(module_namespace)
        print(f"wrote {group_path}")

    root_namespace = f"{base_namespace}.All"
    root_path = args.out_dir / "All.lean"
    write_module(root_path, root_lines(root_namespace, group_modules))
    print(f"wrote {root_path}")

    write_json(
        args.summary,
        summary_payload(
            args=args,
            cases=cases,
            stats=stats,
            group_modules=group_modules,
            root_module=root_namespace,
        ),
    )
    print(f"wrote {args.summary}")
    print(
        "generated row-property quotient root: "
        f"{len(cases)} cases, "
        f"{stats['row_property_family_count']} row-property families, "
        f"{len(group_modules)} groups"
    )


if __name__ == "__main__":
    main()
