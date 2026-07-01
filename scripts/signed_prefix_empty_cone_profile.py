#!/usr/bin/env python3
"""Exact signed-prefix empty-cone profiler.

This is untrusted diagnostic code.  It searches the signed started-face prefix
tree for small Gordan certificates: nonnegative integer weights, not all zero,
whose weighted sum of unfolded crossing normals is zero.  Such a certificate
would prove that no ray direction can strictly cross all active prefix faces.

The script uses exact Fraction/integer arithmetic only.  It emits profiling
JSON/Markdown to decide whether signed-state empty-cone pruning is a viable
production proof coordinate before any Lean evidence is generated.
"""

from __future__ import annotations

import argparse
from collections import Counter
from concurrent.futures import ProcessPoolExecutor, as_completed
from dataclasses import dataclass, field
from fractions import Fraction
from itertools import combinations
import json
import math
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
    FACE_ORDER,
    IDENTITY,
    Mat,
    Vec,
    dot,
    face_reflection,
    mat_key,
    mat_mul,
    mat_vec,
    vec,
    vec_key,
)


SIGNED_FACES = [face for face in FACE_ORDER if face != "xp"]
START_INWARD_NORMAL = vec((-1, 0, 0))


def default_json_path(max_depth: int) -> Path:
    return GENERATED_DIR / f"signed_prefix_empty_cone_depth{max_depth:02d}.json"


def default_md_path(max_depth: int) -> Path:
    return GENERATED_DIR / f"signed_prefix_empty_cone_depth{max_depth:02d}.md"


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


def int_gcd(values: list[int]) -> int:
    out = 0
    for value in values:
        out = math.gcd(out, abs(value))
    return out


def clear_denominators(values: list[Fraction]) -> list[int]:
    lcm = 1
    for value in values:
        lcm = lcm * value.denominator // math.gcd(lcm, value.denominator)
    ints = [value.numerator * (lcm // value.denominator) for value in values]
    gcd = int_gcd(ints)
    if gcd:
        ints = [value // gcd for value in ints]
    first = next((value for value in ints if value != 0), 1)
    if first < 0:
        ints = [-value for value in ints]
    return ints


def primitive_signed_vec_key(value: Vec) -> str:
    ints = clear_denominators(list(value))
    return ",".join(str(entry) for entry in ints)


def factorial(n: int) -> int:
    return math.factorial(n)


def rref_rect(rows: list[list[Fraction]]) -> tuple[list[list[Fraction]], list[int]]:
    rows = [list(row) for row in rows]
    if not rows:
        return rows, []
    row_count = len(rows)
    col_count = len(rows[0])
    pivots: list[int] = []
    pivot_row = 0
    for col in range(col_count):
        found = next((r for r in range(pivot_row, row_count) if rows[r][col] != 0), None)
        if found is None:
            continue
        rows[pivot_row], rows[found] = rows[found], rows[pivot_row]
        div = rows[pivot_row][col]
        rows[pivot_row] = [value / div for value in rows[pivot_row]]
        for r in range(row_count):
            if r == pivot_row or rows[r][col] == 0:
                continue
            factor = rows[r][col]
            rows[r] = [rows[r][c] - factor * rows[pivot_row][c] for c in range(col_count)]
        pivots.append(col)
        pivot_row += 1
        if pivot_row == row_count:
            break
    return rows, pivots


def nullspace_basis(vectors: list[Vec]) -> list[list[Fraction]]:
    """Return a rational basis for weights q with sum q_i * vectors_i = 0."""

    if not vectors:
        return []
    rows = [[vectors[col][row] for col in range(len(vectors))] for row in range(3)]
    rref, pivots = rref_rect(rows)
    free_cols = [col for col in range(len(vectors)) if col not in pivots]
    basis: list[list[Fraction]] = []
    pivot_row_by_col = {col: row for row, col in enumerate(pivots)}
    for free in free_cols:
        v = [Fraction(0) for _ in vectors]
        v[free] = Fraction(1)
        for pivot in pivots:
            v[pivot] = -rref[pivot_row_by_col[pivot]][free]
        basis.append(v)
    return basis


@dataclass(frozen=True)
class ConeCert:
    support: tuple[int, ...]
    weights: tuple[int, ...]

    def key(self) -> str:
        return f"support={len(self.support)}|weights={','.join(str(w) for w in self.weights)}"


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


def find_cone_cert(normals: list[Vec], *, max_support: int) -> ConeCert | None:
    """Find a small positive dependence among active normals, if one exists."""

    upper = min(max_support, len(normals))
    for size in range(2, upper + 1):
        for support in combinations(range(len(normals)), size):
            vectors = [normals[index] for index in support]
            basis = nullspace_basis(vectors)
            if len(basis) != 1:
                continue
            weights = basis[0]
            if all(value > 0 for value in weights) or all(value < 0 for value in weights):
                ints = clear_denominators(weights)
                if all(value > 0 for value in ints):
                    return ConeCert(tuple(support), tuple(ints))
    return None


def advance(face: str, pref: Mat, normals: list[Vec]) -> tuple[Mat, list[Vec]]:
    normal = mat_vec(pref, vec(FACE_NORMALS[face]))
    face_matrix, _offset = face_reflection(face)
    return mat_mul(pref, face_matrix), [*normals, normal]


@dataclass
class ConeStats:
    max_depth: int
    min_check_depth: int
    max_support: int
    max_distinct: int
    sample_limit: int
    nodes: int = 0
    pruned: int = 0
    frontier: int = 0
    full_survivors: int = 0
    killed_signed_completions: int = 0
    frontier_signed_completions: int = 0
    by_depth: Counter[int] = field(default_factory=Counter)
    pruned_by_depth: Counter[int] = field(default_factory=Counter)
    frontier_by_depth: Counter[int] = field(default_factory=Counter)
    support_sizes: Counter[int] = field(default_factory=Counter)
    cert_keys: Counter[str] = field(default_factory=Counter)
    frontier_holonomy_keys: CappedCounter | None = None
    frontier_cone_keys: CappedCounter | None = None
    examples: list[dict[str, Any]] = field(default_factory=list)

    def __post_init__(self) -> None:
        if self.frontier_holonomy_keys is None:
            self.frontier_holonomy_keys = CappedCounter(self.max_distinct)
        if self.frontier_cone_keys is None:
            self.frontier_cone_keys = CappedCounter(self.max_distinct)

    def merge(self, other: "ConeStats") -> None:
        self.nodes += other.nodes
        self.pruned += other.pruned
        self.frontier += other.frontier
        self.full_survivors += other.full_survivors
        self.killed_signed_completions += other.killed_signed_completions
        self.frontier_signed_completions += other.frontier_signed_completions
        self.by_depth.update(other.by_depth)
        self.pruned_by_depth.update(other.pruned_by_depth)
        self.frontier_by_depth.update(other.frontier_by_depth)
        self.support_sizes.update(other.support_sizes)
        self.cert_keys.update(other.cert_keys)
        assert self.frontier_holonomy_keys is not None and other.frontier_holonomy_keys is not None
        assert self.frontier_cone_keys is not None and other.frontier_cone_keys is not None
        self.frontier_holonomy_keys.merge(other.frontier_holonomy_keys)
        self.frontier_cone_keys.merge(other.frontier_cone_keys)
        room = self.sample_limit - len(self.examples)
        if room > 0:
            self.examples.extend(other.examples[:room])

    def add_example(self, prefix: list[str], normals: list[Vec], cert: ConeCert) -> None:
        if len(self.examples) >= self.sample_limit:
            return
        self.examples.append({
            "prefix": prefix,
            "depth": len(prefix),
            "support": list(cert.support),
            "weights": list(cert.weights),
            "support_normals": [vec_key(normals[index]) for index in cert.support],
        })

    def add_frontier_cluster(self, remaining: tuple[str, ...], pref: Mat, normals: list[Vec], mass: int) -> None:
        assert self.frontier_holonomy_keys is not None
        assert self.frontier_cone_keys is not None
        remaining_key = ",".join(remaining)
        holonomy_key = f"remaining={remaining_key}|lin={mat_key(pref)}"
        cone_key = (
            f"{holonomy_key}|cone="
            + ";".join(sorted(primitive_signed_vec_key(normal) for normal in normals))
        )
        self.frontier_holonomy_keys.add(holonomy_key, mass)
        self.frontier_cone_keys.add(cone_key, mass)

    def payload(self, *, elapsed: float, jobs: int, split_depth: int, top: int) -> dict[str, Any]:
        total_signed = factorial(len(SIGNED_FACES))
        assert self.frontier_holonomy_keys is not None
        assert self.frontier_cone_keys is not None
        return {
            "mode": "signed-prefix-empty-cone-profile",
            "arithmetic": "exact Fraction/integer arithmetic; no floating point",
            "max_depth": self.max_depth,
            "min_check_depth": self.min_check_depth,
            "max_support": self.max_support,
            "jobs": jobs,
            "split_depth": split_depth,
            "elapsed_seconds": elapsed,
            "total_signed_started_itineraries": total_signed,
            "nodes": self.nodes,
            "pruned_nodes": self.pruned,
            "frontier_nodes": self.frontier,
            "full_survivors": self.full_survivors,
            "killed_signed_completions": self.killed_signed_completions,
            "frontier_signed_completions": self.frontier_signed_completions,
            "killed_fraction_of_signed_space": fraction_key(Fraction(self.killed_signed_completions, total_signed)),
            "frontier_fraction_of_signed_space": fraction_key(Fraction(self.frontier_signed_completions, total_signed)),
            "nodes_by_depth": dict(sorted(self.by_depth.items())),
            "pruned_by_depth": dict(sorted(self.pruned_by_depth.items())),
            "frontier_by_depth": dict(sorted(self.frontier_by_depth.items())),
            "support_sizes": dict(sorted(self.support_sizes.items())),
            "top_cert_keys": self.cert_keys.most_common(top),
            "frontier_holonomy_keys": self.frontier_holonomy_keys.payload(top=top),
            "frontier_cone_keys": self.frontier_cone_keys.payload(top=top),
            "examples": self.examples,
            "decision_hint": (
                "If pruning removes most signed completions by shallow depth with few certificate "
                "families, formalize signed-state Gordan certificates next. If not, combine this "
                "with holonomy/axis signatures rather than emitting local axis certificates."
            ),
        }


def profile_subtree(
    *,
    prefix: list[str],
    remaining: tuple[str, ...],
    pref: Mat,
    normals: list[Vec],
    max_depth: int,
    min_check_depth: int,
    max_support: int,
    max_distinct: int,
    sample_limit: int,
    progress: int | None = None,
) -> ConeStats:
    stats = ConeStats(
        max_depth=max_depth,
        min_check_depth=min_check_depth,
        max_support=max_support,
        max_distinct=max_distinct,
        sample_limit=sample_limit,
    )

    def rec(prefix: list[str], remaining: tuple[str, ...], pref: Mat, normals: list[Vec]) -> None:
        depth = len(prefix)
        stats.nodes += 1
        stats.by_depth[depth] += 1
        if progress and stats.nodes % progress == 0:
            print(
                f"empty-cone visited {stats.nodes:,} nodes; depth={depth}; pruned={stats.pruned:,}",
                file=sys.stderr,
                flush=True,
            )

        if depth >= min_check_depth:
            check_normals = normals
            if depth == 13:
                final_normal = mat_vec(pref, vec(FACE_NORMALS["xp"]))
                check_normals = [*normals, final_normal]
            cert = find_cone_cert(check_normals, max_support=max_support)
            if cert is not None:
                mass = factorial(len(remaining))
                stats.pruned += 1
                stats.pruned_by_depth[depth] += 1
                stats.killed_signed_completions += mass
                stats.support_sizes[len(cert.support)] += 1
                stats.cert_keys[cert.key()] += 1
                stats.add_example(prefix, check_normals, cert)
                return

        if depth == max_depth:
            mass = factorial(len(remaining))
            stats.frontier += 1
            stats.frontier_by_depth[depth] += 1
            stats.frontier_signed_completions += mass
            stats.add_frontier_cluster(remaining, pref, normals, mass)
            if depth == 13:
                stats.full_survivors += 1
            return

        for index, face in enumerate(remaining):
            next_pref, next_normals = advance(face, pref, normals)
            next_remaining = remaining[:index] + remaining[index + 1 :]
            rec([*prefix, face], next_remaining, next_pref, next_normals)

    rec(prefix, remaining, pref, normals)
    return stats


def seed_states(split_depth: int) -> list[tuple[list[str], tuple[str, ...], Mat, list[Vec]]]:
    states: list[tuple[list[str], tuple[str, ...], Mat, list[Vec]]] = []

    def rec(prefix: list[str], remaining: tuple[str, ...], pref: Mat, normals: list[Vec]) -> None:
        if len(prefix) == split_depth:
            states.append((prefix, remaining, pref, normals))
            return
        for index, face in enumerate(remaining):
            next_pref, next_normals = advance(face, pref, normals)
            rec([*prefix, face], remaining[:index] + remaining[index + 1 :], next_pref, next_normals)

    rec([], tuple(SIGNED_FACES), IDENTITY, [START_INWARD_NORMAL])
    return states


def profile_maybe_parallel(
    *,
    max_depth: int,
    min_check_depth: int,
    max_support: int,
    max_distinct: int,
    sample_limit: int,
    jobs: int,
    split_depth: int,
    progress: int | None,
) -> ConeStats:
    if split_depth <= 0 or jobs <= 1:
        return profile_subtree(
            prefix=[],
            remaining=tuple(SIGNED_FACES),
            pref=IDENTITY,
            normals=[START_INWARD_NORMAL],
            max_depth=max_depth,
            min_check_depth=min_check_depth,
            max_support=max_support,
            max_distinct=max_distinct,
            sample_limit=sample_limit,
            progress=progress,
        )

    seeds = seed_states(split_depth)
    aggregate = ConeStats(
        max_depth=max_depth,
        min_check_depth=min_check_depth,
        max_support=max_support,
        max_distinct=max_distinct,
        sample_limit=sample_limit,
    )
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        futures = [
            pool.submit(
                profile_subtree,
                prefix=prefix,
                remaining=remaining,
                pref=pref,
                normals=normals,
                max_depth=max_depth,
                min_check_depth=min_check_depth,
                max_support=max_support,
                max_distinct=max_distinct,
                sample_limit=sample_limit,
                progress=None,
            )
            for prefix, remaining, pref, normals in seeds
        ]
        merged = 0
        for future in as_completed(futures):
            aggregate.merge(future.result())
            merged += 1
            if progress:
                print(
                    f"empty-cone merged {merged:,}/{len(futures):,} seed subtrees",
                    file=sys.stderr,
                    flush=True,
                )
    return aggregate


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Signed Prefix Empty-Cone Profile",
        "",
        f"- Max depth: `{payload['max_depth']}`",
        f"- Min check depth: `{payload['min_check_depth']}`",
        f"- Max support: `{payload['max_support']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Split depth: `{payload['split_depth']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Arithmetic: {payload['arithmetic']}",
        "",
        "## Summary",
        "",
        "| metric | value |",
        "| --- | ---: |",
        f"| total signed started itineraries | `{payload['total_signed_started_itineraries']:,}` |",
        f"| nodes visited | `{payload['nodes']:,}` |",
        f"| pruned nodes | `{payload['pruned_nodes']:,}` |",
        f"| frontier nodes | `{payload['frontier_nodes']:,}` |",
        f"| killed signed completions | `{payload['killed_signed_completions']:,}` |",
        f"| frontier signed completions | `{payload['frontier_signed_completions']:,}` |",
        f"| killed fraction | `{payload['killed_fraction_of_signed_space']}` |",
        f"| frontier fraction | `{payload['frontier_fraction_of_signed_space']}` |",
        "",
        "## Depth Histograms",
        "",
        "| depth | visited | pruned | frontier |",
        "| ---: | ---: | ---: | ---: |",
    ]
    depths = sorted({
        *[int(k) for k in payload["nodes_by_depth"].keys()],
        *[int(k) for k in payload["pruned_by_depth"].keys()],
        *[int(k) for k in payload["frontier_by_depth"].keys()],
    })
    for depth in depths:
        lines.append(
            f"| `{depth}` | `{payload['nodes_by_depth'].get(str(depth), payload['nodes_by_depth'].get(depth, 0)):,}` "
            f"| `{payload['pruned_by_depth'].get(str(depth), payload['pruned_by_depth'].get(depth, 0)):,}` "
            f"| `{payload['frontier_by_depth'].get(str(depth), payload['frontier_by_depth'].get(depth, 0)):,}` |"
        )
    lines.extend([
        "",
        "## Support Sizes",
        "",
        "| support size | count |",
        "| ---: | ---: |",
    ])
    for size, count in payload["support_sizes"].items():
        lines.append(f"| `{size}` | `{count:,}` |")
    lines.extend([
        "",
        "## Top Certificate Keys",
        "",
        "| key | count |",
        "| --- | ---: |",
    ])
    for key, count in payload["top_cert_keys"]:
        lines.append(f"| `{key}` | `{count:,}` |")
    lines.extend([
        "",
        "## Frontier Clusters",
        "",
    ])
    for section in ["frontier_holonomy_keys", "frontier_cone_keys"]:
        data = payload[section]
        lines.extend([
            f"### `{section}`",
            "",
            f"- Exact distinct count stored: `{data['exact']}`",
            f"- Stored distinct keys: `{data['stored_distinct']:,}`",
            f"- Overflow cases: `{data['overflow_cases']:,}`",
            "",
            "| key | signed completions |",
            "| --- | ---: |",
        ])
        for row in data["top"]:
            lines.append(f"| `{row['key']}` | `{row['count']:,}` |")
        lines.append("")
    if payload["examples"]:
        lines.extend(["", "## Examples", ""])
        for example in payload["examples"]:
            lines.append(
                f"- depth `{example['depth']}` prefix `{' '.join(example['prefix'])}` "
                f"support `{example['support']}` weights `{example['weights']}`"
            )
            lines.append(f"  normals: `{'; '.join(example['support_normals'])}`")
    lines.extend(["", "## Decision Hint", "", payload["decision_hint"], ""])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-depth", type=int, default=7)
    parser.add_argument("--min-check-depth", type=int, default=3)
    parser.add_argument("--max-support", type=int, default=4)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--split-depth", type=int, default=1)
    parser.add_argument("--max-distinct", type=int, default=20000)
    parser.add_argument("--top", type=int, default=30)
    parser.add_argument("--sample-limit", type=int, default=10)
    parser.add_argument("--progress", type=int, default=0)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    args = parser.parse_args()

    if not (0 <= args.split_depth <= args.max_depth <= 13):
        raise SystemExit("--split-depth and --max-depth must satisfy 0 <= split <= max <= 13")
    if args.min_check_depth < 0 or args.min_check_depth > args.max_depth:
        raise SystemExit("--min-check-depth must be between 0 and --max-depth")
    if args.max_support < 2 or args.max_support > 4:
        raise SystemExit("--max-support must be between 2 and 4 for this profiler")

    started = time.time()
    stats = profile_maybe_parallel(
        max_depth=args.max_depth,
        min_check_depth=args.min_check_depth,
        max_support=args.max_support,
        max_distinct=args.max_distinct,
        sample_limit=args.sample_limit,
        jobs=max(1, args.jobs),
        split_depth=args.split_depth,
        progress=args.progress or None,
    )
    elapsed = time.time() - started
    payload = stats.payload(
        elapsed=elapsed,
        jobs=max(1, args.jobs),
        split_depth=args.split_depth,
        top=args.top,
    )
    json_path = args.json or default_json_path(args.max_depth)
    md_path = args.markdown or default_md_path(args.max_depth)
    write_json(json_path, payload)
    write_text(md_path, render_markdown(payload))
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
