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

GRAPH221_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph221TerminalTailPrefixSmoke.lean"
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

ZMTMPP_CHAIN_REQUIRED = [
    "strengthenedClosedPrefix5ZmTmppTpppEvalState",
    "strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp",
    "graph159TargetCompletionState",
    "Graph159TargetCompletionTail",
    "graph159_head_of_targetCompletionTail",
    "strengthenedPrefix5Graph159TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState",
    "strengthenedClosed_prefix6_zm_tmpp_tppp_tpmp_next_from_prefix5",
    "graph171TargetCompletionState",
    "Graph171TargetCompletionTail",
    "graph171_head_of_targetCompletionTail",
    "strengthenedPrefix6Graph171TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState",
    "strengthenedClosed_prefix7_zm_tmpp_tppp_tpmp_tppm_next_from_prefix6",
    "graph186TargetCompletionState",
    "Graph186TargetCompletionTail",
    "graph186_head_of_targetCompletionTail",
    "strengthenedPrefix7Graph186TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState",
    "strengthenedClosed_prefix8_zm_tmpp_tppp_tpmp_tppm_tmmp_next_from_prefix7",
    "graph202TargetCompletionState",
    "Graph202TargetCompletionTail",
    "graph202_head_of_targetCompletionTail",
    "strengthenedPrefix8Graph202TargetCompletionLocalBranchTable",
]

GRAPH221_FILTERED_REQUIRED = [
    "graph221TargetCompletionState",
    "Graph221TargetCompletionTail",
    "graph221Layer4ForcedTailPrefixLabels",
    "graph221Layer4ForcedTailPrefixEval",
    "graph151TargetCompletionTail_decompose_to_graph221",
    "graph221StrengthenedEvalState_next",
    "graph221YpStrengthenedEvalState_next",
    "graph221YpTmpmStrengthenedEvalState_next",
    "graph221YpTmpmStrengthenedEvalState_zp_none",
    "graph221YpTmpmZp_strengthenedEval_none",
    "graph221_head_of_targetCompletionTail",
    "graph221_yp_tmpm_head_of_targetCompletionTail",
    "graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail",
    "graph221AcceptedTailSuffixOk_of_targetCompletionTail_and_strengthenedEval",
    "graph221AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221AcceptedTailSuffixOk",
    "graph221TailPrefix029Eval",
    "graph221TailPrefix030Eval",
    "graph221TailPrefix031Eval",
    "graph221FilteredTailPrefixContinuation",
    "graph221Layer4PrefixEval",
    "graph221Layer4ForcedTerminalPrefixEval",
    "graph221Layer4AcceptedTailSuffixOk",
    "graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4FilteredTailPrefixContinuation",
    "graph221Layer4PrefixState_contains_of_strengthened_prefix",
    "graph221Layer4FilteredTailPrefixTerminal_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4ProgressGate_of_strengthened_prefix",
    "graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph151CompletionTail_of_strengthened_prefix",
    "graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_eval",
]

GRAPH221_SEMANTIC_SUFFIX_REQUIRED = [
    "graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk",
    "graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk",
    "Graph221Layer4SemanticSuffixFamily",
    "graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_suffixFamily",
]

GRAPH221_BLOCKED_PREFIX_REQUIRED = [
    "graph221Layer4AcceptedTailSuffixOk_or_blockedPrefix_of_graph151TargetCompletionTail",
    "Graph221Layer4BlockedPrefixExcludedFamily",
    "graph221Layer4SemanticSuffixFamily_of_blockedPrefixExcluded",
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
    graph221_text = GRAPH221_FILE.read_text() if GRAPH221_FILE.exists() else ""
    graph183_ok, graph183_missing = contains_all(graph183_text, GRAPH183_REQUIRED)
    graph151_partial_ok, graph151_partial_missing = contains_all(
        next_frontier_text, GRAPH151_PARTIAL_REQUIRED
    )
    zm_tmpp_chain_ok, zm_tmpp_chain_missing = contains_all(
        next_frontier_text, ZMTMPP_CHAIN_REQUIRED
    )
    graph221_filtered_ok, graph221_filtered_missing = contains_all(
        graph221_text, GRAPH221_FILTERED_REQUIRED
    )
    graph221_semantic_suffix_ok, graph221_semantic_suffix_missing = contains_all(
        graph221_text, GRAPH221_SEMANTIC_SUFFIX_REQUIRED
    )
    graph221_blocked_prefix_ok, graph221_blocked_prefix_missing = contains_all(
        graph221_text, GRAPH221_BLOCKED_PREFIX_REQUIRED
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
            if (
                graph151_partial_ok
                and zm_tmpp_chain_ok
                and graph221_filtered_ok
                and graph221_semantic_suffix_ok
                and graph221_blocked_prefix_ok
            ):
                partial_status = "partial_graph221_blocked_prefix_exclusion_frontier"
            elif (
                graph151_partial_ok
                and zm_tmpp_chain_ok
                and graph221_filtered_ok
                and graph221_semantic_suffix_ok
            ):
                partial_status = "partial_graph221_semantic_suffix_family_frontier"
            elif graph151_partial_ok and zm_tmpp_chain_ok and graph221_filtered_ok:
                partial_status = "partial_graph221_layer4_gate_with_eval_premise"
            elif graph151_partial_ok and zm_tmpp_chain_ok:
                partial_status = "partial_forced_chain_reaches_graph221_branch"
            elif graph151_partial_ok:
                partial_status = "partial_local_step_only_missing_post_tppp_suffix_table"
            else:
                partial_status = "missing_terminal_lane_semantic_gate"
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": partial_status,
                "file": str(NEXT_FRONTIER_FILE.relative_to(ROOT)),
                "graph221_file": (
                    str(GRAPH221_FILE.relative_to(ROOT))
                    if GRAPH221_FILE.exists()
                    else None
                ),
                "required_symbols": {
                    symbol: symbol not in graph151_partial_missing
                    for symbol in GRAPH151_PARTIAL_REQUIRED
                },
                "forced_chain_symbols": {
                    symbol: symbol not in zm_tmpp_chain_missing
                    for symbol in ZMTMPP_CHAIN_REQUIRED
                },
                "graph221_filtered_symbols": {
                    symbol: symbol not in graph221_filtered_missing
                    for symbol in GRAPH221_FILTERED_REQUIRED
                },
                "graph221_semantic_suffix_symbols": {
                    symbol: symbol not in graph221_semantic_suffix_missing
                    for symbol in GRAPH221_SEMANTIC_SUFFIX_REQUIRED
                },
                "graph221_blocked_prefix_symbols": {
                    symbol: symbol not in graph221_blocked_prefix_missing
                    for symbol in GRAPH221_BLOCKED_PREFIX_REQUIRED
                },
                "forbidden_hits": [
                    token
                    for token in FORBIDDEN
                    if token in next_frontier_text or token in graph221_text
                ],
                "remaining_gap": (
                    "graph221 target-completion now reduces the frontier to "
                    "accepted suffixes or the single blocked prefix "
                    "yp,tmpm,zp,..., and the semantic suffix family follows "
                    "from Graph221Layer4BlockedPrefixExcludedFamily.  The next "
                    "proof must exclude that blocked prefix from deterministic "
                    "product-state/cancellation semantics.  If that exclusion "
                    "needs selected prefixes, sampled ranks, exact affine keys, "
                    "or one branch per observed path, switch to the "
                    "cocycle/cancellation-summary quotient experiment."
                    if graph221_blocked_prefix_ok
                    else (
                    "graph221 now has a non-circular semantic suffix-family "
                    "frontier: once a production theorem proves "
                    "graph221Layer4AcceptedTailSuffixOk from strengthened "
                    "closed-language product-state semantics, the terminal "
                    "machine gate follows without assuming strengthened "
                    "evaluator success.  The next proof must target "
                    "Graph221Layer4SemanticSuffixFamily.  If that target needs "
                    "selected prefixes, sampled ranks, exact affine keys, or "
                    "one branch per observed path, switch to the "
                    "cocycle/cancellation-summary quotient experiment."
                    if graph221_semantic_suffix_ok
                    else (
                    "graph221 now has a rank-free filtered tail-prefix "
                    "continuation for the three graph-accepted suffixes, "
                    "a graph151-to-graph221 target-completion tail "
                    "decomposition, semantic discharge of the Graph151 "
                    "target-completion tail from the strengthened closed "
                    "language plus depth-11 prefix, a local theorem deriving the suffix "
                    "filter from target-completion plus the strengthened "
                    "product-state evaluator, and a lane-level terminal "
                    "machine gate that starts from the initial state once "
                    "the strengthened eval success premise is supplied. "
                    "This is not a full lane gate yet: the next proof must "
                    "derive that evaluator success directly from the "
                    "strengthened closed-language rank/prefix hypotheses."
                    if graph221_filtered_ok
                    else (
                    "graph151 now advances semantically through tppp to "
                    "graph159, graph171, graph186, and graph202, reaching "
                    "the graph221 branching frontier; no graph221 "
                    "filtered suffix/terminal continuation table analogous "
                    "to graph183 is present"
                    if zm_tmpp_chain_ok
                    else (
                        "graph151 target-completion semantics forces the next "
                        "face tppp, but no graph151 post-tppp suffix/terminal "
                        "continuation table analogous to graph183 is present"
                    )
                    )
                    )
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
            "prove Graph221Layer4BlockedPrefixExcludedFamily from deterministic "
            "product-state/cancellation semantics for the zm_tmpp graph221 "
            "frontier; if that proof wants selected-prefix or exact-affine "
            "membership, stop and run the cocycle/cancellation-summary "
            "quotient experiment"
            if graph221_blocked_prefix_ok
            else (
            "prove Graph221Layer4SemanticSuffixFamily from deterministic "
            "product-state/cancellation semantics for the zm_tmpp graph221 "
            "frontier; if that proof wants selected-prefix or exact-affine "
            "membership, stop and run the cocycle/cancellation-summary "
            "quotient experiment"
            if graph221_semantic_suffix_ok
            else (
            "lift the zm_tmpp lane through graph221 by deriving the "
            "strengthened evaluator success from the strengthened "
            "closed-language prefix, then feed "
            "the resulting accepted suffix into the same four-piece "
            "terminal-machine pattern validated by graph183"
            if graph221_filtered_ok
            else (
                "continue the zm_tmpp semantic continuation at the graph221 "
                "branching frontier by generating or proving a filtered "
                "target-completion suffix/terminal continuation, then lift the "
                "lane through the same four-piece terminal-machine pattern "
                "validated by graph183"
                if zm_tmpp_chain_ok
                else (
                    "generate or prove the graph151 post-tppp suffix/terminal "
                    "continuation for the partial zm_tmpp lane, then lift it "
                    "through the same four-piece terminal-machine pattern "
                    "validated by graph183"
                )
            )
            )
            )
        ),
    }

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
