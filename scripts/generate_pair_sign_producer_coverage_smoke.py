#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8AH pair-sign producer-coverage smoke.

This generator extends the earlier one-window producer-glue smoke to the
representative windows used by Phases 8AD-8AG.  It emits theorem-valued Lean
evidence that reusable source producers and row producers compose to
`TranslationGoodCaseKilled` for each sampled pair-sign descriptor key, without
including concrete rank/mask member branches in the Lean module.

The generated module is a bounded smoke, not global coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    TEMPLATE_TO_SOURCE_INDEX,
    family_name,
    family_summary,
    write_json,
    write_text,
)
from generate_source_index_state_producer_glue_smoke import (  # noqa: E402
    row_group_lines,
    row_group_name,
    source_group_lines,
    source_group_name,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_pair_sign_descriptor_membership_state import (  # noqa: E402
    DEFAULT_RANGES,
    parse_ranges,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    row_payload,
    source_payload,
)


DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PairSignProducerCoverageSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ah_pair_sign_producer_coverage_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "PairSignProducerCoverageSmoke"
)


def merge_families(parts: list[tuple[list[Family], dict[str, int]]]) -> tuple[list[Family], dict[str, int]]:
    merged: dict[str, Family] = {}
    counts: Counter[str] = Counter()
    for families, part_counts in parts:
        counts.update(part_counts)
        for family in families:
            current = merged.get(family.key)
            if current is None:
                current = Family(
                    key=family.key,
                    template_id=family.template_id,
                    source_indices=family.source_indices,
                    source_skeletons=family.source_skeletons,
                    row_property_key=family.row_property_key,
                )
                merged[family.key] = current
            elif (
                current.template_id != family.template_id
                or current.source_indices != family.source_indices
                or current.source_skeletons != family.source_skeletons
                or current.row_property_key != family.row_property_key
            ):
                raise RuntimeError(f"inconsistent family metadata for {family.key}")
            current.members.extend(family.members)
    return (
        sorted(merged.values(), key=lambda item: (-item.count, item.template_id, item.key)),
        dict(counts),
    )


def collect_representative_families(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
) -> tuple[list[Family], dict[str, int], list[dict[str, Any]]]:
    parts: list[tuple[list[Family], dict[str, int]]] = []
    windows: list[dict[str, Any]] = []
    for start, end in ranges:
        families, counts = collect_families_maybe_parallel(
            rank_start=start,
            limit=end - start,
            jobs=jobs,
            source_key_surface="pair_sign",
        )
        parts.append((families, counts))
        windows.append({
            "range": [start, end],
            "family_count": len(families),
            "represented_case_count": sum(family.count for family in families),
            "counts": counts,
        })
    families, counts = merge_families(parts)
    return families, counts, windows


def grouped_by_payload(families: list[Family], payload) -> list[dict[str, Any]]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key(payload(family))].append(family)
    rows = []
    for group_key, group_families in groups.items():
        rows.append({
            "key": group_key,
            "families": sorted(
                group_families,
                key=lambda family: (-family.count, family.template_id, family.key),
            ),
            "family_count": len(group_families),
            "case_count": sum(family.count for family in group_families),
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))


def key_lines(index: int, family: Family, source_index: int, row_index: int) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    src_name = source_group_name(source_index)
    row_name = row_group_name(row_index)
    row_predicate = {
        "eq_eq_pos_var_first": "EqEqPosVarFirstRows",
        "eq_eq_pos_var_second": "EqEqPosVarSecondRows",
        "eq_eq_neg_var_first": "EqEqNegVarFirstRows",
        "eq_eq_neg_var_second": "EqEqNegVarSecondRows",
        "opp_1m_var_first": "OppOneMinusVarFirstRows",
        "opp_1m_var_second": "OppOneMinusVarSecondRows",
        "opp_m1_var_first": "OppMinusOneVarFirstRows",
        "opp_m1_var_second": "OppMinusOneVarSecondRows",
        "axis_a_only": "AxisAOnlyRows",
        "axis_b_only": "AxisBOnlyRows",
        "exact_two_source_valid": "ExactTwoSourceValidRows",
    }[family.template_id]
    return [
        f"/-- Pair-sign producer coverage key `{family.key}`.",
        f"Observed representative GoodDirection cases: {family.count}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_key : SourceIndexStateKey where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        f"theorem {name}_sourceApplies_of_sourcePredicate",
        "    {r : Nat} {mask : SignMask}",
        "    (hsource : SourceIndexStateSourcePredicate",
        f"        {family.source_indices[0]} {family.source_indices[1]} {src_name}_support r mask) :",
        f"    {src_name}_producer.Applies {name}_key r mask := by",
        f"  unfold {src_name}_producer",
        "  exact ⟨rfl, ⟨rfl, ⟨by",
        f"    simp [{name}_key, {name}_support, {src_name}_support],",
        "    hsource⟩⟩⟩",
        "",
        f"theorem {name}_rowApplies_of_rows",
        "    {r : Nat} {mask : SignMask}",
        f"    (hrows : {row_predicate} {name}_key.support r mask) :",
        f"    {row_name}_producer.Applies {name}_key r mask := by",
        f"  unfold {row_name}_producer",
        "  exact ⟨rfl, hrows⟩",
        "",
        f"theorem {name}_keyFacts_of_sourcePredicate_rows",
        "    {r : Nat} {mask : SignMask}",
        "    (hsource : SourceIndexStateSourcePredicate",
        f"        {family.source_indices[0]} {family.source_indices[1]} {src_name}_support r mask)",
        f"    (hrows : {row_predicate} {name}_key.support r mask) :",
        f"    SourceIndexStateKeyFacts {name}_key r mask :=",
        "  SourceIndexStateKeyFacts.of_source_row",
        f"    ({src_name}_producer.sourceFacts",
        f"      ({name}_sourceApplies_of_sourcePredicate hsource))",
        f"    ({row_name}_producer.rowFacts",
        f"      ({name}_rowApplies_of_rows hrows))",
        "",
        f"theorem {name}_goodKilled_of_sourcePredicate_rows",
        "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
        "    (hsource : SourceIndexStateSourcePredicate",
        f"        {family.source_indices[0]} {family.source_indices[1]} {src_name}_support r mask)",
        f"    (hrows : {row_predicate} {name}_key.support r mask) :",
        "    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=",
        f"  {name}_key.goodKilled_of_source_row",
        f"    ({src_name}_producer.sourceFacts",
        f"      ({name}_sourceApplies_of_sourcePredicate hsource))",
        f"    ({row_name}_producer.rowFacts",
        f"      ({name}_rowApplies_of_rows hrows))",
        "",
    ]


def module_lines(
    namespace: str,
    families: list[Family],
    source_groups: list[dict[str, Any]],
    row_groups: list[dict[str, Any]],
    *,
    phase: str,
) -> list[str]:
    source_lookup = {str(group["key"]): index for index, group in enumerate(source_groups)}
    row_lookup = {str(group["key"]): index for index, group in enumerate(row_groups)}
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated pair-sign producer-coverage smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay. It composes reusable source producers and row",
        "producers into `SourceIndexStateKeyFacts` and",
        "`TranslationGoodCaseKilled` for representative pair-sign descriptor keys.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]
    for index, group in enumerate(source_groups):
        lines.extend(source_group_lines(index, group))
    for index, group in enumerate(row_groups):
        lines.extend(row_group_lines(index, group))
    for index, family in enumerate(families):
        lines.extend(key_lines(
            index,
            family,
            source_lookup[key(source_payload(family))],
            row_lookup[key(row_payload(family))],
        ))
    lines.extend([
        "theorem pairSignProducerCoverageSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Pair-Sign Producer-Coverage Smoke",
        "",
        "This generated smoke is not global coverage. It proves that the",
        "representative pair-sign descriptor keys can be killed from reusable",
        "source-producer predicates and exact row producer predicates, without",
        "raw rank/mask member replay.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Represented GoodDirection cases: `{payload['represented_case_count']}`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
        "## Windows",
        "",
        "| Range | Families | GoodDirection cases | Identity words | Translation masks |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        counts = window["counts"]
        lines.append(
            f"| `{window['range']}` | {window['family_count']} | "
            f"{window['represented_case_count']} | {counts.get('identity_words', 0)} | "
            f"{counts.get('translation_sign_assignments', 0)} |"
        )
    lines.extend([
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def build_payload(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    windows: list[dict[str, Any]],
    counts: dict[str, int],
    families: list[Family],
    source_groups: list[dict[str, Any]],
    row_groups: list[dict[str, Any]],
    out: Path,
    namespace: str,
    phase: str,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "phase": phase,
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "counts": counts,
        "windows": windows,
        "source_group_count": len(source_groups),
        "row_group_count": len(row_groups),
        "descriptor_family_count": len(families),
        "represented_case_count": sum(family.count for family in families),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "pair-sign-producer-coverage-smoke-emitted",
            "notes": [
                "the Lean module contains no concrete rank/mask branches",
                "source facts are produced from reusable source-index predicates",
                "row facts are produced from reusable row-template predicates",
                "descriptor keys compose through SourceIndexStateKey.goodKilled_of_source_row",
            ],
        },
        "source_groups": [
            {
                "key": group["key"],
                "family_count": group["family_count"],
                "case_count": group["case_count"],
            }
            for group in source_groups
        ],
        "row_groups": [
            {
                "key": group["key"],
                "family_count": group["family_count"],
                "case_count": group["case_count"],
            }
            for group in row_groups
        ],
        "descriptor_families": [family_summary(family) for family in families],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8AH")
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    namespace = validate_module_namespace(args.namespace)
    ranges = parse_ranges(args.ranges)
    families, counts, windows = collect_representative_families(
        ranges=ranges,
        jobs=args.jobs,
    )
    source_groups = grouped_by_payload(families, source_payload)
    row_groups = grouped_by_payload(families, row_payload)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(
        args.out,
        "\n".join(module_lines(
            namespace,
            families,
            source_groups,
            row_groups,
            phase=args.phase,
        )),
    )
    payload = build_payload(
        ranges=ranges,
        jobs=args.jobs,
        windows=windows,
        counts=counts,
        families=families,
        source_groups=source_groups,
        row_groups=row_groups,
        out=args.out,
        namespace=namespace,
        phase=args.phase,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "source_group_count": payload["source_group_count"],
        "row_group_count": payload["row_group_count"],
        "descriptor_family_count": payload["descriptor_family_count"],
        "represented_case_count": payload["represented_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
