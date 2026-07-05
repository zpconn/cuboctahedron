#!/usr/bin/env python3
"""Audit graph147 object-margin classes in the top-pairing profile.

This is untrusted diagnostic infrastructure.  It emits no Lean evidence.

The graph147 ranked-eval socket now exposes the production-shaped object
target `StrengthenedGraph147RankedEvalMarginObjectFamily`.  This audit extracts
the observed `yp,zm` and `zm,yp` branch classes from the existing 10M profile
and checks that their profile-scaled margins match the deterministic
ranked-evaluator gain bound:

  scaledMargin rank <= 176 + (-53 + suffixGain).

The next proof must derive the same statement semantically over graph147
objects, not by importing this path-class table.
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
DEFAULT_JSON = ROOT / "scripts/generated/graph147_object_margin_profile.json"
DEFAULT_MD = ROOT / "scripts/generated/graph147_object_margin_profile.md"

BRANCH_PREFIXES = {
    ("xm", "ym", "yp", "zm"): "yp_zm",
    ("xm", "ym", "zm", "yp"): "zm_yp",
}

ROOT_CONST = 176
PREFIX_GAIN = -53
PREFIX_LEN = 4


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
    edges = {idx: row for idx, row in enumerate(graph["edges"])}
    classes = []
    for cls in graph["path_classes"]:
      label_keys = [labels[int(idx)] for idx in cls["label_indices"]]
      faces = tuple(face_of_label(label) for label in label_keys)
      branch = BRANCH_PREFIXES.get(faces[:PREFIX_LEN])
      if branch is None:
          continue
      edge_indices = [int(idx) for idx in cls["edge_indices"]]
      gains = [int(edges[idx]["gain_scaled"]) for idx in edge_indices]
      prefix_gain = sum(gains[:PREFIX_LEN])
      suffix_gain = sum(gains[PREFIX_LEN:])
      full_gain = sum(gains)
      expected_bound = ROOT_CONST + PREFIX_GAIN + suffix_gain
      margin_scaled = int(cls["margin_scaled"])
      classes.append(
          {
              "class_index": int(cls["class_index"]),
              "branch": branch,
              "count": int(cls["count"]),
              "rank_sample": [int(rank) for rank in cls.get("rank_sample", [])],
              "faces": list(faces),
              "edge_indices": edge_indices,
              "edge_gains": gains,
              "profile_prefix_gain": prefix_gain,
              "expected_prefix_gain": PREFIX_GAIN,
              "prefix_gain_matches_socket": prefix_gain == PREFIX_GAIN,
              "suffix_gain": suffix_gain,
              "full_gain": full_gain,
              "margin_scaled": margin_scaled,
              "expected_bound": expected_bound,
              "margin_le_expected_bound": margin_scaled <= expected_bound,
              "margin_eq_expected_bound": margin_scaled == expected_bound,
          }
      )
    classes.sort(key=lambda row: row["class_index"])
    by_branch: dict[str, dict[str, Any]] = {}
    for branch in sorted(BRANCH_PREFIXES.values()):
        branch_classes = [row for row in classes if row["branch"] == branch]
        by_branch[branch] = {
            "class_count": len(branch_classes),
            "observed_count": sum(row["count"] for row in branch_classes),
            "all_prefix_gains_match_socket": all(
                row["prefix_gain_matches_socket"] for row in branch_classes
            ),
            "all_margins_le_expected_bounds": all(
                row["margin_le_expected_bound"] for row in branch_classes
            ),
            "all_margins_equal_expected_bounds": all(
                row["margin_eq_expected_bound"] for row in branch_classes
            ),
            "suffix_face_sequences": [
                row["faces"][PREFIX_LEN:] for row in branch_classes
            ],
        }
    return {
        "schema_version": 1,
        "mode": "graph147-object-margin-profile-audit",
        "proof_relevance": "diagnostic only; no Lean evidence",
        "profile_range": [int(profile["start"]), int(profile["end"])],
        "profile_state_key_mode": profile["target"]["state_key_mode"],
        "graph_path_class_count": int(graph["path_class_count"]),
        "root_const": ROOT_CONST,
        "prefix_gain": PREFIX_GAIN,
        "prefix_len": PREFIX_LEN,
        "branch_prefixes": {
            name: list(prefix) for prefix, name in BRANCH_PREFIXES.items()
        },
        "graph147_class_count": len(classes),
        "graph147_total_observed_count": sum(row["count"] for row in classes),
        "all_prefix_gains_match_socket": all(
            row["prefix_gain_matches_socket"] for row in classes
        ),
        "all_margins_le_expected_bounds": all(
            row["margin_le_expected_bound"] for row in classes
        ),
        "all_margins_equal_expected_bounds": all(
            row["margin_eq_expected_bound"] for row in classes
        ),
        "by_branch": by_branch,
        "classes": classes,
        "next_producer_target": (
            "StrengthenedGraph147RankedEvalTargetTailObjectFamily; prove "
            "the same suffix-gain margin inequalities semantically over "
            "Graph147YpZmRankedEvalMarginObj and Graph147ZmYpRankedEvalMarginObj "
            "using the derived Graph147TargetCompletionTail fact, not by "
            "importing this diagnostic path-class table."
        ),
    }


def write_md(path: Path, payload: dict[str, Any]) -> None:
    lines = [
        "# Graph147 Object-Margin Profile Audit",
        "",
        "Untrusted diagnostic audit.  This file is not Lean proof evidence.",
        "",
        f"- Profile range: `{payload['profile_range']}`",
        f"- State key mode: `{payload['profile_state_key_mode']}`",
        f"- Total graph path classes: `{payload['graph_path_class_count']}`",
        f"- Graph147 classes: `{payload['graph147_class_count']}`",
        f"- Graph147 observed count: `{payload['graph147_total_observed_count']}`",
        f"- All prefix gains match socket: `{payload['all_prefix_gains_match_socket']}`",
        f"- All margins <= expected bounds: `{payload['all_margins_le_expected_bounds']}`",
        f"- All margins equal expected bounds: `{payload['all_margins_equal_expected_bounds']}`",
        "",
        "## Branch Summary",
        "",
        "| branch | classes | observed | prefix ok | bounds ok | exact |",
        "| --- | ---: | ---: | --- | --- | --- |",
    ]
    for branch, row in payload["by_branch"].items():
        lines.append(
            f"| `{branch}` | `{row['class_count']}` | "
            f"`{row['observed_count']}` | "
            f"`{row['all_prefix_gains_match_socket']}` | "
            f"`{row['all_margins_le_expected_bounds']}` | "
            f"`{row['all_margins_equal_expected_bounds']}` |"
        )
    lines.extend(
        [
            "",
            "## Classes",
            "",
            "| class | branch | count | margin | suffix gain | expected bound | faces |",
            "| ---: | --- | ---: | ---: | ---: | ---: | --- |",
        ]
    )
    for row in payload["classes"]:
        lines.append(
            f"| `{row['class_index']}` | `{row['branch']}` | "
            f"`{row['count']}` | `{row['margin_scaled']}` | "
            f"`{row['suffix_gain']}` | `{row['expected_bound']}` | "
            f"`{' '.join(row['faces'])}` |"
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

    payload = audit(load_profile(args.profile))
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_md(args.markdown, payload)
    print(json.dumps(
        {
            "graph147_class_count": payload["graph147_class_count"],
            "graph147_total_observed_count": payload[
                "graph147_total_observed_count"
            ],
            "all_prefix_gains_match_socket": payload[
                "all_prefix_gains_match_socket"
            ],
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
