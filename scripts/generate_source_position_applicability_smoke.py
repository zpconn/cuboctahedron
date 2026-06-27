#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8AA producer-applicability smoke.

The 8Z glue layer proves `TranslationGoodCaseKilled` from imported source and
row producer `Applies` proofs.  This bounded smoke exposes the next semantic
surface: per-family theorems deriving those `Applies` proofs from
source-position predicates and row-template predicates, with no concrete
rank/mask member replay.
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
    family_name,
    family_summary,
    write_json,
    write_text,
)
from generate_source_index_state_row_fact_producer_smoke import (  # noqa: E402
    TEMPLATE_TO_ROW_PREDICATE,
)
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402
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
    "SourcePositionApplicabilitySmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8aa_source_position_applicability_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourcePositionApplicabilitySmoke"
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


def theorem_lines(
    index: int,
    family: Any,
    source_index: int,
    row_index: int,
) -> list[str]:
    name = family_name(index)
    src = source_group_name(source_index)
    row = row_group_name(row_index)
    row_predicate = TEMPLATE_TO_ROW_PREDICATE[family.template_id]
    return [
        f"/-- Producer applicability for bounded family `{family.key}`.",
        f"Observed bounded GoodDirection cases: {family.count}. -/",
        f"theorem {name}_sourceApplies_of_position",
        "    {r : Nat} {mask : SignMask}",
        f"    (hsource : {src}_positionPredicate r mask) :",
        f"    {src}_producer.Applies {name}_key r mask := by",
        f"  unfold {src}_producer",
        f"  simp [{name}_key, hsource]",
        "",
        f"theorem {name}_rowApplies_of_rows",
        "    {r : Nat} {mask : SignMask}",
        f"    (hrows : {row_predicate} {name}_key.support r mask) :",
        f"    {row}_producer.Applies {name}_key r mask := by",
        f"  unfold {row}_producer",
        "  exact ⟨rfl, hrows⟩",
        "",
        f"theorem {name}_goodKilled_of_position_rows",
        "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
        f"    (hsource : {src}_positionPredicate r mask)",
        f"    (hrows : {row_predicate} {name}_key.support r mask) :",
        "    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=",
        f"  {name}_producerFactsGoodKilled",
        f"    ({name}_sourceApplies_of_position hsource)",
        f"    ({name}_rowApplies_of_rows hrows)",
        "",
    ]


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
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke",
        "",
        "/-!",
        "Generated source-position producer-applicability smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay.  It derives the 8Z producer `Applies` premises",
        "from source-position predicates and row-template predicates.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]
    for index, family in enumerate(families):
        lines.extend(theorem_lines(
            index,
            family,
            source_lookup[key(source_payload(family))],
            row_lookup[key(row_payload(family))],
        ))
    lines.extend([
        "theorem sourcePositionApplicabilitySmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Position Applicability Smoke",
        "",
        "This generated smoke is not global coverage. It proves that bounded",
        "descriptor keys can derive the 8Z source/row producer `Applies` premises",
        "from source-position predicates and row-template predicates, without",
        "concrete rank/mask replay.",
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
            "status": "source-position-applicability-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "source producer Applies follows from source-position predicates",
                "row producer Applies follows from row-template predicates",
                "the module derives TranslationGoodCaseKilled through 8Z glue",
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
    parser.add_argument("--phase", default="6Z.6K.8AA")
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
