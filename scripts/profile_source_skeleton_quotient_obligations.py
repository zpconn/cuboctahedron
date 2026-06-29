#!/usr/bin/env python3
"""Audit proof obligations for the source-skeleton quotient surface.

This diagnostic is not proof.  It reads checkpointed source-index/state
classifier census reports and groups their concrete families by the coarser
`template + source skeletons + row property` key.  The goal is to understand
what varies inside a quotient group after removing concrete source indices.

The output is deliberately about theorem-surface obligations rather than rank
coverage: if a quotient group contains many concrete source-index pairs, a Lean
bridge must prove that the same semantic row-template contradiction is
independent of those concrete positions.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path
from statistics import median
from typing import Any


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9ek_source_skeleton_obligations.json"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def digest(payload: Any) -> str:
    raw = json.dumps(payload, sort_keys=True, separators=(",", ":")).encode()
    return hashlib.sha256(raw).hexdigest()


def checkpoint_paths(report: dict[str, Any]) -> list[Path]:
    checkpoint_dir = Path(str(report["checkpoint_dir"]))
    paths: list[Path] = []
    for start, end in report["ranges"]:
        path = checkpoint_dir / f"window_{int(start):09d}_{int(end):09d}.json"
        if not path.exists():
            raise FileNotFoundError(f"missing checkpoint {path}")
        paths.append(path)
    return paths


def load_families(reports: list[Path]) -> list[dict[str, Any]]:
    families: dict[str, dict[str, Any]] = {}
    for report_path in reports:
        report = read_json(report_path)
        for checkpoint in checkpoint_paths(report):
            payload = read_json(checkpoint)
            for family in payload["families"]:
                key = str(family["key"])
                current = families.get(key)
                if current is None:
                    current = dict(family)
                    current["case_count"] = 0
                    families[key] = current
                current["case_count"] += int(family["case_count"])
    return list(families.values())


def skeleton_payload(family: dict[str, Any]) -> dict[str, Any]:
    return {
        "template": family["template_id"],
        "source_skeletons": family["source_skeletons"],
        "row_property": family["row_property_key"],
    }


def source_index_pair(family: dict[str, Any]) -> tuple[int, int]:
    first, second = family["source_indices"]
    return int(first), int(second)


def summarize_group(key: str, payload: Any, families: list[dict[str, Any]]) -> dict[str, Any]:
    pair_counts: Counter[tuple[int, int]] = Counter()
    first_indices: Counter[int] = Counter()
    second_indices: Counter[int] = Counter()
    template_counts: Counter[str] = Counter()
    row_property_counts: Counter[str] = Counter()
    cases = 0
    for family in families:
        count = int(family["case_count"])
        pair = source_index_pair(family)
        pair_counts[pair] += count
        first_indices[pair[0]] += count
        second_indices[pair[1]] += count
        template_counts[str(family["template_id"])] += count
        row_property_counts[str(family["row_property_key"])] += count
        cases += count

    def counter_rows(counter: Counter[Any], limit: int = 8) -> list[dict[str, Any]]:
        return [
            {"value": value, "case_count": count}
            for value, count in counter.most_common(limit)
        ]

    return {
        "key": key,
        "payload": payload,
        "case_count": cases,
        "concrete_family_count": len(families),
        "source_index_pair_count": len(pair_counts),
        "source_index_pairs": [
            {"first": first, "second": second, "case_count": count}
            for (first, second), count in pair_counts.most_common(12)
        ],
        "first_index_count": len(first_indices),
        "second_index_count": len(second_indices),
        "top_first_indices": counter_rows(first_indices),
        "top_second_indices": counter_rows(second_indices),
        "template_count": len(template_counts),
        "row_property_count": len(row_property_counts),
    }


def summarize(reports: list[Path], top_limit: int) -> dict[str, Any]:
    families = load_families(reports)
    groups: dict[str, list[dict[str, Any]]] = defaultdict(list)
    payloads: dict[str, Any] = {}
    for family in families:
        payload = skeleton_payload(family)
        key = digest(payload)
        groups[key].append(family)
        payloads.setdefault(key, payload)

    group_rows = [
        summarize_group(key, payloads[key], group)
        for key, group in groups.items()
    ]
    group_rows.sort(
        key=lambda item: (
            -int(item["case_count"]),
            -int(item["source_index_pair_count"]),
            str(item["key"]),
        )
    )

    pair_counts = [int(row["source_index_pair_count"]) for row in group_rows]
    concrete_counts = [int(row["concrete_family_count"]) for row in group_rows]
    multi_pair = [row for row in group_rows if int(row["source_index_pair_count"]) > 1]
    multi_family = [row for row in group_rows if int(row["concrete_family_count"]) > 1]
    by_pair_count = Counter(pair_counts)
    by_template = Counter(
        str(row["payload"]["template"])
        for row in group_rows
    )
    by_skeleton_pair = Counter(
        json.dumps(row["payload"]["source_skeletons"], sort_keys=True)
        for row in group_rows
    )

    def median_or_zero(values: list[int]) -> float:
        if not values:
            return 0.0
        return float(median(values))

    return {
        "schema_version": 1,
        "mode": "source_skeleton_quotient_obligation_profile",
        "phase": "6Z.6K.8AP.16DU.9EK",
        "trusted_as_proof": False,
        "reports": [str(path) for path in reports],
        "concrete_family_count": len(families),
        "case_count": sum(int(family["case_count"]) for family in families),
        "skeleton_group_count": len(group_rows),
        "multi_family_group_count": len(multi_family),
        "multi_source_index_pair_group_count": len(multi_pair),
        "multi_source_index_pair_case_count": sum(
            int(row["case_count"]) for row in multi_pair
        ),
        "max_source_index_pairs_per_group": max(pair_counts, default=0),
        "median_source_index_pairs_per_group": median_or_zero(pair_counts),
        "max_concrete_families_per_group": max(concrete_counts, default=0),
        "median_concrete_families_per_group": median_or_zero(concrete_counts),
        "groups_by_source_index_pair_count": [
            {"source_index_pair_count": count, "group_count": group_count}
            for count, group_count in sorted(by_pair_count.items())
        ],
        "groups_by_template": [
            {"template": template, "group_count": count}
            for template, count in by_template.most_common()
        ],
        "top_skeleton_pairs": [
            {"source_skeletons": skeletons, "group_count": count}
            for skeletons, count in by_skeleton_pair.most_common(top_limit)
        ],
        "top_multi_source_index_pair_groups": multi_pair[:top_limit],
        "top_groups": group_rows[:top_limit],
        "decision": {
            "status": "diagnostic-only",
            "notes": [
                "source-skeleton quotient groups are not proof obligations by themselves",
                "a Lean bridge must replace concrete list indices by semantic source skeleton facts",
                "if skeleton facts cannot determine SourceChecks and row predicates, refine with row-normal-form data before returning to concrete source indices",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9EK Source-Skeleton Obligations",
        "",
        "This diagnostic is not trusted as proof. It groups checkpointed",
        "source-index/state classifier families by `template + source skeletons +",
        "row property`, then reports what concrete source-index variation remains",
        "inside those quotient groups.",
        "",
        f"- Reports: `{len(payload['reports'])}`",
        f"- Concrete families: `{payload['concrete_family_count']}`",
        f"- GoodDirection cases represented: `{payload['case_count']}`",
        f"- Source-skeleton quotient groups: `{payload['skeleton_group_count']}`",
        f"- Groups with multiple source-index pairs: `{payload['multi_source_index_pair_group_count']}`",
        f"- Cases in multi-source-index-pair groups: `{payload['multi_source_index_pair_case_count']}`",
        f"- Max source-index pairs per group: `{payload['max_source_index_pairs_per_group']}`",
        f"- Median source-index pairs per group: `{payload['median_source_index_pairs_per_group']}`",
        "",
        "## Distribution",
        "",
        "| Source-index pairs per group | Groups |",
        "| ---: | ---: |",
    ]
    for row in payload["groups_by_source_index_pair_count"]:
        lines.append(
            f"| {row['source_index_pair_count']} | {row['group_count']} |"
        )
    lines.extend([
        "",
        "## Groups By Template",
        "",
        "| Template | Groups |",
        "| --- | ---: |",
    ])
    for row in payload["groups_by_template"]:
        lines.append(f"| `{row['template']}` | {row['group_count']} |")
    lines.extend([
        "",
        "## Largest Multi-Index Obligations",
        "",
        "| Cases | Source-index pairs | Template | Source skeletons | Top source-index pairs |",
        "| ---: | ---: | --- | --- | --- |",
    ])
    for group in payload["top_multi_source_index_pair_groups"]:
        pairs = ", ".join(
            f"({pair['first']},{pair['second']}):{pair['case_count']}"
            for pair in group["source_index_pairs"][:6]
        )
        skeletons = json.dumps(group["payload"]["source_skeletons"], sort_keys=True)
        lines.append(
            f"| {group['case_count']} | {group['source_index_pair_count']} | "
            f"`{group['payload']['template']}` | `{skeletons}` | `{pairs}` |"
        )
    lines.extend([
        "",
        "## Interpretation",
        "",
        "The source-skeleton quotient is promising only if Lean can prove that",
        "concrete list positions are incidental: for a fixed source skeleton pair,",
        "row property, and template, the selected rows still satisfy the same",
        "semantic contradiction.  The generated theorem surface should therefore",
        "target a fact like:",
        "",
        "```lean",
        "sourceSkeletonFacts + rowNormalFormFacts -> RowPropertyParametricCovered r mask",
        "```",
        "",
        "not a theorem keyed by concrete `firstIndex` and `secondIndex`.",
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, action="append", required=True)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=None)
    parser.add_argument("--top-limit", type=int, default=12)
    args = parser.parse_args()

    payload = summarize(args.input, args.top_limit)
    write_json(args.json, payload)
    md_path = args.md or args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "phase": payload["phase"],
        "skeleton_group_count": payload["skeleton_group_count"],
        "multi_source_index_pair_group_count": payload[
            "multi_source_index_pair_group_count"
        ],
        "max_source_index_pairs_per_group": payload[
            "max_source_index_pairs_per_group"
        ],
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
