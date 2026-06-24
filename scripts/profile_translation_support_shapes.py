#!/usr/bin/env python3
"""Profile proof-relevant two-source translation support row shapes.

This script is diagnostic only and is not trusted as proof.  It scans a bounded
rank window, keeps only translation GoodDirection survivors, reconstructs their
two-source Farkas supports, and groups them by the small row-shape facts needed
by `RowShape.checkedOn_of_valid`.
"""

from __future__ import annotations

import argparse
from collections import Counter
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
    fraction_key,
    seq_key,
    sorted_source_farkas_terms,
    stable_digest,
    two_source_multipliers_for_lines,
    word_key,
)


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 100_000
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_support_shapes_000000000_000100000.json"
)
COUNT_KEYS = [
    "pair_words_scanned",
    "identity_words",
    "nonidentity_words_skipped",
    "translation_sign_assignments",
    "good_direction_survivors",
    "denominator_nonpositive_masks",
    "zero_translation_vector_masks",
    "source_farkas_failures",
    "non_two_source_cases",
    "row_shape_cases",
    "row_shape_valid_cases",
    "row_shape_invalid_cases",
]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def fresh_counts() -> dict[str, int]:
    return {key: 0 for key in COUNT_KEYS}


def merge_counts(total: dict[str, int], part: dict[str, int]) -> None:
    for key in COUNT_KEYS:
        total[key] += int(part.get(key, 0))


def source_key(source: dict[str, Any]) -> str:
    return json.dumps(source, sort_keys=True, separators=(",", ":"))


def shape_key_payload(
    *,
    source_terms: list[dict[str, Any]],
    multipliers: tuple[Fraction, Fraction],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
) -> dict[str, Any]:
    return {
        "sources": [
            term["source"]
            for term in source_terms
        ],
        "multipliers": [fraction_key(value) for value in multipliers],
        "first_ab": [fraction_key(first_line[0]), fraction_key(first_line[1])],
        "second_ab": [fraction_key(second_line[0]), fraction_key(second_line[1])],
    }


def shape_key(payload: dict[str, Any]) -> str:
    return json.dumps(payload, sort_keys=True, separators=(",", ":"))


def shape_valid(
    *,
    multipliers: tuple[Fraction, Fraction],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
) -> bool:
    w1, w2 = multipliers
    return (
        w1 >= 0
        and w2 >= 0
        and (w1 > 0 or w2 > 0)
        and w1 * first_line[0] + w2 * second_line[0] == 0
        and w1 * first_line[1] + w2 * second_line[1] == 0
        and w1 * first_line[2] + w2 * second_line[2] <= 0
    )


def sample_payload(
    *,
    rank: int,
    mask: int,
    word: list[str],
    seq: list[str],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
) -> dict[str, Any]:
    return {
        "rank": rank,
        "mask": mask,
        "word": word_key(word),
        "seq": seq_key(seq),
        "first_line": [fraction_key(value) for value in first_line],
        "second_line": [fraction_key(value) for value in second_line],
    }


def add_shape_case(
    classes: dict[str, dict[str, Any]],
    *,
    key_payload: dict[str, Any],
    valid: bool,
    sample: dict[str, Any],
    sample_limit: int,
) -> None:
    digest = stable_digest(shape_key(key_payload))
    item = classes.setdefault(
        digest,
        {
            "shape_digest": digest,
            "key": key_payload,
            "cases": 0,
            "valid_cases": 0,
            "invalid_cases": 0,
            "samples": [],
            "invalid_samples": [],
        },
    )
    item["cases"] += 1
    if valid:
        item["valid_cases"] += 1
        if len(item["samples"]) < sample_limit:
            item["samples"].append(sample)
    else:
        item["invalid_cases"] += 1
        if len(item["invalid_samples"]) < sample_limit:
            item["invalid_samples"].append(sample)


def scan_rank_window(
    *,
    rank_start: int,
    rank_end: int,
    sample_limit: int,
    progress_interval: int = 0,
) -> dict[str, Any]:
    counts = fresh_counts()
    classes: dict[str, dict[str, Any]] = {}
    failure_samples: list[dict[str, Any]] = []

    for rank in range(rank_start, rank_end):
        if (
            progress_interval
            and rank != rank_start
            and (rank - rank_start) % progress_interval == 0
        ):
            print(
                f"scanned {rank - rank_start:,}/{rank_end - rank_start:,} ranks",
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
                b, _seq = exact.translation_vector(word, mask)
                counts["denominator_nonpositive_masks"] += 1
                if b == exact.vec((0, 0, 0)):
                    counts["zero_translation_vector_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            b, seq = needs
            try:
                source_terms = sorted_source_farkas_terms(
                    exact.source_terms_for_translation_farkas(seq, b)
                )
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
            if len(source_terms) != 2:
                counts["non_two_source_cases"] += 1
                if len(failure_samples) < sample_limit:
                    failure_samples.append({
                        "rank": rank,
                        "mask": mask,
                        "word": word_key(word),
                        "source_term_count": len(source_terms),
                        "reason": "non_two_source",
                    })
                continue
            sources = exact.translation_constraint_sources_py(seq)
            constraints = exact.translation_constraints_py(seq, b)
            indices = [sources.index(term["source"]) for term in source_terms]
            first_line = constraints[indices[0]]
            second_line = constraints[indices[1]]
            multipliers = two_source_multipliers_for_lines(first_line, second_line)
            valid = shape_valid(
                multipliers=multipliers,
                first_line=first_line,
                second_line=second_line,
            )
            counts["row_shape_cases"] += 1
            if valid:
                counts["row_shape_valid_cases"] += 1
            else:
                counts["row_shape_invalid_cases"] += 1
            key_payload = shape_key_payload(
                source_terms=source_terms,
                multipliers=multipliers,
                first_line=first_line,
                second_line=second_line,
            )
            add_shape_case(
                classes,
                key_payload=key_payload,
                valid=valid,
                sample=sample_payload(
                    rank=rank,
                    mask=mask,
                    word=word,
                    seq=seq,
                    first_line=first_line,
                    second_line=second_line,
                ),
                sample_limit=sample_limit,
            )
    return {
        "counts": counts,
        "classes": classes,
        "failure_samples": failure_samples,
    }


def scan_rank_window_from_tuple(args: tuple[int, int, int]) -> dict[str, Any]:
    rank_start, rank_end, sample_limit = args
    return scan_rank_window(
        rank_start=rank_start,
        rank_end=rank_end,
        sample_limit=sample_limit,
    )


def merge_classes(
    total: dict[str, dict[str, Any]],
    part: dict[str, dict[str, Any]],
    *,
    sample_limit: int,
) -> None:
    for digest, incoming in part.items():
        target = total.setdefault(
            digest,
            {
                "shape_digest": digest,
                "key": incoming["key"],
                "cases": 0,
                "valid_cases": 0,
                "invalid_cases": 0,
                "samples": [],
                "invalid_samples": [],
            },
        )
        if target["key"] != incoming["key"]:
            raise RuntimeError(f"shape digest collision or mismatch: {digest}")
        target["cases"] += incoming["cases"]
        target["valid_cases"] += incoming["valid_cases"]
        target["invalid_cases"] += incoming["invalid_cases"]
        if len(target["samples"]) < sample_limit:
            target["samples"].extend(
                incoming["samples"][: sample_limit - len(target["samples"])]
            )
        if len(target["invalid_samples"]) < sample_limit:
            target["invalid_samples"].extend(
                incoming["invalid_samples"][
                    : sample_limit - len(target["invalid_samples"])
                ]
            )


def decision(
    *,
    counts: dict[str, int],
    row_shape_count: int,
    max_row_shapes: int,
    warn_row_shapes: int,
) -> dict[str, Any]:
    notes: list[str] = []
    if counts["source_farkas_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures occurred")
    elif counts["non_two_source_cases"]:
        status = "rejected"
        notes.append("some GoodDirection survivors were not two-source")
    elif counts["row_shape_invalid_cases"]:
        status = "rejected"
        notes.append("some row-shape cases do not satisfy the template validity facts")
    elif row_shape_count > max_row_shapes:
        status = "rejected"
        notes.append(f"row-shape count exceeds the hard gate of {max_row_shapes}")
    elif row_shape_count > warn_row_shapes:
        status = "warn"
        notes.append(f"row-shape count exceeds the warning gate of {warn_row_shapes}")
    else:
        status = "accepted"
        notes.append("row shapes cover every GoodDirection survivor in the window")
    return {
        "status": status,
        "accepted_for_phase_6z1": status in {"accepted", "warn"},
        "max_row_shapes": max_row_shapes,
        "warn_row_shapes": warn_row_shapes,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    summary = payload["row_shape_summary"]
    lines = [
        "# Phase 6Z.1 Translation Support Row-Shape Profile",
        "",
        "This report is diagnostic only; Lean must check generated shape modules.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Pair words scanned | {counts['pair_words_scanned']:,} |",
        f"| Identity-linear words | {counts['identity_words']:,} |",
        f"| GoodDirection survivors | {counts['good_direction_survivors']:,} |",
        f"| Row-shape cases | {counts['row_shape_cases']:,} |",
        f"| Unique row shapes | {summary['row_shape_count']:,} |",
        f"| Max cases per shape | {summary['max_cases_per_shape']:,} |",
        f"| Singleton row shapes | {summary['singleton_row_shapes']:,} |",
        "",
        f"Decision: **{payload['decision']['status']}**",
        "",
    ]
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    lines.append("## Top Row Shapes")
    lines.append("")
    for index, item in enumerate(payload["top_row_shapes"], start=1):
        key = item["key"]
        lines.append(
            f"{index}. `{item['shape_digest']}`: {item['cases']:,} cases; "
            f"sources={key['sources']}; multipliers={key['multipliers']}; "
            f"first_ab={key['first_ab']}; second_ab={key['second_ab']}"
        )
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
    parser.add_argument("--max-row-shapes", type=int, default=500)
    parser.add_argument("--warn-row-shapes", type=int, default=250)
    parser.add_argument("--top-row-shapes", type=int, default=24)
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
    classes: dict[str, dict[str, Any]] = {}
    failure_samples: list[dict[str, Any]] = []
    end = args.rank_start + args.limit

    if args.workers == 1:
        result = scan_rank_window(
            rank_start=args.rank_start,
            rank_end=end,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        merge_counts(counts, result["counts"])
        merge_classes(classes, result["classes"], sample_limit=args.sample_limit)
        failure_samples.extend(result["failure_samples"][: args.sample_limit])
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
                merge_classes(classes, result["classes"], sample_limit=args.sample_limit)
                if len(failure_samples) < args.sample_limit:
                    failure_samples.extend(
                        result["failure_samples"][
                            : args.sample_limit - len(failure_samples)
                        ]
                    )
                completed_ranks += shard_end - shard_start
                if args.progress_interval:
                    print(
                        f"completed {completed_ranks:,}/{args.limit:,} ranks "
                        f"across {args.workers} workers",
                        file=sys.stderr,
                    )

    top_shapes = sorted(
        classes.values(),
        key=lambda item: (-item["cases"], item["shape_digest"]),
    )
    row_shape_summary = {
        "row_shape_count": len(classes),
        "max_cases_per_shape": max(
            (item["cases"] for item in classes.values()),
            default=0,
        ),
        "singleton_row_shapes": sum(
            1 for item in classes.values() if item["cases"] == 1
        ),
    }
    payload = {
        "schema_version": 1,
        "mode": "translation-support-row-shape-profile",
        "trusted_as_proof": False,
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
        "row_shape_summary": row_shape_summary,
        "decision": decision(
            counts=counts,
            row_shape_count=len(classes),
            max_row_shapes=args.max_row_shapes,
            warn_row_shapes=args.warn_row_shapes,
        ),
        "elapsed_seconds": time.monotonic() - start,
        "failure_samples": failure_samples,
        "top_row_shapes": top_shapes[: args.top_row_shapes],
        "row_shapes": top_shapes,
    }
    write_json(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "translation support row shapes: "
        f"{len(classes):,}; decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
