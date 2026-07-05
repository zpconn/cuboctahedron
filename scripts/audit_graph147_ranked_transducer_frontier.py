#!/usr/bin/env python3
"""Audit the graph147 ranked-transducer frontier.

This is a progress audit, not proof evidence.  It records whether the Lean
surface now matches the intended semantic Bellman route:

  strengthened closed language
    -> rank-indexed transducer invariant
    -> graph-exact eval gate
    -> graph147 root-margin bundle

The remaining proof must provide the invariant fields semantically.  This
script keeps that obligation explicit and checks that the current socket does
not mention sampled/selected-prefix machinery.  The selected-prefix producer
may remain as a discovery/smoke tool, but it is not an acceptable production
coverage coordinate for graph147.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/graph147_ranked_transducer_frontier.json"
OUT_MD = ROOT / "scripts/generated/graph147_ranked_transducer_frontier.md"
PLAN = ROOT / "SYMMETRY_PLAN.md"

DIRECT_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket.lean"
)
RANKED_EVAL_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket.lean"
)
TARGET_TAIL_CASES = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147TargetTailCases.lean"
)
TARGET_TAIL_CASE_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147TargetTailCaseSocket.lean"
)
TARGET_TAIL_CASE_MARGIN_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147TargetTailCaseMarginSocket.lean"
)
TARGET_CURSOR = ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean"
TRANSDUCER_TAIL = ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean"
TRANSDUCER_EVAL = ROOT / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean"
TRANSDUCER_GATE = ROOT / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean"
BELLMAN_OBJECT = ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean"
BELLMAN_SEMANTIC_GATE = (
    ROOT / "Cuboctahedron/Search/TopPairingBellmanSemanticGate.lean"
)
BELLMAN_POTENTIAL = ROOT / "Cuboctahedron/Search/BellmanPotential.lean"
GAUGE_AUDIT = ROOT / "scripts/generated/graph147_gauge_corrected_potential_0_10M.json"
COCYCLE_QUOTIENT_AUDIT = (
    ROOT / "scripts/generated/graph147_cocycle_quotient_potential_0_10M.json"
)
OBJECT_MARGIN_PROFILE = (
    ROOT / "scripts/generated/graph147_object_margin_profile.json"
)
TARGET_TAIL_LANGUAGE_AUDIT = (
    ROOT / "scripts/generated/graph147_target_tail_language.json"
)

SELECTED_PREFIX_DIAGNOSTIC_FILES = [
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginSocket.lean",
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginCoverBridge.lean",
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixCoverMembershipBridge.lean",
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixAcceptedPrefixEvalBridge.lean",
]

ROOT_TRACE_DIAGNOSTIC_FILES = [
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedEvalGate.lean",
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedEvalTraceSmoke.lean",
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingRootTraceMarginSelectedPrefixBridge.lean",
]

SOCKET_SYMBOLS = [
    "StrengthenedGraph147RankedTransducerInvariantFamily",
    "graphExactEvalGate_of_rankedTransducerInvariantFamily",
    "rootMarginBundle_of_rankedTransducerInvariantFamily",
    "Graph147RankedShardSuffixOk",
    "graph147RankedShardSuffixOk_localStep",
    "graph147RankedShardSuffixOk_finalPotential",
    "graph147RankedPrefix4EvalState",
    "graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix",
    "graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix",
    "StrengthenedGraph147BranchSuffixStartBundle",
    "strengthenedGraph147BranchSuffixStartBundle",
    "StrengthenedGraph147GraphExactBranchBundle",
    "graphExactBranchBundle_of_rootMarginBundle",
]

RANKED_EVAL_SYMBOLS = [
    "graph147RankedEvalNext",
    "graph147RankedShardSuffixOk_eval_exists_finalPotential",
    "graph147RankedShardSuffixOk_graph_eval_exists_finalPotential",
    "graph147YpZm_rankedPrefix4Tail_of_strengthened_prefix",
    "graph147ZmYp_rankedPrefix4Tail_of_strengthened_prefix",
    "graph147YpZm_graph_eval_exists_finalPotential_of_strengthened_prefix",
    "graph147ZmYp_graph_eval_exists_finalPotential_of_strengthened_prefix",
    "graph147TargetCompletionTailRootMarginBound_of_ranked_eval_margin",
    "graph147YpZmRootMarginBound_of_ranked_eval_margin",
    "graph147ZmYpRootMarginBound_of_ranked_eval_margin",
    "StrengthenedGraph147RankedEvalMarginBundle",
    "Graph147YpZmRankedEvalMarginObj",
    "Graph147ZmYpRankedEvalMarginObj",
    "Graph147YpZmRankedEvalMarginObjectBound",
    "Graph147ZmYpRankedEvalMarginObjectBound",
    "StrengthenedGraph147RankedEvalMarginObjectFamily",
    "Graph147YpZmRankedEvalTargetTailObjectBound",
    "Graph147ZmYpRankedEvalTargetTailObjectBound",
    "StrengthenedGraph147RankedEvalTargetTailObjectFamily",
    "rankedEvalMarginObjectFamily_of_targetTailObjectFamily",
    "rankedEvalMarginBundle_of_rankedEvalMarginObjectFamily",
    "rankedEvalMarginBundle_of_rankedEvalTargetTailObjectFamily",
    "rootMarginBundle_of_rankedEvalMarginObjectFamily",
    "rootMarginBundle_of_rankedEvalTargetTailObjectFamily",
    "graph147RankedEval_margin_of_suffixInvariant",
    "StrengthenedGraph147RankedEvalMarginInvariantFamily",
    "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
    "rootMarginBundle_of_rankedEvalMarginInvariantFamily_via_rankedEvalMarginBundle",
    "StrengthenedGraph147RankedShardMarginInvariantFamily",
    "Graph147RankedSuffixEvalMarginInv",
    "rankedShardMarginInvariantFamily_of_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedEvalMarginBundle_via_suffixEvalMarginInv",
    "Graph147RankedEvalMarginSequenceBadFace",
    "rankedEvalMarginBundle_of_graph147RankedEvalMarginSequenceBadFace",
    "rankedShardMarginInvariantFamily_of_graph147RankedEvalMarginSequenceBadFace",
    "rootMarginBundle_of_graph147RankedEvalMarginSequenceBadFace",
    "graph147RankedSuffixEvalMarginInv_of_targetCompletionRootMarginBound",
    "Graph147TargetCompletionRootMarginSequenceBadFace",
    "graph147RankedEvalMarginSequenceBadFace_of_targetCompletionRootMargin",
    "rankedEvalMarginBundle_of_graph147TargetCompletionRootMarginSequenceBadFace",
    "rankedShardMarginInvariantFamily_of_graph147TargetCompletionRootMarginSequenceBadFace",
    "rootMarginBundle_of_graph147TargetCompletionRootMarginSequenceBadFace",
    "rankedEvalMarginInvariantFamily_of_rankedShardMarginInvariantFamily",
    "rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily",
    "rootMarginBundle_of_rankedShardMarginInvariantFamily_via_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedEvalMarginBundle",
    "rankedEvalMarginBundle_of_graphExactEvalGate",
    "rootMarginBundle_of_graphExactEvalGate_via_rankedEvalMarginBundle",
    "rankedEvalMarginBundle_of_rankedTransducerInvariantFamily",
    "rootMarginBundle_of_rankedTransducerInvariantFamily_via_rankedEvalMarginBundle",
]

TARGET_TAIL_CASE_SYMBOLS = [
    "graph147TargetTailZp",
    "graph147TargetTailTmmp",
    "graph147_targetCompletionTail_cases",
]

TARGET_TAIL_CASE_SOCKET_SYMBOLS = [
    "Graph147YpZmRankedEvalTailCaseBound",
    "Graph147ZmYpRankedEvalTailCaseBound",
    "StrengthenedGraph147RankedEvalTargetTailCaseFamily",
    "rankedEvalTargetTailObjectFamily_of_tailCaseFamily",
    "rankedEvalMarginBundle_of_tailCaseFamily",
    "rootMarginBundle_of_tailCaseFamily",
]

TARGET_TAIL_CASE_MARGIN_SOCKET_SYMBOLS = [
    "Graph147RankedEvalTailGain",
    "Graph147RankedEvalTargetTailZpGain",
    "Graph147RankedEvalTargetTailTmmpGain",
    "Graph147YpZmRankedEvalTailCaseScaledMarginBound",
    "Graph147ZmYpRankedEvalTailCaseScaledMarginBound",
    "StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily",
    "targetTailCaseFamily_of_scaledMarginFamily",
    "rankedEvalMarginBundle_of_scaledMarginFamily",
    "rootMarginBundle_of_scaledMarginFamily",
]

SEMANTIC_INPUT_SYMBOLS = {
    "target_cursor": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target_of_closed",
        "topPairingTriCursor_of_closed",
        "TopPairingTargetCursorAtRank",
    ],
    "transducer_tail": [
        "structure TopPairingTransducerTail",
        "theorem ofClosedRank",
        "theorem cons",
    ],
    "transducer_eval": [
        "theorem start_tail_of_closed",
        "theorem next?_tail",
        "theorem evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix",
    ],
    "transducer_gate": [
        "strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
    ],
    "bellman_object": [
        "structure TopPairingBellmanObj",
        "def topPairingClosedMembership",
        "theorem topPairingClosedMembership_covers",
        "def topPairingClosedObjectCoverOfEvalAccepts",
        "def topPairingBellmanEvalObjectCoverOfClosedToEval",
        "def topPairingBellmanEvalObjectCoverOfStrengthenedToEval",
    ],
    "bellman_semantic_gate": [
        "abbrev TopPairingClosedToEvalGate",
        "abbrev TopPairingStrengthenedToEvalGate",
        "abbrev TopPairingGraphExactEvalGateAtRank",
        "abbrev TopPairingClosedToGraphExactEvalGate",
        "abbrev TopPairingStrengthenedToGraphExactEvalGate",
        "theorem evalLanguageAtRank_of_graphExactEvalGate",
        "theorem closedToEvalGate_of_graphExactEvalGate",
        "theorem strengthenedToEvalGate_of_graphExactEvalGate",
    ],
    "bellman_potential": [
        "theorem scaledMargin_nonpos_of_gaugeCorrected_quotient_margin",
        "def GaugeCorrectedQuotientMarginLanguageBound",
        "theorem scaledMargin_nonpos_of_gaugeCorrected_quotient_language",
        "def GaugeCorrectedQuotientEvalMarginLanguageBound",
        "theorem gaugeCorrectedQuotientMarginLanguageBound_of_eval",
        "theorem scaledMargin_nonpos_of_gaugeCorrected_quotient_eval_language",
    ],
}

FORBIDDEN_TERMS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "selectedPrefix",
    "AcceptedTrace",
    "acceptedTrace",
    "exactAffine",
    "affineRhs",
]

REMAINING_FIELDS = [
    {
        "field": "start",
        "meaning": "the generated invariant holds at the strengthened closed evaluator start",
    },
    {
        "field": "suffixStart",
        "meaning": "every strengthened closed graph147 rank starts with the rank-indexed suffix certificate",
    },
    {
        "field": "localStep",
        "meaning": "every semantic state/face head transition advances the deterministic evaluator and preserves the invariant and suffix certificate",
    },
    {
        "field": "finish",
        "meaning": (
            "every accepted final state has nonnegative potential and proves "
            "the full-root margin bound.  The sharper ranked-eval invariant "
            "surface now separates this into a suffix margin invariant with "
            "local preservation plus a final empty-suffix margin theorem.  The "
            "ranked shard adapter additionally supplies the semantic suffix "
            "closure and final-potential facts, so the remaining hard part is "
            "to instantiate the margin-only invariant from closed target "
            "cursor, schedule, local-axis, and full graph147 state facts"
        ),
    },
]

PRODUCTION_ROUTE = {
    "keep": "Bellman/state-DAG via deterministic semantic transducer",
    "reject": [
        "selected-prefix cover",
        "sampled rank/path membership",
        "accepted trace id membership",
        "exact affine RHS keys",
        "one generated branch per observed path",
        "raw evaluator unfolding as a hidden Boolean checker",
    ],
    "target": (
        "StrengthenedGraph147RankedEvalTargetTailObjectFamily -> "
        "StrengthenedGraph147RankedEvalMarginObjectFamily or "
        "StrengthenedGraph147RankedShardMarginInvariantFamily -> "
        "StrengthenedGraph147RankedEvalMarginInvariantFamily -> "
        "StrengthenedGraph147RankedEvalMarginBundle -> "
        "rootMarginBundle_of_rankedEvalMarginBundle"
    ),
    "fallback": (
        "If the invariant cannot be proved from target cursor, schedule, "
        "square-gap/local-axis tail, pair-count/used-face facts, and "
        "deterministic full-graph147 state semantics, stop graph147 scaling "
        "and switch to the certified segment/cocycle quotient experiment."
    ),
}

PRODUCTION_PRODUCER_SYMBOL = "StrengthenedGraph147RankedShardMarginInvariantFamily"

PLAN_PIVOT_MARKERS = [
    "mandatory_graph147_semantic_transducer_pivot",
    "reject_selected_prefix_membership_scaling",
    "semantic_branch_start_margin_or_cocycle_quotient",
    "sequenceBadFace_ok is only a carrier",
    "closed-language-to-eval theorem",
    "target-shadow cursor",
    "graph147_targetCompletionTail_cases",
    "Graph147TargetCompletionTail has exactly two semantic completions",
    "StrengthenedGraph147RankedEvalTargetTailCaseFamily",
    "StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily",
    "No selected-prefix/root-trace scaling",
    "StrengthenedGraph147RankedShardMarginInvariantFamily",
    "Selected-prefix diagnostics only",
    "Root-trace diagnostics only",
    "Raw evaluator reduction rejected",
    "rank plus closed-language proof object already exists",
    "TopPairingBellmanObj",
    "TopPairingGraphExactEvalGateAtRank",
]

SELECTED_PREFIX_DIAGNOSTIC_SYMBOLS = [
    "SelectedPrefixTraceMarginSequenceBadFace",
    "selectedPrefixTraceMarginFamily_of_sequenceBadFace",
    "SelectedPrefixCoverSequenceBadFace",
    "GraphAcceptedTraceMargin",
    "AcceptedTraceId",
    "acceptedTraceOfId",
]

ROOT_TRACE_DIAGNOSTIC_SYMBOLS = [
    "ClosedTraceOr",
    "topPairingClosedFaceTraceA",
    "topPairingClosedFaceTraceB",
    "ClosedEvalFamily",
    "RootTrace",
    "acceptedTrace",
]


def lean_symbol_usages_outside_socket(symbol: str) -> list[dict[str, object]]:
    usages: list[dict[str, object]] = []
    root = ROOT / "Cuboctahedron"
    if not root.exists():
        return usages
    for path in root.rglob("*.lean"):
        if path == RANKED_EVAL_SOCKET:
            continue
        try:
            with path.open() as handle:
                for lineno, line in enumerate(handle, start=1):
                    if symbol in line:
                        usages.append(
                            {
                                "file": str(path.relative_to(ROOT)),
                                "line": lineno,
                                "text": line.strip(),
                            }
                        )
        except UnicodeDecodeError:
            continue
    return usages


def read(path: Path) -> str:
    return path.read_text() if path.exists() else ""


def read_json(path: Path) -> dict:
    if not path.exists():
        return {}
    return json.loads(path.read_text())


def contains_all(text: str, symbols: list[str]) -> dict[str, bool]:
    return {symbol: symbol in text for symbol in symbols}


def diagnostic_file_symbols(
    files: list[Path], symbols: list[str]
) -> list[dict[str, object]]:
    entries: list[dict[str, object]] = []
    for path in files:
        text = read(path)
        entries.append(
            {
                "file": str(path.relative_to(ROOT)),
                "exists": path.exists(),
                "symbols": {
                    symbol: symbol in text
                    for symbol in symbols
                },
            }
        )
    return entries


def tail_text(text: str, lines: int = 260) -> str:
    return "\n".join(text.splitlines()[-lines:])


def main() -> None:
    direct_text = read(DIRECT_SOCKET)
    ranked_eval_text = read(RANKED_EVAL_SOCKET)
    target_tail_cases_text = read(TARGET_TAIL_CASES)
    target_tail_case_socket_text = read(TARGET_TAIL_CASE_SOCKET)
    target_tail_case_margin_socket_text = read(TARGET_TAIL_CASE_MARGIN_SOCKET)
    plan_tail = read(PLAN)
    semantic_files = {
        "target_cursor": read(TARGET_CURSOR),
        "transducer_tail": read(TRANSDUCER_TAIL),
        "transducer_eval": read(TRANSDUCER_EVAL),
        "transducer_gate": read(TRANSDUCER_GATE),
        "bellman_potential": read(BELLMAN_POTENTIAL),
        "bellman_object": read(BELLMAN_OBJECT),
        "bellman_semantic_gate": read(BELLMAN_SEMANTIC_GATE),
    }

    semantic_symbols = {
        key: contains_all(semantic_files[key], symbols)
        for key, symbols in SEMANTIC_INPUT_SYMBOLS.items()
    }
    socket_symbols = contains_all(direct_text, SOCKET_SYMBOLS)
    ranked_eval_symbols = contains_all(ranked_eval_text, RANKED_EVAL_SYMBOLS)
    target_tail_case_symbols = contains_all(
        target_tail_cases_text, TARGET_TAIL_CASE_SYMBOLS
    )
    target_tail_case_socket_symbols = contains_all(
        target_tail_case_socket_text, TARGET_TAIL_CASE_SOCKET_SYMBOLS
    )
    target_tail_case_margin_socket_symbols = contains_all(
        target_tail_case_margin_socket_text,
        TARGET_TAIL_CASE_MARGIN_SOCKET_SYMBOLS,
    )
    gauge_data = read_json(GAUGE_AUDIT)
    cocycle_quotient_data = read_json(COCYCLE_QUOTIENT_AUDIT)
    object_margin_profile = read_json(OBJECT_MARGIN_PROFILE)
    target_tail_language = read_json(TARGET_TAIL_LANGUAGE_AUDIT)
    gauge_decision = gauge_data.get("decision")
    gauge_accepted_modes = gauge_data.get("accepted_modes", [])
    cocycle_quotient_decision = cocycle_quotient_data.get("decision")
    cocycle_quotient_accepted_modes = cocycle_quotient_data.get(
        "accepted_modes", []
    )
    graph = gauge_data.get("graph", {})
    full_graph_only = (
        gauge_decision == "full_graph_margin_candidate_only"
        and gauge_accepted_modes == ["full"]
    )
    quotient_not_margin_complete = (
        cocycle_quotient_decision == "no_existing_quotient_margin_candidate"
        and cocycle_quotient_accepted_modes == []
    )
    producer_usages = lean_symbol_usages_outside_socket(
        PRODUCTION_PRODUCER_SYMBOL
    )
    direct_margin_inv_producer_present = bool(producer_usages)
    selected_prefix_diagnostics = diagnostic_file_symbols(
        SELECTED_PREFIX_DIAGNOSTIC_FILES,
        SELECTED_PREFIX_DIAGNOSTIC_SYMBOLS,
    )
    root_trace_diagnostics = diagnostic_file_symbols(
        ROOT_TRACE_DIAGNOSTIC_FILES,
        ROOT_TRACE_DIAGNOSTIC_SYMBOLS,
    )
    forbidden_hits = [
        {
            "term": term,
            "file": str(path.relative_to(ROOT)),
        }
        for term in FORBIDDEN_TERMS
        for path, text in [
            (DIRECT_SOCKET, direct_text),
            (RANKED_EVAL_SOCKET, ranked_eval_text),
        ]
        if term in text
    ]
    plan_tail_symbols = contains_all(
        plan_tail,
        [
            "ready_for_ranked_eval_margin_bundle_producer",
            "graph147_targetCompletionTail_cases",
            "Graph147TargetCompletionTail has exactly two semantic completions",
            "StrengthenedGraph147RankedEvalTargetTailCaseFamily",
            "StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily",
            "StrengthenedGraph147RankedEvalTargetTailObjectFamily",
            "StrengthenedGraph147RankedEvalMarginObjectFamily",
            "StrengthenedGraph147RankedEvalMarginInvariantFamily",
            "StrengthenedGraph147RankedShardMarginInvariantFamily",
            "StrengthenedGraph147RankedEvalMarginBundle",
            "rankedEvalMarginBundle_of_rankedEvalTargetTailObjectFamily",
            "rankedEvalMarginBundle_of_rankedEvalMarginObjectFamily",
            "rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily",
            "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
            "rootMarginBundle_of_rankedEvalMarginBundle",
        ],
    )
    plan_pivot_markers = contains_all(plan_tail, PLAN_PIVOT_MARKERS)

    all_socket = all(socket_symbols.values())
    all_ranked_eval = all(ranked_eval_symbols.values())
    all_target_tail_cases = all(target_tail_case_symbols.values())
    all_target_tail_case_socket = all(target_tail_case_socket_symbols.values())
    all_target_tail_case_margin_socket = all(
        target_tail_case_margin_socket_symbols.values()
    )
    all_semantic = all(
        all(symbols.values()) for symbols in semantic_symbols.values()
    )
    all_plan_tail = all(plan_tail_symbols.values())
    all_plan_pivot = all(plan_pivot_markers.values())
    status = (
        "ready_for_ranked_eval_margin_bundle_producer"
        if all_socket and all_ranked_eval and all_target_tail_cases
        and all_target_tail_case_socket and all_target_tail_case_margin_socket
        and all_semantic and full_graph_only
        and all_plan_tail and all_plan_pivot and not forbidden_hits
        else "ranked_transducer_frontier_incomplete"
    )

    data = {
        "status": status,
        "socket": {
            "file": str(DIRECT_SOCKET.relative_to(ROOT)),
            "symbols": socket_symbols,
            "forbidden_hits": forbidden_hits,
        },
        "ranked_eval_socket": {
            "file": str(RANKED_EVAL_SOCKET.relative_to(ROOT)),
            "symbols": ranked_eval_symbols,
        },
        "target_tail_cases": {
            "file": str(TARGET_TAIL_CASES.relative_to(ROOT)),
            "symbols": target_tail_case_symbols,
            "case_socket_file": str(
                TARGET_TAIL_CASE_SOCKET.relative_to(ROOT)
            ),
            "case_socket_symbols": target_tail_case_socket_symbols,
            "margin_socket_file": str(
                TARGET_TAIL_CASE_MARGIN_SOCKET.relative_to(ROOT)
            ),
            "margin_socket_symbols": target_tail_case_margin_socket_symbols,
            "language_audit_file": str(
                TARGET_TAIL_LANGUAGE_AUDIT.relative_to(ROOT)
            ),
            "tail_count": target_tail_language.get("tail_count"),
            "unique_tail_count": target_tail_language.get("unique_tail_count"),
            "first_face_histogram": target_tail_language.get(
                "first_face_histogram"
            ),
            "proof_relevance": (
                "Lean theorem is proof-relevant semantic tail-case evidence; "
                "JSON is diagnostic only."
            ),
        },
        "plan_tail": {
            "file": str(PLAN.relative_to(ROOT)),
            "symbols": plan_tail_symbols,
            "pivot_markers": plan_pivot_markers,
        },
        "semantic_inputs": {
            key: {
                "symbols": symbols,
                "file": str(
                    {
                        "target_cursor": TARGET_CURSOR,
                        "transducer_tail": TRANSDUCER_TAIL,
                        "transducer_eval": TRANSDUCER_EVAL,
                        "transducer_gate": TRANSDUCER_GATE,
                        "bellman_object": BELLMAN_OBJECT,
                        "bellman_semantic_gate": BELLMAN_SEMANTIC_GATE,
                        "bellman_potential": BELLMAN_POTENTIAL,
                    }[key].relative_to(ROOT)
                ),
            }
            for key, symbols in semantic_symbols.items()
        },
        "gauge_audit": {
            "file": str(GAUGE_AUDIT.relative_to(ROOT)),
            "decision": gauge_decision,
            "accepted_modes": gauge_accepted_modes,
            "full_graph_only": full_graph_only,
            "graph": {
                "states": graph.get("states"),
                "edges": graph.get("edges"),
                "finals": graph.get("finals"),
                "const_scaled": graph.get("const_scaled"),
                "root_potential_bounds": graph.get("root_potential_bounds"),
            },
        },
        "cocycle_quotient_audit": {
            "file": str(COCYCLE_QUOTIENT_AUDIT.relative_to(ROOT)),
            "decision": cocycle_quotient_decision,
            "accepted_modes": cocycle_quotient_accepted_modes,
            "quotient_not_margin_complete": quotient_not_margin_complete,
        },
        "object_margin_profile": {
            "file": str(OBJECT_MARGIN_PROFILE.relative_to(ROOT)),
            "exists": OBJECT_MARGIN_PROFILE.exists(),
            "proof_relevance": object_margin_profile.get("proof_relevance"),
            "graph147_class_count": object_margin_profile.get(
                "graph147_class_count"
            ),
            "graph147_total_observed_count": object_margin_profile.get(
                "graph147_total_observed_count"
            ),
            "all_prefix_gains_match_socket": object_margin_profile.get(
                "all_prefix_gains_match_socket"
            ),
            "all_margins_le_expected_bounds": object_margin_profile.get(
                "all_margins_le_expected_bounds"
            ),
            "all_margins_equal_expected_bounds": object_margin_profile.get(
                "all_margins_equal_expected_bounds"
            ),
            "next_producer_target": object_margin_profile.get(
                "next_producer_target"
            ),
            "interpretation": (
                "Diagnostic only: the existing 10M profile has four graph147 "
                "object classes, two per branch, whose margins exactly match "
                "the ranked-eval object bound.  The production theorem must "
                "prove the same bound semantically for graph147 objects."
            ),
        },
        "direct_margin_inv_producer": {
            "symbol": PRODUCTION_PRODUCER_SYMBOL,
            "present_outside_socket": direct_margin_inv_producer_present,
            "usages_outside_socket": producer_usages,
            "interpretation": (
                "No production producer has been found yet; the current Lean "
                "surface is a socket plus adapters.  The next proof step is "
                "to instantiate this socket from semantic margin evidence, "
                "not to scale selected-prefix or sampled-rank traces."
                if not direct_margin_inv_producer_present
                else "A candidate producer usage exists outside the socket and must be audited."
            ),
        },
        "selected_prefix_diagnostics": {
            "production_allowed": False,
            "interpretation": (
                "Selected-prefix, accepted-trace, and trace-margin artifacts "
                "may remain as discovery or smoke tools only.  They must not "
                "instantiate the graph147 production route; production must "
                "go through the semantic ranked transducer margin bundle or "
                "a checked semantic segment/cocycle quotient."
            ),
            "files": selected_prefix_diagnostics,
        },
        "root_trace_diagnostics": {
            "production_allowed": False,
            "interpretation": (
                "Closed root-trace and accepted-trace evaluator artifacts may "
                "remain as discovery or smoke tools only.  They must not be "
                "scaled as graph147 production coverage; production must "
                "prove deterministic evaluator membership from semantic "
                "closed-language state."
            ),
            "files": root_trace_diagnostics,
        },
        "raw_evaluator_reduction": {
            "production_allowed": False,
            "interpretation": (
                "Graph147 gain facts may be fields of a proof-carrying "
                "producer, or consequences of small generated step lemmas, "
                "but the adapter must not prove them by unfolding the whole "
                "ranked evaluator with a giant simp/decide reduction."
            ),
        },
        "remaining_fields": REMAINING_FIELDS,
        "production_route": PRODUCTION_ROUTE,
        "next_step": (
            "Generate or prove the semantic graph147 margin invariant "
            "producer.  The immediate target is "
            "StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily, "
            "whose fields are the two target-tail evaluator-gain facts plus "
            "the four `scaledMargin obj.rank <= -376` facts for the "
            "`yp,zm`/`zm,yp` object bounds over the two proved semantic "
            "target tails.  The margin socket adapts those fields to "
            "StrengthenedGraph147RankedEvalTargetTailCaseFamily, then to "
            "the target-tail object family and ranked-eval margin bundle.  "
            "TopPairingBellmanObj and the graph-exact semantic gate already "
            "provide the rank-plus-closed-object and closed-language-to-eval "
            "public surfaces, so the next theorem must fill the graph147 "
            "producer fields semantically rather than adding another "
            "object-cover adapter.  "
            "If a local invariant is the "
            "better proof "
            "shape, instantiate StrengthenedGraph147RankedShardMarginInvariantFamily "
            "from target-shadow cursor, schedule/square-gap/local-axis tail, "
            "pair-count/used-face facts, graph147 Bellman state semantics, or "
            "a checked segment/cocycle quotient.  The existing gauge-corrected "
            "full graph is only a diagnostic candidate; the existing quotient "
            "audit says no coarser quotient is margin-complete yet.  Do not "
            "use sampled ranks, selected prefixes, accepted trace ids, exact "
            "affine keys, per-observed-path membership, or raw evaluator "
            "unfolding as a hidden checker."
        ),
        "mandatory_pivot": {
            "marker": "mandatory_graph147_semantic_transducer_pivot",
            "meaning": (
                "Graph147 production must be a deterministic closed-language "
                "to evaluator theorem.  Selected-prefix/root-trace coverage "
                "is diagnostic only unless it is replaced by semantic local "
                "transition and margin invariant evidence.  The rank-plus-"
                "closed-object layer already exists; the remaining blocker is "
                "the semantic graph147 gain/margin producer."
            ),
            "plan_markers": plan_pivot_markers,
        },
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Graph147 Ranked Transducer Frontier",
        "",
        f"- status: `{status}`",
        f"- socket file: `{data['socket']['file']}`",
        f"- ranked eval socket: `{data['ranked_eval_socket']['file']}`",
        f"- forbidden hits: `{forbidden_hits if forbidden_hits else 'none'}`",
        "",
        "## Socket Symbols",
        "",
    ]
    for symbol, present in socket_symbols.items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.extend(["", "## Ranked Eval Socket Symbols", ""])
    for symbol, present in ranked_eval_symbols.items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.extend(["", "## Target-Tail Cases", ""])
    lines.append(f"- file: `{data['target_tail_cases']['file']}`")
    lines.append(
        f"- diagnostic language audit: `{data['target_tail_cases']['language_audit_file']}`"
    )
    lines.append(
        f"- case socket: `{data['target_tail_cases']['case_socket_file']}`"
    )
    lines.append(
        f"- margin socket: `{data['target_tail_cases']['margin_socket_file']}`"
    )
    lines.append(f"- tail count: `{data['target_tail_cases']['tail_count']}`")
    lines.append(
        f"- unique tail count: `{data['target_tail_cases']['unique_tail_count']}`"
    )
    lines.append(
        f"- first-face histogram: `{data['target_tail_cases']['first_face_histogram']}`"
    )
    for symbol, present in target_tail_case_symbols.items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.append("")
    lines.append("### Case Socket Symbols")
    lines.append("")
    for symbol, present in target_tail_case_socket_symbols.items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.append("")
    lines.append("### Margin Socket Symbols")
    lines.append("")
    for symbol, present in target_tail_case_margin_socket_symbols.items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.extend(["", "## Plan Tail Symbols", ""])
    lines.append(f"- file: `{data['plan_tail']['file']}`")
    for symbol, present in data["plan_tail"]["symbols"].items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.extend(["", "## Mandatory Pivot Markers", ""])
    for symbol, present in data["plan_tail"]["pivot_markers"].items():
        lines.append(f"- `{symbol}`: `{str(present).lower()}`")
    lines.extend(["", "## Semantic Inputs", ""])
    for key, entry in data["semantic_inputs"].items():
        lines.append(f"### {key}")
        lines.append("")
        lines.append(f"- file: `{entry['file']}`")
        for symbol, present in entry["symbols"].items():
            lines.append(f"- `{symbol}`: `{str(present).lower()}`")
        lines.append("")
    lines.extend(
        [
            "## Gauge Audit",
            "",
            f"- file: `{data['gauge_audit']['file']}`",
            f"- decision: `{data['gauge_audit']['decision']}`",
            f"- accepted modes: `{data['gauge_audit']['accepted_modes']}`",
            f"- full graph only: `{str(data['gauge_audit']['full_graph_only']).lower()}`",
            f"- graph states: `{data['gauge_audit']['graph']['states']}`",
            f"- graph edges: `{data['gauge_audit']['graph']['edges']}`",
            f"- graph finals: `{data['gauge_audit']['graph']['finals']}`",
            f"- const scaled: `{data['gauge_audit']['graph']['const_scaled']}`",
            "",
        ]
    )
    lines.extend(
        [
            "## Cocycle Quotient Audit",
            "",
            f"- file: `{data['cocycle_quotient_audit']['file']}`",
            f"- decision: `{data['cocycle_quotient_audit']['decision']}`",
            f"- accepted modes: `{data['cocycle_quotient_audit']['accepted_modes']}`",
            "- quotient not margin complete: "
            f"`{str(data['cocycle_quotient_audit']['quotient_not_margin_complete']).lower()}`",
            "",
            "## Object-Margin Profile",
            "",
            f"- file: `{data['object_margin_profile']['file']}`",
            f"- exists: `{str(data['object_margin_profile']['exists']).lower()}`",
            "- proof relevance: "
            f"`{data['object_margin_profile']['proof_relevance']}`",
            "- graph147 class count: "
            f"`{data['object_margin_profile']['graph147_class_count']}`",
            "- graph147 observed count: "
            f"`{data['object_margin_profile']['graph147_total_observed_count']}`",
            "- prefix gains match socket: "
            f"`{str(data['object_margin_profile']['all_prefix_gains_match_socket']).lower()}`",
            "- margins <= expected bounds: "
            f"`{str(data['object_margin_profile']['all_margins_le_expected_bounds']).lower()}`",
            "- margins equal expected bounds: "
            f"`{str(data['object_margin_profile']['all_margins_equal_expected_bounds']).lower()}`",
            f"- interpretation: {data['object_margin_profile']['interpretation']}",
            f"- next producer target: {data['object_margin_profile']['next_producer_target']}",
            "",
            "## Direct MarginInv Producer",
            "",
            f"- symbol: `{data['direct_margin_inv_producer']['symbol']}`",
            "- present outside socket: "
            f"`{str(data['direct_margin_inv_producer']['present_outside_socket']).lower()}`",
            f"- interpretation: {data['direct_margin_inv_producer']['interpretation']}",
            "",
        ]
    )
    lines.extend(
        [
            "## Selected-Prefix Diagnostics",
            "",
            "- production allowed: "
            f"`{str(data['selected_prefix_diagnostics']['production_allowed']).lower()}`",
            f"- interpretation: {data['selected_prefix_diagnostics']['interpretation']}",
            "",
        ]
    )
    for entry in data["selected_prefix_diagnostics"]["files"]:
        lines.append(f"### {entry['file']}")
        lines.append("")
        lines.append(f"- exists: `{str(entry['exists']).lower()}`")
        for symbol, present in entry["symbols"].items():
            lines.append(f"- `{symbol}`: `{str(present).lower()}`")
        lines.append("")
    lines.extend(
        [
            "## Root-Trace Diagnostics",
            "",
            "- production allowed: "
            f"`{str(data['root_trace_diagnostics']['production_allowed']).lower()}`",
            f"- interpretation: {data['root_trace_diagnostics']['interpretation']}",
            "",
        ]
    )
    for entry in data["root_trace_diagnostics"]["files"]:
        lines.append(f"### {entry['file']}")
        lines.append("")
        lines.append(f"- exists: `{str(entry['exists']).lower()}`")
        for symbol, present in entry["symbols"].items():
            lines.append(f"- `{symbol}`: `{str(present).lower()}`")
        lines.append("")
    lines.extend(
        [
            "## Raw Evaluator Reduction",
            "",
            "- production allowed: "
            f"`{str(data['raw_evaluator_reduction']['production_allowed']).lower()}`",
            f"- interpretation: {data['raw_evaluator_reduction']['interpretation']}",
            "",
        ]
    )
    lines.extend(["## Remaining Producer Fields", ""])
    for field in REMAINING_FIELDS:
        lines.append(f"- `{field['field']}`: {field['meaning']}")
    lines.extend(
        [
            "",
            "## Production Route",
            "",
            f"- keep: `{PRODUCTION_ROUTE['keep']}`",
            f"- target: `{PRODUCTION_ROUTE['target']}`",
            f"- fallback: {PRODUCTION_ROUTE['fallback']}",
            "",
            "Rejected production coordinates:",
            "",
        ]
    )
    for item in PRODUCTION_ROUTE["reject"]:
        lines.append(f"- {item}")
    lines.extend(
        [
            "",
            "## Mandatory Pivot",
            "",
            f"- marker: `{data['mandatory_pivot']['marker']}`",
            f"- meaning: {data['mandatory_pivot']['meaning']}",
            "",
        ]
    )
    lines.extend(["", "## Next Step", "", data["next_step"], ""])
    OUT_MD.write_text("\n".join(lines))

    print(json.dumps(data, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
