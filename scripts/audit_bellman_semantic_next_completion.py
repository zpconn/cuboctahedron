#!/usr/bin/env python3
"""Audit semantic next-face completion for one Bellman state.

This is diagnostic infrastructure only.  It checks the next pivot point for the
top-pairing Bellman route: whether a local graph state can choose its next
faces from deterministic closed-language data (remaining actual faces, target
cancellation pairing, step schedule, and square-gap schedule), rather than from
selected prefixes or sampled ranks.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_target_pairing_closure import (  # noqa: E402
    face_from_label,
    legal_next_faces_for_target,
    observed_allowed_faces_by_step,
    observed_allowed_square_faces_by_gap,
    parse_face_counts,
    parse_parity,
    parse_step,
    parse_tri_sources,
    replay_tri_sources,
    target_pairing_from_key,
)
from nonidentity_margin_bellman_profile import TOP_PAIRING  # noqa: E402


DEFAULT_GRAPH = Path(
    "scripts/generated/"
    "nonid_margin_bellman_top_pairing_000000000_001000000_"
    "with_step_face_linear_tri_source_graph.json"
)
DEFAULT_STATE_AUDIT = Path(
    "scripts/generated/bellman_state150_tppp_explicit_transition_audit.json"
)


def outgoing_faces(graph: dict[str, Any], state: int) -> list[str]:
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    out: set[str] = set()
    for edge in graph.get("edges", []):
        if int(edge["src"]) != state:
            continue
        for label_idx in edge.get("label_indices", []):
            out.add(face_from_label(labels[int(label_idx)]))
    return sorted(out)


def audit(
    *,
    graph_path: Path,
    state_audit_path: Path,
    target: str,
    schedule_mode: str,
) -> dict[str, Any]:
    graph_payload = json.loads(graph_path.read_text(encoding="utf-8"))
    graph = graph_payload["graph"]
    state_payload = json.loads(state_audit_path.read_text(encoding="utf-8"))
    state_key = str(state_payload["state_key"])
    state = int(state_payload["state"])
    rejected_face = str(state_payload.get("face", ""))

    counts = parse_face_counts(state_key)
    if counts is None:
        raise SystemExit(f"state key has no faces= component: {state_key}")
    step = parse_step(state_key)
    parity = parse_parity(state_key)
    stack, cancellations, shadow_len = replay_tri_sources(
        parse_tri_sources(state_key)
    )
    target_pairing = target_pairing_from_key(target)

    allowed_faces_by_step = (
        observed_allowed_faces_by_step(graph)
        if schedule_mode in ("observed", "observed+square-gap")
        else None
    )
    allowed_square_faces_by_gap = (
        observed_allowed_square_faces_by_gap(graph)
        if schedule_mode in ("observed-square-gap", "observed+square-gap")
        else None
    )

    legal = sorted(
        legal_next_faces_for_target(
            counts=counts,
            step=step,
            parity=parity,
            stack=stack,
            cancellations=cancellations,
            shadow_len=shadow_len,
            target_pairing=target_pairing,
            allowed_faces_by_step=allowed_faces_by_step,
            allowed_square_faces_by_gap=allowed_square_faces_by_gap,
        )
    )
    graph_out = outgoing_faces(graph, state)

    legal_set = set(legal)
    graph_set = set(graph_out)
    missing_in_graph = sorted(legal_set - graph_set)
    extra_in_graph = sorted(graph_set - legal_set)
    rejected_is_illegal = bool(rejected_face) and rejected_face not in legal_set
    decision = (
        "semantic-next-completion-matches-graph"
        if not missing_in_graph and not extra_in_graph
        else "semantic-next-completion-differs-from-graph"
    )

    return {
        "mode": "bellman-semantic-next-completion-audit",
        "decision": decision,
        "graph_input": str(graph_path),
        "state_audit_input": str(state_audit_path),
        "target_pairing": target_pairing,
        "schedule_mode": schedule_mode,
        "state": state,
        "state_key": state_key,
        "step": step,
        "parity": "".join("1" if bit else "0" for bit in parity),
        "stack": [f"{tri}@{idx}" for tri, idx in stack],
        "cancellations": [
            {"left": left, "right": right, "tri": tri}
            for left, right, tri in cancellations
        ],
        "shadow_len": shadow_len,
        "legal_next_faces": legal,
        "graph_outgoing_faces": graph_out,
        "missing_in_graph": missing_in_graph,
        "extra_in_graph": extra_in_graph,
        "rejected_face": rejected_face,
        "rejected_face_is_semantically_illegal": rejected_is_illegal,
        "recommendation": (
            "Promote the semantic completion state into the Lean suffix "
            "predicate: the graph-local next-face set is explained by "
            "target-pairing completion plus schedule/square-gap data."
            if decision == "semantic-next-completion-matches-graph"
            else "The completion predicate is still not aligned with the graph; "
            "inspect missing/extra faces before emitting a Lean branch table."
        ),
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Bellman Semantic Next-Completion Audit",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Target",
        "",
        f"- Graph input: `{payload['graph_input']}`",
        f"- State audit input: `{payload['state_audit_input']}`",
        f"- State: `{payload['state']}`",
        f"- Schedule mode: `{payload['schedule_mode']}`",
        f"- Target pairing: `{payload['target_pairing']}`",
        "",
        "## Semantic State",
        "",
        f"- Step: `{payload['step']}`",
        f"- Parity: `{payload['parity']}`",
        f"- Stack: `{payload['stack']}`",
        f"- Cancellations: `{payload['cancellations']}`",
        f"- Shadow length: `{payload['shadow_len']}`",
        "",
        "## Next Faces",
        "",
        "| Set | Faces |",
        "| --- | --- |",
        f"| semantic legal | `{payload['legal_next_faces']}` |",
        f"| graph outgoing | `{payload['graph_outgoing_faces']}` |",
        f"| missing in graph | `{payload['missing_in_graph']}` |",
        f"| extra in graph | `{payload['extra_in_graph']}` |",
        "",
        "## Rejected Candidate",
        "",
        f"- Candidate: `{payload['rejected_face']}`",
        "- Semantically illegal: "
        f"`{payload['rejected_face_is_semantically_illegal']}`",
        "",
    ]
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--state-audit", type=Path, default=DEFAULT_STATE_AUDIT)
    parser.add_argument("--target", default=TOP_PAIRING)
    parser.add_argument(
        "--schedule-mode",
        choices=["none", "observed", "observed-square-gap", "observed+square-gap"],
        default="observed+square-gap",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=Path(
            "scripts/generated/bellman_state150_semantic_next_completion.json"
        ),
    )
    parser.add_argument(
        "--markdown",
        "--md",
        type=Path,
        default=Path(
            "scripts/generated/bellman_state150_semantic_next_completion.md"
        ),
    )
    args = parser.parse_args()
    payload = audit(
        graph_path=args.graph,
        state_audit_path=args.state_audit,
        target=args.target,
        schedule_mode=args.schedule_mode,
    )
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.markdown)
    print(f"decision={payload['decision']}")
    print(f"legal_next_faces={payload['legal_next_faces']}")
    print(f"graph_outgoing_faces={payload['graph_outgoing_faces']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
