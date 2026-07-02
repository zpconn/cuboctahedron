#!/usr/bin/env python3
"""Emit terminal top-pairing trace-classifier shards.

These generated modules reject full semantic terminal traces whose Lean-aligned
triangular cancellation summary is not the top-pairing target.  They do not
contain sampled rank/path evidence: each theorem consumes a Prop-level
full-trace disjunction and a cancellation-summary equality.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Terminal"
)
DEFAULT_SUMMARY = (
    ROOT / "scripts/generated/top_pairing_trace_classifier_terminal_summary.json"
)
NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.Terminal"
)
BASE_IMPORT = "Cuboctahedron.Search.TopPairingBellmanObject"

LEGACY_TWO_TRACE_SMOKE_A = (
    "xm", "ym", "zm", "tmpp", "tppp", "tpmp", "tppm", "tmmp",
    "tpmm", "tmmm", "tmpm", "yp", "zp", "xp",
)
LEGACY_TWO_TRACE_SMOKE_B = (
    "xm", "ym", "zm", "tmpp", "tppp", "tpmp", "tppm", "tmmp",
    "tpmm", "tmmm", "tmpm", "zp", "yp", "xp",
)


def theorem_name(index: int) -> str:
    return f"terminal_shard_{index:03d}"


def ne_name(global_index: int) -> str:
    return f"trace_{global_index:03d}_cancellation_ne"


def trace_def_name(global_index: int) -> str:
    return f"terminalTrace_{global_index:03d}"


def render_trace_def(global_index: int, trace: tuple[str, ...]) -> str:
    return (
        f"private def {trace_def_name(global_index)} : List Face :=\n"
        f"  {prefix_smoke.lean_face_list(trace)}\n"
    )


def render_reject_ne(global_index: int) -> str:
    name = trace_def_name(global_index)
    return f"""
private theorem {ne_name(global_index)} :
    triangularCancellationSummaryOfFaceLabels {name} ≠
      topPairingTargetSummary := by
  decide
"""


def render_disjunction(subject: str, trace_names: list[str]) -> str:
    parts = [f"    {subject} = {name}" for name in trace_names]
    return " \\/\n".join(parts)


PARITY_ID = (False, False, False)


def parity_apply_pair(
    parity: tuple[bool, bool, bool], pair: str
) -> tuple[bool, bool, bool]:
    x, y, z = parity
    if pair == "x":
        return (not x, y, z)
    if pair == "y":
        return (x, not y, z)
    if pair == "z":
        return (x, y, not z)
    return parity


def tri_y_neg(tri: str) -> bool:
    return tri in {"d1m1", "dm11"}


def tri_z_neg(tri: str) -> bool:
    return tri in {"d11m", "dm11"}


def tri_of_signs(y_neg: bool, z_neg: bool) -> str:
    if not y_neg and not z_neg:
        return "d111"
    if not y_neg and z_neg:
        return "d11m"
    if y_neg and not z_neg:
        return "d1m1"
    return "dm11"


def tri_act(parity: tuple[bool, bool, bool], tri: str) -> str:
    x, y, z = parity
    return tri_of_signs(
        tri_y_neg(tri) ^ (x ^ y),
        tri_z_neg(tri) ^ (x ^ z),
    )


def stack_push(
    state: tuple[int, tuple[tuple[str, int], ...], tuple[tuple[str, int, int], ...]],
    tri: str,
) -> tuple[int, tuple[tuple[str, int], ...], tuple[tuple[str, int, int], ...]]:
    shadow_len, stack, cancellations_rev = state
    idx = shadow_len
    if stack:
        top, top_idx = stack[0]
        rest = stack[1:]
        if tri == top:
            return (
                idx + 1,
                rest,
                ((tri, top_idx, idx),) + cancellations_rev,
            )
        return idx + 1, ((tri, idx), (top, top_idx)) + rest, cancellations_rev
    return idx + 1, ((tri, idx),), cancellations_rev


def lean_cancellation_summary(
    trace: tuple[str, ...],
) -> tuple[list[tuple[int, int, str]], list[tuple[int, str]]]:
    state: tuple[int, tuple[tuple[str, int], ...], tuple[tuple[str, int, int], ...]] = (
        0,
        (),
        (),
    )
    parity = PARITY_ID
    for face in trace:
        pair = prefix_smoke.audit.PAIR_OF_FACE[face]
        tri = prefix_smoke.audit.TRI_OF_PAIR.get(pair)
        if tri is not None:
            state = stack_push(state, tri_act(parity, tri))
        else:
            parity = parity_apply_pair(parity, pair)
    _shadow_len, stack, cancellations_rev = state
    cancellations = [
        (left, right, tri) for (tri, left, right) in reversed(cancellations_rev)
    ]
    survivors = [(idx, tri) for (tri, idx) in reversed(stack)]
    return cancellations, survivors


def lean_cancellation_ok(trace: tuple[str, ...]) -> bool:
    cancellations, survivors = lean_cancellation_summary(trace)
    return cancellations == [(3, 4, "d11m")] and survivors == [
        (0, "dm11"),
        (1, "d111"),
        (2, "d1m1"),
        (5, "dm11"),
        (6, "d111"),
        (7, "d1m1"),
    ]


def render_reject_shard(
    shard_index: int,
    global_start: int,
    traces: list[tuple[str, ...]],
) -> str:
    trace_defs = [
        render_trace_def(global_start + local_index, trace)
        for local_index, trace in enumerate(traces)
    ]
    ne_theorems = [
        render_reject_ne(global_start + local_index)
        for local_index, _trace in enumerate(traces)
    ]
    trace_names = [
        trace_def_name(global_start + local_index)
        for local_index in range(len(traces))
    ]
    hpatterns = " | ".join(f"h{idx}" for idx in range(len(traces)))
    branches: list[str] = []
    for local_index, _trace in enumerate(traces):
        global_index = global_start + local_index
        branches.append(
            f"  · rw [h{local_index}] at hc\n"
            f"    exact {ne_name(global_index)} hc"
        )
    disj = render_disjunction("labels", trace_names)
    return f"""import {BASE_IMPORT}

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace {NAMESPACE}.Shard{shard_index:03d}

open Cuboctahedron

{"".join(trace_defs)}
{"".join(ne_theorems)}
theorem {theorem_name(shard_index)}
    {{labels : List Face}}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
{disj}) :
    False := by
  rcases hterm with {hpatterns}
{"\n".join(branches)}

theorem shard_builds : True := by
  exact True.intro

end {NAMESPACE}.Shard{shard_index:03d}
"""


def summary_payload(
    all_traces: list[tuple[str, ...]],
    reject_traces: list[tuple[str, ...]],
    shard_size: int,
) -> dict[str, object]:
    legacy_two_trace_smoke = [
        idx for idx, trace in enumerate(all_traces)
        if trace in {LEGACY_TWO_TRACE_SMOKE_A, LEGACY_TWO_TRACE_SMOKE_B}
    ]
    cancellation_ok = [
        idx for idx, trace in enumerate(all_traces) if lean_cancellation_ok(trace)
    ]
    return {
        "source": "exact semantic prefix enumerator at depth 14",
        "terminal_trace_count": len(all_traces),
        "legacy_two_trace_smoke_count": len(legacy_two_trace_smoke),
        "legacy_two_trace_smoke_indices": legacy_two_trace_smoke,
        "legacy_two_trace_smoke_note": (
            "These are the older two trace-smoke labels, not the corrected "
            "graph-accepted production set."
        ),
        "cancellation_ok_trace_count": len(cancellation_ok),
        "cancellation_ok_trace_indices": cancellation_ok,
        "cancellation_reject_trace_count": len(reject_traces),
        "shard_size": shard_size,
        "shard_count": (len(reject_traces) + shard_size - 1) // shard_size,
        "sampled_rank_or_path_data": False,
        "proof_shape": (
            "full-trace disjunction over cancellation-reject traces plus "
            "cancellation summary equality implies False"
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUTPUT_DIR)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--shard-size", type=int, default=64)
    parser.add_argument(
        "--max-shards",
        type=int,
        help="emit only the first N shards for bounded smoke generation",
    )
    args = parser.parse_args()
    if args.shard_size <= 0:
        raise SystemExit("--shard-size must be positive")

    traces = prefix_smoke.enumerate_semantic_prefixes(14)
    if len(traces) != 442:
        raise RuntimeError(f"expected 442 terminal traces, got {len(traces)}")
    reject_traces = [trace for trace in traces if not lean_cancellation_ok(trace)]

    shard_count = (len(reject_traces) + args.shard_size - 1) // args.shard_size
    emit_count = shard_count if args.max_shards is None else min(args.max_shards, shard_count)
    args.output_dir.mkdir(parents=True, exist_ok=True)
    for shard_index in range(emit_count):
        start = shard_index * args.shard_size
        stop = min(len(reject_traces), start + args.shard_size)
        (args.output_dir / f"Shard{shard_index:03d}.lean").write_text(
            render_reject_shard(shard_index, start, reject_traces[start:stop])
        )

    summary = summary_payload(traces, reject_traces, args.shard_size)
    summary["emitted_shards"] = emit_count
    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(f"wrote {emit_count} terminal shard(s) to {args.output_dir}")
    print(f"wrote {args.summary_json}")
    print(
        f"terminal traces={summary['terminal_trace_count']} "
        f"cancellation_ok={summary['cancellation_ok_trace_count']} "
        f"cancellation_reject={summary['cancellation_reject_trace_count']} "
        f"shards={summary['shard_count']}"
    )


if __name__ == "__main__":
    main()
