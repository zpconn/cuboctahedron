#!/usr/bin/env python3
"""Emit Phase 6Z.6K.1 symbolic row-family Lean smoke.

This bounded diagnostic tests the source-agreement/row-property split from
`SymbolicFacts.lean`.  It selects a few high-volume stable template-source
families plus every observed row-property subcase of the single unstable
`axis_b_only` family from the Phase 6Z.6K profile.

The generated Lean is a smoke test only.  It does not construct ordinary
translation certificates and does not call the old translation checker.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_translation_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
    format_simp_list,
    lean_case_name,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    ClassifiedCase,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    TwoSourceCase,
    find_source_indices,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    digest_payload,
    row_property_payload,
)
from profile_symmetry_compression import (  # noqa: E402
    sorted_source_farkas_terms,
    two_source_multipliers_for_lines,
)
from profile_translation_row_relation_families import source_pair_digest  # noqa: E402
from profile_translation_row_relation_templates import (  # noqa: E402
    diamond_obstructions,
    matching_templates,
)
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k_symbolic_row_extraction_profile.json"
)
DEFAULT_REPORT = Path(
    "scripts/generated/translation_row_relation_families_profile_representative.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SymbolicSmoke.lean"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/phase6z6k1_symbolic_row_family_smoke_summary.json"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicSmoke"
)

SUPPORTED_STABLE_TEMPLATES = {
    "eq_eq_pos_var_first",
    "opp_1m_var_first",
    "opp_m1_var_first",
}
SUPPORTED_TEMPLATES = SUPPORTED_STABLE_TEMPLATES | {"axis_b_only"}

TEMPLATE_TO_SYMBOLIC: dict[str, dict[str, str]] = {
    "eq_eq_pos_var_first": {
        "predicate": "EqEqPosVarFirst",
        "rows": "EqEqPosVarFirstRows",
        "bridge": "eqEqPosVarFirst_of_symbolic",
        "kills": "eqEqPosVarFirst_killsOn",
    },
    "opp_1m_var_first": {
        "predicate": "OppOneMinusVarFirst",
        "rows": "OppOneMinusVarFirstRows",
        "bridge": "oppOneMinusVarFirst_of_symbolic",
        "kills": "oppOneMinusVarFirst_killsOn",
    },
    "opp_m1_var_first": {
        "predicate": "OppMinusOneVarFirst",
        "rows": "OppMinusOneVarFirstRows",
        "bridge": "oppMinusOneVarFirst_of_symbolic",
        "kills": "oppMinusOneVarFirst_killsOn",
    },
    "axis_b_only": {
        "predicate": "AxisBOnly",
        "rows": "AxisBOnlyRows",
        "bridge": "axisBOnly_of_symbolic",
        "kills": "axisBOnly_killsOn",
    },
}


@dataclass(frozen=True)
class SymbolicCase:
    index: int
    case: TwoSourceCase
    template_id: str
    family_key: str
    row_property_key: str


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def template_source_key(template_id: str, source_digest: str) -> str:
    return f"{template_id}|source={source_digest}"


def classify_choice(rank: int, mask: int) -> tuple[str, str, TwoSourceCase, str] | None:
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
    indices, source_constraints = find_source_indices(seq, b, source_terms)
    del indices
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
        if template_id in SUPPORTED_TEMPLATES
    ]
    if not matches:
        return None
    template_id = matches[0]
    source_digest = source_pair_digest(source_terms)
    row_payload = row_property_payload(
        template_id=template_id,
        first_line=source_constraints[0],
        second_line=source_constraints[1],
        multipliers=multipliers,
        diamond_matches=diamond_obstructions(
            source_constraints[0],
            source_constraints[1],
        ),
    )
    row_key = digest_payload(row_payload)
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
    return template_source_key(template_id, source_digest), row_key, case, template_id


def representative_windows(report: dict[str, Any]) -> list[tuple[int, int]]:
    windows: list[tuple[int, int]] = []
    for item in report.get("selected_windows", []):
        start = int(item["start"])
        end = int(item["end"])
        if start < end:
            windows.append((start, end))
    if not windows:
        raise RuntimeError("representative report has no selected windows")
    return sorted(dict.fromkeys(windows))


def selected_families(profile: dict[str, Any], stable_count: int) -> tuple[list[str], str, int]:
    top = profile["candidate_top_families"]["template_source"]
    stable: list[str] = []
    for item in top:
        key = str(item["family_key"])
        template_id = key.split("|source=", 1)[0]
        if template_id in SUPPORTED_STABLE_TEMPLATES:
            stable.append(key)
        if len(stable) == stable_count:
            break
    if len(stable) != stable_count:
        raise RuntimeError(f"could not select {stable_count} supported stable families")

    axis_candidates = [
        item
        for item in profile.get("family_variation", [])
        if str(item["family_key"]).startswith("axis_b_only|source=")
        and int(item.get("row_property_signatures", 0)) > 1
    ]
    if not axis_candidates:
        raise RuntimeError("profile has no varying axis_b_only family")
    axis = axis_candidates[0]
    return stable, str(axis["family_key"]), int(axis["row_property_signatures"])


def collect_cases(
    *,
    profile: dict[str, Any],
    report: dict[str, Any],
    stable_count: int,
) -> tuple[list[SymbolicCase], dict[str, Any]]:
    stable_keys, axis_key, axis_expected_rows = selected_families(profile, stable_count)
    stable_needed = set(stable_keys)
    stable_found: dict[str, SymbolicCase] = {}
    axis_found: dict[str, SymbolicCase] = {}
    next_index = 0
    stats = {
        "stable_family_targets": stable_keys,
        "axis_family_target": axis_key,
        "axis_expected_row_properties": axis_expected_rows,
        "pair_words_scanned": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "good_direction_survivors": 0,
        "selected_cases": 0,
    }

    for start, end in representative_windows(report):
        if len(stable_found) == len(stable_needed) and len(axis_found) == axis_expected_rows:
            break
        for rank in range(start, end):
            if len(stable_found) == len(stable_needed) and len(axis_found) == axis_expected_rows:
                break
            stats["pair_words_scanned"] += 1
            word = exact.pair_word_at_rank(rank)
            if exact.total_linear(word) != exact.mat_id():
                continue
            stats["identity_words"] += 1
            for mask in range(64):
                if len(stable_found) == len(stable_needed) and len(axis_found) == axis_expected_rows:
                    break
                stats["translation_sign_assignments"] += 1
                result = classify_choice(rank, mask)
                if result is None:
                    continue
                stats["good_direction_survivors"] += 1
                family_key, row_key, case, template_id = result
                if family_key in stable_needed and family_key not in stable_found:
                    stable_found[family_key] = SymbolicCase(
                        index=next_index,
                        case=case,
                        template_id=template_id,
                        family_key=family_key,
                        row_property_key=row_key,
                    )
                    next_index += 1
                elif family_key == axis_key and row_key not in axis_found:
                    axis_found[row_key] = SymbolicCase(
                        index=next_index,
                        case=case,
                        template_id=template_id,
                        family_key=family_key,
                        row_property_key=row_key,
                    )
                    next_index += 1

    missing = sorted(stable_needed - set(stable_found))
    if missing:
        raise RuntimeError(f"missing stable smoke families: {missing}")
    if len(axis_found) != axis_expected_rows:
        raise RuntimeError(
            f"found {len(axis_found)} axis row properties, expected {axis_expected_rows}"
        )

    cases = [stable_found[key] for key in stable_keys] + [
        axis_found[key] for key in sorted(axis_found)
    ]
    stats["selected_cases"] = len(cases)
    return cases, stats


def common_rank_context_lines(name: str) -> list[str]:
    return [
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        f"  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
    ]


def line_context_lines(name: str) -> list[str]:
    support_pair_ns = (
        "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair"
    )
    return [
        *common_rank_context_lines(name),
        f"  have hb :",
        f"      translationBAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_b := by",
        f"    simpa [hrank] using {name}_bAtRank",
        f"  have hfirst :",
        f"      {support_pair_ns}.firstLineAt {name}_support {name}_rank.val hlt",
        f"          {name}_mask = {name}_firstLine := by",
        f"    simp [{support_pair_ns}.firstLineAt, hseq, hb, {name}_firstLine_eq]",
        f"  have hsecond :",
        f"      {support_pair_ns}.secondLineAt {name}_support {name}_rank.val hlt",
        f"          {name}_mask = {name}_secondLine := by",
        f"    simp [{support_pair_ns}.secondLineAt, hseq, hb, {name}_secondLine_eq]",
    ]


def source_agrees_lines(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    return [
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_sourceAgrees :",
        f"    SourceAgrees {name}_support {name}_rank.val {name}_mask := by",
        "  intro hlt",
        *common_rank_context_lines(name),
        f"  simp [SourceChecks, hseq, {name}_support,",
        f"    checkTranslationConstraintSource, {name}_seq, impactFace]",
        "",
    ]


def row_fact_lines(name: str, which: str, predicate: str, theorem_name: str) -> list[str]:
    selector = "FirstLineAt" if which == "first" else "SecondLineAt"
    hline = "hfirst" if which == "first" else "hsecond"
    line_def = f"{name}_firstLine" if which == "first" else f"{name}_secondLine"
    return [
        f"  have {name}_{theorem_name} :",
        f"      {predicate} ({selector} {name}_support {name}_rank.val hlt {name}_mask) := by",
        f"    rw [{selector}, {hline}]",
        f"    norm_num [{line_def}, {predicate}]",
    ]


def fixed_fact_lines(name: str, which: str, a: int, b: int, theorem_name: str) -> list[str]:
    selector = "FirstLineAt" if which == "first" else "SecondLineAt"
    hline = "hfirst" if which == "first" else "hsecond"
    line_def = f"{name}_firstLine" if which == "first" else f"{name}_secondLine"
    return [
        f"  have {name}_{theorem_name} :",
        f"      FixedRow ({selector} {name}_support {name}_rank.val hlt {name}_mask)",
        f"        ({a}) ({b}) := by",
        f"    rw [{selector}, {hline}]",
        f"    norm_num [{line_def}, FixedRow]",
    ]


def rows_tail(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    if cc.template_id == "eq_eq_pos_var_first":
        return [
            *row_fact_lines(name, "first", "EqEqPosRow", "rowFirst"),
            *fixed_fact_lines(name, "second", 1, 1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "opp_1m_var_first":
        return [
            *row_fact_lines(name, "first", "OppPosRow", "rowFirst"),
            *fixed_fact_lines(name, "second", 1, -1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
        ]
    if cc.template_id == "opp_m1_var_first":
        return [
            *row_fact_lines(name, "first", "OppNegRow", "rowFirst"),
            *fixed_fact_lines(name, "second", -1, 1, "fixedSecond"),
            f"  exact ⟨{name}_rowFirst, {name}_fixedSecond⟩",
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
            f"  have {name}_weightedCNonpos :",
            f"      (SupportPair.multipliersAt {name}_support",
            f"          {name}_rank.val hlt {name}_mask).1 *",
            f"          (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).c +",
            f"        (SupportPair.multipliersAt {name}_support",
            f"          {name}_rank.val hlt {name}_mask).2 *",
            f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).c <= 0 := by",
            f"    rw [SupportPair.multipliersAt, hseq, hb,",
            f"      TwoSourceFarkasSupport.multipliers, {name}_firstLine_eq,",
            f"      {name}_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond]",
            f"    norm_num [{name}_firstLine, {name}_secondLine,",
            f"      TwoSourceFarkasSupport.multipliersForLines,",
            f"      TwoSourceFarkasSupport.orientNonnegative]",
            f"  exact ⟨{name}_firstAZero, {name}_secondAZero,",
            f"    {name}_bProductNeg, {name}_weightedCNonpos⟩",
        ]
    raise ValueError(f"unsupported symbolic smoke template {cc.template_id!r}")


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


def symbolic_shape_lines(cc: SymbolicCase) -> list[str]:
    name = lean_case_name(cc.index)
    info = TEMPLATE_TO_SYMBOLIC[cc.template_id]
    return [
        f"private theorem {name}_shape :",
        f"    {info['predicate']} {name}_support {name}_rank.val {name}_mask :=",
        f"  {info['bridge']} {name}_sourceAgrees {name}_rows",
        "",
        f"theorem {name}_goodKilled :",
        f"    TranslationGoodCaseKilled {name}_rank {name}_mask :=",
        f"  {info['kills']} {name}_support {name}_rank.val {name}_rank.isLt",
        f"    {name}_mask {name}_shape",
        "",
        f"theorem {name}_translationKilled :",
        f"    TranslationCaseKilled {name}_rank {name}_mask :=",
        f"  TranslationGoodCaseKilled.killed {name}_goodKilled",
        "",
    ]


def module_lines(namespace: str, cases: list[SymbolicCase]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "/-!",
        "Generated symbolic row-family smoke for Phase 6Z.6K.1.",
        "",
        "This bounded module tests the source-agreement/row-property split.  It",
        "does not construct ordinary translation certificates and does not call",
        "the old translation checker.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for cc in cases:
        name = lean_case_name(cc.index)
        lines.extend([
            f"/-- Symbolic smoke case for `{cc.family_key}` with row-property `{cc.row_property_key}`. -/",
            *case_header_lines_for_family(
                ClassifiedCase(cc.index, cc.case, cc.template_id),
                f"{name}_family",
            ),
            *source_agrees_lines(cc),
            *rows_lines(cc),
            *symbolic_shape_lines(cc),
        ])
    lines.extend([
        "theorem symbolicSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def write_module(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--stable-count", type=int, default=3)
    args = parser.parse_args()

    profile = read_json(args.profile)
    report = read_json(args.report)
    cases, stats = collect_cases(
        profile=profile,
        report=report,
        stable_count=args.stable_count,
    )
    write_module(args.out, module_lines(args.namespace, cases))
    write_json(
        args.summary,
        {
            "schema_version": 1,
            "trusted_as_proof": False,
            "mode": "phase6z6k1_symbolic_row_family_smoke",
            "output": str(args.out),
            "namespace": args.namespace,
            "stats": stats,
            "cases": [
                {
                    "index": item.index,
                    "rank": item.case.rank,
                    "mask": item.case.mask,
                    "template_id": item.template_id,
                    "family_key": item.family_key,
                    "row_property_key": item.row_property_key,
                }
                for item in cases
            ],
        },
    )


if __name__ == "__main__":
    main()
