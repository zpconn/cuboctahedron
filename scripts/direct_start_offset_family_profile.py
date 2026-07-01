#!/usr/bin/env python3
"""Profile affine-offset family signatures for direct start violations.

This is untrusted diagnostic infrastructure.  It emits no Lean proof evidence.

The previous direct-start profiler showed that, after fixing a holonomy/axis
class, the start-interior violation can be factored through a small linear
margin form

  const + coeff_b · totalAff(seq).b <= 0.

This profiler asks whether the `coeff_b · totalAff(seq).b` part has a compact
family structure when decomposed as the sum of transported reflection deltas.
If it does, the next Lean theorem should prove the margin bound from that
family signature rather than from a concrete affine offset.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from dataclasses import dataclass, field
from fractions import Fraction
import json
import sys
import time
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
GENERATED_DIR = SCRIPT_DIR / "generated"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from direct_start_linear_profile import (  # noqa: E402
    direct_system_for_aff,
    margin_linear_form,
    margin_linear_form_key,
    qkey,
)
from exact_profile import (  # noqa: E402
    EXPECTED_PAIR_WORDS,
    FACE_ORDER,
    FACE_TO_PAIR_SIGN,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    dot,
    face_reflection,
    mat_mul,
    mat_vec,
    multinomial_count,
    one_dimensional_fixed_axis,
    total_aff,
    vec_key,
)
from forced_axis_sign_profile import (  # noqa: E402
    CappedCounter,
    neg_vec,
    normalized_axis_key,
    orientation_stage,
    reduced_shadow_key,
)
from nonidentity_residual_axis_profile import d4_projective_axis_key  # noqa: E402
from profile_symmetry_compression import terminal_axis_candidate_algebra_failure  # noqa: E402
from shadow_normal_form_profile import shadow_scan  # noqa: E402


def default_json_path(start: int, end: int, bad_face: str, axis_d4: str) -> Path:
    axis_slug = axis_d4.replace(",", "_").replace("-", "m")
    return GENERATED_DIR / (
        f"direct_start_offset_family_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.json"
    )


def default_md_path(start: int, end: int, bad_face: str, axis_d4: str) -> Path:
    axis_slug = axis_d4.replace(",", "_").replace("-", "m")
    return GENERATED_DIR / (
        f"direct_start_offset_family_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.md"
    )


def offset_contributions(
    seq: list[str],
    coeff_b: tuple[Fraction, Fraction, Fraction],
) -> list[dict[str, Any]]:
    prefix = IDENTITY
    out: list[dict[str, Any]] = []
    for index in list(range(1, 14)) + [0]:
        face = seq[index]
        refl_m, refl_d = face_reflection(face)
        transported = mat_vec(prefix, refl_d)
        value = dot(coeff_b, transported)
        pair_id, positive = FACE_TO_PAIR_SIGN[face]
        out.append(
            {
                "index": index,
                "face": face,
                "pair": pair_id,
                "sign": "+" if positive else "-",
                "delta": transported,
                "value": value,
            }
        )
        prefix = mat_mul(prefix, refl_m)
    return out


def sequence_key(contribs: list[dict[str, Any]]) -> str:
    return ";".join(
        f"{item['index']}:{item['face']}:{qkey(item['value'])}"
        for item in contribs
    )


def value_multiset_key(contribs: list[dict[str, Any]]) -> str:
    return ",".join(sorted(qkey(item["value"]) for item in contribs))


def sign_pattern_key(contribs: list[dict[str, Any]]) -> str:
    signs = []
    for item in contribs:
        value = item["value"]
        signs.append("+" if value > 0 else "-" if value < 0 else "0")
    return "".join(signs)


def aggregate_key(contribs: list[dict[str, Any]], bucket: str, order: list[str]) -> str:
    sums = {key: Fraction(0) for key in order}
    for item in contribs:
        sums[item[bucket]] += item["value"]
    return "|".join(f"{key}:{qkey(sums[key])}" for key in order if sums[key] != 0)


def aggregate_pair_sign_key(contribs: list[dict[str, Any]]) -> str:
    keys = [f"{pair}{sign}" for pair in PAIR_IDS for sign in ("+", "-")]
    sums = {key: Fraction(0) for key in keys}
    for item in contribs:
        sums[f"{item['pair']}{item['sign']}"] += item["value"]
    return "|".join(f"{key}:{qkey(sums[key])}" for key in keys if sums[key] != 0)


@dataclass
class OffsetFamilyStats:
    max_distinct: int
    sample_limit: int
    start: int
    end: int
    target_bad_face: str
    target_axis_d4: str
    target_exact_axis: str | None
    target_reduced_shadow: str | None
    target_margin_linear_form: str | None
    scanned: int = 0
    nonidentity: int = 0
    forced_balance_survivors: int = 0
    axis_start_failures: int = 0
    matched: int = 0
    offset_sum_mismatches: int = 0
    exact_axis_reduced_shadow_keys: CappedCounter | None = None
    margin_linear_form_keys: CappedCounter | None = None
    contribution_sequence_keys: CappedCounter | None = None
    contribution_multiset_keys: CappedCounter | None = None
    contribution_by_face_keys: CappedCounter | None = None
    contribution_by_pair_keys: CappedCounter | None = None
    contribution_by_pair_sign_keys: CappedCounter | None = None
    contribution_sign_pattern_keys: CappedCounter | None = None
    margin_value_keys: CappedCounter | None = None
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=lambda: defaultdict(list))

    def __post_init__(self) -> None:
        for name in [
            "exact_axis_reduced_shadow_keys",
            "margin_linear_form_keys",
            "contribution_sequence_keys",
            "contribution_multiset_keys",
            "contribution_by_face_keys",
            "contribution_by_pair_keys",
            "contribution_by_pair_sign_keys",
            "contribution_sign_pattern_keys",
            "margin_value_keys",
        ]:
            if getattr(self, name) is None:
                setattr(self, name, CappedCounter(self.max_distinct))

    def merge(self, other: "OffsetFamilyStats") -> None:
        self.scanned += other.scanned
        self.nonidentity += other.nonidentity
        self.forced_balance_survivors += other.forced_balance_survivors
        self.axis_start_failures += other.axis_start_failures
        self.matched += other.matched
        self.offset_sum_mismatches += other.offset_sum_mismatches
        for name in [
            "exact_axis_reduced_shadow_keys",
            "margin_linear_form_keys",
            "contribution_sequence_keys",
            "contribution_multiset_keys",
            "contribution_by_face_keys",
            "contribution_by_pair_keys",
            "contribution_by_pair_sign_keys",
            "contribution_sign_pattern_keys",
            "margin_value_keys",
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
        counters = {}
        for name in [
            "exact_axis_reduced_shadow_keys",
            "margin_linear_form_keys",
            "contribution_sequence_keys",
            "contribution_multiset_keys",
            "contribution_by_face_keys",
            "contribution_by_pair_keys",
            "contribution_by_pair_sign_keys",
            "contribution_sign_pattern_keys",
            "margin_value_keys",
        ]:
            counter = getattr(self, name)
            assert counter is not None
            counters[name] = counter.payload(top=top)
        return {
            "schema_version": 1,
            "mode": "direct-start-offset-family-profile",
            "arithmetic": "exact Fraction/integer arithmetic; no floating point",
            "start": self.start,
            "end": self.end,
            "jobs": jobs,
            "elapsed_seconds": elapsed_seconds,
            "target": {
                "canonical_bad_face": self.target_bad_face,
                "axis_d4": self.target_axis_d4,
                "exact_axis": self.target_exact_axis,
                "reduced_shadow": self.target_reduced_shadow,
                "margin_linear_form": self.target_margin_linear_form,
            },
            "counts": {
                "scanned": self.scanned,
                "nonidentity": self.nonidentity,
                "forced_balance_survivors": self.forced_balance_survivors,
                "axis_start_failures": self.axis_start_failures,
                "matched": self.matched,
                "offset_sum_mismatches": self.offset_sum_mismatches,
            },
            "counters": counters,
            "samples": self.samples,
        }


def classify_leaf(stats: OffsetFamilyStats, *, rank: int, word: tuple[str, ...], pref: list) -> None:
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
    seq = list(details["forced_seq"])
    failure, failure_details, _family_key = terminal_axis_candidate_algebra_failure(
        seq,
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
    if stats.target_exact_axis is not None and oriented_axis_key != stats.target_exact_axis:
        return
    if stats.target_reduced_shadow is not None and reduced_key != stats.target_reduced_shadow:
        return

    aff = total_aff(seq)
    rows, _rhs = direct_system_for_aff(aff)
    actual_bad_face = failure_details.get("bad_face", "?")
    form = margin_linear_form(aff, actual_bad_face, rows)
    if form is None:
        return
    margin_key = margin_linear_form_key(aff, actual_bad_face, rows)
    if stats.target_margin_linear_form is not None and margin_key != stats.target_margin_linear_form:
        return
    stats.matched += 1

    const, coeff_b = form
    _aff_matrix, aff_offset = aff
    contributions = offset_contributions(seq, coeff_b)
    contrib_sum = sum((item["value"] for item in contributions), Fraction(0))
    expected_sum = dot(coeff_b, aff_offset)
    if contrib_sum != expected_sum:
        stats.offset_sum_mismatches += 1
    margin_value = const + contrib_sum

    exact_axis_reduced = f"axis={oriented_axis_key}|reduced={reduced_key}"
    assert stats.exact_axis_reduced_shadow_keys is not None
    assert stats.margin_linear_form_keys is not None
    assert stats.contribution_sequence_keys is not None
    assert stats.contribution_multiset_keys is not None
    assert stats.contribution_by_face_keys is not None
    assert stats.contribution_by_pair_keys is not None
    assert stats.contribution_by_pair_sign_keys is not None
    assert stats.contribution_sign_pattern_keys is not None
    assert stats.margin_value_keys is not None
    stats.exact_axis_reduced_shadow_keys.add(exact_axis_reduced)
    stats.margin_linear_form_keys.add(margin_key)
    stats.contribution_sequence_keys.add(sequence_key(contributions))
    stats.contribution_multiset_keys.add(value_multiset_key(contributions))
    stats.contribution_by_face_keys.add(aggregate_key(contributions, "face", FACE_ORDER))
    stats.contribution_by_pair_keys.add(aggregate_key(contributions, "pair", PAIR_IDS))
    stats.contribution_by_pair_sign_keys.add(aggregate_pair_sign_key(contributions))
    stats.contribution_sign_pattern_keys.add(sign_pattern_key(contributions))
    stats.margin_value_keys.add(qkey(margin_value))
    stats.add_sample(
        "matched",
        {
            "rank": rank,
            "word": ",".join(word),
            "seq": " ".join(seq),
            "axis": vec_key(oriented_axis),
            "reduced": reduced_key,
            "bad_face": actual_bad_face,
            "margin_linear_form": margin_key,
            "margin_value": qkey(margin_value),
            "contrib_sum": qkey(contrib_sum),
            "top_contribs": [
                {
                    "index": item["index"],
                    "face": item["face"],
                    "value": qkey(item["value"]),
                }
                for item in sorted(contributions, key=lambda item: abs(item["value"]), reverse=True)[:6]
            ],
        },
    )


def profile_range(
    start: int,
    end: int,
    *,
    target_bad_face: str,
    target_axis_d4: str,
    target_exact_axis: str | None,
    target_reduced_shadow: str | None,
    target_margin_linear_form: str | None,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> OffsetFamilyStats:
    stats = OffsetFamilyStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_exact_axis=target_exact_axis,
        target_reduced_shadow=target_reduced_shadow,
        target_margin_linear_form=target_margin_linear_form,
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
                        f"direct-start-offset scanned {stats.scanned:,} "
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
    target_bad_face: str,
    target_axis_d4: str,
    target_exact_axis: str | None,
    target_reduced_shadow: str | None,
    target_margin_linear_form: str | None,
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> OffsetFamilyStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            target_bad_face=target_bad_face,
            target_axis_d4=target_axis_d4,
            target_exact_axis=target_exact_axis,
            target_reduced_shadow=target_reduced_shadow,
            target_margin_linear_form=target_margin_linear_form,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )
    aggregate = OffsetFamilyStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_exact_axis=target_exact_axis,
        target_reduced_shadow=target_reduced_shadow,
        target_margin_linear_form=target_margin_linear_form,
    )
    with ProcessPoolExecutor(max_workers=jobs) as executor:
        futures = [
            executor.submit(
                profile_range,
                lo,
                hi,
                target_bad_face=target_bad_face,
                target_axis_d4=target_axis_d4,
                target_exact_axis=target_exact_axis,
                target_reduced_shadow=target_reduced_shadow,
                target_margin_linear_form=target_margin_linear_form,
                max_distinct=max_distinct,
                sample_limit=sample_limit,
                progress=progress,
            )
            for lo, hi in windows
        ]
        for future in as_completed(futures):
            aggregate.merge(future.result())
    return aggregate


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_md(path: Path, payload: dict[str, Any], top: int) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    lines = [
        "# Direct Start Offset Family Profile",
        "",
        "Untrusted exact diagnostic profile.  It emits no Lean evidence.",
        "",
        f"- Range: `[{payload['start']:,}, {payload['end']:,})`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Target canonical bad face: `{payload['target']['canonical_bad_face']}`",
        f"- Target D4 axis: `{payload['target']['axis_d4']}`",
        f"- Target exact axis: `{payload['target']['exact_axis']}`",
        f"- Target reduced shadow: `{payload['target']['reduced_shadow']}`",
        f"- Target margin linear form: `{payload['target']['margin_linear_form']}`",
        "",
        "## Counts",
        "",
        "| metric | value |",
        "| --- | ---: |",
    ]
    for key, value in payload["counts"].items():
        lines.append(f"| `{key}` | `{value:,}` |")
    lines.extend(["", "## Counter Summary", ""])
    for name, counter in payload["counters"].items():
        lines.extend([
            f"### `{name}`",
            "",
            f"- Stored distinct: `{counter['stored_distinct']:,}`",
            f"- Exact: `{counter['exact']}`",
            f"- Overflow cases: `{counter['overflow_cases']:,}`",
            "",
            "| key | count |",
            "| --- | ---: |",
        ])
        for item in counter["top"][:top]:
            lines.append(f"| `{item['key']}` | `{item['count']:,}` |")
        lines.append("")
    lines.extend(["## Samples", ""])
    for sample in payload["samples"].get("matched", [])[:top]:
        lines.append(
            f"- rank `{sample['rank']}` bad face `{sample['bad_face']}` "
            f"margin `{sample['margin_value']}` form `{sample['margin_linear_form']}`"
        )
        for contrib in sample["top_contribs"]:
            lines.append(
                f"  - step `{contrib['index']}` face `{contrib['face']}` "
                f"value `{contrib['value']}`"
            )
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int, default=100_000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--chunk-size", type=int, default=None)
    parser.add_argument("--target-bad-face", default="yp")
    parser.add_argument("--target-axis-d4", default="1,-3,-1")
    parser.add_argument("--target-exact-axis", default=None)
    parser.add_argument("--target-reduced-shadow", default=None)
    parser.add_argument("--target-margin-linear-form", default=None)
    parser.add_argument("--max-distinct", type=int, default=50_000)
    parser.add_argument("--sample-limit", type=int, default=10)
    parser.add_argument("--top", type=int, default=20)
    parser.add_argument("--progress", type=int, default=None)
    parser.add_argument("--json-out", type=Path, default=None)
    parser.add_argument("--md-out", type=Path, default=None)
    args = parser.parse_args()

    if not (0 <= args.start <= args.end <= EXPECTED_PAIR_WORDS):
        raise SystemExit("invalid rank range")
    if args.jobs < 1:
        raise SystemExit("--jobs must be positive")

    t0 = time.perf_counter()
    stats = profile_maybe_parallel(
        args.start,
        args.end,
        jobs=args.jobs,
        chunk_size=args.chunk_size,
        target_bad_face=args.target_bad_face,
        target_axis_d4=args.target_axis_d4,
        target_exact_axis=args.target_exact_axis,
        target_reduced_shadow=args.target_reduced_shadow,
        target_margin_linear_form=args.target_margin_linear_form,
        max_distinct=args.max_distinct,
        sample_limit=args.sample_limit,
        progress=args.progress,
    )
    elapsed = time.perf_counter() - t0
    payload = stats.payload(elapsed_seconds=elapsed, jobs=args.jobs, top=args.top)
    json_path = args.json_out or default_json_path(
        args.start,
        args.end,
        args.target_bad_face,
        args.target_axis_d4,
    )
    md_path = args.md_out or default_md_path(
        args.start,
        args.end,
        args.target_bad_face,
        args.target_axis_d4,
    )
    write_json(json_path, payload)
    write_md(md_path, payload, args.top)
    print(f"wrote {json_path}")
    print(f"wrote {md_path}")
    print(
        f"direct-start-offset scanned={stats.scanned:,} matched={stats.matched:,} "
        f"elapsed={elapsed:.3f}s"
    )


if __name__ == "__main__":
    main()
