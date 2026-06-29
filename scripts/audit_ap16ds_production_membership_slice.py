#!/usr/bin/env python3
"""Audit whether AP16DS has a real production-style membership slice.

This is a planning/projection tool only.  It is not proof evidence.

AP16DR selected the split source/row producer hierarchy as the production
route and rejected rank-local singleton classifier facts as the production
coordinate.  AP16DS is the first checkpoint where those two facts must meet:
we need a nonempty theorem that classifies arbitrary identity-linear
`GoodDirectionAtRank` survivors in a meaningful range/state into a
source-position spec and row producer.

This audit deliberately distinguishes three surfaces:

* reusable conditional producer chunks;
* rank-local singleton all-Good smoke theorems;
* the missing production membership classifier/coverage theorem.

Only the third surface can complete AP16DS.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


SUPPORT_ROOT = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
SPLIT_ROOT = SUPPORT_ROOT / "PairSignProducerCoverageScalingSplit50k"
DEFAULT_AP16I = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_AP16DR = Path("scripts/generated/phase6z6k8ap16dr_translation_production_route_audit.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16ds_production_membership_slice_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def count_regex(path: Path, pattern: str) -> int:
    if not path.exists():
        return 0
    return len(re.findall(pattern, path.read_text(encoding="utf-8")))


def scan_files(paths: list[Path], pattern: str) -> list[str]:
    out: list[str] = []
    rx = re.compile(pattern)
    for path in paths:
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        if rx.search(text):
            out.append(str(path))
    return out


def lean_files_under(path: Path) -> list[Path]:
    if not path.exists():
        return []
    if path.is_file():
        return [path]
    return sorted(path.rglob("*.lean"))


def audit(ap16i: Path, ap16dr: Path) -> dict[str, Any]:
    ap16i_payload = read_json(ap16i)
    ap16dr_payload = read_json(ap16dr)
    split_files = lean_files_under(SPLIT_ROOT)
    support_files = lean_files_under(SUPPORT_ROOT)

    chunk_files = sorted((SPLIT_ROOT / "Chunks").glob("Chunk*.lean"))
    conditional_good_killed = sum(
        count_regex(path, r"\btheorem\s+fam_\d+_goodKilled_of_sourcePredicate_rows\b")
        for path in chunk_files
    )
    conditional_source_applies = sum(
        count_regex(path, r"\btheorem\s+fam_\d+_sourceApplies_of_sourcePredicate\b")
        for path in chunk_files
    )
    conditional_row_applies = sum(
        count_regex(path, r"\btheorem\s+fam_\d+_rowApplies_of_rows\b")
        for path in chunk_files
    )

    split_coverage_exports = scan_files(
        split_files,
        r"SourcePositionRowProducerGoodCoverageOnRange|AllTranslationGoodCoverageOnRange",
    )
    split_complete_exports = scan_files(split_files, r"\bcomplete\s*:=")

    rank_local_files = scan_files(
        support_files,
        r"PositiveSurvivorBoolSignatureClassifierOnRange\s+\d+\s+\(?\d+|\bAllTranslationGoodCoverageOnRange\s+\d+",
    )
    sparse_files = scan_files(
        support_files,
        r"CoversRanks\s+AllTranslationGoodRankKilled|fiveRankAllGoodCoverage",
    )
    generated_membership_surface_files = scan_files(
        support_files,
        r"PositiveSurvivorClassifierOnRange\s+0\s+5000|SourcePositionRowProducerGoodCoverageOnRange\s+0\s+5000",
    )

    counts = ap16i_payload.get("counts", {})
    decision_notes: list[str] = []
    accepted_components = []
    rejected_substitutes = []

    if conditional_good_killed:
        accepted_components.append(
            "split producer hierarchy has reusable conditional source/row -> killed facts"
        )
    else:
        decision_notes.append("split producer hierarchy conditional facts were not found")

    if ap16i_payload.get("decision", {}).get("status") == "accepted-positive-survivor-membership-profile":
        accepted_components.append(
            "positive-survivor profiler groups only GoodDirection survivors and emits zero bad-direction evidence"
        )
    else:
        decision_notes.append("positive-survivor profiler status is not accepted")

    if rank_local_files or sparse_files:
        rejected_substitutes.append(
            "rank-local singleton/sparse all-Good smoke exists but is not the production coordinate"
        )

    if split_coverage_exports:
        decision_notes.append(
            "split producer hierarchy mentions a coverage target; inspect manually before promoting"
        )
    else:
        decision_notes.append(
            "split producer hierarchy exports conditional facts only, not range/state coverage"
        )

    has_production_slice = bool(split_coverage_exports and split_complete_exports)
    if has_production_slice:
        status = "inspect-potential-production-slice"
        decision_notes.append(
            "the audit found both coverage-target text and a complete field in split files"
        )
    else:
        status = "blocked-missing-production-classifier"
        decision_notes.append(
            "AP16DS still needs the GoodDirection -> source-position/row-producer classifier"
        )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DS",
        "mode": "production_membership_slice_audit",
        "trusted_as_proof": False,
        "inputs": {
            "ap16i_profile": str(ap16i),
            "ap16dr_audit": str(ap16dr),
            "split_root": str(SPLIT_ROOT),
        },
        "ap16i_profile": {
            "status": ap16i_payload.get("decision", {}).get("status"),
            "ranges": ap16i_payload.get("ranges", []),
            "good_direction_cases": counts.get("good_direction_survivors"),
            "positive_candidate_groups": ap16i_payload.get("positive_candidate_group_count"),
            "positive_survivor_signatures": ap16i_payload.get("positive_survivor_signature_count"),
            "duplicate_rank_mask_memberships": ap16i_payload.get("duplicate_rank_mask_memberships"),
            "ambiguous_good_survivor_memberships": ap16i_payload.get("ambiguous_good_survivor_memberships"),
            "bad_direction_evidence_emitted": ap16i_payload.get("bad_direction_evidence_emitted"),
            "bounded_generation_estimate": ap16i_payload.get("bounded_generation_estimate"),
        },
        "ap16dr_route": {
            "status": ap16dr_payload.get("decision", {}).get("status"),
            "producer_hierarchy_within_budget": ap16dr_payload.get("producer_hierarchy", {}).get("within_budget"),
            "singleton_route_decision": ap16dr_payload.get("singleton_smoke", {}).get("production_decision"),
            "next_target": ap16dr_payload.get("next_required_slice", {}).get("target"),
        },
        "split_hierarchy_scan": {
            "chunk_files": len(chunk_files),
            "conditional_source_applies_theorems": conditional_source_applies,
            "conditional_row_applies_theorems": conditional_row_applies,
            "conditional_good_killed_theorems": conditional_good_killed,
            "coverage_export_files": split_coverage_exports,
            "complete_export_files": split_complete_exports,
        },
        "existing_smoke_surfaces": {
            "rank_local_all_good_files": rank_local_files[:40],
            "rank_local_all_good_file_count": len(rank_local_files),
            "sparse_rank_root_files": sparse_files,
            "generated_membership_surface_files": generated_membership_surface_files,
        },
        "accepted_components": accepted_components,
        "rejected_substitutes": rejected_substitutes,
        "required_next_emitter": {
            "name": "ap16dt_positive_survivor_classifier_slice",
            "preferred_theorem": "PositiveSurvivorBoolSignatureClassifierOnRange lo hi",
            "erases_to": [
                "SourcePositionRowProducerGoodCoverageOnRange lo hi",
                "AllTranslationGoodCoverageOnRange lo hi",
            ],
            "must_prove": (
                "forall rank mask, hM -> goodDirectionAtRankBool = true -> "
                "exists compact survivor signature/candidate carrying source-position and row facts"
            ),
            "must_not_use": [
                "rank-local singleton candidate-facts shards as the production coordinate",
                "finite replay over all 64 masks at a rank",
                "generated bad-direction evidence",
                "large Bool checker reduction",
            ],
        },
        "decision": {
            "status": status,
            "notes": decision_notes,
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def markdown(payload: dict[str, Any]) -> str:
    profile = payload["ap16i_profile"]
    split = payload["split_hierarchy_scan"]
    route = payload["ap16dr_route"]
    next_emitter = payload["required_next_emitter"]
    lines = [
        "# Phase 6Z.6K.8AP.16DS production membership slice audit",
        "",
        "This report is not proof evidence.  It checks whether the current repo",
        "already contains the nonempty production-style membership slice required",
        "after AP16DR.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- AP16I profile status: `{profile['status']}`",
        f"- AP16DR route status: `{route['status']}`",
        f"- Producer hierarchy within budget: `{route['producer_hierarchy_within_budget']}`",
        f"- AP16DR target: `{route['next_target']}`",
        "",
        "## Positive-Survivor Profile",
        "",
        f"- GoodDirection cases profiled: `{profile['good_direction_cases']}`",
        f"- Positive candidate groups: `{profile['positive_candidate_groups']}`",
        f"- Positive survivor signatures: `{profile['positive_survivor_signatures']}`",
        f"- Duplicate rank/mask memberships: `{profile['duplicate_rank_mask_memberships']}`",
        f"- Ambiguous GoodDirection memberships: `{profile['ambiguous_good_survivor_memberships']}`",
        f"- Bad-direction evidence emitted: `{profile['bad_direction_evidence_emitted']}`",
        "",
        "## Split Hierarchy Scan",
        "",
        f"- Chunk files: `{split['chunk_files']}`",
        f"- Conditional source-apply theorems: `{split['conditional_source_applies_theorems']}`",
        f"- Conditional row-apply theorems: `{split['conditional_row_applies_theorems']}`",
        f"- Conditional good-killed theorems: `{split['conditional_good_killed_theorems']}`",
        f"- Split files exporting coverage targets: `{len(split['coverage_export_files'])}`",
        f"- Split files exporting `complete :=` fields: `{len(split['complete_export_files'])}`",
        "",
        "Interpretation: the split source/row hierarchy is reusable and cheap,",
        "but it currently exports conditional facts.  It does not yet export a",
        "nonempty theorem that classifies arbitrary identity-linear",
        "`GoodDirectionAtRank` survivors in a range/state.",
        "",
        "## Existing Smoke Surfaces",
        "",
        f"- Rank-local all-Good files found: `{payload['existing_smoke_surfaces']['rank_local_all_good_file_count']}`",
        f"- Sparse rank root files: `{len(payload['existing_smoke_surfaces']['sparse_rank_root_files'])}`",
        f"- Generated membership-surface files: `{len(payload['existing_smoke_surfaces']['generated_membership_surface_files'])}`",
        "",
        "These are useful smoke tests, but they do not satisfy AP16DS because the",
        "accepted production coordinate is shared source/row producer membership,",
        "not rank-local singleton expansion.",
        "",
        "## Accepted Components",
        "",
    ]
    for item in payload["accepted_components"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "## Rejected Substitutes",
        "",
    ])
    for item in payload["rejected_substitutes"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "## Required Next Emitter",
        "",
        f"- Name: `{next_emitter['name']}`",
        f"- Preferred theorem: `{next_emitter['preferred_theorem']}`",
        "- Erases to:",
    ])
    for target in next_emitter["erases_to"]:
        lines.append(f"  - `{target}`")
    lines.extend([
        f"- Must prove: `{next_emitter['must_prove']}`",
        "- Must not use:",
    ])
    for item in next_emitter["must_not_use"]:
        lines.append(f"  - {item}")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for item in payload["decision"]["notes"]:
        lines.append(f"- {item}")
    return "\n".join(lines) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ap16i", type=Path, default=DEFAULT_AP16I)
    parser.add_argument("--ap16dr", type=Path, default=DEFAULT_AP16DR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    payload = audit(args.ap16i, args.ap16dr)
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(f"status={payload['decision']['status']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
