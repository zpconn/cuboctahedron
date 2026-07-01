#!/usr/bin/env python3
"""Exact residual-axis profiler for nontranslation forced-sign survivors.

This script is deliberately untrusted.  It emits no Lean evidence and proves
nothing.  Its job is to measure whether the nontranslation cases that survive
the forced-axis sign filter cluster into a small number of terminal affine-axis
failure families.

All arithmetic is exact ``Fraction``/integer arithmetic inherited from the
existing profiler helpers.  There are no floating point tolerances.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from dataclasses import dataclass, field
import json
import sys
import time
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
GENERATED_DIR = SCRIPT_DIR / "generated"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from exact_profile import (  # noqa: E402
    EXPECTED_PAIR_WORDS,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    mat_key,
    mat_mul,
    multinomial_count,
    one_dimensional_fixed_axis,
    vec_key,
    word_key,
)
from forced_axis_sign_profile import (  # noqa: E402
    CappedCounter,
    neg_vec,
    normalized_axis_key,
    orientation_stage,
    reduced_shadow_key,
)
from profile_symmetry_compression import (  # noqa: E402
    terminal_axis_candidate_algebra_failure,
)
from shadow_normal_form_profile import shadow_scan  # noqa: E402


def default_json_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"nonidentity_residual_axis_profile_{start:09d}_{end:09d}.json"


def default_md_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"nonidentity_residual_axis_profile_{start:09d}_{end:09d}.md"


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


@dataclass
class ResidualAxisStats:
    max_distinct: int
    sample_limit: int
    start: int
    end: int
    scanned: int = 0
    shadow_identity: int = 0
    shadow_nonidentity: int = 0
    exact_identity: int = 0
    exact_nonidentity: int = 0
    shadow_linear_mismatches: int = 0
    no_fixed_axis: int = 0
    final_axis_reject: int = 0
    forced_zero_denominator: int = 0
    bad_pair_balance: int = 0
    residual_survivors: int = 0
    terminal_failure_counts: Counter[str] = field(default_factory=Counter)
    terminal_family_keys: CappedCounter | None = None
    residual_signatures: CappedCounter | None = None
    terminal_by_reduced_shadow: CappedCounter | None = None
    terminal_by_axis: CappedCounter | None = None
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=lambda: defaultdict(list))

    def __post_init__(self) -> None:
        if self.terminal_family_keys is None:
            self.terminal_family_keys = CappedCounter(self.max_distinct)
        if self.residual_signatures is None:
            self.residual_signatures = CappedCounter(self.max_distinct)
        if self.terminal_by_reduced_shadow is None:
            self.terminal_by_reduced_shadow = CappedCounter(self.max_distinct)
        if self.terminal_by_axis is None:
            self.terminal_by_axis = CappedCounter(self.max_distinct)

    def add_sample(self, stage: str, sample: dict[str, Any]) -> None:
        bucket = self.samples.setdefault(stage, [])
        if len(bucket) < self.sample_limit:
            bucket.append(sample)

    def merge(self, other: "ResidualAxisStats") -> None:
        self.scanned += other.scanned
        self.shadow_identity += other.shadow_identity
        self.shadow_nonidentity += other.shadow_nonidentity
        self.exact_identity += other.exact_identity
        self.exact_nonidentity += other.exact_nonidentity
        self.shadow_linear_mismatches += other.shadow_linear_mismatches
        self.no_fixed_axis += other.no_fixed_axis
        self.final_axis_reject += other.final_axis_reject
        self.forced_zero_denominator += other.forced_zero_denominator
        self.bad_pair_balance += other.bad_pair_balance
        self.residual_survivors += other.residual_survivors
        self.terminal_failure_counts.update(other.terminal_failure_counts)
        assert self.terminal_family_keys is not None and other.terminal_family_keys is not None
        assert self.residual_signatures is not None and other.residual_signatures is not None
        assert self.terminal_by_reduced_shadow is not None and other.terminal_by_reduced_shadow is not None
        assert self.terminal_by_axis is not None and other.terminal_by_axis is not None
        self.terminal_family_keys.merge(other.terminal_family_keys)
        self.residual_signatures.merge(other.residual_signatures)
        self.terminal_by_reduced_shadow.merge(other.terminal_by_reduced_shadow)
        self.terminal_by_axis.merge(other.terminal_by_axis)
        for stage, samples in other.samples.items():
            for sample in samples:
                self.add_sample(stage, sample)

    def payload(self, *, elapsed_seconds: float, jobs: int, top: int) -> dict[str, Any]:
        assert self.terminal_family_keys is not None
        assert self.residual_signatures is not None
        assert self.terminal_by_reduced_shadow is not None
        assert self.terminal_by_axis is not None
        return {
            "schema_version": 1,
            "mode": "nonidentity-residual-axis-profile",
            "arithmetic": "exact Fraction/integer arithmetic; no floating point",
            "product_order": "R(w[0]) * ... * R(w[12]) * R(x)",
            "start": self.start,
            "end": self.end,
            "scanned": self.scanned,
            "elapsed_seconds": elapsed_seconds,
            "jobs": jobs,
            "counts": {
                "shadow_identity": self.shadow_identity,
                "shadow_nonidentity": self.shadow_nonidentity,
                "exact_identity": self.exact_identity,
                "exact_nonidentity": self.exact_nonidentity,
                "shadow_linear_mismatches": self.shadow_linear_mismatches,
                "no_fixed_axis": self.no_fixed_axis,
                "final_axis_reject": self.final_axis_reject,
                "forced_zero_denominator": self.forced_zero_denominator,
                "bad_pair_balance": self.bad_pair_balance,
                "residual_survivors": self.residual_survivors,
            },
            "terminal_failure_counts": dict(sorted(self.terminal_failure_counts.items())),
            "terminal_family_keys": self.terminal_family_keys.payload(top=top),
            "residual_signatures": self.residual_signatures.payload(top=top),
            "terminal_by_reduced_shadow": self.terminal_by_reduced_shadow.payload(top=top),
            "terminal_by_axis": self.terminal_by_axis.payload(top=top),
            "samples": self.samples,
        }


def classify_leaf(
    stats: ResidualAxisStats,
    *,
    rank: int,
    word: tuple[str, ...],
    pref: list,
) -> None:
    stats.scanned += 1
    _parity, _shadow, reduced = shadow_scan(list(word))
    reduced_key = reduced_shadow_key(reduced)

    matrix = mat_mul(pref[-1], RPAIR["x"])
    exact_identity = matrix == IDENTITY
    shadow_identity = not reduced
    if shadow_identity:
        stats.shadow_identity += 1
    else:
        stats.shadow_nonidentity += 1
    if exact_identity:
        stats.exact_identity += 1
    else:
        stats.exact_nonidentity += 1
    if exact_identity != shadow_identity:
        stats.shadow_linear_mismatches += 1
        stats.add_sample("shadow_linear_mismatch", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "linear": mat_key(matrix),
        })

    if shadow_identity:
        return

    try:
        raw_axis = one_dimensional_fixed_axis(matrix)
    except ValueError:
        stats.no_fixed_axis += 1
        stats.add_sample("no_fixed_axis", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "linear": mat_key(matrix),
        })
        return

    orientation_results = []
    for oriented_axis in (raw_axis, neg_vec(raw_axis)):
        stage, details = orientation_stage(word, pref, oriented_axis)
        orientation_results.append((oriented_axis, stage, details))

    positive_results = [
        (axis, stage, details)
        for axis, stage, details in orientation_results
        if stage != "final_dot_nonpositive"
    ]
    if not positive_results:
        stats.final_axis_reject += 1
        return

    if len(positive_results) > 1:
        stats.add_sample("multiple_positive_orientations", {
            "rank": rank,
            "word": word_key(list(word)),
            "axis": vec_key(raw_axis),
            "results": [
                {"stage": stage, **details}
                for _axis, stage, details in positive_results
            ],
        })

    oriented_axis, stage, details = positive_results[0]
    oriented_axis_key = normalized_axis_key(oriented_axis)
    if stage == "forced_zero_denominator":
        stats.forced_zero_denominator += 1
        return
    if stage == "bad_pair_balance":
        stats.bad_pair_balance += 1
        return
    if stage != "forced_balance_survivor":
        raise RuntimeError(f"unexpected positive-orientation stage: {stage}")

    forced_seq = details["forced_seq"]
    failure, failure_details, family_key = terminal_axis_candidate_algebra_failure(
        list(forced_seq),
        oriented_axis,
    )
    stats.residual_survivors += 1
    stats.terminal_failure_counts[failure] += 1
    assert stats.terminal_family_keys is not None
    assert stats.residual_signatures is not None
    assert stats.terminal_by_reduced_shadow is not None
    assert stats.terminal_by_axis is not None
    stats.terminal_family_keys.add(family_key)
    stats.residual_signatures.add(
        f"residual|reduced={reduced_key}|axis={oriented_axis_key}"
        f"|signs={details['forced_signs']}|failure={failure}"
    )
    stats.terminal_by_reduced_shadow.add(f"{failure}|reduced={reduced_key}")
    stats.terminal_by_axis.add(f"{failure}|axis={oriented_axis_key}")
    stats.add_sample(f"terminal_{failure}", {
        "rank": rank,
        "word": word_key(list(word)),
        "reduced_shadow": reduced_key,
        "axis": vec_key(oriented_axis),
        "forced_signs": details["forced_signs"],
        "forced_seq": forced_seq,
        "failure": failure,
        "family_key": family_key,
        "failure_details": failure_details,
    })


def profile_range(
    start: int,
    end: int,
    *,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> ResidualAxisStats:
    stats = ResidualAxisStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
    )
    remaining = dict(PAIR_COUNTS)
    prefix: list[str] = []
    pref = [IDENTITY]

    def rec(rank_lo: int) -> None:
        block_width = multinomial_count(remaining)
        rank_hi = rank_lo + block_width
        if rank_hi <= start or rank_lo >= end:
            return
        if len(prefix) == 13:
            if start <= rank_lo < end:
                classify_leaf(stats, rank=rank_lo, word=tuple(prefix), pref=list(pref))
                if progress and stats.scanned % progress == 0:
                    print(
                        f"residual-axis scanned {stats.scanned:,} "
                        f"window=[{start:,},{end:,}) rank={rank_lo:,}",
                        file=sys.stderr,
                        flush=True,
                    )
            return
        child_lo = rank_lo
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            remaining[pair_id] -= 1
            child_width = multinomial_count(remaining)
            child_hi = child_lo + child_width
            if child_hi > start and child_lo < end:
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                rec(child_lo)
                pref.pop()
                prefix.pop()
            remaining[pair_id] += 1
            child_lo = child_hi

    rec(0)
    return stats


def split_windows(start: int, end: int, jobs: int, chunk_size: int | None) -> list[tuple[int, int]]:
    if chunk_size is not None and chunk_size > 0:
        windows = []
        current = start
        while current < end:
            nxt = min(end, current + chunk_size)
            windows.append((current, nxt))
            current = nxt
        return windows
    width = end - start
    if jobs <= 1 or width <= 0:
        return [(start, end)]
    step = (width + jobs - 1) // jobs
    return [(lo, min(end, lo + step)) for lo in range(start, end, step)]


def profile_maybe_parallel(
    start: int,
    end: int,
    *,
    jobs: int,
    chunk_size: int | None,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> ResidualAxisStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )

    aggregate = ResidualAxisStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
    )
    with ProcessPoolExecutor(max_workers=jobs) as executor:
        futures = [
            executor.submit(
                profile_range,
                lo,
                hi,
                max_distinct=max_distinct,
                sample_limit=sample_limit,
                progress=progress,
            )
            for lo, hi in windows
        ]
        for future in as_completed(futures):
            aggregate.merge(future.result())
            print(
                f"residual-axis merged {aggregate.scanned:,}/{end-start:,}",
                file=sys.stderr,
                flush=True,
            )
    return aggregate


def render_markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Nonidentity Residual Axis Profile",
        "",
        f"- Range: `[{payload['start']:,}, {payload['end']:,})`",
        f"- Scanned pair words: `{payload['scanned']:,}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Arithmetic: {payload['arithmetic']}",
        "",
        "## Counts",
        "",
        "| Metric | Count |",
        "| --- | ---: |",
    ]
    for key, value in counts.items():
        lines.append(f"| `{key}` | `{value:,}` |")
    lines.extend([
        "",
        "## Terminal Failures",
        "",
        "| Failure | Count |",
        "| --- | ---: |",
    ])
    for key, value in payload["terminal_failure_counts"].items():
        lines.append(f"| `{key}` | `{value:,}` |")

    for section in [
        "terminal_family_keys",
        "residual_signatures",
        "terminal_by_reduced_shadow",
        "terminal_by_axis",
    ]:
        tracker = payload[section]
        lines.extend([
            "",
            f"## {section.replace('_', ' ').title()}",
            "",
            f"- Exact distinct count stored: `{tracker['exact']}`",
            f"- Stored distinct keys: `{tracker['stored_distinct']:,}`",
            f"- Overflow cases: `{tracker['overflow_cases']:,}`",
            "",
            "| Key | Count |",
            "| --- | ---: |",
        ])
        for row in tracker["top"]:
            lines.append(f"| `{row['key']}` | `{row['count']:,}` |")

    lines.extend(["", "## Sample Buckets", ""])
    for stage, samples in payload["samples"].items():
        lines.append(f"- `{stage}`: `{len(samples)}` samples")
    return "\n".join(lines) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int)
    parser.add_argument("--limit", type=int, default=10_000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--chunk-size", type=int)
    parser.add_argument("--max-distinct", type=int, default=20_000)
    parser.add_argument("--sample-limit", type=int, default=20)
    parser.add_argument("--top", type=int, default=25)
    parser.add_argument("--progress", type=int)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    end = args.end if args.end is not None else min(EXPECTED_PAIR_WORDS, args.start + args.limit)
    if not (0 <= args.start <= end <= EXPECTED_PAIR_WORDS):
        raise SystemExit("expected 0 <= start <= end <= numPairWords")
    if args.jobs < 1:
        raise SystemExit("--jobs must be positive")
    began = time.time()
    stats = profile_maybe_parallel(
        args.start,
        end,
        jobs=args.jobs,
        chunk_size=args.chunk_size,
        max_distinct=args.max_distinct,
        sample_limit=args.sample_limit,
        progress=args.progress,
    )
    elapsed = time.time() - began
    payload = stats.payload(elapsed_seconds=elapsed, jobs=args.jobs, top=args.top)
    json_path = args.json or default_json_path(args.start, end)
    md_path = args.markdown or default_md_path(args.start, end)
    write_json(json_path, payload)
    write_text(md_path, render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
