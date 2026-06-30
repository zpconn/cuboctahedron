#!/usr/bin/env python3
"""Profile template-domain candidates from the bounded AP.16I survivor catalog.

This diagnostic does not certify geometry and does not emit Lean evidence.  It
reads the existing positive-survivor membership profile and summarizes how many
semantic template domains would be needed under simple quotient choices:

* one domain per positive-survivor signature;
* one domain per good-mask bitset;
* one domain per mask-to-candidate map;
* one member-bridge obligation per positive candidate group.

The goal is to guide the next Lean generator slice without recomputing the
underlying exact geometry.
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
    "scripts/generated/phase6z6k8ap16du9fk_template_domain_candidates.json"
)
DEFAULT_MD = Path(
    "scripts/generated/phase6z6k8ap16du9fk_template_domain_candidates.md"
)


def percentile(values: list[int], pct: float) -> int:
    if not values:
        return 0
    ordered = sorted(values)
    index = round((pct / 100.0) * (len(ordered) - 1))
    return ordered[index]


def mask_set_key(signature: dict[str, Any]) -> tuple[int, ...]:
    return tuple(int(mask) for mask in signature.get("good_masks", []))


def candidate_map_key(signature: dict[str, Any]) -> tuple[tuple[int, tuple[str, ...]], ...]:
    pairs: list[tuple[int, tuple[str, ...]]] = []
    for mask, candidates in signature.get("mask_candidates", {}).items():
        pairs.append((int(mask), tuple(candidates)))
    return tuple(sorted(pairs))


def candidate_set_key(signature: dict[str, Any]) -> tuple[str, ...]:
    keys: set[str] = set()
    for candidates in signature.get("mask_candidates", {}).values():
        keys.update(candidates)
    return tuple(sorted(keys))


def summarize(profile: dict[str, Any]) -> dict[str, Any]:
    signatures = profile.get("positive_survivor_signature_catalog", [])
    candidates = profile.get("positive_candidate_catalog", [])

    signature_cases = [int(sig.get("case_count", 0)) for sig in signatures]
    signature_ranks = [int(sig.get("rank_count", 0)) for sig in signatures]
    signature_good_masks = [len(sig.get("good_masks", [])) for sig in signatures]
    signature_candidate_sets = [candidate_set_key(sig) for sig in signatures]
    signature_candidate_maps = [candidate_map_key(sig) for sig in signatures]
    signature_mask_sets = [mask_set_key(sig) for sig in signatures]

    candidate_cases = [int(group.get("case_count", 0)) for group in candidates]
    candidate_masks = [int(group.get("mask_count", 0)) for group in candidates]
    candidate_ranks = [int(group.get("rank_count", 0)) for group in candidates]
    candidate_templates = Counter(
        tuple(group.get("template_ids", [])) for group in candidates
    )
    source_position_shapes = Counter(
        tuple(pos.get("lean", "") for pos in group.get("source_positions", []))
        for group in candidates
    )

    candidate_set_counts = Counter(signature_candidate_sets)
    candidate_map_counts = Counter(signature_candidate_maps)
    mask_set_counts = Counter(signature_mask_sets)

    good_mask_set_groups: dict[tuple[int, ...], dict[str, Any]] = defaultdict(
        lambda: {
            "signature_count": 0,
            "case_count": 0,
            "rank_count": 0,
            "candidate_keys": set(),
            "candidate_map_count": 0,
            "candidate_maps": Counter(),
        }
    )
    for sig, mask_key, candidate_set, candidate_map in zip(
        signatures,
        signature_mask_sets,
        signature_candidate_sets,
        signature_candidate_maps,
    ):
        group = good_mask_set_groups[mask_key]
        group["signature_count"] += 1
        group["case_count"] += int(sig.get("case_count", 0))
        group["rank_count"] += int(sig.get("rank_count", 0))
        group["candidate_keys"].update(candidate_set)
        group["candidate_maps"][candidate_map] += 1

    top_good_mask_set_groups = []
    for mask_key, group in good_mask_set_groups.items():
        candidate_maps = group["candidate_maps"]
        top_good_mask_set_groups.append(
            {
                "masks": list(mask_key),
                "signature_count": group["signature_count"],
                "case_count": group["case_count"],
                "rank_count": group["rank_count"],
                "candidate_union_size": len(group["candidate_keys"]),
                "candidate_map_count": len(candidate_maps),
                "top_candidate_map_multiplicity": candidate_maps.most_common(1)[0][1]
                if candidate_maps
                else 0,
                "candidate_keys": sorted(group["candidate_keys"]),
            }
        )
    top_good_mask_set_groups.sort(
        key=lambda item: (item["signature_count"], item["case_count"]),
        reverse=True,
    )

    if len(candidate_map_counts) == len(signatures):
        next_gate = (
            "Do not group by mask-to-candidate map in this bounded sample: it "
            "has no compression.  Instead, emit a bounded domain smoke whose "
            "TemplateLanguageMemberBridgeOnDomain is factored through reusable "
            "positive candidate groups/source-position shapes, then keep the "
            "signature-specific coverage premise separate."
        )
        mask_map_status = "rejected-no-sharing-in-bounded-profile"
    else:
        next_gate = (
            "Emit a bounded generated smoke that groups several signatures "
            "sharing a mask-to-candidate map into one TemplateLanguageDomain, "
            "then prove TemplateLanguageMemberBridgeOnDomain from the shared "
            "candidate group facts."
        )
        mask_map_status = "candidate-for-grouping"

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
            "unique_good_mask_sets": len(mask_set_counts),
            "unique_candidate_sets": len(candidate_set_counts),
            "unique_mask_to_candidate_maps": len(candidate_map_counts),
            "unique_template_sets": len(candidate_templates),
            "unique_source_position_shapes": len(source_position_shapes),
        },
        "signature_case_count": {
            "total": sum(signature_cases),
            "min": min(signature_cases, default=0),
            "median": percentile(signature_cases, 50),
            "p90": percentile(signature_cases, 90),
            "max": max(signature_cases, default=0),
        },
        "signature_rank_count": {
            "total": sum(signature_ranks),
            "min": min(signature_ranks, default=0),
            "median": percentile(signature_ranks, 50),
            "p90": percentile(signature_ranks, 90),
            "max": max(signature_ranks, default=0),
        },
        "signature_good_mask_count_histogram": dict(
            sorted(Counter(signature_good_masks).items())
        ),
        "candidate_case_count": {
            "total": sum(candidate_cases),
            "min": min(candidate_cases, default=0),
            "median": percentile(candidate_cases, 50),
            "p90": percentile(candidate_cases, 90),
            "max": max(candidate_cases, default=0),
        },
        "candidate_mask_count_histogram": dict(sorted(Counter(candidate_masks).items())),
        "candidate_rank_count_histogram": dict(sorted(Counter(candidate_ranks).items())),
        "top_good_mask_sets": [
            {"masks": list(key), "signature_count": count}
            for key, count in mask_set_counts.most_common(10)
        ],
        "top_good_mask_set_groups": top_good_mask_set_groups[:20],
        "top_candidate_sets": [
            {"candidate_keys": list(key), "signature_count": count}
            for key, count in candidate_set_counts.most_common(10)
        ],
        "top_mask_to_candidate_maps": [
            {
                "map": [
                    {"mask": mask, "candidate_keys": list(keys)}
                    for mask, keys in key
                ],
                "signature_count": count,
            }
            for key, count in candidate_map_counts.most_common(10)
        ],
        "top_template_sets": [
            {"templates": list(key), "candidate_group_count": count}
            for key, count in candidate_templates.most_common(10)
        ],
        "top_source_position_shapes": [
            {"source_positions": list(key), "candidate_group_count": count}
            for key, count in source_position_shapes.most_common(10)
        ],
        "interpretation": {
            "one_domain_per_signature": len(signatures),
            "one_domain_per_mask_to_candidate_map": len(candidate_map_counts),
            "one_domain_per_good_mask_set": len(mask_set_counts),
            "one_member_bridge_obligation_per_candidate_group": len(candidates),
            "mask_to_candidate_map_status": mask_map_status,
            "next_gate": next_gate,
        },
    }
    return payload


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    counts = payload["counts"]
    sig_cases = payload["signature_case_count"]
    cand_cases = payload["candidate_case_count"]
    interp = payload["interpretation"]

    lines = [
        "# Phase 6Z.6K.8AP.16DU.9FK Template Domain Candidate Profile",
        "",
        "This is a diagnostic over the existing bounded AP.16I positive-survivor",
        "membership profile.  It is not proof evidence.",
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
            "## Signature Case Counts",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
        ]
    )
    for key, value in sig_cases.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Candidate Group Case Counts",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
        ]
    )
    for key, value in cand_cases.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Top Good-Mask Sets",
            "",
            "| Masks | Signature Count |",
            "| --- | ---: |",
        ]
    )
    for item in payload["top_good_mask_sets"]:
        lines.append(
            f"| `{','.join(str(mask) for mask in item['masks'])}` | "
            f"`{item['signature_count']}` |"
        )

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
            f"- One domain per signature: `{interp['one_domain_per_signature']}`.",
            "- One domain per mask-to-candidate map: "
            f"`{interp['one_domain_per_mask_to_candidate_map']}`.",
            f"- One domain per good-mask set: `{interp['one_domain_per_good_mask_set']}`.",
            "- One member-bridge obligation per candidate group: "
            f"`{interp['one_member_bridge_obligation_per_candidate_group']}`.",
            "",
            f"Next gate: {interp['next_gate']}",
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
