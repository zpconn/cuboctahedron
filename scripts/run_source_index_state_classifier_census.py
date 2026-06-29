#!/usr/bin/env python3
"""Run a checkpointed source-index/state classifier census.

This is diagnostic infrastructure only; it is not trusted as proof and emits no
Lean.  It exists to estimate whether the current source-index/state
GoodDirection classifier surface can scale globally without keeping every
concrete rank/mask member in memory.

Each window writes a compact checkpoint containing only family keys, family
counts, and tiny samples.  Aggregate reports can be rebuilt with
``--aggregate-only`` without rescanning ranks.
"""

from __future__ import annotations

import argparse
from collections import Counter
from concurrent.futures import FIRST_COMPLETED, ProcessPoolExecutor, wait
import json
from pathlib import Path
import resource
import sys
import time
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    collect_families,
)


DEFAULT_CHECKPOINT_DIR = Path("evidence/source_index_state_classifier_census")
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9ec_classifier_census.json"
)
DEFAULT_RANGES = (
    "0:25000,"
    "100000:125000,"
    "1000000:1025000,"
    "10000000:10025000,"
    "30000000:30025000,"
    "60000000:60025000,"
    "90000000:90025000"
)


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def parse_ranges(raw: str) -> list[tuple[int, int]]:
    ranges: list[tuple[int, int]] = []
    for chunk in raw.split(","):
        item = chunk.strip()
        if not item:
            continue
        if ":" not in item:
            raise ValueError(f"range {item!r} must have form start:end")
        start_raw, end_raw = item.split(":", 1)
        start = int(start_raw)
        end = int(end_raw)
        if start < 0 or end < start:
            raise ValueError(f"invalid range {item!r}")
        ranges.append((start, end))
    if not ranges:
        raise ValueError("at least one range is required")
    return ranges


def contiguous_ranges(rank_start: int, limit: int, chunk_size: int) -> list[tuple[int, int]]:
    if limit < 0:
        raise ValueError("limit must be nonnegative")
    if chunk_size <= 0:
        raise ValueError("chunk size must be positive")
    end = rank_start + limit
    return [
        (start, min(start + chunk_size, end))
        for start in range(rank_start, end, chunk_size)
    ]


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


def family_summary(family: Family, *, sample_limit: int) -> dict[str, Any]:
    return {
        "key": family.key,
        "case_count": family.count,
        "template_id": family.template_id,
        "source_indices": list(family.source_indices),
        "source_skeletons": list(family.source_skeletons),
        "row_property_key": family.row_property_key,
        "samples": [
            {
                "rank": member.symbolic.case.rank,
                "mask": member.symbolic.case.mask,
            }
            for member in family.members[:sample_limit]
        ],
    }


def scan_window_worker(args: tuple[int, int, str, int]) -> dict[str, Any]:
    start, end, source_key_surface, sample_limit = args
    elapsed_start = time.monotonic()
    families, counts = collect_families(
        rank_start=start,
        limit=end - start,
        source_key_surface=source_key_surface,
    )
    return {
        "schema_version": 1,
        "mode": "source-index-state-classifier-census-window",
        "trusted_as_proof": False,
        "source_key_surface": source_key_surface,
        "window": {
            "start": start,
            "end": end,
            "width": end - start,
        },
        "elapsed_seconds": time.monotonic() - elapsed_start,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "counts": counts,
        "family_count": len(families),
        "good_direction_cases": sum(family.count for family in families),
        "families": [
            family_summary(family, sample_limit=sample_limit)
            for family in families
        ],
    }


def collect_payloads(
    *,
    ranges: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    source_key_surface: str,
    sample_limit: int,
    resume: bool,
    aggregate_only: bool,
) -> list[dict[str, Any]]:
    payloads_by_window: dict[tuple[int, int], dict[str, Any]] = {}
    todo: list[tuple[int, int]] = []
    for window in ranges:
        path = checkpoint_path(checkpoint_dir, *window)
        if path.exists() and (resume or aggregate_only):
            payload = read_json(path)
            if payload.get("source_key_surface") != source_key_surface:
                if aggregate_only:
                    raise ValueError(
                        "checkpoint source-key surface mismatch for "
                        f"{window}: expected {source_key_surface}, "
                        f"found {payload.get('source_key_surface')}"
                    )
                todo.append(window)
            else:
                payloads_by_window[window] = payload
        elif aggregate_only:
            raise FileNotFoundError(f"missing checkpoint for window {window}: {path}")
        else:
            todo.append(window)

    if not todo:
        return [payloads_by_window[window] for window in ranges]

    if workers <= 0:
        raise ValueError("workers must be positive")

    with ProcessPoolExecutor(max_workers=workers) as pool:
        remaining = list(todo)
        active: dict[Any, tuple[int, int]] = {}

        def submit_next() -> None:
            if not remaining:
                return
            window = remaining.pop(0)
            future = pool.submit(
                scan_window_worker,
                (*window, source_key_surface, sample_limit),
            )
            active[future] = window

        for _ in range(min(workers, len(remaining))):
            submit_next()

        while active:
            done, _pending = wait(active, return_when=FIRST_COMPLETED)
            for future in done:
                window = active.pop(future)
                payload = future.result()
                path = checkpoint_path(checkpoint_dir, *window)
                write_json_atomic(path, payload)
                payloads_by_window[window] = payload
                counts = payload["counts"]
                print(
                    "completed "
                    f"[{window[0]:,},{window[1]:,}) "
                    f"identity={counts.get('identity_words', 0):,} "
                    f"good={payload['good_direction_cases']:,} "
                    f"families={payload['family_count']:,} "
                    f"rss={payload['max_rss_kib']:,} KiB",
                    file=sys.stderr,
                )
                submit_next()

    return [payloads_by_window[window] for window in ranges]


def aggregate_payload(
    *,
    payloads: list[dict[str, Any]],
    phase: str,
    ranges: list[tuple[int, int]],
    workers: int,
    checkpoint_dir: Path,
    source_key_surface: str,
    elapsed_seconds: float,
    top_limit: int,
    family_gate: int,
) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    family_cases: Counter[str] = Counter()
    family_meta: dict[str, dict[str, Any]] = {}
    window_rows: list[dict[str, Any]] = []
    max_rss_kib = 0
    for payload in payloads:
        counts.update(payload["counts"])
        max_rss_kib = max(max_rss_kib, int(payload.get("max_rss_kib", 0)))
        keys_in_window = set()
        for family in payload["families"]:
            key = str(family["key"])
            keys_in_window.add(key)
            family_cases[key] += int(family["case_count"])
            family_meta.setdefault(key, family)
        window = payload["window"]
        window_rows.append({
            "range": [window["start"], window["end"]],
            "rank_count": window["width"],
            "identity_words": payload["counts"].get("identity_words", 0),
            "good_direction_cases": payload["good_direction_cases"],
            "family_count": payload["family_count"],
            "unique_family_keys": len(keys_in_window),
            "elapsed_seconds": payload["elapsed_seconds"],
            "max_rss_kib": payload["max_rss_kib"],
        })

    top_families: list[dict[str, Any]] = []
    for key, case_count in family_cases.most_common(top_limit):
        meta = dict(family_meta[key])
        meta["case_count"] = case_count
        top_families.append(meta)

    family_count = len(family_cases)
    uncovered = int(counts.get("uncovered_cases", 0))
    non_two_source = int(counts.get("non_two_source_cases", 0))
    if uncovered or non_two_source:
        status = "rejected-uncovered"
        notes = [
            "classifier families did not cover every sampled GoodDirection survivor",
            f"uncovered_cases={uncovered}",
            f"non_two_source_cases={non_two_source}",
        ]
    elif family_count > family_gate:
        status = "needs-stronger-family-key"
        notes = [
            f"merged family count {family_count} exceeds family_gate={family_gate}",
            "continue profiling before emitting production Lean",
        ]
    else:
        status = "accepted-scaling-candidate"
        notes = [
            "merged family count is within the current diagnostic gate",
            "diagnostic only: checkpoints and reports are not proof",
        ]

    return {
        "schema_version": 1,
        "mode": "source_index_state_classifier_checkpointed_census",
        "phase": phase,
        "trusted_as_proof": False,
        "source_key_surface": source_key_surface,
        "ranges": [list(item) for item in ranges],
        "rank_count": sum(end - start for start, end in ranges),
        "workers": workers,
        "checkpoint_dir": str(checkpoint_dir),
        "elapsed_seconds": elapsed_seconds,
        "max_worker_rss_kib": max_rss_kib,
        "counts": dict(counts),
        "good_direction_cases": sum(family_cases.values()),
        "family_count": family_count,
        "family_gate": family_gate,
        "windows": window_rows,
        "top_families": top_families,
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Checkpointed Classifier Census",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It runs the",
        "source-index/state GoodDirection classifier in checkpointed windows and",
        "aggregates only compact family keys/counts.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Source key surface: `{payload['source_key_surface']}`",
        f"- Workers: `{payload['workers']}`",
        f"- Sampled ranks: `{payload['rank_count']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Merged families: `{payload['family_count']}`",
        f"- Family gate: `{payload['family_gate']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.2f}`",
        f"- Max worker RSS KiB: `{payload['max_worker_rss_kib']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        "",
        "## Windows",
        "",
        "| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        lines.append(
            f"| `{window['range']}` | {window['identity_words']} | "
            f"{window['good_direction_cases']} | {window['family_count']} | "
            f"{window['elapsed_seconds']:.2f} | {window['max_rss_kib']} |"
        )
    lines.extend([
        "",
        "## Top Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ])
    for family in payload["top_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family.get("samples", [])
        )
        lines.append(
            f"| {family['case_count']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
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


def main() -> None:
    parser = argparse.ArgumentParser()
    range_group = parser.add_mutually_exclusive_group()
    range_group.add_argument("--ranges", default=DEFAULT_RANGES)
    range_group.add_argument("--contiguous", action="store_true")
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=25_000)
    parser.add_argument("--chunk-size", type=int, default=5_000)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--source-key-surface", default="kind_impact")
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--aggregate-only", action="store_true")
    parser.add_argument("--sample-limit", type=int, default=3)
    parser.add_argument("--top-limit", type=int, default=20)
    parser.add_argument("--family-gate", type=int, default=1000)
    parser.add_argument("--phase", default="6Z.6K.8AP.16DU.9EC")
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=None)
    args = parser.parse_args()

    if args.contiguous:
        ranges = contiguous_ranges(args.rank_start, args.limit, args.chunk_size)
    else:
        ranges = parse_ranges(args.ranges)

    elapsed_start = time.monotonic()
    payloads = collect_payloads(
        ranges=ranges,
        checkpoint_dir=args.checkpoint_dir,
        workers=args.workers,
        source_key_surface=args.source_key_surface,
        sample_limit=args.sample_limit,
        resume=args.resume,
        aggregate_only=args.aggregate_only,
    )
    payload = aggregate_payload(
        payloads=payloads,
        phase=args.phase,
        ranges=ranges,
        workers=args.workers,
        checkpoint_dir=args.checkpoint_dir,
        source_key_surface=args.source_key_surface,
        elapsed_seconds=time.monotonic() - elapsed_start,
        top_limit=args.top_limit,
        family_gate=args.family_gate,
    )
    write_json_atomic(args.json, payload)
    md_path = args.md if args.md is not None else args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "rank_count": payload["rank_count"],
        "good_direction_cases": payload["good_direction_cases"],
        "family_count": payload["family_count"],
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
