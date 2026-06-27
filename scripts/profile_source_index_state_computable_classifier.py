#!/usr/bin/env python3
"""Profile the Phase 6Z.6K.8J source-index/state classifier surface.

This diagnostic emits no Lean.  It compares the rejected bounded replay proof
surface against a GoodDirection-only reflected classifier surface over
source-index/state families.

The key question is whether coverage can be stated with rule/state obligations
instead of one proof branch per concrete rank/mask survivor or bad-direction
mask.  The output is not trusted as proof; it is a gate for the next Lean smoke.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_bounded_coverage import (  # noqa: E402
    WindowData,
    collect_window,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8j_source_index_state_classifier_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass
class CandidateResult:
    name: str
    status: str
    theorem_obligations: int
    concrete_survivor_branches: int
    concrete_bad_direction_branches: int
    concrete_nonidentity_branches: int
    requires_new_lean_classifier: bool
    requires_good_direction_premise: bool
    notes: list[str]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def current_replay_candidate(data: WindowData) -> CandidateResult:
    concrete = len(data.covered) + len(data.bad_masks) + len(data.nonidentity)
    return CandidateResult(
        name="bounded_replay_current",
        status="rejected",
        theorem_obligations=concrete,
        concrete_survivor_branches=len(data.covered),
        concrete_bad_direction_branches=len(data.bad_masks),
        concrete_nonidentity_branches=len(data.nonidentity),
        requires_new_lean_classifier=False,
        requires_good_direction_premise=False,
        notes=[
            "This is the rejected Phase 6Z.6K.8I proof surface.",
            "It scales with concrete survivors plus bad-direction masks.",
            "It should not be used for production generated coverage.",
        ],
    )


def good_direction_classifier_candidate(
    data: WindowData,
    *,
    max_rule_count: int,
) -> CandidateResult:
    uncovered = int(data.counts.get("uncovered_cases", 0))
    non_two_source = int(data.counts.get("non_two_source_cases", 0))
    family_count = len(data.families)
    if uncovered or non_two_source:
        status = "rejected"
        notes = [
            "The source-index/state row-template families do not cover every GoodDirection survivor.",
            f"uncovered_cases={uncovered}",
            f"non_two_source_cases={non_two_source}",
        ]
    elif family_count > max_rule_count:
        status = "rejected"
        notes = [
            f"Rule count {family_count} exceeds max_rule_count={max_rule_count}.",
            "This is still rule/state based, but too large for the current gate.",
        ]
    else:
        status = "accepted-next-smoke"
        notes = [
            "This surface removes concrete bad-direction contradictions from generated coverage.",
            "The final theorem should consume a GoodDirection premise and prove only GoodDirection cases.",
            "The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership.",
        ]
    return CandidateResult(
        name="source_index_state_good_direction_classifier",
        status=status,
        theorem_obligations=family_count,
        concrete_survivor_branches=0,
        concrete_bad_direction_branches=0,
        concrete_nonidentity_branches=0,
        requires_new_lean_classifier=True,
        requires_good_direction_premise=True,
        notes=notes,
    )


def template_only_candidate(data: WindowData) -> CandidateResult:
    templates = sorted({family.template_id for family in data.families})
    return CandidateResult(
        name="template_only_classifier",
        status="rejected",
        theorem_obligations=len(templates),
        concrete_survivor_branches=0,
        concrete_bad_direction_branches=0,
        concrete_nonidentity_branches=0,
        requires_new_lean_classifier=True,
        requires_good_direction_premise=True,
        notes=[
            "Template id alone is too coarse: source indices and source checks are part of Applies.",
            "Keep template-only as a rejected lower bound, not a Lean target.",
            f"template_count={len(templates)}",
        ],
    )


def top_families(data: WindowData, *, limit: int) -> list[dict[str, Any]]:
    rows = []
    for family in data.families[:limit]:
        rows.append({
            "key": family.key,
            "template_id": family.template_id,
            "cases": family.count,
            "source_indices": list(family.source_indices),
            "sample_members": [
                {
                    "rank": member.symbolic.case.rank,
                    "mask": member.symbolic.case.mask,
                }
                for member in family.members[:5]
            ],
        })
    return rows


def profile_window(
    *,
    rank_start: int,
    limit: int,
    max_rule_count: int,
    top_limit: int,
) -> dict[str, Any]:
    data = collect_window(rank_start=rank_start, limit=limit)
    candidates = [
        current_replay_candidate(data),
        good_direction_classifier_candidate(data, max_rule_count=max_rule_count),
        template_only_candidate(data),
    ]
    accepted = [
        candidate.name
        for candidate in candidates
        if candidate.status.startswith("accepted")
    ]
    decision_status = "accepted-next-smoke" if accepted else "rejected"
    return {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "max_rule_count": max_rule_count,
        "counts": data.counts,
        "identity_rank_count": len(data.identity_ranks),
        "nonidentity_rank_count": len(data.nonidentity),
        "source_index_state_family_count": len(data.families),
        "largest_family_cases": data.families[0].count if data.families else 0,
        "covered_case_count": len(data.covered),
        "not_good_case_count": len(data.bad_masks),
        "candidate_results": [asdict(candidate) for candidate in candidates],
        "accepted_candidates": accepted,
        "decision": {
            "status": decision_status,
            "notes": [
                "This report emits no Lean and is not trusted as proof.",
                "The accepted surface, if any, is only a target for the next Lean smoke.",
                "Production coverage must not revive bounded replay.",
            ],
        },
        "top_families": top_families(data, limit=top_limit),
    }


def markdown(report: dict[str, Any]) -> str:
    counts = report["counts"]
    lines = [
        "# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It compares",
        "the rejected bounded replay surface with a GoodDirection-only reflected",
        "classifier target over source-index/state families.",
        "",
        f"- Status: `{report['decision']['status']}`",
        f"- Rank window: `[{report['rank_start']}, {report['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- Nonidentity words: `{report['nonidentity_rank_count']}`",
        f"- Translation sign assignments: `{counts['translation_sign_assignments']}`",
        f"- Not-GoodDirection masks: `{counts['not_good_direction_masks']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Source-index/state families: `{report['source_index_state_family_count']}`",
        f"- Largest family: `{report['largest_family_cases']}`",
        "",
        "## Candidate Surfaces",
        "",
        "| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |",
        "| --- | --- | ---: | ---: | ---: | --- |",
    ]
    for candidate in report["candidate_results"]:
        notes = " ".join(candidate["notes"])
        lines.append(
            f"| `{candidate['name']}` | `{candidate['status']}` | "
            f"{candidate['theorem_obligations']} | "
            f"{candidate['concrete_survivor_branches']} | "
            f"{candidate['concrete_bad_direction_branches']} | {notes} |"
        )
    lines.extend([
        "",
        "## Top Source-Index/State Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ])
    for family in report["top_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family["sample_members"]
        )
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=25)
    parser.add_argument("--max-rule-count", type=int, default=25)
    parser.add_argument("--top-limit", type=int, default=12)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    report = profile_window(
        rank_start=args.rank_start,
        limit=args.limit,
        max_rule_count=args.max_rule_count,
        top_limit=args.top_limit,
    )
    write_json(args.json, report)
    write_text(args.md, markdown(report))
    print(json.dumps({
        "status": report["decision"]["status"],
        "rank_window": [report["rank_start"], report["rank_end"]],
        "families": report["source_index_state_family_count"],
        "covered_cases": report["covered_case_count"],
        "not_good_cases": report["not_good_case_count"],
        "accepted_candidates": report["accepted_candidates"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
