#!/usr/bin/env python3
"""Profile source-pair parametric support facts for translation survivors.

This script is diagnostic only and is not trusted as proof.  It scans a bounded
rank window, keeps only translation GoodDirection survivors, reconstructs their
two-source Farkas supports, and groups by the two constraint sources only.

The point is to test the compression hypothesis after the exact row-shape
portfolio failed: if the surviving cases stay within a small number of source
pairs, generated Lean can try to prove the remaining coefficient/multiplier
facts parametrically instead of emitting one theorem per exact row shape.
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
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 100_000
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_source_pair_params_000000000_000100000.json"
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
    "source_pair_cases",
    "source_pair_valid_cases",
    "source_pair_invalid_cases",
]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def fresh_counts() -> dict[str, int]:
    return {key: 0 for key in COUNT_KEYS}


def merge_counts(total: dict[str, int], part: dict[str, int]) -> None:
    for key in COUNT_KEYS:
        total[key] += int(part.get(key, 0))


def source_pair_payload(source_terms: list[dict[str, Any]]) -> dict[str, Any]:
    return {
        "sources": [
            term["source"]
            for term in source_terms
        ]
    }


def source_pair_key(payload: dict[str, Any]) -> str:
    return json.dumps(payload, sort_keys=True, separators=(",", ":"))


def line_ab_key(line: tuple[Fraction, Fraction, Fraction]) -> tuple[str, str]:
    return (fraction_key(line[0]), fraction_key(line[1]))


def multipliers_key(values: tuple[Fraction, Fraction]) -> tuple[str, str]:
    return (fraction_key(values[0]), fraction_key(values[1]))


def weighted_c_value(
    multipliers: tuple[Fraction, Fraction],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
) -> Fraction:
    return multipliers[0] * first_line[2] + multipliers[1] * second_line[2]


def row_shape_key(
    *,
    multipliers: tuple[Fraction, Fraction],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
) -> str:
    payload = {
        "multipliers": list(multipliers_key(multipliers)),
        "first_ab": list(line_ab_key(first_line)),
        "second_ab": list(line_ab_key(second_line)),
    }
    return json.dumps(payload, sort_keys=True, separators=(",", ":"))


def sample_payload(
    *,
    rank: int,
    mask: int,
    word: list[str],
    seq: list[str],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
    multipliers: tuple[Fraction, Fraction],
) -> dict[str, Any]:
    wc = weighted_c_value(multipliers, first_line, second_line)
    return {
        "rank": rank,
        "mask": mask,
        "word": word_key(word),
        "seq": seq_key(seq),
        "multipliers": list(multipliers_key(multipliers)),
        "first_line": [fraction_key(value) for value in first_line],
        "second_line": [fraction_key(value) for value in second_line],
        "weighted_c": fraction_key(wc),
    }


def empty_pair_item(digest: str, payload: dict[str, Any]) -> dict[str, Any]:
    return {
        "source_pair_digest": digest,
        "key": payload,
        "cases": 0,
        "valid_cases": 0,
        "invalid_cases": 0,
        "row_shapes": set(),
        "multipliers": set(),
        "first_ab": set(),
        "second_ab": set(),
        "ab_pairs": set(),
        "weighted_c_values": set(),
        "weighted_c_positive_cases": 0,
        "samples": [],
        "invalid_samples": [],
    }


def add_source_pair_case(
    classes: dict[str, dict[str, Any]],
    *,
    key_payload: dict[str, Any],
    valid: bool,
    multipliers: tuple[Fraction, Fraction],
    first_line: tuple[Fraction, Fraction, Fraction],
    second_line: tuple[Fraction, Fraction, Fraction],
    sample: dict[str, Any],
    sample_limit: int,
) -> None:
    digest = stable_digest(source_pair_key(key_payload))
    item = classes.setdefault(digest, empty_pair_item(digest, key_payload))
    item["cases"] += 1
    if valid:
        item["valid_cases"] += 1
        if len(item["samples"]) < sample_limit:
            item["samples"].append(sample)
    else:
        item["invalid_cases"] += 1
        if len(item["invalid_samples"]) < sample_limit:
            item["invalid_samples"].append(sample)

    wc = weighted_c_value(multipliers, first_line, second_line)
    item["row_shapes"].add(
        row_shape_key(
            multipliers=multipliers,
            first_line=first_line,
            second_line=second_line,
        )
    )
    item["multipliers"].add(multipliers_key(multipliers))
    first_ab = line_ab_key(first_line)
    second_ab = line_ab_key(second_line)
    item["first_ab"].add(first_ab)
    item["second_ab"].add(second_ab)
    item["ab_pairs"].add((first_ab, second_ab))
    item["weighted_c_values"].add(fraction_key(wc))
    if wc > 0:
        item["weighted_c_positive_cases"] += 1


def serializable_pair_item(item: dict[str, Any]) -> dict[str, Any]:
    return {
        "source_pair_digest": item["source_pair_digest"],
        "key": item["key"],
        "cases": item["cases"],
        "valid_cases": item["valid_cases"],
        "invalid_cases": item["invalid_cases"],
        "row_shape_count": len(item["row_shapes"]),
        "multiplier_count": len(item["multipliers"]),
        "first_ab_count": len(item["first_ab"]),
        "second_ab_count": len(item["second_ab"]),
        "ab_pair_count": len(item["ab_pairs"]),
        "weighted_c_value_count": len(item["weighted_c_values"]),
        "weighted_c_positive_cases": item["weighted_c_positive_cases"],
        "samples": item["samples"],
        "invalid_samples": item["invalid_samples"],
    }


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
            counts["source_pair_cases"] += 1
            if valid:
                counts["source_pair_valid_cases"] += 1
            else:
                counts["source_pair_invalid_cases"] += 1
            add_source_pair_case(
                classes,
                key_payload=source_pair_payload(source_terms),
                valid=valid,
                multipliers=multipliers,
                first_line=first_line,
                second_line=second_line,
                sample=sample_payload(
                    rank=rank,
                    mask=mask,
                    word=word,
                    seq=seq,
                    first_line=first_line,
                    second_line=second_line,
                    multipliers=multipliers,
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
            empty_pair_item(digest, incoming["key"]),
        )
        if target["key"] != incoming["key"]:
            raise RuntimeError(f"source-pair digest collision or mismatch: {digest}")
        target["cases"] += incoming["cases"]
        target["valid_cases"] += incoming["valid_cases"]
        target["invalid_cases"] += incoming["invalid_cases"]
        for name in [
            "row_shapes",
            "multipliers",
            "first_ab",
            "second_ab",
            "ab_pairs",
            "weighted_c_values",
        ]:
            target[name].update(incoming[name])
        target["weighted_c_positive_cases"] += incoming["weighted_c_positive_cases"]
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


def complexity_summary(classes: dict[str, dict[str, Any]]) -> dict[str, Any]:
    row_shape_counts = [len(item["row_shapes"]) for item in classes.values()]
    multiplier_counts = [len(item["multipliers"]) for item in classes.values()]
    weighted_c_counts = [len(item["weighted_c_values"]) for item in classes.values()]
    return {
        "source_pair_count": len(classes),
        "source_pair_obligations": len(classes),
        "row_shape_count_if_exact_rows": sum(row_shape_counts),
        "max_row_shapes_per_pair": max(row_shape_counts, default=0),
        "source_pairs_with_one_row_shape": sum(1 for value in row_shape_counts if value == 1),
        "source_pairs_with_more_than_100_row_shapes": sum(
            1 for value in row_shape_counts if value > 100
        ),
        "max_multiplier_variants_per_pair": max(multiplier_counts, default=0),
        "max_weighted_c_values_per_pair": max(weighted_c_counts, default=0),
    }


def decision(
    *,
    counts: dict[str, int],
    summary: dict[str, Any],
    max_source_pairs: int,
    max_symbolic_obligations: int,
) -> dict[str, Any]:
    notes: list[str] = []
    source_pair_count = int(summary["source_pair_count"])
    symbolic_obligations = int(summary["source_pair_obligations"])
    if counts["source_farkas_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures occurred")
    elif counts["non_two_source_cases"]:
        status = "rejected"
        notes.append("some GoodDirection survivors were not two-source")
    elif counts["source_pair_invalid_cases"]:
        status = "rejected"
        notes.append("some source-pair cases do not satisfy two-source checked facts")
    elif source_pair_count > max_source_pairs:
        status = "rejected"
        notes.append(f"source-pair count exceeds the hard gate of {max_source_pairs}")
    elif symbolic_obligations > max_symbolic_obligations:
        status = "rejected"
        notes.append(
            "estimated symbolic source-pair obligations exceed the hard gate "
            f"of {max_symbolic_obligations}"
        )
    else:
        status = "accepted"
        notes.append(
            "source pairs cover every GoodDirection survivor in the window; "
            "next step is a Lean pilot for a high-variation source pair"
        )
    if summary["max_row_shapes_per_pair"] > 100:
        notes.append(
            "several source pairs have high exact-row variation, so generated "
            "proofs must be parametric rather than exact row-shape enumerations"
        )
    return {
        "status": status,
        "accepted_for_phase_6z2": status == "accepted",
        "max_source_pairs": max_source_pairs,
        "max_symbolic_obligations": max_symbolic_obligations,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    summary = payload["source_pair_summary"]
    lines = [
        "# Phase 6Z.2 Translation Source-Pair Parametric Profile",
        "",
        "This report is diagnostic only; Lean must still check any emitted family theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Pair words scanned | {counts['pair_words_scanned']:,} |",
        f"| Identity-linear words | {counts['identity_words']:,} |",
        f"| GoodDirection survivors | {counts['good_direction_survivors']:,} |",
        f"| Source-pair cases | {counts['source_pair_cases']:,} |",
        f"| Unique source pairs | {summary['source_pair_count']:,} |",
        f"| Exact row shapes behind those pairs | {summary['row_shape_count_if_exact_rows']:,} |",
        f"| Max row shapes per source pair | {summary['max_row_shapes_per_pair']:,} |",
        f"| Source pairs with >100 row shapes | {summary['source_pairs_with_more_than_100_row_shapes']:,} |",
        f"| Max multiplier variants per source pair | {summary['max_multiplier_variants_per_pair']:,} |",
        f"| Max weighted-c values per source pair | {summary['max_weighted_c_values_per_pair']:,} |",
        "",
        f"Decision: **{payload['decision']['status']}**",
        "",
    ]
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    lines.append("## Top Source Pairs By Exact-Row Variation")
    lines.append("")
    for index, item in enumerate(payload["top_source_pairs_by_row_shapes"], start=1):
        lines.append(
            f"{index}. `{item['source_pair_digest']}`: {item['cases']:,} cases; "
            f"{item['row_shape_count']:,} row shapes; "
            f"{item['multiplier_count']:,} multiplier variants; "
            f"sources={item['key']['sources']}"
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
    parser.add_argument("--max-source-pairs", type=int, default=235)
    parser.add_argument("--max-symbolic-obligations", type=int, default=500)
    parser.add_argument("--top-source-pairs", type=int, default=24)
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

    summary = complexity_summary(classes)
    top_pairs = sorted(
        (serializable_pair_item(item) for item in classes.values()),
        key=lambda item: (-item["row_shape_count"], -item["cases"], item["source_pair_digest"]),
    )
    case_top_pairs = sorted(
        (serializable_pair_item(item) for item in classes.values()),
        key=lambda item: (-item["cases"], -item["row_shape_count"], item["source_pair_digest"]),
    )
    payload = {
        "schema_version": 1,
        "mode": "translation-source-pair-parametric-profile",
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
        "source_pair_summary": summary,
        "decision": decision(
            counts=counts,
            summary=summary,
            max_source_pairs=args.max_source_pairs,
            max_symbolic_obligations=args.max_symbolic_obligations,
        ),
        "elapsed_seconds": time.monotonic() - start,
        "failure_samples": failure_samples,
        "top_source_pairs_by_row_shapes": top_pairs[: args.top_source_pairs],
        "top_source_pairs_by_cases": case_top_pairs[: args.top_source_pairs],
        "source_pairs": top_pairs,
    }
    write_json(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "translation source-pair classes: "
        f"{summary['source_pair_count']:,}; decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
