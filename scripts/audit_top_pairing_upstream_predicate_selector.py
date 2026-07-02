#!/usr/bin/env python3
"""Select the concrete upstream predicate for the next top-pairing proof slice.

This is a lightweight repository audit.  It records the current predicate chain
around the selected-prefix Bellman cover so the next proof does not keep using
the schematic name `FullTopPairingResidualLanguageAtRank`.

Current strategy note: the direct start-violation surface remains the preferred
downstream killed consumer, but the active Bellman experiment is now the
producer-side semantic evaluator gate.  The immediate frontier is the theorem
that turns an upstream residual classifier into either the strengthened
selected-prefix semantic predicate directly, or into the ingredients
`RootTraceMarginProducer`, `TopPairingActualFaceOmniAtRank`, and
`AcceptedSequenceBadFaceAtRank` consumed by the existing selected-prefix bridge.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_upstream_predicate_selector.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_upstream_predicate_selector.md"

FILES = {
    "selected_prefix_cover_root": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStateDAGSelectedPrefixCover/All.lean",
    "selected_prefix_cover_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixCoverSocket.lean",
    "selected_prefix_trace_margin_cover_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginCoverBridge.lean",
    "selected_prefix_cover_membership_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixCoverMembershipBridge.lean",
    "root_trace_margin_selected_prefix_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingRootTraceMarginSelectedPrefixBridge.lean",
    "trace_margin_root_producer_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTraceMarginRootProducerBridge.lean",
    "selected_prefix_trace_margin_root_producer_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginRootProducerBridge.lean",
    "selected_prefix_cover_root_producer_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixCoverRootProducerBridge.lean",
    "selected_prefix_trace_margin_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginSocket.lean",
    "selected_prefix_killed_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginKilledSocket.lean",
    "terminal_direct_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTerminalDirectBridge.lean",
    "terminal_direct_killed_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalDirectStartViolationKilledBridge.lean",
    "selected_prefix_direct_killed_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixDirectStartViolationKilledBridge.lean",
}

SYMBOLS = {
    "SelectedPrefixCoverFamily": "bounded selected-prefix state-DAG cover",
    "selectedPrefixCover_evalLanguage": "cover -> Bellman eval language",
    "selectedPrefixCover_scaledMargin_nonpos": "cover -> nonpositive margin",
    "SelectedPrefixCoverSequenceBadFace": "strengthened-language payload for cover",
    "evalLanguage_of_strengthenedSelectedPrefixCover": "strengthened cover -> eval language",
    "strengthenedSelectedPrefixCover_scaledMargin_nonpos": "strengthened cover -> nonpositive margin",
    "selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily": "cover -> trace-margin family",
    "selectedPrefixTraceMarginSequenceBadFace_of_selectedPrefixCoverFamily": "cover -> trace-margin payload",
    "strengthenedTraceMargin_of_strengthenedSelectedPrefixCover": "strengthened cover -> strengthened trace-margin",
    "strengthenedSelectedPrefixCover_of_terminalAcceptedEval": "terminal-accepted eval -> strengthened selected-prefix cover",
    "RootTraceMarginProducer": "root accepted-prefix producer plus trace margin",
    "graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer": "root trace-margin producer -> graph margin object",
    "terminalAcceptedEvalSequenceBadFace_of_rootTraceMarginProducer": "root trace-margin producer -> terminal-accepted eval payload",
    "strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer": "root trace-margin producer -> strengthened terminal-accepted eval",
    "strengthenedSelectedPrefixCover_of_rootTraceMarginProducer": "root trace-margin producer -> strengthened selected-prefix cover",
    "selectedPrefixCover_evalLanguage_of_rootTraceMarginProducer": "root trace-margin producer -> Bellman eval language",
    "selectedPrefixCover_scaledMargin_nonpos_of_rootTraceMarginProducer": "root trace-margin producer -> nonpositive margin",
    "terminalProducerRootFamily_of_terminalTraceIdBucketClosedMarginFamily": "trace-id bucket -> accepted-prefix root",
    "rootTraceMarginProducer_of_terminalTraceIdBucketClosedMarginFamily": "trace-id bucket -> root trace-margin producer",
    "rootTraceMarginProducer_of_terminalTraceIdSharedGainBucketClosedMarginFamily": "shared-gain bucket -> root trace-margin producer",
    "rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily": "prefix shared-gain family -> root trace-margin producer",
    "SelectedPrefixTraceMarginFamily": "selected prefix trace-margin OR-family",
    "rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily": "selected prefix trace-margin family -> root trace-margin producer",
    "rootTraceMarginProducer_of_selectedPrefixCoverFamily": "selected-prefix cover -> root trace-margin producer",
    "selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation": "trace-margin object cover + certs -> killed predicate",
    "TerminalDirectClosedFamily": "terminal direct semantic alternative",
    "terminalDirectClosedFamily_of_selectedPrefixTraceMarginFamily": "trace-margin family -> terminal direct",
    "terminalDirectClosedFamily_of_selectedPrefixCoverFamily": "selected-prefix cover -> terminal direct",
    "nonIdentityRankKilled_of_terminalDirectClosedFamily": "terminal direct -> killed predicate",
    "nonIdentityRankKilled_of_selectedPrefixCoverFamily": "selected-prefix cover -> killed predicate",
}

FORBIDDEN_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "sampledSmokeNext",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def scan(path: Path) -> dict[str, Any]:
    text = path.read_text() if path.exists() else ""
    return {
        "path": rel(path),
        "exists": path.exists(),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "symbols": {
            symbol: len(re.findall(rf"\b{re.escape(symbol)}\b", text))
            for symbol in SYMBOLS
            if re.search(rf"\b{re.escape(symbol)}\b", text)
        },
        "forbidden_hits": {
            token: len(re.findall(rf"\b{re.escape(token)}\b", text))
            for token in FORBIDDEN_TOKENS
            if re.search(rf"\b{re.escape(token)}\b", text)
        },
    }


def locations(scans: dict[str, dict[str, Any]]) -> dict[str, list[str]]:
    result: dict[str, list[str]] = {symbol: [] for symbol in SYMBOLS}
    for name, file_scan in scans.items():
        for symbol in file_scan["symbols"]:
            result[symbol].append(name)
    return {symbol: names for symbol, names in result.items() if names}


def render(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Upstream Predicate Selector",
        "",
        "This audit is diagnostic status evidence, not proof.  It replaces the",
        "schematic next-target name `FullTopPairingResidualLanguageAtRank` with",
        "the concrete predicate chain currently available in the repo.",
        "",
        f"- decision: `{report['decision']}`",
        f"- sampled-token hits in selected surfaces: `{report['sampled_hit_count']}`",
        "",
        "## Selected Predicate Chain",
        "",
        "The preferred downstream killed consumer is still the direct",
        "start-violation surface:",
        "",
        "```lean",
        "TerminalDirectClosedFamily rank",
        "```",
        "",
        "It is consumed by:",
        "",
        "```lean",
        "nonIdentityRankKilled_of_terminalDirectClosedFamily :",
        "  TerminalDirectClosedFamily rank ->",
        "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank",
        "```",
        "",
        "The current bounded selected-prefix cover already feeds it:",
        "",
        "```lean",
        "SelectedPrefixCoverFamily scaledMargin rank ->",
        "  TerminalDirectClosedFamily rank",
        "SelectedPrefixCoverFamily scaledMargin rank ->",
        "  Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank",
        "```",
        "",
        "The active Bellman producer frontier is:",
        "",
        "```lean",
        "RootTraceMarginProducer scaledMargin rank",
        "TopPairingActualFaceOmniAtRank rank",
        "AcceptedSequenceBadFaceAtRank rank Face.ym",
        "```",
        "",
        "Those three semantic ingredients already bridge to:",
        "",
        "```lean",
        "TopPairingStrengthenedClosedLanguageAtRank",
        "  (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym",
        "TopPairingBellmanEvalLanguageAtRank ... scaledMargin rank Face.ym",
        "scaledMargin rank <= 0",
        "```",
        "",
        "It can now be produced from:",
        "",
        "```lean",
        "TerminalTraceIdBucketClosedMarginFamily allowedTraceId scaledMargin rank",
        "TerminalTraceIdSharedGainBucketClosedMarginFamily allowedTraceId gain scaledMargin rank",
        "TerminalTracePrefixSharedGainClosedMarginFamily pfx gain scaledMargin rank",
        "```",
        "",
        "and the generated selected-prefix trace-margin family now feeds it:",
        "",
        "```lean",
        "SelectedPrefixTraceMarginFamily scaledMargin rank",
        "  -> RootTraceMarginProducer scaledMargin rank",
        "SelectedPrefixCoverFamily scaledMargin rank",
        "  -> RootTraceMarginProducer scaledMargin rank",
        "```",
        "",
        "The selected-prefix cover itself is:",
        "",
        "```lean",
        "SelectedPrefixCoverFamily scaledMargin rank",
        "```",
        "",
        "It already has bridges to:",
        "",
        "```lean",
        "SelectedPrefixTraceMarginFamily scaledMargin rank",
        "SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym",
        "TopPairingStrengthenedClosedLanguageAtRank",
        "  (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym",
        "TopPairingBellmanEvalLanguageAtRank ... scaledMargin rank Face.ym",
        "scaledMargin rank <= 0",
        "```",
        "",
        "The next Bellman semantic-membership theorem should therefore be",
        "stated against the actual upstream residual classifier once selected,",
        "with this preferred producer shape:",
        "",
        "```lean",
        "forall rank,",
        "  ProductionTopPairingResidualAtRank rank ->",
        "    RootTraceMarginProducer scaledMargin rank /\\",
        "    TopPairingActualFaceOmniAtRank rank /\\",
        "    AcceptedSequenceBadFaceAtRank rank Face.ym",
        "```",
        "",
        "The strongest acceptable version is the direct strengthened selected-",
        "prefix socket:",
        "",
        "```lean",
        "forall rank,",
        "  ProductionTopPairingResidualAtRank rank ->",
        "    TopPairingStrengthenedClosedLanguageAtRank",
        "      (SelectedPrefixCoverSequenceBadFace scaledMargin)",
        "      rank Face.ym",
        "```",
        "",
        "A direct theorem to the selected-prefix cover is also acceptable:",
        "",
        "```lean",
        "forall rank,",
        "  ProductionTopPairingResidualAtRank rank ->",
        "    SelectedPrefixCoverFamily scaledMargin rank",
        "```",
        "",
        "The downstream direct-killed target remains valid after producer",
        "membership is established:",
        "",
        "```lean",
        "forall rank,",
        "  ProductionTopPairingResidualAtRank rank ->",
        "    TerminalDirectClosedFamily rank",
        "```",
        "",
        "The theorem must remain semantic.  It should not introduce a sampled",
        "rank/path object or one branch per concrete rank.",
        "",
        "## Symbol Locations",
        "",
        "| symbol | role | files |",
        "| --- | --- | --- |",
    ]
    for symbol, role in SYMBOLS.items():
        files = ", ".join(f"`{name}`" for name in report["symbol_locations"].get(symbol, []))
        lines.append(f"| `{symbol}` | {role} | {files or 'missing'} |")

    lines.extend(
        [
            "",
            "## Selected Files",
            "",
            "| file | lines | sampled-token hits | key symbols |",
            "| --- | ---: | ---: | --- |",
        ]
    )
    for name, file_scan in report["files"].items():
        sampled = sum(file_scan["forbidden_hits"].values())
        symbols = ", ".join(f"`{s}`" for s in sorted(file_scan["symbols"])) or "none"
        lines.append(f"| `{name}` | `{file_scan['lines']}` | `{sampled}` | {symbols} |")

    lines.extend(
        [
            "",
            "## Strategy Implication",
            "",
        "Do not build another Bellman potential or sampled smoke next.  The",
        "next useful Lean/generator work is a semantic producer theorem into",
        "`RootTraceMarginProducer` plus the actual/bad-face facts, or directly",
        "into `TopPairingStrengthenedClosedLanguageAtRank",
        "(SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym`.",
        "The terminal-direct bridge remains the downstream killed consumer, not",
        "the producer-side membership proof.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    scans = {name: scan(path) for name, path in FILES.items()}
    symbol_locations = locations(scans)
    sampled_hit_count = sum(sum(s["forbidden_hits"].values()) for s in scans.values())
    required = [
        "SelectedPrefixCoverFamily",
        "selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily",
        "SelectedPrefixCoverSequenceBadFace",
        "evalLanguage_of_strengthenedSelectedPrefixCover",
        "RootTraceMarginProducer",
        "strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer",
        "strengthenedSelectedPrefixCover_of_rootTraceMarginProducer",
        "rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily",
        "rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily",
        "rootTraceMarginProducer_of_selectedPrefixCoverFamily",
        "selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation",
        "TerminalDirectClosedFamily",
        "terminalDirectClosedFamily_of_selectedPrefixCoverFamily",
        "nonIdentityRankKilled_of_selectedPrefixCoverFamily",
    ]
    missing = [symbol for symbol in required if symbol not in symbol_locations]
    decision = (
        "target-root-trace-margin-to-strengthened-selected-prefix"
        if not missing and sampled_hit_count == 0
        else "review-selected-prefix-predicate-chain"
    )

    report = {
        "mode": "top-pairing-upstream-predicate-selector",
        "decision": decision,
        "sampled_hit_count": sampled_hit_count,
        "missing_required_symbols": missing,
        "files": scans,
        "symbol_locations": symbol_locations,
        "next_theorem": {
            "preferred": (
                "forall rank, ProductionTopPairingResidualAtRank rank -> "
                "RootTraceMarginProducer scaledMargin rank /\\ "
                "TopPairingActualFaceOmniAtRank rank /\\ "
                "AcceptedSequenceBadFaceAtRank rank Face.ym"
            ),
            "strengthened_selected_prefix": (
                "forall rank, ProductionTopPairingResidualAtRank rank -> "
                "TopPairingStrengthenedClosedLanguageAtRank "
                "(SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym"
            ),
            "selected_prefix_cover": (
                "forall rank, ProductionTopPairingResidualAtRank rank -> "
                "SelectedPrefixCoverFamily scaledMargin rank"
            ),
            "downstream_killed_consumer": (
                "forall rank, ProductionTopPairingResidualAtRank rank -> "
                "TerminalDirectClosedFamily rank"
            ),
        },
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render(report) + "\n")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={decision}")


if __name__ == "__main__":
    main()
