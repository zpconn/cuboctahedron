#!/usr/bin/env python3
"""Profile compact descriptor-key membership for Phase 6Z.6K.8M.

The 8L classifier smoke showed that descriptor branches compose cheaply once a
case is known to satisfy a descriptor's `Applies` predicate.  This diagnostic
asks which compact keys could route GoodDirection survivors to those descriptor
branches without replaying concrete rank/mask cases.

The output is diagnostic only and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Callable

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    collect_families,
    write_json,
    write_text,
)
from profile_symbolic_row_extraction_families import digest_payload  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8m_source_index_state_descriptor_membership.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass(frozen=True)
class Candidate:
    name: str
    description: str
    payload: Callable[[Family], dict[str, Any]]
    requires_row_property: bool
    requires_source_state: bool


def descriptor_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
        "sourceSkeletons": list(family.source_skeletons),
        "rowProperty": family.row_property_key,
    }


def source_index_template_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
        "sourceSkeletons": list(family.source_skeletons),
    }


def source_indices_only_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
    }


def row_property_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "rowProperty": family.row_property_key,
    }


def template_only_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
    }


CANDIDATES = [
    Candidate(
        name="descriptor_key",
        description="template + source indices + source skeletons + row-property key",
        payload=descriptor_payload,
        requires_row_property=True,
        requires_source_state=True,
    ),
    Candidate(
        name="source_index_template",
        description="template + source indices + source skeletons",
        payload=source_index_template_payload,
        requires_row_property=False,
        requires_source_state=True,
    ),
    Candidate(
        name="source_indices_only",
        description="template + source indices",
        payload=source_indices_only_payload,
        requires_row_property=False,
        requires_source_state=True,
    ),
    Candidate(
        name="row_property_only",
        description="template + row-property key",
        payload=row_property_payload,
        requires_row_property=True,
        requires_source_state=False,
    ),
    Candidate(
        name="template_only",
        description="template constructor only",
        payload=template_only_payload,
        requires_row_property=False,
        requires_source_state=False,
    ),
]


def key_for(candidate: Candidate, family: Family) -> str:
    return digest_payload(candidate.payload(family))


def member_count(families: list[Family]) -> int:
    return sum(family.count for family in families)


def sample_families(families: list[Family], *, limit: int) -> list[dict[str, Any]]:
    return [
        {
            "key": family.key,
            "cases": family.count,
            "template_id": family.template_id,
            "source_indices": list(family.source_indices),
            "row_property_key": family.row_property_key,
            "samples": [
                {
                    "rank": member.symbolic.case.rank,
                    "mask": member.symbolic.case.mask,
                }
                for member in family.members[:3]
            ],
        }
        for family in families[:limit]
    ]


def profile_candidate(
    candidate: Candidate,
    families: list[Family],
    *,
    group_gate: int,
) -> dict[str, Any]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key_for(candidate, family)].append(family)

    ambiguous = [
        (key, grouped)
        for key, grouped in groups.items()
        if len(grouped) != 1
    ]
    status = "rejected"
    notes: list[str] = []
    if ambiguous:
        notes.append("key is ambiguous: at least one key maps to multiple descriptors")
    if len(groups) > group_gate:
        notes.append(f"group count exceeds gate {group_gate}")
    if not ambiguous and len(groups) <= group_gate:
        if candidate.name == "descriptor_key":
            status = "accepted-next-lean-smoke"
            notes.extend([
                "one compact key per descriptor and no concrete member list",
                "next Lean smoke should prove key-to-descriptor membership for selected keys",
            ])
        else:
            status = "accepted-coarser-candidate"
            notes.append("coarser key is descriptor-unique on this bounded window")

    largest_group = max((member_count(grouped) for grouped in groups.values()), default=0)
    ambiguous_cases = sum(member_count(grouped) for _key, grouped in ambiguous)
    return {
        "name": candidate.name,
        "description": candidate.description,
        "status": status,
        "group_count": len(groups),
        "largest_group_cases": largest_group,
        "ambiguous_group_count": len(ambiguous),
        "ambiguous_cases": ambiguous_cases,
        "requires_row_property": candidate.requires_row_property,
        "requires_source_state": candidate.requires_source_state,
        "theorem_obligations": len(groups),
        "concrete_member_branches": 0 if candidate.name != "explicit_member_replay" else member_count(families),
        "notes": notes,
        "ambiguous_samples": [
            {
                "key": key,
                "descriptor_count": len(grouped),
                "case_count": member_count(grouped),
                "descriptors": sample_families(grouped, limit=4),
            }
            for key, grouped in sorted(
                ambiguous,
                key=lambda item: (-member_count(item[1]), item[0]),
            )[:8]
        ],
        "top_groups": [
            {
                "key": key,
                "case_count": member_count(grouped),
                "descriptor_count": len(grouped),
                "descriptors": sample_families(grouped, limit=3),
            }
            for key, grouped in sorted(
                groups.items(),
                key=lambda item: (-member_count(item[1]), item[0]),
            )[:12]
        ],
    }


def explicit_replay_result(total_cases: int) -> dict[str, Any]:
    return {
        "name": "explicit_member_replay",
        "description": "one membership branch per concrete GoodDirection rank/mask case",
        "status": "rejected",
        "group_count": total_cases,
        "largest_group_cases": 1 if total_cases else 0,
        "ambiguous_group_count": 0,
        "ambiguous_cases": 0,
        "requires_row_property": True,
        "requires_source_state": True,
        "theorem_obligations": total_cases,
        "concrete_member_branches": total_cases,
        "notes": [
            "this is the bounded replay path rejected by 8I",
            "kept only as a baseline",
        ],
        "ambiguous_samples": [],
        "top_groups": [],
    }


def profile(
    *,
    rank_start: int,
    limit: int,
    group_gate: int,
) -> dict[str, Any]:
    families, counts = collect_families(rank_start=rank_start, limit=limit)
    total_cases = member_count(families)
    candidate_results = [explicit_replay_result(total_cases)]
    candidate_results.extend(
        profile_candidate(candidate, families, group_gate=group_gate)
        for candidate in CANDIDATES
    )
    accepted = [
        result["name"]
        for result in candidate_results
        if str(result["status"]).startswith("accepted")
    ]
    descriptor_result = next(
        result for result in candidate_results if result["name"] == "descriptor_key"
    )
    decision_status = (
        "accepted-next-lean-smoke"
        if descriptor_result["status"] == "accepted-next-lean-smoke"
        else "rejected"
    )
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8M",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "group_gate": group_gate,
        "counts": counts,
        "family_count": len(families),
        "good_direction_case_count": total_cases,
        "largest_family_cases": families[0].count if families else 0,
        "candidate_results": candidate_results,
        "accepted_candidates": accepted,
        "decision": {
            "status": decision_status,
            "notes": [
                "This report emits no Lean and is not trusted as proof.",
                "Accepted means suitable for the next bounded Lean smoke only.",
                "Final coverage still needs Lean-checked descriptor membership and rank/sign-mask coverage.",
            ],
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8M Descriptor-Key Membership Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It compares",
        "compact descriptor-key surfaces for routing GoodDirection survivors to",
        "the all-family classifier branches accepted in 8L.",
        "",
        f"- Status: `{report['decision']['status']}`",
        f"- Rank window: `[{report['rank_start']}, {report['rank_end']})`",
        f"- Source-index/state families: `{report['family_count']}`",
        f"- GoodDirection cases: `{report['good_direction_case_count']}`",
        f"- Largest family: `{report['largest_family_cases']}`",
        "",
        "## Candidate Membership Surfaces",
        "",
        "| Candidate | Status | Obligations | Ambiguous groups | Ambiguous cases | Concrete branches | Notes |",
        "| --- | --- | ---: | ---: | ---: | ---: | --- |",
    ]
    for result in report["candidate_results"]:
        notes = " ".join(result["notes"])
        lines.append(
            f"| `{result['name']}` | `{result['status']}` | "
            f"{result['theorem_obligations']} | "
            f"{result['ambiguous_group_count']} | "
            f"{result['ambiguous_cases']} | "
            f"{result['concrete_member_branches']} | {notes} |"
        )
    descriptor = next(
        result for result in report["candidate_results"]
        if result["name"] == "descriptor_key"
    )
    lines.extend([
        "",
        "## Descriptor-Key Top Groups",
        "",
        "| Cases | Descriptor count | Template/source indices |",
        "| ---: | ---: | --- |",
    ])
    for group in descriptor["top_groups"][:12]:
        desc = group["descriptors"][0]
        lines.append(
            f"| {group['case_count']} | {group['descriptor_count']} | "
            f"`{desc['template_id']} {desc['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--group-gate", type=int, default=100)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    report = profile(
        rank_start=args.rank_start,
        limit=args.limit,
        group_gate=args.group_gate,
    )
    write_json(args.json, report)
    write_text(args.md, markdown(report))
    print(json.dumps({
        "status": report["decision"]["status"],
        "rank_window": [report["rank_start"], report["rank_end"]],
        "families": report["family_count"],
        "good_direction_cases": report["good_direction_case_count"],
        "accepted_candidates": report["accepted_candidates"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
