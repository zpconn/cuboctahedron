#!/usr/bin/env python3
"""Profile the Phase 6Z.3 high-variation source-pair shape.

This script is diagnostic only and is not trusted as proof.  It checks whether
the Lean-proved high-variation source-pair predicate covers the most fragmented
source pair from the first 100,000 ranks:

  interior impact 4 face xp  +  xpStart 0

The predicate is intentionally parametric: the first row must be `(a, a, c)`
with `a < 0` and `c <= a`.
"""

from __future__ import annotations

import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed
import json
import sys
import time
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symmetry_compression import (  # noqa: E402
    sorted_source_farkas_terms,
    stable_digest,
    word_key,
    seq_key,
)
from profile_translation_source_pair_params import (  # noqa: E402
    fraction_key,
    source_pair_key,
    source_pair_payload,
)


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 100_000
DEFAULT_EXPECTED_TARGET_CASES = 1_016
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_high_variation_support_000000000_000100000.json"
)

TARGET_SOURCES = [
    {"kind": "interior", "impact": 4, "face": "xp"},
    {"kind": "xpStart", "index": 0},
]
TARGET_DIGEST = stable_digest(source_pair_key({"sources": TARGET_SOURCES}))
FIRST_SOURCE = TARGET_SOURCES[0]

COUNT_KEYS = [
    "pair_words_scanned",
    "identity_words",
    "nonidentity_words_skipped",
    "translation_sign_assignments",
    "good_direction_survivors",
    "target_source_pair_cases",
    "target_shape_matches",
    "target_shape_misses",
    "shape_matches_all_good",
    "shape_extra_cases",
    "source_farkas_failures",
]


def fresh_counts() -> dict[str, int]:
    return {key: 0 for key in COUNT_KEYS}


def merge_counts(total: dict[str, int], part: dict[str, int]) -> None:
    for key in COUNT_KEYS:
        total[key] += int(part.get(key, 0))


def extend_samples(
    total: list[dict[str, Any]], part: list[dict[str, Any]], limit: int
) -> None:
    if len(total) >= limit:
        return
    total.extend(part[: limit - len(total)])


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def target_shape(
    seq: list[str],
    b: tuple[Fraction, Fraction, Fraction],
) -> tuple[bool, dict[str, Any]]:
    sources = exact.translation_constraint_sources_py(seq)
    if FIRST_SOURCE not in sources:
        return False, {"source_ok": False}
    constraints = exact.translation_constraints_py(seq, b)
    line = constraints[sources.index(FIRST_SOURCE)]
    shape_ok = line[0] == line[1] and line[0] < 0 and line[2] <= line[0]
    return shape_ok, {
        "source_ok": True,
        "first_line": [fraction_key(value) for value in line],
        "a_eq_b": line[0] == line[1],
        "a_negative": line[0] < 0,
        "c_le_a": line[2] <= line[0],
        "c_minus_a": fraction_key(line[2] - line[0]),
    }


def source_pair_digest_for_terms(source_terms: list[dict[str, Any]]) -> str:
    return stable_digest(source_pair_key(source_pair_payload(source_terms)))


def sample_payload(
    *,
    rank: int,
    mask: int,
    word: list[str],
    seq: list[str],
    details: dict[str, Any],
    digest: str,
) -> dict[str, Any]:
    return {
        "rank": rank,
        "mask": mask,
        "word": word_key(word),
        "seq": seq_key(seq),
        "source_pair_digest": digest,
        "shape": details,
    }


def scan_rank_window(
    *,
    rank_start: int,
    rank_end: int,
    sample_limit: int,
    progress_interval: int = 0,
    progress_total: int | None = None,
) -> dict[str, Any]:
    counts = fresh_counts()
    miss_samples: list[dict[str, Any]] = []
    extra_samples: list[dict[str, Any]] = []
    failure_samples: list[dict[str, Any]] = []

    for rank in range(rank_start, rank_end):
        if (
            progress_interval
            and rank != rank_start
            and (rank - rank_start) % progress_interval == 0
        ):
            total = progress_total or (rank_end - rank_start)
            print(
                f"scanned {rank - rank_start:,}/{total:,} ranks",
                file=sys.stderr,
            )
        word = exact.pair_word_at_rank(rank)
        if exact.lex_rank_pair_word(word) != rank:
            raise AssertionError(f"rank mismatch for word at rank {rank}")
        counts["pair_words_scanned"] += 1
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            needs = exact.translation_needs_farkas(word, mask)
            if needs is None:
                continue
            counts["good_direction_survivors"] += 1
            b, seq = needs
            shape_ok, shape_details = target_shape(seq, b)
            if shape_ok:
                counts["shape_matches_all_good"] += 1
            try:
                source_terms = sorted_source_farkas_terms(
                    exact.source_terms_for_translation_farkas(seq, b)
                )
                digest = source_pair_digest_for_terms(source_terms)
            except Exception as exc:  # pragma: no cover - diagnostic payload
                counts["source_farkas_failures"] += 1
                if len(failure_samples) < sample_limit:
                    failure_samples.append({
                        "rank": rank,
                        "mask": mask,
                        "word": word_key(word),
                        "error": repr(exc),
                    })
                continue

            is_target = digest == TARGET_DIGEST
            if is_target:
                counts["target_source_pair_cases"] += 1
                if shape_ok:
                    counts["target_shape_matches"] += 1
                else:
                    counts["target_shape_misses"] += 1
                    if len(miss_samples) < sample_limit:
                        miss_samples.append(
                            sample_payload(
                                rank=rank,
                                mask=mask,
                                word=word,
                                seq=seq,
                                details=shape_details,
                                digest=digest,
                            )
                        )
            elif shape_ok:
                counts["shape_extra_cases"] += 1
                if len(extra_samples) < sample_limit:
                    extra_samples.append(
                        sample_payload(
                            rank=rank,
                            mask=mask,
                            word=word,
                            seq=seq,
                            details=shape_details,
                            digest=digest,
                        )
                    )
    return {
        "counts": counts,
        "miss_samples": miss_samples,
        "extra_samples": extra_samples,
        "failure_samples": failure_samples,
    }


def scan_rank_window_from_tuple(args: tuple[int, int, int]) -> dict[str, Any]:
    rank_start, rank_end, sample_limit = args
    return scan_rank_window(
        rank_start=rank_start,
        rank_end=rank_end,
        sample_limit=sample_limit,
    )


def decision(
    counts: dict[str, int],
    *,
    expected_target_cases: int,
) -> dict[str, Any]:
    notes: list[str] = []
    if counts["source_farkas_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures occurred")
    elif counts["target_shape_misses"]:
        status = "rejected"
        notes.append("the high-variation source pair has shape misses")
    elif counts["target_source_pair_cases"] != expected_target_cases:
        status = "rejected"
        notes.append(
            "target source-pair case count differs from the expected "
            f"{expected_target_cases}"
        )
    else:
        status = "accepted"
        notes.append(
            "the high-variation shape covers every target source-pair case "
            "in the window"
        )
    if counts["shape_extra_cases"]:
        notes.append(
            "the semantic shape also matches non-target source pairs; this is "
            "safe but should be handled deliberately by future classifier code"
        )
    return {
        "status": status,
        "accepted_for_phase_6z3": status == "accepted",
        "expected_target_cases": expected_target_cases,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Phase 6Z.3 High-Variation Source-Pair Profile",
        "",
        "This report is diagnostic only; Lean checks the theorem separately.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Pair words scanned | {counts['pair_words_scanned']:,} |",
        f"| Identity-linear words | {counts['identity_words']:,} |",
        f"| GoodDirection survivors | {counts['good_direction_survivors']:,} |",
        f"| Target source-pair cases | {counts['target_source_pair_cases']:,} |",
        f"| Target shape matches | {counts['target_shape_matches']:,} |",
        f"| Target shape misses | {counts['target_shape_misses']:,} |",
        f"| Shape matches among all GoodDirection survivors | {counts['shape_matches_all_good']:,} |",
        f"| Shape extra cases | {counts['shape_extra_cases']:,} |",
        "",
        f"Decision: **{payload['decision']['status']}**",
        "",
    ]
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=DEFAULT_RANK_START)
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--shard-size", type=int, default=5_000)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument(
        "--expected-target-cases",
        type=int,
        default=DEFAULT_EXPECTED_TARGET_CASES,
    )
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.shard_size <= 0:
        parser.error("--shard-size must be positive")
    if args.sample_limit < 0:
        parser.error("--sample-limit must be nonnegative")

    start = time.monotonic()
    counts = fresh_counts()
    miss_samples: list[dict[str, Any]] = []
    extra_samples: list[dict[str, Any]] = []
    failure_samples: list[dict[str, Any]] = []
    end = args.rank_start + args.limit

    if args.workers == 1:
        result = scan_rank_window(
            rank_start=args.rank_start,
            rank_end=end,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            progress_total=args.limit,
        )
        merge_counts(counts, result["counts"])
        extend_samples(miss_samples, result["miss_samples"], args.sample_limit)
        extend_samples(extra_samples, result["extra_samples"], args.sample_limit)
        extend_samples(failure_samples, result["failure_samples"], args.sample_limit)
    else:
        shards = [
            (shard_start, min(shard_start + args.shard_size, end), args.sample_limit)
            for shard_start in range(args.rank_start, end, args.shard_size)
        ]
        completed_ranks = 0
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            futures = {
                pool.submit(scan_rank_window_from_tuple, shard): shard
                for shard in shards
            }
            for future in as_completed(futures):
                shard_start, shard_end, _sample_limit = futures[future]
                result = future.result()
                merge_counts(counts, result["counts"])
                extend_samples(miss_samples, result["miss_samples"], args.sample_limit)
                extend_samples(extra_samples, result["extra_samples"], args.sample_limit)
                extend_samples(
                    failure_samples,
                    result["failure_samples"],
                    args.sample_limit,
                )
                completed_ranks += shard_end - shard_start
                if args.progress_interval:
                    print(
                        f"completed {completed_ranks:,}/{args.limit:,} ranks "
                        f"across {args.workers} workers",
                        file=sys.stderr,
                    )

    payload = {
        "schema_version": 1,
        "mode": "translation-high-variation-support-profile",
        "trusted_as_proof": False,
        "target_source_pair_digest": TARGET_DIGEST,
        "target_sources": TARGET_SOURCES,
        "rank_window": {
            "start": args.rank_start,
            "end": end,
            "width": args.limit,
        },
        "parallel": {
            "enabled": args.workers > 1,
            "workers": args.workers,
            "shard_size": args.shard_size,
        },
        "counts": counts,
        "decision": decision(
            counts,
            expected_target_cases=args.expected_target_cases,
        ),
        "elapsed_seconds": time.monotonic() - start,
        "miss_samples": miss_samples,
        "extra_samples": extra_samples,
        "failure_samples": failure_samples,
    }
    write_json(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "high-variation target cases: "
        f"{counts['target_source_pair_cases']:,}; "
        f"matches: {counts['target_shape_matches']:,}; "
        f"decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
