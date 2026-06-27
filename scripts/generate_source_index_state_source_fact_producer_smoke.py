#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8S source-fact producer smoke.

The generated Lean module proves that source facts can be supplied by reusable
source-index/support predicates.  It intentionally does not replay concrete
rank/mask members; row facts remain separate and are handled by the 8R row
producer smoke.
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
    family_summary,
    write_json,
    write_text,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    source_payload,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8q_source_index_state_fact_production_profile.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateSourceFactProducerSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8s_source_index_state_source_fact_producer_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSourceFactProducerSmoke"
)


def source_group_name(index: int) -> str:
    return f"source_{index:03d}"


def grouped_sources(families: list[Any]) -> list[dict[str, Any]]:
    groups: dict[str, list[Any]] = defaultdict(list)
    for family in families:
        groups[key(source_payload(family))].append(family)

    rows = []
    for group_key, group_families in groups.items():
        first = group_families[0]
        rows.append({
            "key": group_key,
            "source_indices": tuple(first.source_indices),
            "source_skeletons": tuple(first.source_skeletons),
            "family_count": len(group_families),
            "case_count": sum(family.count for family in group_families),
            "families": sorted(
                group_families,
                key=lambda family: (-family.count, family.template_id, family.key),
            ),
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))


def producer_lines(index: int, group: dict[str, Any]) -> list[str]:
    name = source_group_name(index)
    first_family = group["families"][0]
    first_case = first_family.members[0].symbolic.case
    first_index, second_index = group["source_indices"]
    return [
        f"/-- Source-fact producer for source group `{group['key']}`.",
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
        f"theorem {name}_sourceFacts",
        "    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}",
        f"    (h : {name}_producer.Applies key r mask) :",
        "    SourceIndexStateSourceFacts key r mask :=",
        f"  {name}_producer.sourceFacts h",
        "",
    ]


def module_lines(namespace: str, groups: list[dict[str, Any]], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated source-fact producer smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay. Each producer turns a reusable",
        "`SourceIndexStateSourcePredicate` into `SourceIndexStateSourceFacts`;",
        "row facts remain a separate theorem obligation.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
    ]
    for index, group in enumerate(groups):
        lines.extend(producer_lines(index, group))
    lines.extend([
        "theorem sourceIndexStateSourceFactProducerSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Source-Fact Producer Smoke",
        "",
        "This generated smoke is not global coverage. It proves that each bounded",
        "source-fact group can be represented by a reusable source-index/support",
        "producer, without concrete rank/mask replay.",
        "",
        f"- Source groups: `{payload['source_group_count']}`",
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
        "source_group_count": len(groups),
        "represented_family_count": sum(int(group["family_count"]) for group in groups),
        "represented_case_count": sum(int(group["case_count"]) for group in groups),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "source-fact-producer-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "source facts are produced from reusable source-index predicates",
                "row facts remain a separate theorem obligation",
            ],
        },
        "source_groups": [
            {
                "key": group["key"],
                "source_indices": list(group["source_indices"]),
                "source_skeletons": list(group["source_skeletons"]),
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
    parser.add_argument("--phase", default="6Z.6K.8S")
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
    groups = grouped_sources(families)
    expected_groups = int(profile.get("source_fact_obligations", len(groups)))
    if len(groups) != expected_groups:
        raise RuntimeError(
            f"collected {len(groups)} source groups, expected {expected_groups}"
        )

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
        "source_group_count": payload["source_group_count"],
        "represented_family_count": payload["represented_family_count"],
        "represented_case_count": payload["represented_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
