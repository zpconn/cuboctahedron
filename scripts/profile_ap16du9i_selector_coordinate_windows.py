#!/usr/bin/env python3
"""Profile DU.9H selector-coordinate determinism across sampled windows.

This diagnostic emits no Lean and is not proof evidence.  It checks whether the
bounded DU.9H coordinate

    template + source indices + row-property digest

remains key-deterministic across disjoint sampled windows.  It uses bounded
Python parallelism only; each worker runs the existing exact classifier on a
small rank window.
"""

from __future__ import annotations

import argparse
import json
import multiprocessing as mp
import sys
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from audit_ap16du9h_source_index_state_selector import (  # noqa: E402
    coordinate_report,
    member_rows,
)
from generate_source_index_state_nonenum_smoke import collect_families  # noqa: E402


DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9i_selector_coordinate_windows.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_WINDOWS = "0:1000,100000:1000,1000000:1000,6000000:1000"


def parse_windows(text: str) -> list[tuple[int, int]]:
    windows: list[tuple[int, int]] = []
    for item in text.split(","):
        item = item.strip()
        if not item:
            continue
        if ":" not in item:
            raise ValueError(f"window {item!r} must have form start:limit")
        start_s, limit_s = item.split(":", 1)
        start = int(start_s)
        limit = int(limit_s)
        if start < 0 or limit <= 0:
            raise ValueError(f"invalid window {item!r}")
        windows.append((start, limit))
    if not windows:
        raise ValueError("no windows requested")
    return windows


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def profile_window(args: tuple[int, int]) -> dict[str, Any]:
    rank_start, limit = args
    families, counts = collect_families(rank_start=rank_start, limit=limit)
    rows = member_rows(families)
    source_indices = coordinate_report(rows, "template_source_indices", ("template", "source_indices"))
    selector = coordinate_report(
        rows,
        "template_source_indices_row_property",
        ("template", "source_indices", "row_property"),
    )
    full_sources = coordinate_report(
        rows,
        "template_source_indices_full_sources",
        ("template", "source_indices", "first_source", "second_source"),
    )
    return {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": counts,
        "case_count": len(rows),
        "family_count": len(families),
        "reports": {
            "template_source_indices": source_indices,
            "template_source_indices_row_property": selector,
            "template_source_indices_full_sources": full_sources,
        },
        "accepted": bool(selector["deterministic"]),
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9I selector-coordinate window profile",
        "",
        "This report is not proof evidence. It checks the DU.9H selector",
        "coordinate over disjoint sampled windows using bounded Python",
        "parallelism.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Windows: `{len(payload['windows'])}`",
        f"- Total GoodDirection cases represented: `{payload['total_case_count']}`",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection cases | Families | selector deterministic | source-index ambiguous | full-source ambiguous |",
        "| --- | ---: | ---: | --- | ---: | ---: |",
    ]
    for row in payload["windows"]:
        reports = row["reports"]
        lines.append(
            f"| `[{row['rank_start']}, {row['rank_end']})` | "
            f"`{row['case_count']}` | `{row['family_count']}` | "
            f"`{reports['template_source_indices_row_property']['deterministic']}` | "
            f"`{reports['template_source_indices']['ambiguous_coordinate_count']}` | "
            f"`{reports['template_source_indices_full_sources']['ambiguous_coordinate_count']}` |"
        )
    lines.extend(["", "## Decision", ""])
    if payload["decision"]["status"] == "accepted-sampled-selector-coordinate":
        lines.append(
            "The selector coordinate remains deterministic on all sampled "
            "windows. The next proof-producing step should expose/prove this "
            "coordinate semantically, not replay concrete rank/mask rows."
        )
    else:
        lines.append(
            "At least one sampled window failed selector-coordinate determinism. "
            "The coordinate must be refined before Lean emission."
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--windows", default=DEFAULT_WINDOWS)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    windows = parse_windows(args.windows)
    jobs = max(1, min(args.jobs, len(windows)))
    if jobs == 1:
        results = [profile_window(window) for window in windows]
    else:
        with mp.Pool(processes=jobs) as pool:
            results = pool.map(profile_window, windows)

    accepted = all(row["accepted"] for row in results)
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9I",
        "mode": "selector_coordinate_window_profile",
        "trusted_as_proof": False,
        "jobs": jobs,
        "requested_windows": windows,
        "windows": results,
        "total_case_count": sum(int(row["case_count"]) for row in results),
        "total_family_count": sum(int(row["family_count"]) for row in results),
        "decision": {
            "status": "accepted-sampled-selector-coordinate" if accepted else "rejected-selector-coordinate",
            "notes": [
                "This emits no Lean and is not trusted as proof.",
                "The result is a scaling diagnostic for the DU.9H selector coordinate.",
            ],
        },
    }
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": jobs,
        "windows": len(results),
        "total_case_count": payload["total_case_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
