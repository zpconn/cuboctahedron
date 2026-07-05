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
not mention sampled/selected-prefix machinery.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/graph147_ranked_transducer_frontier.json"
OUT_MD = ROOT / "scripts/generated/graph147_ranked_transducer_frontier.md"

DIRECT_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket.lean"
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
        "meaning": "every accepted final state has nonnegative potential and proves the full-root margin bound",
    },
]


def read(path: Path) -> str:
    return path.read_text() if path.exists() else ""


def read_json(path: Path) -> dict:
    if not path.exists():
        return {}
    return json.loads(path.read_text())


def contains_all(text: str, symbols: list[str]) -> dict[str, bool]:
    return {symbol: symbol in text for symbol in symbols}


def main() -> None:
    direct_text = read(DIRECT_SOCKET)
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
    gauge_data = read_json(GAUGE_AUDIT)
    gauge_decision = gauge_data.get("decision")
    gauge_accepted_modes = gauge_data.get("accepted_modes", [])
    graph = gauge_data.get("graph", {})
    full_graph_only = (
        gauge_decision == "full_graph_margin_candidate_only"
        and gauge_accepted_modes == ["full"]
    )
    forbidden_hits = [
        term for term in FORBIDDEN_TERMS if term in direct_text
    ]

    all_socket = all(socket_symbols.values())
    all_semantic = all(
        all(symbols.values()) for symbols in semantic_symbols.values()
    )
    status = (
        "ready_for_ranked_transducer_invariant_producer"
        if all_socket and all_semantic and full_graph_only
        and not forbidden_hits
        else "ranked_transducer_frontier_incomplete"
    )

    data = {
        "status": status,
        "socket": {
            "file": str(DIRECT_SOCKET.relative_to(ROOT)),
            "symbols": socket_symbols,
            "forbidden_hits": forbidden_hits,
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
        "next_step": (
            "Generate or prove StrengthenedGraph147RankedTransducerInvariantFamily "
            "from target-shadow cursor, schedule/square-gap/local-axis tail, "
            "pair-count/used-face facts, and deterministic full-graph147 "
            "Bellman state semantics.  Do not use sampled ranks, selected "
            "prefixes, accepted trace ids, exact affine keys, or "
            "per-observed-path membership.  If the proof needs those, stop and "
            "switch to a segment/cocycle quotient experiment."
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Graph147 Ranked Transducer Frontier",
        "",
        f"- status: `{status}`",
        f"- socket file: `{data['socket']['file']}`",
        f"- forbidden hits: `{', '.join(forbidden_hits) if forbidden_hits else 'none'}`",
        "",
        "## Socket Symbols",
        "",
    ]
    for symbol, present in socket_symbols.items():
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
    lines.extend(["", "## Next Step", "", data["next_step"], ""])
    OUT_MD.write_text("\n".join(lines))

    print(json.dumps(data, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
