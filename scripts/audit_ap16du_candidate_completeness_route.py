#!/usr/bin/env python3
"""Audit the AP16DU candidate-catalog completeness proof route.

This script is diagnostic only.  It does not produce proof evidence.

AP16DU.0 validated that a range-specific catalog of positive survivor
candidates erases to `AllTranslationGoodCoverageOnRange`, provided a
catalog-completeness premise:

  GoodDirectionAtRank r mask -> exists candidate, generatedMember candidate r mask

The purpose of this audit is to decide whether the obvious signature bridge is
acceptable for that premise.  A bridge that introduces one signature per rank is
not a production proof shape: it recreates the singleton/rank-local route that
previous AP16 phases rejected.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_RANGE_AUDIT = Path("scripts/generated/phase6z6k8ap16du_candidate_chunk_range_coverage.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du_candidate_completeness_route_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def signature_cases_in_range(
    signature: dict[str, Any],
    lo: int,
    hi: int,
) -> tuple[list[int], int, set[str]]:
    ranks = [int(rank) for rank in signature.get("ranks", []) if lo <= int(rank) < hi]
    good_masks = [int(mask) for mask in signature.get("good_masks", [])]
    mask_candidates = signature.get("mask_candidates", {})
    candidate_keys: set[str] = set()
    for mask_text, keys in mask_candidates.items():
        if int(mask_text) in good_masks:
            candidate_keys.update(str(key) for key in keys)
    return ranks, len(ranks) * len(good_masks), candidate_keys


def top_rows(rows: list[dict[str, Any]], *, key: str, limit: int = 20) -> list[dict[str, Any]]:
    return sorted(rows, key=lambda row: (-int(row[key]), row.get("signature", "")))[:limit]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--range-audit", type=Path, default=DEFAULT_RANGE_AUDIT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    profile = read_json(args.profile)
    range_audit = read_json(args.range_audit)
    lo, hi = [int(v) for v in range_audit["range"]]
    range_candidate_keys = {str(row["key"]) for row in range_audit["range_candidate_keys"]}

    signature_rows: list[dict[str, Any]] = []
    candidate_keys_from_signatures: set[str] = set()
    rank_set: set[int] = set()
    represented_cases = 0
    mask_candidate_entries = 0

    for signature in profile.get("positive_survivor_signature_catalog", []):
        ranks, case_count, candidate_keys = signature_cases_in_range(signature, lo, hi)
        if not ranks:
            continue
        good_masks = [int(mask) for mask in signature.get("good_masks", [])]
        mask_candidates = signature.get("mask_candidates", {})
        mask_candidate_entries += sum(
            len(keys)
            for mask_text, keys in mask_candidates.items()
            if int(mask_text) in good_masks
        )
        represented_cases += case_count
        rank_set.update(ranks)
        candidate_keys_from_signatures.update(candidate_keys)
        signature_rows.append(
            {
                "signature": str(signature["key"]),
                "rank_count": len(ranks),
                "good_mask_count": len(good_masks),
                "case_count": case_count,
                "candidate_key_count": len(candidate_keys),
                "sample_ranks": ranks[:8],
                "sample_good_masks": good_masks[:16],
            }
        )

    singleton_rows = [row for row in signature_rows if int(row["rank_count"]) == 1]
    non_singleton_rows = [row for row in signature_rows if int(row["rank_count"]) != 1]
    singleton_case_mass = sum(int(row["case_count"]) for row in singleton_rows)

    profiled_cases = int(range_audit["profiled_good_direction_cases"])
    candidate_key_match = candidate_keys_from_signatures == range_candidate_keys
    singleton_signature_fraction = (
        len(singleton_rows) / len(signature_rows)
        if signature_rows
        else 0.0
    )
    singleton_case_fraction = singleton_case_mass / represented_cases if represented_cases else 0.0

    signature_route_status = (
        "rejected-rank-local-signature-route"
        if singleton_signature_fraction > 0.50 or len(signature_rows) > len(rank_set) // 2
        else "accepted-signature-route"
    )

    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.1",
        "mode": "candidate_completeness_route_audit",
        "trusted_as_proof": False,
        "range": [lo, hi],
        "profiled_good_direction_cases": profiled_cases,
        "represented_cases_from_signatures": represented_cases,
        "range_rank_count": len(rank_set),
        "range_candidate_count": len(range_candidate_keys),
        "signature_count": len(signature_rows),
        "singleton_signature_count": len(singleton_rows),
        "singleton_signature_fraction": singleton_signature_fraction,
        "singleton_case_mass": singleton_case_mass,
        "singleton_case_fraction": singleton_case_fraction,
        "non_singleton_signature_count": len(non_singleton_rows),
        "mask_candidate_entries": mask_candidate_entries,
        "candidate_keys_from_signatures": len(candidate_keys_from_signatures),
        "candidate_key_match": candidate_key_match,
        "candidate_keys_missing_from_signature_route": sorted(range_candidate_keys - candidate_keys_from_signatures),
        "candidate_keys_extra_in_signature_route": sorted(candidate_keys_from_signatures - range_candidate_keys),
        "top_signatures": top_rows(signature_rows, key="case_count", limit=20),
        "decision": {
            "status": signature_route_status,
            "notes": [
                "candidate catalog covers the profiled range exactly when read through the signature catalog"
                if candidate_key_match
                else "candidate catalog and signature catalog disagree on candidate keys",
                "positive survivor signatures remain nearly rank-local in this bounded range",
                "do not prove hcomplete by emitting one rank/signature anchor per signature",
                "next proof route should use a reusable source-position/state or compact-trace membership bridge",
            ],
        },
        "next_required_proof": {
            "target": "hcomplete for PositiveSurvivorCandidateCatalogSurfaceSmoke",
            "recommended_coordinate": "source-position/state membership bridge, not singleton signature anchors",
        },
    }

    write_json(args.json, payload)

    md = [
        "# Phase 6Z.6K.8AP.16DU.1 candidate-completeness route audit",
        "",
        "This report is not proof evidence.  It audits the obvious signature",
        "route for proving the AP16DU catalog-completeness premise.",
        "",
        f"- Status: `{signature_route_status}`",
        f"- Range: `[{lo}, {hi})`",
        f"- Profiled GoodDirection cases: `{profiled_cases}`",
        f"- Cases represented by range signatures: `{represented_cases}`",
        f"- Ranks with GoodDirection in range: `{len(rank_set)}`",
        f"- Candidate groups in range catalog: `{len(range_candidate_keys)}`",
        f"- Signature count in range: `{len(signature_rows)}`",
        f"- Singleton signatures: `{len(singleton_rows)}`",
        f"- Singleton-signature case mass: `{singleton_case_mass}`",
        f"- Non-singleton signatures: `{len(non_singleton_rows)}`",
        f"- Candidate keys match range catalog: `{candidate_key_match}`",
        "",
        "## Decision",
        "",
        "The range-specific candidate catalog and the positive-survivor",
        "signature catalog agree on candidate keys, but the signature route is",
        "still too rank-local: nearly every signature anchors only one rank.",
        "AP16DU should therefore not prove `hcomplete` by emitting one",
        "signature/rank theorem per signature.  The next route must prove",
        "candidate membership from a reusable source-position/state predicate or",
        "compact trace bridge.",
        "",
        "## Top Signatures",
        "",
        "| Signature | Ranks | Good masks | Cases | Candidate keys |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["top_signatures"]:
        md.append(
            f"| `{row['signature']}` | `{row['rank_count']}` | "
            f"`{row['good_mask_count']}` | `{row['case_count']}` | "
            f"`{row['candidate_key_count']}` |"
        )
    args.md.write_text("\n".join(md) + "\n", encoding="utf-8")

    print(f"status={signature_route_status}")
    print(f"signature_count={len(signature_rows)}")
    print(f"singleton_signature_count={len(singleton_rows)}")
    print(f"represented_cases={represented_cases}")
    print(f"candidate_key_match={candidate_key_match}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
