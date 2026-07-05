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
GAUGE_AUDIT = ROOT / "scripts/generated/graph147_gauge_corrected_potential_0_10M.json"

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
            "local preservation plus a final empty-suffix margin theorem; the "
            "remaining hard part is to instantiate that invariant from closed "
            "target cursor, schedule, local-axis, and full graph147 state facts"
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
    }

    semantic_symbols = {
        key: contains_all(semantic_files[key], symbols)
        for key, symbols in SEMANTIC_INPUT_SYMBOLS.items()
    }
    socket_symbols = contains_all(direct_text, SOCKET_SYMBOLS)
    ranked_eval_symbols = contains_all(ranked_eval_text, RANKED_EVAL_SYMBOLS)
    gauge_data = read_json(GAUGE_AUDIT)
    gauge_decision = gauge_data.get("decision")
    gauge_accepted_modes = gauge_data.get("accepted_modes", [])
    graph = gauge_data.get("graph", {})
    full_graph_only = (
        gauge_decision == "full_graph_margin_candidate_only"
        and gauge_accepted_modes == ["full"]
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
            "StrengthenedGraph147RankedEvalMarginInvariantFamily",
            "StrengthenedGraph147RankedEvalMarginBundle",
            "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
            "rootMarginBundle_of_rankedEvalMarginBundle",
        ],
    )

    all_socket = all(socket_symbols.values())
    all_ranked_eval = all(ranked_eval_symbols.values())
    all_semantic = all(
        all(symbols.values()) for symbols in semantic_symbols.values()
    )
    all_plan_tail = all(plan_tail_symbols.values())
    status = (
        "ready_for_ranked_eval_margin_bundle_producer"
        if all_socket and all_ranked_eval and all_semantic and full_graph_only
        and all_plan_tail and not forbidden_hits
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
        "remaining_fields": REMAINING_FIELDS,
        "production_route": PRODUCTION_ROUTE,
        "next_step": (
            "Generate or prove the semantic graph147 margin theorem over the "
            "deterministic ranked evaluator result, then package it as "
            "StrengthenedGraph147RankedEvalMarginBundle.  The theorem "
            "must use target-shadow cursor, schedule/square-gap/local-axis "
            "tail, pair-count/used-face facts, graph147 Bellman state "
            "semantics, or a checked segment/cocycle quotient.  Do not use "
            "sampled ranks, selected prefixes, accepted trace ids, exact "
            "affine keys, or per-observed-path membership."
        ),
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
    lines.extend(["", "## Next Step", "", data["next_step"], ""])
    OUT_MD.write_text("\n".join(lines))

    print(json.dumps(data, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
