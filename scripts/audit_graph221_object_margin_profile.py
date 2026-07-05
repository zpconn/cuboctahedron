#!/usr/bin/env python3
"""Audit graph221 object-margin classes in the existing top-pairing profile.

This is untrusted diagnostic infrastructure.  It emits no Lean evidence.

The current graph221 Lean socket needs a semantic object-margin producer for
the `xm,ym,zm,tmpp` lane.  The existing 10M top-pairing Bellman profile already
contains the observed path classes for that lane; this script extracts them and
checks that their exact profile-scaled margins fit the deterministic evaluator
bounds used by `Graph221Layer4Split10MRootMarginBound`.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_PROFILE = (
    ROOT
    / "scripts/generated/"
    / "nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json"
)
DEFAULT_JSON = ROOT / "scripts/generated/graph221_object_margin_profile.json"
DEFAULT_MD = ROOT / "scripts/generated/graph221_object_margin_profile.md"

GRAPH221_PREFIX = [
    "face=xm|pair=x",
    "face=ym|pair=y",
    "face=zm|pair=z",
    "face=tmpp|pair=dm11",
]

EXPECTED_GAIN_BY_FACE_SEQUENCE = {
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "yp",
        "tmpm",
        "tmmm",
        "zp",
        "xp",
    ): -596,
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "tmmm",
        "tmpm",
        "yp",
        "zp",
        "xp",
    ): -376,
    (
        "xm",
        "ym",
        "zm",
        "tmpp",
        "tppp",
        "tpmp",
        "tppm",
        "tmmp",
        "tpmm",
        "tmmm",
        "tmpm",
        "zp",
        "yp",
        "xp",
    ): -376,
}


def face_of_label(label: str) -> str:
    for part in label.split("|"):
        if part.startswith("face="):
            return part.removeprefix("face=")
    raise ValueError(f"label has no face component: {label}")


def load_profile(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text())
    if "graph" not in payload:
        raise ValueError(f"profile has no graph export: {path}")
    return payload


def audit(profile: dict[str, Any]) -> dict[str, Any]:
    graph = profile["graph"]
    labels = {int(row["index"]): row["key"] for row in graph["labels"]}
    classes = []
    for cls in graph["path_classes"]:
        label_keys = [labels[int(idx)] for idx in cls["label_indices"]]
        if label_keys[: len(GRAPH221_PREFIX)] != GRAPH221_PREFIX:
            continue
        faces = tuple(face_of_label(label) for label in label_keys)
        expected_gain = EXPECTED_GAIN_BY_FACE_SEQUENCE.get(faces)
        expected_bound = None if expected_gain is None else 176 + expected_gain
        margin_scaled = int(cls["margin_scaled"])
        classes.append(
            {
                "class_index": int(cls["class_index"]),
                "count": int(cls["count"]),
                "rank_sample": [int(rank) for rank in cls.get("rank_sample", [])],
                "faces": list(faces),
                "margin_scaled": margin_scaled,
                "expected_gain": expected_gain,
                "expected_bound": expected_bound,
                "margin_le_expected_bound": (
                    expected_bound is not None and margin_scaled <= expected_bound
                ),
                "margin_eq_expected_bound": (
                    expected_bound is not None and margin_scaled == expected_bound
                ),
            }
        )
    classes.sort(key=lambda row: row["class_index"])
    total_count = sum(row["count"] for row in classes)
    return {
        "schema_version": 1,
        "mode": "graph221-object-margin-profile-audit",
        "proof_relevance": "diagnostic only; no Lean evidence",
        "profile_range": [int(profile["start"]), int(profile["end"])],
        "profile_state_key_mode": profile["target"]["state_key_mode"],
        "graph_path_class_count": int(graph["path_class_count"]),
        "graph221_prefix": GRAPH221_PREFIX,
        "graph221_class_count": len(classes),
        "graph221_total_observed_count": total_count,
        "all_classes_recognized": all(
            row["expected_gain"] is not None for row in classes
        ),
        "all_margins_le_expected_bounds": all(
            row["margin_le_expected_bound"] for row in classes
        ),
        "all_margins_equal_expected_bounds": all(
            row["margin_eq_expected_bound"] for row in classes
        ),
        "classes": classes,
        "next_producer_target": (
            "Graph221ZmTmppSplit10MRootMarginObjectBound; prove the same "
            "margin inequalities semantically over closed graph221 objects, "
            "not by importing this diagnostic path-class table as evidence."
        ),
    }


def write_md(path: Path, payload: dict[str, Any]) -> None:
    lines = [
        "# Graph221 Object-Margin Profile Audit",
        "",
        "Untrusted diagnostic audit.  This file is not Lean proof evidence.",
        "",
        f"- Profile range: `{payload['profile_range']}`",
        f"- State key mode: `{payload['profile_state_key_mode']}`",
        f"- Total graph path classes: `{payload['graph_path_class_count']}`",
        f"- Graph221 classes: `{payload['graph221_class_count']}`",
        f"- Graph221 observed count: `{payload['graph221_total_observed_count']}`",
        f"- All classes recognized: `{payload['all_classes_recognized']}`",
        f"- All margins <= expected bounds: `{payload['all_margins_le_expected_bounds']}`",
        f"- All margins equal expected bounds: `{payload['all_margins_equal_expected_bounds']}`",
        "",
        "## Classes",
        "",
        "| class | count | margin | expected gain | expected bound | faces |",
        "| ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for row in payload["classes"]:
        lines.append(
            f"| `{row['class_index']}` | `{row['count']}` | "
            f"`{row['margin_scaled']}` | `{row['expected_gain']}` | "
            f"`{row['expected_bound']}` | `{' '.join(row['faces'])}` |"
        )
    lines.extend(
        [
            "",
            "## Next Target",
            "",
            payload["next_producer_target"],
            "",
        ]
    )
    path.write_text("\n".join(lines))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    profile = load_profile(args.profile)
    payload = audit(profile)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_md(args.markdown, payload)
    print(json.dumps(
        {
            "graph221_class_count": payload["graph221_class_count"],
            "graph221_total_observed_count": payload["graph221_total_observed_count"],
            "all_margins_le_expected_bounds": payload[
                "all_margins_le_expected_bounds"
            ],
            "all_margins_equal_expected_bounds": payload[
                "all_margins_equal_expected_bounds"
            ],
        },
        indent=2,
        sort_keys=True,
    ))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
