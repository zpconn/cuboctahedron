#!/usr/bin/env python3
"""Audit whether top-pairing Bellman graph keys support semantic emission.

This is diagnostic-only infrastructure.  It checks that the split graph's
finite state keys are internally deterministic under face-labelled transitions
and compares the coarse pair-remainder key against a smaller graph that still
contains signed face counts and exact linear matrices.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
import json
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_target_pairing_closure import (  # noqa: E402
    face_from_label,
    parse_face_counts,
    parse_lin,
    parse_parity,
    parse_part,
    parse_step,
    parse_tri_sources,
    replay_tri_sources,
)
from exact_profile import FACE_ORDER, FACE_TO_PAIR_SIGN, PAIR_IDS  # noqa: E402
from nonidentity_margin_bellman_profile import parity_key  # noqa: E402
from shadow_normal_form_profile import SQUARE_TOGGLES, act_tri, xor_parity  # noqa: E402


def parse_rem_counts(state_key: str) -> tuple[int, ...] | None:
    raw = parse_part(state_key, "rem")
    if raw is None:
        return None
    values = tuple(int(piece) for piece in raw.split(",") if piece != "")
    if len(values) != len(PAIR_IDS):
        raise ValueError(f"bad rem count length in state: {state_key}")
    return values


def rem_key(values: tuple[int, ...]) -> str:
    return ",".join(str(value) for value in values)


def stack_key(values: tuple[str, ...]) -> str:
    return "<empty>" if not values else " ".join(values)


def parse_stack_letters(state_key: str) -> tuple[str, ...]:
    raw = parse_part(state_key, "stack")
    if raw is None:
        raise ValueError(f"state has no stack component: {state_key}")
    return () if raw == "<empty>" else tuple(raw.split())


def parse_tri_src_raw(state_key: str) -> str:
    raw = parse_part(state_key, "triSrc")
    if raw is None:
        raise ValueError(f"state has no triSrc component: {state_key}")
    return raw


def pair_rem_from_face_counts(face_counts: tuple[int, ...]) -> tuple[int, ...]:
    out = {pair_id: 0 for pair_id in PAIR_IDS}
    for face, count in zip(FACE_ORDER, face_counts, strict=True):
        pair_id, _positive = FACE_TO_PAIR_SIGN[face]
        out[pair_id] += count
    return tuple(out[pair_id] for pair_id in PAIR_IDS)


def advance_pair_key(
    *,
    rem: tuple[int, ...],
    step: int,
    parity: tuple[bool, bool, bool],
    stack: tuple[str, ...],
    tri_src_raw: str,
    face: str,
) -> dict[str, Any]:
    pair_id, _positive = FACE_TO_PAIR_SIGN[face]
    pair_idx = PAIR_IDS.index(pair_id)
    if rem[pair_idx] <= 0:
        raise ValueError(f"cannot consume exhausted pair {pair_id}")
    rem2 = list(rem)
    rem2[pair_idx] -= 1
    step2 = step + 1
    parity2 = parity
    stack2 = list(stack)
    tri_src2 = tri_src_raw
    if pair_id in SQUARE_TOGGLES:
        parity2 = xor_parity(parity2, SQUARE_TOGGLES[pair_id])
    else:
        tri = act_tri(parity2, pair_id)
        item = f"{step}:{pair_id}->{tri}@{parity_key(parity2)}"
        tri_src2 = item if tri_src2 == "" else tri_src2 + "|" + item
        if stack2 and stack2[-1] == tri:
            stack2.pop()
        else:
            stack2.append(tri)
    return {
        "rem": tuple(rem2),
        "step": step2,
        "parity": parity2,
        "stack": tuple(stack2),
        "tri_src_raw": tri_src2,
    }


def load_graph(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())["graph"]


def audit_transition_keys(graph: dict[str, Any]) -> dict[str, Any]:
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}

    parse_errors: list[dict[str, Any]] = []
    stack_mismatches: list[dict[str, Any]] = []
    transition_mismatches: list[dict[str, Any]] = []
    deterministic: dict[tuple[int, int], tuple[int, int]] = {}
    deterministic_conflicts: list[dict[str, Any]] = []
    multi_label_edges = 0

    for state_idx, state_key in states.items():
        try:
            tri_sources = parse_tri_sources(state_key)
            replayed_stack, _cancellations, _shadow_len = replay_tri_sources(tri_sources)
            replayed_letters = tuple(tri for tri, _idx in replayed_stack)
            stored_letters = parse_stack_letters(state_key)
            if replayed_letters != stored_letters:
                stack_mismatches.append(
                    {
                        "state": state_idx,
                        "state_key": state_key,
                        "stored_stack": list(stored_letters),
                        "replayed_stack": list(replayed_letters),
                    }
                )
        except Exception as exc:  # noqa: BLE001
            parse_errors.append(
                {"state": state_idx, "state_key": state_key, "error": str(exc)}
            )

    for edge in graph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        gain = int(edge["gain_scaled"])
        label_indices = [int(idx) for idx in edge.get("label_indices", [])]
        if len(label_indices) > 1:
            multi_label_edges += 1
        for label_idx in label_indices:
            previous = deterministic.get((src, label_idx))
            current = (dst, gain)
            if previous is not None and previous != current:
                deterministic_conflicts.append(
                    {
                        "src": src,
                        "label": label_idx,
                        "previous_dst": previous[0],
                        "previous_gain": previous[1],
                        "dst": dst,
                        "gain": gain,
                    }
                )
            else:
                deterministic[(src, label_idx)] = current

            src_key = states[src]
            dst_key = states[dst]
            try:
                rem = parse_rem_counts(src_key)
                if rem is None:
                    continue
                step = parse_step(src_key)
                parity = parse_parity(src_key)
                stack = parse_stack_letters(src_key)
                tri_src_raw = parse_tri_src_raw(src_key)
                face = face_from_label(labels[label_idx])
                expected = advance_pair_key(
                    rem=rem,
                    step=step,
                    parity=parity,
                    stack=stack,
                    tri_src_raw=tri_src_raw,
                    face=face,
                )
                got_rem = parse_rem_counts(dst_key)
                got_step = parse_step(dst_key)
                got_parity = parse_parity(dst_key)
                got_stack = parse_stack_letters(dst_key)
                got_tri_src = parse_tri_src_raw(dst_key)
                if (
                    got_rem != expected["rem"]
                    or got_step != expected["step"]
                    or got_parity != expected["parity"]
                    or got_stack != expected["stack"]
                    or got_tri_src != expected["tri_src_raw"]
                ):
                    transition_mismatches.append(
                        {
                            "src": src,
                            "dst": dst,
                            "label": labels[label_idx],
                            "src_key": src_key,
                            "dst_key": dst_key,
                            "expected": {
                                "rem": rem_key(expected["rem"]),
                                "step": expected["step"],
                                "par": parity_key(expected["parity"]),
                                "stack": stack_key(expected["stack"]),
                                "triSrc": expected["tri_src_raw"],
                            },
                            "got": {
                                "rem": rem_key(got_rem) if got_rem is not None else None,
                                "step": got_step,
                                "par": parity_key(got_parity),
                                "stack": stack_key(got_stack),
                                "triSrc": got_tri_src,
                            },
                        }
                    )
            except Exception as exc:  # noqa: BLE001
                transition_mismatches.append(
                    {
                        "src": src,
                        "dst": dst,
                        "label": labels.get(label_idx, f"<{label_idx}>"),
                        "src_key": states.get(src),
                        "dst_key": states.get(dst),
                        "error": str(exc),
                    }
                )

    return {
        "state_count": len(states),
        "edge_count": len(graph["edges"]),
        "multi_label_edges": multi_label_edges,
        "parse_error_count": len(parse_errors),
        "stack_mismatch_count": len(stack_mismatches),
        "transition_mismatch_count": len(transition_mismatches),
        "deterministic_conflict_count": len(deterministic_conflicts),
        "parse_errors": parse_errors[:10],
        "stack_mismatches": stack_mismatches[:10],
        "transition_mismatches": transition_mismatches[:10],
        "deterministic_conflicts": deterministic_conflicts[:10],
    }


def projection_without_lin(state_key: str, *, pair_rem: bool) -> str | None:
    lin = parse_lin(state_key)
    if lin is None:
        return None
    step = parse_step(state_key)
    parity = parse_parity(state_key)
    stack = parse_part(state_key, "stack")
    tri_src = parse_tri_src_raw(state_key)
    if pair_rem:
        faces = parse_face_counts(state_key)
        if faces is None:
            return None
        rem = pair_rem_from_face_counts(faces)
        count_part = "rem=" + rem_key(rem)
    else:
        faces_raw = parse_part(state_key, "faces")
        if faces_raw is None:
            return None
        count_part = "faces=" + faces_raw
    return "|".join(
        [
            f"step={step}",
            count_part,
            f"par={parity_key(parity)}",
            f"stack={stack}",
            "triSrc=" + tri_src,
        ]
    )


def audit_linear_projection(graph: dict[str, Any]) -> dict[str, Any]:
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}
    rows: dict[str, defaultdict[str, set[int]]] = {
        "fine_face_counts": defaultdict(set),
        "pair_remainders": defaultdict(set),
    }
    skipped = 0
    for idx, key in states.items():
        lin = parse_part(key, "lin")
        if lin is None:
            skipped += 1
            continue
        for mode, pair_rem in [
            ("fine_face_counts", False),
            ("pair_remainders", True),
        ]:
            projected = projection_without_lin(key, pair_rem=pair_rem)
            if projected is not None:
                rows[mode][projected].add(str(lin))

    out: dict[str, Any] = {"state_count": len(states), "states_without_lin": skipped}
    for mode, bucket in rows.items():
        collisions = [
            {"projected_key": key, "linear_count": len(values), "linear_examples": sorted(values)[:5]}
            for key, values in bucket.items()
            if len(values) > 1
        ]
        collisions.sort(key=lambda row: (-int(row["linear_count"]), row["projected_key"]))
        out[mode] = {
            "projection_count": len(bucket),
            "collision_count": len(collisions),
            "max_linear_values_per_projection": max(
                (len(values) for values in bucket.values()),
                default=0,
            ),
            "top_collisions": collisions[:10],
        }
    return out


def decision(transition: dict[str, Any], linear: dict[str, Any] | None) -> str:
    if (
        transition["parse_error_count"] == 0
        and transition["stack_mismatch_count"] == 0
        and transition["transition_mismatch_count"] == 0
        and transition["deterministic_conflict_count"] == 0
    ):
        if linear is not None and linear["pair_remainders"]["collision_count"] > 0:
            return "transition-compatible-but-linear-not-determined-by-coarse-key"
        return "semantic-state-key-transition-compatible"
    return "semantic-state-key-transition-incompatible"


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Top-Pairing Semantic State-Key Compatibility Audit")
    lines.append("")
    lines.append(f"Decision: `{payload['decision']}`")
    lines.append("")
    lines.append(f"Graph: `{payload['graph_path']}`")
    if payload.get("linear_graph_path"):
        lines.append(f"Linear comparison graph: `{payload['linear_graph_path']}`")
    lines.append("")
    lines.append("## Transition Key Audit")
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    for key in [
        "state_count",
        "edge_count",
        "multi_label_edges",
        "parse_error_count",
        "stack_mismatch_count",
        "transition_mismatch_count",
        "deterministic_conflict_count",
    ]:
        lines.append(f"| `{key}` | `{payload['transition'][key]}` |")
    if payload.get("linear_projection") is not None:
        lines.append("")
        lines.append("## Linear Projection Audit")
        lines.append("")
        lines.append("| Projection | Keys | Collisions | Max Linear Values |")
        lines.append("| --- | ---: | ---: | ---: |")
        for mode in ["fine_face_counts", "pair_remainders"]:
            row = payload["linear_projection"][mode]
            lines.append(
                f"| `{mode}` | `{row['projection_count']}` | "
                f"`{row['collision_count']}` | "
                f"`{row['max_linear_values_per_projection']}` |"
            )
    lines.append("")
    lines.append("## Interpretation")
    lines.append("")
    if payload["decision"] == "semantic-state-key-transition-compatible":
        lines.append(
            "The graph key is internally deterministic for the audited transition "
            "table: replaying `triSrc` reconstructs `stack`, every observed edge "
            "matches the local pair-remainder/parity/stack/triSrc update, and "
            "state plus label has a unique destination/gain."
        )
    elif payload["decision"] == "transition-compatible-but-linear-not-determined-by-coarse-key":
        lines.append(
            "The split graph key is internally deterministic for its observed "
            "transition table, but the smaller linear comparison graph shows "
            "that pair remainders plus parity/stack/triSrc do not determine the "
            "exact linear matrix.  A production closed-language evaluator may "
            "use this key for graph stepping, but any local-axis or raw-margin "
            "soundness theorem must add a semantic linear/gauge field or prove "
            "that the needed quantity factors through the coarse key."
        )
    else:
        lines.append(
            "The audited graph key is not yet suitable for generated semantic "
            "tail emission.  Inspect the example mismatches in the JSON output "
            "before scaling any generated closed-language theorem."
        )
    lines.append("")
    lines.append("This audit is diagnostic only; it does not trust the graph as proof.")
    output_path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--graph",
        type=Path,
        default=Path(
            "scripts/generated/"
            "nonid_margin_bellman_top_pairing_000000000_010000000_"
            "with_step_tri_source_graph.json"
        ),
    )
    parser.add_argument(
        "--linear-graph",
        type=Path,
        default=Path(
            "scripts/generated/"
            "nonid_margin_bellman_top_pairing_000000000_001000000_"
            "with_step_face_linear_tri_source_graph.json"
        ),
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=Path("scripts/generated/top_pairing_semantic_state_key_compatibility.json"),
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=Path("scripts/generated/top_pairing_semantic_state_key_compatibility.md"),
    )
    args = parser.parse_args()

    graph = load_graph(args.graph)
    transition = audit_transition_keys(graph)
    linear_projection = None
    if args.linear_graph.exists():
        linear_projection = audit_linear_projection(load_graph(args.linear_graph))
    payload = {
        "graph_path": str(args.graph),
        "linear_graph_path": str(args.linear_graph) if args.linear_graph.exists() else None,
        "transition": transition,
        "linear_projection": linear_projection,
        "decision": decision(transition, linear_projection),
    }
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.markdown)
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
