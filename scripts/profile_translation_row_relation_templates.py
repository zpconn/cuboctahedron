#!/usr/bin/env python3
"""Profile semantic row-relation templates for translation support families.

This script is diagnostic only and is not trusted as proof.  It scans a bounded
rank window, keeps only translation GoodDirection survivors, reconstructs their
two-source Farkas supports, and classifies each survivor by small row-relation
templates instead of exact row-shape literals.

The goal is to test whether the successful Phase 6Z.3 high-variation theorem
can be generalized into a small portfolio of reusable Lean template theorems.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
import json
import sys
import time
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any, Callable

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
from profile_translation_source_pair_params import (  # noqa: E402
    source_pair_key,
    source_pair_payload,
    weighted_c_value,
)
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 100_000
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_row_relation_templates_000000000_000100000.json"
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
    "template_candidate_cases",
    "template_valid_cases",
    "template_invalid_cases",
    "covered_cases",
    "uncovered_cases",
    "overlap_cases",
]

Line = tuple[Fraction, Fraction, Fraction]
Matcher = Callable[[Line, Line, tuple[Fraction, Fraction]], bool]


@dataclass(frozen=True)
class Template:
    template_id: str
    description: str
    matcher: Matcher


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def fresh_counts() -> dict[str, int]:
    return {key: 0 for key in COUNT_KEYS}


def merge_counts(total: dict[str, int], part: dict[str, int]) -> None:
    for key in COUNT_KEYS:
        total[key] += int(part.get(key, 0))


def line_key(line: Line) -> list[str]:
    return [fraction_key(value) for value in line]


def multipliers_key(values: tuple[Fraction, Fraction]) -> list[str]:
    return [fraction_key(values[0]), fraction_key(values[1])]


def sample_payload(
    *,
    rank: int,
    mask: int,
    word: list[str],
    seq: list[str],
    source_pair_digest: str,
    source_terms: list[dict[str, Any]],
    first_line: Line,
    second_line: Line,
    multipliers: tuple[Fraction, Fraction],
    matches: list[str],
) -> dict[str, Any]:
    return {
        "rank": rank,
        "mask": mask,
        "word": word_key(word),
        "seq": seq_key(seq),
        "source_pair_digest": source_pair_digest,
        "sources": [term["source"] for term in source_terms],
        "first_line": line_key(first_line),
        "second_line": line_key(second_line),
        "multipliers": multipliers_key(multipliers),
        "weighted_c": fraction_key(
            weighted_c_value(multipliers, first_line, second_line)
        ),
        "matches": matches,
    }


def fixed(line: Line, a: int, b: int) -> bool:
    return line[0] == Fraction(a) and line[1] == Fraction(b) and line[2] == 1


def eq_row(line: Line) -> bool:
    return line[0] == line[1]


def opp_row(line: Line) -> bool:
    return line[0] == -line[1]


def c_le_for_fixed_positive(var: Line) -> bool:
    a, _b, c = var
    return a < 0 and c <= a


def c_le_for_fixed_negative(var: Line) -> bool:
    a, _b, c = var
    return 0 < a and c <= -a


def eq_eq_pos_var_first(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return eq_row(first) and fixed(second, 1, 1) and c_le_for_fixed_positive(first)


def eq_eq_pos_var_second(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return fixed(first, 1, 1) and eq_row(second) and c_le_for_fixed_positive(second)


def eq_eq_neg_var_first(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return eq_row(first) and fixed(second, -1, -1) and c_le_for_fixed_negative(first)


def eq_eq_neg_var_second(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return fixed(first, -1, -1) and eq_row(second) and c_le_for_fixed_negative(second)


def opp_1m_var_first(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return opp_row(first) and fixed(second, 1, -1) and c_le_for_fixed_positive(first)


def opp_1m_var_second(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return fixed(first, 1, -1) and opp_row(second) and c_le_for_fixed_positive(second)


def opp_m1_var_first(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return opp_row(first) and fixed(second, -1, 1) and c_le_for_fixed_negative(first)


def opp_m1_var_second(first: Line, second: Line, _w: tuple[Fraction, Fraction]) -> bool:
    return fixed(first, -1, 1) and opp_row(second) and c_le_for_fixed_negative(second)


def axis_a_only(first: Line, second: Line, w: tuple[Fraction, Fraction]) -> bool:
    return (
        first[1] == 0
        and second[1] == 0
        and first[0] * second[0] < 0
        and shape_valid(multipliers=w, first_line=first, second_line=second)
    )


def axis_b_only(first: Line, second: Line, w: tuple[Fraction, Fraction]) -> bool:
    return (
        first[0] == 0
        and second[0] == 0
        and first[1] * second[1] < 0
        and shape_valid(multipliers=w, first_line=first, second_line=second)
    )


TEMPLATES: list[Template] = [
    Template(
        "eq_eq_pos_var_first",
        "variable `(a,a,c)` first, fixed `(1,1,1)` second, `a < 0`, `c <= a`",
        eq_eq_pos_var_first,
    ),
    Template(
        "eq_eq_pos_var_second",
        "fixed `(1,1,1)` first, variable `(a,a,c)` second, `a < 0`, `c <= a`",
        eq_eq_pos_var_second,
    ),
    Template(
        "eq_eq_neg_var_first",
        "variable `(a,a,c)` first, fixed `(-1,-1,1)` second, `0 < a`, `c <= -a`",
        eq_eq_neg_var_first,
    ),
    Template(
        "eq_eq_neg_var_second",
        "fixed `(-1,-1,1)` first, variable `(a,a,c)` second, `0 < a`, `c <= -a`",
        eq_eq_neg_var_second,
    ),
    Template(
        "opp_1m_var_first",
        "variable `(a,-a,c)` first, fixed `(1,-1,1)` second, `a < 0`, `c <= a`",
        opp_1m_var_first,
    ),
    Template(
        "opp_1m_var_second",
        "fixed `(1,-1,1)` first, variable `(a,-a,c)` second, `a < 0`, `c <= a`",
        opp_1m_var_second,
    ),
    Template(
        "opp_m1_var_first",
        "variable `(a,-a,c)` first, fixed `(-1,1,1)` second, `0 < a`, `c <= -a`",
        opp_m1_var_first,
    ),
    Template(
        "opp_m1_var_second",
        "fixed `(-1,1,1)` first, variable `(a,-a,c)` second, `0 < a`, `c <= -a`",
        opp_m1_var_second,
    ),
    Template(
        "axis_a_only",
        "both rows have zero `b` coefficient and opposite nonzero `a` signs",
        axis_a_only,
    ),
    Template(
        "axis_b_only",
        "both rows have zero `a` coefficient and opposite nonzero `b` signs",
        axis_b_only,
    ),
]


def matching_templates(
    first_line: Line,
    second_line: Line,
    multipliers: tuple[Fraction, Fraction],
) -> list[str]:
    return [
        template.template_id
        for template in TEMPLATES
        if template.matcher(first_line, second_line, multipliers)
    ]


def scan_rank_window(
    *,
    rank_start: int,
    rank_end: int,
    sample_limit: int,
    progress_interval: int = 0,
) -> dict[str, Any]:
    counts = fresh_counts()
    assigned_template_counts: Counter[str] = Counter()
    all_template_counts: Counter[str] = Counter()
    source_pairs_by_template: dict[str, set[str]] = defaultdict(set)
    covered_source_pairs: set[str] = set()
    all_source_pairs: set[str] = set()
    uncovered_source_pairs: set[str] = set()
    partial_source_pairs: set[str] = set()
    source_pair_case_counts: Counter[str] = Counter()
    source_pair_uncovered_counts: Counter[str] = Counter()
    failure_samples: list[dict[str, Any]] = []
    uncovered_samples: list[dict[str, Any]] = []
    overlap_samples: list[dict[str, Any]] = []

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
            counts["template_candidate_cases"] += 1
            if valid:
                counts["template_valid_cases"] += 1
            else:
                counts["template_invalid_cases"] += 1

            pair_payload = source_pair_payload(source_terms)
            source_pair_digest = stable_digest(source_pair_key(pair_payload))
            all_source_pairs.add(source_pair_digest)
            source_pair_case_counts[source_pair_digest] += 1

            matches = matching_templates(first_line, second_line, multipliers)
            for template_id in matches:
                all_template_counts[template_id] += 1
                source_pairs_by_template[template_id].add(source_pair_digest)
            sample = sample_payload(
                rank=rank,
                mask=mask,
                word=word,
                seq=seq,
                source_pair_digest=source_pair_digest,
                source_terms=source_terms,
                first_line=first_line,
                second_line=second_line,
                multipliers=multipliers,
                matches=matches,
            )
            if matches:
                counts["covered_cases"] += 1
                assigned_template_counts[matches[0]] += 1
                covered_source_pairs.add(source_pair_digest)
                if len(matches) > 1:
                    counts["overlap_cases"] += 1
                    if len(overlap_samples) < sample_limit:
                        overlap_samples.append(sample)
            else:
                counts["uncovered_cases"] += 1
                uncovered_source_pairs.add(source_pair_digest)
                source_pair_uncovered_counts[source_pair_digest] += 1
                if len(uncovered_samples) < sample_limit:
                    uncovered_samples.append(sample)

    for digest in covered_source_pairs & uncovered_source_pairs:
        partial_source_pairs.add(digest)

    return {
        "counts": counts,
        "assigned_template_counts": dict(assigned_template_counts),
        "all_template_counts": dict(all_template_counts),
        "source_pairs_by_template": {
            template_id: sorted(digests)
            for template_id, digests in source_pairs_by_template.items()
        },
        "all_source_pairs": sorted(all_source_pairs),
        "covered_source_pairs": sorted(covered_source_pairs),
        "uncovered_source_pairs": sorted(uncovered_source_pairs),
        "partial_source_pairs": sorted(partial_source_pairs),
        "source_pair_case_counts": dict(source_pair_case_counts),
        "source_pair_uncovered_counts": dict(source_pair_uncovered_counts),
        "failure_samples": failure_samples,
        "uncovered_samples": uncovered_samples,
        "overlap_samples": overlap_samples,
    }


def scan_rank_window_from_tuple(args: tuple[int, int, int]) -> dict[str, Any]:
    rank_start, rank_end, sample_limit = args
    return scan_rank_window(
        rank_start=rank_start,
        rank_end=rank_end,
        sample_limit=sample_limit,
    )


def merge_counter_dict(target: Counter[str], incoming: dict[str, int]) -> None:
    for key, value in incoming.items():
        target[key] += int(value)


def extend_samples(
    total: list[dict[str, Any]], part: list[dict[str, Any]], limit: int
) -> None:
    if len(total) >= limit:
        return
    total.extend(part[: limit - len(total)])


def merge_results(
    total: dict[str, Any],
    part: dict[str, Any],
    *,
    sample_limit: int,
) -> None:
    merge_counts(total["counts"], part["counts"])
    merge_counter_dict(total["assigned_template_counts"], part["assigned_template_counts"])
    merge_counter_dict(total["all_template_counts"], part["all_template_counts"])
    for template_id, digests in part["source_pairs_by_template"].items():
        total["source_pairs_by_template"][template_id].update(digests)
    for name in [
        "all_source_pairs",
        "covered_source_pairs",
        "uncovered_source_pairs",
        "partial_source_pairs",
    ]:
        total[name].update(part[name])
    merge_counter_dict(total["source_pair_case_counts"], part["source_pair_case_counts"])
    merge_counter_dict(
        total["source_pair_uncovered_counts"],
        part["source_pair_uncovered_counts"],
    )
    extend_samples(total["failure_samples"], part["failure_samples"], sample_limit)
    extend_samples(total["uncovered_samples"], part["uncovered_samples"], sample_limit)
    extend_samples(total["overlap_samples"], part["overlap_samples"], sample_limit)


def fresh_total() -> dict[str, Any]:
    return {
        "counts": fresh_counts(),
        "assigned_template_counts": Counter(),
        "all_template_counts": Counter(),
        "source_pairs_by_template": defaultdict(set),
        "all_source_pairs": set(),
        "covered_source_pairs": set(),
        "uncovered_source_pairs": set(),
        "partial_source_pairs": set(),
        "source_pair_case_counts": Counter(),
        "source_pair_uncovered_counts": Counter(),
        "failure_samples": [],
        "uncovered_samples": [],
        "overlap_samples": [],
    }


def finalize_total(total: dict[str, Any]) -> dict[str, Any]:
    all_pairs = set(total["all_source_pairs"])
    uncovered_pairs = set(total["uncovered_source_pairs"])
    fully_covered_pairs = all_pairs - uncovered_pairs
    partial_pairs = set(total["partial_source_pairs"])
    return {
        "counts": total["counts"],
        "assigned_template_counts": dict(sorted(total["assigned_template_counts"].items())),
        "all_template_counts": dict(sorted(total["all_template_counts"].items())),
        "source_pair_summary": {
            "total_source_pairs": len(all_pairs),
            "fully_covered_source_pairs": len(fully_covered_pairs),
            "uncovered_source_pairs": len(uncovered_pairs),
            "partial_source_pairs": len(partial_pairs),
        },
        "source_pairs_by_template": {
            template_id: sorted(digests)
            for template_id, digests in sorted(total["source_pairs_by_template"].items())
        },
        "top_uncovered_source_pairs": [
            {
                "source_pair_digest": digest,
                "uncovered_cases": count,
                "total_cases": total["source_pair_case_counts"].get(digest, 0),
            }
            for digest, count in total["source_pair_uncovered_counts"].most_common(24)
        ],
        "failure_samples": total["failure_samples"],
        "uncovered_samples": total["uncovered_samples"],
        "overlap_samples": total["overlap_samples"],
    }


def decision(
    counts: dict[str, int],
    *,
    partial_uncovered_max: int,
) -> dict[str, Any]:
    notes: list[str] = []
    if counts["source_farkas_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures occurred")
    elif counts["non_two_source_cases"]:
        status = "rejected"
        notes.append("some GoodDirection survivors were not two-source")
    elif counts["template_invalid_cases"]:
        status = "rejected"
        notes.append("some two-source cases failed exact validity")
    elif counts["uncovered_cases"] == 0:
        status = "accepted"
        notes.append("row-relation templates cover every GoodDirection survivor")
    elif counts["uncovered_cases"] < partial_uncovered_max:
        status = "partial"
        notes.append(
            "row-relation templates nearly cover the window; inspect uncovered "
            "samples before adding a small extra template"
        )
    else:
        status = "rejected"
        notes.append(
            f"uncovered cases exceed the partial gate of {partial_uncovered_max}"
        )
    if counts["overlap_cases"]:
        notes.append(
            "some cases match multiple templates; future Lean classifiers need "
            "a priority assignment"
        )
    return {
        "status": status,
        "accepted_for_phase_6z4": status == "accepted",
        "partial_uncovered_max": partial_uncovered_max,
        "notes": notes,
    }


def template_catalog() -> list[dict[str, str]]:
    return [
        {
            "template_id": template.template_id,
            "description": template.description,
        }
        for template in TEMPLATES
    ]


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    pair_summary = payload["source_pair_summary"]
    lines = [
        "# Phase 6Z.4 Translation Row-Relation Template Profile",
        "",
        "This report is diagnostic only; Lean must check any emitted template theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Pair words scanned | {counts['pair_words_scanned']:,} |",
        f"| Identity-linear words | {counts['identity_words']:,} |",
        f"| GoodDirection survivors | {counts['good_direction_survivors']:,} |",
        f"| Template candidate cases | {counts['template_candidate_cases']:,} |",
        f"| Covered cases | {counts['covered_cases']:,} |",
        f"| Uncovered cases | {counts['uncovered_cases']:,} |",
        f"| Overlap cases | {counts['overlap_cases']:,} |",
        f"| Total source pairs | {pair_summary['total_source_pairs']:,} |",
        f"| Fully covered source pairs | {pair_summary['fully_covered_source_pairs']:,} |",
        f"| Partial source pairs | {pair_summary['partial_source_pairs']:,} |",
        f"| Source pairs with uncovered cases | {pair_summary['uncovered_source_pairs']:,} |",
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
    parser.add_argument("--rank-start", type=int, default=DEFAULT_RANK_START)
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--shard-size", type=int, default=5_000)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument("--partial-uncovered-max", type=int, default=250)
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
    total = fresh_total()
    end = args.rank_start + args.limit

    if args.workers == 1:
        result = scan_rank_window(
            rank_start=args.rank_start,
            rank_end=end,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        merge_results(total, result, sample_limit=args.sample_limit)
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
                merge_results(total, result, sample_limit=args.sample_limit)
                completed_ranks += shard_end - shard_start
                if args.progress_interval:
                    print(
                        f"completed {completed_ranks:,}/{args.limit:,} ranks "
                        f"across {args.workers} workers",
                        file=sys.stderr,
                    )

    finalized = finalize_total(total)
    payload = {
        "schema_version": 1,
        "mode": "translation-row-relation-template-profile",
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
        "template_catalog": template_catalog(),
        "elapsed_seconds": time.monotonic() - start,
        **finalized,
    }
    payload["decision"] = decision(
        payload["counts"],
        partial_uncovered_max=args.partial_uncovered_max,
    )
    write_json(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "row-relation template coverage: "
        f"{payload['counts']['covered_cases']:,}/"
        f"{payload['counts']['good_direction_survivors']:,}; "
        f"decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
