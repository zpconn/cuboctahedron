#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8T source+row producer glue smoke.

The generated Lean module composes reusable source producers and row producers
into descriptor-key facts for the bounded `[0,1000)` source-index/state
families.  It intentionally does not replay concrete rank/mask members.
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

from generate_source_index_state_classifier_smoke import (  # noqa: E402
    ctor_name,
    read_json,
)
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    family_name,
    family_summary,
    write_json,
    write_text,
)
from generate_source_index_state_row_fact_producer_smoke import (  # noqa: E402
    TEMPLATE_TO_ROW_PREDICATE,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    row_payload,
    source_payload,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8q_source_index_state_fact_production_profile.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateProducerGlueSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8t_source_index_state_producer_glue_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateProducerGlueSmoke"
)


def source_group_name(index: int) -> str:
    return f"source_{index:03d}"


def row_group_name(index: int) -> str:
    return f"row_{index:03d}"


def grouped_by_payload(families: list[Any], payload) -> list[dict[str, Any]]:
    groups: dict[str, list[Any]] = defaultdict(list)
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


def source_group_lines(index: int, group: dict[str, Any]) -> list[str]:
    name = source_group_name(index)
    first_family = group["families"][0]
    first_case = first_family.members[0].symbolic.case
    first_index, second_index = tuple(first_family.source_indices)
    return [
        f"/-- Source producer `{group['key']}`.",
        f"Observed bounded GoodDirection cases: {group['case_count']}. -/",
        *support_lines(name, first_case.first_source, first_case.second_source),
        f"private def {name}_producer : SourceIndexStateSourceProducer where",
        "  Applies := fun key r mask =>",
        f"    key.firstIndex = {first_index} /\\",
        f"      key.secondIndex = {second_index} /\\",
        f"      key.support = {name}_support /\\",
        "      SourceIndexStateSourcePredicate",
        f"        {first_index} {second_index} {name}_support r mask",
        "  sourceFacts := by",
        "    intro key r mask h",
        "    exact SourceIndexStateSourceFacts.of_sourcePredicate",
        "      h.1 h.2.1 h.2.2.1 h.2.2.2",
        "",
    ]


def row_group_lines(index: int, group: dict[str, Any]) -> list[str]:
    name = row_group_name(index)
    first_family = group["families"][0]
    template_id = first_family.template_id
    if template_id not in TEMPLATE_TO_SOURCE_INDEX:
        raise ValueError(f"unsupported template id {template_id!r}")
    if template_id not in TEMPLATE_TO_ROW_PREDICATE:
        raise ValueError(f"unsupported row predicate template {template_id!r}")
    ctor = TEMPLATE_TO_SOURCE_INDEX[template_id]
    row_predicate = TEMPLATE_TO_ROW_PREDICATE[template_id]
    return [
        f"/-- Row producer `{group['key']}`.",
        f"Observed bounded GoodDirection cases: {group['case_count']}. -/",
        f"private def {name}_producer : SourceIndexStateRowProducer where",
        "  Applies := fun key r mask =>",
        f"    key.template = SourceIndexTemplate.{ctor} /\\",
        f"      {row_predicate} key.support r mask",
        "  rowFacts := by",
        "    intro key r mask h",
        "    exact SourceIndexStateRowFacts.of_template_rows",
        f"      (template := SourceIndexTemplate.{ctor}) h.1 h.2",
        "",
    ]


def key_lines(
    index: int,
    family: Any,
    source_index: int,
    row_index: int,
) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    src_name = source_group_name(source_index)
    row_name = row_group_name(row_index)
    return [
        f"/-- Producer-glue family `{family.key}`.",
        f"Observed bounded GoodDirection cases: {family.count}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_key : SourceIndexStateKey where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        f"theorem {name}_producerFactsImplyKeyFacts",
        "    {r : Nat} {mask : SignMask}",
        f"    (hsource : {src_name}_producer.Applies {name}_key r mask)",
        f"    (hrows : {row_name}_producer.Applies {name}_key r mask) :",
        f"    SourceIndexStateKeyFacts {name}_key r mask :=",
        "  SourceIndexStateKeyFacts.of_source_row",
        f"    ({src_name}_producer.sourceFacts hsource)",
        f"    ({row_name}_producer.rowFacts hrows)",
        "",
    ]


def classifier_lines(
    families: list[Any],
    source_lookup: dict[str, int],
    row_lookup: dict[str, int],
) -> list[str]:
    lines = ["inductive ProducerGlueClassifierApplies : Nat -> SignMask -> Prop"]
    for index, family in enumerate(families):
        name = family_name(index)
        ctor = ctor_name(index)
        src = source_group_name(source_lookup[key(source_payload(family))])
        row = row_group_name(row_lookup[key(row_payload(family))])
        lines.append(
            f"  | {ctor} {{r : Nat}} {{mask : SignMask}} "
            f"(hsource : {src}_producer.Applies {name}_key r mask) "
            f"(hrows : {row}_producer.Applies {name}_key r mask) : "
            "ProducerGlueClassifierApplies r mask"
        )
    lines.extend([
        "",
        "def producerGlueClassifierFamily : RowPropertyMembershipFamily where",
        "  Applies := ProducerGlueClassifierApplies",
        "  covered := by",
        "    intro r mask h",
        "    cases h with",
    ])
    for index, family in enumerate(families):
        name = family_name(index)
        ctor = ctor_name(index)
        src = source_group_name(source_lookup[key(source_payload(family))])
        row = row_group_name(row_lookup[key(row_payload(family))])
        lines.extend([
            f"    | {ctor} hsource hrows =>",
            f"        exact {name}_key.covered_of_facts",
            f"          ({name}_producerFactsImplyKeyFacts hsource hrows)",
        ])
    lines.extend([
        "",
        "theorem producerGlueClassifierKillsOn : producerGlueClassifierFamily.KillsOn :=",
        "  producerGlueClassifierFamily.killsOn",
        "",
    ])
    for index, family in enumerate(families):
        name = family_name(index)
        ctor = ctor_name(index)
        src = source_group_name(source_lookup[key(source_payload(family))])
        row = row_group_name(row_lookup[key(row_payload(family))])
        lines.extend([
            f"theorem {name}_producerFactsImplyClassifier",
            "    {r : Nat} {mask : SignMask}",
            f"    (hsource : {src}_producer.Applies {name}_key r mask)",
            f"    (hrows : {row}_producer.Applies {name}_key r mask) :",
            "    ProducerGlueClassifierApplies r mask :=",
            f"  ProducerGlueClassifierApplies.{ctor} hsource hrows",
            "",
            f"theorem {name}_producerFactsGoodKilled",
            "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
            f"    (hsource : {src}_producer.Applies {name}_key r mask)",
            f"    (hrows : {row}_producer.Applies {name}_key r mask) :",
            "    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=",
            f"  producerGlueClassifierKillsOn r hlt mask",
            f"    ({name}_producerFactsImplyClassifier hsource hrows)",
            "",
        ])
    return lines


def module_lines(
    namespace: str,
    families: list[Any],
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
        "Generated source+row producer glue smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay. It composes reusable source producers and row",
        "producers into key facts and classifier branches.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
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
    lines.extend(classifier_lines(families, source_lookup, row_lookup))
    lines.extend([
        "theorem sourceIndexStateProducerGlueSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Producer Glue Smoke",
        "",
        "This generated smoke is not global coverage. It proves that bounded",
        "descriptor keys can be killed from reusable source-producer and",
        "row-producer applications, without raw source/row facts as premises.",
        "",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Represented GoodDirection cases: `{payload['represented_case_count']}`",
        f"- Rank window used for selection: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
    ]
    return "\n".join(lines)


def build_payload(
    *,
    profile: dict[str, Any],
    families: list[Any],
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
        "rank_start": int(profile["rank_start"]),
        "rank_end": int(profile["rank_end"]),
        "source_group_count": len(source_groups),
        "row_group_count": len(row_groups),
        "descriptor_family_count": len(families),
        "represented_case_count": sum(family.count for family in families),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "producer-glue-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "source and row facts are produced by reusable producer predicates",
                "the module derives key facts and TranslationGoodCaseKilled",
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
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8T")
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
    families = sorted(families, key=lambda item: (-item.count, item.template_id, item.key))
    expected_count = int(profile.get("source_index_state_family_count", len(families)))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    source_groups = grouped_by_payload(families, source_payload)
    row_groups = grouped_by_payload(families, row_payload)
    if len(source_groups) != int(profile.get("source_fact_obligations", len(source_groups))):
        raise RuntimeError("source group count does not match profile")
    if len(row_groups) != int(profile.get("row_fact_obligations", len(row_groups))):
        raise RuntimeError("row group count does not match profile")

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
        profile=profile,
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
