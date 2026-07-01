#!/usr/bin/env python3
"""Summarize the candidate Bellman object-family route.

This script is deliberately diagnostic.  It combines the current Bellman graph,
the target-pairing/local-axis closure audit, and the missing-transition
completion audit into one small JSON/Markdown artifact.  Its purpose is to make
the next Lean task precise: prove a semantic object-family membership theorem
for the accepted transition language, not enumerate exact path classes.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def fmt_int(value: Any) -> str:
    return f"{int(value):,}"


def build_payload(
    *,
    graph_path: Path,
    closure_path: Path,
    missing_path: Path,
    smoke_wall: str | None,
    smoke_rss_kb: int | None,
) -> dict[str, Any]:
    graph_payload = read_json(graph_path)
    closure = read_json(closure_path)
    missing = read_json(missing_path)
    graph = graph_payload["graph"]

    total_missing = int(closure["total_missing_transitions"])
    total_illegal = int(closure["total_illegal_transitions"])
    axis_rejected = int(closure.get("total_local_axis_rejected_transitions", 0))
    observed = int(closure["total_observed_face_transitions"])
    legal_after_axis = int(closure["total_target_legal_transitions"])
    bad_face_closes = bool(missing.get("canonical_bad_face_filter_would_close"))
    missing_matches = int(missing.get("total_matched_top_family", 0))
    truncated = int(missing.get("truncated_gaps", 0))
    missing_completions = int(missing.get("total_completions", 0))

    adjusted_legal = legal_after_axis - total_missing if bad_face_closes else legal_after_axis
    adjusted_missing = 0 if bad_face_closes else total_missing
    adjusted_illegal = total_illegal
    closed_after_bad_face = (
        bad_face_closes
        and missing_matches == 0
        and truncated == 0
        and adjusted_missing == 0
        and adjusted_illegal == 0
        and adjusted_legal == observed
    )

    smoke = {
        "target": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingGraphLanguage2Smoke"
        ),
        "wall": smoke_wall,
        "max_rss_kb": smoke_rss_kb,
        "status": "passed" if smoke_wall and smoke_rss_kb else "not-recorded",
    }

    decision = (
        "candidate-next-lean-family-smoke"
        if closed_after_bad_face
        else "not-ready"
    )
    recommendation = (
        "Emit the next smoke as a semantic object-family membership theorem. "
        "The private Bellman graph, local forced-axis transition filter, and "
        "canonical bad-face/start-violation terminal data form a closed sampled "
        "language; the remaining Lean obligation is membership compression, not "
        "a new terminal contradiction theorem."
        if decision == "candidate-next-lean-family-smoke"
        else "Do not emit a family smoke yet.  Inspect missing/illegal transition "
        "counts and completion reasons first."
    )

    return {
        "mode": "bellman-object-family-route-profile",
        "graph_input": str(graph_path),
        "closure_input": str(closure_path),
        "missing_completion_input": str(missing_path),
        "target_pairing": closure.get("target_pairing"),
        "forced_axis": closure.get("forced_axis"),
        "state_key_mode": graph_payload.get("target", {}).get("state_key_mode"),
        "target_canonical_bad_face": graph_payload.get("target", {}).get("canonical_bad_face"),
        "target_axis_d4": graph_payload.get("target", {}).get("axis_d4"),
        "graph": {
            "state_count": int(graph["state_count"]),
            "edge_count": len(graph["edges"]),
            "label_count": len(graph.get("labels", [])),
            "path_class_count": int(graph.get("path_class_count", len(graph.get("path_classes", [])))),
            "path_object_count": len(graph.get("path_objects", [])),
            "final_state_count": len(graph.get("final_indices", [])),
            "root_state_count": len(graph.get("root_indices", [])),
            "scale": int(graph["scale"]),
            "const_scaled": int(graph["const_scaled"]),
        },
        "sample_family": {
            "matched_ranks": int(graph_payload.get("counts", {}).get("matched", 0)),
            "top_margin_family_count": int(graph_payload.get("top_margin_families", [{}])[0].get("count", 0)),
            "top_margin_family_key": graph_payload.get("top_margin_families", [{}])[0].get("key"),
        },
        "transition_language": {
            "states_with_face_counts": int(closure["states_with_face_counts"]),
            "observed_transitions": observed,
            "legal_after_target_pairing_schedule_axis": legal_after_axis,
            "local_axis_rejected_transitions": axis_rejected,
            "missing_before_bad_face": total_missing,
            "illegal_before_bad_face": total_illegal,
            "states_with_missing_before_bad_face": int(closure["states_with_missing_transitions"]),
            "states_with_illegal_before_bad_face": int(closure["states_with_illegal_transitions"]),
            "missing_completion_count": missing_completions,
            "missing_completion_matches_top_family": missing_matches,
            "missing_completion_truncated_gaps": truncated,
            "canonical_bad_face_filter_would_close": bad_face_closes,
            "legal_after_canonical_bad_face": adjusted_legal,
            "missing_after_canonical_bad_face": adjusted_missing,
            "illegal_after_canonical_bad_face": adjusted_illegal,
            "closed_after_canonical_bad_face": closed_after_bad_face,
        },
        "accepted_predicate_stack": [
            "target cancellation pairing",
            "observed schedule / square-gap language",
            "oriented local forced-axis next-face compatibility",
            "canonical bad-face compatibility",
            "object-level start-violation certificate",
            "private Bellman object-cover trace bound",
        ],
        "lean_surfaces": [
            "BellmanAxisRankObjectCover",
            "ObjectStartViolationMarginCert",
            "nonIdentityRankKilled_of_object_cover_start_violation_margin_certs",
            "graphSmoke_sampled_axis_object_cover_rank_killed_of_start_violation",
        ],
        "smoke": smoke,
        "decision": decision,
        "recommendation": recommendation,
        "remaining_lean_obligation": (
            "Replace the two sampled objects with a semantic object-family "
            "membership theorem for the closed transition language.  The theorem "
            "should construct accepted objects and start-violation certs without "
            "using exact path classes or rank-local certificate replay."
        ),
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    graph = payload["graph"]
    trans = payload["transition_language"]
    smoke = payload["smoke"]
    lines = [
        "# Bellman Object-Family Route Profile",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Inputs",
        "",
        f"- Graph: `{payload['graph_input']}`",
        f"- Closure: `{payload['closure_input']}`",
        f"- Missing-transition completions: `{payload['missing_completion_input']}`",
        "",
        "## Target",
        "",
        f"- Pairing: `{payload['target_pairing']}`",
        f"- Forced axis: `{payload['forced_axis']}`",
        f"- Canonical bad face: `{payload['target_canonical_bad_face']}`",
        f"- Axis D4 class: `{payload['target_axis_d4']}`",
        "",
        "## Graph Size",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| States | `{fmt_int(graph['state_count'])}` |",
        f"| Edges | `{fmt_int(graph['edge_count'])}` |",
        f"| Labels | `{fmt_int(graph['label_count'])}` |",
        f"| Path classes (diagnostic only) | `{fmt_int(graph['path_class_count'])}` |",
        f"| Path objects (diagnostic only) | `{fmt_int(graph['path_object_count'])}` |",
        f"| Final states | `{fmt_int(graph['final_state_count'])}` |",
        "",
        "## Transition Closure",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Observed transitions | `{fmt_int(trans['observed_transitions'])}` |",
        f"| Legal after pairing/schedule/local-axis | `{fmt_int(trans['legal_after_target_pairing_schedule_axis'])}` |",
        f"| Local-axis rejected transitions | `{fmt_int(trans['local_axis_rejected_transitions'])}` |",
        f"| Missing before bad-face filter | `{fmt_int(trans['missing_before_bad_face'])}` |",
        f"| Illegal before bad-face filter | `{fmt_int(trans['illegal_before_bad_face'])}` |",
        f"| Missing completions checked | `{fmt_int(trans['missing_completion_count'])}` |",
        f"| Missing completions matching top family | `{fmt_int(trans['missing_completion_matches_top_family'])}` |",
        f"| Truncated missing gaps | `{fmt_int(trans['missing_completion_truncated_gaps'])}` |",
        f"| Canonical bad-face filter would close | `{trans['canonical_bad_face_filter_would_close']}` |",
        f"| Legal after canonical bad-face | `{fmt_int(trans['legal_after_canonical_bad_face'])}` |",
        f"| Missing after canonical bad-face | `{fmt_int(trans['missing_after_canonical_bad_face'])}` |",
        f"| Illegal after canonical bad-face | `{fmt_int(trans['illegal_after_canonical_bad_face'])}` |",
        f"| Closed after canonical bad-face | `{trans['closed_after_canonical_bad_face']}` |",
        "",
        "## Accepted Predicate Stack",
        "",
    ]
    for item in payload["accepted_predicate_stack"]:
        lines.append(f"- {item}")
    lines.extend([
        "",
        "## Lean Surfaces",
        "",
    ])
    for item in payload["lean_surfaces"]:
        lines.append(f"- `{item}`")
    lines.extend([
        "",
        "## Smoke Evidence",
        "",
        "| Target | Wall | Max RSS | Status |",
        "| --- | ---: | ---: | --- |",
        (
            f"| `{smoke['target']}` | `{smoke['wall']}` | "
            f"`{fmt_int(smoke['max_rss_kb']) if smoke['max_rss_kb'] is not None else 'n/a'} kB` | "
            f"`{smoke['status']}` |"
        ),
        "",
        "## Remaining Lean Obligation",
        "",
        payload["remaining_lean_obligation"],
        "",
    ])
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--graph", type=Path, required=True)
    parser.add_argument("--closure", type=Path, required=True)
    parser.add_argument("--missing", type=Path, required=True)
    parser.add_argument("--smoke-wall")
    parser.add_argument("--smoke-rss-kb", type=int)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = build_payload(
        graph_path=args.graph,
        closure_path=args.closure,
        missing_path=args.missing,
        smoke_wall=args.smoke_wall,
        smoke_rss_kb=args.smoke_rss_kb,
    )
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_markdown(payload, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
