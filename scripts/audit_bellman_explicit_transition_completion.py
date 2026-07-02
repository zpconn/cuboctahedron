#!/usr/bin/env python3
"""Audit one explicit Bellman transition candidate.

This is untrusted diagnostic infrastructure.  It answers a narrow question for
the semantic Bellman route:

  given a graph state and a face not represented by the graph table, do
  target-pairing/schedule-compatible completions actually land in the exact top
  family, or is the transition an over-approximation artifact?

Lean must still check any final production theorem.  This script is only a
bounded profiler to guide which semantic invariant should be formalized next.
"""

from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_missing_transition_completions import (  # noqa: E402
    classify_completion,
    enumerate_completions,
    prefixes_by_state,
    target_pairing_from_key,
)
from nonidentity_margin_bellman_profile import TOP_PAIRING  # noqa: E402


def audit_explicit_transition(
    *,
    graph_path: Path,
    state: int,
    face: str,
    target: str,
    schedule_mode: str,
    state_key_mode: str,
    max_completions: int,
    sample_limit: int,
) -> dict[str, Any]:
    graph_payload = json.loads(graph_path.read_text())
    graph = graph_payload["graph"]
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}
    if state not in states:
        raise SystemExit(f"state {state} not found in graph")

    target_pairing = target_pairing_from_key(target)
    prefix_options = sorted(prefixes_by_state(graph).get(state, set()))
    state_key = states[state]

    reasons: Counter[str] = Counter()
    samples: list[dict[str, Any]] = []
    match_samples: list[dict[str, Any]] = []
    total_completions = 0
    total_matches = 0
    truncated_any = False

    for prefix in prefix_options:
        completions, truncated = enumerate_completions(
            graph=graph,
            target_pairing=target_pairing,
            prefix_faces=list(prefix),
            state_key=state_key,
            first_face=face,
            schedule_mode=schedule_mode,
            max_completions=max_completions,
        )
        truncated_any = truncated_any or truncated
        for contribution_faces in completions:
            reason, details = classify_completion(
                contribution_faces,
                target_bad_face="yp",
                target_axis_d4="1,-3,-1",
                target_margin_cancellation_pairing=target,
                state_key_mode=state_key_mode,
            )
            reasons[reason] += 1
            total_completions += 1
            if reason == "matched_top_family":
                total_matches += 1
                if len(match_samples) < sample_limit:
                    match_samples.append(details)
            elif len(samples) < sample_limit:
                samples.append(
                    {
                        "reason": reason,
                        "contribution_faces": " ".join(contribution_faces),
                        "details": details,
                    }
                )
        if truncated_any:
            break

    reason_set = set(reasons)
    if total_matches:
        decision = "explicit_transition_has_top_family_matches"
        recommendation = (
            "This transition reaches the exact top family.  Either regenerate "
            "the graph/state key with this semantic transition and re-solve the "
            "Bellman potential, or add a stronger semantic state that separates "
            "the matching branch without sampled membership."
        )
    elif truncated_any:
        decision = "explicit_transition_audit_incomplete"
        recommendation = (
            "The completion cap was reached.  Increase the cap or split the "
            "audit before drawing a production conclusion."
        )
    elif total_completions == 0:
        decision = "explicit_transition_has_no_target_pairing_completions"
        recommendation = (
            "The target-pairing/schedule language has no completions after this "
            "transition.  The next Lean socket should prove the corresponding "
            "semantic contradiction, not add a graph edge."
        )
    elif reason_set == {"canonical_bad_face_mismatch"}:
        decision = "explicit_transition_closed_by_canonical_bad_face"
        recommendation = (
            "Every completion is excluded by canonical bad-face mismatch.  This "
            "transition should be removed by the strengthened sequence-bad-face "
            "or canonical-bad-face socket."
        )
    else:
        decision = "explicit_transition_overapproximation_nonmatch"
        recommendation = (
            "No completion matched the exact top family, but the reasons were "
            "not solely canonical bad-face mismatch.  Use the reason histogram "
            "to choose the next semantic invariant."
        )

    return {
        "mode": "bellman-explicit-transition-completion-audit",
        "graph_input": str(graph_path),
        "target_pairing": target_pairing,
        "schedule_mode": schedule_mode,
        "state_key_mode": state_key_mode,
        "state": state,
        "face": face,
        "state_key": state_key,
        "prefix_count": len(prefix_options),
        "prefix_samples": [" ".join(prefix) for prefix in prefix_options[:sample_limit]],
        "max_completions": max_completions,
        "total_completions": total_completions,
        "total_matched_top_family": total_matches,
        "truncated": truncated_any,
        "reason_histogram": dict(reasons.most_common()),
        "sample_nonmatches": samples,
        "sample_matches": match_samples,
        "decision": decision,
        "recommendation": recommendation,
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines = [
        "# Bellman Explicit Transition Completion Audit",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Target",
        "",
        f"- Graph input: `{payload['graph_input']}`",
        f"- State: `{payload['state']}`",
        f"- Face: `{payload['face']}`",
        f"- Schedule mode: `{payload['schedule_mode']}`",
        f"- State-key mode: `{payload['state_key_mode']}`",
        f"- Target pairing: `{payload['target_pairing']}`",
        "",
        "## Summary",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| `prefix_count` | `{payload['prefix_count']}` |",
        f"| `max_completions` | `{payload['max_completions']}` |",
        f"| `total_completions` | `{payload['total_completions']}` |",
        f"| `total_matched_top_family` | `{payload['total_matched_top_family']}` |",
        f"| `truncated` | `{payload['truncated']}` |",
        "",
        "## Reasons",
        "",
        "| Reason | Count |",
        "| --- | ---: |",
    ]
    for reason, count in payload["reason_histogram"].items():
        lines.append(f"| `{reason}` | `{count}` |")
    lines.extend([
        "",
        "## Prefix Samples",
        "",
    ])
    for prefix in payload["prefix_samples"]:
        lines.append(f"- `{prefix}`")
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--graph", type=Path, required=True)
    parser.add_argument("--state", type=int, required=True)
    parser.add_argument("--face", required=True)
    parser.add_argument("--target", default=TOP_PAIRING)
    parser.add_argument(
        "--schedule-mode",
        choices=["none", "observed", "observed-square-gap", "observed+square-gap"],
        default="observed+square-gap",
    )
    parser.add_argument("--state-key-mode", default="with-step-face-linear-tri-source")
    parser.add_argument("--max-completions", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=5)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = audit_explicit_transition(
        graph_path=args.graph,
        state=args.state,
        face=args.face,
        target=args.target,
        schedule_mode=args.schedule_mode,
        state_key_mode=args.state_key_mode,
        max_completions=args.max_completions,
        sample_limit=args.sample_limit,
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
