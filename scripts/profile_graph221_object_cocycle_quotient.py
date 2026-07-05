#!/usr/bin/env python3
"""Profile cocycle quotients for the graph221 object-margin language.

This is untrusted diagnostic infrastructure.  It emits no Lean evidence.

The graph221 production socket now asks for three branch-local margin bounds:

* `graph221Tail029 -> scaledMargin <= -200`
* `graph221Tail030 -> scaledMargin <= -200`
* `graph221Tail031 -> scaledMargin <= -420`

Those are the real proof targets.  This script only checks whether the exact
edge gains of the corresponding graph221 suffix paths factor through a smaller
semantic quotient up to a telescoping gauge:

  rawGain = smallGain(q src, label, q dst) + gauge(dst) - gauge(src)

If the quotient profile is small, the next Lean step should emit/check a
semantic cocycle/segment proof.  If the quotient only works at full state, the
branch-margin proof probably needs a different semantic state or a direct
three-branch theorem.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from audit_graph221_object_margin_profile import (  # noqa: E402
    EXPECTED_GAIN_BY_FACE_SEQUENCE,
    GRAPH221_PREFIX,
    face_of_label,
)
from profile_graph183_cocycle_quotients import (  # noqa: E402
    quotient_report,
    render_markdown as render_quotient_markdown,
)


DEFAULT_PROFILE = (
    ROOT
    / "scripts/generated/"
    / "nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json"
)
DEFAULT_JSON = ROOT / "scripts/generated/graph221_object_cocycle_quotient.json"
DEFAULT_MD = ROOT / "scripts/generated/graph221_object_cocycle_quotient.md"


def graph221_classes(profile: dict[str, Any]) -> list[dict[str, Any]]:
    graph = profile["graph"]
    labels = {int(row["index"]): row["key"] for row in graph["labels"]}
    classes: list[dict[str, Any]] = []
    for cls in graph["path_classes"]:
        label_keys = [labels[int(idx)] for idx in cls["label_indices"]]
        if label_keys[: len(GRAPH221_PREFIX)] != GRAPH221_PREFIX:
            continue
        faces = tuple(face_of_label(label) for label in label_keys)
        expected_gain = EXPECTED_GAIN_BY_FACE_SEQUENCE.get(faces)
        expected_bound = None if expected_gain is None else 176 + expected_gain
        classes.append(
            {
                "class_index": int(cls["class_index"]),
                "edge_indices": [int(idx) for idx in cls["edge_indices"]],
                "label_indices": [int(idx) for idx in cls["label_indices"]],
                "faces": list(faces),
                "final": int(cls["final"]),
                "margin_scaled": int(cls["margin_scaled"]),
                "expected_gain": expected_gain,
                "expected_bound": expected_bound,
            }
        )
    classes.sort(key=lambda row: row["class_index"])
    return classes


def graph221_subgraph(profile: dict[str, Any]) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    """Return a graph containing only observed graph221 edge-label equations."""

    graph = profile["graph"]
    classes = graph221_classes(profile)
    state_rows = {int(row["index"]): row for row in graph["states"]}
    label_rows = {int(row["index"]): row for row in graph["labels"]}
    edge_rows = {idx: row for idx, row in enumerate(graph["edges"])}

    seen_edge_labels: set[tuple[int, int]] = set()
    filtered_edges: list[dict[str, Any]] = []
    used_states: set[int] = set()
    used_labels: set[int] = set()
    for cls in classes:
        for edge_index, label_index in zip(cls["edge_indices"], cls["label_indices"]):
            key = (edge_index, label_index)
            if key in seen_edge_labels:
                continue
            seen_edge_labels.add(key)
            edge = edge_rows[edge_index]
            src = int(edge["src"])
            dst = int(edge["dst"])
            used_states.add(src)
            used_states.add(dst)
            used_labels.add(label_index)
            filtered_edges.append(
                {
                    "src": src,
                    "dst": dst,
                    "gain_scaled": int(edge["gain_scaled"]),
                    "label_indices": [label_index],
                    "source_edge_index": edge_index,
                }
            )

    subgraph = {
        "const_scaled": graph["const_scaled"],
        "scale": graph["scale"],
        "root_indices": graph["root_indices"],
        "final_indices": sorted({cls["final"] for cls in classes}),
        "state_count": len(used_states),
        "states": [state_rows[idx] for idx in sorted(used_states)],
        "labels": [label_rows[idx] for idx in sorted(used_labels)],
        "edges": filtered_edges,
        "path_class_count": len(classes),
        "path_classes": classes,
    }
    return subgraph, classes


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Graph221 Object Cocycle Quotient Profile",
        "",
        "Untrusted diagnostic output.  This file is not Lean proof evidence.",
        "",
        f"- input: `{payload['input']}`",
        f"- decision: `{payload['decision']}`",
        f"- graph221 classes: `{payload['graph221_class_count']}`",
        f"- subgraph states: `{payload['subgraph_state_count']}`",
        f"- subgraph edge-label equations: `{payload['subgraph_edge_equations']}`",
        "",
        "## Graph221 Classes",
        "",
        "| class | margin | expected bound | faces |",
        "| ---: | ---: | ---: | --- |",
    ]
    for row in payload["graph221_classes"]:
        lines.append(
            f"| `{row['class_index']}` | `{row['margin_scaled']}` | "
            f"`{row['expected_bound']}` | `{' '.join(row['faces'])}` |"
        )
    lines.extend(["", "## Quotient Report", ""])
    quotient_md = render_quotient_markdown(
        {
            "input": payload["input"],
            "decision": payload["decision"],
            "quotients": payload["quotients"],
            "best_consistent": payload["best_consistent"],
        }
    )
    lines.extend(quotient_md.splitlines()[6:])
    lines.extend(
        [
            "",
            "## Interpretation",
            "",
            "A consistent quotient is only a candidate semantic state.  The next",
            "Lean proof must still prove the closed graph221 object language",
            "runs through that state machine and satisfies the branch margin",
            "bounds without selected-prefix, accepted-trace, sampled-rank, exact",
            "affine-RHS, or stored-path membership.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", "--md", type=Path, default=DEFAULT_MD)
    parser.add_argument(
        "--modes",
        nargs="*",
        default=[
            "full",
            "step-tri-src-no-pos",
            "step-tri-targets",
            "step-par-tri-targets",
            "no-tri-src",
            "no-rem",
            "step-par-stack",
            "step-rem-par",
            "step-stack",
            "step-par",
        ],
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    subgraph, classes = graph221_subgraph(profile)
    quotients = [quotient_report(subgraph, mode) for mode in args.modes]
    consistent = [row for row in quotients if row["consistent"]]
    best = min(
        consistent,
        key=lambda row: (
            row["quotient_edges"],
            row["quotient_states"],
            row["mode"],
        ),
        default=None,
    )
    if best is not None:
        best = quotient_report(subgraph, best["mode"], include_solution=True)
        quotients = [best if row["mode"] == best["mode"] else row for row in quotients]

    payload = {
        "mode": "graph221-object-cocycle-quotient-profile",
        "input": args.profile.as_posix(),
        "arithmetic": "exact rational diagnostic; not proof evidence",
        "graph221_class_count": len(classes),
        "graph221_classes": classes,
        "subgraph_state_count": len(subgraph["states"]),
        "subgraph_edge_equations": sum(
            len(edge.get("label_indices", [])) for edge in subgraph["edges"]
        ),
        "quotients": quotients,
        "best_consistent": best,
        "decision": (
            "graph221_cocycle_quotient_candidate_found"
            if best is not None
            else "no_graph221_cocycle_quotient_found"
        ),
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")

    print(
        json.dumps(
            {
                "decision": payload["decision"],
                "graph221_class_count": payload["graph221_class_count"],
                "subgraph_state_count": payload["subgraph_state_count"],
                "subgraph_edge_equations": payload["subgraph_edge_equations"],
                "best_mode": None if best is None else best["mode"],
                "best_states": None if best is None else best["quotient_states"],
                "best_edges": None if best is None else best["quotient_edges"],
            },
            indent=2,
            sort_keys=True,
        )
    )
    return 0 if best is not None else 1


if __name__ == "__main__":
    raise SystemExit(main())
