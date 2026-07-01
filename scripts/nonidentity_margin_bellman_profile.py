#!/usr/bin/env python3
"""Profile Bellman/potential compression for nonidentity margin families.

This is untrusted diagnostic infrastructure.  It emits no Lean evidence.

The goal is to test whether a finite semantic-state potential can certify
margin bounds of the form

  const + coeff · totalAff(seq).b <= 0

without keying by the exact affine RHS.  The script reuses the exact
nonidentity residual filter and then builds an observed acyclic transition
graph for matched cases.  A successful observed graph is not proof coverage;
it is an early compression signal for the Lean-checkable Bellman certificate
route described in SYMMETRY_PLAN.md.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from dataclasses import dataclass, field
from fractions import Fraction
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
from exact_profile import (  # noqa: E402
    FACE_TO_PAIR_SIGN,
    FACE_ORDER,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    face_reflection,
    mat_key,
    mat_mul,
    multinomial_count,
    one_dimensional_fixed_axis,
    total_aff,
)
from forced_axis_sign_profile import (  # noqa: E402
    neg_vec,
    normalized_axis_key,
    orientation_stage,
    reduced_shadow_key,
    write_json,
    write_text,
)
from nonidentity_residual_axis_profile import d4_projective_axis_key  # noqa: E402
from profile_symmetry_compression import terminal_axis_candidate_algebra_failure  # noqa: E402
from shadow_normal_form_profile import (  # noqa: E402
    SQUARE_TOGGLES,
    act_tri,
    shadow_scan,
    xor_parity,
)


TOP_PAIRING = (
    "ym|const=2|b=-103/176,73/176,5/88|"
    "pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1"
)


def parity_key(parity: tuple[bool, bool, bool]) -> str:
    return "".join("1" if bit else "0" for bit in parity)


def counts_key(counts: dict[str, int]) -> str:
    return ",".join(str(counts[pair_id]) for pair_id in PAIR_IDS)


def face_counts_key(counts: dict[str, int]) -> str:
    return ",".join(str(counts[face]) for face in FACE_ORDER)


def stack_key(stack: list[str]) -> str:
    return " ".join(stack) if stack else "<empty>"


def fraction_bit_length(value: Fraction) -> int:
    return max(abs(value.numerator).bit_length(), value.denominator.bit_length())


def lcm(values: list[int]) -> int:
    out = 1
    for value in values:
        out = out * value // math.gcd(out, value)
    return out


def contribution_state_path(
    seq: list[str],
    gains: list[Fraction],
    *,
    state_key_mode: str,
) -> tuple[list[str], list[tuple[str, Fraction, str]]]:
    """Return state ids and gain-labelled edges for the contribution order.

    The contribution order matches `totalAff`: seq[1], ..., seq[13], seq[0].
    The state includes the remaining contribution pair counts, current square
    parity, and reduced triangular stack.  Optional modes add the exact prefix
    linear matrix or the current step.
    """

    faces = [seq[i] for i in list(range(1, 14)) + [0]]
    pairs = [FACE_TO_PAIR_SIGN[face][0] for face in faces]
    remaining = {pair_id: 0 for pair_id in PAIR_IDS}
    remaining_faces = {face: 0 for face in FACE_ORDER}
    for pair_id in pairs:
        remaining[pair_id] += 1
    for face in faces:
        remaining_faces[face] += 1

    parity = (False, False, False)
    stack: list[str] = []
    tri_sources: list[str] = []
    prefix_faces: list[str] = []
    prefix = IDENTITY
    states: list[str] = []

    def state_id(step: int) -> str:
        rem_key = (
            f"faces={face_counts_key(remaining_faces)}"
            if "face" in state_key_mode
            else f"rem={counts_key(remaining)}"
        )
        parts = [
            rem_key,
            f"par={parity_key(parity)}",
            f"stack={stack_key(stack)}",
        ]
        if "step" in state_key_mode or "linear" in state_key_mode:
            parts.insert(0, f"step={step}")
        if "linear" in state_key_mode:
            parts.append(f"lin={mat_key(prefix)}")
        if "tri-source" in state_key_mode:
            parts.append("triSrc=" + "|".join(tri_sources))
        if "prefix" in state_key_mode:
            parts.append("prefix=" + " ".join(prefix_faces))
        return "|".join(parts)

    states.append(state_id(0))
    edges: list[tuple[str, Fraction, str]] = []
    for step, (face, pair_id, gain) in enumerate(zip(faces, pairs, gains), start=1):
        src = states[-1]
        remaining[pair_id] -= 1
        remaining_faces[face] -= 1
        prefix_faces.append(face)
        if pair_id in SQUARE_TOGGLES:
            parity = xor_parity(parity, SQUARE_TOGGLES[pair_id])
        else:
            tri = act_tri(parity, pair_id)
            tri_sources.append(f"{step - 1}:{pair_id}->{tri}@{parity_key(parity)}")
            if stack and stack[-1] == tri:
                stack.pop()
            else:
                stack.append(tri)
        refl_m, _refl_d = face_reflection(face)
        prefix = mat_mul(prefix, refl_m)
        dst = state_id(step)
        states.append(dst)
        edges.append((src, gain, dst))
    return states, edges


def solve_bellman(
    edges: set[tuple[str, Fraction, str]],
    final_states: set[str],
) -> tuple[dict[str, Fraction], bool]:
    outgoing: dict[str, list[tuple[Fraction, str]]] = defaultdict(list)
    states: set[str] = set(final_states)
    for src, gain, dst in edges:
        states.add(src)
        states.add(dst)
        outgoing[src].append((gain, dst))

    # Compute exact longest-path potentials.  States without outgoing edges are
    # terminal for this observed graph and have future gain 0.  A cycle means
    # the chosen state abstraction is unsuitable for this finite-horizon
    # diagnostic unless it includes a decreasing coordinate such as the step.
    memo: dict[str, Fraction] = {}
    visiting: set[str] = set()
    acyclic = True

    def best(state: str) -> Fraction:
        nonlocal acyclic
        if state in memo:
            return memo[state]
        if state in visiting:
            acyclic = False
            return Fraction(0)
        visiting.add(state)
        if outgoing.get(state):
            value = max(gain + best(dst) for gain, dst in outgoing[state])
        else:
            value = Fraction(0)
        visiting.remove(state)
        memo[state] = value
        return value

    for state in states:
        best(state)
    return memo, acyclic


def short_state(state: str, *, limit: int = 180) -> str:
    if len(state) <= limit:
        return state
    return state[: limit - 3] + "..."


def edge_key(edge: tuple[str, Fraction, str]) -> tuple[str, str, str]:
    src, gain, dst = edge
    return (src, qkey(gain), dst)


def argmax_bellman_path(
    *,
    root_states: set[str],
    edges: set[tuple[str, Fraction, str]],
    potential: dict[str, Fraction],
    max_const: Fraction,
    observed_sequences: dict[tuple[tuple[str, str, str], ...], list[int]],
    edge_ranks: dict[tuple[str, str, str], list[int]],
) -> dict[str, Any] | None:
    if not root_states:
        return None
    outgoing: dict[str, list[tuple[Fraction, str]]] = defaultdict(list)
    for src, gain, dst in edges:
        outgoing[src].append((gain, dst))
    root = max(root_states, key=lambda state: (potential.get(state, Fraction(0)), state))
    state = root
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
    realizing_ranks = observed_sequences.get(keyed, [])
    return {
        "root_state": root,
        "final_state": state,
        "edge_count": len(path_edges),
        "total_gain": qkey(total_gain),
        "margin_bound": qkey(max_const + total_gain),
        "is_observed_path": bool(realizing_ranks),
        "realizing_ranks": realizing_ranks[:20],
        "edges": [
            {
                "step": idx,
                "gain": qkey(gain),
                "src": src,
                "dst": dst,
                "src_short": short_state(src),
                "dst_short": short_state(dst),
                "edge_realizing_ranks": edge_ranks.get(edge_key((src, gain, dst)), [])[:10],
            }
            for idx, (src, gain, dst) in enumerate(path_edges, start=1)
        ],
    }


@dataclass
class BellmanStats:
    start: int
    end: int
    target_bad_face: str
    target_axis_d4: str
    target_margin_cancellation_pairing: str | None
    state_key_mode: str
    sample_limit: int
    scanned: int = 0
    nonidentity: int = 0
    forced_balance_survivors: int = 0
    axis_start_failures: int = 0
    matched: int = 0
    offset_sum_mismatches: int = 0
    paths: list[dict[str, Any]] = field(default_factory=list)
    margin_values: Counter[str] = field(default_factory=Counter)
    margin_families: Counter[str] = field(default_factory=Counter)
    samples: list[dict[str, Any]] = field(default_factory=list)

    def merge(self, other: "BellmanStats") -> None:
        self.scanned += other.scanned
        self.nonidentity += other.nonidentity
        self.forced_balance_survivors += other.forced_balance_survivors
        self.axis_start_failures += other.axis_start_failures
        self.matched += other.matched
        self.offset_sum_mismatches += other.offset_sum_mismatches
        self.paths.extend(other.paths)
        self.margin_values.update(other.margin_values)
        self.margin_families.update(other.margin_families)
        room = max(0, self.sample_limit - len(self.samples))
        self.samples.extend(other.samples[:room])

    def add_path(self, path: dict[str, Any]) -> None:
        self.paths.append(path)
        self.margin_values[path["margin_value"]] += 1
        self.margin_families[path["margin_family"]] += 1
        if len(self.samples) < self.sample_limit:
            self.samples.append(path["sample"])


def classify_leaf(stats: BellmanStats, *, rank: int, word: tuple[str, ...], pref: list) -> None:
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

    aff = total_aff(seq)
    rows, _rhs = direct_system_for_aff(aff)
    actual_bad_face = failure_details.get("bad_face", "?")
    form = margin_linear_form(aff, actual_bad_face, rows)
    if form is None:
        return
    margin_key = margin_linear_form_key(aff, actual_bad_face, rows)
    const, coeff_b = form
    _aff_matrix, aff_offset = aff
    contributions = offset_contributions(seq, coeff_b)
    contrib_sum = sum((item["value"] for item in contributions), Fraction(0))
    expected_sum = sum(coeff_b[i] * aff_offset[i] for i in range(3))
    if contrib_sum != expected_sum:
        stats.offset_sum_mismatches += 1
    margin_value = const + contrib_sum

    cancel_keys = shadow_cancellation_keys(word)
    margin_cancellation_pairing_key = f"{margin_key}|{cancel_keys['cancellation_pairing']}"
    if (
        stats.target_margin_cancellation_pairing is not None
        and margin_cancellation_pairing_key != stats.target_margin_cancellation_pairing
    ):
        return

    gains = [item["value"] for item in contributions]
    states, edges = contribution_state_path(seq, gains, state_key_mode=stats.state_key_mode)
    reduced_key = reduced_shadow_key(reduced)
    margin_family = (
        f"axisD4={axis_d4}|axis={oriented_axis_key}|reduced={reduced_key}|"
        f"{margin_cancellation_pairing_key}"
    )
    stats.matched += 1
    stats.add_path(
        {
            "rank": rank,
            "const": const,
            "margin_key": margin_key,
            "margin_family": margin_family,
            "margin_value": qkey(margin_value),
            "states": states,
            "edges": [(src, gain, dst) for src, gain, dst in edges],
            "sample": {
                "rank": rank,
                "word": ",".join(word),
                "seq": " ".join(seq),
                "axis": oriented_axis_key,
                "axis_d4": axis_d4,
                "reduced": reduced_key,
                "bad_face": actual_bad_face,
                "margin_value": qkey(margin_value),
                "margin_cancellation_pairing": margin_cancellation_pairing_key,
            },
        }
    )


def profile_range(
    start: int,
    end: int,
    *,
    target_bad_face: str,
    target_axis_d4: str,
    target_margin_cancellation_pairing: str | None,
    state_key_mode: str,
    sample_limit: int,
) -> BellmanStats:
    stats = BellmanStats(
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_margin_cancellation_pairing=target_margin_cancellation_pairing,
        state_key_mode=state_key_mode,
        sample_limit=sample_limit,
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
        out = []
        current = start
        while current < end:
            nxt = min(end, current + chunk_size)
            out.append((current, nxt))
            current = nxt
        return out
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
    target_bad_face: str,
    target_axis_d4: str,
    target_margin_cancellation_pairing: str | None,
    state_key_mode: str,
    sample_limit: int,
) -> BellmanStats:
    windows = split_windows(start, end, jobs, chunk_size)
    if jobs <= 1 or len(windows) <= 1:
        return profile_range(
            start,
            end,
            target_bad_face=target_bad_face,
            target_axis_d4=target_axis_d4,
            target_margin_cancellation_pairing=target_margin_cancellation_pairing,
            state_key_mode=state_key_mode,
            sample_limit=sample_limit,
        )
    aggregate = BellmanStats(
        start=start,
        end=end,
        target_bad_face=target_bad_face,
        target_axis_d4=target_axis_d4,
        target_margin_cancellation_pairing=target_margin_cancellation_pairing,
        state_key_mode=state_key_mode,
        sample_limit=sample_limit,
    )
    with ProcessPoolExecutor(max_workers=jobs) as executor:
        futures = [
            executor.submit(
                profile_range,
                lo,
                hi,
                target_bad_face=target_bad_face,
                target_axis_d4=target_axis_d4,
                target_margin_cancellation_pairing=target_margin_cancellation_pairing,
                state_key_mode=state_key_mode,
                sample_limit=sample_limit,
            )
            for lo, hi in windows
        ]
        for future in as_completed(futures):
            aggregate.merge(future.result())
    return aggregate


def bellman_payload(
    stats: BellmanStats,
    *,
    elapsed: float,
    jobs: int,
    include_graph: bool = False,
) -> dict[str, Any]:
    edges: set[tuple[str, Fraction, str]] = set()
    final_states: set[str] = set()
    root_states: set[str] = set()
    edge_ranks: dict[tuple[str, str, str], list[int]] = defaultdict(list)
    observed_sequences: dict[tuple[tuple[str, str, str], ...], list[int]] = defaultdict(list)
    denominators = [1]
    gain_bits = 0
    for path in stats.paths:
        if path["states"]:
            root_states.add(path["states"][0])
            final_states.add(path["states"][-1])
        denominators.append(path["const"].denominator)
        keyed_path = tuple(edge_key(edge) for edge in path["edges"])
        observed_sequences[keyed_path].append(path["rank"])
        for src, gain, dst in path["edges"]:
            edge = (src, gain, dst)
            edges.add(edge)
            ekey = edge_key(edge)
            if len(edge_ranks[ekey]) < 20:
                edge_ranks[ekey].append(path["rank"])
            denominators.append(gain.denominator)
            gain_bits = max(gain_bits, fraction_bit_length(gain))
    potential, bounded = solve_bellman(edges, final_states)
    root_bound = max((potential[root] for root in root_states), default=Fraction(0))
    const_values = sorted({path["const"] for path in stats.paths})
    max_const = max(const_values, default=Fraction(0))
    max_margin_bound = max_const + root_bound
    scale = lcm(denominators + [value.denominator for value in potential.values()])
    potential_bits = max((fraction_bit_length(value) for value in potential.values()), default=0)
    scaled_bits = max(
        [abs(int(value * scale)).bit_length() for value in potential.values()] + [scale.bit_length(), 0]
    )
    argmax_path = argmax_bellman_path(
        root_states=root_states,
        edges=edges,
        potential=potential,
        max_const=max_const,
        observed_sequences=observed_sequences,
        edge_ranks=edge_ranks,
    )
    payload = {
        "schema_version": 1,
        "mode": "nonidentity-margin-bellman-profile",
        "arithmetic": "exact Fraction/integer arithmetic; no floating point",
        "start": stats.start,
        "end": stats.end,
        "elapsed_seconds": elapsed,
        "jobs": jobs,
        "target": {
            "canonical_bad_face": stats.target_bad_face,
            "axis_d4": stats.target_axis_d4,
            "margin_cancellation_pairing": stats.target_margin_cancellation_pairing,
            "state_key_mode": stats.state_key_mode,
        },
        "counts": {
            "scanned": stats.scanned,
            "nonidentity": stats.nonidentity,
            "forced_balance_survivors": stats.forced_balance_survivors,
            "axis_start_failures": stats.axis_start_failures,
            "matched": stats.matched,
            "offset_sum_mismatches": stats.offset_sum_mismatches,
            "paths": len(stats.paths),
            "root_states": len(root_states),
            "states": len(potential),
            "edges": len(edges),
            "final_states": len(final_states),
            "margin_families": len(stats.margin_families),
            "margin_values": len(stats.margin_values),
        },
        "bellman": {
            "bounded_fixed_point": bounded,
            "root_bound": qkey(root_bound),
            "max_const": qkey(max_const),
            "max_margin_bound": qkey(max_margin_bound),
            "proves_observed_nonpositive": max_margin_bound <= 0,
            "scale": scale,
            "gain_fraction_bit_length": gain_bits,
            "potential_fraction_bit_length": potential_bits,
            "scaled_potential_bit_length": scaled_bits,
        },
        "top_margin_values": [
            {"key": key, "count": count}
            for key, count in stats.margin_values.most_common(30)
        ],
        "top_margin_families": [
            {"key": key, "count": count}
            for key, count in stats.margin_families.most_common(20)
        ],
        "argmax_path": argmax_path,
        "samples": stats.samples,
    }
    if include_graph:
        states_sorted = sorted(potential)
        state_index = {state: idx for idx, state in enumerate(states_sorted)}
        edge_tuples = sorted(edges, key=lambda edge: (
            state_index[edge[0]], state_index[edge[2]], edge[1]
        ))
        edge_index = {
            edge_key(edge): idx for idx, edge in enumerate(edge_tuples)
        }
        payload["graph"] = {
            "state_count": len(states_sorted),
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
                    "src": state_index[src],
                    "dst": state_index[dst],
                    "gain_scaled": int(gain * scale),
                }
                for src, gain, dst in edge_tuples
            ],
            "path_objects": [
                {
                    "rank": path["rank"],
                    "final": state_index[path["states"][-1]],
                    "margin_scaled": int(Fraction(path["margin_value"]) * scale),
                    "edge_indices": [
                        edge_index[edge_key(edge)] for edge in path["edges"]
                    ],
                }
                for path in sorted(stats.paths, key=lambda path: path["rank"])
            ],
        }
    return payload


def write_md(path: Path, payload: dict[str, Any]) -> None:
    lines = [
        "# Nonidentity Margin Bellman Profile",
        "",
        "Untrusted exact diagnostic profile.  It emits no Lean evidence.",
        "",
        f"- Range: `[{payload['start']:,}, {payload['end']:,})`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Target bad face: `{payload['target']['canonical_bad_face']}`",
        f"- Target D4 axis: `{payload['target']['axis_d4']}`",
        f"- Target margin+cancellation pairing: `{payload['target']['margin_cancellation_pairing']}`",
        f"- State key mode: `{payload['target']['state_key_mode']}`",
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
    argmax_path = payload.get("argmax_path")
    if argmax_path is not None:
        lines.extend(["", "## Bellman Argmax Path", ""])
        lines.append(f"- Edge count: `{argmax_path['edge_count']}`")
        lines.append(f"- Total gain: `{argmax_path['total_gain']}`")
        lines.append(f"- Margin bound: `{argmax_path['margin_bound']}`")
        lines.append(f"- Is observed path: `{argmax_path['is_observed_path']}`")
        lines.append(f"- Realizing ranks: `{argmax_path['realizing_ranks']}`")
        lines.extend(["", "| step | gain | edge realizing ranks | dst state |", "| ---: | ---: | --- | --- |"])
        for edge in argmax_path["edges"]:
            lines.append(
                f"| `{edge['step']}` | `{edge['gain']}` | "
                f"`{edge['edge_realizing_ranks']}` | `{edge['dst_short']}` |"
            )
    lines.extend(["", "## Top Margin Values", "", "| value | count |", "| --- | ---: |"])
    for row in payload["top_margin_values"]:
        lines.append(f"| `{row['key']}` | `{row['count']}` |")
    lines.extend(["", "## Samples", ""])
    for sample in payload["samples"]:
        lines.append(
            f"- rank `{sample['rank']}` value `{sample['margin_value']}` "
            f"axis `{sample['axis']}` reduced `{sample['reduced']}`"
        )
    write_text(path, "\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int, default=1_000_000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--chunk-size", type=int, default=None)
    parser.add_argument("--target-bad-face", default="yp")
    parser.add_argument("--target-axis-d4", default="1,-3,-1")
    parser.add_argument("--target-margin-cancellation-pairing", default=TOP_PAIRING)
    parser.add_argument(
        "--state-key-mode",
        choices=[
            "base",
            "with-step",
            "with-linear",
            "with-step-linear",
            "with-step-face",
            "with-step-face-linear",
            "with-step-tri-source",
            "with-step-face-tri-source",
            "with-prefix",
        ],
        default="with-step",
    )
    parser.add_argument("--sample-limit", type=int, default=20)
    parser.add_argument("--include-graph", action="store_true")
    parser.add_argument("--json", type=Path, default=None)
    parser.add_argument("--markdown", type=Path, default=None)
    args = parser.parse_args()

    t0 = time.perf_counter()
    stats = profile_maybe_parallel(
        args.start,
        args.end,
        jobs=args.jobs,
        chunk_size=args.chunk_size,
        target_bad_face=args.target_bad_face,
        target_axis_d4=args.target_axis_d4,
        target_margin_cancellation_pairing=args.target_margin_cancellation_pairing,
        state_key_mode=args.state_key_mode,
        sample_limit=args.sample_limit,
    )
    elapsed = time.perf_counter() - t0
    payload = bellman_payload(
        stats,
        elapsed=elapsed,
        jobs=args.jobs,
        include_graph=args.include_graph,
    )
    json_path = args.json or GENERATED_DIR / (
        f"nonid_margin_bellman_{args.start:09d}_{args.end:09d}_{args.state_key_mode}.json"
    )
    md_path = args.markdown or GENERATED_DIR / (
        f"nonid_margin_bellman_{args.start:09d}_{args.end:09d}_{args.state_key_mode}.md"
    )
    write_json(json_path, payload)
    write_md(md_path, payload)
    print(json.dumps(payload["counts"], indent=2, sort_keys=True))
    print(json.dumps(payload["bellman"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
