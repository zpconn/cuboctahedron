#!/usr/bin/env python3
"""Profile direct-start linear-system signatures for residual axis failures.

This script is deliberately untrusted diagnostic infrastructure.  It emits no
Lean proof evidence.  It asks whether the direct-start theorem smoke can become
a family theorem: do many residuals share the same linear coefficient matrix,
or does the affine right-hand side fragment into near-singletons?
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

from exact_profile import (  # noqa: E402
    EXPECTED_PAIR_WORDS,
    FACE_NORMALS,
    FACE_OFFSETS,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    mat_mul,
    multinomial_count,
    one_dimensional_fixed_axis,
    prefix_matrices,
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
        f"direct_start_linear_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.json"
    )


def default_md_path(start: int, end: int, bad_face: str, axis_d4: str) -> Path:
    axis_slug = axis_d4.replace(",", "_").replace("-", "m")
    return GENERATED_DIR / (
        f"direct_start_linear_{bad_face}_{axis_slug}_{start:09d}_{end:09d}.md"
    )


def qkey(value: Fraction) -> str:
    return str(value)


def row_key(row: list[Fraction]) -> str:
    return ",".join(qkey(x) for x in row)


def matrix_key(rows: list[list[Fraction]]) -> str:
    return ";".join(row_key(row) for row in rows)


def aff_key(aff: tuple) -> str:
    matrix, offset = aff
    return (
        "|".join(",".join(qkey(x) for x in row) for row in matrix)
        + "::"
        + ",".join(qkey(x) for x in offset)
    )


def solve_linear_system(rows: list[list[Fraction]], rhs: list[Fraction]) -> tuple[list[int], list[list[Fraction]]]:
    augmented = [row[:] + [value] for row, value in zip(rows, rhs)]
    m = len(augmented)
    n = len(rows[0]) if rows else 0
    pivots: list[int] = []
    row_index = 0
    for col in range(n):
        pivot = next((r for r in range(row_index, m) if augmented[r][col]), None)
        if pivot is None:
            continue
        augmented[row_index], augmented[pivot] = augmented[pivot], augmented[row_index]
        divisor = augmented[row_index][col]
        augmented[row_index] = [x / divisor for x in augmented[row_index]]
        for r in range(m):
            if r == row_index or not augmented[r][col]:
                continue
            factor = augmented[r][col]
            augmented[r] = [
                augmented[r][c] - factor * augmented[row_index][c]
                for c in range(n + 1)
            ]
        pivots.append(col)
        row_index += 1
    return pivots, augmented


def direct_system_for_aff(aff: tuple) -> tuple[list[list[Fraction]], list[Fraction]]:
    """Build endpoint/fixed equations with p.x fixed to 1.

    Unknown order is: p.y, p.z, w.x, w.y, w.z.
    """

    matrix, offset = aff
    rows: list[list[Fraction]] = []
    rhs: list[Fraction] = []
    for i in range(3):
        coeff = [Fraction(0) for _ in range(5)]
        const = Fraction(1) if i == 0 else Fraction(0)
        if i == 1:
            coeff[0] += 1
        elif i == 2:
            coeff[1] += 1
        coeff[2 + i] += 1
        const -= matrix[i][0]
        coeff[0] -= matrix[i][1]
        coeff[1] -= matrix[i][2]
        const -= offset[i]
        rows.append(coeff)
        rhs.append(-const)
    for i in range(3):
        coeff = [Fraction(0) for _ in range(5)]
        for j in range(3):
            coeff[2 + j] += matrix[i][j]
        coeff[2 + i] -= 1
        rows.append(coeff)
        rhs.append(Fraction(0))
    return rows, rhs


def solution_key_from_rref(pivots: list[int], rref: list[list[Fraction]]) -> str:
    n = 5
    if pivots != list(range(n)):
        return "nonunique:pivots=" + ",".join(str(p) for p in pivots)
    values = [Fraction(0) for _ in range(n)]
    for row in rref:
        pivot = next((i for i in range(n) if row[i] == 1), None)
        if pivot is not None:
            values[pivot] = row[-1]
    return ",".join(qkey(v) for v in values)


def solution_vector_from_rref(pivots: list[int], rref: list[list[Fraction]]) -> list[Fraction] | None:
    n = 5
    if pivots != list(range(n)):
        return None
    values = [Fraction(0) for _ in range(n)]
    for row in rref:
        pivot = next((i for i in range(n) if row[i] == 1), None)
        if pivot is not None:
            values[pivot] = row[-1]
    return values


def solution_response_matrix(rows: list[list[Fraction]]) -> list[list[Fraction]] | None:
    response: list[list[Fraction]] = []
    for rhs_index in range(6):
        rhs = [Fraction(1) if i == rhs_index else Fraction(0) for i in range(6)]
        pivots, rref = solve_linear_system(rows, rhs)
        solution = solution_vector_from_rref(pivots, rref)
        if solution is None:
            return None
        response.append(solution)
    return [[response[rhs_index][var] for rhs_index in range(6)] for var in range(5)]


def margin_linear_form_key(aff: tuple, bad_face: str, rows: list[list[Fraction]]) -> str:
    matrix, _offset = aff
    response = solution_response_matrix(rows)
    if response is None:
        return f"{bad_face}|nonunique"
    normal = FACE_NORMALS[bad_face]
    offset = FACE_OFFSETS[bad_face]
    rhs_const = [matrix[0][0] - 1, matrix[1][0], matrix[2][0], Fraction(0), Fraction(0), Fraction(0)]
    margin_rhs = [
        -normal[1] * response[0][j] - normal[2] * response[1][j]
        for j in range(6)
    ]
    const = offset - normal[0] + sum(margin_rhs[j] * rhs_const[j] for j in range(6))
    coeff_b = margin_rhs[:3]
    return (
        f"{bad_face}|const={qkey(const)}|"
        f"b={','.join(qkey(c) for c in coeff_b)}"
    )


@dataclass
class DirectStats:
    max_distinct: int
    sample_limit: int
    start: int
    end: int
    target_bad_face: str
    target_axis_d4: str
    target_exact_axis: str | None
    target_reduced_shadow: str | None
    scanned: int = 0
    nonidentity: int = 0
    forced_balance_survivors: int = 0
    axis_start_failures: int = 0
    matched: int = 0
    exact_axis_reduced_shadow_keys: CappedCounter | None = None
    coeff_matrix_keys: CappedCounter | None = None
    rhs_keys: CappedCounter | None = None
    solution_keys: CappedCounter | None = None
    total_aff_keys: CappedCounter | None = None
    target_value_keys: CappedCounter | None = None
    margin_keys: CappedCounter | None = None
    actual_bad_face_keys: CappedCounter | None = None
    margin_linear_form_keys: CappedCounter | None = None
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=lambda: defaultdict(list))

    def __post_init__(self) -> None:
        for name in [
            "exact_axis_reduced_shadow_keys",
            "coeff_matrix_keys",
            "rhs_keys",
            "solution_keys",
            "total_aff_keys",
            "target_value_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "margin_linear_form_keys",
        ]:
            if getattr(self, name) is None:
                setattr(self, name, CappedCounter(self.max_distinct))

    def merge(self, other: DirectStats) -> None:
        self.scanned += other.scanned
        self.nonidentity += other.nonidentity
        self.forced_balance_survivors += other.forced_balance_survivors
        self.axis_start_failures += other.axis_start_failures
        self.matched += other.matched
        for name in [
            "exact_axis_reduced_shadow_keys",
            "coeff_matrix_keys",
            "rhs_keys",
            "solution_keys",
            "total_aff_keys",
            "target_value_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "margin_linear_form_keys",
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
            "coeff_matrix_keys",
            "rhs_keys",
            "solution_keys",
            "total_aff_keys",
            "target_value_keys",
            "margin_keys",
            "actual_bad_face_keys",
            "margin_linear_form_keys",
        ]:
            counter = getattr(self, name)
            assert counter is not None
            counters[name] = counter.payload(top=top)
        return {
            "schema_version": 1,
            "mode": "direct-start-linear-profile",
            "start": self.start,
            "end": self.end,
            "jobs": jobs,
            "elapsed_seconds": elapsed_seconds,
            "target": {
                "canonical_bad_face": self.target_bad_face,
                "axis_d4": self.target_axis_d4,
                "exact_axis": self.target_exact_axis,
                "reduced_shadow": self.target_reduced_shadow,
            },
            "counts": {
                "scanned": self.scanned,
                "nonidentity": self.nonidentity,
                "forced_balance_survivors": self.forced_balance_survivors,
                "axis_start_failures": self.axis_start_failures,
                "matched": self.matched,
            },
            "counters": counters,
            "samples": self.samples,
        }


def classify_leaf(stats: DirectStats, *, rank: int, word: tuple[str, ...], pref: list) -> None:
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
    stats.matched += 1

    aff = total_aff(seq)
    rows, rhs = direct_system_for_aff(aff)
    pivots, rref = solve_linear_system(rows, rhs)
    solution_key = solution_key_from_rref(pivots, rref)
    target_value = solution_key.split(",", 1)[0] if not solution_key.startswith("nonunique:") else "?"

    exact_axis_reduced = f"axis={oriented_axis_key}|reduced={reduced_key}"
    assert stats.exact_axis_reduced_shadow_keys is not None
    assert stats.coeff_matrix_keys is not None
    assert stats.rhs_keys is not None
    assert stats.solution_keys is not None
    assert stats.total_aff_keys is not None
    assert stats.target_value_keys is not None
    assert stats.margin_keys is not None
    assert stats.actual_bad_face_keys is not None
    assert stats.margin_linear_form_keys is not None
    stats.exact_axis_reduced_shadow_keys.add(exact_axis_reduced)
    stats.coeff_matrix_keys.add(matrix_key(rows))
    stats.rhs_keys.add(",".join(qkey(x) for x in rhs))
    stats.solution_keys.add(solution_key)
    stats.total_aff_keys.add(aff_key(aff))
    stats.target_value_keys.add(target_value)
    stats.margin_keys.add(failure_details.get("margin", "?"))
    actual_bad_face = failure_details.get("bad_face", "?")
    stats.actual_bad_face_keys.add(actual_bad_face)
    if actual_bad_face in FACE_NORMALS:
        stats.margin_linear_form_keys.add(margin_linear_form_key(aff, actual_bad_face, rows))
    stats.add_sample(
        "matched",
        {
            "rank": rank,
            "word": ",".join(word),
            "seq": " ".join(seq),
            "axis": vec_key(oriented_axis),
            "reduced": reduced_key,
            "bad_face": failure_details.get("bad_face", "?"),
            "canonical_bad_face": canonical_bad_face,
            "p0": failure_details.get("p0", "?"),
            "solution": solution_key,
            "target_p_y": target_value,
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
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> DirectStats:
    stats = DirectStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_exact_axis=target_exact_axis,
        target_reduced_shadow=target_reduced_shadow,
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
                        f"direct-start-linear scanned {stats.scanned:,} "
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
    max_distinct: int,
    sample_limit: int,
    progress: int | None,
) -> DirectStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            target_bad_face=target_bad_face,
            target_axis_d4=target_axis_d4,
            target_exact_axis=target_exact_axis,
            target_reduced_shadow=target_reduced_shadow,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )
    aggregate = DirectStats(
        max_distinct=max_distinct,
        sample_limit=sample_limit,
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_exact_axis=target_exact_axis,
        target_reduced_shadow=target_reduced_shadow,
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
        "# Direct Start Linear Profile",
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
            f"- rank `{sample['rank']}` axis `{sample['axis']}` "
            f"target p.y `{sample['target_p_y']}`"
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
        f"direct-start-linear scanned={stats.scanned:,} matched={stats.matched:,} "
        f"elapsed={elapsed:.3f}s"
    )


if __name__ == "__main__":
    main()
