#!/usr/bin/env python3
"""Profile sharing in the top-pairing semantic transition classifier.

This is exact diagnostic evidence, not proof.  It asks whether the slow
local-axis facts in generated prefix-transition proofs can be shared by finite
holonomy state, rather than paid once per parent prefix.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path

import audit_top_pairing_closed_graph_acceptance as audit
import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_transition_sharing_profile.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_transition_sharing_profile.md"


def frac_key(q: Fraction) -> tuple[int, int]:
    return (q.numerator, q.denominator)


def mat_key(m) -> tuple[tuple[tuple[int, int], ...], ...]:
    return tuple(tuple(frac_key(x) for x in row) for row in m)


def dot_for(linear, face: str) -> Fraction:
    n = tuple(Fraction(x) for x in audit.NORMAL[face])
    return audit.dot(audit.mat_vec(linear, n), audit.AXIS)


def scan_prefix(prefix: tuple[str, ...]) -> tuple[dict[str, int], int, object]:
    counts = dict(audit.REMAINING_COUNTS)
    square_gap = 0
    linear = audit.MAT_ID
    for step, face in enumerate(prefix):
        pair = audit.PAIR_OF_FACE[face]
        if audit.is_square_pair(pair):
            # The profiler consumes prefixes already accepted by the exact
            # semantic enumerator, so this is state reconstruction.
            pass
        else:
            square_gap += 1
        linear = audit.mat_mul(linear, audit.REFL[face])
        if step < 13:
            counts[pair] -= 1
    return counts, square_gap, linear


def candidate_faces(depth: int, counts: dict[str, int], square_gap: int) -> list[str]:
    out: list[str] = []
    for face in audit.ALLOWED_AT_STEP.get(depth, []):
        pair = audit.PAIR_OF_FACE[face]
        if depth < 13 and counts.get(pair, 0) <= 0:
            continue
        if depth >= 13 and face != "xp":
            continue
        if audit.is_square_pair(pair):
            if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                continue
        out.append(face)
    return out


def profile_depth(depth: int) -> dict[str, object]:
    parents = prefix_smoke.enumerate_semantic_prefixes(depth)
    children = prefix_smoke.enumerate_semantic_prefixes(depth + 1)
    grouped_children = prefix_smoke.prefixes_by_parent(children, depth)

    linear_states: set[object] = set()
    transition_signatures: Counter[object] = Counter()
    child_sets: Counter[tuple[str, ...]] = Counter()
    local_axis_facts: set[tuple[object, str, tuple[int, int], bool]] = set()
    local_axis_rejects: set[tuple[object, str, tuple[int, int]]] = set()
    local_axis_allows: set[tuple[object, str, tuple[int, int]]] = set()
    axis_rejects_per_parent: list[int] = []
    candidates_per_parent: list[int] = []
    children_per_parent: list[int] = []
    mismatch_examples: list[dict[str, object]] = []

    for prefix in parents:
        counts, square_gap, linear = scan_prefix(prefix)
        lkey = mat_key(linear)
        linear_states.add(lkey)
        candidates = candidate_faces(depth, counts, square_gap)
        computed_children: list[str] = []
        rejects = 0
        for face in candidates:
            d = dot_for(linear, face)
            ok = d > 0
            fact_key = (lkey, face, frac_key(d), ok)
            local_axis_facts.add(fact_key)
            if ok:
                local_axis_allows.add((lkey, face, frac_key(d)))
                computed_children.append(face)
            else:
                rejects += 1
                local_axis_rejects.add((lkey, face, frac_key(d)))
        expected_children = tuple(child[-1] for child in grouped_children.get(prefix, []))
        computed_tuple = tuple(computed_children)
        if computed_tuple != expected_children and len(mismatch_examples) < 5:
            mismatch_examples.append(
                {
                    "prefix": list(prefix),
                    "computed_children": list(computed_tuple),
                    "expected_children": list(expected_children),
                }
            )
        transition_key = (
            tuple(sorted(counts.items())),
            square_gap,
            lkey,
            computed_tuple,
        )
        transition_signatures[transition_key] += 1
        child_sets[computed_tuple] += 1
        axis_rejects_per_parent.append(rejects)
        candidates_per_parent.append(len(candidates))
        children_per_parent.append(len(computed_children))

    def hist(values: list[int]) -> dict[str, int]:
        return {str(k): v for k, v in sorted(Counter(values).items())}

    return {
        "depth": depth,
        "parent_count": len(parents),
        "child_count": len(children),
        "linear_state_count": len(linear_states),
        "transition_signature_count": len(transition_signatures),
        "child_set_count": len(child_sets),
        "local_axis_fact_count": len(local_axis_facts),
        "local_axis_allow_count": len(local_axis_allows),
        "local_axis_reject_count": len(local_axis_rejects),
        "max_parents_per_transition_signature": max(transition_signatures.values(), default=0),
        "max_parents_per_child_set": max(child_sets.values(), default=0),
        "candidates_per_parent_hist": hist(candidates_per_parent),
        "children_per_parent_hist": hist(children_per_parent),
        "axis_rejects_per_parent_hist": hist(axis_rejects_per_parent),
        "mismatch_count": len(mismatch_examples),
        "mismatch_examples": mismatch_examples,
    }


def write_markdown(report: dict[str, object], path: Path) -> None:
    rows = report["depths"]  # type: ignore[index]
    lines = [
        "# Top-Pairing Transition Sharing Profile",
        "",
        "This is exact diagnostic evidence, not proof. It profiles whether",
        "semantic prefix transitions can share local-axis facts by finite",
        "holonomy state.",
        "",
        "| depth | parents | children | linear states | transition sigs | axis facts | axis rejects | max parents/sig | mismatches |",
        "|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for row in rows:  # type: ignore[union-attr]
        lines.append(
            "| {depth} | {parent_count} | {child_count} | {linear_state_count} | "
            "{transition_signature_count} | {local_axis_fact_count} | "
            "{local_axis_reject_count} | {max_parents_per_transition_signature} | "
            "{mismatch_count} |".format(**row)
        )
    lines.extend(["", "## Notes", ""])
    lines.append(
        "- `transition sigs` are keyed by remaining pair counts, square-gap state, "
        "exact rational linear matrix, and computed child set."
    )
    lines.append(
        "- `axis facts` are exact `(linear state, face, dot value, sign)` facts."
    )
    lines.append(
        "- Mismatches compare the computed transition children against the existing "
        "exact semantic prefix enumerator."
    )
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--min-depth", type=int, default=8)
    parser.add_argument("--max-depth", type=int, default=13)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()
    if args.min_depth < 0 or args.max_depth < args.min_depth or args.max_depth > 13:
        raise SystemExit("expected 0 <= min-depth <= max-depth <= 13")

    depths = [profile_depth(depth) for depth in range(args.min_depth, args.max_depth + 1)]
    report = {
        "source": "exact semantic prefix enumerator",
        "sampled_rank_or_path_data": False,
        "depths": depths,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    write_markdown(report, args.markdown)
    print(f"wrote {args.json.resolve().relative_to(ROOT)}")
    print(f"wrote {args.markdown.resolve().relative_to(ROOT)}")
    for row in depths:
        print(
            "depth {depth}: parents={parent_count} transition_sigs={transition_signature_count} "
            "axis_facts={local_axis_fact_count} rejects={local_axis_reject_count} "
            "mismatches={mismatch_count}".format(**row)
        )


if __name__ == "__main__":
    main()
