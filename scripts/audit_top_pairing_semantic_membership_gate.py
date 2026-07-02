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
    "trace_margin_bounds_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTraceMarginBoundsSocket.lean",
}

REQUIRED_SYMBOLS = {
    "TopPairingClosedLanguageAtRank": "closed semantic front door",
    "TopPairingStrengthenedClosedLanguageAtRank": "actual omni + sequence/bad-face carrier",
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
        "next Bellman experiment recommended by the GPT5.5 review: keep the",
        "Bellman route for one more semantic-membership slice, but reject it as",
        "a final architecture if that slice falls back to sampled rank/path",
        "membership.",
        "",
        f"- decision: `{report['decision']}`",
        f"- sampled membership hits in selected surfaces: `{report['sampled_hit_count']}`",
        "",
        "## Concrete Gate",
        "",
        "The next production theorem should target the selected-prefix",
        "strengthened-language socket, not a sampled object table:",
        "",
        "```lean",
        "forall rank,",
        "  FullTopPairingResidualLanguageAtRank rank ->",
        "    TopPairingStrengthenedClosedLanguageAtRank",
        "      (SelectedPrefixTraceMarginSequenceBadFace scaledMargin)",
        "      rank Face.ym",
        "```",
        "",
        "Here `FullTopPairingResidualLanguageAtRank` is still schematic: it must",
        "be replaced by the existing upstream residual classifier predicate once",
        "that predicate is selected.  If the selected-prefix family is too narrow,",
        "the fallback target is direct prefix/shared-gain membership:",
        "",
        "```lean",
        "forall rank,",
        "  FullTopPairingResidualLanguageAtRank rank ->",
        "    exists pfx gain,",
        "      TerminalTracePrefixSharedGainClosedMarginFamily",
        "        pfx gain scaledMargin rank",
        "```",
        "",
        "## Why `TopPairingClosedLanguageAtRank` Alone Is Not Enough",
        "",
        "`TopPairingClosedLanguageAtRank rank Face.ym` supplies the closed",
        "top-pairing semantic language.  The selected-prefix killed path needs",
        "the strengthened predicate because it additionally carries:",
        "",
        "- `TopPairingActualFaceOmniAtRank rank`",
        "- `SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym`",
        "",
        "The latter contains the actual margin-family membership that drives the",
        "deterministic evaluator and margin bound.",
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
            "| file | lines | sampled-token hits | key symbols |",
            "| --- | ---: | ---: | --- |",
        ]
    )
    for name, scan in report["files"].items():
        sampled = sum(scan["forbidden_membership_hits"].values())
        symbols = ", ".join(f"`{s}`" for s in sorted(scan["symbols"])) or "none"
        lines.append(f"| `{name}` | `{scan['lines']}` | `{sampled}` | {symbols} |")

    lines.extend(
        [
            "",
            "## Go/No-Go Rule",
            "",
            "Continue Bellman only if the next theorem is proved semantically from",
            "the selected upstream residual language into the strengthened",
            "selected-prefix socket.  Stop and pivot to cancellation-tree summary",
            "automata if the proof requires any of:",
            "",
            "- sampled rank/path objects;",
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
    locations = symbol_locations(scans)

    required_present = all(symbol in locations for symbol in REQUIRED_SYMBOLS)
    decision = (
        "continue-bellman-for-one-semantic-membership-slice"
        if required_present and sampled_hit_count == 0
        else "review-before-continuing-bellman"
    )

    report = {
        "mode": "top-pairing-semantic-membership-gate-audit",
        "decision": decision,
        "sampled_hit_count": sampled_hit_count,
        "files": scans,
        "symbol_locations": locations,
        "next_theorem": {
            "preferred": (
                "forall rank, FullTopPairingResidualLanguageAtRank rank -> "
                "TopPairingStrengthenedClosedLanguageAtRank "
                "(SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym"
            ),
            "fallback": (
                "forall rank, FullTopPairingResidualLanguageAtRank rank -> "
                "exists pfx gain, TerminalTracePrefixSharedGainClosedMarginFamily "
                "pfx gain scaledMargin rank"
            ),
            "status": "upstream residual classifier predicate still must be selected",
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
