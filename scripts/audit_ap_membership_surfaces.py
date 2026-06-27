#!/usr/bin/env python3
"""Audit the current AP membership theorem surface.

This diagnostic is not proof evidence.  It checks the repository for the
specific theorem shape needed after Phase 6Z.6K.8AP:

    GoodDirectionAtRank + identity-linear
      -> exists key, source predicate/facts and row predicate/facts.

The AP.5 catalog adapter is useful only if some generated or hand-written
module can prove that implication without rank/mask replay.  This script keeps
the plan honest by distinguishing adapter surfaces from finite replay.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap7_membership_surface_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

REPO_ROOT = Path(__file__).resolve().parents[1]

SEARCH_ROOTS = [
    REPO_ROOT / "Cuboctahedron",
    REPO_ROOT / "scripts",
]

ADAPTER_PATTERNS = [
    "SourceRowPredicateGoodBridgeOnRange",
    "SourceRowFactsGoodBridgeOnRange",
    "SourceRowPredicateGoodCatalogOnRange",
    "SourceRowFactsGoodCatalogOnRange",
]

REPLAY_PATTERNS = [
    "interval_cases r",
    "fin_cases mask",
]

GOOD_TO_SOURCE_PATTERNS = [
    "GoodDirectionAtRank",
    "SourceIndexStateSourcePredicate",
]

GOOD_TO_ROW_PATTERNS = [
    "GoodDirectionAtRank",
    ".template.Rows",
]


def iter_text_files() -> list[Path]:
    result: list[Path] = []
    for root in SEARCH_ROOTS:
        for path in root.rglob("*"):
            if path.suffix in {".lean", ".py", ".md"} and path.is_file():
                result.append(path)
    return sorted(result)


def rel(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def matching_lines(path: Path, needles: list[str], *, require_all: bool = False) -> list[dict[str, Any]]:
    matches: list[dict[str, Any]] = []
    try:
        text = path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return matches
    for line_no, line in enumerate(text.splitlines(), start=1):
        if (all(needle in line for needle in needles)
                if require_all
                else any(needle in line for needle in needles)):
            matches.append({
                "file": rel(path),
                "line": line_no,
                "text": line.strip(),
            })
    return matches


def collect() -> dict[str, Any]:
    files = iter_text_files()
    adapter_hits: list[dict[str, Any]] = []
    replay_hits: list[dict[str, Any]] = []
    good_to_source_same_line: list[dict[str, Any]] = []
    good_to_row_same_line: list[dict[str, Any]] = []

    for path in files:
        adapter_hits.extend(matching_lines(path, ADAPTER_PATTERNS))
        replay_hits.extend(matching_lines(path, REPLAY_PATTERNS))
        good_to_source_same_line.extend(
            matching_lines(path, GOOD_TO_SOURCE_PATTERNS, require_all=True)
        )
        good_to_row_same_line.extend(
            matching_lines(path, GOOD_TO_ROW_PATTERNS, require_all=True)
        )

    finite_replay_files = sorted({
        item["file"]
        for item in replay_hits
        if "SourceIndexStateBoundedAPSmoke" in item["file"]
        or item["file"].endswith("generate_source_index_state_bounded_coverage.py")
    })

    # Same-line hits are intentionally conservative.  They do not prove the
    # theorem is absent, but they catch the exact compact shape we would expect
    # from a reusable bridge.  The broader `rg` audit in SYMMETRY_PLAN records
    # the same conclusion manually.
    has_compact_good_to_source = any(
        "abbrev SourceRow" not in item["text"]
        and "Generated membership chunks" not in item["text"]
        for item in good_to_source_same_line
    )
    has_compact_good_to_row = any(
        "abbrev SourceRow" not in item["text"]
        and "Generated membership chunks" not in item["text"]
        for item in good_to_row_same_line
    )

    status = "rejected-as-production-membership-route"
    notes = [
        "AP catalog adapters are present and useful as export erasure",
        "current nonempty AP membership evidence still appears only in finite replay surfaces",
        "no compact reusable GoodDirection-to-source/row implication was detected",
        "next step should be a source/row language theorem, not a larger catalog dispatcher",
    ]
    if has_compact_good_to_source and has_compact_good_to_row:
        status = "needs-human-inspection"
        notes = [
            "detected a possible compact GoodDirection-to-source/row theorem surface",
            "inspect same-line hits before rejecting catalog membership",
        ]

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.7",
        "mode": "ap_membership_surface_audit",
        "trusted_as_proof": False,
        "files_scanned": len(files),
        "adapter_hit_count": len(adapter_hits),
        "replay_hit_count": len(replay_hits),
        "finite_replay_files": finite_replay_files,
        "good_to_source_same_line_hits": good_to_source_same_line[:40],
        "good_to_row_same_line_hits": good_to_row_same_line[:40],
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.7 AP Membership Surface Audit",
        "",
        f"Status: `{payload['decision']['status']}`.",
        "",
        "This diagnostic is not proof evidence.  It checks whether the current",
        "repository contains a compact reusable theorem surface deriving source/row",
        "membership from `GoodDirectionAtRank`, or whether AP membership still",
        "depends on finite rank/mask replay.",
        "",
        f"- Files scanned: `{payload['files_scanned']}`",
        f"- Adapter hits: `{payload['adapter_hit_count']}`",
        f"- Replay hits: `{payload['replay_hit_count']}`",
        "",
        "## Finite Replay Files",
        "",
    ]
    for item in payload["finite_replay_files"]:
        lines.append(f"- `{item}`")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Same-Line GoodDirection/Source Hits",
        "",
    ])
    if not payload["good_to_source_same_line_hits"]:
        lines.append("- None.")
    else:
        for hit in payload["good_to_source_same_line_hits"][:12]:
            lines.append(f"- `{hit['file']}:{hit['line']}` `{hit['text']}`")
    lines.extend([
        "",
        "## Same-Line GoodDirection/Row Hits",
        "",
    ])
    if not payload["good_to_row_same_line_hits"]:
        lines.append("- None.")
    else:
        for hit in payload["good_to_row_same_line_hits"][:12]:
            lines.append(f"- `{hit['file']}:{hit['line']}` `{hit['text']}`")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = collect()
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.md.write_text(markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "files_scanned": payload["files_scanned"],
        "replay_hit_count": payload["replay_hit_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2))


if __name__ == "__main__":
    main()
