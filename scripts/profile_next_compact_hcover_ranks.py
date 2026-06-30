#!/usr/bin/env python3
"""Find nearby identity ranks that still need compact hcover roots.

This diagnostic is not proof evidence and emits no Lean.  It scans a bounded
rank window with the existing exact translation classifier, records
identity-linear ranks with GoodDirection survivor masks, and checks whether the
compact Walsh GoodDirection-to-good-mask cover modules already exist.

The purpose is to grow compact hcover roots deliberately instead of importing
heavy singleton coverage modules through broad roots.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_symbolic_row_extraction_families import classify_choice  # noqa: E402


BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9gf_next_compact_hcover_ranks.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def cover_module_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomCoverRank{rank}Smoke.lean"


def du9p_batch_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomDU9PRank{rank}BatchSmoke.lean"


def split_trace_root_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshVectorTraceRank{rank}SplitSmoke.lean"


def selected_impacts_path(rank: int) -> Path:
    return BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomRank{rank}SelectedImpactsSmoke.lean"


def scan_rank(rank: int) -> dict[str, Any]:
    probe = classify_choice(rank, 0)
    if probe is None:
        return {
            "rank": rank,
            "identity": False,
            "good_masks": [],
            "not_good_masks": 0,
            "uncovered_masks": 0,
            "non_two_source_masks": 0,
        }

    good_masks: list[int] = []
    not_good = 0
    uncovered = 0
    non_two_source = 0
    statuses: Counter[str] = Counter()
    for mask in range(64):
        result = classify_choice(rank, mask)
        if result is None:
            raise RuntimeError(f"rank {rank} changed identity status at mask {mask}")
        status = str(result["status"])
        statuses[status] += 1
        if status == "not_good_direction":
            not_good += 1
        elif status == "covered":
            good_masks.append(mask)
        elif status == "uncovered":
            uncovered += 1
        elif status == "non_two_source":
            non_two_source += 1
        else:
            raise RuntimeError(f"unknown status {status!r} for rank {rank}, mask {mask}")

    return {
        "rank": rank,
        "identity": True,
        "good_masks": good_masks,
        "good_mask_count": len(good_masks),
        "not_good_masks": not_good,
        "uncovered_masks": uncovered,
        "non_two_source_masks": non_two_source,
        "status_counts": dict(sorted(statuses.items())),
        "compact_cover_module": str(cover_module_path(rank)),
        "compact_cover_exists": cover_module_path(rank).exists(),
        "du9p_batch_module": str(du9p_batch_path(rank)),
        "du9p_batch_exists": du9p_batch_path(rank).exists(),
        "split_trace_root": str(split_trace_root_path(rank)),
        "split_trace_root_exists": split_trace_root_path(rank).exists(),
        "selected_impacts_root": str(selected_impacts_path(rank)),
        "selected_impacts_root_exists": selected_impacts_path(rank).exists(),
    }


def windows(rank_start: int, limit: int, jobs: int) -> list[tuple[int, int]]:
    if limit <= 0:
        return []
    jobs = max(1, jobs)
    chunk = (limit + jobs - 1) // jobs
    return [
        (rank_start + offset, min(chunk, limit - offset))
        for offset in range(0, limit, chunk)
    ]


def scan_window(args: tuple[int, int]) -> list[dict[str, Any]]:
    start, limit = args
    return [scan_rank(rank) for rank in range(start, start + limit)]


def profile(*, rank_start: int, limit: int, jobs: int, target_missing: int) -> dict[str, Any]:
    if jobs <= 1:
        rows = scan_window((rank_start, limit))
    else:
        rows = []
        with ProcessPoolExecutor(max_workers=jobs) as pool:
            futures = [pool.submit(scan_window, window) for window in windows(rank_start, limit, jobs)]
            for future in as_completed(futures):
                rows.extend(future.result())
        rows.sort(key=lambda item: int(item["rank"]))

    identity_rows = [row for row in rows if row["identity"]]
    good_rows = [row for row in identity_rows if int(row.get("good_mask_count", 0)) > 0]
    missing_rows = [
        row for row in good_rows
        if not bool(row["compact_cover_exists"]) or not bool(row["du9p_batch_exists"])
    ]
    missing_rows.sort(key=lambda item: int(item["rank"]))
    target_rows = missing_rows[:target_missing]

    status_counts: Counter[str] = Counter()
    for row in identity_rows:
        status_counts.update(row.get("status_counts", {}))

    decision_status = "accepted-next-targets" if target_rows else "no-missing-targets-in-window"
    notes = [
        "diagnostic only: this is not proof evidence",
        "compact cover roots should still be generated and Lean-checked separately",
    ]
    if not target_rows:
        notes.append("increase --limit or --rank-start to find the next missing compact hcover ranks")

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9GF",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "rank_count": limit,
        "jobs": jobs,
        "identity_rank_count": len(identity_rows),
        "identity_ranks_with_good_masks": len(good_rows),
        "good_direction_cases": sum(int(row.get("good_mask_count", 0)) for row in good_rows),
        "not_good_direction_masks": sum(int(row.get("not_good_masks", 0)) for row in identity_rows),
        "uncovered_masks": sum(int(row.get("uncovered_masks", 0)) for row in identity_rows),
        "non_two_source_masks": sum(int(row.get("non_two_source_masks", 0)) for row in identity_rows),
        "status_counts": dict(sorted(status_counts.items())),
        "identity_rows": identity_rows,
        "missing_compact_cover_rows": missing_rows,
        "recommended_target_rows": target_rows,
        "decision": {
            "status": decision_status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Rank range: `[{payload['rank_start']},{payload['rank_end']})`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Identity ranks: `{payload['identity_rank_count']}`",
        f"- Identity ranks with GoodDirection masks: `{payload['identity_ranks_with_good_masks']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Not-GoodDirection masks: `{payload['not_good_direction_masks']}`",
        f"- Uncovered masks: `{payload['uncovered_masks']}`",
        f"- Non-two-source masks: `{payload['non_two_source_masks']}`",
        "",
        "## Recommended Missing Targets",
        "",
        "| Rank | Good masks | Compact cover | DU9P batch | Split trace | Selected impacts |",
        "| ---: | ---: | :---: | :---: | :---: | :---: |",
    ]
    for row in payload["recommended_target_rows"]:
        lines.append(
            f"| {row['rank']} | {row['good_mask_count']} | "
            f"{'yes' if row['compact_cover_exists'] else 'no'} | "
            f"{'yes' if row['du9p_batch_exists'] else 'no'} | "
            f"{'yes' if row['split_trace_root_exists'] else 'no'} | "
            f"{'yes' if row['selected_impacts_root_exists'] else 'no'} |"
        )

    lines.extend([
        "",
        "## Identity Rank Status",
        "",
        "| Rank | Good masks | Not-Good | Compact cover | DU9P batch |",
        "| ---: | ---: | ---: | :---: | :---: |",
    ])
    for row in payload["identity_rows"]:
        lines.append(
            f"| {row['rank']} | {row.get('good_mask_count', 0)} | "
            f"{row.get('not_good_masks', 0)} | "
            f"{'yes' if row.get('compact_cover_exists') else 'no'} | "
            f"{'yes' if row.get('du9p_batch_exists') else 'no'} |"
        )

    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=64)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--target-missing", type=int, default=4)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    payload = profile(
        rank_start=args.rank_start,
        limit=args.limit,
        jobs=args.jobs,
        target_missing=args.target_missing,
    )
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")
    print(f"status={payload['decision']['status']}")
    print(f"recommended_targets={[row['rank'] for row in payload['recommended_target_rows']]}")


if __name__ == "__main__":
    main()
