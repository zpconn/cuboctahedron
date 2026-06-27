#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8R row-fact producer smoke.

The generated Lean module proves that row facts can be supplied by reusable
row-template predicates.  It intentionally does not replay concrete rank/mask
members; source facts remain separate premises handled by later phases.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_classifier_smoke import read_json  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    family_summary,
    write_json,
    write_text,
)
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    row_payload,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8q_source_index_state_fact_production_profile.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateRowFactProducerSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8r_source_index_state_row_fact_producer_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateRowFactProducerSmoke"
)

TEMPLATE_TO_ROW_PREDICATE = {
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
}


def row_group_name(index: int) -> str:
    return f"row_{index:03d}"


def grouped_rows(families: list[Any]) -> list[dict[str, Any]]:
    groups: dict[str, list[Any]] = defaultdict(list)
    for family in families:
        groups[key(row_payload(family))].append(family)

    rows = []
    for group_key, group_families in groups.items():
        first = group_families[0]
        rows.append({
            "key": group_key,
            "template_id": first.template_id,
            "row_property_key": first.row_property_key,
            "family_count": len(group_families),
            "case_count": sum(family.count for family in group_families),
            "families": sorted(
                group_families,
                key=lambda family: (-family.count, family.template_id, family.key),
            ),
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))


def producer_lines(index: int, group: dict[str, Any]) -> list[str]:
    template_id = str(group["template_id"])
    if template_id not in TEMPLATE_TO_SOURCE_INDEX:
        raise ValueError(f"unsupported template id {template_id!r}")
    if template_id not in TEMPLATE_TO_ROW_PREDICATE:
        raise ValueError(f"unsupported row predicate template {template_id!r}")
    name = row_group_name(index)
    ctor = TEMPLATE_TO_SOURCE_INDEX[template_id]
    row_predicate = TEMPLATE_TO_ROW_PREDICATE[template_id]
    return [
        f"/-- Row-fact producer for row group `{group['key']}`.",
        f"Observed bounded GoodDirection cases: {group['case_count']}. -/",
        f"def {name}_producer : SourceIndexStateRowProducer where",
        "  Applies := fun key r mask =>",
        f"    key.template = SourceIndexTemplate.{ctor} /\\",
        f"      {row_predicate} key.support r mask",
        "  rowFacts := by",
        "    intro key r mask h",
        "    exact SourceIndexStateRowFacts.of_template_rows",
        f"      (template := SourceIndexTemplate.{ctor}) h.1 h.2",
        "",
        f"theorem {name}_rowFacts",
        "    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}",
        f"    (h : {name}_producer.Applies key r mask) :",
        "    SourceIndexStateRowFacts key r mask :=",
        f"  {name}_producer.rowFacts h",
        "",
    ]


def module_lines(namespace: str, groups: list[dict[str, Any]], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated row-fact producer smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay. Each producer turns a reusable row-template",
        "predicate into `SourceIndexStateRowFacts`; source agreement remains a",
        "separate theorem obligation.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
    ]
    for index, group in enumerate(groups):
        lines.extend(producer_lines(index, group))
    lines.extend([
        "theorem sourceIndexStateRowFactProducerSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Row-Fact Producer Smoke",
        "",
        "This generated smoke is not global coverage. It proves that each bounded",
        "row-fact group can be represented by a reusable row-template producer,",
        "without concrete rank/mask replay.",
        "",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Selected descriptor families represented: `{payload['represented_family_count']}`",
        f"- Represented GoodDirection cases: `{payload['represented_case_count']}`",
        f"- Rank window used for selection: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
    ]
    return "\n".join(lines)


def build_payload(
    *,
    profile: dict[str, Any],
    groups: list[dict[str, Any]],
    out: Path,
    namespace: str,
    phase: str,
    collected_family_count: int,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "phase": phase,
        "trusted_as_proof": False,
        "rank_start": int(profile["rank_start"]),
        "rank_end": int(profile["rank_end"]),
        "jobs": int(profile.get("jobs", 1)),
        "collected_family_count": collected_family_count,
        "row_group_count": len(groups),
        "represented_family_count": sum(int(group["family_count"]) for group in groups),
        "represented_case_count": sum(int(group["case_count"]) for group in groups),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "row-fact-producer-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "row facts are produced from reusable row-template predicates",
                "source agreement remains a separate theorem obligation",
            ],
        },
        "row_groups": [
            {
                "key": group["key"],
                "template_id": group["template_id"],
                "row_property_key": group["row_property_key"],
                "family_count": group["family_count"],
                "case_count": group["case_count"],
                "sample_families": [
                    family_summary(family)
                    for family in group["families"][:4]
                ],
            }
            for group in groups
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8R")
    parser.add_argument("--jobs", type=int, default=1)
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.profile_json)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    if rank_end < rank_start:
        raise ValueError("profile rank_end is before rank_start")
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")

    families, _counts = collect_families_maybe_parallel(
        rank_start=rank_start,
        limit=rank_end - rank_start,
        jobs=args.jobs,
    )
    expected_count = int(profile.get("source_index_state_family_count", len(families)))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    groups = grouped_rows(families)
    expected_groups = int(profile.get("row_fact_obligations", len(groups)))
    if len(groups) != expected_groups:
        raise RuntimeError(f"collected {len(groups)} row groups, expected {expected_groups}")

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, groups, phase=args.phase)))
    payload = build_payload(
        profile=profile,
        groups=groups,
        out=args.out,
        namespace=namespace,
        phase=args.phase,
        collected_family_count=len(families),
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "row_group_count": payload["row_group_count"],
        "represented_family_count": payload["represented_family_count"],
        "represented_case_count": payload["represented_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
