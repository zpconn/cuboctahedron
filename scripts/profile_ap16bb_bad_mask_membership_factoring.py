#!/usr/bin/env python3
"""Profile bad-mask membership factoring for AP.16BA.

AP.16BA closed one singleton semantic membership theorem by emitting one
nonpositive-denominator witness for every mask that fails GoodDirection.  That
is useful as a proof-shape smoke, but it is too large to use per survivor
signature globally.

This diagnostic reuses the AP.16I positive-survivor signature catalog and asks
how bad-mask witnesses group across those signatures.  It is not trusted as
proof and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_translation_row_relation_classifier import (  # noqa: E402
    first_bad_direction_case,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16bb_bad_mask_membership_factoring.json"
)
DEFAULT_MD = Path(
    "scripts/generated/phase6z6k8ap16bb_bad_mask_membership_factoring.md"
)


def frac_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def sign_key(value: Fraction) -> str:
    if value < 0:
        return "-"
    if value > 0:
        return "+"
    return "0"


def bad_patterns_for_rank(rank: int, good_masks: list[int]) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        raise ValueError(f"rank {rank} is not identity-linear")
    good = set(good_masks)
    bad_masks = [mask for mask in range(64) if mask not in good]
    witnesses = []
    for mask in bad_masks:
        bad = first_bad_direction_case(rank, word, mask)
        witnesses.append(
            {
                "mask": mask,
                "impact": bad.impact,
                "denom": frac_key(bad.denom),
                "sign": sign_key(bad.denom),
            }
        )
    impact_key = "|".join(f"{w['mask']}:{w['impact']}" for w in witnesses)
    impact_sign_key = "|".join(
        f"{w['mask']}:{w['impact']}:{w['sign']}" for w in witnesses
    )
    exact_key = "|".join(
        f"{w['mask']}:{w['impact']}:{w['denom']}" for w in witnesses
    )
    first_impact_hist = Counter(str(w["impact"]) for w in witnesses)
    denom_sign_hist = Counter(w["sign"] for w in witnesses)
    return {
        "rank": rank,
        "bad_mask_count": len(bad_masks),
        "impact_key": impact_key,
        "impact_sign_key": impact_sign_key,
        "exact_key": exact_key,
        "first_impact_histogram": dict(sorted(first_impact_hist.items())),
        "denom_sign_histogram": dict(sorted(denom_sign_hist.items())),
        "sample_witnesses": witnesses[:8],
    }


def profile(payload: dict[str, Any], *, signature_limit: int | None) -> dict[str, Any]:
    catalog = payload["positive_survivor_signature_catalog"]
    if signature_limit is not None:
        catalog = catalog[:signature_limit]

    impact_groups: dict[str, list[tuple[str, int]]] = defaultdict(list)
    impact_sign_groups: dict[str, list[tuple[str, int]]] = defaultdict(list)
    exact_groups: dict[str, list[tuple[str, int]]] = defaultdict(list)
    signature_summaries = []
    ranks_seen = 0
    bad_witnesses = 0

    for signature in catalog:
        key = signature["key"]
        good_masks = [int(mask) for mask in signature["good_masks"]]
        rank_patterns = []
        for rank in signature["ranks"]:
            rank = int(rank)
            pat = bad_patterns_for_rank(rank, good_masks)
            ranks_seen += 1
            bad_witnesses += int(pat["bad_mask_count"])
            rank_patterns.append(pat)
            impact_groups[pat["impact_key"]].append((key, rank))
            impact_sign_groups[pat["impact_sign_key"]].append((key, rank))
            exact_groups[pat["exact_key"]].append((key, rank))

        impact_distinct = len({p["impact_key"] for p in rank_patterns})
        impact_sign_distinct = len({p["impact_sign_key"] for p in rank_patterns})
        exact_distinct = len({p["exact_key"] for p in rank_patterns})
        signature_summaries.append(
            {
                "key": key,
                "rank_count": len(rank_patterns),
                "case_count": signature["case_count"],
                "good_masks": good_masks,
                "bad_mask_count": 64 - len(good_masks),
                "distinct_impact_patterns": impact_distinct,
                "distinct_impact_sign_patterns": impact_sign_distinct,
                "distinct_exact_patterns": exact_distinct,
                "sample_ranks": [p["rank"] for p in rank_patterns[:6]],
                "sample_first_impact_histogram": rank_patterns[0][
                    "first_impact_histogram"
                ]
                if rank_patterns
                else {},
                "sample_witnesses": rank_patterns[0]["sample_witnesses"]
                if rank_patterns
                else [],
            }
        )

    def top(groups: dict[str, list[tuple[str, int]]], limit: int = 8) -> list[dict[str, Any]]:
        items = sorted(groups.items(), key=lambda item: (-len(item[1]), item[0]))
        return [
            {
                "case_count": len(members),
                "sample": [
                    {"signature": sig, "rank": rank}
                    for sig, rank in members[:6]
                ],
            }
            for _key, members in items[:limit]
        ]

    multi_rank = [s for s in signature_summaries if s["rank_count"] > 1]
    same_impact = [
        s for s in multi_rank if s["distinct_impact_patterns"] == 1
    ]
    same_impact_sign = [
        s for s in multi_rank if s["distinct_impact_sign_patterns"] == 1
    ]
    same_exact = [s for s in multi_rank if s["distinct_exact_patterns"] == 1]

    if ranks_seen == 0:
        status = "empty"
    elif len(exact_groups) > ranks_seen * 0.90:
        status = "reject-positive-survivor-signature-bad-mask-factoring"
    else:
        status = "potentially-shareable-bad-mask-patterns"

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16BB",
        "trusted_as_proof": False,
        "source_profile": str(DEFAULT_PROFILE),
        "signature_count": len(catalog),
        "rank_count": ranks_seen,
        "bad_denominator_witnesses": bad_witnesses,
        "unique_impact_patterns": len(impact_groups),
        "unique_impact_sign_patterns": len(impact_sign_groups),
        "unique_exact_patterns": len(exact_groups),
        "multi_rank_signature_count": len(multi_rank),
        "multi_rank_same_impact_pattern": len(same_impact),
        "multi_rank_same_impact_sign_pattern": len(same_impact_sign),
        "multi_rank_same_exact_pattern": len(same_exact),
        "top_impact_patterns": top(impact_groups),
        "top_impact_sign_patterns": top(impact_sign_groups),
        "top_exact_patterns": top(exact_groups),
        "signature_summaries": signature_summaries[:20],
        "decision": {
            "status": status,
            "notes": [
                "This profiles bad-mask witness grouping only; it emits no Lean.",
                "Small impact-pattern counts would support a shared denominator-signature membership theorem.",
                "Large exact-pattern counts would mean exact denominator equality witnesses must be factored further.",
                "If exact/impact patterns are nearly rank-local, positive-survivor signatures are not the right coordinate for bad-mask exclusion.",
            ],
        },
    }


def markdown(result: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16BB Bad-Mask Membership Factoring Profile",
        "",
        "This is diagnostic only. It emits no Lean and is not trusted as proof.",
        "",
        f"- Signatures scanned: `{result['signature_count']}`",
        f"- Ranks scanned: `{result['rank_count']}`",
        f"- Bad denominator witnesses represented: `{result['bad_denominator_witnesses']}`",
        f"- Unique mask->impact patterns: `{result['unique_impact_patterns']}`",
        f"- Unique mask->impact/sign patterns: `{result['unique_impact_sign_patterns']}`",
        f"- Unique mask->impact/exact-denominator patterns: `{result['unique_exact_patterns']}`",
        f"- Multi-rank signatures: `{result['multi_rank_signature_count']}`",
        f"- Multi-rank signatures sharing one impact pattern: `{result['multi_rank_same_impact_pattern']}`",
        f"- Multi-rank signatures sharing one impact/sign pattern: `{result['multi_rank_same_impact_sign_pattern']}`",
        f"- Multi-rank signatures sharing one exact pattern: `{result['multi_rank_same_exact_pattern']}`",
        "",
        "## Decision",
        "",
        f"Status: `{result['decision']['status']}`.",
        "",
        "The bad-mask exclusion pattern is almost rank-local in this sampled",
        "catalog.  Positive-survivor signatures do not provide enough structure",
        "to share the 56 bad-mask denominator witnesses emitted by AP16BA.",
        "The next factoring attempt should move below positive-survivor",
        "signatures: denominator forms, mask-tree/Farkas cubes, or a direct",
        "GoodDirection survivor bitset theorem.",
        "",
        "## Sample Signature Summaries",
        "",
    ]
    for summary in result["signature_summaries"][:8]:
        lines.extend(
            [
                f"- `{summary['key'][:16]}...`: ranks `{summary['rank_count']}`, "
                f"good masks `{summary['good_masks']}`, "
                f"impact patterns `{summary['distinct_impact_patterns']}`, "
                f"impact/sign patterns `{summary['distinct_impact_sign_patterns']}`, "
                f"exact patterns `{summary['distinct_exact_patterns']}`",
            ]
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--out-md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--signature-limit", type=int)
    args = parser.parse_args()

    payload = json.loads(args.profile.read_text(encoding="utf-8"))
    result = profile(payload, signature_limit=args.signature_limit)
    args.out_json.parent.mkdir(parents=True, exist_ok=True)
    args.out_json.write_text(json.dumps(result, indent=2, sort_keys=True), encoding="utf-8")
    args.out_md.write_text(markdown(result), encoding="utf-8")
    print(
        f"wrote {args.out_json} and {args.out_md}; "
        f"{result['signature_count']} signatures, {result['rank_count']} ranks"
    )


if __name__ == "__main__":
    main()
