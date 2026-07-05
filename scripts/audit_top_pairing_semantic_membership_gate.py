#!/usr/bin/env python3
"""Audit the next semantic-membership gate for top-pairing Bellman.

This is a documentation/progress audit, not proof.  It reads the small Lean
socket files that already build and records the concrete theorem surface that
must replace sampled rank/path membership before the Bellman route can scale.
It deliberately does not enumerate ranks or execute generated evidence.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_semantic_membership_gate.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_semantic_membership_gate.md"

FILES = {
    "language": ROOT / "Cuboctahedron/Search/BellmanTopPairingLanguage.lean",
    "top_pairing_object": ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean",
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "transducer_semantic_gate": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean",
    "semantic_eval_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticEvalSocket.lean",
    "selected_prefix_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginSocket.lean",
    "selected_prefix_object_cover": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginObjectCover.lean",
    "selected_prefix_killed_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginKilledSocket.lean",
    "terminal_direct_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalDirectSequenceSocket.lean",
    "terminal_trace_membership_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedTerminalTraceMembershipSocket.lean",
    "closed_transducer_producer_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedTransducerProducerSocket.lean",
    "depth11_graph_path_providers": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticStateDAGDepth11GraphPathProvidersSmoke.lean",
    "trace_margin_bounds_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTraceMarginBoundsSocket.lean",
}

REQUIRED_SYMBOLS = {
    "TopPairingClosedLanguageAtRank": "closed semantic front door",
    "TopPairingStrengthenedClosedLanguageAtRank": "actual omni + sequence/bad-face carrier",
    "TopPairingTransducerTail": "target cursor + schedule/square-gap/local-axis suffix carrier",
    "topPairingTriCursor_of_closed": "closed language to target-shadow cursor bridge",
    "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix": "ranked semantic evaluator gate",
    "StrengthenedTerminalTraceMembership": "semantic terminal trace membership target",
    "StrengthenedClosedTransducerProducer": "rank-local semantic transducer production bundle",
    "StrengthenedClosedTransducerProducerAll": "all-rank semantic transducer production bundle",
    "StrengthenedClosedTransducerMachineProducerAll": "preferred machine-shaped all-rank producer target",
    "Split10MDepth11GraphPathProducer": "graph-state-indexed depth-11 suffix target",
    "Depth11GraphPathClassCase": "bounded depth-11 semantic class+graph-state cases",
    "Split10MFinalMarginProducer": "remaining final integer margin producer target",
    "SelectedPrefixTraceMarginSequenceBadFace": "selected-prefix production socket predicate",
    "SelectedPrefixTraceMarginFamily": "selected-prefix margin family target",
    "evalLanguage_of_strengthenedSelectedPrefixTraceMargin": "selected-prefix eval-language bridge",
    "strengthenedSelectedPrefixTraceMargin_scaledMargin_nonpos": "selected-prefix margin bound bridge",
    "selectedPrefixTraceMarginObjectCover": "semantic object-cover bridge",
    "selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation": "killed-predicate bridge",
    "TerminalTracePrefixSharedGainClosedMarginFamily": "direct prefix/shared-gain fallback target",
    "TerminalDirectClosedFamily": "terminal direct alternative socket",
    "GraphAcceptedEvalSequenceBadFace": "generic graph-accepted eval socket",
}

DIAGNOSTIC_ONLY_FILES = {
    "selected_prefix_socket",
    "selected_prefix_object_cover",
    "selected_prefix_killed_socket",
}

FORBIDDEN_MEMBERSHIP_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "sampledSmokeNext",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text() if path.exists() else ""


def scan_file(path: Path) -> dict[str, Any]:
    text = read(path)
    return {
        "path": rel(path),
        "exists": path.exists(),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "symbols": {
            symbol: len(re.findall(rf"\b{re.escape(symbol)}\b", text))
            for symbol in REQUIRED_SYMBOLS
            if re.search(rf"\b{re.escape(symbol)}\b", text)
        },
        "forbidden_membership_hits": {
            token: len(re.findall(rf"\b{re.escape(token)}\b", text))
            for token in FORBIDDEN_MEMBERSHIP_TOKENS
            if re.search(rf"\b{re.escape(token)}\b", text)
        },
    }


def symbol_locations(scans: dict[str, dict[str, Any]]) -> dict[str, list[str]]:
    locations: dict[str, list[str]] = {symbol: [] for symbol in REQUIRED_SYMBOLS}
    for name, scan in scans.items():
        for symbol in scan["symbols"]:
            locations[symbol].append(name)
    return {symbol: names for symbol, names in locations.items() if names}


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Semantic Membership Gate",
        "",
        "This audit is diagnostic status evidence, not proof.  It records the",
        "next Bellman experiment recommended by the latest GPT5.5 reviews: keep",
        "Bellman, but make the membership theorem semantic and deterministic.",
        "Selected-prefix artifacts are diagnostic only and must not be scaled as",
        "production membership.",
        "",
        f"- decision: `{report['decision']}`",
        f"- sampled membership hits in selected surfaces: `{report['sampled_hit_count']}`",
        f"- selected-prefix hits in production surfaces: `{report['selected_prefix_production_hit_count']}`",
        "",
        "## Concrete Gate",
        "",
        "The next production theorem should target the semantic terminal",
        "transducer socket, not selected-prefix or sampled object tables:",
        "",
        "```lean",
        "structure StrengthenedClosedTransducerMachineProducerAll",
        "    {StateId : Type}",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (machine : TerminalStepStatePartialMachine StateId)",
        "    (start : StateId) : Prop where",
        "  terminal :",
        "    forall rank,",
        "      TopPairingStrengthenedClosedLanguageAtRank",
        "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
        "      TerminalContainedEvalPrefixGate machine start rank",
        "  depth11GraphPath :",
        "    forall rank,",
        "      TopPairingStrengthenedClosedLanguageAtRank",
        "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
        "      Split10MDepth11GraphPathProducer rank",
        "  finalMargin :",
        "    forall rank,",
        "      TopPairingStrengthenedClosedLanguageAtRank",
        "        AcceptedSequenceBadFaceAtRank rank Face.ym ->",
        "      Split10MFinalMarginProducer scaledMargin rank",
        "```",
        "",
        "A smaller intermediate theorem may target the terminal-membership socket:",
        "",
        "```lean",
        "def StrengthenedTerminalTraceMembership : Prop :=",
        "  forall rank,",
        "    TopPairingStrengthenedClosedLanguageAtRank",
        "      AcceptedSequenceBadFaceAtRank rank Face.ym ->",
        "    TerminalTraceLabels (topPairingRankFaceLabels rank)",
        "```",
        "",
        "## Why `TopPairingClosedLanguageAtRank` Alone Is Not Enough",
        "",
        "`TopPairingClosedLanguageAtRank rank Face.ym` supplies the closed",
        "top-pairing semantic language.  The production route needs the",
        "strengthened predicate because it additionally carries:",
        "",
        "- `TopPairingActualFaceOmniAtRank rank`",
        "- `AcceptedSequenceBadFaceAtRank rank Face.ym` or the eventual semantic",
        "  branch-margin predicate",
        "",
        "The selected-prefix margin sockets remain useful for comparison and",
        "bounded smokes, but the production membership theorem should go through",
        "the target cursor, semantic tail, terminal machine, depth-11 graph-path",
        "provider, and final-margin producer.",
        "",
        "## Symbol Locations",
        "",
        "| symbol | role | files |",
        "| --- | --- | --- |",
    ]
    for symbol, role in REQUIRED_SYMBOLS.items():
        files = ", ".join(f"`{name}`" for name in report["symbol_locations"].get(symbol, []))
        lines.append(f"| `{symbol}` | {role} | {files or 'missing'} |")

    lines.extend(
        [
            "",
            "## Selected Surfaces",
            "",
            "| file | lines | sampled-token hits | diagnostic only | key symbols |",
            "| --- | ---: | ---: | --- | --- |",
        ]
    )
    for name, scan in report["files"].items():
        sampled = sum(scan["forbidden_membership_hits"].values())
        symbols = ", ".join(f"`{s}`" for s in sorted(scan["symbols"])) or "none"
        diagnostic = "yes" if name in DIAGNOSTIC_ONLY_FILES else "no"
        lines.append(
            f"| `{name}` | `{scan['lines']}` | `{sampled}` | "
            f"`{diagnostic}` | {symbols} |"
        )

    lines.extend(
        [
            "",
            "## Go/No-Go Rule",
            "",
            "Continue Bellman only if the next theorem is proved semantically from",
            "closed/strengthened top-pairing language into the terminal machine,",
            "depth-11 graph-path, and final-margin producer sockets.  Stop and",
            "pivot to cancellation-tree summary automata if the proof requires any",
            "of:",
            "",
            "- sampled rank/path objects;",
            "- selected-prefix ids as production membership;",
            "- exact affine-RHS keys;",
            "- one generated branch per rank;",
            "- a giant Boolean checker over accepted paths.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    scans = {name: scan_file(path) for name, path in FILES.items()}
    sampled_hit_count = sum(
        sum(scan["forbidden_membership_hits"].values()) for scan in scans.values()
    )
    selected_prefix_production_hit_count = sum(
        sum(
            1
            for symbol in scan["symbols"]
            if symbol.startswith("SelectedPrefix")
            or symbol.startswith("selectedPrefix")
        )
        for name, scan in scans.items()
        if name not in DIAGNOSTIC_ONLY_FILES
    )
    locations = symbol_locations(scans)

    required_present = all(symbol in locations for symbol in REQUIRED_SYMBOLS)
    decision = (
        "continue-bellman-for-semantic-terminal-membership-slice"
        if required_present
        and sampled_hit_count == 0
        and selected_prefix_production_hit_count == 0
        else "review-before-continuing-bellman"
    )

    report = {
        "mode": "top-pairing-semantic-membership-gate-audit",
        "decision": decision,
        "sampled_hit_count": sampled_hit_count,
        "selected_prefix_production_hit_count": (
            selected_prefix_production_hit_count
        ),
        "files": scans,
        "symbol_locations": locations,
        "next_theorem": {
            "preferred": (
                "StrengthenedClosedTransducerMachineProducerAll scaledMargin "
                "machine start"
            ),
            "fallback": (
                "StrengthenedTerminalTraceMembership plus "
                "Split10MDepth11GraphPathProducer plus "
                "Split10MFinalMarginProducer"
            ),
            "status": (
                "depth-11 graph-path provider exists for observed classes; "
                "semantic terminal/margin membership remains open"
            ),
        },
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report) + "\n")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={decision}")


if __name__ == "__main__":
    main()
