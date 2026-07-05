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
TARGET_CURSOR = ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean"
TRANSDUCER_TAIL = ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean"
TRANSDUCER_EVAL = ROOT / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean"
TRANSDUCER_GATE = ROOT / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean"
BELLMAN_POTENTIAL = ROOT / "Cuboctahedron/Search/BellmanPotential.lean"
GAUGE_AUDIT = ROOT / "scripts/generated/graph147_gauge_corrected_potential_0_10M.json"
COCYCLE_QUOTIENT_AUDIT = (
    ROOT / "scripts/generated/graph147_cocycle_quotient_potential_0_10M.json"
)

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
    "graph147RankedEval_margin_of_suffixInvariant",
    "StrengthenedGraph147RankedEvalMarginInvariantFamily",
    "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
    "rootMarginBundle_of_rankedEvalMarginInvariantFamily_via_rankedEvalMarginBundle",
    "StrengthenedGraph147RankedShardMarginInvariantFamily",
    "Graph147RankedSuffixEvalMarginInv",
    "rankedShardMarginInvariantFamily_of_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedEvalMarginBundle_via_suffixEvalMarginInv",
    "rankedEvalMarginInvariantFamily_of_rankedShardMarginInvariantFamily",
    "rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily",
    "rootMarginBundle_of_rankedShardMarginInvariantFamily_via_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedEvalMarginBundle",
    "rankedEvalMarginBundle_of_graphExactEvalGate",
    "rootMarginBundle_of_graphExactEvalGate_via_rankedEvalMarginBundle",
    "rankedEvalMarginBundle_of_rankedTransducerInvariantFamily",
    "rootMarginBundle_of_rankedTransducerInvariantFamily_via_rankedEvalMarginBundle",
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
    ],
    "target": (
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
    "No selected-prefix/root-trace scaling",
    "StrengthenedGraph147RankedShardMarginInvariantFamily",
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


def tail_text(text: str, lines: int = 260) -> str:
    return "\n".join(text.splitlines()[-lines:])


def main() -> None:
    direct_text = read(DIRECT_SOCKET)
    ranked_eval_text = read(RANKED_EVAL_SOCKET)
    plan_tail = tail_text(read(PLAN))
    semantic_files = {
        "target_cursor": read(TARGET_CURSOR),
        "transducer_tail": read(TRANSDUCER_TAIL),
        "transducer_eval": read(TRANSDUCER_EVAL),
        "transducer_gate": read(TRANSDUCER_GATE),
        "bellman_potential": read(BELLMAN_POTENTIAL),
    }

    semantic_symbols = {
        key: contains_all(semantic_files[key], symbols)
        for key, symbols in SEMANTIC_INPUT_SYMBOLS.items()
    }
    socket_symbols = contains_all(direct_text, SOCKET_SYMBOLS)
    ranked_eval_symbols = contains_all(ranked_eval_text, RANKED_EVAL_SYMBOLS)
    gauge_data = read_json(GAUGE_AUDIT)
    cocycle_quotient_data = read_json(COCYCLE_QUOTIENT_AUDIT)
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
            "StrengthenedGraph147RankedEvalMarginInvariantFamily",
            "StrengthenedGraph147RankedShardMarginInvariantFamily",
            "StrengthenedGraph147RankedEvalMarginBundle",
            "rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily",
            "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
            "rootMarginBundle_of_rankedEvalMarginBundle",
        ],
    )
    plan_pivot_markers = contains_all(plan_tail, PLAN_PIVOT_MARKERS)

    all_socket = all(socket_symbols.values())
    all_ranked_eval = all(ranked_eval_symbols.values())
    all_semantic = all(
        all(symbols.values()) for symbols in semantic_symbols.values()
    )
    all_plan_tail = all(plan_tail_symbols.values())
    all_plan_pivot = all(plan_pivot_markers.values())
    status = (
        "ready_for_ranked_eval_margin_bundle_producer"
        if all_socket and all_ranked_eval and all_semantic and full_graph_only
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
        "remaining_fields": REMAINING_FIELDS,
        "production_route": PRODUCTION_ROUTE,
        "next_step": (
            "Generate or prove the semantic graph147 margin invariant "
            "producer.  The immediate target is an instance of "
            "StrengthenedGraph147RankedShardMarginInvariantFamily, whose "
            "MarginInv is driven by target-shadow cursor, schedule/"
            "square-gap/local-axis tail, pair-count/used-face facts, "
            "graph147 Bellman state semantics, or a checked segment/cocycle "
            "quotient.  The existing gauge-corrected full graph is only a "
            "diagnostic candidate; the existing quotient audit says no "
            "coarser quotient is margin-complete yet.  Do not use sampled "
            "ranks, selected prefixes, accepted trace ids, exact affine keys, "
            "or per-observed-path membership."
        ),
        "mandatory_pivot": {
            "marker": "mandatory_graph147_semantic_transducer_pivot",
            "meaning": (
                "Graph147 production must be a deterministic closed-language "
                "to evaluator theorem.  Selected-prefix/root-trace coverage "
                "is diagnostic only unless it is replaced by semantic local "
                "transition and margin invariant evidence."
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
            "## Direct MarginInv Producer",
            "",
            f"- symbol: `{data['direct_margin_inv_producer']['symbol']}`",
            "- present outside socket: "
            f"`{str(data['direct_margin_inv_producer']['present_outside_socket']).lower()}`",
            f"- interpretation: {data['direct_margin_inv_producer']['interpretation']}",
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
