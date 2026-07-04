#!/usr/bin/env python3
"""Profile Bellman closure over the visible top-pairing closed language.

This is untrusted exact diagnostic infrastructure.  It emits no Lean evidence.

The selected split-10M Bellman graph is not closed under the current
`TopPairingClosedLanguageAtRank` fields.  This script asks the next question:
if we enumerate the small visible closed language itself, compute the exact
top-pairing margin gains for each closed word, and build a semantic-state
Bellman graph from those closed words, does the Bellman bound stay nonpositive?

The intended use is to choose the next Lean theorem surface.  A positive result
supports a deterministic closed-language evaluator theorem over the selected
state key.  It is not a proof of generated coverage.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from fractions import Fraction
import json
import sys
import time
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
ROOT = SCRIPT_DIR.parent
GENERATED_DIR = SCRIPT_DIR / "generated"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import audit_top_pairing_closed_graph_acceptance as closed  # noqa: E402
from direct_start_linear_profile import (  # noqa: E402
    direct_system_for_aff,
    margin_linear_form,
    margin_linear_form_key,
    qkey,
)
from direct_start_offset_family_profile import (  # noqa: E402
    offset_contributions,
    shadow_cancellation_keys,
)
from exact_profile import FACE_TO_PAIR_SIGN, total_aff  # noqa: E402
from nonidentity_margin_bellman_profile import (  # noqa: E402
    TOP_PAIRING,
    contribution_state_path,
    edge_key,
    fraction_bit_length,
    lcm,
    short_state,
    solve_bellman,
)


STATE_KEY_CHOICES = [
    "base",
    "with-step",
    "with-linear",
    "with-step-linear",
    "with-step-face",
    "with-step-face-linear",
    "with-step-tri-source",
    "with-step-face-tri-source",
    "with-step-face-linear-tri-source",
    "with-prefix",
]

REJECTED_GRAPH_BAD_FACE_TRACE_004 = [
    "xm",
    "ym",
    "tmpm",
    "zm",
    "zp",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "yp",
    "xp",
]


def actual_face_omni(labels: list[str]) -> bool:
    return len(labels) == 14 and len(set(labels)) == 14


def accepted_sequence_bad_face(labels: list[str], bad_face: str) -> bool:
    return bad_face == "ym" and labels != REJECTED_GRAPH_BAD_FACE_TRACE_004


def enumerate_closed_label_words(max_nodes: int | None) -> tuple[list[list[str]], dict[str, Any]]:
    stats: dict[str, Any] = {
        "dfs_nodes": 0,
        "closed_candidates": 0,
        "max_nodes_hit": False,
    }
    candidates: list[list[str]] = []

    def dfs(
        step: int,
        counts: dict[str, int],
        square_gap: int,
        linear,
        stack_state: closed.StackState,
        parity: tuple[bool, bool, bool],
        labels: list[str],
    ) -> None:
        stats["dfs_nodes"] += 1
        if max_nodes is not None and stats["dfs_nodes"] > max_nodes:
            stats["max_nodes_hit"] = True
            return
        if step == 14:
            if any(counts.values()):
                return
            if not closed.stack_summary_ok(stack_state):
                return
            stats["closed_candidates"] += 1
            candidates.append(labels.copy())
            return

        for face in closed.ALLOWED_AT_STEP[step]:
            pair = closed.PAIR_OF_FACE[face]
            if step < 13:
                if counts.get(pair, 0) <= 0:
                    continue
            else:
                if face != "xp":
                    continue

            next_square_gap = square_gap
            if closed.is_square_pair(pair):
                if face not in closed.ALLOWED_SQUARE_AT_GAP.get(square_gap, []):
                    continue
            else:
                next_square_gap += 1

            n = tuple(Fraction(x) for x in closed.NORMAL[face])
            if closed.dot(closed.mat_vec(linear, n), closed.AXIS) <= 0:
                continue
            next_linear = closed.mat_mul(linear, closed.REFL[face])

            next_stack, next_parity = closed.scan_pair_stack(stack_state, parity, pair)
            if next_stack.shadow_len > 8:
                continue

            next_counts = counts
            if step < 13:
                next_counts = dict(counts)
                next_counts[pair] -= 1

            dfs(
                step + 1,
                next_counts,
                next_square_gap,
                next_linear,
                next_stack,
                next_parity,
                labels + [face],
            )

    dfs(
        0,
        dict(closed.REMAINING_COUNTS),
        0,
        closed.MAT_ID,
        closed.INITIAL_STACK,
        closed.PARITY_ID,
        [],
    )
    return candidates, stats


def seq_of_contribution_labels(labels: list[str]) -> list[str]:
    if len(labels) != 14:
        raise ValueError(f"expected 14 labels, got {len(labels)}")
    return [labels[-1], *labels[:-1]]


def word_of_contribution_labels(labels: list[str]) -> tuple[str, ...]:
    return tuple(FACE_TO_PAIR_SIGN[face][0] for face in labels[:-1])


def existing_graph_result(
    labels: list[str],
    label_of_face: dict[str, int],
    transitions: dict[tuple[int, int], tuple[int, int]],
) -> dict[str, Any]:
    state = 0
    gain = 0
    for step, face in enumerate(labels):
        label = label_of_face[face]
        edge = transitions.get((state, label))
        if edge is None:
            return {
                "accepted": False,
                "reject_step": step,
                "reject_state": state,
                "reject_face": face,
                "reject_label": label,
                "gain_before_reject": gain,
            }
        state, edge_gain = edge
        gain += edge_gain
    return {
        "accepted": True,
        "final_state": state,
        "gain": gain,
    }


def argmax_path(
    *,
    root_states: set[str],
    edges: set[tuple[str, Fraction, str]],
    potential: dict[str, Fraction],
    max_const: Fraction,
    observed_sequences: dict[tuple[tuple[str, str, str], ...], list[int]],
    edge_candidates: dict[tuple[str, str, str], list[int]],
) -> dict[str, Any] | None:
    if not root_states:
        return None
    outgoing: dict[str, list[tuple[Fraction, str]]] = defaultdict(list)
    for src, gain, dst in edges:
        outgoing[src].append((gain, dst))
    state = max(root_states, key=lambda s: (potential.get(s, Fraction(0)), s))
    root = state
    seen: set[str] = set()
    path_edges: list[tuple[str, Fraction, str]] = []
    total_gain = Fraction(0)
    while outgoing.get(state):
        if state in seen:
            break
        seen.add(state)
        gain, dst = max(
            outgoing[state],
            key=lambda item: (item[0] + potential.get(item[1], Fraction(0)), qkey(item[0]), item[1]),
        )
        path_edges.append((state, gain, dst))
        total_gain += gain
        state = dst
    keyed = tuple(edge_key(edge) for edge in path_edges)
    realizing_candidates = observed_sequences.get(keyed, [])
    return {
        "root_state": root,
        "final_state": state,
        "edge_count": len(path_edges),
        "total_gain": qkey(total_gain),
        "margin_bound": qkey(max_const + total_gain),
        "is_observed_path": bool(realizing_candidates),
        "realizing_candidates": realizing_candidates[:20],
        "edges": [
            {
                "step": idx,
                "gain": qkey(gain),
                "src_short": short_state(src),
                "dst_short": short_state(dst),
                "edge_realizing_candidates": edge_candidates.get(edge_key((src, gain, dst)), [])[:10],
            }
            for idx, (src, gain, dst) in enumerate(path_edges, start=1)
        ],
    }


def summarize_bellman_paths(paths: list[dict[str, Any]]) -> dict[str, Any]:
    edges: set[tuple[str, Fraction, str]] = set()
    root_states: set[str] = set()
    final_states: set[str] = set()
    edge_candidates: dict[tuple[str, str, str], list[int]] = defaultdict(list)
    observed_sequences: dict[tuple[tuple[str, str, str], ...], list[int]] = defaultdict(list)
    denominators = [1]
    gain_bits = 0

    for path in paths:
        if path["states"]:
            root_states.add(path["states"][0])
            final_states.add(path["states"][-1])
        denominators.append(path["const"].denominator)
        keyed_path = tuple(edge_key(edge) for edge in path["edges"])
        observed_sequences[keyed_path].append(path["candidate"])
        for src, gain, dst in path["edges"]:
            edge = (src, gain, dst)
            edges.add(edge)
            key = edge_key(edge)
            if len(edge_candidates[key]) < 20:
                edge_candidates[key].append(path["candidate"])
            denominators.append(gain.denominator)
            gain_bits = max(gain_bits, fraction_bit_length(gain))

    potential, bounded = solve_bellman(edges, final_states)
    root_bound = max((potential[root] for root in root_states), default=Fraction(0))
    max_const = max((path["const"] for path in paths), default=Fraction(0))
    max_margin_bound = max_const + root_bound
    scale = lcm(denominators + [value.denominator for value in potential.values()])
    potential_bits = max((fraction_bit_length(value) for value in potential.values()), default=0)
    scaled_bits = max(
        [abs(int(value * scale)).bit_length() for value in potential.values()] + [scale.bit_length(), 0]
    )
    return {
        "counts": {
            "candidates": len(paths),
            "root_states": len(root_states),
            "states": len(potential),
            "edges": len(edges),
            "final_states": len(final_states),
        },
        "bellman": {
            "bounded_fixed_point": bounded,
            "root_bound": qkey(root_bound),
            "max_const": qkey(max_const),
            "max_margin_bound": qkey(max_margin_bound),
            "proves_nonpositive": max_margin_bound <= 0,
            "scale": scale,
            "gain_fraction_bit_length": gain_bits,
            "potential_fraction_bit_length": potential_bits,
            "scaled_potential_bit_length": scaled_bits,
        },
        "argmax_path": argmax_path(
            root_states=root_states,
            edges=edges,
            potential=potential,
            max_const=max_const,
            observed_sequences=observed_sequences,
            edge_candidates=edge_candidates,
        ),
    }


def bellman_graph_payload(paths: list[dict[str, Any]]) -> dict[str, Any]:
    edges: set[tuple[str, Fraction, str]] = set()
    root_states: set[str] = set()
    final_states: set[str] = set()
    denominators = [1]
    edge_label_sets: dict[tuple[str, str, str], set[str]] = defaultdict(set)
    label_set: set[str] = set()

    for path in paths:
        if path["states"]:
            root_states.add(path["states"][0])
            final_states.add(path["states"][-1])
        denominators.append(path["const"].denominator)
        for edge, label in zip(path["edges"], path["edge_labels"]):
            edges.add(edge)
            key = edge_key(edge)
            edge_label_sets[key].add(label)
            label_set.add(label)
            denominators.append(edge[1].denominator)

    potential, bounded = solve_bellman(edges, final_states)
    max_const = max((path["const"] for path in paths), default=Fraction(0))
    scale = lcm(denominators + [value.denominator for value in potential.values()])
    states_sorted = sorted(potential)
    state_index = {state: idx for idx, state in enumerate(states_sorted)}
    edge_tuples = sorted(
        edges,
        key=lambda edge: (state_index[edge[0]], state_index[edge[2]], edge[1]),
    )
    edge_index = {edge_key(edge): idx for idx, edge in enumerate(edge_tuples)}
    labels_sorted = sorted(label_set)
    label_index = {label: idx for idx, label in enumerate(labels_sorted)}

    candidate_objects = []
    for path in sorted(paths, key=lambda item: item["candidate"]):
        candidate_objects.append(
            {
                "candidate": path["candidate"],
                "final": state_index[path["states"][-1]],
                "margin_scaled": int(Fraction(path["margin_value"]) * scale),
                "edge_indices": [
                    edge_index[edge_key(edge)] for edge in path["edges"]
                ],
                "label_indices": [
                    label_index[label] for label in path["edge_labels"]
                ],
                "actual_face_omni": path["actual_face_omni"],
                "accepted_sequence_bad_face": path["accepted_sequence_bad_face"],
            }
        )

    class_map: dict[tuple[int, int, tuple[int, ...], tuple[int, ...]], dict[str, Any]] = {}
    for obj in candidate_objects:
        key = (
            int(obj["final"]),
            int(obj["margin_scaled"]),
            tuple(int(edge_idx) for edge_idx in obj["edge_indices"]),
            tuple(int(label_idx) for label_idx in obj["label_indices"]),
        )
        group = class_map.setdefault(
            key,
            {
                "final": key[0],
                "margin_scaled": key[1],
                "edge_indices": list(key[2]),
                "label_indices": list(key[3]),
                "count": 0,
                "candidate_sample": [],
            },
        )
        group["count"] += 1
        if len(group["candidate_sample"]) < 12:
            group["candidate_sample"].append(obj["candidate"])

    return {
        "bounded_fixed_point": bounded,
        "state_count": len(states_sorted),
        "edge_count": len(edge_tuples),
        "scale": scale,
        "const_scaled": int(max_const * scale),
        "root_indices": [state_index[state] for state in sorted(root_states)],
        "final_indices": [state_index[state] for state in sorted(final_states)],
        "states": [
            {
                "index": idx,
                "key": state,
                "potential_scaled": int(potential[state] * scale),
            }
            for idx, state in enumerate(states_sorted)
        ],
        "edges": [
            {
                "index": idx,
                "src": state_index[src],
                "dst": state_index[dst],
                "gain_scaled": int(gain * scale),
                "label_indices": [
                    label_index[label]
                    for label in sorted(edge_label_sets.get(edge_key((src, gain, dst)), set()))
                ],
            }
            for idx, (src, gain, dst) in enumerate(edge_tuples)
        ],
        "labels": [
            {"index": idx, "key": label}
            for idx, label in enumerate(labels_sorted)
        ],
        "candidate_objects": candidate_objects,
        "candidate_classes": [
            {"class_index": idx, **group}
            for idx, group in enumerate(
                sorted(
                    class_map.values(),
                    key=lambda group: (
                        group["edge_indices"],
                        group["final"],
                        group["margin_scaled"],
                    ),
                )
            )
        ],
        "candidate_class_count": len(class_map),
    }


def build_payload(args: argparse.Namespace) -> dict[str, Any]:
    t0 = time.perf_counter()
    candidates, enum_stats = enumerate_closed_label_words(args.max_nodes)

    label_of_face: dict[str, int] = {}
    transitions: dict[tuple[int, int], tuple[int, int]] = {}
    if args.compare_base is not None:
        label_of_face, transitions = closed.parse_graph(args.compare_base)

    paths: list[dict[str, Any]] = []
    margin_key_counts: Counter[str] = Counter()
    mismatch_samples: list[dict[str, Any]] = []
    margin_values: Counter[str] = Counter()
    existing_graph_counts: Counter[str] = Counter()
    existing_rejects: Counter[tuple[int, int, str]] = Counter()
    strengthened_filter_counts: Counter[str] = Counter()

    for candidate_index, labels in enumerate(candidates):
        seq = seq_of_contribution_labels(labels)
        word = word_of_contribution_labels(labels)
        aff = total_aff(seq)
        rows, _rhs = direct_system_for_aff(aff)
        form = margin_linear_form(aff, args.bad_face, rows)
        if form is None:
            if len(mismatch_samples) < args.max_examples:
                mismatch_samples.append(
                    {
                        "candidate": candidate_index,
                        "reason": "nonunique-margin-form",
                        "labels": labels,
                    }
                )
            continue
        margin_key = margin_linear_form_key(aff, args.bad_face, rows)
        const, coeff_b = form
        cancel_keys = shadow_cancellation_keys(word)
        margin_cancellation_key = f"{margin_key}|{cancel_keys['cancellation_pairing']}"
        margin_key_counts[margin_cancellation_key] += 1
        if args.target_margin_cancellation_pairing and margin_cancellation_key != args.target_margin_cancellation_pairing:
            if len(mismatch_samples) < args.max_examples:
                mismatch_samples.append(
                    {
                        "candidate": candidate_index,
                        "reason": "target-margin-cancellation-mismatch",
                        "labels": labels,
                        "got": margin_cancellation_key,
                    }
                )
            continue

        contributions = offset_contributions(seq, coeff_b)
        gains = [item["value"] for item in contributions]
        states, path_edges, edge_labels = contribution_state_path(
            seq,
            gains,
            state_key_mode=args.state_key_mode,
        )
        contrib_sum = sum(gains, Fraction(0))
        margin_value = const + contrib_sum
        margin_values[qkey(margin_value)] += 1
        hactual = actual_face_omni(labels)
        hbad = accepted_sequence_bad_face(labels, args.bad_face)
        if hactual:
            strengthened_filter_counts["actual_face_omni"] += 1
        else:
            strengthened_filter_counts["not_actual_face_omni"] += 1
        if hbad:
            strengthened_filter_counts["accepted_sequence_bad_face"] += 1
        else:
            strengthened_filter_counts["not_accepted_sequence_bad_face"] += 1
        if hactual and hbad:
            strengthened_filter_counts["strengthened_candidate"] += 1

        existing_graph = None
        if label_of_face:
            existing_graph = existing_graph_result(labels, label_of_face, transitions)
            existing_graph_counts["accepted" if existing_graph["accepted"] else "rejected"] += 1
            if not existing_graph["accepted"]:
                existing_rejects[
                    (
                        int(existing_graph["reject_step"]),
                        int(existing_graph["reject_state"]),
                        str(existing_graph["reject_face"]),
                    )
                ] += 1

        paths.append(
            {
                "candidate": candidate_index,
                "labels": labels,
                "seq": seq,
                "const": const,
                "margin_value": qkey(margin_value),
                "actual_face_omni": hactual,
                "accepted_sequence_bad_face": hbad,
                "states": states,
                "edges": path_edges,
                "edge_labels": edge_labels,
                "existing_graph": existing_graph,
            }
        )

    all_summary = summarize_bellman_paths(paths)
    strengthened_paths = [
        path for path in paths
        if path["actual_face_omni"] and path["accepted_sequence_bad_face"]
    ]
    strengthened_summary = summarize_bellman_paths(strengthened_paths)
    elapsed = time.perf_counter() - t0

    decision = "closed-bellman-bound-nonpositive"
    if enum_stats["max_nodes_hit"]:
        decision = "incomplete-max-nodes-hit"
    elif mismatch_samples:
        decision = "target-margin-mismatch"
    elif not all_summary["bellman"]["bounded_fixed_point"]:
        decision = "state-key-cyclic"
    elif not all_summary["bellman"]["proves_nonpositive"] and strengthened_summary["bellman"]["proves_nonpositive"]:
        decision = "plain-too-weak-strengthened-nonpositive"
    elif not all_summary["bellman"]["proves_nonpositive"]:
        decision = "closed-bellman-bound-positive"
    elif all_summary["argmax_path"] is not None and not all_summary["argmax_path"]["is_observed_path"]:
        decision = "nonpositive-with-spurious-argmax"

    payload = {
        "schema_version": 1,
        "mode": "top-pairing-closed-bellman-closure-audit",
        "arithmetic": "exact Fraction/integer arithmetic; no floating point",
        "elapsed_seconds": elapsed,
        "state_key_mode": args.state_key_mode,
        "bad_face": args.bad_face,
        "target_margin_cancellation_pairing": args.target_margin_cancellation_pairing,
        "decision": decision,
        "counts": {
            **enum_stats,
            "usable_candidates": len(paths),
            "root_states": all_summary["counts"]["root_states"],
            "states": all_summary["counts"]["states"],
            "edges": all_summary["counts"]["edges"],
            "final_states": all_summary["counts"]["final_states"],
            "margin_keys": len(margin_key_counts),
            "margin_values": len(margin_values),
            "existing_graph_accepted": existing_graph_counts.get("accepted", 0),
            "existing_graph_rejected": existing_graph_counts.get("rejected", 0),
            **dict(strengthened_filter_counts),
        },
        "bellman": all_summary["bellman"],
        "argmax_path": all_summary["argmax_path"],
        "strengthened_counts": strengthened_summary["counts"],
        "strengthened_bellman": strengthened_summary["bellman"],
        "strengthened_argmax_path": strengthened_summary["argmax_path"],
        "margin_key_counts": [
            {"key": key, "count": count}
            for key, count in margin_key_counts.most_common()
        ],
        "margin_values": [
            {"key": key, "count": count}
            for key, count in margin_values.most_common()
        ],
        "existing_graph_rejects": [
            {"step": step, "state": state, "face": face, "count": count}
            for (step, state, face), count in existing_rejects.most_common()
        ],
        "mismatch_samples": mismatch_samples,
        "sample_paths": [
            {
                "candidate": path["candidate"],
                "labels": path["labels"],
                "margin_value": path["margin_value"],
                "actual_face_omni": path["actual_face_omni"],
                "accepted_sequence_bad_face": path["accepted_sequence_bad_face"],
                "existing_graph": path["existing_graph"],
            }
            for path in paths[: args.max_examples]
        ],
    }
    if args.graph_json is not None:
        payload["graphs"] = {
            "all": bellman_graph_payload(paths),
            "strengthened": bellman_graph_payload(strengthened_paths),
        }
    return payload


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Top-Pairing Closed Bellman Closure Audit",
        "",
        "Untrusted exact diagnostic profile.  It emits no Lean evidence.",
        "",
        f"- Decision: `{payload['decision']}`",
        f"- State key mode: `{payload['state_key_mode']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Target margin+cancellation pairing: `{payload['target_margin_cancellation_pairing']}`",
        "",
        "## Counts",
        "",
        "| metric | value |",
        "| --- | ---: |",
    ]
    for key, value in payload["counts"].items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend(["", "## Bellman", "", "| metric | value |", "| --- | ---: |"])
    for key, value in payload["bellman"].items():
        lines.append(f"| `{key}` | `{value}` |")
    argmax = payload.get("argmax_path")
    if argmax:
        lines.extend(["", "## Bellman Argmax Path", ""])
        lines.append(f"- Edge count: `{argmax['edge_count']}`")
        lines.append(f"- Total gain: `{argmax['total_gain']}`")
        lines.append(f"- Margin bound: `{argmax['margin_bound']}`")
        lines.append(f"- Is observed path: `{argmax['is_observed_path']}`")
        lines.append(f"- Realizing candidates: `{argmax['realizing_candidates']}`")
        lines.extend(["", "| step | gain | edge candidates | dst state |", "| ---: | ---: | --- | --- |"])
        for edge in argmax["edges"]:
            lines.append(
                f"| `{edge['step']}` | `{edge['gain']}` | "
                f"`{edge['edge_realizing_candidates']}` | `{edge['dst_short']}` |"
            )
    lines.extend(["", "## Strengthened Subset", "", "### Counts", "", "| metric | value |", "| --- | ---: |"])
    for key, value in payload["strengthened_counts"].items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend(["", "### Bellman", "", "| metric | value |", "| --- | ---: |"])
    for key, value in payload["strengthened_bellman"].items():
        lines.append(f"| `{key}` | `{value}` |")
    strengthened_argmax = payload.get("strengthened_argmax_path")
    if strengthened_argmax:
        lines.extend(["", "### Strengthened Argmax Path", ""])
        lines.append(f"- Edge count: `{strengthened_argmax['edge_count']}`")
        lines.append(f"- Total gain: `{strengthened_argmax['total_gain']}`")
        lines.append(f"- Margin bound: `{strengthened_argmax['margin_bound']}`")
        lines.append(f"- Is observed path: `{strengthened_argmax['is_observed_path']}`")
        lines.append(f"- Realizing candidates: `{strengthened_argmax['realizing_candidates']}`")
    if payload["existing_graph_rejects"]:
        lines.extend(
            [
                "",
                "## Existing Split Graph Rejects",
                "",
                "| step | state | face | count |",
                "| ---: | ---: | --- | ---: |",
            ]
        )
        for item in payload["existing_graph_rejects"]:
            lines.append(
                f"| `{item['step']}` | `{item['state']}` | `Face.{item['face']}` | `{item['count']}` |"
            )
    lines.extend(["", "## Margin Values", "", "| value | count |", "| --- | ---: |"])
    for item in payload["margin_values"]:
        lines.append(f"| `{item['key']}` | `{item['count']}` |")
    if payload["mismatch_samples"]:
        lines.extend(["", "## Mismatch Samples", ""])
        for sample in payload["mismatch_samples"]:
            lines.append("```json")
            lines.append(json.dumps(sample, indent=2))
            lines.append("```")
    lines.append("")
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--state-key-mode", choices=STATE_KEY_CHOICES, default="with-step-tri-source")
    parser.add_argument("--bad-face", default="ym")
    parser.add_argument("--target-margin-cancellation-pairing", default=TOP_PAIRING)
    parser.add_argument("--compare-base", type=Path, default=closed.DEFAULT_BASE)
    parser.add_argument("--max-nodes", type=int, default=None)
    parser.add_argument("--max-examples", type=int, default=5)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    parser.add_argument("--graph-json", type=Path, default=None)
    args = parser.parse_args()

    payload = build_payload(args)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.markdown)
    print(f"wrote {args.json.resolve().relative_to(ROOT)}")
    print(f"wrote {args.markdown.resolve().relative_to(ROOT)}")
    if args.graph_json is not None:
        args.graph_json.parent.mkdir(parents=True, exist_ok=True)
        graph_payload = {
            "schema_version": 1,
            "mode": "top-pairing-closed-bellman-closure-graphs",
            "decision": payload["decision"],
            "state_key_mode": payload["state_key_mode"],
            "bad_face": payload["bad_face"],
            "target_margin_cancellation_pairing": payload["target_margin_cancellation_pairing"],
            "graphs": payload["graphs"],
        }
        args.graph_json.write_text(json.dumps(graph_payload, indent=2, sort_keys=True) + "\n")
        print(f"wrote {args.graph_json.resolve().relative_to(ROOT)}")
    print(f"decision: {payload['decision']}")


if __name__ == "__main__":
    main()
