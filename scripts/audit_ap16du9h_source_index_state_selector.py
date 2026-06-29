#!/usr/bin/env python3
"""Audit AP16DU source-index/state selector coordinates.

This diagnostic is intentionally not proof evidence.  It asks which small
source/row coordinates determine the selected DU.9 source-index/state family on
the bounded `[0,5000)` classifier window.

DU.9G rejected plain rank-prefix and mask-only membership.  This audit narrows
the next proof target: if a coordinate is key-deterministic, then a generated
membership theorem can try to prove that coordinate semantically instead of
replaying concrete rank/mask rows or reducing the full classifier.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any, Iterable

sys.path.insert(0, str(Path(__file__).resolve().parent))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    collect_families,
)


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16du2_source_index_state_classifier_profile.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9h_source_index_state_selector_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def source_summary(source: dict[str, Any]) -> tuple[Any, ...]:
    kind = source.get("kind")
    if kind == "interior":
        return (kind, source.get("impact"), source.get("face"))
    if kind == "xpStart":
        return (kind, source.get("index"))
    if kind == "ordering":
        return (kind, source.get("index"))
    return tuple(sorted(source.items()))


def source_skeleton(source: dict[str, Any]) -> tuple[Any, ...]:
    kind = source.get("kind")
    if kind == "interior":
        return (kind, source.get("impact"))
    if kind == "xpStart":
        return (kind, source.get("index"))
    if kind == "ordering":
        return (kind, source.get("index"))
    return (kind,)


def line_shape(line: tuple[Any, Any, Any]) -> tuple[str, str, str]:
    return tuple(str(item) for item in line)  # type: ignore[return-value]


def member_rows(families: Iterable[Any]) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for family in families:
        for member in family.members:
            case = member.symbolic.case
            rows.append(
                {
                    "rank": case.rank,
                    "mask": case.mask,
                    "key": family.key,
                    "template": family.template_id,
                    "source_indices": tuple(family.source_indices),
                    "source_skeletons": tuple(family.source_skeletons),
                    "first_source": source_summary(case.first_source),
                    "second_source": source_summary(case.second_source),
                    "first_source_skeleton": source_skeleton(case.first_source),
                    "second_source_skeleton": source_skeleton(case.second_source),
                    "row_property": family.row_property_key,
                    "first_line": line_shape(case.first_line),
                    "second_line": line_shape(case.second_line),
                    "multipliers": tuple(str(item) for item in case.multipliers),
                }
            )
    return rows


def coordinate_report(rows: list[dict[str, Any]], name: str, fields: tuple[str, ...]) -> dict[str, Any]:
    buckets: dict[tuple[Any, ...], set[str]] = defaultdict(set)
    cases: Counter[tuple[Any, ...]] = Counter()
    for row in rows:
        coord = tuple(row[field] for field in fields)
        buckets[coord].add(row["key"])
        cases[coord] += 1
    ambiguous = [coord for coord, keys in buckets.items() if len(keys) > 1]
    max_keys = max((len(keys) for keys in buckets.values()), default=0)
    deterministic = len(ambiguous) == 0
    top_ambiguous = sorted(
        (
            {
                "case_count": cases[coord],
                "key_count": len(buckets[coord]),
                "coordinate": repr(coord),
            }
            for coord in ambiguous
        ),
        key=lambda item: (-int(item["key_count"]), -int(item["case_count"]), item["coordinate"]),
    )[:10]
    return {
        "name": name,
        "fields": list(fields),
        "coordinate_count": len(buckets),
        "ambiguous_coordinate_count": len(ambiguous),
        "max_keys_per_coordinate": max_keys,
        "deterministic": deterministic,
        "top_ambiguous": top_ambiguous,
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--top-families", type=int, default=12)
    args = parser.parse_args()

    profile = read_json(args.profile)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    families, counts = collect_families(rank_start=rank_start, limit=rank_end - rank_start)
    rows = member_rows(families)

    coordinate_specs = [
        ("template", ("template",)),
        ("source_indices", ("source_indices",)),
        ("template_source_indices", ("template", "source_indices")),
        ("template_source_skeletons", ("template", "first_source_skeleton", "second_source_skeleton")),
        ("template_full_sources", ("template", "first_source", "second_source")),
        (
            "template_source_indices_full_sources",
            ("template", "source_indices", "first_source", "second_source"),
        ),
        (
            "template_source_indices_skeletons",
            ("template", "source_indices", "first_source_skeleton", "second_source_skeleton"),
        ),
        ("template_row_property", ("template", "row_property")),
        (
            "template_source_indices_row_property",
            ("template", "source_indices", "row_property"),
        ),
        (
            "template_sources_row_property",
            ("template", "first_source", "second_source", "row_property"),
        ),
        (
            "template_source_indices_sources_row_property",
            ("template", "source_indices", "first_source", "second_source", "row_property"),
        ),
    ]
    reports = [coordinate_report(rows, name, fields) for name, fields in coordinate_specs]
    deterministic = [report for report in reports if report["deterministic"]]
    best = min(
        deterministic,
        key=lambda report: (len(report["fields"]), int(report["coordinate_count"])),
        default=None,
    )

    family_counts = Counter(row["key"] for row in rows)
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9H",
        "mode": "source_index_state_selector_audit",
        "trusted_as_proof": False,
        "range": [rank_start, rank_end],
        "counts": counts,
        "case_count": len(rows),
        "family_count": len(families),
        "coordinate_reports": reports,
        "best_deterministic_coordinate": best,
        "top_families": [
            {"key": key, "case_count": count}
            for key, count in family_counts.most_common(args.top_families)
        ],
        "decision": {
            "status": "source-index-state-coordinate-audited",
            "notes": [
                "This emits no Lean and is not proof evidence.",
                "Coordinates that are not deterministic should not be used as final membership keys.",
                "A deterministic coordinate is only a proof target; Lean must still prove it from identity plus GoodDirection.",
            ],
        },
    }
    write_json(args.json, payload)

    md = [
        "# Phase 6Z.6K.8AP.16DU.9H source-index/state selector audit",
        "",
        "This report is not proof evidence. It profiles which source/row",
        "coordinates determine the bounded DU.9 classifier family key.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Range: `[{rank_start}, {rank_end})`",
        f"- GoodDirection cases represented: `{len(rows)}`",
        f"- Source-index/state families: `{len(families)}`",
        f"- Best deterministic coordinate: `{best['name'] if best else 'none'}`",
        "",
        "## Coordinate Determinism",
        "",
        "| Coordinate | Fields | Coordinate count | Ambiguous coordinates | Max keys/coordinate | Deterministic |",
        "| --- | --- | ---: | ---: | ---: | --- |",
    ]
    for report in reports:
        md.append(
            f"| `{report['name']}` | `{', '.join(report['fields'])}` | "
            f"`{report['coordinate_count']}` | "
            f"`{report['ambiguous_coordinate_count']}` | "
            f"`{report['max_keys_per_coordinate']}` | "
            f"`{report['deterministic']}` |"
        )
    md.extend(["", "## Decision", ""])
    if best:
        md.append(
            f"The smallest deterministic audited coordinate is `{best['name']}`. "
            "The next proof-producing step should target this coordinate or a "
            "strictly cheaper equivalent, while keeping source/row facts theorem-valued."
        )
    else:
        md.append(
            "No audited coordinate determines the selected family key. The next "
            "proof-producing step should introduce a richer source-position trace "
            "predicate rather than weakening the key."
        )
    md.append("")
    args.md.write_text("\n".join(md), encoding="utf-8")

    print(f"status={payload['decision']['status']}")
    print(f"case_count={len(rows)}")
    print(f"family_count={len(families)}")
    print(f"best_deterministic_coordinate={best['name'] if best else 'none'}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
