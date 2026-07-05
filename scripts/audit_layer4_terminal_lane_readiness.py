#!/usr/bin/env python3
"""Audit layer-4 terminal-machine lane readiness.

This is a lightweight planning audit, not proof evidence.  It checks which of
the seven reachable layer-4 branches currently expose the semantic
terminal-machine gate shape validated by the graph183 lane:

  first-four progress gate
  semantic target-completion tail
  filtered/terminal suffix evaluator
  initial-state contained eval-prefix gate

The final proof still needs Lean theorems for every lane.  This script only
keeps SYMMETRY_PLAN.md honest about which lanes have such theorem surfaces.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "scripts/generated/layer4_terminal_lane_readiness.json"

GRAPH183_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183TerminalTailPrefixSmoke.lean"
)

NEXT_FRONTIER_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke.lean"
)

LANES = [
    ("tmpm_tppm", "Face.tmpm", "Face.tppm"),
    ("tmpm_zm", "Face.tmpm", "Face.zm"),
    ("yp_tmmm", "Face.yp", "Face.tmmm"),
    ("yp_zm", "Face.yp", "Face.zm"),
    ("zm_tmpp", "Face.zm", "Face.tmpp"),
    ("zm_yp", "Face.zm", "Face.yp"),
    ("zm_zp", "Face.zm", "Face.zp"),
]

GRAPH183_REQUIRED = [
    "graph183Layer4ProgressGate_of_strengthened_prefix",
    "graph183Layer4CompletionTail_of_strengthened_prefix",
    "graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix_semantic",
    "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_via_progress",
    "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic",
]

GRAPH151_PARTIAL_REQUIRED = [
    "graph151TargetCompletionState",
    "Graph151TargetCompletionTail",
    "graph151_head_of_targetCompletionTail",
    "strengthenedPrefix4Graph151TargetCompletionLocalBranchTable",
]

GRAPH159_PARTIAL_REQUIRED = [
    "strengthenedClosedPrefix5ZmTmppTpppEvalState",
    "strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp",
    "graph159TargetCompletionState",
    "Graph159TargetCompletionTail",
    "graph159_head_of_targetCompletionTail",
    "strengthenedPrefix5Graph159TargetCompletionLocalBranchTable",
]

FORBIDDEN = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "acceptedTraceOfId",
]


def contains_all(text: str, symbols: list[str]) -> tuple[bool, list[str]]:
    missing = [symbol for symbol in symbols if symbol not in text]
    return not missing, missing


def main() -> int:
    graph183_text = GRAPH183_FILE.read_text()
    next_frontier_text = NEXT_FRONTIER_FILE.read_text()
    graph183_ok, graph183_missing = contains_all(graph183_text, GRAPH183_REQUIRED)
    graph151_partial_ok, graph151_partial_missing = contains_all(
        next_frontier_text, GRAPH151_PARTIAL_REQUIRED
    )
    graph159_partial_ok, graph159_partial_missing = contains_all(
        next_frontier_text, GRAPH159_PARTIAL_REQUIRED
    )
    forbidden_hits = [
        token for token in FORBIDDEN if token in graph183_text
    ]

    lane_report = {}
    for lane, third, fourth in LANES:
        if lane == "tmpm_zm":
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": (
                    "validated_one_lane_semantic_gate"
                    if graph183_ok and not forbidden_hits
                    else "incomplete_graph183_gate"
                ),
                "file": str(GRAPH183_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in graph183_missing
                    for symbol in GRAPH183_REQUIRED
                },
                "forbidden_hits": forbidden_hits,
            }
        elif lane == "zm_tmpp":
            partial_status = (
                "partial_two_local_steps_missing_post_tpmp_suffix_table"
                if graph151_partial_ok and graph159_partial_ok
                else (
                    "partial_local_step_only_missing_post_tppp_suffix_table"
                    if graph151_partial_ok
                    else "missing_terminal_lane_semantic_gate"
                )
            )
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": partial_status,
                "file": str(NEXT_FRONTIER_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in graph151_partial_missing
                    for symbol in GRAPH151_PARTIAL_REQUIRED
                },
                "post_tppp_symbols": {
                    symbol: symbol not in graph159_partial_missing
                    for symbol in GRAPH159_PARTIAL_REQUIRED
                },
                "forbidden_hits": [
                    token for token in FORBIDDEN if token in next_frontier_text
                ],
                "remaining_gap": (
                    "graph151 now advances semantically through tppp to "
                    "graph159 and graph159 forces tpmp, but no graph171 "
                    "post-tpmp suffix/terminal continuation table analogous "
                    "to graph183 is present"
                    if graph159_partial_ok
                    else (
                        "graph151 target-completion semantics forces the next "
                        "face tppp, but no graph151 post-tppp suffix/terminal "
                        "continuation table analogous to graph183 is present"
                    )
                ),
            }
        else:
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": "missing_terminal_lane_semantic_gate",
                "file": None,
                "required_symbols": {},
                "forbidden_hits": [],
            }

    validated = [
        lane
        for lane, data in lane_report.items()
        if data["status"] == "validated_one_lane_semantic_gate"
    ]
    missing = [
        lane
        for lane, data in lane_report.items()
        if data["status"] != "validated_one_lane_semantic_gate"
    ]
    partial = [
        lane
        for lane, data in lane_report.items()
        if data["status"].startswith("partial_")
    ]

    payload = {
        "status": (
            "one_lane_validated_remaining_lanes_missing"
            if validated and missing
            else "no_validated_terminal_lanes"
        ),
        "validated_lane_count": len(validated),
        "partial_lane_count": len(partial),
        "missing_lane_count": len(missing),
        "validated_lanes": validated,
        "partial_lanes": partial,
        "missing_lanes": missing,
        "lanes": lane_report,
        "next_recommended_slice": (
            "continue the zm_tmpp semantic continuation after graph159/tpmp "
            "by generating or proving the graph171 target-completion "
            "suffix/terminal continuation, then lift the lane through the "
            "same four-piece terminal-machine pattern validated by graph183"
            if graph159_partial_ok
            else (
                "generate or prove the graph151 post-tppp suffix/terminal "
                "continuation for the partial zm_tmpp lane, then lift it "
                "through the same four-piece terminal-machine pattern "
                "validated by graph183"
            )
        ),
    }

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
