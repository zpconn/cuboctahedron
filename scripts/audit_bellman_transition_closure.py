#!/usr/bin/env python3
"""Audit naive transition closure for Bellman graph artifacts.

This is an untrusted diagnostic.  For graph states whose key contains
`faces=...`, it compares observed outgoing labels against the naive language
"any remaining signed face may be next".  Missing transitions mean the Bellman
graph cannot be promoted to a state-language proof using only signed-face
remaining counts; the eventual family predicate must include stronger
holonomy/cancellation constraints.
"""

from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
import sys

if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from exact_profile import FACE_ORDER  # noqa: E402


def parse_part(key: str, name: str) -> str | None:
    prefix = name + "="
    for part in key.split("|"):
        if part.startswith(prefix):
            return part[len(prefix) :]
    return None


def parse_face_counts(state_key: str) -> dict[str, int] | None:
    raw = parse_part(state_key, "faces")
    if raw is None:
        return None
    values = [int(piece) for piece in raw.split(",") if piece != ""]
    if len(values) != len(FACE_ORDER):
        raise ValueError(
            f"state face count length {len(values)} != FACE_ORDER length {len(FACE_ORDER)}"
        )
    return {face: values[idx] for idx, face in enumerate(FACE_ORDER)}


def face_from_label(label_key: str) -> str:
    raw = parse_part(label_key, "face")
    if raw is None:
        raise ValueError(f"label has no face component: {label_key}")
    return raw


def audit(input_path: Path) -> dict[str, Any]:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}

    outgoing: dict[int, set[int]] = defaultdict(set)
    malformed_edges = 0
    for edge in graph["edges"]:
        src = int(edge["src"])
        for label_idx in edge.get("label_indices", []):
            outgoing[src].add(int(label_idx))
        if not edge.get("label_indices"):
            malformed_edges += 1

    rows: list[dict[str, Any]] = []
    states_with_faces = 0
    states_with_missing = 0
    states_with_illegal_observed = 0
    total_missing = 0
    total_legal = 0
    total_observed = 0
    for state_idx, state_key in sorted(states.items()):
        counts = parse_face_counts(state_key)
        if counts is None:
            continue
        states_with_faces += 1
        legal_labels = {
            label_idx
            for label_idx, label_key in labels.items()
            if counts.get(face_from_label(label_key), 0) > 0
        }
        observed_labels = outgoing.get(state_idx, set())
        missing = sorted(legal_labels - observed_labels)
        illegal_observed = sorted(observed_labels - legal_labels)
        if missing:
            states_with_missing += 1
        if illegal_observed:
            states_with_illegal_observed += 1
        total_missing += len(missing)
        total_legal += len(legal_labels)
        total_observed += len(observed_labels)
        if missing or illegal_observed:
            rows.append(
                {
                    "state": state_idx,
                    "state_key": state_key,
                    "legal_count": len(legal_labels),
                    "observed_count": len(observed_labels),
                    "missing_count": len(missing),
                    "illegal_observed_count": len(illegal_observed),
                    "missing_labels": [labels[idx] for idx in missing[:20]],
                    "illegal_observed_labels": [labels[idx] for idx in illegal_observed[:20]],
                }
            )

    rows.sort(key=lambda row: (-row["missing_count"], int(row["state"])))
    if states_with_faces == 0:
        decision = "no-face-count-state-keys"
    elif total_missing:
        decision = "naive-face-count-language-not-closed"
    else:
        decision = "naive-face-count-language-closed"
    return {
        "input": str(input_path),
        "state_count": len(states),
        "edge_count": len(graph["edges"]),
        "label_count": len(labels),
        "states_with_face_counts": states_with_faces,
        "states_with_missing_transitions": states_with_missing,
        "states_with_illegal_observed_transitions": states_with_illegal_observed,
        "total_legal_transitions": total_legal,
        "total_observed_label_transitions": total_observed,
        "total_missing_transitions": total_missing,
        "malformed_edges_without_labels": malformed_edges,
        "top_missing_states": rows[:25],
        "decision": decision,
        "recommendation": (
            "This graph state key does not expose signed-face counts, so the "
            "naive closure audit is not applicable."
            if states_with_faces == 0
            else "Do not use signed-face remaining counts alone as the Bellman "
            "language predicate.  Add cancellation-pairing / tri-source "
            "constraints before attempting a Lean transition-closure theorem."
            if total_missing
            else "The observed graph is closed under the naive signed-face "
            "remaining-count language; this would be a candidate Lean language."
        ),
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Bellman Transition-Closure Audit")
    lines.append("")
    lines.append(f"Input: `{payload['input']}`")
    lines.append("")
    lines.append(f"Decision: `{payload['decision']}`")
    lines.append("")
    lines.append(payload["recommendation"])
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    for key in [
        "state_count",
        "edge_count",
        "label_count",
        "states_with_face_counts",
        "states_with_missing_transitions",
        "states_with_illegal_observed_transitions",
        "total_legal_transitions",
        "total_observed_label_transitions",
        "total_missing_transitions",
        "malformed_edges_without_labels",
    ]:
        lines.append(f"| `{key}` | `{payload[key]}` |")
    if payload["top_missing_states"]:
        lines.append("")
        lines.append("## Top Missing States")
        lines.append("")
        lines.append("| State | Legal | Observed | Missing | First missing labels |")
        lines.append("| ---: | ---: | ---: | ---: | --- |")
        for row in payload["top_missing_states"][:10]:
            lines.append(
                f"| `{row['state']}` | `{row['legal_count']}` | "
                f"`{row['observed_count']}` | `{row['missing_count']}` | "
                f"`{row['missing_labels'][:5]}` |"
            )
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = audit(args.input)
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
