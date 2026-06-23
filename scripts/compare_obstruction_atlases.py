"""Compare obstruction-atlas diagnostics across rank windows.

This script is deliberately untrusted and emits no Lean evidence.  It consumes
``obstruction_atlas_*.json`` files and decides whether the same small set of
theorem-candidate families is stable enough to justify a next Lean theorem
phase.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
GENERATED_DIR = REPO_ROOT / "scripts" / "generated"
DEFAULT_WINDOWS = (
    (0, 100_000),
    (10_000_000, 10_100_000),
    (30_000_000, 30_100_000),
    (60_000_000, 60_100_000),
    (90_000_000, 90_100_000),
)
DEFAULT_OUTPUT_JSON = GENERATED_DIR / "obstruction_atlas_cross_window_summary.json"
DEFAULT_OUTPUT_MD = GENERATED_DIR / "obstruction_atlas_cross_window_summary.md"


def default_atlas_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"obstruction_atlas_{start:09d}_{end:09d}.json"


def display_path(path: Path) -> str:
    try:
        return str(path.relative_to(REPO_ROOT))
    except ValueError:
        return str(path)


def load_json(path: Path) -> dict[str, Any]:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    write_text(path, json.dumps(payload, indent=2, sort_keys=True) + "\n")


def summarize_atlas(path: Path, payload: dict[str, Any]) -> dict[str, Any]:
    by_case = payload["dominant_residuals_by_case_count"]
    by_shape = payload["dominant_residuals_by_shape_count"]
    top_case = by_case[:3]
    top_shape = by_shape[:3]
    return {
        "path": display_path(path),
        "rank_window": payload["rank_window"],
        "shaped_residual_cases": payload["residual_totals"]["case_count_with_shapes"],
        "shaped_residual_families": payload["residual_totals"]["shape_count"],
        "top3_case_share": payload["residual_totals"]["top3_case_share"],
        "top3_shape_share": payload["residual_totals"]["top3_shape_share"],
        "top3_case_filters": [row["filter"] for row in top_case],
        "top3_case_filter_set": sorted(row["filter"] for row in top_case),
        "top3_shape_filters": [row["filter"] for row in top_shape],
        "largest_case_family": by_case[0]["filter"] if by_case else None,
        "largest_shape_family": by_shape[0]["filter"] if by_shape else None,
        "dominant_residuals_by_case_count": top_case,
        "dominant_residuals_by_shape_count": top_shape,
    }


def build_summary(
    atlas_paths: list[Path],
    *,
    min_top3_case_share: float,
) -> dict[str, Any]:
    atlases = [(path, load_json(path)) for path in atlas_paths]
    window_summaries = [summarize_atlas(path, payload) for path, payload in atlases]
    top3_sets = {tuple(summary["top3_case_filter_set"]) for summary in window_summaries}
    all_top3_case_share_ok = all(
        summary["top3_case_share"] >= min_top3_case_share
        for summary in window_summaries
    )
    stable_top3_case_set = len(top3_sets) == 1

    aggregate: dict[str, dict[str, Any]] = defaultdict(
        lambda: {
            "case_count_sum": 0,
            "shape_count_sum": 0,
            "windows_as_top3_case": 0,
            "windows_as_top3_shape": 0,
            "windows_as_largest_case": 0,
            "windows_as_largest_shape": 0,
        }
    )
    for summary in window_summaries:
        for row in summary["dominant_residuals_by_case_count"]:
            entry = aggregate[row["filter"]]
            entry["case_count_sum"] += row["case_count"]
            entry["shape_count_sum"] += row["shape_count"]
            entry["windows_as_top3_case"] += 1
        for row in summary["dominant_residuals_by_shape_count"]:
            aggregate[row["filter"]]["windows_as_top3_shape"] += 1
        if summary["largest_case_family"] is not None:
            aggregate[summary["largest_case_family"]]["windows_as_largest_case"] += 1
        if summary["largest_shape_family"] is not None:
            aggregate[summary["largest_shape_family"]]["windows_as_largest_shape"] += 1

    largest_shape_votes = Counter(
        summary["largest_shape_family"] for summary in window_summaries
        if summary["largest_shape_family"] is not None
    )
    largest_case_votes = Counter(
        summary["largest_case_family"] for summary in window_summaries
        if summary["largest_case_family"] is not None
    )
    aggregate_rows = [
        {"filter": name, **values}
        for name, values in aggregate.items()
    ]
    aggregate_rows.sort(
        key=lambda row: (
            -row["shape_count_sum"],
            -row["case_count_sum"],
            row["filter"],
        )
    )
    recommended = aggregate_rows[0]["filter"] if aggregate_rows else None
    accepted = all_top3_case_share_ok and stable_top3_case_set
    notes: list[str] = []
    if all_top3_case_share_ok:
        notes.append(
            f"all windows have top-three case share >= {min_top3_case_share:.3f}"
        )
    else:
        notes.append(
            f"some windows have top-three case share below {min_top3_case_share:.3f}"
        )
    if stable_top3_case_set:
        notes.append("the same top-three case-family set appears in every window")
    else:
        notes.append("the top-three case-family set is not stable across windows")
    if recommended is not None:
        notes.append(f"aggregate largest shape burden is {recommended}")

    return {
        "schema_version": 1,
        "mode": "obstruction-atlas-cross-window-summary",
        "trusted_as_proof": False,
        "emits_lean_evidence": False,
        "min_top3_case_share": min_top3_case_share,
        "window_count": len(window_summaries),
        "windows": window_summaries,
        "aggregate_by_filter": aggregate_rows,
        "largest_shape_family_votes": dict(largest_shape_votes),
        "largest_case_family_votes": dict(largest_case_votes),
        "decision": {
            "status": "phase6s_complete" if accepted else "phase6s_rejected",
            "accepted_for_phase_6t": accepted,
            "recommended_next_phase": recommended if accepted else None,
            "all_top3_case_share_ok": all_top3_case_share_ok,
            "stable_top3_case_set": stable_top3_case_set,
            "notes": notes,
        },
    }


def table(rows: list[dict[str, Any]], columns: tuple[str, ...]) -> str:
    headers = {
        "window": "Window",
        "top3_case_share": "Top3 Case Share",
        "largest_case_family": "Largest Cases",
        "largest_shape_family": "Largest Shapes",
        "filter": "Filter",
        "case_count_sum": "Case Sum",
        "shape_count_sum": "Shape Sum",
        "windows_as_top3_case": "Top3 Case Windows",
        "windows_as_top3_shape": "Top3 Shape Windows",
    }
    lines = [
        "| " + " | ".join(headers[column] for column in columns) + " |",
        "| " + " | ".join("---:" if column.endswith("sum") or column.startswith("windows") or column == "top3_case_share" else "---" for column in columns) + " |",
    ]
    for row in rows:
        cells: list[str] = []
        for column in columns:
            value = row[column]
            if isinstance(value, float):
                cells.append(f"{value:.3f}")
            elif isinstance(value, int):
                cells.append(f"{value:,}")
            else:
                cells.append(str(value))
        lines.append("| " + " | ".join(cells) + " |")
    return "\n".join(lines)


def render_markdown(summary: dict[str, Any]) -> str:
    decision = summary["decision"]
    window_rows = []
    for window in summary["windows"]:
        bounds = window["rank_window"]
        window_rows.append({
            "window": f"[{bounds['start']}, {bounds['end']})",
            "top3_case_share": window["top3_case_share"],
            "largest_case_family": window["largest_case_family"],
            "largest_shape_family": window["largest_shape_family"],
        })
    aggregate_rows = summary["aggregate_by_filter"][:8]
    lines = [
        "# Cross-Window Obstruction Atlas Summary",
        "",
        "This diagnostic report is not trusted proof and emits no Lean evidence.",
        "",
        "## Decision",
        "",
        f"- Status: `{decision['status']}`",
        f"- Accepted for Phase 6T: `{decision['accepted_for_phase_6t']}`",
        f"- Recommended next phase: `{decision['recommended_next_phase']}`",
        "",
    ]
    lines.extend(f"- {note}" for note in decision["notes"])
    lines.extend([
        "",
        "## Windows",
        "",
        table(
            window_rows,
            (
                "window",
                "top3_case_share",
                "largest_case_family",
                "largest_shape_family",
            ),
        ),
        "",
        "## Aggregate Families",
        "",
        table(
            aggregate_rows,
            (
                "filter",
                "case_count_sum",
                "shape_count_sum",
                "windows_as_top3_case",
                "windows_as_top3_shape",
            ),
        ),
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Compare obstruction atlas reports across windows.",
    )
    parser.add_argument("atlas_json", nargs="*", type=Path)
    parser.add_argument("--output-json", type=Path, default=DEFAULT_OUTPUT_JSON)
    parser.add_argument("--output-md", type=Path, default=DEFAULT_OUTPUT_MD)
    parser.add_argument("--min-top3-case-share", type=float, default=0.8)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    paths = args.atlas_json or [
        default_atlas_path(start, end) for start, end in DEFAULT_WINDOWS
    ]
    missing = [path for path in paths if not path.exists()]
    if missing:
        raise SystemExit(
            "missing atlas JSON files: "
            + ", ".join(display_path(path) for path in missing)
        )
    summary = build_summary(paths, min_top3_case_share=args.min_top3_case_share)
    write_json(args.output_json, summary)
    write_text(args.output_md, render_markdown(summary))
    decision = summary["decision"]
    print("cross-window obstruction atlas summary")
    print(f"windows: {summary['window_count']}")
    print(f"status: {decision['status']}")
    print(f"recommended next phase: {decision['recommended_next_phase']}")
    for note in decision["notes"]:
        print(f"- {note}")
    print(f"json: {display_path(args.output_json)}")
    print(f"markdown: {display_path(args.output_md)}")


if __name__ == "__main__":
    main()
