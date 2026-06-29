#!/usr/bin/env python3
"""Audit whether an AP16DU candidate chunk covers its stated range.

This is diagnostic only and is not proof evidence.

AP16DU.0 emitted a surface theorem for `[0,5000)` using the first global
candidate chunk selected by AP16DT.  Before attempting to prove the
`hcomplete` premise, we must check that this candidate set actually contains
every profiled GoodDirection survivor in the theorem range.  If it does not,
the Lean target should be regenerated with a range-specific candidate catalog
or weakened to an explicit state/language slice.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_ap16i_positive_survivor_membership import (  # noqa: E402
    candidate_key,
)
from profile_ap16d_direct_coverage_obligations import (  # noqa: E402
    items_from_families,
)
from generate_pair_sign_producer_coverage_smoke import (  # noqa: E402
    collect_representative_families,
)


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du_candidate_chunk_range_coverage.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def parse_range(raw: str) -> tuple[int, int]:
    lo_s, hi_s = raw.split(":", 1)
    lo, hi = int(lo_s), int(hi_s)
    if hi < lo:
        raise ValueError(f"bad range {raw!r}: hi < lo")
    return lo, hi


def selected_candidate_keys(profile: dict[str, Any], *, chunk: int, chunk_size: int) -> set[str]:
    candidates = sorted(
        profile.get("positive_candidate_catalog", []),
        key=lambda row: (-int(row.get("case_count", 0)), row.get("key", "")),
    )
    start = chunk * chunk_size
    stop = start + chunk_size
    return {row["key"] for row in candidates[start:stop]}


def audit(
    *,
    profile: dict[str, Any],
    range_pair: tuple[int, int],
    chunk: int,
    chunk_size: int,
    jobs: int,
) -> dict[str, Any]:
    selected = selected_candidate_keys(profile, chunk=chunk, chunk_size=chunk_size)
    families, counts, windows = collect_representative_families(
        ranges=[range_pair],
        jobs=jobs,
    )
    items = items_from_families([range_pair], families)
    used: Counter[str] = Counter(candidate_key(item) for item in items)
    covered = sum(count for key, count in used.items() if key in selected)
    uncovered = sum(count for key, count in used.items() if key not in selected)
    uncovered_keys = [
        {"key": key, "case_count": count}
        for key, count in sorted(used.items(), key=lambda kv: (-kv[1], kv[0]))
        if key not in selected
    ]
    range_candidate_count = len(used)
    range_chunks_at_size = (range_candidate_count + chunk_size - 1) // chunk_size
    status = (
        "accepted-chunk-covers-range"
        if uncovered == 0
        else "rejected-chunk-does-not-cover-range"
    )
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.1-preflight",
        "mode": "candidate_chunk_range_coverage_audit",
        "trusted_as_proof": False,
        "range": list(range_pair),
        "jobs": jobs,
        "chunk": chunk,
        "chunk_size": chunk_size,
        "counts": counts,
        "windows": windows,
        "profiled_good_direction_cases": len(items),
        "selected_candidate_count": len(selected),
        "range_candidate_count": range_candidate_count,
        "range_chunks_at_chunk_size": range_chunks_at_size,
        "covered_cases_by_selected_chunk": covered,
        "uncovered_cases_by_selected_chunk": uncovered,
        "uncovered_candidate_keys": uncovered_keys[:40],
        "range_candidate_keys": [
            {"key": key, "case_count": count}
            for key, count in sorted(used.items(), key=lambda kv: (-kv[1], kv[0]))
        ],
        "top_range_candidate_keys": [
            {"key": key, "case_count": count}
            for key, count in sorted(used.items(), key=lambda kv: (-kv[1], kv[0]))[:20]
        ],
        "decision": {
            "status": status,
            "notes": (
                [
                    "selected candidate chunk covers all profiled GoodDirection survivors in the range",
                    "the existing AP16DU.0 surface range is plausible for hcomplete",
                ]
                if uncovered == 0
                else [
                    "selected global top-candidate chunk does not cover its stated range",
                    "regenerate the AP16DU surface with a range-specific candidate catalog or use an explicit state/language slice",
                ]
            ),
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.1-preflight candidate chunk range coverage",
        "",
        "This report is not proof evidence.  It checks whether the AP16DU.0",
        "candidate chunk covers the profiled GoodDirection survivors in its",
        "stated theorem range.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Range: `{payload['range']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Selected candidate chunk: `{payload['chunk']}`",
        f"- Chunk size: `{payload['chunk_size']}`",
        f"- Profiled GoodDirection cases in range: `{payload['profiled_good_direction_cases']}`",
        f"- Candidate groups used in range: `{payload['range_candidate_count']}`",
        f"- Range chunks needed at this size: `{payload['range_chunks_at_chunk_size']}`",
        f"- Cases covered by selected chunk: `{payload['covered_cases_by_selected_chunk']}`",
        f"- Cases not covered by selected chunk: `{payload['uncovered_cases_by_selected_chunk']}`",
        "",
        "## Top Range Candidate Keys",
        "",
        "| Key | Cases |",
        "| --- | ---: |",
    ]
    for row in payload["top_range_candidate_keys"]:
        lines.append(f"| `{row['key']}` | {row['case_count']} |")
    if payload["uncovered_candidate_keys"]:
        lines.extend([
            "",
            "## Top Uncovered Candidate Keys",
            "",
            "| Key | Cases |",
            "| --- | ---: |",
        ])
        for row in payload["uncovered_candidate_keys"][:20]:
            lines.append(f"| `{row['key']}` | {row['case_count']} |")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    return "\n".join(lines) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--range", default="0:5000")
    parser.add_argument("--chunk", type=int, default=0)
    parser.add_argument("--chunk-size", type=int, default=64)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    profile = read_json(args.profile)
    payload = audit(
        profile=profile,
        range_pair=parse_range(args.range),
        chunk=args.chunk,
        chunk_size=args.chunk_size,
        jobs=args.jobs,
    )
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(f"status={payload['decision']['status']}")
    print(f"profiled_good_direction_cases={payload['profiled_good_direction_cases']}")
    print(f"covered={payload['covered_cases_by_selected_chunk']}")
    print(f"uncovered={payload['uncovered_cases_by_selected_chunk']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
