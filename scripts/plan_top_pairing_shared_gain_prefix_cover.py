#!/usr/bin/env python3
"""Plan a shared-gain prefix cover for top-pairing accepted traces.

This is diagnostic-only tooling.  It reads the Lean-aligned accepted trace JSON
and finds a minimum-cardinality cover by trace-prefix buckets such that all
accepted traces in each bucket have the same Bellman gain.  Such buckets are
candidate inputs to the Lean predicate
`TerminalTracePrefixSharedGainClosedMarginFamily`.

The output is not proof.  It only tells us whether the prefix/gain socket is a
plausible semantic family coordinate before generating Lean bucket evidence.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_INPUT = (
    ROOT / "scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json"
)
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_shared_gain_prefix_cover_plan.md"


@dataclass(frozen=True)
class Candidate:
    prefix: tuple[str, ...]
    gain: int
    mask: int
    indices: tuple[int, ...]

    @property
    def depth(self) -> int:
        return len(self.prefix)

    @property
    def count(self) -> int:
        return len(self.indices)


def load_cases(path: Path) -> list[dict[str, Any]]:
    payload = json.loads(path.read_text())
    cases = list(payload["first_accepted"])
    expected = int(payload["stats"]["accepted"])
    if len(cases) != expected:
        raise RuntimeError(f"expected {expected} accepted traces, got {len(cases)}")
    return cases


def prefix_of(case: dict[str, Any], depth: int) -> tuple[str, ...]:
    return tuple(str(face) for face in case["labels"][:depth])


def build_candidates(cases: list[dict[str, Any]]) -> list[Candidate]:
    by_prefix: dict[tuple[str, ...], list[int]] = {}
    for depth in range(1, 15):
        for idx, case in enumerate(cases):
            by_prefix.setdefault(prefix_of(case, depth), []).append(idx)

    candidates: list[Candidate] = []
    seen: set[tuple[int, int]] = set()
    for prefix, indices_list in by_prefix.items():
        indices = tuple(sorted(set(indices_list)))
        gains = {int(cases[idx]["gain"]) for idx in indices}
        if len(gains) != 1:
            continue
        gain = next(iter(gains))
        mask = 0
        for idx in indices:
            mask |= 1 << idx
        key = (mask, gain)
        if key in seen:
            continue
        seen.add(key)
        candidates.append(Candidate(prefix=prefix, gain=gain, mask=mask, indices=indices))
    candidates.sort(key=lambda c: (-c.count, c.depth, c.gain, c.prefix))
    return candidates


def greedy_cover(candidates: list[Candidate], universe: int) -> list[Candidate]:
    uncovered = universe
    out: list[Candidate] = []
    while uncovered:
        best = max(
            candidates,
            key=lambda c: ((c.mask & uncovered).bit_count(), c.count, -c.depth),
        )
        if (best.mask & uncovered) == 0:
            raise RuntimeError("candidate set does not cover universe")
        out.append(best)
        uncovered &= ~best.mask
    return out


def exact_cover(candidates: list[Candidate], universe: int) -> list[Candidate]:
    by_index: dict[int, list[Candidate]] = {}
    for idx in range(universe.bit_length()):
        containing = [c for c in candidates if c.mask & (1 << idx)]
        containing.sort(key=lambda c: (-c.count, c.depth, c.gain, c.prefix))
        by_index[idx] = containing

    best = greedy_cover(candidates, universe)
    max_candidate_size = max(c.count for c in candidates)

    def score(cover: list[Candidate]) -> tuple[int, int, int]:
        return (len(cover), sum(c.depth for c in cover), -sum(c.count for c in cover))

    def search(uncovered: int, chosen: list[Candidate]) -> None:
        nonlocal best
        if not uncovered:
            if score(chosen) < score(best):
                best = list(chosen)
            return
        lower = (uncovered.bit_count() + max_candidate_size - 1) // max_candidate_size
        if len(chosen) + lower > len(best):
            return
        uncovered_indices = [idx for idx in range(universe.bit_length()) if uncovered & (1 << idx)]
        pivot = min(
            uncovered_indices,
            key=lambda idx: sum(1 for c in by_index[idx] if c.mask & uncovered),
        )
        for candidate in by_index[pivot]:
            hit = candidate.mask & uncovered
            if not hit:
                continue
            if len(chosen) + 1 > len(best):
                continue
            chosen.append(candidate)
            search(uncovered & ~candidate.mask, chosen)
            chosen.pop()

    search(universe, [])
    best.sort(key=lambda c: (-c.count, c.depth, c.gain, c.prefix))
    return best


def render_candidate(candidate: Candidate) -> dict[str, Any]:
    return {
        "depth": candidate.depth,
        "gain": candidate.gain,
        "count": candidate.count,
        "accepted_indices": list(candidate.indices),
        "prefix": list(candidate.prefix),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Shared-Gain Prefix Cover Plan",
        "",
        "This is diagnostic-only evidence, not Lean proof.  It computes a",
        "minimum-cardinality cover of graph-accepted top-pairing trace ids by",
        "face-label prefixes whose compatible accepted traces all have the same",
        "Bellman gain.  These are candidates for",
        "`TerminalTracePrefixSharedGainClosedMarginFamily`.",
        "",
        f"- source: `{report['source']}`",
        f"- accepted traces: `{report['accepted_trace_count']}`",
        f"- homogeneous prefix candidates: `{report['candidate_count']}`",
        f"- minimum bucket cover size: `{report['cover_size']}`",
        f"- singleton buckets: `{report['singleton_bucket_count']}`",
        f"- largest bucket size: `{report['largest_bucket_size']}`",
        "",
        "## Cover",
        "",
        "| # | depth | gain | count | accepted indices | prefix |",
        "| ---: | ---: | ---: | ---: | --- | --- |",
    ]
    for idx, row in enumerate(report["cover"]):
        indices = ", ".join(str(i) for i in row["accepted_indices"])
        prefix = " ".join(row["prefix"])
        lines.append(
            f"| `{idx}` | `{row['depth']}` | `{row['gain']}` | `{row['count']}` | "
            f"`{indices}` | `{prefix}` |"
        )
    lines.extend(
        [
            "",
            "## Decision Hint",
            "",
            "A small cover is useful only if each bucket's prefix condition and",
            "margin inequality can be proved from semantic cancellation/source-position",
            "state facts.  If these buckets require rank-indexed affine RHS tables or",
            "one proof per full trace/rank, reject this Bellman production route.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    cases = load_cases(args.input)
    candidates = build_candidates(cases)
    universe = (1 << len(cases)) - 1
    cover = exact_cover(candidates, universe)
    report = {
        "source": args.input.relative_to(ROOT).as_posix(),
        "accepted_trace_count": len(cases),
        "candidate_count": len(candidates),
        "cover_size": len(cover),
        "singleton_bucket_count": sum(1 for c in cover if c.count == 1),
        "largest_bucket_size": max(c.count for c in cover),
        "cover": [render_candidate(c) for c in cover],
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(report) + "\n")
    print(f"wrote {args.json.relative_to(ROOT)}")
    print(f"wrote {args.markdown.relative_to(ROOT)}")
    print(
        f"cover_size={report['cover_size']} "
        f"singletons={report['singleton_bucket_count']} "
        f"candidates={report['candidate_count']}"
    )


if __name__ == "__main__":
    main()
