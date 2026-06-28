#!/usr/bin/env python3
"""Profile AP.16I positive-survivor membership signatures.

AP.16H showed that a singleton direct-coverage Lean smoke is not scalable when
it proves all non-GoodDirection masks by local denominator witnesses.  This
diagnostic deliberately avoids that path: it only groups masks that already
satisfy GoodDirection, so the eventual Lean surface can use the generic
`feasible -> GoodDirection` theorem for the complement.

The output is not trusted as proof and emits no Lean.
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

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    write_json,
    write_text,
)
from profile_ap16d_direct_coverage_obligations import (  # noqa: E402
    CaseItem,
    items_from_families,
    source_language_key,
    source_pair_spec_key,
    source_language_records,
)
from generate_pair_sign_producer_coverage_smoke import (  # noqa: E402
    collect_representative_families,
)
from profile_pair_sign_descriptor_membership_state import (  # noqa: E402
    DEFAULT_RANGES,
    parse_ranges,
    validate_source_languages,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    key,
    row_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def row_key(item: CaseItem) -> str:
    return key(row_payload(item.family))


def candidate_key(item: CaseItem) -> str:
    return key({
        "source_language": source_language_key(source_language_records(item)),
        "row": row_key(item),
    })


def signature_key(mask_to_candidates: dict[int, list[str]]) -> str:
    return key({
        "goodMasks": sorted(mask_to_candidates),
        "candidatesByMask": [
            {
                "mask": mask,
                "candidates": sorted(set(candidates)),
            }
            for mask, candidates in sorted(mask_to_candidates.items())
        ],
    })


def summarize_candidate_groups(
    groups: dict[str, list[CaseItem]],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    rows = []
    for group_key, items in groups.items():
        first = items[0]
        rows.append({
            "key": group_key,
            "case_count": len(items),
            "rank_count": len({int(item.member.symbolic.case.rank) for item in items}),
            "mask_count": len({int(item.member.symbolic.case.mask) for item in items}),
            "descriptor_count": len({item.family.key for item in items}),
            "template_ids": sorted({item.family.template_id for item in items}),
            "source_positions": [
                record["position"]
                for record in source_language_records(first)
            ],
            "sample": [
                {
                    "rank": int(item.member.symbolic.case.rank),
                    "mask": int(item.member.symbolic.case.mask),
                    "template": item.family.template_id,
                    "sourceIndices": list(item.family.source_indices),
                }
                for item in items[:4]
            ],
        })
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))[:limit]


def summarize_signature_groups(
    groups: dict[str, list[int]],
    rank_masks: dict[int, set[int]],
    rank_candidates: dict[int, dict[int, list[str]]],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    rows = []
    for group_key, ranks in groups.items():
        sample_rank = ranks[0]
        rows.append({
            "key": group_key,
            "rank_count": len(ranks),
            "case_count": sum(len(rank_masks[rank]) for rank in ranks),
            "good_masks": sorted(rank_masks[sample_rank]),
            "candidate_count": len({
                candidate
                for rank in ranks
                for candidates in rank_candidates[rank].values()
                for candidate in candidates
            }),
            "sample_ranks": ranks[:6],
            "sample_mask_candidates": {
                str(mask): sorted(set(candidates))
                for mask, candidates in sorted(rank_candidates[sample_rank].items())
            },
        })
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))[:limit]


def summarize_signature_catalog(
    groups: dict[str, list[int]],
    rank_masks: dict[int, set[int]],
    rank_candidates: dict[int, dict[int, list[str]]],
) -> list[dict[str, Any]]:
    rows = []
    for group_key, ranks in groups.items():
        ordered_ranks = sorted(ranks)
        sample_rank = ordered_ranks[0]
        rows.append({
            "key": group_key,
            "rank_count": len(ordered_ranks),
            "case_count": sum(len(rank_masks[rank]) for rank in ordered_ranks),
            "ranks": ordered_ranks,
            "good_masks": sorted(rank_masks[sample_rank]),
            "mask_candidates": {
                str(mask): sorted(set(candidates))
                for mask, candidates in sorted(rank_candidates[sample_rank].items())
            },
        })
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    sample_limit: int,
    candidate_gate: int,
    signature_gate: int,
) -> dict[str, Any]:
    families, counts, windows = collect_representative_families(
        ranges=ranges,
        jobs=jobs,
    )
    items = items_from_families(ranges, families)
    failures, failure_samples = validate_source_languages(items, sample_limit=sample_limit)

    seen_rank_masks: set[tuple[int, int]] = set()
    duplicates: list[dict[str, int]] = []
    rank_masks: dict[int, set[int]] = defaultdict(set)
    rank_candidates: dict[int, dict[int, list[str]]] = defaultdict(lambda: defaultdict(list))
    candidate_groups: dict[str, list[CaseItem]] = defaultdict(list)
    source_language_groups: dict[str, list[CaseItem]] = defaultdict(list)
    source_pair_spec_groups: dict[str, list[CaseItem]] = defaultdict(list)
    row_groups: dict[str, list[CaseItem]] = defaultdict(list)
    masks_per_rank: Counter[str] = Counter()
    candidates_per_mask: Counter[str] = Counter()

    for item in items:
        rank = int(item.member.symbolic.case.rank)
        mask = int(item.member.symbolic.case.mask)
        rank_mask = (rank, mask)
        if rank_mask in seen_rank_masks:
            duplicates.append({"rank": rank, "mask": mask})
        seen_rank_masks.add(rank_mask)

        records = source_language_records(item)
        sl_key = source_language_key(records)
        sp_key = source_pair_spec_key(records)
        r_key = row_key(item)
        c_key = key({"source_language": sl_key, "row": r_key})

        rank_masks[rank].add(mask)
        rank_candidates[rank][mask].append(c_key)
        candidate_groups[c_key].append(item)
        source_language_groups[sl_key].append(item)
        source_pair_spec_groups[sp_key].append(item)
        row_groups[r_key].append(item)

    for rank, masks in rank_masks.items():
        masks_per_rank[str(len(masks))] += 1
        for mask in masks:
            candidates_per_mask[str(len(set(rank_candidates[rank][mask])))] += 1

    signature_groups: dict[str, list[int]] = defaultdict(list)
    for rank, mask_to_candidates in rank_candidates.items():
        signature_groups[signature_key(mask_to_candidates)].append(rank)

    ambiguous_masks = [
        {
            "rank": rank,
            "mask": mask,
            "candidate_count": len(set(candidates)),
            "candidates": sorted(set(candidates))[:sample_limit],
        }
        for rank, mask_map in rank_candidates.items()
        for mask, candidates in mask_map.items()
        if len(set(candidates)) != 1
    ]

    status = "accepted-positive-survivor-membership-profile"
    notes = [
        "the profile groups only GoodDirection survivors",
        "denominator-nonpositive masks are intentionally not enumerated",
        "future Lean evidence should consume a GoodDirection premise and prove positive membership",
    ]
    if failures:
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed on sampled members"]
    elif duplicates:
        status = "rejected-duplicate-rank-mask-membership"
        notes = ["a rank/mask GoodDirection survivor appeared more than once"]
    elif ambiguous_masks:
        status = "needs-disambiguation-theorem"
        notes.append("some GoodDirection rank/mask survivors map to multiple candidates")
    elif len(candidate_groups) > candidate_gate:
        status = "needs-candidate-compression"
        notes.append(f"positive candidate groups exceed gate {candidate_gate}")
    elif len(signature_groups) > signature_gate:
        status = "needs-survivor-signature-compression"
        notes.append(f"positive survivor signatures exceed gate {signature_gate}")

    source_line_estimate = (
        240
        + 18 * len(source_language_groups)
        + 14 * len(row_groups)
        + 26 * len(candidate_groups)
        + 8 * len(signature_groups)
    )
    chunk_estimate = (len(candidate_groups) + 63) // 64

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16I",
        "trusted_as_proof": False,
        "ranges": [list(item) for item in ranges],
        "jobs": jobs,
        "counts": counts,
        "windows": windows,
        "total_good_direction_cases": len(items),
        "ranks_with_good_direction": len(rank_masks),
        "descriptor_family_count": len(families),
        "positive_candidate_group_count": len(candidate_groups),
        "positive_survivor_signature_count": len(signature_groups),
        "source_language_group_count": len(source_language_groups),
        "source_pair_spec_group_count": len(source_pair_spec_groups),
        "row_group_count": len(row_groups),
        "reusable_obligation_count": len(source_language_groups) + len(row_groups),
        "bad_direction_evidence_emitted": 0,
        "duplicate_rank_mask_memberships": len(duplicates),
        "duplicate_samples": duplicates[:sample_limit],
        "ambiguous_good_survivor_memberships": len(ambiguous_masks),
        "ambiguous_samples": ambiguous_masks[:sample_limit],
        "masks_per_rank_histogram": dict(masks_per_rank),
        "candidates_per_good_mask_histogram": dict(candidates_per_mask),
        "source_language_validation_failures": dict(failures),
        "source_language_failure_samples": failure_samples,
        "top_positive_candidate_groups": summarize_candidate_groups(
            candidate_groups,
            limit=sample_limit,
        ),
        "positive_candidate_catalog": summarize_candidate_groups(
            candidate_groups,
            limit=len(candidate_groups),
        ),
        "top_positive_survivor_signatures": summarize_signature_groups(
            signature_groups,
            rank_masks,
            rank_candidates,
            limit=sample_limit,
        ),
        "positive_survivor_signature_catalog": summarize_signature_catalog(
            signature_groups,
            rank_masks,
            rank_candidates,
        ),
        "next_lean_surface": {
            "target": "SourcePositionRowProducerGoodCoverageOnRange lo hi",
            "premises": [
                "rank < numPairWords",
                "lo <= rank",
                "rank < hi",
                "totalLinearOfPairWord (unrankPairWord rank) = matId",
                "GoodDirectionAtRank rank mask",
            ],
            "membership_goal": (
                "produce one SourcePairPositionSpec, one "
                "SourceIndexStateRowProducer, and one SourceIndexStateKey"
            ),
            "erasure_path": [
                "SourcePositionRowProducerGoodCoverageOnRange.of_coverage",
                "SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage",
                "semanticGeneratedCoverageOfAllGoodIntervals",
            ],
            "forbidden_shape": (
                "do not prove forall mask by fin_cases over all 64 masks; "
                "do not emit denominator-nonpositive witnesses for masks that "
                "fail GoodDirection"
            ),
        },
        "bounded_generation_estimate": {
            "source_language_modules": len(source_language_groups),
            "row_modules": len(row_groups),
            "candidate_chunks_at_64_candidates": chunk_estimate,
            "rough_lean_lines": source_line_estimate,
            "proof_parallelism": "Python generation may use --jobs 4; Lean smoke builds should stay serial/focused",
        },
        "decision": {
            "status": status,
            "candidate_gate": candidate_gate,
            "signature_gate": signature_gate,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16I Positive-Survivor Membership Profile",
        "",
        "This is diagnostic only. It emits no Lean and is not trusted as proof.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- GoodDirection cases: `{payload['total_good_direction_cases']}`",
        f"- Ranks with GoodDirection survivors: `{payload['ranks_with_good_direction']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Positive candidate groups: `{payload['positive_candidate_group_count']}`",
        f"- Positive survivor signatures: `{payload['positive_survivor_signature_count']}`",
        f"- Source-language groups: `{payload['source_language_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Reusable source+row obligations: `{payload['reusable_obligation_count']}`",
        f"- Estimated candidate chunks at 64 candidates/chunk: "
        f"`{payload['bounded_generation_estimate']['candidate_chunks_at_64_candidates']}`",
        f"- Rough Lean line estimate for this bounded surface: "
        f"`{payload['bounded_generation_estimate']['rough_lean_lines']}`",
        f"- Bad-direction evidence emitted: `{payload['bad_direction_evidence_emitted']}`",
        f"- Duplicate rank/mask memberships: `{payload['duplicate_rank_mask_memberships']}`",
        f"- Ambiguous GoodDirection memberships: `{payload['ambiguous_good_survivor_memberships']}`",
        "",
        "## Mask Histograms",
        "",
        "Ranks by number of GoodDirection masks:",
        "",
    ]
    for bucket, count in sorted(payload["masks_per_rank_histogram"].items(), key=lambda kv: int(kv[0])):
        lines.append(f"- `{bucket}`: `{count}`")
    lines.extend([
        "",
        "GoodDirection masks by number of positive candidates:",
        "",
    ])
    for bucket, count in sorted(payload["candidates_per_good_mask_histogram"].items(), key=lambda kv: int(kv[0])):
        lines.append(f"- `{bucket}`: `{count}`")
    lines.extend([
        "",
        "## Windows",
        "",
        "| Range | Families | GoodDirection cases | Identity words | Translation masks |",
        "| --- | ---: | ---: | ---: | ---: |",
    ])
    for window in payload["windows"]:
        counts = window["counts"]
        lines.append(
            f"| `{window['range']}` | {window['family_count']} | "
            f"{window['represented_case_count']} | {counts.get('identity_words', 0)} | "
            f"{counts.get('translation_sign_assignments', 0)} |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Next Lean Surface",
        "",
        f"- Target: `{payload['next_lean_surface']['target']}`",
        "- Premises:",
        "",
    ])
    for premise in payload["next_lean_surface"]["premises"]:
        lines.append(f"  - `{premise}`")
    lines.extend([
        "",
        f"- Membership goal: {payload['next_lean_surface']['membership_goal']}",
        f"- Forbidden shape: {payload['next_lean_surface']['forbidden_shape']}",
        "- Erasure path:",
        "",
    ])
    for step in payload["next_lean_surface"]["erasure_path"]:
        lines.append(f"  - `{step}`")
    lines.extend([
        "",
        "## Interpretation",
        "",
        "This profile is the replacement for the AP.16H singleton smoke.  It asks",
        "only whether observed `GoodDirection` survivors have a positive",
        "source-position plus row-producer candidate.  It does not try to prove",
        "anything about masks that fail `GoodDirection`; those must remain the",
        "responsibility of the generic feasibility-to-GoodDirection theorem.",
        "",
        "A future Lean emitter should therefore target a theorem with an explicit",
        "`GoodDirectionAtRank r mask` premise and a survivor-signature or",
        "source-language membership lemma, rather than a finite-mask theorem that",
        "branches over all 64 masks at a rank.",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--candidate-gate", type=int, default=2000)
    parser.add_argument("--signature-gate", type=int, default=2000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    ranges = parse_ranges(args.ranges)
    payload = profile(
        ranges=ranges,
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        candidate_gate=args.candidate_gate,
        signature_gate=args.signature_gate,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "goodDirectionCases": payload["total_good_direction_cases"],
        "ranksWithGoodDirection": payload["ranks_with_good_direction"],
        "positiveCandidateGroups": payload["positive_candidate_group_count"],
        "positiveSurvivorSignatures": payload["positive_survivor_signature_count"],
        "badDirectionEvidenceEmitted": payload["bad_direction_evidence_emitted"],
        "ambiguousGoodSurvivorMemberships": payload["ambiguous_good_survivor_memberships"],
        "duplicates": payload["duplicate_rank_mask_memberships"],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
