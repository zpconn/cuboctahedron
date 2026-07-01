#!/usr/bin/env python3
"""Exact forced-axis sign profiler for nontranslation pair words.

This script is deliberately untrusted.  It emits no Lean evidence.  Its job is
to measure whether the holonomy/shadow classifier leaves a nontranslation
branch that can be compressed by the forced-axis sign invariant.

The computation is exact: all matrix and dot-product arithmetic is inherited
from ``exact_profile.py`` and uses ``Fraction``/integers only.  There are no
floating point tolerances.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from dataclasses import dataclass, field
from fractions import Fraction
import json
import math
import sys
import time
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent
GENERATED_DIR = SCRIPT_DIR / "generated"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from exact_profile import (  # noqa: E402
    EXPECTED_PAIR_WORDS,
    IDENTITY,
    NORMALS,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    final_axis_dot,
    first_axis_zero_index,
    forced_sequence_from_axis,
    mat_key,
    mat_mul,
    mat_vec,
    multinomial_count,
    one_dimensional_fixed_axis,
    vec,
    vec_key,
    word_key,
)
from shadow_normal_form_profile import shadow_scan  # noqa: E402


def default_json_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"forced_axis_sign_profile_{start:09d}_{end:09d}.json"


def default_md_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"forced_axis_sign_profile_{start:09d}_{end:09d}.md"


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def fraction_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def normalize_projective_vec(values: tuple[Fraction, Fraction, Fraction]) -> tuple[int, int, int]:
    lcm = 1
    for value in values:
        lcm = lcm * value.denominator // math.gcd(lcm, value.denominator)
    ints = [value.numerator * (lcm // value.denominator) for value in values]
    gcd = 0
    for value in ints:
        gcd = math.gcd(gcd, abs(value))
    if gcd == 0:
        return (0, 0, 0)
    ints = [value // gcd for value in ints]
    first_nonzero = next((value for value in ints if value != 0), 1)
    if first_nonzero < 0:
        ints = [-value for value in ints]
    return tuple(ints)  # type: ignore[return-value]


def normalized_axis_key(values: tuple[Fraction, Fraction, Fraction]) -> str:
    return ",".join(str(value) for value in normalize_projective_vec(values))


def neg_vec(values: tuple[Fraction, Fraction, Fraction]) -> tuple[Fraction, Fraction, Fraction]:
    return (-values[0], -values[1], -values[2])


def reduced_shadow_key(reduced: list[str]) -> str:
    return " ".join(reduced) if reduced else "<empty>"


def forced_signs_key(seq: list[str]) -> str:
    # Drop the initial xp.  This mirrors the 13-letter pair-word payload.
    signs: list[str] = []
    for face in seq[1:]:
        signs.append("+" if face in {"xp", "yp", "zp", "tppp", "tppm", "tpmp", "tmpp"} else "-")
    return "".join(signs)


@dataclass
class CappedCounter:
    limit: int
    counts: Counter[str] = field(default_factory=Counter)
    overflow_cases: int = 0
    exact: bool = True

    def add(self, key: str, count: int = 1) -> None:
        if key in self.counts or len(self.counts) < self.limit:
            self.counts[key] += count
        else:
            self.exact = False
            self.overflow_cases += count

    def merge(self, other: "CappedCounter") -> None:
        for key, count in other.counts.items():
            self.add(key, count)
        if other.overflow_cases:
            self.exact = False
            self.overflow_cases += other.overflow_cases
        if not other.exact:
            self.exact = False

    def payload(self, *, top: int) -> dict[str, Any]:
        return {
            "exact": self.exact,
            "stored_distinct": len(self.counts),
            "overflow_cases": self.overflow_cases,
            "top": [
                {"key": key, "count": count}
                for key, count in self.counts.most_common(top)
            ],
        }


@dataclass
class ForcedAxisStats:
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
    final_axis_zero: int = 0
    final_axis_wrong_orientation_only: int = 0
    forced_zero_denominator: int = 0
    bad_pair_balance: int = 0
    forced_balance_survivors: int = 0
    orientation_stage_counts: Counter[str] = field(default_factory=Counter)
    reduced_shadows: CappedCounter | None = None
    axes: CappedCounter | None = None
    rejection_families: CappedCounter | None = None
    survivor_signatures: CappedCounter | None = None
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=lambda: defaultdict(list))

    def __post_init__(self) -> None:
        if self.reduced_shadows is None:
            self.reduced_shadows = CappedCounter(self.max_distinct)
        if self.axes is None:
            self.axes = CappedCounter(self.max_distinct)
        if self.rejection_families is None:
            self.rejection_families = CappedCounter(self.max_distinct)
        if self.survivor_signatures is None:
            self.survivor_signatures = CappedCounter(self.max_distinct)

    def add_sample(self, stage: str, sample: dict[str, Any]) -> None:
        bucket = self.samples.setdefault(stage, [])
        if len(bucket) < self.sample_limit:
            bucket.append(sample)

    def merge(self, other: "ForcedAxisStats") -> None:
        self.scanned += other.scanned
        self.shadow_identity += other.shadow_identity
        self.shadow_nonidentity += other.shadow_nonidentity
        self.exact_identity += other.exact_identity
        self.exact_nonidentity += other.exact_nonidentity
        self.shadow_linear_mismatches += other.shadow_linear_mismatches
        self.no_fixed_axis += other.no_fixed_axis
        self.final_axis_zero += other.final_axis_zero
        self.final_axis_wrong_orientation_only += other.final_axis_wrong_orientation_only
        self.forced_zero_denominator += other.forced_zero_denominator
        self.bad_pair_balance += other.bad_pair_balance
        self.forced_balance_survivors += other.forced_balance_survivors
        self.orientation_stage_counts.update(other.orientation_stage_counts)
        assert self.reduced_shadows is not None and other.reduced_shadows is not None
        assert self.axes is not None and other.axes is not None
        assert self.rejection_families is not None and other.rejection_families is not None
        assert self.survivor_signatures is not None and other.survivor_signatures is not None
        self.reduced_shadows.merge(other.reduced_shadows)
        self.axes.merge(other.axes)
        self.rejection_families.merge(other.rejection_families)
        self.survivor_signatures.merge(other.survivor_signatures)
        for stage, samples in other.samples.items():
            for sample in samples:
                self.add_sample(stage, sample)

    def payload(self, *, elapsed_seconds: float, jobs: int, top: int) -> dict[str, Any]:
        assert self.reduced_shadows is not None
        assert self.axes is not None
        assert self.rejection_families is not None
        assert self.survivor_signatures is not None
        return {
            "schema_version": 1,
            "mode": "forced-axis-sign-profile",
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
                "final_axis_zero": self.final_axis_zero,
                "final_axis_wrong_orientation_only": self.final_axis_wrong_orientation_only,
                "forced_zero_denominator": self.forced_zero_denominator,
                "bad_pair_balance": self.bad_pair_balance,
                "forced_balance_survivors": self.forced_balance_survivors,
            },
            "orientation_stage_counts": dict(sorted(self.orientation_stage_counts.items())),
            "reduced_shadows": self.reduced_shadows.payload(top=top),
            "axes": self.axes.payload(top=top),
            "rejection_families": self.rejection_families.payload(top=top),
            "survivor_signatures": self.survivor_signatures.payload(top=top),
            "samples": self.samples,
        }


def orientation_stage(
    word: tuple[str, ...],
    pref: list,
    axis: tuple[Fraction, Fraction, Fraction],
) -> tuple[str, dict[str, Any]]:
    final_dot = final_axis_dot(list(word), axis, pref)
    if final_dot <= 0:
        return "final_dot_nonpositive", {"final_axis_dot": fraction_key(final_dot)}

    zero_index = first_axis_zero_index(list(word), axis, pref)
    if zero_index is not None:
        pair_id = word[zero_index]
        transformed = mat_vec(pref[zero_index], vec(NORMALS[pair_id]))
        return "forced_zero_denominator", {
            "zero_at": zero_index,
            "zero_pair": pair_id,
            "transformed_normal": vec_key(transformed),
            "normal_class": normalized_axis_key(transformed),
            "final_axis_dot": fraction_key(final_dot),
        }

    forced_seq = forced_sequence_from_axis(list(word), axis, pref)
    if len(set(forced_seq)) != 14:
        counts = Counter(forced_seq)
        duplicated = [face for face, count in sorted(counts.items()) if count > 1]
        missing = sorted({"xp", "xm", "yp", "ym", "zp", "zm",
                          "tmmm", "tmmp", "tmpm", "tmpp",
                          "tpmm", "tpmp", "tppm", "tppp"} - set(forced_seq))
        return "bad_pair_balance", {
            "forced_seq": forced_seq,
            "forced_signs": forced_signs_key(forced_seq),
            "duplicated": duplicated,
            "missing": missing,
            "final_axis_dot": fraction_key(final_dot),
        }

    return "forced_balance_survivor", {
        "forced_seq": forced_seq,
        "forced_signs": forced_signs_key(forced_seq),
        "final_axis_dot": fraction_key(final_dot),
    }


def classify_leaf(
    stats: ForcedAxisStats,
    *,
    rank: int,
    word: tuple[str, ...],
    pref: list,
) -> None:
    stats.scanned += 1
    _parity, _shadow, reduced = shadow_scan(list(word))
    reduced_key = reduced_shadow_key(reduced)
    assert stats.reduced_shadows is not None
    stats.reduced_shadows.add(reduced_key)

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
        stats.rejection_families.add(f"noFixedAxis|linear={mat_key(matrix)}")
        stats.add_sample("no_fixed_axis", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "linear": mat_key(matrix),
        })
        return

    axis_key = normalized_axis_key(raw_axis)
    assert stats.axes is not None
    stats.axes.add(axis_key)

    orientation_results: list[tuple[tuple[Fraction, Fraction, Fraction], str, dict[str, Any]]] = []
    for oriented_axis in (raw_axis, neg_vec(raw_axis)):
        stage, details = orientation_stage(word, pref, oriented_axis)
        stats.orientation_stage_counts[stage] += 1
        orientation_results.append((oriented_axis, stage, details))

    positive_results = [
        (axis, stage, details)
        for axis, stage, details in orientation_results
        if stage != "final_dot_nonpositive"
    ]
    if not positive_results:
        if any(result[2].get("final_axis_dot") == "0" for result in orientation_results):
            stats.final_axis_zero += 1
            final_normal = mat_vec(pref[-1], vec(NORMALS["x"]))
            stats.rejection_families.add(
                "finalAxisZero"
                f"|axis={axis_key}|finalNormal={normalized_axis_key(final_normal)}"
            )
            stats.add_sample("final_axis_zero", {
                "rank": rank,
                "word": word_key(list(word)),
                "axis": vec_key(raw_axis),
                "final_normal": vec_key(final_normal),
            })
        else:
            stats.final_axis_wrong_orientation_only += 1
        return

    # At most one orientation can have positive final dot.  If exact arithmetic
    # ever shows otherwise, keep both in the sample so we can inspect the
    # convention before using the profile for proof design.
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
        stats.rejection_families.add(
            "forcedZero"
            f"|reduced={reduced_key}|axis={oriented_axis_key}"
            f"|zeroAt={details['zero_at']}|pair={details['zero_pair']}"
            f"|normal={details['normal_class']}"
        )
        stats.add_sample("forced_zero_denominator", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "axis": vec_key(oriented_axis),
            **details,
        })
    elif stage == "bad_pair_balance":
        stats.bad_pair_balance += 1
        stats.rejection_families.add(
            "badPairBalance"
            f"|reduced={reduced_key}|axis={oriented_axis_key}"
            f"|signs={details['forced_signs']}"
        )
        stats.add_sample("bad_pair_balance", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "axis": vec_key(oriented_axis),
            **details,
        })
    elif stage == "forced_balance_survivor":
        stats.forced_balance_survivors += 1
        assert stats.survivor_signatures is not None
        stats.survivor_signatures.add(
            "survivor"
            f"|reduced={reduced_key}|axis={oriented_axis_key}"
            f"|signs={details['forced_signs']}"
        )
        stats.add_sample("forced_balance_survivor", {
            "rank": rank,
            "word": word_key(list(word)),
            "reduced_shadow": reduced_key,
            "axis": vec_key(oriented_axis),
            **details,
        })
    else:
        raise RuntimeError(f"unexpected positive-orientation stage: {stage}")


def profile_range(
    start: int,
    end: int,
    *,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> ForcedAxisStats:
    stats = ForcedAxisStats(
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
                        f"forced-axis scanned {stats.scanned:,} "
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
) -> ForcedAxisStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )

    aggregate = ForcedAxisStats(
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
                f"forced-axis merged {aggregate.scanned:,}/{end-start:,}",
                file=sys.stderr,
                flush=True,
            )
    return aggregate


def render_markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Forced-Axis Sign Profile",
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
        "## Orientation Stages",
        "",
        "| Stage | Count |",
        "| --- | ---: |",
    ])
    for key, value in payload["orientation_stage_counts"].items():
        lines.append(f"| `{key}` | `{value:,}` |")

    for section in ["reduced_shadows", "axes", "rejection_families", "survivor_signatures"]:
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
