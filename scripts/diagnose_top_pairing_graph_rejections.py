#!/usr/bin/env python3
"""Diagnose Lean-aligned top-pairing graph-rejected closed candidates.

This is exact diagnostic infrastructure, not proof.  It compares the current
graph-accepted/rejected closed-candidate traces against the exact top-family
classifier.  The goal is to determine whether graph rejections are legitimate
top-family obligations or artifacts of an overly broad closed-language
predicate.
"""

from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import sys
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
SCRIPT_DIR = ROOT / "scripts"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_missing_transition_completions import classify_completion  # noqa: E402
from nonidentity_margin_bellman_profile import TOP_PAIRING  # noqa: E402


DEFAULT_ALL_EXAMPLES = (
    ROOT
    / "scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json"
)
DEFAULT_REJECTIONS = (
    ROOT
    / "scripts/generated/top_pairing_closed_graph_acceptance_rejections_lean_aligned.json"
)
DEFAULT_GRAPH = (
    ROOT
    / "scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json"
)
DEFAULT_JSON = (
    ROOT / "scripts/generated/top_pairing_graph_rejection_diagnosis.json"
)
DEFAULT_MARKDOWN = (
    ROOT / "scripts/generated/top_pairing_graph_rejection_diagnosis.md"
)


def classify_rows(rows: list[dict[str, Any]], kind: str) -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    for index, row in enumerate(rows):
        labels = list(row["labels"])
        reason, details = classify_completion(
            labels,
            target_bad_face="yp",
            target_axis_d4="1,-3,-1",
            target_margin_cancellation_pairing=TOP_PAIRING,
            state_key_mode="with_step_tri_source",
        )
        item = {
            "index": index,
            "kind": kind,
            "labels": labels,
            "classification": reason,
            "details": details,
        }
        if "first_graph_reject" in row:
            item["first_graph_reject"] = row["first_graph_reject"]
        else:
            item["final_state"] = row.get("final_state")
            item["gain"] = row.get("gain")
        out.append(item)
    return out


def graph_context(graph_payload: dict[str, Any], rejected: list[dict[str, Any]]) -> list[dict[str, Any]]:
    graph = graph_payload["graph"]
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}
    outgoing: dict[int, list[dict[str, Any]]] = {}
    for edge in graph["edges"]:
        src = int(edge["src"])
        outgoing.setdefault(src, []).append(
            {
                "dst": int(edge["dst"]),
                "dst_key": states[int(edge["dst"])],
                "labels": [labels[int(i)] for i in edge.get("label_indices", [])],
            }
        )
    out: list[dict[str, Any]] = []
    for row in rejected:
        reject = row["first_graph_reject"]
        state = int(reject["state"])
        out.append(
            {
                "index": row["index"],
                "classification": row["classification"],
                "step": int(reject["step"]),
                "state": state,
                "state_key": states[state],
                "face": str(reject["face"]),
                "label": labels[int(reject["label"])],
                "prefix": reject["prefix"],
                "outgoing": outgoing.get(state, []),
            }
        )
    return out


def histogram(rows: list[dict[str, Any]], key: str) -> dict[str, int]:
    return dict(Counter(str(row[key]) for row in rows).most_common())


def payload(args: argparse.Namespace) -> dict[str, Any]:
    accepted_payload = json.loads(args.all_examples_json.read_text())
    rejection_payload = json.loads(args.rejections_json.read_text())
    graph_payload = json.loads(args.graph_json.read_text())

    accepted = classify_rows(accepted_payload["first_accepted"], "accepted")
    rejected = classify_rows(rejection_payload["first_rejections"], "rejected")
    rejected_context = graph_context(graph_payload, rejected)

    accepted_hist = histogram(accepted, "classification")
    rejected_hist = histogram(rejected, "classification")
    reject_steps = dict(
        Counter(str(row["first_graph_reject"]["step"]) for row in rejected).most_common()
    )
    reject_states = dict(
        Counter(str(row["first_graph_reject"]["state"]) for row in rejected).most_common()
    )
    reject_faces = dict(
        Counter(str(row["first_graph_reject"]["face"]) for row in rejected).most_common()
    )

    all_accepted_matched = accepted_hist == {"matched_top_family": len(accepted)}
    no_rejected_matched = "matched_top_family" not in rejected_hist
    face_omni_gaps = rejected_hist.get("not_omni_contribution_sequence", 0)
    bad_face_gaps = rejected_hist.get("canonical_bad_face_mismatch", 0)
    decision = (
        "strengthen_language_not_graph"
        if all_accepted_matched and no_rejected_matched
        else "graph_or_classifier_needs_further_audit"
    )
    recommendation = (
        "The graph-accepted traces are exact top-family matches, while every "
        "graph-rejected closed candidate is excluded by an extra semantic "
        "condition: actual omnihedral face uniqueness for nine traces and "
        "canonical bad-face compatibility for one trace.  Strengthen the "
        "Bellman language predicate instead of repairing the graph."
        if decision == "strengthen_language_not_graph"
        else "Some graph-rejected candidates still classify as exact top-family "
        "matches.  Repair/regenerate the graph or inspect the exact classifier."
    )

    return {
        "mode": "top-pairing-graph-rejection-diagnosis",
        "all_examples_input": str(args.all_examples_json.relative_to(ROOT)),
        "rejections_input": str(args.rejections_json.relative_to(ROOT)),
        "graph_input": str(args.graph_json.relative_to(ROOT)),
        "decision": decision,
        "recommendation": recommendation,
        "accepted_count": len(accepted),
        "rejected_count": len(rejected),
        "accepted_classification_histogram": accepted_hist,
        "rejected_classification_histogram": rejected_hist,
        "rejected_step_histogram": reject_steps,
        "rejected_state_histogram": reject_states,
        "rejected_face_histogram": reject_faces,
        "face_omnihedral_gaps": face_omni_gaps,
        "canonical_bad_face_gaps": bad_face_gaps,
        "accepted_samples": accepted[:5],
        "rejected": rejected,
        "rejected_graph_context": rejected_context,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines: list[str] = [
        "# Top-Pairing Graph Rejection Diagnosis",
        "",
        "This is exact diagnostic evidence, not proof.",
        "",
        f"- decision: `{data['decision']}`",
        f"- accepted count: `{data['accepted_count']}`",
        f"- rejected count: `{data['rejected_count']}`",
        "",
        data["recommendation"],
        "",
        "## Classification Histograms",
        "",
        "### Accepted",
        "",
        "| classification | count |",
        "| --- | ---: |",
    ]
    for reason, count in data["accepted_classification_histogram"].items():
        lines.append(f"| `{reason}` | `{count}` |")
    lines.extend(["", "### Rejected", "", "| classification | count |", "| --- | ---: |"])
    for reason, count in data["rejected_classification_histogram"].items():
        lines.append(f"| `{reason}` | `{count}` |")
    lines.extend(["", "## Rejected Transition Context", ""])
    for row in data["rejected_graph_context"]:
        lines.extend(
            [
                f"### Rejection {row['index']}",
                "",
                f"- classification: `{row['classification']}`",
                f"- step/state/face: `{row['step']}` / `{row['state']}` / `{row['face']}`",
                f"- requested label: `{row['label']}`",
                f"- prefix: `{' '.join(row['prefix'])}`",
                f"- state key: `{row['state_key']}`",
                "- outgoing labels:",
            ]
        )
        for outgoing in row["outgoing"]:
            lines.append(
                f"  - `{', '.join(outgoing['labels'])}` -> state `{outgoing['dst']}`"
            )
        lines.append("")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--all-examples-json", type=Path, default=DEFAULT_ALL_EXAMPLES)
    parser.add_argument("--rejections-json", type=Path, default=DEFAULT_REJECTIONS)
    parser.add_argument("--graph-json", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MARKDOWN)
    args = parser.parse_args()

    data = payload(args)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")
    write_markdown(data, args.markdown)
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    print(f"decision: {data['decision']}")


if __name__ == "__main__":
    main()
