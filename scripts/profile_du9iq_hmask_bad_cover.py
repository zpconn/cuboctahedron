#!/usr/bin/env python3
"""Profile the DU9IQ GoodDirection -> good-mask (`hmask`) burden.

This diagnostic emits no Lean and is not trusted as proof.  It reuses the
exact Python classifier to measure how many masks outside each positive
survivor set need denominator contradictions, and how those contradictions
group by rank/impact/denominator.  The point is to decide whether the next
Lean smoke should use a singleton bad-mask cover or wait for a compressed
denominator-cube/subcube cover.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path
from typing import Any

from generate_source_index_state_bounded_coverage import collect_window
from generate_source_index_state_nonenum_smoke import write_json, write_text


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9iq_hmask_bad_cover_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def frac_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def sign_key(value: Fraction) -> str:
    if value < 0:
        return "neg"
    if value == 0:
        return "zero"
    return "pos"


def sorted_counter(counter: Counter[Any], limit: int) -> list[dict[str, Any]]:
    return [
        {"key": str(key), "count": count}
        for key, count in counter.most_common(limit)
    ]


def profile(*, rank_start: int, limit: int, top: int, singleton_gate: int) -> dict[str, Any]:
    window = collect_window(rank_start=rank_start, limit=limit)

    bad_by_rank: dict[int, list[Any]] = defaultdict(list)
    for key, bad in window.bad_masks.items():
        bad_by_rank[key.rank].append(bad)

    good_by_rank: dict[int, set[int]] = defaultdict(set)
    for key in window.covered:
        good_by_rank[key.rank].add(key.mask)

    first_bad_impact_hist: Counter[int] = Counter()
    rank_impact_hist: Counter[str] = Counter()
    impact_sign_hist: Counter[str] = Counter()
    impact_exact_hist: Counter[str] = Counter()
    rank_impact_exact_hist: Counter[str] = Counter()
    denom_sign_hist: Counter[str] = Counter()

    rank_rows: list[dict[str, Any]] = []
    for rank in sorted(window.identity_ranks):
        bads = sorted(bad_by_rank.get(rank, []), key=lambda item: item.mask)
        goods = sorted(good_by_rank.get(rank, set()))
        impact_counter: Counter[int] = Counter()
        exact_counter: Counter[str] = Counter()
        for bad in bads:
            impact = int(bad.impact)
            denom = bad.denom
            first_bad_impact_hist[impact] += 1
            impact_counter[impact] += 1
            exact_counter[f"{impact}:{frac_key(denom)}"] += 1
            rank_impact_hist[f"{rank}:{impact}"] += 1
            impact_sign_hist[f"{impact}:{sign_key(denom)}"] += 1
            impact_exact_hist[f"{impact}:{frac_key(denom)}"] += 1
            rank_impact_exact_hist[f"{rank}:{impact}:{frac_key(denom)}"] += 1
            denom_sign_hist[sign_key(denom)] += 1
        rank_rows.append({
            "rank": rank,
            "good_masks": goods,
            "good_count": len(goods),
            "bad_count": len(bads),
            "bad_impact_histogram": dict(sorted(impact_counter.items())),
            "bad_exact_histogram": dict(sorted(exact_counter.items())),
        })

    singleton_witnesses = len(window.bad_masks)
    # The older AP.16BA singleton file used roughly 70-80 Lean lines per bad
    # mask witness.  This is only a coarse warning flag for the next step.
    estimated_singleton_lines = singleton_witnesses * 75

    if singleton_witnesses > singleton_gate:
        status = "reject-singleton-hmask-lean"
        next_step = "profile-denominator-cube-or-impact-subcube-cover"
    else:
        status = "accepted-singleton-hmask-smoke-candidate"
        next_step = "emit-guarded-singleton-bad-mask-smoke"

    return {
        "phase": "6Z.6K.8AP.16DU.9IQ hmask bad-cover profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "identity_rank_count": len(window.identity_ranks),
        "nonidentity_rank_count": len(window.nonidentity),
        "good_direction_cases": len(window.covered),
        "bad_mask_cases": singleton_witnesses,
        "singleton_gate": singleton_gate,
        "estimated_singleton_lean_lines": estimated_singleton_lines,
        "decision": {
            "status": status,
            "next_step": next_step,
            "notes": [
                "this profile emits no Lean",
                "singleton bad-mask witnesses are bounded-smoke only, not the production path",
                "a rejected singleton gate means keep hmask as a premise until a compressed cover is available",
            ],
        },
        "rank_summaries": rank_rows,
        "first_bad_impact_histogram": sorted_counter(first_bad_impact_hist, top),
        "rank_impact_histogram": sorted_counter(rank_impact_hist, top),
        "impact_sign_histogram": sorted_counter(impact_sign_hist, top),
        "impact_exact_histogram": sorted_counter(impact_exact_hist, top),
        "rank_impact_exact_histogram": sorted_counter(rank_impact_exact_hist, top),
        "denominator_sign_histogram": dict(sorted(denom_sign_hist.items())),
    }


def markdown(data: dict[str, Any]) -> str:
    decision = data["decision"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9IQ Hmask Bad-Cover Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.  It measures",
        "whether the DU9IQ `GoodDirection -> good-mask` premise is small enough",
        "for singleton bad-mask witnesses, or whether the next step must use a",
        "compressed denominator-cube/impact-subcube cover.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Next step: `{decision['next_step']}`",
        f"- Rank window: `[{data['rank_start']}, {data['rank_end']})`",
        f"- Identity ranks: `{data['identity_rank_count']}`",
        f"- Nonidentity ranks skipped: `{data['nonidentity_rank_count']}`",
        f"- GoodDirection cases: `{data['good_direction_cases']}`",
        f"- Bad-mask cases needing contradictions: `{data['bad_mask_cases']}`",
        f"- Singleton gate: `{data['singleton_gate']}`",
        f"- Estimated singleton Lean lines: `{data['estimated_singleton_lean_lines']}`",
        "",
        "## Bad Masks By Rank",
        "",
        "| Rank | Good masks | Bad masks | Bad impact histogram |",
        "| ---: | --- | ---: | --- |",
    ]
    for row in data["rank_summaries"]:
        lines.append(
            f"| {row['rank']} | "
            f"`{','.join(str(mask) for mask in row['good_masks'])}` | "
            f"{row['bad_count']} | `{row['bad_impact_histogram']}` |"
        )
    lines.extend([
        "",
        "## Top First-Bad Impacts",
        "",
        "| Impact | Count |",
        "| ---: | ---: |",
    ])
    for row in data["first_bad_impact_histogram"]:
        lines.append(f"| {row['key']} | {row['count']} |")
    lines.extend([
        "",
        "## Top Rank/Impact Groups",
        "",
        "| Rank:Impact | Count |",
        "| --- | ---: |",
    ])
    for row in data["rank_impact_histogram"]:
        lines.append(f"| `{row['key']}` | {row['count']} |")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=896)
    parser.add_argument("--limit", type=int, default=64)
    parser.add_argument("--top", type=int, default=20)
    parser.add_argument("--singleton-gate", type=int, default=128)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    data = profile(
        rank_start=args.rank_start,
        limit=args.limit,
        top=args.top,
        singleton_gate=args.singleton_gate,
    )
    write_json(args.json, data)
    write_text(args.md, markdown(data))
    print(json.dumps(data["decision"], indent=2))
    print(f"bad_mask_cases={data['bad_mask_cases']}")
    print(f"estimated_singleton_lean_lines={data['estimated_singleton_lean_lines']}")


if __name__ == "__main__":
    main()
