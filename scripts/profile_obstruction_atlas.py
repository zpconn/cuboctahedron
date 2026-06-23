"""Build an obstruction atlas from exact diagnostic profiles.

This script is deliberately untrusted and emits no Lean evidence.  It reuses
the exact profiling logic from ``profile_symmetry_compression.py`` and turns
the dominant residual families into a theorem-candidate report.
"""

from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path
from typing import Any

from exact_profile import (
    EXPECTED_PAIR_WORDS,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    mat_mul,
    multinomial_count,
)
from profile_symmetry_compression import CombinedResidualPortfolioProfiler


REPO_ROOT = Path(__file__).resolve().parents[1]
GENERATED_DIR = REPO_ROOT / "scripts" / "generated"


class WindowedCombinedResidualPortfolioProfiler(CombinedResidualPortfolioProfiler):
    """Combined portfolio profiler restricted to an arbitrary rank window."""

    def __init__(
        self,
        *,
        rank_start: int,
        rank_end: int,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        super().__init__(
            limit=rank_end,
            max_lean_leaves=max_lean_leaves,
            warn_lean_leaves=warn_lean_leaves,
            max_distinct_tracked=max_distinct_tracked,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
            use_d4_transport=use_d4_transport,
        )
        self.rank_start = rank_start
        self.rank_end = rank_end
        self.limit = rank_end - rank_start

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_hi <= self.rank_start or rank_lo >= self.rank_end:
                return
            if len(prefix) == 13:
                if self.rank_start <= rank_lo < self.rank_end:
                    self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                child_hi = child_lo + child_width
                if child_hi > self.rank_start and child_lo < self.rank_end:
                    prefix.append(pair_id)
                    pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                    rec(child_lo)
                    pref.pop()
                    prefix.pop()
                remaining[pair_id] += 1
                child_lo = child_hi

        rec(0)


def default_output_json(start: int, end: int) -> Path:
    return GENERATED_DIR / f"obstruction_atlas_{start:09d}_{end:09d}.json"


def default_output_md(start: int, end: int) -> Path:
    return GENERATED_DIR / f"obstruction_atlas_{start:09d}_{end:09d}.md"


def load_json(path: Path) -> dict[str, Any]:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    write_text(path, json.dumps(payload, indent=2, sort_keys=True) + "\n")


def display_path(path: Path) -> str:
    try:
        return str(path.relative_to(REPO_ROOT))
    except ValueError:
        return str(path)


def portfolio_window(payload: dict[str, Any], fallback_start: int, fallback_end: int) -> dict[str, int]:
    if "rank_window" in payload:
        window = payload["rank_window"]
        return {
            "start": int(window["start"]),
            "end": int(window["end"]),
            "width": int(window["width"]),
        }
    start = fallback_start
    end = int(payload.get("profile_limit") or fallback_end)
    return {"start": start, "end": end, "width": end - start}


def tracker_count(tracker: dict[str, Any] | None) -> int:
    if not tracker:
        return 0
    value = tracker.get("count")
    if value is not None:
        return int(value)
    return int(tracker.get("lower_bound", 0))


def tracker_exact(tracker: dict[str, Any] | None) -> bool:
    return bool(tracker and tracker.get("exact"))


def filter_kind(filter_name: str) -> str:
    if filter_name.startswith("translation."):
        return "translation"
    if filter_name.startswith("nonidentity."):
        return "nonidentity"
    return "mixed"


def theorem_candidate(filter_name: str) -> dict[str, Any]:
    templates = {
        "translation.farkas_survivor": {
            "candidate": "shared source-Farkas skeleton or stronger survivor-system theorem",
            "why": (
                "dominant translation residual after GoodDirection; proof burden "
                "comes from many normalized Farkas survivor shapes"
            ),
            "next_lean_theorem": (
                "prove a reusable transport theorem from a compact survivor "
                "signature/source-term skeleton to TranslationCaseKilled"
            ),
        },
        "nonidentity.forced_zero_denominator": {
            "candidate": "uniform forced-zero denominator obstruction",
            "why": (
                "dominant nonidentity residual; a feasible nonidentity orbit "
                "requires every forced denominator to be strictly nonzero with "
                "the correct sign"
            ),
            "next_lean_theorem": (
                "prove that a transformed normal orthogonal to the forced axis "
                "contradicts NonIdentityAxisConstraints for all matching states"
            ),
        },
        "nonidentity.bad_pair_balance": {
            "candidate": "forced-sign balance invariant",
            "why": "many ranks die because the axis-forced signs cannot realize all faces once",
            "next_lean_theorem": (
                "generalize the existing bad-balance checker to semantic "
                "classes larger than one forced sequence"
            ),
        },
        "nonidentity.terminal_algebra.axis_misses_start_interior": {
            "candidate": "start-face separating inequality family",
            "why": "candidate axis data misses the strict interior of the start face",
            "next_lean_theorem": (
                "transport a separating strict inequality across canonical "
                "axis/start-face classes"
            ),
        },
    }
    return templates.get(
        filter_name,
        {
            "candidate": f"global lemma for {filter_name}",
            "why": "residual family appears in the exact portfolio profile",
            "next_lean_theorem": "inspect atlas samples and formulate a semantic obstruction theorem",
        },
    )


def build_atlas(
    portfolio: dict[str, Any],
    *,
    source: dict[str, Any],
    rank_start: int,
    rank_end: int,
    max_lean_leaves: int,
    warn_lean_leaves: int,
) -> dict[str, Any]:
    window = portfolio_window(portfolio, rank_start, rank_end)
    primary = portfolio["primary_portfolio"]
    counts_by_filter = primary.get("first_filter_case_counts", {})
    shapes_by_filter = primary.get("unique_primary_shapes_by_filter", {})
    samples_by_filter = primary.get("samples", {})

    rows: list[dict[str, Any]] = []
    total_shape_count = 0
    total_case_count = 0
    for filter_name, tracker in shapes_by_filter.items():
        shape_count = tracker_count(tracker)
        case_count = int(counts_by_filter.get(filter_name, 0))
        total_shape_count += shape_count
        total_case_count += case_count
        candidate = theorem_candidate(filter_name)
        rows.append({
            "filter": filter_name,
            "kind": filter_kind(filter_name),
            "case_count": case_count,
            "shape_count": shape_count,
            "exact_shape_count": tracker_exact(tracker),
            "case_share_of_shaped_residual": None,
            "shape_share_of_total": None,
            "candidate": candidate["candidate"],
            "why": candidate["why"],
            "next_lean_theorem": candidate["next_lean_theorem"],
            "samples": samples_by_filter.get(filter_name, [])[:5],
            "shape_key_samples": tracker.get("samples", [])[:5],
        })

    for row in rows:
        row["case_share_of_shaped_residual"] = (
            row["case_count"] / total_case_count if total_case_count else 0.0
        )
        row["shape_share_of_total"] = (
            row["shape_count"] / total_shape_count if total_shape_count else 0.0
        )

    dominant_by_shapes = sorted(
        rows,
        key=lambda row: (-row["shape_count"], -row["case_count"], row["filter"]),
    )
    dominant_by_cases = sorted(
        rows,
        key=lambda row: (-row["case_count"], -row["shape_count"], row["filter"]),
    )
    top3_case_share = sum(row["case_count"] for row in dominant_by_cases[:3])
    top3_shape_share = sum(row["shape_count"] for row in dominant_by_shapes[:3])
    decision_notes = []
    if total_shape_count > max_lean_leaves:
        decision_notes.append(
            f"shaped residual families total {total_shape_count} leaves, above {max_lean_leaves}"
        )
    if dominant_by_shapes:
        largest = dominant_by_shapes[0]
        decision_notes.append(
            f"largest shaped residual is {largest['filter']} with {largest['shape_count']} shapes"
        )
    if total_case_count and top3_case_share / total_case_count >= 0.8:
        decision_notes.append(
            "top three theorem candidates cover at least 80% of shaped residual cases"
        )
    else:
        decision_notes.append(
            "top three theorem candidates do not cover 80% of shaped residual cases"
        )

    return {
        "schema_version": 1,
        "mode": "obstruction-atlas",
        "trusted_as_proof": False,
        "emits_lean_evidence": False,
        "rank_window": window,
        "source": source,
        "actual_counts": portfolio.get("actual_counts", {}),
        "generic_zero_leaf_filters": {
            name: count
            for name, count in sorted(counts_by_filter.items())
            if name not in shapes_by_filter
        },
        "residual_totals": {
            "case_count_with_shapes": total_case_count,
            "shape_count": total_shape_count,
            "top3_case_coverage": top3_case_share,
            "top3_shape_coverage": top3_shape_share,
            "top3_case_share": top3_case_share / total_case_count
            if total_case_count else 0.0,
            "top3_shape_share": top3_shape_share / total_shape_count
            if total_shape_count else 0.0,
        },
        "dominant_residuals_by_shape_count": dominant_by_shapes,
        "dominant_residuals_by_case_count": dominant_by_cases,
        "decision_gate": {
            "max_lean_leaves": max_lean_leaves,
            "warn_lean_leaves": warn_lean_leaves,
            "status": "needs_new_global_lemma",
            "notes": decision_notes,
            "recommended_next_phase": (
                dominant_by_shapes[0]["filter"] if dominant_by_shapes else None
            ),
        },
    }


def md_table(rows: list[dict[str, Any]]) -> str:
    lines = [
        "| Filter | Cases | Shapes | Candidate theorem |",
        "| --- | ---: | ---: | --- |",
    ]
    for row in rows:
        lines.append(
            "| {filter} | {cases:,} | {shapes:,} | {candidate} |".format(
                filter=row["filter"],
                cases=row["case_count"],
                shapes=row["shape_count"],
                candidate=row["candidate"],
            )
        )
    return "\n".join(lines)


def render_markdown(atlas: dict[str, Any]) -> str:
    window = atlas["rank_window"]
    totals = atlas["residual_totals"]
    decision = atlas["decision_gate"]
    counts = atlas["actual_counts"]
    dominant_shapes = atlas["dominant_residuals_by_shape_count"][:8]
    dominant_cases = atlas["dominant_residuals_by_case_count"][:8]

    lines = [
        "# Obstruction Atlas",
        "",
        "This diagnostic report is not trusted proof and emits no Lean evidence.",
        "",
        "## Window",
        "",
        f"- Rank window: `[{window['start']}, {window['end']})`",
        f"- Width: `{window['width']}`",
        f"- Pair words scanned: `{counts.get('pair_words_scanned', 0)}`",
        f"- Identity words: `{counts.get('identity_words', 0)}`",
        f"- Nonidentity words: `{counts.get('nonidentity_words', 0)}`",
        "",
        "## Residual Totals",
        "",
        f"- Shaped residual cases: `{totals['case_count_with_shapes']}`",
        f"- Shaped residual families: `{totals['shape_count']}`",
        f"- Top-three case share: `{totals['top3_case_share']:.3f}`",
        f"- Top-three shape share: `{totals['top3_shape_share']:.3f}`",
        "",
        "## Dominant Residuals By Shape Count",
        "",
        md_table(dominant_shapes),
        "",
        "## Dominant Residuals By Case Count",
        "",
        md_table(dominant_cases),
        "",
        "## Decision Gate",
        "",
        f"- Status: `{decision['status']}`",
        f"- Recommended next phase: `{decision['recommended_next_phase']}`",
        "",
    ]
    lines.extend(f"- {note}" for note in decision["notes"])
    lines.append("")
    lines.append("## Sample Provenance")
    lines.append("")
    for row in dominant_shapes[:4]:
        lines.append(f"### `{row['filter']}`")
        lines.append("")
        lines.append(f"- Why: {row['why']}")
        lines.append(f"- Next Lean theorem: {row['next_lean_theorem']}")
        lines.append("- Samples:")
        for sample in row["samples"][:3]:
            lines.append(f"  - `{json.dumps(sample, sort_keys=True)}`")
        lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build an obstruction atlas from exact portfolio profiles.",
    )
    parser.add_argument("--start-rank", type=int, default=0)
    parser.add_argument("--end-rank", type=int, default=100_000)
    parser.add_argument(
        "--from-portfolio-json",
        type=Path,
        help="reuse an existing combined-residual portfolio JSON instead of recomputing",
    )
    parser.add_argument("--output-json", type=Path)
    parser.add_argument("--output-md", type=Path)
    parser.add_argument("--max-lean-leaves", type=int, default=2_000)
    parser.add_argument("--warn-lean-leaves", type=int, default=900)
    parser.add_argument("--max-distinct-tracked", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument("--no-d4-transport", action="store_true")
    return parser.parse_args()


def validate_args(args: argparse.Namespace) -> None:
    if not (0 <= args.start_rank <= EXPECTED_PAIR_WORDS):
        raise SystemExit("--start-rank is outside the pair-word range")
    if not (args.start_rank < args.end_rank <= EXPECTED_PAIR_WORDS):
        raise SystemExit("--end-rank must be greater than start and within range")
    if args.max_lean_leaves <= 0:
        raise SystemExit("--max-lean-leaves must be positive")
    if args.warn_lean_leaves <= 0:
        raise SystemExit("--warn-lean-leaves must be positive")
    if args.max_distinct_tracked <= 0:
        raise SystemExit("--max-distinct-tracked must be positive")
    if args.sample_limit <= 0:
        raise SystemExit("--sample-limit must be positive")


def main() -> None:
    args = parse_args()
    validate_args(args)
    output_json = args.output_json or default_output_json(args.start_rank, args.end_rank)
    output_md = args.output_md or default_output_md(args.start_rank, args.end_rank)

    started = time.monotonic()
    if args.from_portfolio_json is not None:
        portfolio = load_json(args.from_portfolio_json)
        source = {
            "kind": "existing-combined-residual-portfolio-json",
            "path": str(args.from_portfolio_json.relative_to(REPO_ROOT))
            if args.from_portfolio_json.is_relative_to(REPO_ROOT)
            else str(args.from_portfolio_json),
        }
    else:
        profiler = WindowedCombinedResidualPortfolioProfiler(
            rank_start=args.start_rank,
            rank_end=args.end_rank,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        profiler.traverse()
        portfolio = profiler.payload(elapsed_seconds=time.monotonic() - started)
        portfolio["rank_window"] = {
            "start": args.start_rank,
            "end": args.end_rank,
            "width": args.end_rank - args.start_rank,
        }
        source = {
            "kind": "computed-windowed-combined-residual-portfolio",
            "uses_d4_transport": not args.no_d4_transport,
        }

    atlas = build_atlas(
        portfolio,
        source=source,
        rank_start=args.start_rank,
        rank_end=args.end_rank,
        max_lean_leaves=args.max_lean_leaves,
        warn_lean_leaves=args.warn_lean_leaves,
    )
    atlas["elapsed_seconds"] = time.monotonic() - started
    write_json(output_json, atlas)
    write_text(output_md, render_markdown(atlas))

    decision = atlas["decision_gate"]
    totals = atlas["residual_totals"]
    print("obstruction atlas")
    print(
        f"rank window: [{args.start_rank:,}, {args.end_rank:,}) "
        f"width {args.end_rank - args.start_rank:,}"
    )
    print(f"shaped residual families: {totals['shape_count']:,}")
    print(f"top-three case share: {totals['top3_case_share']:.3f}")
    print(f"recommended next phase: {decision['recommended_next_phase']}")
    for note in decision["notes"]:
        print(f"- {note}")
    print(f"json: {display_path(output_json)}")
    print(f"markdown: {display_path(output_md)}")


if __name__ == "__main__":
    main()
