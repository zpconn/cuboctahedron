#!/usr/bin/env python3
"""Profile a finite proof tree for top-pairing trace classification.

This is exact diagnostic evidence, not proof.  It mirrors the visible
`TopPairingClosedLanguageAtRank` components, but records the local reason that
each prefix branch is rejected.  The output is intended to guide a generated
Lean proof of the list-level theorem

  schedule -> square-gap -> local-axis -> pair-counts -> cancellation ->
    labels = traceA or labels = traceB

without relying on sampled ranks or a monolithic simplifier search.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import asdict
from pathlib import Path

import audit_top_pairing_closed_graph_acceptance as audit


ROOT = Path(__file__).resolve().parents[1]


def profile(max_examples: int) -> dict[str, object]:
    stats: dict[str, int] = {
        "prefix_nodes": 0,
        "schedule_rejects": 0,
        "count_rejects": 0,
        "square_gap_rejects": 0,
        "local_axis_rejects": 0,
        "shadow_length_rejects": 0,
        "terminal_count_rejects": 0,
        "terminal_cancellation_rejects": 0,
        "closed_terminals": 0,
    }
    depth_nodes = {i: 0 for i in range(15)}
    first_examples: dict[str, list[dict[str, object]]] = {
        "count_rejects": [],
        "square_gap_rejects": [],
        "local_axis_rejects": [],
        "shadow_length_rejects": [],
        "terminal_count_rejects": [],
        "terminal_cancellation_rejects": [],
        "closed_terminals": [],
    }

    def add_example(kind: str, item: dict[str, object]) -> None:
        bucket = first_examples[kind]
        if len(bucket) < max_examples:
            bucket.append(item)

    def dfs(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: audit.StackState,
        labels: list[str],
    ) -> None:
        stats["prefix_nodes"] += 1
        depth_nodes[step] += 1
        if step == 14:
            if any(counts.values()):
                stats["terminal_count_rejects"] += 1
                add_example(
                    "terminal_count_rejects",
                    {"labels": labels.copy(), "remaining_counts": dict(counts)},
                )
                return
            if not audit.stack_summary_ok(stack_state):
                stats["terminal_cancellation_rejects"] += 1
                add_example(
                    "terminal_cancellation_rejects",
                    {
                        "labels": labels.copy(),
                        "stack": asdict(stack_state),
                    },
                )
                return
            stats["closed_terminals"] += 1
            add_example("closed_terminals", {"labels": labels.copy()})
            return

        allowed_at_step = set(audit.ALLOWED_AT_STEP[step])
        for face in audit.FACES:
            if face not in allowed_at_step:
                stats["schedule_rejects"] += 1
                continue

            pair = audit.PAIR_OF_FACE[face]
            if step < 13:
                if counts.get(pair, 0) <= 0:
                    stats["count_rejects"] += 1
                    add_example(
                        "count_rejects",
                        {
                            "step": step,
                            "prefix": labels.copy(),
                            "face": face,
                            "pair": pair,
                            "remaining_counts": dict(counts),
                        },
                    )
                    continue
            elif face != "xp":
                stats["count_rejects"] += 1
                continue

            next_square_gap = square_gap
            if audit.is_square_pair(pair):
                if face not in audit.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                    stats["square_gap_rejects"] += 1
                    add_example(
                        "square_gap_rejects",
                        {
                            "step": step,
                            "prefix": labels.copy(),
                            "face": face,
                            "square_gap": square_gap,
                        },
                    )
                    continue
            else:
                next_square_gap += 1

            n = tuple(audit.Fraction(x) for x in audit.NORMAL[face])
            if audit.dot(audit.mat_vec(linear, n), audit.AXIS) <= 0:
                stats["local_axis_rejects"] += 1
                add_example(
                    "local_axis_rejects",
                    {
                        "step": step,
                        "prefix": labels.copy(),
                        "face": face,
                    },
                )
                continue
            next_linear = audit.mat_mul(linear, audit.REFL[face])

            next_stack = stack_state
            next_counts = counts
            if step < 13:
                next_counts = dict(counts)
                next_counts[pair] -= 1
                if pair in audit.TRI_OF_PAIR:
                    next_stack = audit.stack_push(stack_state, audit.TRI_OF_PAIR[pair])
                    if next_stack.shadow_len > 8:
                        stats["shadow_length_rejects"] += 1
                        add_example(
                            "shadow_length_rejects",
                            {
                                "step": step,
                                "prefix": labels.copy(),
                                "face": face,
                                "shadow_len": next_stack.shadow_len,
                            },
                        )
                        continue

            dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_stack,
                labels + [face],
            )

    dfs(
        0,
        dict(audit.REMAINING_COUNTS),
        0,
        audit.MAT_ID,
        audit.INITIAL_STACK,
        [],
    )
    return {
        "decision": (
            "two-terminal-prefix-certificate"
            if stats["closed_terminals"] == 2
            else "unexpected-terminal-count"
        ),
        "stats": stats,
        "depth_nodes": depth_nodes,
        "first_examples": first_examples,
        "estimated_generated_rejection_leaves": sum(
            stats[k]
            for k in [
                "schedule_rejects",
                "count_rejects",
                "square_gap_rejects",
                "local_axis_rejects",
                "shadow_length_rejects",
                "terminal_count_rejects",
                "terminal_cancellation_rejects",
            ]
        ),
    }


def write_markdown(report: dict[str, object], path: Path) -> None:
    stats = report["stats"]  # type: ignore[index]
    lines = [
        "# Top-Pairing Trace Classifier Prefix Profile",
        "",
        "This is exact diagnostic evidence, not proof.  It sizes an explicit",
        "prefix certificate for the list-level top-pairing trace classifier.",
        "",
        f"- decision: `{report['decision']}`",
        f"- estimated generated rejection leaves: `{report['estimated_generated_rejection_leaves']}`",
        "",
        "## Stats",
        "",
    ]
    for key, value in stats.items():  # type: ignore[union-attr]
        lines.append(f"- `{key}`: `{value}`")
    lines.extend(["", "## Depth Nodes", ""])
    for key, value in report["depth_nodes"].items():  # type: ignore[union-attr]
        lines.append(f"- depth `{key}`: `{value}`")
    lines.extend(["", "## First Examples", ""])
    for kind, examples in report["first_examples"].items():  # type: ignore[union-attr]
        if not examples:
            continue
        lines.extend([f"### {kind}", ""])
        for item in examples:
            lines.append("```json")
            lines.append(json.dumps(item, indent=2))
            lines.append("```")
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT / "scripts/generated/top_pairing_trace_classifier_profile.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=ROOT / "docs/top_pairing_trace_classifier_profile.md",
    )
    parser.add_argument("--max-examples", type=int, default=3)
    args = parser.parse_args()

    report = profile(args.max_examples)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    write_markdown(report, args.markdown)
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    print(f"decision: {report['decision']}")


if __name__ == "__main__":
    main()
