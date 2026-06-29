#!/usr/bin/env python3
"""Plan the AP16DT positive-survivor classifier slice.

This is a planning/projection tool only.  It is not proof evidence.

AP16DS identified the missing production bridge:

    GoodDirection survivor -> source-position/row-producer candidate

AP16DT should emit a bounded Lean classifier slice for that bridge.  This
planner decides which AP16I catalog coordinate is appropriate for the first
production-style emitter.  In particular, it checks whether positive-survivor
signatures are too rank-local and whether shared positive candidate groups are
small enough to chunk.
"""

from __future__ import annotations

import argparse
import collections
import json
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_AP16DS = Path("scripts/generated/phase6z6k8ap16ds_production_membership_slice_audit.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16dt_positive_survivor_classifier_slice_plan.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def top_rows(rows: list[dict[str, Any]], n: int) -> list[dict[str, Any]]:
    return sorted(rows, key=lambda row: (-int(row.get("case_count", 0)), row.get("key", "")))[:n]


def cumulative(rows: list[dict[str, Any]], limits: list[int]) -> dict[str, dict[str, int]]:
    ordered = top_rows(rows, len(rows))
    out: dict[str, dict[str, int]] = {}
    for limit in limits:
        selected = ordered[:limit]
        out[str(limit)] = {
            "groups": len(selected),
            "case_count": sum(int(row.get("case_count", 0)) for row in selected),
            "rank_count_sum": sum(int(row.get("rank_count", 0)) for row in selected),
            "mask_count_sum": sum(int(row.get("mask_count", len(row.get("good_masks", [])))) for row in selected),
        }
    return out


def histogram(values: list[int]) -> dict[str, int]:
    return {str(k): v for k, v in sorted(collections.Counter(values).items())}


def plan(profile: dict[str, Any], ap16ds: dict[str, Any], *, chunk_size: int) -> dict[str, Any]:
    candidate_catalog = list(profile.get("positive_candidate_catalog", []))
    signature_catalog = list(profile.get("positive_survivor_signature_catalog", []))
    counts = profile.get("counts", {})

    signature_rank_counts = [int(sig["rank_count"]) for sig in signature_catalog]
    signature_case_counts = [int(sig["case_count"]) for sig in signature_catalog]
    singleton_signatures = sum(1 for count in signature_rank_counts if count == 1)
    singleton_cases = sum(
        int(sig["case_count"]) for sig in signature_catalog if int(sig["rank_count"]) == 1
    )
    multi_rank_signatures = len(signature_catalog) - singleton_signatures
    multi_rank_cases = sum(signature_case_counts) - singleton_cases

    candidate_count = len(candidate_catalog)
    chunk_count = (candidate_count + chunk_size - 1) // chunk_size if chunk_size else 0
    top_candidates = top_rows(candidate_catalog, 12)
    candidate_chunks = []
    ordered_candidates = top_rows(candidate_catalog, len(candidate_catalog))
    for index in range(chunk_count):
        selected = ordered_candidates[index * chunk_size : (index + 1) * chunk_size]
        candidate_chunks.append(
            {
                "chunk": index,
                "candidate_count": len(selected),
                "case_count": sum(int(row.get("case_count", 0)) for row in selected),
                "top_key": selected[0]["key"] if selected else None,
                "top_case_count": int(selected[0].get("case_count", 0)) if selected else 0,
            }
        )

    signature_singleton_ratio = (
        singleton_signatures / len(signature_catalog) if signature_catalog else 1.0
    )
    signature_route_status = (
        "rejected-rank-local-signature-anchor"
        if signature_singleton_ratio >= 0.75
        else "candidate-for-bounded-emission"
    )
    candidate_route_status = (
        "accepted-next-emitter-coordinate"
        if (
            profile.get("duplicate_rank_mask_memberships") == 0
            and profile.get("ambiguous_good_survivor_memberships") == 0
            and profile.get("bad_direction_evidence_emitted") == 0
            and candidate_count <= 512
            and chunk_count <= 16
        )
        else "needs-more-profiling"
    )

    decision_status = (
        "accepted-candidate-catalog-classifier-plan"
        if (
            ap16ds.get("decision", {}).get("status") == "blocked-missing-production-classifier"
            and signature_route_status.startswith("rejected")
            and candidate_route_status == "accepted-next-emitter-coordinate"
        )
        else "needs-review"
    )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DT",
        "mode": "positive_survivor_classifier_slice_plan",
        "trusted_as_proof": False,
        "inputs": {
            "profile": str(DEFAULT_PROFILE),
            "ap16ds_audit": str(DEFAULT_AP16DS),
        },
        "profile_summary": {
            "ranges": profile.get("ranges", []),
            "good_direction_cases": counts.get("good_direction_survivors"),
            "ranks_with_good_direction": profile.get("ranks_with_good_direction"),
            "positive_candidate_groups": candidate_count,
            "positive_survivor_signatures": len(signature_catalog),
            "duplicate_rank_mask_memberships": profile.get("duplicate_rank_mask_memberships"),
            "ambiguous_good_survivor_memberships": profile.get("ambiguous_good_survivor_memberships"),
            "bad_direction_evidence_emitted": profile.get("bad_direction_evidence_emitted"),
        },
        "signature_route": {
            "status": signature_route_status,
            "rank_count_histogram": histogram(signature_rank_counts),
            "singleton_signatures": singleton_signatures,
            "singleton_cases": singleton_cases,
            "multi_rank_signatures": multi_rank_signatures,
            "multi_rank_cases": multi_rank_cases,
            "max_rank_count": max(signature_rank_counts) if signature_rank_counts else 0,
            "reason": (
                "Most positive survivor signatures are single-rank in the AP16I sample; "
                "using them directly as production leaves would recreate rank-local coverage."
            ),
        },
        "candidate_catalog_route": {
            "status": candidate_route_status,
            "chunk_size": chunk_size,
            "chunk_count": chunk_count,
            "case_concentration": cumulative(candidate_catalog, [8, 16, 32, 64, 128, 195]),
            "chunks": candidate_chunks,
            "top_candidates": top_candidates,
            "reason": (
                "Positive candidate groups are shared across many ranks/masks and already "
                "carry the source-position plus row-producer target data."
            ),
        },
        "next_emitter": {
            "name": "generate_ap16dt_positive_survivor_candidate_catalog_slice.py",
            "preferred_theorem": "PositiveSurvivorBoolClassifierOnRange lo hi",
            "candidate_type": "private finite candidate catalog chunk, not raw ranks",
            "complete_field": (
                "forall rank mask, hM -> goodDirectionAtRankBool = true -> "
                "exists candidate, CandidateMember candidate rank mask"
            ),
            "source_row_fields": [
                "CandidateMember candidate rank mask -> spec.Predicate rank mask",
                "CandidateMember candidate rank mask -> rowProducer.Applies key rank mask",
            ],
            "erasure_path": [
                "PositiveSurvivorBoolClassifierOnRange.to_coverage",
                "SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage",
            ],
            "first_slice": {
                "range": profile.get("ranges", [[0, 0]])[0],
                "candidate_chunk": 0,
                "candidate_count": candidate_chunks[0]["candidate_count"] if candidate_chunks else 0,
                "observed_cases": candidate_chunks[0]["case_count"] if candidate_chunks else 0,
            },
            "must_not_use": [
                "signature-anchor singleton leaves as the production coordinate",
                "rank-local candidate-facts shards",
                "finite replay over all masks",
                "generated bad-direction witnesses",
            ],
        },
        "decision": {
            "status": decision_status,
            "notes": [
                "AP16DS correctly blocked on the missing production classifier.",
                "Direct signature anchoring is rejected by the singleton-heavy histogram.",
                "The next bounded emitter should target shared positive candidate groups.",
            ],
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def markdown(payload: dict[str, Any]) -> str:
    summary = payload["profile_summary"]
    sig = payload["signature_route"]
    cand = payload["candidate_catalog_route"]
    emitter = payload["next_emitter"]
    lines = [
        "# Phase 6Z.6K.8AP.16DT positive-survivor classifier slice plan",
        "",
        "This report is not proof evidence.  It chooses the next theorem surface",
        "for the production-style GoodDirection membership emitter.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- GoodDirection cases profiled: `{summary['good_direction_cases']}`",
        f"- Positive candidate groups: `{summary['positive_candidate_groups']}`",
        f"- Positive survivor signatures: `{summary['positive_survivor_signatures']}`",
        f"- Duplicate rank/mask memberships: `{summary['duplicate_rank_mask_memberships']}`",
        f"- Ambiguous GoodDirection memberships: `{summary['ambiguous_good_survivor_memberships']}`",
        f"- Bad-direction evidence emitted: `{summary['bad_direction_evidence_emitted']}`",
        "",
        "## Signature Route",
        "",
        f"- Status: `{sig['status']}`",
        f"- Singleton signatures: `{sig['singleton_signatures']}`",
        f"- Singleton cases: `{sig['singleton_cases']}`",
        f"- Multi-rank signatures: `{sig['multi_rank_signatures']}`",
        f"- Multi-rank cases: `{sig['multi_rank_cases']}`",
        f"- Max rank count per signature: `{sig['max_rank_count']}`",
        f"- Rank-count histogram: `{sig['rank_count_histogram']}`",
        "",
        sig["reason"],
        "",
        "## Candidate Catalog Route",
        "",
        f"- Status: `{cand['status']}`",
        f"- Chunk size: `{cand['chunk_size']}`",
        f"- Chunk count: `{cand['chunk_count']}`",
        "",
        "Case concentration:",
        "",
        "| Top groups | Cases | Rank-count sum | Mask-count sum |",
        "| ---: | ---: | ---: | ---: |",
    ]
    for limit, row in cand["case_concentration"].items():
        lines.append(
            f"| {limit} | {row['case_count']} | {row['rank_count_sum']} | {row['mask_count_sum']} |"
        )
    lines.extend([
        "",
        "First chunks:",
        "",
        "| Chunk | Candidates | Observed cases | Top candidate cases |",
        "| ---: | ---: | ---: | ---: |",
    ])
    for row in cand["chunks"][:8]:
        lines.append(
            f"| {row['chunk']} | {row['candidate_count']} | {row['case_count']} | {row['top_case_count']} |"
        )
    lines.extend([
        "",
        cand["reason"],
        "",
        "## Next Emitter",
        "",
        f"- Script: `{emitter['name']}`",
        f"- Preferred theorem: `{emitter['preferred_theorem']}`",
        f"- Candidate type: {emitter['candidate_type']}",
        f"- Complete field: `{emitter['complete_field']}`",
        "- Source/row fields:",
    ])
    for item in emitter["source_row_fields"]:
        lines.append(f"  - `{item}`")
    lines.extend([
        "- Erasure path:",
    ])
    for item in emitter["erasure_path"]:
        lines.append(f"  - `{item}`")
    lines.extend([
        f"- First slice range: `{emitter['first_slice']['range']}`",
        f"- First slice candidate chunk: `{emitter['first_slice']['candidate_chunk']}`",
        f"- First slice candidates: `{emitter['first_slice']['candidate_count']}`",
        f"- First slice observed cases: `{emitter['first_slice']['observed_cases']}`",
        "- Must not use:",
    ])
    for item in emitter["must_not_use"]:
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
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--ap16ds", type=Path, default=DEFAULT_AP16DS)
    parser.add_argument("--chunk-size", type=int, default=64)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = read_json(args.profile)
    ap16ds = read_json(args.ap16ds)
    payload = plan(profile, ap16ds, chunk_size=args.chunk_size)
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(f"status={payload['decision']['status']}")
    print(f"signature_route={payload['signature_route']['status']}")
    print(f"candidate_route={payload['candidate_catalog_route']['status']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
