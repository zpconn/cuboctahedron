#!/usr/bin/env python3
"""Audit AP16DU candidate-membership structure.

This diagnostic is intentionally not proof evidence.  It explains why the
bounded `[0,5000)` candidate-completeness premise should not be attacked by
plain rank-prefix splitting or mask-only splitting: both coordinates remain
highly candidate-ambiguous on the selected GoodDirection survivors.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))
import exact_profile as exact  # noqa: E402


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_RANGE_AUDIT = Path("scripts/generated/phase6z6k8ap16du_candidate_chunk_range_coverage.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9g_candidate_membership_structure_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def range_cases(profile: dict[str, Any], lo: int, hi: int) -> list[tuple[int, int, str]]:
    """Return `(rank, mask, candidate_key)` triples from the positive signature catalog."""

    cases: list[tuple[int, int, str]] = []
    for signature in profile.get("positive_survivor_signature_catalog", []):
        ranks = [int(rank) for rank in signature.get("ranks", []) if lo <= int(rank) < hi]
        if not ranks:
            continue
        good_masks = [int(mask) for mask in signature.get("good_masks", [])]
        mask_candidates = signature.get("mask_candidates", {})
        for rank in ranks:
            for mask in good_masks:
                for key in mask_candidates.get(str(mask), []):
                    cases.append((rank, mask, str(key)))
    return cases


def prefix_rows(cases: list[tuple[int, int, str]], words: dict[int, list[str]], max_len: int) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for length in range(1, max_len + 1):
        prefix_to_keys: dict[tuple[str, ...], set[str]] = defaultdict(set)
        prefix_case_count: Counter[tuple[str, ...]] = Counter()
        pair_to_cases: Counter[tuple[tuple[str, ...], str]] = Counter()
        for rank, _mask, key in cases:
            prefix = tuple(words[rank][:length])
            prefix_to_keys[prefix].add(key)
            prefix_case_count[prefix] += 1
            pair_to_cases[(prefix, key)] += 1
        ambiguous = [prefix for prefix, keys in prefix_to_keys.items() if len(keys) > 1]
        rows.append(
            {
                "length": length,
                "prefix_count": len(prefix_to_keys),
                "ambiguous_prefix_count": len(ambiguous),
                "max_candidate_keys_per_prefix": max((len(keys) for keys in prefix_to_keys.values()), default=0),
                "prefix_candidate_groups": len(pair_to_cases),
                "top_prefixes": [
                    {"prefix": list(prefix), "case_count": count}
                    for prefix, count in prefix_case_count.most_common(8)
                ],
            }
        )
    return rows


def mask_rows(cases: list[tuple[int, int, str]]) -> list[dict[str, Any]]:
    mask_to_keys: dict[int, set[str]] = defaultdict(set)
    mask_case_count: Counter[int] = Counter()
    for _rank, mask, key in cases:
        mask_to_keys[mask].add(key)
        mask_case_count[mask] += 1
    return [
        {
            "mask": mask,
            "case_count": count,
            "candidate_key_count": len(mask_to_keys[mask]),
        }
        for mask, count in mask_case_count.most_common()
    ]


def candidate_rows(cases: list[tuple[int, int, str]], limit: int) -> list[dict[str, Any]]:
    key_count: Counter[str] = Counter(key for _rank, _mask, key in cases)
    key_masks: dict[str, set[int]] = defaultdict(set)
    for _rank, mask, key in cases:
        key_masks[key].add(mask)
    return [
        {
            "candidate_key": key,
            "case_count": count,
            "mask_count": len(key_masks[key]),
            "masks": sorted(key_masks[key]),
        }
        for key, count in key_count.most_common(limit)
    ]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--range-audit", type=Path, default=DEFAULT_RANGE_AUDIT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--max-prefix-len", type=int, default=8)
    parser.add_argument("--top-candidates", type=int, default=20)
    args = parser.parse_args()

    profile = read_json(args.profile)
    range_audit = read_json(args.range_audit)
    lo, hi = [int(value) for value in range_audit["range"]]
    cases = range_cases(profile, lo, hi)
    words = {
        rank: word
        for rank, word, _pref in exact.enumerate_pair_word_states(limit=hi)
        if lo <= rank < hi
    }
    unique_rank_masks = {(rank, mask) for rank, mask, _key in cases}
    unique_keys = {key for _rank, _mask, key in cases}

    prefixes = prefix_rows(cases, words, args.max_prefix_len)
    masks = mask_rows(cases)
    candidates = candidate_rows(cases, args.top_candidates)
    decision = {
        "status": "reject-prefix-and-mask-only-membership",
        "notes": [
            "all GoodDirection survivors in this window share a long initial pair-word prefix",
            "rank-prefix splitting remains candidate-ambiguous after that prefix",
            "mask-only splitting remains candidate-ambiguous for the high-mass masks",
            "next proof route should target source-index/state or source-position trace predicates",
        ],
    }
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9G",
        "mode": "candidate_membership_structure_audit",
        "trusted_as_proof": False,
        "range": [lo, hi],
        "case_count": len(cases),
        "unique_rank_mask_count": len(unique_rank_masks),
        "candidate_key_count": len(unique_keys),
        "prefix_rows": prefixes,
        "mask_rows": masks,
        "top_candidates": candidates,
        "decision": decision,
    }
    write_json(args.json, payload)

    md = [
        "# Phase 6Z.6K.8AP.16DU.9G candidate-membership structure audit",
        "",
        "This report is not proof evidence.  It diagnoses the shape of the",
        "bounded AP16DU candidate-completeness premise.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Range: `[{lo}, {hi})`",
        f"- Candidate cases: `{len(cases)}`",
        f"- Unique rank/mask pairs: `{len(unique_rank_masks)}`",
        f"- Candidate keys: `{len(unique_keys)}`",
        "",
        "## Prefix Ambiguity",
        "",
        "| Prefix length | Prefixes | Ambiguous prefixes | Max keys per prefix | Prefix/key groups |",
        "| ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in prefixes:
        md.append(
            f"| `{row['length']}` | `{row['prefix_count']}` | "
            f"`{row['ambiguous_prefix_count']}` | "
            f"`{row['max_candidate_keys_per_prefix']}` | "
            f"`{row['prefix_candidate_groups']}` |"
        )
    md.extend([
        "",
        "## Top Masks",
        "",
        "| Mask | Cases | Candidate keys |",
        "| ---: | ---: | ---: |",
    ])
    for row in masks[:20]:
        md.append(
            f"| `{row['mask']}` | `{row['case_count']}` | "
            f"`{row['candidate_key_count']}` |"
        )
    md.extend([
        "",
        "## Decision",
        "",
        "Prefix-only and mask-only membership proofs are rejected for this range.",
        "The next proof-producing route should use source-index/state or",
        "source-position trace predicates that carry the actual two-row reason.",
    ])
    args.md.write_text("\n".join(md) + "\n", encoding="utf-8")

    print(f"status={decision['status']}")
    print(f"case_count={len(cases)}")
    print(f"unique_rank_mask_count={len(unique_rank_masks)}")
    print(f"candidate_key_count={len(unique_keys)}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
