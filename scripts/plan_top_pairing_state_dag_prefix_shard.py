#!/usr/bin/env python3
"""Plan a tiny semantic state-DAG prefix shard for top-pairing Bellman.

This is diagnostic-only tooling, not proof.  It takes one shared-gain prefix
bucket from `plan_top_pairing_shared_gain_prefix_cover.py`, computes the exact
semantic state after that prefix, and counts the terminal outcomes below the
prefix using the same state components as `profile_top_pairing_trace_state_dag`.

The point is to choose the next bounded Lean shard target for
`StateDAGPrefixClosedMarginFamily` without writing the full state graph.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import asdict
from fractions import Fraction
from pathlib import Path
from typing import Any

import audit_top_pairing_closed_graph_acceptance as audit


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_COVER = ROOT / "scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json"
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_state_dag_prefix_shard_plan.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_state_dag_prefix_shard_plan.md"


def matrix_to_json(matrix) -> list[list[list[int]]]:
    return [
        [[entry.numerator, entry.denominator] for entry in row]
        for row in matrix
    ]


def stack_to_json(state: audit.StackState) -> dict[str, Any]:
    return {
        "shadow_len": state.shadow_len,
        "stack": [list(item) for item in state.stack],
        "cancellations_rev": [list(item) for item in state.cancellations_rev],
    }


def advance_prefix(prefix: list[str]) -> dict[str, Any]:
    counts = dict(audit.REMAINING_COUNTS)
    square_gap = 0
    linear = audit.MAT_ID
    parity = audit.PARITY_ID
    stack = audit.INITIAL_STACK

    for step, face in enumerate(prefix):
        if face not in audit.ALLOWED_AT_STEP.get(step, []):
            raise RuntimeError(f"face {face} not allowed at step {step}")
        pair = audit.PAIR_OF_FACE[face]
        if step < 13:
            if counts[pair] <= 0:
                raise RuntimeError(f"prefix overuses pair {pair} at step {step}")
        elif face != "xp":
            raise RuntimeError("final prefix face must be xp at step 13")

        if audit.is_square_pair(pair):
            if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                raise RuntimeError(
                    f"face {face} not allowed in square gap {square_gap}"
                )
        else:
            square_gap += 1

        normal = tuple(Fraction(x) for x in audit.NORMAL[face])
        if audit.dot(audit.mat_vec(linear, normal), audit.AXIS) <= 0:
            raise RuntimeError(f"local-axis filter rejects prefix at step {step}")
        linear = audit.mat_mul(linear, audit.REFL[face])

        stack, parity = audit.scan_pair_stack(stack, parity, pair)
        if stack.shadow_len > 8:
            raise RuntimeError(f"prefix exceeds top-pairing shadow length at step {step}")
        if step < 13:
            counts[pair] -= 1

    return {
        "step": len(prefix),
        "remaining_pair_counts": counts,
        "square_gap": square_gap,
        "local_axis_linear_matrix": matrix_to_json(linear),
        "square_parity": {
            "x": parity[0],
            "y": parity[1],
            "z": parity[2],
        },
        "triangular_cancellation_stack": stack_to_json(stack),
        "_linear": linear,
        "_parity": parity,
        "_stack": stack,
    }


def terminal_counts_from_prefix(prefix: list[str], state: dict[str, Any]) -> dict[str, Any]:
    counts = dict(state["remaining_pair_counts"])
    square_gap = int(state["square_gap"])
    linear = state["_linear"]
    parity = state["_parity"]
    stack = state["_stack"]
    labels0 = tuple(prefix)
    hist: dict[str, int] = {}
    examples: dict[str, list[list[str]]] = {
        "closed": [],
        "cancellation_reject": [],
        "count_reject": [],
    }

    def add(kind: str, labels: tuple[str, ...]) -> None:
        hist[kind] = hist.get(kind, 0) + 1
        if len(examples[kind]) < 3:
            examples[kind].append(list(labels))

    def dfs(
        step: int,
        counts_now: dict[str, int],
        square_gap_now: int,
        linear_now,
        parity_now: tuple[bool, bool, bool],
        stack_now: audit.StackState,
        labels: tuple[str, ...],
    ) -> None:
        if step == 14:
            if any(counts_now.values()):
                add("count_reject", labels)
            elif audit.stack_summary_ok(stack_now):
                add("closed", labels)
            else:
                add("cancellation_reject", labels)
            return

        for face in audit.ALLOWED_AT_STEP[step]:
            pair = audit.PAIR_OF_FACE[face]
            if step < 13:
                if counts_now.get(pair, 0) <= 0:
                    continue
            elif face != "xp":
                continue

            next_square_gap = square_gap_now
            if audit.is_square_pair(pair):
                if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap_now, []):
                    continue
            else:
                next_square_gap += 1

            normal = tuple(Fraction(x) for x in audit.NORMAL[face])
            if audit.dot(audit.mat_vec(linear_now, normal), audit.AXIS) <= 0:
                continue
            next_linear = audit.mat_mul(linear_now, audit.REFL[face])

            next_stack, next_parity = audit.scan_pair_stack(stack_now, parity_now, pair)
            if next_stack.shadow_len > 8:
                continue
            next_counts = counts_now
            if step < 13:
                next_counts = dict(counts_now)
                next_counts[pair] -= 1

            dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_parity,
                next_stack,
                labels + (face,),
            )

    dfs(len(prefix), counts, square_gap, linear, parity, stack, labels0)
    return {
        "terminal_path_histogram_below_prefix": hist,
        "terminal_examples": examples,
    }


def render_markdown(report: dict[str, Any]) -> str:
    state = report["state_after_prefix"]
    lines = [
        "# Top-Pairing State-DAG Prefix Shard Plan",
        "",
        "This is exact diagnostic evidence, not Lean proof.  It chooses one",
        "bounded shared-gain prefix bucket and records the semantic state-DAG",
        "target for the next Lean shard.",
        "",
        f"- source cover: `{report['source_cover']}`",
        f"- selected bucket index: `{report['selected_bucket_index']}`",
        f"- prefix depth: `{report['prefix_depth']}`",
        f"- accepted indices: `{', '.join(map(str, report['accepted_indices']))}`",
        f"- Bellman gain: `{report['gain']}`",
        f"- prefix: `{' '.join(report['prefix'])}`",
        "",
        "## State After Prefix",
        "",
        f"- step: `{state['step']}`",
        f"- square gap: `{state['square_gap']}`",
        f"- remaining pair counts: `{state['remaining_pair_counts']}`",
        f"- square parity: `{state['square_parity']}`",
        f"- triangular stack: `{state['triangular_cancellation_stack']}`",
        "",
        "## Terminal Paths Below Prefix",
        "",
    ]
    for key, value in report["terminal_path_histogram_below_prefix"].items():
        lines.append(f"- `{key}`: `{value}`")
    lines.extend(
        [
            "",
            "## Lean Target",
            "",
            "The next bounded Lean shard should prove a constructor theorem whose",
            "conclusion is:",
            "",
            "```lean",
            "StateDAGPrefixClosedMarginFamily",
            "  selectedPrefix selectedGap selectedLinear selectedGain",
            "  scaledMargin rank",
            "```",
            "",
            "and then reuse",
            "`evalLanguage_of_stateDAGPrefixFamily`.  It must not introduce",
            "`SampledRankIndex`, sampled paths, exact rank tables, or affine RHS",
            "membership tables.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cover-json", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--bucket-index", type=int, default=0)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    cover = json.loads(args.cover_json.read_text())
    bucket = cover["cover"][args.bucket_index]
    prefix = list(bucket["prefix"])
    state = advance_prefix(prefix)
    terminal = terminal_counts_from_prefix(prefix, state)
    clean_state = {k: v for k, v in state.items() if not k.startswith("_")}
    report = {
        "source_cover": args.cover_json.relative_to(ROOT).as_posix(),
        "selected_bucket_index": args.bucket_index,
        "prefix_depth": len(prefix),
        "prefix": prefix,
        "accepted_indices": bucket["accepted_indices"],
        "gain": bucket["gain"],
        "state_after_prefix": clean_state,
        **terminal,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(report) + "\n")
    print(f"wrote {args.json.relative_to(ROOT)}")
    print(f"wrote {args.markdown.relative_to(ROOT)}")
    print(
        f"bucket={args.bucket_index} depth={len(prefix)} "
        f"gain={bucket['gain']} accepted={len(bucket['accepted_indices'])}"
    )


if __name__ == "__main__":
    main()
