#!/usr/bin/env python3
"""Run a resumable global census for translation row-relation templates.

This is a diagnostic/profiling runner only.  It is not trusted as proof.

The underlying scanner is `profile_translation_row_relation_templates.py`,
which classifies translation GoodDirection survivors by the small semantic
row-relation template portfolio.  This wrapper adds the pieces needed for a
full global run:

* top-level parallelism with no nested process pools;
* atomic per-window checkpoints;
* resumable/aggregate-only modes;
* compact JSON and Markdown aggregate reports;
* optional calibration windows before committing to the full 97M-rank scan.
"""

from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ProcessPoolExecutor, wait
import json
import os
from pathlib import Path
import resource
import sys
import time
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
import profile_translation_row_relation_templates as rowrel  # noqa: E402


DEFAULT_CHECKPOINT_DIR = Path("evidence/translation_row_relation_census")
DEFAULT_OUTPUT = Path("scripts/generated/translation_row_relation_templates_global.json")
DEFAULT_CALIBRATION_STARTS = [0, 10_000_000, 30_000_000, 60_000_000, 90_000_000]


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


def parse_start_list(raw: str) -> list[int]:
    starts: list[int] = []
    for item in raw.split(","):
        item = item.strip()
        if not item:
            continue
        starts.append(int(item))
    return starts


def contiguous_windows(rank_start: int, limit: int, chunk_size: int) -> list[tuple[int, int]]:
    end = rank_start + limit
    return [
        (start, min(start + chunk_size, end))
        for start in range(rank_start, end, chunk_size)
    ]


def calibration_windows(
    *,
    rank_start: int,
    limit: int,
    calibration_width: int,
    calibration_starts: list[int],
    chunk_size: int,
) -> list[tuple[int, int]]:
    end = rank_start + limit
    windows: list[tuple[int, int]] = []
    seen: set[tuple[int, int]] = set()
    for start in calibration_starts:
        if start < rank_start or start >= end:
            continue
        calibration_end = min(start + calibration_width, end)
        for sub_start in range(start, calibration_end, chunk_size):
            window = (sub_start, min(sub_start + chunk_size, calibration_end))
            if window[0] < window[1] and window not in seen:
                windows.append(window)
                seen.add(window)
    return windows


def scan_window_worker(args: tuple[int, int, int, bool]) -> dict[str, Any]:
    start, end, sample_limit, enable_diamond = args
    elapsed_start = time.monotonic()
    result = rowrel.scan_rank_window(
        rank_start=start,
        rank_end=end,
        sample_limit=sample_limit,
        enable_diamond=enable_diamond,
        progress_interval=0,
    )
    return {
        "schema_version": 1,
        "mode": "translation-row-relation-template-census-window",
        "trusted_as_proof": False,
        "diamond_enabled": enable_diamond,
        "window": {
            "start": start,
            "end": end,
            "width": end - start,
        },
        "elapsed_seconds": time.monotonic() - elapsed_start,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "result": result,
    }


def window_is_rejected(payload: dict[str, Any], partial_uncovered_max: int) -> bool:
    decision = rowrel.decision(
        payload["result"]["counts"],
        partial_uncovered_max=partial_uncovered_max,
    )
    return decision["status"] == "rejected"


def collect_payloads(
    *,
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    sample_limit: int,
    resume: bool,
    aggregate_only: bool,
    stop_on_reject: bool,
    partial_uncovered_max: int,
    enable_diamond: bool,
) -> list[dict[str, Any]]:
    payloads_by_window: dict[tuple[int, int], dict[str, Any]] = {}
    todo: list[tuple[int, int]] = []
    for window in windows:
        path = checkpoint_path(checkpoint_dir, *window)
        if path.exists() and (resume or aggregate_only):
            payload = read_json(path)
            if bool(payload.get("diamond_enabled", False)) == enable_diamond:
                payloads_by_window[window] = payload
            elif aggregate_only:
                raise ValueError(
                    "checkpoint diamond mode mismatch for "
                    f"{window}: expected {enable_diamond}, "
                    f"found {payload.get('diamond_enabled', False)}"
                )
            else:
                todo.append(window)
        elif aggregate_only:
            raise FileNotFoundError(f"missing checkpoint for window {window}: {path}")
        else:
            todo.append(window)

    if todo:
        with ProcessPoolExecutor(max_workers=workers) as pool:
            remaining = iter(todo)
            active: dict[Any, tuple[int, int]] = {}

            def submit_next() -> None:
                try:
                    window = next(remaining)
                except StopIteration:
                    return
                future = pool.submit(
                    scan_window_worker,
                    (*window, sample_limit, enable_diamond),
                )
                active[future] = window

            for _ in range(min(workers, len(todo))):
                submit_next()

            rejected = False
            while active:
                done, _pending = wait(active, return_when=FIRST_COMPLETED)
                for future in done:
                    window = active.pop(future)
                    payload = future.result()
                    path = checkpoint_path(checkpoint_dir, *window)
                    write_json_atomic(path, payload)
                    payloads_by_window[window] = payload
                    counts = payload["result"]["counts"]
                    print(
                        "completed "
                        f"[{window[0]:,},{window[1]:,}) "
                        f"good={counts['good_direction_survivors']:,} "
                        f"covered={counts['covered_cases']:,} "
                        f"uncovered={counts['uncovered_cases']:,} "
                        f"diamond={counts['diamond_covered_cases']:,} "
                        f"rss={payload['max_rss_kib']:,} KiB",
                        file=sys.stderr,
                    )
                    if stop_on_reject and window_is_rejected(
                        payload, partial_uncovered_max
                    ):
                        rejected = True
                        break
                    submit_next()
                if rejected:
                    for future in active:
                        future.cancel()
                    break

    return [payloads_by_window[window] for window in windows if window in payloads_by_window]


def aggregate_payload(
    *,
    payloads: list[dict[str, Any]],
    rank_start: int,
    limit: int,
    windows: list[tuple[int, int]],
    window_mode: str,
    workers: int,
    checkpoint_dir: Path,
    partial_uncovered_max: int,
    elapsed_seconds: float,
    sample_limit: int,
    enable_diamond: bool,
) -> dict[str, Any]:
    total = rowrel.fresh_total()
    for payload in payloads:
        rowrel.merge_results(total, payload["result"], sample_limit=sample_limit)
    finalized = rowrel.finalize_total(total)
    counts = finalized["counts"]
    complete_rank_window = (
        window_mode == "contiguous"
        and rank_start == 0
        and limit == exact.EXPECTED_PAIR_WORDS
    )
    sanity: dict[str, Any] = {
        "expected_pair_words": exact.EXPECTED_PAIR_WORDS,
        "expected_identity_linear_words": exact.EXPECTED_IDENTITY_WORDS,
        "complete_rank_window": complete_rank_window,
    }
    if complete_rank_window:
        sanity["pair_words_match_expected"] = (
            counts["pair_words_scanned"] == exact.EXPECTED_PAIR_WORDS
        )
        sanity["identity_words_match_expected"] = (
            counts["identity_words"] == exact.EXPECTED_IDENTITY_WORDS
        )
    max_rss = max((int(payload.get("max_rss_kib", 0)) for payload in payloads), default=0)
    payload = {
        "schema_version": 1,
        "mode": "translation-row-relation-template-global-census",
        "trusted_as_proof": False,
        "window_mode": window_mode,
        "rank_window": {
            "start": rank_start,
            "end": rank_start + limit,
            "width": limit,
        },
        "window_count": len(windows),
        "completed_window_count": len(payloads),
        "windows": [
            {
                "start": start,
                "end": end,
                "width": end - start,
                "checkpoint": str(checkpoint_path(checkpoint_dir, start, end)),
            }
            for start, end in windows
        ],
        "parallel": {
            "workers": workers,
        },
        "checkpoint_dir": str(checkpoint_dir),
        "diamond_enabled": enable_diamond,
        "elapsed_seconds": elapsed_seconds,
        "max_window_rss_kib": max_rss,
        "sanity": sanity,
        "template_catalog": rowrel.template_catalog(),
        **finalized,
    }
    payload["decision"] = rowrel.decision(
        payload["counts"],
        partial_uncovered_max=partial_uncovered_max,
    )
    return payload


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    pair_summary = payload["source_pair_summary"]
    lines = [
        "# Phase 6Z.6D Translation Row-Relation Global Census",
        "",
        "This report is diagnostic only; Lean must check any emitted family theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Window mode | `{payload['window_mode']}` |",
        f"| Windows completed | {payload['completed_window_count']:,}/{payload['window_count']:,} |",
        f"| Pair words scanned | {counts['pair_words_scanned']:,} |",
        f"| Identity-linear words | {counts['identity_words']:,} |",
        f"| Translation sign assignments | {counts['translation_sign_assignments']:,} |",
        f"| GoodDirection survivors | {counts['good_direction_survivors']:,} |",
        f"| Covered cases | {counts['covered_cases']:,} |",
        f"| Uncovered cases | {counts['uncovered_cases']:,} |",
        f"| Overlap cases | {counts['overlap_cases']:,} |",
        f"| Diamond profiling enabled | `{payload.get('diamond_enabled', False)}` |",
        f"| Sharp-template covered cases | {counts['sharp_template_covered_cases']:,} |",
        f"| Fallback-template cases | {counts['fallback_template_cases']:,} |",
        f"| Diamond-covered cases | {counts['diamond_covered_cases']:,} |",
        f"| Diamond + sharp covered cases | {counts['diamond_or_sharp_covered_cases']:,} |",
        f"| Left after diamond + sharp templates | {counts['diamond_or_sharp_leftover_cases']:,} |",
        f"| Fallback cases subsumed by diamond | {counts['diamond_subsumes_fallback_cases']:,} |",
        f"| Fallback cases not covered by diamond | {counts['fallback_not_diamond_cases']:,} |",
        f"| Left after diamond + expanded catalog | {counts['diamond_or_expanded_uncovered_cases']:,} |",
        f"| Total source pairs | {pair_summary['total_source_pairs']:,} |",
        f"| Fully covered source pairs | {pair_summary['fully_covered_source_pairs']:,} |",
        f"| Partial source pairs | {pair_summary['partial_source_pairs']:,} |",
        f"| Source pairs with uncovered cases | {pair_summary['uncovered_source_pairs']:,} |",
        f"| Elapsed seconds | {payload['elapsed_seconds']:.2f} |",
        f"| Max window RSS KiB | {payload['max_window_rss_kib']:,} |",
        "",
        f"Decision: **{payload['decision']['status']}**",
        "",
    ]
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    lines.append("## Assigned Template Counts")
    lines.append("")
    for template_id, count in sorted(
        payload["assigned_template_counts"].items(),
        key=lambda item: (-item[1], item[0]),
    ):
        lines.append(f"- `{template_id}`: {count:,}")
    lines.append("")
    if payload.get("diamond_enabled", False):
        lines.append("## Diamond Row Counts")
        lines.append("")
        for row_name, count in sorted(
            payload["diamond_row_counts"].items(),
            key=lambda item: (-item[1], item[0]),
        ):
            source_pairs = len(
                payload.get("source_pairs_by_diamond_row", {}).get(row_name, [])
            )
            lines.append(
                f"- `{row_name}`: {count:,} cases across {source_pairs:,} source pairs"
            )
        lines.append("")
    if payload["top_uncovered_source_pairs"]:
        lines.append("## Top Uncovered Source Pairs")
        lines.append("")
        for item in payload["top_uncovered_source_pairs"]:
            lines.append(
                f"- `{item['source_pair_digest']}`: "
                f"{item['uncovered_cases']:,}/{item['total_cases']:,} uncovered"
            )
        lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=exact.EXPECTED_PAIR_WORDS)
    parser.add_argument("--chunk-size", type=int, default=100_000)
    parser.add_argument("--workers", type=int, default=min(20, os.cpu_count() or 1))
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--partial-uncovered-max", type=int, default=0)
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--aggregate-only", action="store_true")
    parser.add_argument("--stop-on-reject", action="store_true")
    parser.add_argument("--enable-diamond", action="store_true")
    parser.add_argument("--calibration", action="store_true")
    parser.add_argument("--calibration-width", type=int, default=100_000)
    parser.add_argument(
        "--calibration-starts",
        type=str,
        default=",".join(str(start) for start in DEFAULT_CALIBRATION_STARTS),
    )
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.chunk_size <= 0:
        parser.error("--chunk-size must be positive")
    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.sample_limit < 0:
        parser.error("--sample-limit must be nonnegative")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        parser.error("rank window exceeds EXPECTED_PAIR_WORDS")
    if args.calibration_width <= 0:
        parser.error("--calibration-width must be positive")

    if args.calibration:
        starts = parse_start_list(args.calibration_starts)
        windows = calibration_windows(
            rank_start=args.rank_start,
            limit=args.limit,
            calibration_width=args.calibration_width,
            calibration_starts=starts,
            chunk_size=args.chunk_size,
        )
        window_mode = "calibration"
    else:
        windows = contiguous_windows(args.rank_start, args.limit, args.chunk_size)
        window_mode = "contiguous"
    if not windows:
        parser.error("no windows selected")

    start = time.monotonic()
    payloads = collect_payloads(
        windows=windows,
        checkpoint_dir=args.checkpoint_dir,
        workers=args.workers,
        sample_limit=args.sample_limit,
        resume=args.resume,
        aggregate_only=args.aggregate_only,
        stop_on_reject=args.stop_on_reject,
        partial_uncovered_max=args.partial_uncovered_max,
        enable_diamond=args.enable_diamond,
    )
    aggregate = aggregate_payload(
        payloads=payloads,
        rank_start=args.rank_start,
        limit=args.limit,
        windows=windows,
        window_mode=window_mode,
        workers=args.workers,
        checkpoint_dir=args.checkpoint_dir,
        partial_uncovered_max=args.partial_uncovered_max,
        elapsed_seconds=time.monotonic() - start,
        sample_limit=args.sample_limit,
        enable_diamond=args.enable_diamond,
    )
    write_json_atomic(args.output, aggregate)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(aggregate), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "global row-template census: "
        f"{aggregate['counts']['covered_cases']:,}/"
        f"{aggregate['counts']['good_direction_survivors']:,}; "
        f"diamond={aggregate['counts']['diamond_covered_cases']:,}; "
        f"decision: {aggregate['decision']['status']}"
    )
    if args.stop_on_reject and aggregate["decision"]["status"] == "rejected":
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
