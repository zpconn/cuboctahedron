#!/usr/bin/env python3
"""Profile the generic Phase 6Z largest-support row shape.

This script is diagnostic only and is not trusted as proof.  It checks whether
the Lean-proved `LargestObservedSupportShape` condition covers the largest
two-source support digest on a bounded rank window.
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
    source_farkas_support_key,
    sorted_source_farkas_terms,
    stable_digest,
)


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 100_000
DEFAULT_DIGEST = "8fbb8d2e5508a43184d6aa62ade779a7ad03a2f2719f40317c1b5cf0aecf033e"
DEFAULT_EXPECTED_MIN_SHAPE_CASES = 10_435
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_largest_support_shape_000000000_000100000.json"
)

FIRST_SOURCE = {"kind": "interior", "impact": 1, "face": "tmmm"}
COUNT_KEYS = [
    "pair_words_scanned",
    "identity_words",
    "nonidentity_words_skipped",
    "translation_sign_assignments",
    "good_direction_survivors",
    "largest_support_cases",
    "largest_support_shape_matches",
    "largest_support_shape_misses",
    "shape_matches_all_good",
    "shape_extra_cases",
    "source_farkas_failures",
]


def fraction_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def support_digest_for_terms(source_terms: list[dict[str, Any]]) -> str:
    return stable_digest(source_farkas_support_key(source_terms))


def largest_shape(seq: list[str], b: tuple[Fraction, Fraction, Fraction]) -> tuple[bool, dict[str, Any]]:
    sources = exact.translation_constraint_sources_py(seq)
    if FIRST_SOURCE not in sources:
        return False, {"source_ok": False}
    constraints = exact.translation_constraints_py(seq, b)
    line = constraints[sources.index(FIRST_SOURCE)]
    source_ok = True
    shape_ok = (
        line[0] == Fraction(-1)
        and line[1] == Fraction(-1)
        and line[2] + 1 <= 0
    )
    return shape_ok, {
        "source_ok": source_ok,
        "first_line": [fraction_key(value) for value in line],
        "c_plus_one": fraction_key(line[2] + 1),
    }


def sample_payload(rank: int, mask: int, word: list[str], seq: list[str],
                   details: dict[str, Any], digest: str) -> dict[str, Any]:
    return {
        "rank": rank,
        "mask": mask,
        "word": ",".join(word),
        "seq": ",".join(seq),
        "support_digest": digest,
        "shape": details,
    }


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


def scan_rank_window(
    *,
    rank_start: int,
    rank_end: int,
    support_digest: str,
    check_support_digest: bool,
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
            shape_ok, shape_details = largest_shape(seq, b)
            if shape_ok:
                counts["shape_matches_all_good"] += 1
                if not check_support_digest and len(extra_samples) < sample_limit:
                    extra_samples.append(
                        sample_payload(rank, mask, word, seq, shape_details, "not_checked")
                    )
            if not check_support_digest:
                continue
            try:
                source_terms = sorted_source_farkas_terms(
                    exact.source_terms_for_translation_farkas(seq, b)
                )
                digest = support_digest_for_terms(source_terms)
            except Exception as exc:  # pragma: no cover - diagnostic payload
                counts["source_farkas_failures"] += 1
                if len(failure_samples) < sample_limit:
                    failure_samples.append({
                        "rank": rank,
                        "mask": mask,
                        "error": repr(exc),
                    })
                continue

            is_largest = digest == support_digest
            if is_largest:
                counts["largest_support_cases"] += 1
                if shape_ok:
                    counts["largest_support_shape_matches"] += 1
                else:
                    counts["largest_support_shape_misses"] += 1
                    if len(miss_samples) < sample_limit:
                        miss_samples.append(
                            sample_payload(rank, mask, word, seq, shape_details, digest)
                        )
            elif shape_ok:
                counts["shape_extra_cases"] += 1
                if len(extra_samples) < sample_limit:
                    extra_samples.append(
                        sample_payload(rank, mask, word, seq, shape_details, digest)
                    )
    return {
        "counts": counts,
        "miss_samples": miss_samples,
        "extra_samples": extra_samples,
        "failure_samples": failure_samples,
    }


def scan_rank_window_from_tuple(args: tuple[int, int, str, bool, int]) -> dict[str, Any]:
    rank_start, rank_end, support_digest, check_support_digest, sample_limit = args
    return scan_rank_window(
        rank_start=rank_start,
        rank_end=rank_end,
        support_digest=support_digest,
        check_support_digest=check_support_digest,
        sample_limit=sample_limit,
    )


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z Largest Support Shape Profile",
        "",
        "This report is diagnostic only; Lean proves the shape theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ]
    keys = [
        "pair_words_scanned",
        "identity_words",
        "good_direction_survivors",
        "shape_matches_all_good",
    ]
    if payload.get("support_digest_checked"):
        keys.extend([
            "largest_support_cases",
            "largest_support_shape_matches",
            "largest_support_shape_misses",
            "shape_extra_cases",
        ])
    for key in keys:
        lines.append(f"| {key} | {counts[key]:,} |")
    if not payload.get("support_digest_checked"):
        lines.append(
            f"| expected_min_shape_cases | {payload['expected_min_shape_cases']:,} |"
        )
    lines.extend([
        "",
        f"Decision: **{decision['status']}**",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=DEFAULT_RANK_START)
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT)
    parser.add_argument("--support-digest", default=DEFAULT_DIGEST)
    parser.add_argument(
        "--check-support-digest",
        action="store_true",
        help=(
            "slow diagnostic: recompute the sparse Farkas support digest for "
            "every GoodDirection survivor"
        ),
    )
    parser.add_argument(
        "--expected-min-shape-cases",
        type=int,
        default=DEFAULT_EXPECTED_MIN_SHAPE_CASES,
        help="minimum expected semantic shape count for the bounded window",
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--sample-limit", type=int, default=20)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--shard-size", type=int, default=5_000)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.sample_limit < 0:
        parser.error("--sample-limit must be nonnegative")
    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.shard_size <= 0:
        parser.error("--shard-size must be positive")

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
            support_digest=args.support_digest,
            check_support_digest=args.check_support_digest,
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
            (
                shard_start,
                min(shard_start + args.shard_size, end),
                args.support_digest,
                args.check_support_digest,
                args.sample_limit,
            )
            for shard_start in range(args.rank_start, end, args.shard_size)
        ]
        completed_ranks = 0
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            futures = {
                pool.submit(scan_rank_window_from_tuple, shard): shard
                for shard in shards
            }
            for future in as_completed(futures):
                shard_start, shard_end, *_ = futures[future]
                result = future.result()
                merge_counts(counts, result["counts"])
                extend_samples(miss_samples, result["miss_samples"], args.sample_limit)
                extend_samples(extra_samples, result["extra_samples"], args.sample_limit)
                extend_samples(failure_samples, result["failure_samples"], args.sample_limit)
                completed_ranks += shard_end - shard_start
                if args.progress_interval:
                    print(
                        f"completed {completed_ranks:,}/{args.limit:,} ranks "
                        f"across {args.workers} workers",
                        file=sys.stderr,
                    )

    notes: list[str] = []
    if not args.check_support_digest:
        if args.expected_min_shape_cases < 0:
            status = "profiled"
            notes.append(
                "support digest recomputation was skipped; no minimum shape count was enforced"
            )
        elif counts["shape_matches_all_good"] >= args.expected_min_shape_cases:
            status = "accepted"
            notes.append(
                "semantic shape count meets or exceeds the known largest-family count for this window"
            )
        else:
            status = "rejected"
            notes.append(
                "semantic shape count is below the known largest-family count"
            )
        notes.append(
            "support digest recomputation was skipped because it requires one sparse Farkas solve per survivor"
        )
        notes.append(
            "the semantic shape may cover extra cases; this is proof-safe because Lean proves the row contradiction"
        )
    elif counts["source_farkas_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures occurred")
    elif counts["largest_support_cases"] == 0:
        status = "rejected"
        notes.append("largest support digest did not occur in the window")
    elif counts["largest_support_shape_misses"]:
        status = "rejected"
        notes.append("shape does not cover every largest-support case")
    else:
        status = "accepted"
        notes.append("shape covers every largest-support case in this window")
    if counts["shape_extra_cases"]:
        notes.append(
            "shape also covers extra GoodDirection cases; this is proof-safe because Lean proves the row contradiction"
        )

    payload = {
        "schema_version": 1,
        "mode": "translation-largest-support-shape-profile",
        "trusted_as_proof": False,
        "rank_window": {
            "start": args.rank_start,
            "end": end,
            "width": args.limit,
        },
        "support_digest": args.support_digest,
        "support_digest_checked": args.check_support_digest,
        "expected_min_shape_cases": args.expected_min_shape_cases,
        "counts": counts,
        "elapsed_seconds": time.monotonic() - start,
        "decision": {
            "status": status,
            "accepted_for_phase_6z_shape": status == "accepted",
            "notes": notes,
        },
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
        "largest support shape profile: "
        f"{counts['shape_matches_all_good']:,} semantic matches; "
        f"decision: {status}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
