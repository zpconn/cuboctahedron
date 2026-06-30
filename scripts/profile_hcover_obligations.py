#!/usr/bin/env python3
"""Profile the remaining positive-survivor `hcover` obligations.

This diagnostic reads the bounded AP.16I positive-survivor catalog and splits
the current production gap into its two proof obligations:

* `hmask`: GoodDirection at a rank/mask implies membership in that signature's
  positive mask set.
* `hfacts`: positive-mask membership supplies the reusable source-position and
  row-producer facts needed by the candidate-domain bridge.

The script is intentionally not proof evidence.  It reports which pieces are
already reusable and which pieces still require a compressed state/signature
membership theorem.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9fv_hcover_obligations.json"
)
DEFAULT_MD = Path(
    "scripts/generated/phase6z6k8ap16du9fv_hcover_obligations.md"
)


def percentile(values: list[int], pct: float) -> int:
    if not values:
        return 0
    ordered = sorted(values)
    index = round((pct / 100.0) * (len(ordered) - 1))
    return ordered[index]


def mask_set_key(signature: dict[str, Any]) -> tuple[int, ...]:
    return tuple(int(mask) for mask in signature.get("good_masks", []))


def candidate_set_key(signature: dict[str, Any]) -> tuple[str, ...]:
    keys: set[str] = set()
    for candidates in signature.get("mask_candidates", {}).values():
        keys.update(str(candidate) for candidate in candidates)
    return tuple(sorted(keys))


def candidate_map_key(signature: dict[str, Any]) -> tuple[tuple[int, tuple[str, ...]], ...]:
    pairs: list[tuple[int, tuple[str, ...]]] = []
    for mask, candidates in signature.get("mask_candidates", {}).items():
        pairs.append((int(mask), tuple(str(candidate) for candidate in candidates)))
    return tuple(sorted(pairs))


def stats(values: list[int]) -> dict[str, int]:
    return {
        "total": sum(values),
        "min": min(values, default=0),
        "median": percentile(values, 50),
        "p90": percentile(values, 90),
        "p99": percentile(values, 99),
        "max": max(values, default=0),
    }


def summarize(profile: dict[str, Any]) -> dict[str, Any]:
    signatures = profile.get("positive_survivor_signature_catalog", [])
    candidates = profile.get("positive_candidate_catalog", [])

    good_mask_sets = [mask_set_key(signature) for signature in signatures]
    candidate_sets = [candidate_set_key(signature) for signature in signatures]
    candidate_maps = [candidate_map_key(signature) for signature in signatures]

    good_mask_set_counts = Counter(good_mask_sets)
    candidate_set_counts = Counter(candidate_sets)
    candidate_map_counts = Counter(candidate_maps)

    signature_case_counts = [int(signature.get("case_count", 0)) for signature in signatures]
    signature_rank_counts = [int(signature.get("rank_count", 0)) for signature in signatures]
    signature_good_mask_counts = [
        len(signature.get("good_masks", [])) for signature in signatures
    ]
    signature_candidate_union_sizes = [len(key) for key in candidate_sets]
    signature_candidate_map_entries = [
        sum(len(candidates) for candidates in signature.get("mask_candidates", {}).values())
        for signature in signatures
    ]

    mask_set_groups: dict[tuple[int, ...], dict[str, Any]] = defaultdict(
        lambda: {
            "signature_count": 0,
            "rank_count": 0,
            "case_count": 0,
            "candidate_union": set(),
            "candidate_maps": Counter(),
        }
    )
    for signature, mask_key, candidate_set, candidate_map in zip(
        signatures, good_mask_sets, candidate_sets, candidate_maps
    ):
        group = mask_set_groups[mask_key]
        group["signature_count"] += 1
        group["rank_count"] += int(signature.get("rank_count", 0))
        group["case_count"] += int(signature.get("case_count", 0))
        group["candidate_union"].update(candidate_set)
        group["candidate_maps"][candidate_map] += 1

    top_mask_groups: list[dict[str, Any]] = []
    for mask_key, group in mask_set_groups.items():
        candidate_maps_for_group = group["candidate_maps"]
        top_mask_groups.append(
            {
                "masks": list(mask_key),
                "signature_count": group["signature_count"],
                "rank_count": group["rank_count"],
                "case_count": group["case_count"],
                "candidate_union_size": len(group["candidate_union"]),
                "candidate_map_count": len(candidate_maps_for_group),
                "top_candidate_map_multiplicity": (
                    candidate_maps_for_group.most_common(1)[0][1]
                    if candidate_maps_for_group
                    else 0
                ),
            }
        )
    top_mask_groups.sort(
        key=lambda item: (item["signature_count"], item["case_count"]),
        reverse=True,
    )

    exact_map_is_signature_local = len(candidate_map_counts) == len(signatures)
    exact_candidate_set_is_signature_local = len(candidate_set_counts) == len(signatures)

    payload: dict[str, Any] = {
        "trusted_as_proof": False,
        "profile": {
            "ranges": profile.get("ranges", []),
            "windows": profile.get("windows", []),
            "total_good_direction_cases": profile.get("total_good_direction_cases"),
            "ranks_with_good_direction": profile.get("ranks_with_good_direction"),
        },
        "counts": {
            "positive_survivor_signatures": len(signatures),
            "positive_candidate_groups": len(candidates),
            "unique_good_mask_sets": len(good_mask_set_counts),
            "unique_candidate_sets": len(candidate_set_counts),
            "unique_mask_to_candidate_maps": len(candidate_map_counts),
        },
        "hmask_obligation_estimates": {
            "raw_rank_mask_cases": int(profile.get("total_good_direction_cases") or 0),
            "one_theorem_per_signature": len(signatures),
            "best_case_one_theorem_per_good_mask_set": len(good_mask_set_counts),
            "signature_rank_count": stats(signature_rank_counts),
            "signature_good_mask_count": stats(signature_good_mask_counts),
            "signature_case_count": stats(signature_case_counts),
        },
        "hfacts_obligation_estimates": {
            "reusable_candidate_group_facts": len(candidates),
            "one_map_per_signature": len(signatures),
            "one_map_per_mask_to_candidate_map": len(candidate_map_counts),
            "one_union_per_candidate_set": len(candidate_set_counts),
            "candidate_union_size_per_signature": stats(signature_candidate_union_sizes),
            "candidate_map_entries_per_signature": stats(signature_candidate_map_entries),
        },
        "top_good_mask_set_groups": top_mask_groups[:20],
        "top_good_mask_sets": [
            {"masks": list(key), "signature_count": count}
            for key, count in good_mask_set_counts.most_common(20)
        ],
        "interpretation": {
            "exact_mask_to_candidate_map_status": (
                "rejected-signature-local"
                if exact_map_is_signature_local
                else "candidate-for-sharing"
            ),
            "exact_candidate_set_status": (
                "rejected-nearly-signature-local"
                if exact_candidate_set_is_signature_local
                else "candidate-for-sharing"
            ),
            "recommended_next_gate": (
                "Do not emit exact mask-to-candidate or candidate-set coverage as "
                "the production hcover proof.  The bounded catalog shows those "
                "coordinates remain essentially signature-local.  Keep the 195 "
                "candidate facts and source-position obligations reusable, and "
                "seek a compressed state/signature theorem proving "
                "GoodDirection -> membership in a reusable candidate-union domain."
            ),
        },
    }
    return payload


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    counts = payload["counts"]
    hmask = payload["hmask_obligation_estimates"]
    hfacts = payload["hfacts_obligation_estimates"]
    interp = payload["interpretation"]

    lines = [
        "# Phase 6Z.6K.8AP.16DU.9FV Hcover Obligation Profile",
        "",
        "This diagnostic splits the remaining positive-survivor `hcover` premise",
        "into the two proof obligations used by the current classifier surface.",
        "It is not proof evidence.",
        "",
        "## Counts",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ]
    for key, value in counts.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Hmask Obligation",
            "",
            "`hmask` proves that `GoodDirectionAtRank` implies membership in the",
            "positive mask set for the chosen signature.",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
        ]
    )
    for key, value in hmask.items():
        if isinstance(value, dict):
            continue
        lines.append(f"| `{key}` | `{value}` |")
    for section in ("signature_rank_count", "signature_good_mask_count", "signature_case_count"):
        lines.extend(["", f"### `{section}`", "", "| Metric | Value |", "| --- | ---: |"])
        for key, value in hmask[section].items():
            lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Hfacts Obligation",
            "",
            "`hfacts` maps positive-mask membership to the reusable source-position",
            "and row-producer candidate facts.",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
        ]
    )
    for key, value in hfacts.items():
        if isinstance(value, dict):
            continue
        lines.append(f"| `{key}` | `{value}` |")
    for section in ("candidate_union_size_per_signature", "candidate_map_entries_per_signature"):
        lines.extend(["", f"### `{section}`", "", "| Metric | Value |", "| --- | ---: |"])
        for key, value in hfacts[section].items():
            lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Top Good-Mask-Set Groups",
            "",
            "| Masks | Signatures | Cases | Candidate Union | Candidate Maps |",
            "| --- | ---: | ---: | ---: | ---: |",
        ]
    )
    for item in payload["top_good_mask_set_groups"][:10]:
        lines.append(
            f"| `{','.join(str(mask) for mask in item['masks'])}` | "
            f"`{item['signature_count']}` | "
            f"`{item['case_count']}` | "
            f"`{item['candidate_union_size']}` | "
            f"`{item['candidate_map_count']}` |"
        )

    lines.extend(
        [
            "",
            "## Interpretation",
            "",
            "- Exact mask-to-candidate map status: "
            f"`{interp['exact_mask_to_candidate_map_status']}`.",
            "- Exact candidate-set status: "
            f"`{interp['exact_candidate_set_status']}`.",
            "",
            interp["recommended_next_gate"],
            "",
        ]
    )

    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    payload = summarize(profile)

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.md)

    print(json.dumps(payload["counts"], indent=2, sort_keys=True))
    print(json.dumps(payload["interpretation"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
