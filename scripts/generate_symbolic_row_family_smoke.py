#!/usr/bin/env python3
"""Emit symbolic row-family Lean diagnostics.

The default smoke mode tests the source-agreement/row-property split from
`SymbolicFacts.lean`.  It selects a few high-volume stable template-source
families plus every observed row-property subcase of the single unstable
`axis_b_only` family from the Phase 6Z.6K profile.

The representative-root mode scans the bounded representative windows and emits
a theorem-valued family-union root keyed by `(template, source, row-property)`.

The generated Lean is diagnostic only.  It does not construct ordinary
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
    support_lines,
    validate_module_namespace,
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
DEFAULT_REPRESENTATIVE_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SymbolicRepresentative"
)
DEFAULT_REPRESENTATIVE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative"
)
DEFAULT_REPRESENTATIVE_SUMMARY = Path(
    "scripts/generated/phase6z6k2_symbolic_representative_summary.json"
)

SUPPORTED_STABLE_TEMPLATES = {
    "eq_eq_pos_var_first",
    "opp_1m_var_first",
    "opp_m1_var_first",
}

TEMPLATE_TO_SYMBOLIC: dict[str, dict[str, str]] = {
    "eq_eq_pos_var_first": {
        "predicate": "EqEqPosVarFirst",
        "rows": "EqEqPosVarFirstRows",
        "bridge": "eqEqPosVarFirst_of_symbolic",
        "checked": "eqEqPosVarFirst_checkedOn",
        "kills": "eqEqPosVarFirst_killsOn",
    },
    "eq_eq_pos_var_second": {
        "predicate": "EqEqPosVarSecond",
        "rows": "EqEqPosVarSecondRows",
        "bridge": "eqEqPosVarSecond_of_symbolic",
        "checked": "eqEqPosVarSecond_checkedOn",
        "kills": "eqEqPosVarSecond_killsOn",
    },
    "eq_eq_neg_var_first": {
        "predicate": "EqEqNegVarFirst",
        "rows": "EqEqNegVarFirstRows",
        "bridge": "eqEqNegVarFirst_of_symbolic",
        "checked": "eqEqNegVarFirst_checkedOn",
        "kills": "eqEqNegVarFirst_killsOn",
    },
    "eq_eq_neg_var_second": {
        "predicate": "EqEqNegVarSecond",
        "rows": "EqEqNegVarSecondRows",
        "bridge": "eqEqNegVarSecond_of_symbolic",
        "checked": "eqEqNegVarSecond_checkedOn",
        "kills": "eqEqNegVarSecond_killsOn",
    },
    "opp_1m_var_first": {
        "predicate": "OppOneMinusVarFirst",
        "rows": "OppOneMinusVarFirstRows",
        "bridge": "oppOneMinusVarFirst_of_symbolic",
        "checked": "oppOneMinusVarFirst_checkedOn",
        "kills": "oppOneMinusVarFirst_killsOn",
    },
    "opp_1m_var_second": {
        "predicate": "OppOneMinusVarSecond",
        "rows": "OppOneMinusVarSecondRows",
        "bridge": "oppOneMinusVarSecond_of_symbolic",
        "checked": "oppOneMinusVarSecond_checkedOn",
        "kills": "oppOneMinusVarSecond_killsOn",
    },
    "opp_m1_var_first": {
        "predicate": "OppMinusOneVarFirst",
        "rows": "OppMinusOneVarFirstRows",
        "bridge": "oppMinusOneVarFirst_of_symbolic",
        "checked": "oppMinusOneVarFirst_checkedOn",
        "kills": "oppMinusOneVarFirst_killsOn",
    },
    "opp_m1_var_second": {
        "predicate": "OppMinusOneVarSecond",
        "rows": "OppMinusOneVarSecondRows",
        "bridge": "oppMinusOneVarSecond_of_symbolic",
        "checked": "oppMinusOneVarSecond_checkedOn",
        "kills": "oppMinusOneVarSecond_killsOn",
    },
    "axis_a_only": {
        "predicate": "AxisAOnly",
        "rows": "AxisAOnlyRows",
        "bridge": "axisAOnly_of_symbolic",
        "checked": "axisAOnly_checkedOn",
        "kills": "axisAOnly_killsOn",
    },
    "axis_b_only": {
        "predicate": "AxisBOnly",
        "rows": "AxisBOnlyRows",
        "bridge": "axisBOnly_of_symbolic",
        "checked": "axisBOnly_checkedOn",
        "kills": "axisBOnly_killsOn",
    },
    "exact_two_source_valid": {
        "predicate": "ExactTwoSourceValid",
        "rows": "ExactTwoSourceValidRows",
        "bridge": "exactTwoSourceValid_of_symbolic",
        "checked": "exactTwoSourceValid_checkedOn",
        "kills": "exactTwoSourceValid_killsOn",
    },
}
SUPPORTED_TEMPLATES = set(TEMPLATE_TO_SYMBOLIC)


@dataclass(frozen=True)
class SymbolicCase:
    index: int
    case: TwoSourceCase
    template_id: str
    family_key: str
    row_property_key: str


@dataclass(frozen=True)
class SymbolicRepresentativeFamily:
    index: int
    combined_key: str
    template_id: str
    template_source_key: str
    source_digest: str
    row_property_key: str
    first_case: TwoSourceCase
    observed_cases: int


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


def combined_symbolic_key(template_source: str, row_property_key: str) -> str:
    return f"{template_source}|rowProperty={row_property_key}"


def collect_representative_symbolic_families(
    *,
    profile: dict[str, Any],
    report: dict[str, Any],
) -> tuple[list[SymbolicRepresentativeFamily], dict[str, Any]]:
    expected_family_count = int(
        profile["candidate_family_counts"]["template_source_row_property"]
    )
    expected_good_cases = int(profile["counts"]["good_direction_survivors"])

    by_key: dict[str, dict[str, Any]] = {}
    stats: dict[str, Any] = {
        "expected_family_count": expected_family_count,
        "expected_good_direction_survivors": expected_good_cases,
        "pair_words_scanned": 0,
        "nonidentity_words_skipped": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "not_good_direction_masks": 0,
        "good_direction_survivors": 0,
        "unsupported_good_direction_survivors": 0,
        "observed_covered_cases": 0,
        "family_count": 0,
        "template_counts": {},
    }

    for start, end in representative_windows(report):
        print(
            f"scanning symbolic representative families in [{start}, {end}); "
            f"{len(by_key)} families found",
            flush=True,
        )
        for rank in range(start, end):
            stats["pair_words_scanned"] += 1
            word = exact.pair_word_at_rank(rank)
            if exact.total_linear(word) != exact.mat_id():
                stats["nonidentity_words_skipped"] += 1
                continue
            stats["identity_words"] += 1
            for mask in range(64):
                stats["translation_sign_assignments"] += 1
                result = classify_choice(rank, mask)
                if result is None:
                    stats["not_good_direction_masks"] += 1
                    continue
                template_source, row_key, case, template_id = result
                stats["good_direction_survivors"] += 1
                if template_id not in TEMPLATE_TO_SYMBOLIC:
                    stats["unsupported_good_direction_survivors"] += 1
                    continue
                key = combined_symbolic_key(template_source, row_key)
                if key not in by_key:
                    _, source_digest = template_source.split("|source=", 1)
                    by_key[key] = {
                        "combined_key": key,
                        "template_id": template_id,
                        "template_source_key": template_source,
                        "source_digest": source_digest,
                        "row_property_key": row_key,
                        "first_case": case,
                        "observed_cases": 0,
                    }
                entry = by_key[key]
                if entry["template_id"] != template_id:
                    raise AssertionError(
                        f"template mismatch for {key}: "
                        f"{entry['template_id']} vs {template_id}"
                    )
                entry["observed_cases"] += 1
                stats["observed_covered_cases"] += 1
                stats["template_counts"][template_id] = (
                    int(stats["template_counts"].get(template_id, 0)) + 1
                )

    stats["family_count"] = len(by_key)
    if stats["unsupported_good_direction_survivors"] != 0:
        raise RuntimeError(
            "unsupported symbolic GoodDirection survivors: "
            f"{stats['unsupported_good_direction_survivors']}"
        )
    if stats["good_direction_survivors"] != expected_good_cases:
        raise RuntimeError(
            "representative GoodDirection survivor count mismatch: "
            f"{stats['good_direction_survivors']} != {expected_good_cases}"
        )
    if stats["observed_covered_cases"] != expected_good_cases:
        raise RuntimeError(
            "representative symbolic coverage count mismatch: "
            f"{stats['observed_covered_cases']} != {expected_good_cases}"
        )
    if stats["family_count"] != expected_family_count:
        raise RuntimeError(
            "representative symbolic family count mismatch: "
            f"{stats['family_count']} != {expected_family_count}"
        )

    raw_families = sorted(
        by_key.values(),
        key=lambda item: (-int(item["observed_cases"]), str(item["combined_key"])),
    )
    families: list[SymbolicRepresentativeFamily] = []
    for index, item in enumerate(raw_families):
        families.append(
            SymbolicRepresentativeFamily(
                index=index,
                combined_key=str(item["combined_key"]),
                template_id=str(item["template_id"]),
                template_source_key=str(item["template_source_key"]),
                source_digest=str(item["source_digest"]),
                row_property_key=str(item["row_property_key"]),
                first_case=item["first_case"],
                observed_cases=int(item["observed_cases"]),
            )
        )
    return families, stats


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def group_name(index: int) -> str:
    return f"Group{index:03d}"


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


def symbolic_representative_family_lines(
    family: SymbolicRepresentativeFamily,
) -> list[str]:
    name = family_name(family.index)
    info = TEMPLATE_TO_SYMBOLIC[family.template_id]
    return [
        f"/-- Symbolic representative family `{family.combined_key}`.",
        f"It covered {family.observed_cases} observed GoodDirection survivors in the bounded scan. -/",
        *support_lines(name, family.first_case.first_source, family.first_case.second_source),
        "",
        f"private abbrev {name}_contains (r : Nat) (mask : SignMask) : Prop :=",
        f"  SourceAgrees {name}_support r mask /\\",
        f"    {info['rows']} {name}_support r mask",
        "",
        f"private theorem {name}_checkedOn :",
        f"    SupportFamilyCheckedOn {name}_support {name}_contains := by",
        f"  intro r hlt mask h",
        f"  exact {info['checked']} {name}_support r hlt mask",
        f"    ({info['bridge']} h.1 h.2)",
        "",
        f"private theorem {name}_killsOn :",
        f"    SupportFamilyKillsOn {name}_support {name}_contains :=",
        f"  SupportFamilyCheckedOn.kills {name}_checkedOn",
        "",
    ]


def symbolic_representative_group_lines(
    *,
    namespace: str,
    group_index: int,
    families: list[SymbolicRepresentativeFamily],
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "/-!",
        "Generated bounded symbolic representative row-family group.",
        "",
        "This module exports a family-union predicate and theorem using the",
        "source-agreement/row-property split.  It contains no ordinary",
        "translation certificates and no per-rank certificate replay.",
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
        "",
    ]
    for family in families:
        lines.extend(symbolic_representative_family_lines(family))

    covered_name = f"{group_name(group_index)}Covered"
    lines.append(f"inductive {covered_name} : Nat -> SignMask -> Prop")
    for family in families:
        name = family_name(family.index)
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
        name = family_name(family.index)
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


def symbolic_representative_root_lines(
    *,
    namespace: str,
    group_namespaces: list[str],
) -> list[str]:
    lines = [
        *[f"import {group_namespace}" for group_namespace in group_namespaces],
        "",
        "/-!",
        "Generated bounded symbolic representative row-family root.",
        "",
        "The root composes group-level semantic predicates.  It is deliberately a",
        "bounded representative root, not final full translation coverage.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "inductive SymbolicRepresentativeCovered : Nat -> SignMask -> Prop",
    ]
    for index, group_namespace in enumerate(group_namespaces):
        gname = group_name(index)
        lines.append(
            f"  | group{index:03d} {{r : Nat}} {{mask : SignMask}} "
            f"(h : _root_.{group_namespace}.{gname}Covered r mask) : "
            "SymbolicRepresentativeCovered r mask"
        )
    lines.extend([
        "",
        "theorem symbolicRepresentativeGoodCasesKilled",
        "    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        "    (h : SymbolicRepresentativeCovered r mask) :",
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
        "theorem symbolicRepresentativeCoverage_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def chunks(
    items: list[SymbolicRepresentativeFamily],
    size: int,
) -> list[list[SymbolicRepresentativeFamily]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def symbolic_representative_summary_payload(
    *,
    families: list[SymbolicRepresentativeFamily],
    stats: dict[str, Any],
    group_modules: list[str],
    root_module: str,
    families_per_group: int,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "phase6z6k2_symbolic_representative_root",
        "trusted_as_proof": False,
        "bounded_diagnostic_only": True,
        "stats": stats,
        "families_per_group": families_per_group,
        "family_count": len(families),
        "largest_family_size": max(
            (family.observed_cases for family in families),
            default=0,
        ),
        "singleton_family_count": sum(
            1 for family in families if family.observed_cases == 1
        ),
        "group_modules": group_modules,
        "root_module": root_module,
        "families": [
            {
                "index": family.index,
                "combined_key": family.combined_key,
                "template_id": family.template_id,
                "template_source_key": family.template_source_key,
                "source_digest": family.source_digest,
                "row_property_key": family.row_property_key,
                "observed_cases": family.observed_cases,
                "first_case": {
                    "rank": family.first_case.rank,
                    "mask": family.first_case.mask,
                },
            }
            for family in families
        ],
    }


def emit_symbolic_representative_root(args: argparse.Namespace) -> None:
    base_namespace = validate_module_namespace(args.representative_namespace)
    profile = read_json(args.profile)
    report = read_json(args.report)
    families, stats = collect_representative_symbolic_families(
        profile=profile,
        report=report,
    )
    family_groups = chunks(families, args.families_per_group)

    args.representative_dir.mkdir(parents=True, exist_ok=True)
    group_modules: list[str] = []
    for index, family_group in enumerate(family_groups):
        module_name = group_name(index)
        module_namespace = f"{base_namespace}.{module_name}"
        path = args.representative_dir / f"{module_name}.lean"
        write_module(
            path,
            symbolic_representative_group_lines(
                namespace=module_namespace,
                group_index=index,
                families=family_group,
            ),
        )
        group_modules.append(module_namespace)
        print(f"wrote {path}")

    root_namespace = f"{base_namespace}.All"
    root_path = args.representative_dir / "All.lean"
    write_module(
        root_path,
        symbolic_representative_root_lines(
            namespace=root_namespace,
            group_namespaces=group_modules,
        ),
    )
    print(f"wrote {root_path}")

    write_json(
        args.representative_summary,
        symbolic_representative_summary_payload(
            families=families,
            stats=stats,
            group_modules=group_modules,
            root_module=root_namespace,
            families_per_group=args.families_per_group,
        ),
    )
    print(f"wrote {args.representative_summary}")
    print(
        "generated symbolic representative root: "
        f"{len(families)} families, "
        f"{stats['observed_covered_cases']} observed GoodDirection survivors, "
        f"{len(group_modules)} groups"
    )


def write_module(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--mode",
        choices=["smoke", "representative-root"],
        default="smoke",
    )
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--stable-count", type=int, default=3)
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

    if args.stable_count <= 0:
        parser.error("--stable-count must be positive")
    if args.families_per_group <= 0:
        parser.error("--families-per-group must be positive")

    if args.mode == "representative-root":
        emit_symbolic_representative_root(args)
        return

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
