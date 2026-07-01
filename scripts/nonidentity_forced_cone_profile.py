#!/usr/bin/env python3
"""Exact combined forced-axis / empty-cone profiler.

This untrusted diagnostic measures whether the signed empty-cone/Gordan
obstruction becomes much stronger after the nonidentity forced-axis filter has
chosen the only possible signed lift.

It emits no Lean evidence.  All arithmetic is exact Fraction/integer arithmetic.
"""

from __future__ import annotations

import argparse
from collections import Counter
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
    FACE_NORMALS,
    IDENTITY,
    NORMALS,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    face_reflection,
    forced_sequence_from_axis,
    mat_mul,
    mat_vec,
    multinomial_count,
    one_dimensional_fixed_axis,
    vec,
    word_key,
)
from forced_axis_sign_profile import neg_vec, normalized_axis_key, orientation_stage, reduced_shadow_key  # noqa: E402
from profile_symmetry_compression import terminal_axis_candidate_algebra_failure  # noqa: E402
from shadow_normal_form_profile import shadow_scan  # noqa: E402
from signed_prefix_empty_cone_profile import START_INWARD_NORMAL, find_cone_cert  # noqa: E402


def default_json_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"nonidentity_forced_cone_profile_{start:09d}_{end:09d}.json"


def default_md_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"nonidentity_forced_cone_profile_{start:09d}_{end:09d}.md"


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def cone_failure_for_forced_seq(
    seq: list[str],
    *,
    min_check_depth: int,
    max_support: int,
) -> tuple[int, Any] | None:
    """Return `(depth, cert)` for the first empty-cone prefix, if any."""

    pref = IDENTITY
    normals = [START_INWARD_NORMAL]
    for depth in range(1, 14):
        face = seq[depth]
        normals.append(mat_vec(pref, vec(FACE_NORMALS[face])))
        face_matrix, _offset = face_reflection(face)
        pref = mat_mul(pref, face_matrix)
        check_normals = normals
        if depth == 13:
            check_normals = [*normals, mat_vec(pref, vec(FACE_NORMALS["xp"]))]
        if depth >= min_check_depth:
            cert = find_cone_cert(check_normals, max_support=max_support)
            if cert is not None:
                return depth, cert
    return None


@dataclass
class CombinedStats:
    start: int
    end: int
    sample_limit: int
    scanned: int = 0
    shadow_identity: int = 0
    shadow_nonidentity: int = 0
    no_fixed_axis: int = 0
    final_axis_reject: int = 0
    forced_zero_denominator: int = 0
    bad_pair_balance: int = 0
    forced_balance_survivors: int = 0
    cone_killed: int = 0
    cone_survivors: int = 0
    terminal_after_cone_survivor: Counter[str] = field(default_factory=Counter)
    cone_depths: Counter[int] = field(default_factory=Counter)
    cone_support_sizes: Counter[int] = field(default_factory=Counter)
    cone_cert_keys: Counter[str] = field(default_factory=Counter)
    survivor_signatures: Counter[str] = field(default_factory=Counter)
    samples: dict[str, list[dict[str, Any]]] = field(default_factory=dict)

    def add_sample(self, key: str, value: dict[str, Any]) -> None:
        bucket = self.samples.setdefault(key, [])
        if len(bucket) < self.sample_limit:
            bucket.append(value)

    def merge(self, other: "CombinedStats") -> None:
        self.scanned += other.scanned
        self.shadow_identity += other.shadow_identity
        self.shadow_nonidentity += other.shadow_nonidentity
        self.no_fixed_axis += other.no_fixed_axis
        self.final_axis_reject += other.final_axis_reject
        self.forced_zero_denominator += other.forced_zero_denominator
        self.bad_pair_balance += other.bad_pair_balance
        self.forced_balance_survivors += other.forced_balance_survivors
        self.cone_killed += other.cone_killed
        self.cone_survivors += other.cone_survivors
        self.terminal_after_cone_survivor.update(other.terminal_after_cone_survivor)
        self.cone_depths.update(other.cone_depths)
        self.cone_support_sizes.update(other.cone_support_sizes)
        self.cone_cert_keys.update(other.cone_cert_keys)
        self.survivor_signatures.update(other.survivor_signatures)
        for key, values in other.samples.items():
            for value in values:
                self.add_sample(key, value)

    def payload(self, *, elapsed: float, jobs: int, top: int) -> dict[str, Any]:
        return {
            "mode": "nonidentity-forced-cone-profile",
            "arithmetic": "exact Fraction/integer arithmetic; no floating point",
            "start": self.start,
            "end": self.end,
            "scanned": self.scanned,
            "jobs": jobs,
            "elapsed_seconds": elapsed,
            "counts": {
                "shadow_identity": self.shadow_identity,
                "shadow_nonidentity": self.shadow_nonidentity,
                "no_fixed_axis": self.no_fixed_axis,
                "final_axis_reject": self.final_axis_reject,
                "forced_zero_denominator": self.forced_zero_denominator,
                "bad_pair_balance": self.bad_pair_balance,
                "forced_balance_survivors": self.forced_balance_survivors,
                "cone_killed": self.cone_killed,
                "cone_survivors": self.cone_survivors,
            },
            "cone_depths": dict(sorted(self.cone_depths.items())),
            "cone_support_sizes": dict(sorted(self.cone_support_sizes.items())),
            "top_cone_cert_keys": self.cone_cert_keys.most_common(top),
            "terminal_after_cone_survivor": self.terminal_after_cone_survivor.most_common(top),
            "top_survivor_signatures": self.survivor_signatures.most_common(top),
            "samples": self.samples,
            "decision_hint": (
                "If cone_killed substantially reduces forced_balance_survivors and cone_survivors "
                "cluster tightly by reduced shadow / axis / terminal failure, combine cone pruning "
                "with the residual axis template layer. If not, use cone only as a cheap front-end."
            ),
        }


def classify_leaf(
    stats: CombinedStats,
    *,
    rank: int,
    word: tuple[str, ...],
    pref: list[Any],
    min_check_depth: int,
    max_support: int,
) -> None:
    stats.scanned += 1
    _parity, _shadow, reduced = shadow_scan(list(word))
    reduced_key = reduced_shadow_key(reduced)
    if not reduced:
        stats.shadow_identity += 1
        return
    stats.shadow_nonidentity += 1

    matrix = mat_mul(pref[-1], RPAIR["x"])
    try:
        raw_axis = one_dimensional_fixed_axis(matrix)
    except ValueError:
        stats.no_fixed_axis += 1
        return

    orientation_results = []
    for oriented_axis in (raw_axis, neg_vec(raw_axis)):
        stage, details = orientation_stage(list(word), pref, oriented_axis)
        orientation_results.append((oriented_axis, stage, details))
    positive_results = [
        (axis, stage, details)
        for axis, stage, details in orientation_results
        if stage != "final_dot_nonpositive"
    ]
    if not positive_results:
        stats.final_axis_reject += 1
        return
    oriented_axis, stage, details = positive_results[0]
    axis_key = normalized_axis_key(oriented_axis)
    if stage == "forced_zero_denominator":
        stats.forced_zero_denominator += 1
        return
    if stage == "bad_pair_balance":
        stats.bad_pair_balance += 1
        return
    if stage not in {"forced_balance_ok", "forced_balance_survivor"}:
        raise RuntimeError(f"unexpected forced-axis stage: {stage}")

    stats.forced_balance_survivors += 1
    forced_seq = forced_sequence_from_axis(list(word), oriented_axis, pref)
    cone = cone_failure_for_forced_seq(
        forced_seq,
        min_check_depth=min_check_depth,
        max_support=max_support,
    )
    if cone is not None:
        depth, cert = cone
        stats.cone_killed += 1
        stats.cone_depths[depth] += 1
        stats.cone_support_sizes[len(cert.support)] += 1
        stats.cone_cert_keys[cert.key()] += 1
        stats.add_sample("cone_killed", {
            "rank": rank,
            "word": word_key(word),
            "reduced_shadow": reduced_key,
            "axis": axis_key,
            "depth": depth,
            "support": list(cert.support),
            "weights": list(cert.weights),
        })
        return

    stats.cone_survivors += 1
    failure, failure_details, _family_key = terminal_axis_candidate_algebra_failure(
        forced_seq,
        oriented_axis,
    )
    stats.terminal_after_cone_survivor[failure] += 1
    signature = f"reduced={reduced_key}|axis={axis_key}|failure={failure}"
    stats.survivor_signatures[signature] += 1
    stats.add_sample("cone_survivor", {
        "rank": rank,
        "word": word_key(word),
        "reduced_shadow": reduced_key,
        "axis": axis_key,
        "failure": failure,
        "failure_details": failure_details,
    })


def profile_range(
    start: int,
    end: int,
    *,
    min_check_depth: int,
    max_support: int,
    sample_limit: int,
    progress: int | None,
) -> CombinedStats:
    stats = CombinedStats(start=start, end=end, sample_limit=sample_limit)
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
                classify_leaf(
                    stats,
                    rank=rank_lo,
                    word=tuple(prefix),
                    pref=list(pref),
                    min_check_depth=min_check_depth,
                    max_support=max_support,
                )
                if progress and stats.scanned % progress == 0:
                    print(
                        f"forced-cone scanned {stats.scanned:,} "
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
    if jobs <= 1:
        return [(start, end)]
    width = end - start
    step = (width + jobs - 1) // jobs
    return [(lo, min(end, lo + step)) for lo in range(start, end, step)]


def profile_maybe_parallel(
    start: int,
    end: int,
    *,
    jobs: int,
    chunk_size: int | None,
    min_check_depth: int,
    max_support: int,
    sample_limit: int,
    progress: int | None,
) -> CombinedStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            min_check_depth=min_check_depth,
            max_support=max_support,
            sample_limit=sample_limit,
            progress=progress,
        )
    aggregate = CombinedStats(start=start, end=end, sample_limit=sample_limit)
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        futures = [
            pool.submit(
                profile_range,
                lo,
                hi,
                min_check_depth=min_check_depth,
                max_support=max_support,
                sample_limit=sample_limit,
                progress=None,
            )
            for lo, hi in windows
        ]
        for done, future in enumerate(as_completed(futures), start=1):
            aggregate.merge(future.result())
            print(f"forced-cone merged {done:,}/{len(futures):,}", file=sys.stderr, flush=True)
    return aggregate


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Nonidentity Forced-Axis Empty-Cone Profile",
        "",
        f"- Range: `[{payload['start']:,}, {payload['end']:,})`",
        f"- Scanned: `{payload['scanned']:,}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Arithmetic: {payload['arithmetic']}",
        "",
        "## Counts",
        "",
        "| metric | count |",
        "| --- | ---: |",
    ]
    for key, value in payload["counts"].items():
        lines.append(f"| `{key}` | `{value:,}` |")
    lines.extend(["", "## Cone Depths", "", "| depth | count |", "| ---: | ---: |"])
    for depth, count in payload["cone_depths"].items():
        lines.append(f"| `{depth}` | `{count:,}` |")
    lines.extend(["", "## Cone Support Sizes", "", "| size | count |", "| ---: | ---: |"])
    for size, count in payload["cone_support_sizes"].items():
        lines.append(f"| `{size}` | `{count:,}` |")
    lines.extend(["", "## Top Cone Certificate Keys", "", "| key | count |", "| --- | ---: |"])
    for key, count in payload["top_cone_cert_keys"]:
        lines.append(f"| `{key}` | `{count:,}` |")
    lines.extend(["", "## Terminal Failures After Cone Survivors", "", "| failure | count |", "| --- | ---: |"])
    for key, count in payload["terminal_after_cone_survivor"]:
        lines.append(f"| `{key}` | `{count:,}` |")
    lines.extend(["", "## Top Survivor Signatures", "", "| signature | count |", "| --- | ---: |"])
    for key, count in payload["top_survivor_signatures"]:
        lines.append(f"| `{key}` | `{count:,}` |")
    lines.extend(["", "## Decision Hint", "", payload["decision_hint"], ""])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int, default=100000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--chunk-size", type=int)
    parser.add_argument("--min-check-depth", type=int, default=2)
    parser.add_argument("--max-support", type=int, default=4)
    parser.add_argument("--top", type=int, default=30)
    parser.add_argument("--sample-limit", type=int, default=10)
    parser.add_argument("--progress", type=int, default=0)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    args = parser.parse_args()

    if args.start < 0 or args.end < args.start:
        raise SystemExit("invalid range")
    if args.max_support < 2 or args.max_support > 4:
        raise SystemExit("--max-support must be between 2 and 4")
    started = time.time()
    stats = profile_maybe_parallel(
        args.start,
        args.end,
        jobs=max(1, args.jobs),
        chunk_size=args.chunk_size,
        min_check_depth=args.min_check_depth,
        max_support=args.max_support,
        sample_limit=args.sample_limit,
        progress=args.progress or None,
    )
    elapsed = time.time() - started
    payload = stats.payload(elapsed=elapsed, jobs=max(1, args.jobs), top=args.top)
    json_path = args.json or default_json_path(args.start, args.end)
    md_path = args.markdown or default_md_path(args.start, args.end)
    write_json(json_path, payload)
    write_text(md_path, render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
