#!/usr/bin/env python3
"""Audit the direct top-pairing residual producer boundary.

This is a source-structure audit, not proof.  It records which semantic
classifier stages already exist between a closed top-pairing rank and the new
`TerminalDirectResidualRankCovered` / `SelectedPrefixResidualRankCovered`
residual-bridge targets.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/top_pairing_direct_residual_producer.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_direct_residual_producer.md"

FILES = {
    "residual_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixResidualBridge.lean",
    "terminal_direct_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalDirectSequenceSocket.lean",
    "depth7_all": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Depth7/All.lean",
    "depth8_all": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Depth8/All.lean",
    "depth9_root_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Depth9/RootSmoke.lean",
    "terminal_ok": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/TerminalOk.lean",
    "terminal_all": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Terminal/All.lean",
    "accepted": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Accepted.lean",
    "producer_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalProducerCoverageBridge.lean",
}

SYMBOLS = {
    "TerminalDirectResidualRankCovered": "new direct residual target",
    "SelectedPrefixResidualRankCovered": "new selected-prefix residual fallback target",
    "residualRankKilled_of_terminalDirectResidualRankCovered": "direct target -> ResidualRankKilled",
    "residualRankKilled_of_selectedPrefixResidualRankCovered": "selected-prefix target -> ResidualRankKilled",
    "TerminalDirectClosedFamily": "direct terminal family socket",
    "nonIdentityRankKilled_of_terminalDirectClosedFamily": "terminal direct -> killed predicate",
    "closedRank_prefix7": "closed rank -> depth-7 prefix disjunction",
    "closedRank_prefix8": "closed rank -> depth-8 classifier",
    "Depth8TraceLabels": "depth-8 classifier predicate",
    "Depth9Shard000Labels": "bounded depth-9 shard smoke predicate",
    "depth9Shard000Labels_of_closed_parent": "bounded depth-9 semantic smoke theorem",
    "TerminalTraceLabels": "terminal trace split predicate",
    "terminalOk_of_terminalTrace_and_cancellation": "terminal split + cancellation -> accepted terminal-ok",
    "graphAcceptedTraceLabels_of_terminalOkSemanticComponents": "terminal-ok filters -> graph accepted labels",
    "rootFamily_of_terminalTraceSemanticComponents": "semantic terminal trace -> producer root family",
    "nonIdentityRankKilled_of_terminalTraceSemanticComponents": "semantic terminal trace -> killed predicate",
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


def render(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Direct Residual Producer Audit",
        "",
        "This audit is diagnostic status evidence, not proof.  It scans the",
        "current Lean surfaces for the producer path into the direct terminal",
        "residual bridge.",
        "",
        f"- decision: `{report['decision']}`",
        f"- sampled-token hits: `{report['sampled_hit_count']}`",
        "",
        "## Current Formal Target",
        "",
        "Preferred direct target:",
        "",
        "```lean",
        "TerminalDirectResidualRankCovered r",
        "```",
        "",
        "Composable fallback target:",
        "",
        "```lean",
        "SelectedPrefixResidualRankCovered scaledMargin r",
        "```",
        "",
        "Both now feed `ResidualRankKilled`, and full interval coverage feeds",
        "`NonIdentity.KilledResidualBridge`.",
        "",
        "## Producer Status",
        "",
        "- `closedRank_prefix7` exists.",
        "- `closedRank_prefix8` exists.",
        "- The only depth-9 rank bridge found is the bounded",
        "  `depth9Shard000Labels_of_closed_parent` smoke.",
        "- `TerminalTraceLabels` and",
        "  `terminalOk_of_terminalTrace_and_cancellation` exist.",
        "- `nonIdentityRankKilled_of_terminalTraceSemanticComponents` exists.",
        "",
        "Therefore the next production theorem is not another Bellman potential.",
        "It is the missing semantic classifier producer from closed/depth-8",
        "classification to terminal trace membership, then to",
        "`TerminalDirectResidualRankCovered`.",
        "",
        "Suggested theorem shape:",
        "",
        "```lean",
        "forall rank,",
        "  TopPairingClosedLanguageAtRank rank Face.ym ->",
        "  TopPairingActualFaceOmniAtRank rank ->",
        "  AcceptedSequenceBadFaceAtRank rank Face.ym ->",
        "    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels",
        "      (topPairingRankFaceLabels rank)",
        "```",
        "",
        "followed by:",
        "",
        "```lean",
        "forall r hlt,",
        "  nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ = NonIdFamilyClass.residual ->",
        "  totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠ (matId : Mat3 Rat) ->",
        "    TerminalDirectClosedFamily ⟨r, hlt⟩",
        "```",
        "",
        "If this producer requires exact affine-RHS keys, sampled rank/path",
        "objects, or one branch per concrete rank/path, reject this Bellman",
        "membership surface and pivot to the cancellation-tree summary automaton.",
        "",
        "## Scanned Files",
        "",
        "| file | lines | sampled-token hits | key symbols |",
        "| --- | ---: | ---: | --- |",
    ]
    for name, info in report["files"].items():
        symbols = ", ".join(sorted(info["symbols"])) or "none"
        sampled = sum(info["forbidden_hits"].values())
        lines.append(
            f"| `{name}` | `{info['lines']}` | `{sampled}` | {symbols} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    scans = {name: scan(path) for name, path in FILES.items()}
    sampled_hit_count = sum(
        sum(file_scan["forbidden_hits"].values()) for file_scan in scans.values()
    )
    found = {
        symbol
        for file_scan in scans.values()
        for symbol in file_scan["symbols"]
    }
    decision = (
        "generate-semantic-terminal-classifier-producer"
        if {
            "TerminalDirectResidualRankCovered",
            "closedRank_prefix8",
            "TerminalTraceLabels",
            "nonIdentityRankKilled_of_terminalTraceSemanticComponents",
        }.issubset(found)
        else "producer-surface-incomplete"
    )
    report: dict[str, Any] = {
        "decision": decision,
        "sampled_hit_count": sampled_hit_count,
        "files": scans,
    }
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render(report))
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={decision}")
    print(f"sampled-token hits={sampled_hit_count}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
