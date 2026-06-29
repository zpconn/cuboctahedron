#!/usr/bin/env python3
"""Audit DU.9 semantic row-membership template readiness.

This diagnostic is not proof evidence.  It asks whether the current Lean
semantic row-role adapters are sufficient for the bounded source-index/state
classifier window, or whether exact-two-source templates must be handled before
the next proof-producing emitter scales beyond the small DU.9AS smoke.
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

from generate_source_index_state_bounded_coverage import (  # noqa: E402
    RankMask,
    collect_window,
)
from generate_source_index_state_nonenum_smoke import write_json, write_text  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9cx_semantic_template_readiness.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

SUPPORTED_NONEXACT = {
    "eq_eq_pos_var_first",
    "eq_eq_pos_var_second",
    "eq_eq_neg_var_first",
    "eq_eq_neg_var_second",
    "opp_1m_var_first",
    "opp_1m_var_second",
    "opp_m1_var_first",
    "opp_m1_var_second",
    "axis_a_only",
    "axis_b_only",
}
EXACT_TEMPLATES = {"exact_two_source_valid"}


def template_status(template_id: str) -> str:
    if template_id in SUPPORTED_NONEXACT:
        return "supported_nonexact"
    if template_id in EXACT_TEMPLATES:
        return "needs_exact_two_source_adapter"
    return "unknown_template"


def sample_case(key: RankMask, family_index: int, template_id: str) -> dict[str, Any]:
    return {
        "rank": key.rank,
        "mask": key.mask,
        "family_index": family_index,
        "template_id": template_id,
        "status": template_status(template_id),
    }


def analyze(*, rank_start: int, limit: int, max_examples: int) -> dict[str, Any]:
    data = collect_window(rank_start=rank_start, limit=limit)

    cases_by_template: Counter[str] = Counter()
    cases_by_status: Counter[str] = Counter()
    families_by_template: Counter[str] = Counter()
    families_by_status: Counter[str] = Counter()
    examples_by_status: dict[str, list[dict[str, Any]]] = defaultdict(list)

    for family in data.families:
        families_by_template[family.template_id] += 1
        families_by_status[template_status(family.template_id)] += 1

    for key, (family_index, _member) in sorted(
        data.covered.items(), key=lambda item: (item[0].rank, item[0].mask)
    ):
        template_id = data.families[family_index].template_id
        status = template_status(template_id)
        cases_by_template[template_id] += 1
        cases_by_status[status] += 1
        if len(examples_by_status[status]) < max_examples:
            examples_by_status[status].append(sample_case(key, family_index, template_id))

    unsupported_statuses = ["needs_exact_two_source_adapter", "unknown_template"]
    unsupported_cases = sum(cases_by_status[status] for status in unsupported_statuses)
    unsupported_families = sum(
        families_by_status[status] for status in unsupported_statuses
    )
    if unsupported_cases == 0:
        decision_status = "current-adapters-cover-window"
        next_step = (
            "Generate a bounded semantic row-membership range module for the "
            "full audited window using the current non-exact adapters."
        )
    else:
        decision_status = "additional-semantic-adapters-needed"
        next_step = (
            "Add semantic adapters for the unsupported template statuses before "
            "attempting a full-window semantic range emitter."
        )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9CX",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": data.counts,
        "identity_rank_count": len(data.identity_ranks),
        "nonidentity_rank_count": len(data.nonidentity),
        "good_direction_survivors": len(data.covered),
        "source_index_state_family_count": len(data.families),
        "cases_by_template": dict(sorted(cases_by_template.items())),
        "cases_by_status": dict(sorted(cases_by_status.items())),
        "families_by_template": dict(sorted(families_by_template.items())),
        "families_by_status": dict(sorted(families_by_status.items())),
        "unsupported_cases": unsupported_cases,
        "unsupported_families": unsupported_families,
        "examples_by_status": {
            status: examples_by_status.get(status, [])
            for status in sorted(set(cases_by_status) | set(unsupported_statuses))
        },
        "decision": {
            "status": decision_status,
            "next_step": next_step,
            "notes": [
                "This audit emits no Lean and is not trusted as proof.",
                "Supported non-exact cases are exactly those handled by RowPairSemantic.exists_nonexact_of_source_row.",
                "Exact-two-source cases still need a separate semantic adapter or endpoint.",
            ],
        },
    }


def markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9CX Semantic Template Readiness Audit",
        "",
        "This report is planning telemetry only, not proof evidence.",
        "",
        f"- Status: `{report['decision']['status']}`",
        f"- Range: `[{report['rank_start']}, {report['rank_end']})`",
        f"- GoodDirection survivors: `{report['good_direction_survivors']}`",
        f"- Source-index/state families: `{report['source_index_state_family_count']}`",
        f"- Unsupported cases: `{report['unsupported_cases']}`",
        f"- Unsupported families: `{report['unsupported_families']}`",
        "",
        "## Cases By Template",
        "",
        "| Template | Cases | Families | Status |",
        "| --- | ---: | ---: | --- |",
    ]
    templates = sorted(
        set(report["cases_by_template"]) | set(report["families_by_template"])
    )
    for template in templates:
        lines.append(
            f"| `{template}` | {report['cases_by_template'].get(template, 0)} | "
            f"{report['families_by_template'].get(template, 0)} | "
            f"`{template_status(template)}` |"
        )
    lines.extend([
        "",
        "## Cases By Status",
        "",
        "| Status | Cases | Families |",
        "| --- | ---: | ---: |",
    ])
    statuses = sorted(set(report["cases_by_status"]) | set(report["families_by_status"]))
    for status in statuses:
        lines.append(
            f"| `{status}` | {report['cases_by_status'].get(status, 0)} | "
            f"{report['families_by_status'].get(status, 0)} |"
        )
    lines.extend([
        "",
        "## Unsupported Examples",
        "",
    ])
    any_unsupported = False
    for status in [
        "needs_exact_two_source_adapter",
        "unknown_template",
    ]:
        examples = report["examples_by_status"].get(status, [])
        if not examples:
            continue
        any_unsupported = True
        lines.append(f"### `{status}`")
        lines.append("")
        lines.append("| Rank | Mask | Family | Template |")
        lines.append("| ---: | ---: | ---: | --- |")
        for example in examples:
            lines.append(
                f"| {example['rank']} | {example['mask']} | "
                f"{example['family_index']} | `{example['template_id']}` |"
            )
        lines.append("")
    if not any_unsupported:
        lines.append("No unsupported examples in this window.")
        lines.append("")
    lines.extend([
        "## Decision",
        "",
        report["decision"]["next_step"],
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=5000)
    parser.add_argument("--max-examples", type=int, default=8)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise SystemExit("--rank-start must be nonnegative")
    if args.limit <= 0:
        raise SystemExit("--limit must be positive")
    if args.max_examples < 0:
        raise SystemExit("--max-examples must be nonnegative")

    report = analyze(
        rank_start=args.rank_start,
        limit=args.limit,
        max_examples=args.max_examples,
    )
    write_json(args.json, report)
    write_text(args.md, markdown(report))
    print(json.dumps({
        "status": report["decision"]["status"],
        "range": [report["rank_start"], report["rank_end"]],
        "good_direction_survivors": report["good_direction_survivors"],
        "source_index_state_families": report["source_index_state_family_count"],
        "unsupported_cases": report["unsupported_cases"],
        "unsupported_families": report["unsupported_families"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
