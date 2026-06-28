#!/usr/bin/env python3
"""Profile denominator-signature factoring for AP.16.

AP.16BB showed that first-bad-mask denominator witnesses are almost rank-local
when grouped by positive-survivor signatures.  This profile moves one level
lower and groups ranks by the full denominator sign behavior:

* for each internal impact, the 64-bit set of masks with positive denominator;
* the resulting GoodDirection survivor bitset; and
* the exact denominator table, as a stronger but usually less shareable key.

The output is diagnostic only and emits no Lean.
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


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16bc_denominator_signature_factoring.json"
)
DEFAULT_MD = Path(
    "scripts/generated/phase6z6k8ap16bc_denominator_signature_factoring.md"
)


def frac_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def bitset_hex(masks: list[int]) -> str:
    bits = 0
    for mask in masks:
        bits |= 1 << mask
    return f"0x{bits:016x}"


def ranks_from_positive_signature_catalog(payload: dict[str, Any]) -> dict[int, list[int]]:
    rank_to_good_masks: dict[int, list[int]] = {}
    for signature in payload["positive_survivor_signature_catalog"]:
        good_masks = [int(mask) for mask in signature["good_masks"]]
        for rank in signature["ranks"]:
            rank_to_good_masks[int(rank)] = good_masks
    return dict(sorted(rank_to_good_masks.items()))


def denominator_signature_for_rank(rank: int, expected_good_masks: list[int]) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        raise ValueError(f"rank {rank} is not identity-linear")

    impact_positive_masks: dict[int, list[int]] = {impact: [] for impact in range(1, 14)}
    impact_zero_masks: dict[int, list[int]] = {impact: [] for impact in range(1, 14)}
    exact_rows: list[str] = []
    survivor_masks: list[int] = []
    first_bad_histogram: Counter[str] = Counter()

    for mask in range(64):
        b, seq = exact.translation_vector(word, mask)
        denoms = [exact.impact_denom(seq, b, impact) for impact in range(1, 14)]
        exact_rows.append(",".join(frac_key(value) for value in denoms))
        all_positive = True
        first_bad: int | None = None
        for offset, value in enumerate(denoms, start=1):
            if value > 0:
                impact_positive_masks[offset].append(mask)
            elif value == 0:
                impact_zero_masks[offset].append(mask)
            if value <= 0:
                all_positive = False
                if first_bad is None:
                    first_bad = offset
        if all_positive:
            survivor_masks.append(mask)
        else:
            first_bad_histogram[str(first_bad)] += 1

    if sorted(survivor_masks) != sorted(expected_good_masks):
        raise AssertionError(
            f"rank {rank}: survivor masks {survivor_masks} != profile good masks "
            f"{expected_good_masks}"
        )

    sign_key = "|".join(
        bitset_hex(impact_positive_masks[impact]) for impact in range(1, 14)
    )
    zero_key = "|".join(
        bitset_hex(impact_zero_masks[impact]) for impact in range(1, 14)
    )
    exact_key = "|".join(exact_rows)
    survivor_key = bitset_hex(survivor_masks)
    return {
        "rank": rank,
        "good_mask_count": len(survivor_masks),
        "survivor_key": survivor_key,
        "denominator_sign_key": sign_key,
        "denominator_zero_key": zero_key,
        "denominator_exact_key": exact_key,
        "first_bad_histogram": dict(sorted(first_bad_histogram.items())),
        "sample_impact_positive_bitsets": {
            str(impact): bitset_hex(impact_positive_masks[impact])
            for impact in range(1, 6)
        },
    }


def profile(payload: dict[str, Any], *, rank_limit: int | None) -> dict[str, Any]:
    rank_to_good_masks = ranks_from_positive_signature_catalog(payload)
    ranks = list(rank_to_good_masks)
    if rank_limit is not None:
        ranks = ranks[:rank_limit]

    survivor_groups: dict[str, list[int]] = defaultdict(list)
    sign_groups: dict[str, list[int]] = defaultdict(list)
    sign_zero_groups: dict[str, list[int]] = defaultdict(list)
    exact_groups: dict[str, list[int]] = defaultdict(list)
    summaries = []
    first_bad_total: Counter[str] = Counter()

    for rank in ranks:
        sig = denominator_signature_for_rank(rank, rank_to_good_masks[rank])
        survivor_groups[sig["survivor_key"]].append(rank)
        sign_groups[sig["denominator_sign_key"]].append(rank)
        sign_zero_groups[
            sig["denominator_sign_key"] + "||zero=" + sig["denominator_zero_key"]
        ].append(rank)
        exact_groups[sig["denominator_exact_key"]].append(rank)
        first_bad_total.update(sig["first_bad_histogram"])
        if len(summaries) < 20:
            summaries.append(
                {
                    "rank": rank,
                    "good_mask_count": sig["good_mask_count"],
                    "survivor_key": sig["survivor_key"],
                    "first_bad_histogram": sig["first_bad_histogram"],
                    "sample_impact_positive_bitsets": sig[
                        "sample_impact_positive_bitsets"
                    ],
                }
            )

    def top(groups: dict[str, list[int]], limit: int = 8) -> list[dict[str, Any]]:
        items = sorted(groups.items(), key=lambda item: (-len(item[1]), item[0]))
        return [
            {
                "rank_count": len(members),
                "sample_ranks": members[:12],
            }
            for _key, members in items[:limit]
        ]

    if not ranks:
        status = "empty"
    elif len(sign_groups) <= len(ranks) * 0.25:
        status = "promising-denominator-signature-factoring"
    elif len(survivor_groups) <= len(ranks) * 0.25:
        status = "promising-survivor-bitset-factoring"
    else:
        status = "denominator-signatures-still-mostly-rank-local"

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16BC",
        "trusted_as_proof": False,
        "source_profile": str(DEFAULT_PROFILE),
        "rank_count": len(ranks),
        "survivor_bitset_count": len(survivor_groups),
        "denominator_sign_signature_count": len(sign_groups),
        "denominator_sign_zero_signature_count": len(sign_zero_groups),
        "denominator_exact_signature_count": len(exact_groups),
        "first_bad_histogram": dict(sorted(first_bad_total.items())),
        "top_survivor_bitsets": top(survivor_groups),
        "top_denominator_signatures": top(sign_groups),
        "top_denominator_sign_zero_signatures": top(sign_zero_groups),
        "top_denominator_exact_signatures": top(exact_groups),
        "sample_rank_summaries": summaries,
        "decision": {
            "status": status,
            "notes": [
                "This emits no Lean and is not trusted as proof.",
                "Survivor-bitset grouping can support a direct GoodDirection membership theorem if it is much smaller than rank count.",
                "Denominator-signature grouping can support a mask-tree or pseudo-Boolean proof if it is much smaller than rank count.",
            ],
        },
    }


def markdown(result: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16BC Denominator-Signature Factoring Profile",
        "",
        "This is diagnostic only. It emits no Lean and is not trusted as proof.",
        "",
        f"- Status: `{result['decision']['status']}`",
        f"- Ranks scanned: `{result['rank_count']}`",
        f"- Unique GoodDirection survivor bitsets: `{result['survivor_bitset_count']}`",
        f"- Unique denominator sign signatures: `{result['denominator_sign_signature_count']}`",
        f"- Unique denominator sign+zero signatures: `{result['denominator_sign_zero_signature_count']}`",
        f"- Unique exact denominator signatures: `{result['denominator_exact_signature_count']}`",
        f"- First-bad impact histogram: `{result['first_bad_histogram']}`",
        "",
        "## Decision",
        "",
    ]
    status = result["decision"]["status"]
    if status == "promising-denominator-signature-factoring":
        lines.append(
            "Denominator sign signatures group substantially better than ranks. "
            "The next Lean target should be a shared denominator-signature "
            "membership theorem."
        )
    elif status == "promising-survivor-bitset-factoring":
        lines.append(
            "GoodDirection survivor bitsets group substantially better than ranks. "
            "The next Lean target should be a direct survivor-bitset membership "
            "theorem."
        )
    else:
        lines.append(
            "Denominator signatures remain mostly rank-local in this sample. "
            "The next attempt should use a stronger semantic state, mask-tree "
            "Farkas cubes, or symbolic sign-variable proof rather than grouping "
            "completed ranks."
        )
    lines.extend(["", "## Sample Rank Summaries", ""])
    for summary in result["sample_rank_summaries"][:8]:
        lines.append(
            f"- rank `{summary['rank']}`: good masks `{summary['good_mask_count']}`, "
            f"survivor bitset `{summary['survivor_key']}`, "
            f"first-bad histogram `{summary['first_bad_histogram']}`"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--out-md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--rank-limit", type=int)
    args = parser.parse_args()

    payload = json.loads(args.profile.read_text(encoding="utf-8"))
    result = profile(payload, rank_limit=args.rank_limit)
    args.out_json.parent.mkdir(parents=True, exist_ok=True)
    args.out_json.write_text(json.dumps(result, indent=2, sort_keys=True), encoding="utf-8")
    args.out_md.write_text(markdown(result), encoding="utf-8")
    print(
        f"wrote {args.out_json} and {args.out_md}; "
        f"{result['rank_count']} ranks"
    )


if __name__ == "__main__":
    main()
