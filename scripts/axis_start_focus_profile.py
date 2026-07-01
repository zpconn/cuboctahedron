#!/usr/bin/env python3
"""Focus an exact residual-axis profile on one start-interior axis class.

This script is deliberately untrusted diagnostic infrastructure.  It emits no
Lean evidence.  It reuses the exact nonidentity forced-axis pipeline and then
filters terminal `axis_misses_start_interior` failures by canonical bad face
and D4-projective axis class.
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
from nonidentity_residual_axis_profile import (  # noqa: E402
    abs_axis_pattern_key,
    d4_projective_axis_key,
)
from profile_symmetry_compression import (  # noqa: E402
    terminal_axis_candidate_algebra_failure,
)
from shadow_normal_form_profile import shadow_scan  # noqa: E402


def default_json_path(start: int, end: int, bad_face: str, axis_d4: str) -> Path:
    axis_slug = axis_d4.replace(",", "_").replace("-", "m")
    return GENERATED_DIR / (
        f"axis_start_focus_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.json"
    )


def default_md_path(start: int, end: int, bad_face: str, axis_d4: str) -> Path:
    axis_slug = axis_d4.replace(",", "_").replace("-", "m")
    return GENERATED_DIR / (
        f"axis_start_focus_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.md"
    )


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


@dataclass
class FocusStats:
    max_distinct: int
    sample_limit: int
    start: int
    end: int
    target_bad_face: str
    target_axis_d4: str
    scanned: int = 0
    nonidentity: int = 0
    forced_balance_survivors: int = 0
    axis_start_failures: int = 0
    matched: int = 0
    exact_axis_keys: CappedCounter | None = None
    abs_axis_keys: CappedCounter | None = None
    reduced_shadow_keys: CappedCounter | None = None
    reduced_len_keys: CappedCounter | None = None
    forced_signs_keys: CappedCounter | None = None
    solve_shape_keys: CappedCounter | None = None
    margin_keys: CappedCounter | None = None
    actual_bad_face_keys: CappedCounter | None = None
    exact_axis_reduced_shadow_keys: CappedCounter | None = None
    actual_bad_face_exact_axis_keys: CappedCounter | None = None
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=lambda: defaultdict(list))

    def __post_init__(self) -> None:
        for name in [
            "exact_axis_keys",
            "abs_axis_keys",
            "reduced_shadow_keys",
            "reduced_len_keys",
            "forced_signs_keys",
            "solve_shape_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "exact_axis_reduced_shadow_keys",
            "actual_bad_face_exact_axis_keys",
        ]:
            if getattr(self, name) is None:
                setattr(self, name, CappedCounter(self.max_distinct))

    def merge(self, other: FocusStats) -> None:
        self.scanned += other.scanned
        self.nonidentity += other.nonidentity
        self.forced_balance_survivors += other.forced_balance_survivors
        self.axis_start_failures += other.axis_start_failures
        self.matched += other.matched
        for name in [
            "exact_axis_keys",
            "abs_axis_keys",
            "reduced_shadow_keys",
            "reduced_len_keys",
            "forced_signs_keys",
            "solve_shape_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "exact_axis_reduced_shadow_keys",
            "actual_bad_face_exact_axis_keys",
        ]:
            mine = getattr(self, name)
            theirs = getattr(other, name)
            assert mine is not None and theirs is not None
            mine.merge(theirs)
        for bucket, samples in other.samples.items():
            current = self.samples[bucket]
            room = max(0, self.sample_limit - len(current))
            current.extend(samples[:room])

    def add_sample(self, bucket: str, sample: dict[str, Any]) -> None:
        if len(self.samples[bucket]) < self.sample_limit:
            self.samples[bucket].append(sample)

    def payload(self, *, elapsed_seconds: float, jobs: int, top: int) -> dict[str, Any]:
        counters: dict[str, CappedCounter] = {}
        for name in [
            "exact_axis_keys",
            "abs_axis_keys",
            "reduced_shadow_keys",
            "reduced_len_keys",
            "forced_signs_keys",
            "solve_shape_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "exact_axis_reduced_shadow_keys",
            "actual_bad_face_exact_axis_keys",
        ]:
            counter = getattr(self, name)
            assert counter is not None
            counters[name] = counter
        return {
            "schema_version": 1,
            "mode": "axis-start-focus-profile",
            "start": self.start,
            "end": self.end,
            "scanned": self.scanned,
            "jobs": jobs,
            "elapsed_seconds": elapsed_seconds,
            "target": {
                "canonical_bad_face": self.target_bad_face,
                "axis_d4": self.target_axis_d4,
            },
            "counts": {
                "nonidentity": self.nonidentity,
                "forced_balance_survivors": self.forced_balance_survivors,
                "axis_start_failures": self.axis_start_failures,
                "matched": self.matched,
            },
            "counters": {name: counter.payload(top=top) for name, counter in counters.items()},
            "samples": self.samples,
        }


def classify_leaf(stats: FocusStats, *, rank: int, word: tuple[str, ...], pref: list) -> None:
    stats.scanned += 1
    _parity, _shadow, reduced = shadow_scan(list(word))
    if not reduced:
        return
    stats.nonidentity += 1
    matrix = mat_mul(pref[-1], RPAIR["x"])
    if matrix == IDENTITY:
        return
    try:
        raw_axis = one_dimensional_fixed_axis(matrix)
    except ValueError:
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
        return
    oriented_axis, stage, details = positive_results[0]
    if stage != "forced_balance_survivor":
        return
    stats.forced_balance_survivors += 1

    failure, failure_details, _family_key = terminal_axis_candidate_algebra_failure(
        list(details["forced_seq"]),
        oriented_axis,
    )
    if failure != "axis_misses_start_interior":
        return
    stats.axis_start_failures += 1

    canonical_bad_face = failure_details.get(
        "canonical_bad_face",
        failure_details.get("bad_face", "?"),
    )
    oriented_axis_key = normalized_axis_key(oriented_axis)
    axis_d4 = d4_projective_axis_key(oriented_axis_key)
    if canonical_bad_face != stats.target_bad_face or axis_d4 != stats.target_axis_d4:
        return

    reduced_key = reduced_shadow_key(reduced)
    abs_axis = abs_axis_pattern_key(oriented_axis_key)
    solve_shape = failure_details.get("solve_shape", "?")
    margin = failure_details.get("margin", "?")
    actual_bad_face = failure_details.get("bad_face", "?")
    forced_signs = details["forced_signs"]

    stats.matched += 1
    assert stats.exact_axis_keys is not None
    assert stats.abs_axis_keys is not None
    assert stats.reduced_shadow_keys is not None
    assert stats.reduced_len_keys is not None
    assert stats.forced_signs_keys is not None
    assert stats.solve_shape_keys is not None
    assert stats.margin_keys is not None
    assert stats.actual_bad_face_keys is not None
    assert stats.exact_axis_reduced_shadow_keys is not None
    assert stats.actual_bad_face_exact_axis_keys is not None
    stats.exact_axis_keys.add(oriented_axis_key)
    stats.abs_axis_keys.add(abs_axis)
    stats.reduced_shadow_keys.add(reduced_key)
    stats.reduced_len_keys.add(str(len(reduced)))
    stats.forced_signs_keys.add(forced_signs)
    stats.solve_shape_keys.add(str(solve_shape))
    stats.margin_keys.add(str(margin))
    stats.actual_bad_face_keys.add(str(actual_bad_face))
    stats.exact_axis_reduced_shadow_keys.add(
        f"axis={oriented_axis_key}|reduced={reduced_key}"
    )
    stats.actual_bad_face_exact_axis_keys.add(
        f"badFace={actual_bad_face}|axis={oriented_axis_key}"
    )
    stats.add_sample("matched", {
        "rank": rank,
        "word": word_key(list(word)),
        "axis": vec_key(oriented_axis),
        "axis_key": oriented_axis_key,
        "axis_d4": axis_d4,
        "axis_abs": abs_axis,
        "reduced_shadow": reduced_key,
        "forced_signs": forced_signs,
        "forced_seq": details["forced_seq"],
        "failure_details": failure_details,
    })


def profile_range(
    start: int,
    end: int,
    *,
    target_bad_face: str,
    target_axis_d4: str,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> FocusStats:
    stats = FocusStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
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
                        f"axis-start-focus scanned {stats.scanned:,} "
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


def profile_maybe_parallel(
    start: int,
    end: int,
    *,
    jobs: int,
    chunk_size: int | None,
    target_bad_face: str,
    target_axis_d4: str,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> FocusStats:
    if jobs == 1:
        return profile_range(
            start,
            end,
            target_bad_face=target_bad_face,
            target_axis_d4=target_axis_d4,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )

    chunk = chunk_size or max(1, (end - start + jobs - 1) // jobs)
    ranges = [(lo, min(end, lo + chunk)) for lo in range(start, end, chunk)]
    aggregate = FocusStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
    )
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        futures = [
            pool.submit(
                profile_range,
                lo,
                hi,
                target_bad_face=target_bad_face,
                target_axis_d4=target_axis_d4,
                max_distinct=max_distinct,
                sample_limit=sample_limit,
                progress=progress,
            )
            for lo, hi in ranges
        ]
        for future in as_completed(futures):
            aggregate.merge(future.result())
    return aggregate


def render_markdown(payload: dict[str, Any]) -> str:
    target = payload["target"]
    lines = [
        "# Axis Start Focus Profile",
        "",
        f"- Range: `[{payload['start']:,}, {payload['end']:,})`",
        f"- Target canonical bad face: `{target['canonical_bad_face']}`",
        f"- Target D4 axis class: `{target['axis_d4']}`",
        f"- Scanned pair words: `{payload['scanned']:,}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        "- Arithmetic: exact Fraction/integer arithmetic; no floating point",
        "",
        "## Counts",
        "",
        "| Metric | Count |",
        "| --- | ---: |",
    ]
    for key, value in payload["counts"].items():
        lines.append(f"| `{key}` | `{value:,}` |")
    for name, counter in payload["counters"].items():
        title = name.replace("_", " ").title()
        lines.extend([
            "",
            f"## {title}",
            "",
            f"- Exact distinct count stored: `{counter['exact']}`",
            f"- Stored distinct keys: `{counter['stored_distinct']:,}`",
            f"- Overflow cases: `{counter['overflow_cases']:,}`",
            "",
            "| Key | Count |",
            "| --- | ---: |",
        ])
        for item in counter["top"]:
            lines.append(f"| `{item['key']}` | `{item['count']:,}` |")
    lines.extend(["", "## Sample Buckets", ""])
    for bucket, samples in payload["samples"].items():
        lines.append(f"- `{bucket}`: `{len(samples)}` samples")
    return "\n".join(lines) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int)
    parser.add_argument("--limit", type=int, default=10_000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--chunk-size", type=int)
    parser.add_argument("--target-bad-face", default="yp")
    parser.add_argument("--target-axis-d4", default="1,-3,-1")
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
    began = time.time()
    stats = profile_maybe_parallel(
        args.start,
        end,
        jobs=args.jobs,
        chunk_size=args.chunk_size,
        target_bad_face=args.target_bad_face,
        target_axis_d4=args.target_axis_d4,
        max_distinct=args.max_distinct,
        sample_limit=args.sample_limit,
        progress=args.progress,
    )
    elapsed = time.time() - began
    payload = stats.payload(elapsed_seconds=elapsed, jobs=args.jobs, top=args.top)
    json_path = args.json or default_json_path(args.start, end, args.target_bad_face, args.target_axis_d4)
    md_path = args.markdown or default_md_path(args.start, end, args.target_bad_face, args.target_axis_d4)
    write_json(json_path, payload)
    write_text(md_path, render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
