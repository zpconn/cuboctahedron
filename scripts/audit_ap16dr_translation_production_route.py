#!/usr/bin/env python3
"""Audit the current AP16 translation production route.

This is a planning/projection tool only.  It is not proof evidence.

The goal is to keep the symmetry plan honest after AP16DO/AP16DQ:

* AP16AO says the split source/row producer hierarchy is small enough.
* AP16DO/AP16DQ show real singleton all-Good coverage, but the proof path uses
  rank-local candidate facts and some singleton builds now need more than the
  old 5 GiB smoke cap.

This audit reconciles those two facts and records the only route that should be
promoted toward production: a range/state membership theorem over the split
producer hierarchy, not rank-local singleton expansion.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_AO = Path("scripts/generated/phase6z6k8ao_pair_sign_producer_hierarchy_design.json")
DEFAULT_AN = Path("scripts/generated/phase6z6k8an_pair_sign_producer_growth_projection.json")
DEFAULT_DO_GUARDS = [
    Path("scripts/generated/phase6z6k8ap16do_compact_walsh_batch_classifier_guard.json"),
    Path("scripts/generated/phase6z6k8ap16do_rank6000745_classifier_facts_guard.json"),
    Path("scripts/generated/phase6z6k8ap16do_rank6000625_classifier_facts_guard.json"),
    Path("scripts/generated/phase6z6k8ap16do_rank6000480_classifier_facts_guard.json"),
    Path("scripts/generated/phase6z6k8ap16do_rank6000720_classifier_facts_guard.json"),
    Path("scripts/generated/phase6z6k8ap16do_rank6000662_classifier_facts_guard.json"),
    Path("scripts/generated/phase6z6k8ap16dq_five_rank_sparse_root_guard.json"),
]
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16dr_translation_production_route_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def guard_summary(path: Path) -> dict[str, Any]:
    payload = read_json(path)
    return {
        "path": str(path),
        "exit_code": payload.get("exit_code"),
        "elapsed_seconds": float(payload.get("elapsed_seconds", 0.0)),
        "max_tree_rss_mib": float(payload.get("max_tree_rss_mib", 0.0)),
        "min_available_seen_mib": float(payload.get("min_available_seen_mib", 0.0)),
        "rss_cap_mib": float(payload.get("rss_cap_mib", 0.0)),
    }


def audit(
    *,
    ao_json: Path,
    an_json: Path,
    guard_jsons: list[Path],
    singleton_smoke_cap_mib: float,
    production_memory_budget_gib: float,
    production_wall_budget_hours: float,
    production_cpu_budget_hours: float,
) -> dict[str, Any]:
    ao = read_json(ao_json)
    an = read_json(an_json)
    guards = [guard_summary(path) for path in guard_jsons]
    guard_failures = [guard for guard in guards if guard["exit_code"] != 0]
    max_guard_rss = max((guard["max_tree_rss_mib"] for guard in guards), default=0.0)
    max_singleton_rss = max(
        (
            guard["max_tree_rss_mib"]
            for guard in guards
            if "rank" in Path(guard["path"]).name and "classifier_facts" in Path(guard["path"]).name
        ),
        default=0.0,
    )
    singleton_exceeds_smoke_cap = max_singleton_rss > singleton_smoke_cap_mib

    projection = ao["projection"]
    projected_wall_hours = float(projection["wall_seconds"]) / 3600.0
    projected_cpu_hours = float(projection["cpu_seconds"]) / 3600.0
    projected_rss_gib = float(projection["rss_kib"]) / (1024.0 * 1024.0)
    hierarchy_within_budget = (
        ao["decision"]["status"] == "accepted-production-hierarchy-design"
        and projected_wall_hours <= production_wall_budget_hours
        and projected_cpu_hours <= production_cpu_budget_hours
        and projected_rss_gib <= production_memory_budget_gib
    )

    status = "accepted-production-route-audit"
    notes = [
        "split source/row producer hierarchy remains the only accepted production route",
        "rank-local singleton classifier-facts route is accepted only as bounded smoke",
        "next Lean proof target is range/state membership over the producer hierarchy",
    ]
    if guard_failures:
        status = "blocked-by-failed-guard"
        notes = ["one or more input guarded builds failed; do not promote this route"]
    elif not hierarchy_within_budget:
        status = "producer-hierarchy-budget-regression"
        notes = ["AP16AO producer hierarchy projection no longer satisfies the configured budgets"]

    return {
        "schema_version": 1,
        "mode": "ap16dr_translation_production_route_audit",
        "trusted_as_proof": False,
        "inputs": {
            "ao_json": str(ao_json),
            "an_json": str(an_json),
            "guard_jsons": [str(path) for path in guard_jsons],
        },
        "budgets": {
            "singleton_smoke_cap_mib": singleton_smoke_cap_mib,
            "production_memory_budget_gib": production_memory_budget_gib,
            "production_wall_budget_hours": production_wall_budget_hours,
            "production_cpu_budget_hours": production_cpu_budget_hours,
        },
        "producer_hierarchy": {
            "ao_status": ao["decision"]["status"],
            "projected_descriptor_families": projection["descriptor_families"],
            "projected_source_groups": projection["source_groups"],
            "projected_row_groups": projection["row_groups"],
            "projected_source_row_producers": projection["source_row_producers"],
            "projected_chunks": projection["chunk_count"],
            "projected_total_lines": projection["total_lines"],
            "projected_source_size_kib": projection["source_size_kib"],
            "projected_wall_seconds": projection["wall_seconds"],
            "projected_cpu_seconds": projection["cpu_seconds"],
            "projected_peak_rss_gib": projected_rss_gib,
            "within_budget": hierarchy_within_budget,
        },
        "growth_projection": {
            "an_status": an["decision"]["status"],
            "observed_good_direction_cases": an.get(
                "observed_good_direction_cases", an.get("good_direction_cases", 0)
            ),
            "observed_descriptor_families": an["descriptor"]["observed"],
            "estimated_descriptor_families": an["descriptor"]["estimated"],
            "observed_source_row_producers": an["observed_source_row_producers"],
            "estimated_source_row_producers": an["estimated_source_row_producers"],
        },
        "singleton_smoke": {
            "guard_results": guards,
            "max_guard_rss_mib": max_guard_rss,
            "max_singleton_classifier_facts_rss_mib": max_singleton_rss,
            "exceeds_singleton_smoke_cap": singleton_exceeds_smoke_cap,
            "production_decision": "rejected-for-production",
            "reason": (
                "rank-local candidate facts prove real singleton coverage but "
                "are not the production compression coordinate; two singleton "
                "classifier-facts modules exceed the old 5 GiB smoke cap"
            ),
        },
        "next_required_slice": {
            "phase": "6Z.6K.8AP.16DS",
            "target": "SourcePositionRowProducerGoodCoverageOnRange lo hi",
            "preferred_range_kind": "bounded sampled production-style range with multiple ranks",
            "must_import": [
                "shared source producer module",
                "shared row producer module",
                "bounded membership chunk(s)",
            ],
            "must_not_use": [
                "one theorem per raw rank",
                "one theorem per raw mask",
                "rank-local candidate-facts shards as the production coordinate",
                "packed blobs or large Boolean reductions",
                "native_decide, unsafe, sorry, admit, custom axioms",
            ],
            "acceptance_gate": [
                "nonempty GoodDirection coverage over a meaningful bounded range",
                "exports semantic all-Good coverage or source-position row-producer coverage",
                "focused guarded Lean build below 6500 MiB RSS",
                "updated projection still under 5-6 wall hours / 24 CPU-hours",
            ],
        },
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def fmt_seconds(seconds: float) -> str:
    if seconds < 60:
        return f"{seconds:.2f}s"
    minutes = seconds / 60.0
    if minutes < 60:
        return f"{minutes:.2f}m"
    return f"{minutes / 60.0:.2f}h"


def markdown(payload: dict[str, Any]) -> str:
    hierarchy = payload["producer_hierarchy"]
    singleton = payload["singleton_smoke"]
    next_slice = payload["next_required_slice"]
    lines = [
        "# Phase 6Z.6K.8AP.16DR translation production route audit",
        "",
        "This report is not proof evidence.  It reconciles the latest bounded",
        "Lean smoke results with the current production hierarchy projection.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Producer hierarchy within configured budget: `{hierarchy['within_budget']}`",
        f"- Projected descriptor families: `{hierarchy['projected_descriptor_families']}`",
        f"- Projected source+row producers: `{hierarchy['projected_source_row_producers']}`",
        f"- Projected chunks: `{hierarchy['projected_chunks']}`",
        f"- Projected source: `{hierarchy['projected_total_lines']}` lines / `{hierarchy['projected_source_size_kib']}` KiB",
        f"- Projected checking: `{fmt_seconds(hierarchy['projected_wall_seconds'])}` wall / `{fmt_seconds(hierarchy['projected_cpu_seconds'])}` CPU",
        f"- Projected peak RSS: `{hierarchy['projected_peak_rss_gib']:.2f}` GiB",
        f"- Max AP16DO/AP16DQ guarded RSS: `{singleton['max_guard_rss_mib']:.2f}` MiB",
        f"- Max AP16DO singleton classifier-facts RSS: `{singleton['max_singleton_classifier_facts_rss_mib']:.2f}` MiB",
        f"- Singleton route exceeds old smoke cap: `{singleton['exceeds_singleton_smoke_cap']}`",
        "",
        "## Decision",
        "",
        "The split source/row producer hierarchy remains the accepted production",
        "route.  The AP16DO/AP16DQ singleton classifier-facts path is accepted",
        "only as bounded smoke evidence: it proves real semantic coverage for five",
        "ranks, but it is not the production compression coordinate.",
        "",
        "The next proof-producing slice must target producer-hierarchy membership",
        "over a range/state language, not more rank-local singleton roots.",
        "",
        "## Guarded Smoke Inputs",
        "",
        "| Guard JSON | Exit | Elapsed | Peak RSS MiB | Cap MiB |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for guard in singleton["guard_results"]:
        lines.append(
            f"| `{guard['path']}` | {guard['exit_code']} | "
            f"{guard['elapsed_seconds']:.2f}s | {guard['max_tree_rss_mib']:.2f} | "
            f"{guard['rss_cap_mib']:.0f} |"
        )
    lines.extend([
        "",
        "## Next Required Slice",
        "",
        f"- Phase: `{next_slice['phase']}`",
        f"- Target: `{next_slice['target']}`",
        f"- Range kind: {next_slice['preferred_range_kind']}",
        "",
        "Must import:",
    ])
    for item in next_slice["must_import"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "Must not use:",
    ])
    for item in next_slice["must_not_use"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "Acceptance gate:",
    ])
    for item in next_slice["acceptance_gate"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ao-json", type=Path, default=DEFAULT_AO)
    parser.add_argument("--an-json", type=Path, default=DEFAULT_AN)
    parser.add_argument("--guard-json", type=Path, action="append", dest="guard_jsons")
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--singleton-smoke-cap-mib", type=float, default=5000.0)
    parser.add_argument("--production-memory-budget-gib", type=float, default=45.0)
    parser.add_argument("--production-wall-budget-hours", type=float, default=6.0)
    parser.add_argument("--production-cpu-budget-hours", type=float, default=24.0)
    args = parser.parse_args()

    guard_jsons = args.guard_jsons if args.guard_jsons is not None else DEFAULT_DO_GUARDS
    payload = audit(
        ao_json=args.ao_json,
        an_json=args.an_json,
        guard_jsons=guard_jsons,
        singleton_smoke_cap_mib=args.singleton_smoke_cap_mib,
        production_memory_budget_gib=args.production_memory_budget_gib,
        production_wall_budget_hours=args.production_wall_budget_hours,
        production_cpu_budget_hours=args.production_cpu_budget_hours,
    )
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "producer_hierarchy_within_budget": payload["producer_hierarchy"]["within_budget"],
        "max_singleton_classifier_facts_rss_mib": payload["singleton_smoke"]["max_singleton_classifier_facts_rss_mib"],
        "singleton_route_decision": payload["singleton_smoke"]["production_decision"],
        "next_phase": payload["next_required_slice"]["phase"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
