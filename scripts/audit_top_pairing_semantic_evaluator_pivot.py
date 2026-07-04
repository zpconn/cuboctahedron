#!/usr/bin/env python3
"""Audit the top-pairing semantic evaluator pivot.

This is diagnostic/progress tooling only.  It does not enumerate ranks and it
does not prove coverage.

The current Bellman route is viable only if generated membership proves a
deterministic semantic evaluator theorem from closed top-pairing language
facts.  This audit records the Lean theorem surfaces that support that route
and checks the intended production modules for sampled-rank / selected-prefix
leakage.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/top_pairing_semantic_evaluator_pivot.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_semantic_evaluator_pivot.md"

FILES = {
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "closed_transducer_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedTransducerProducerSocket.lean",
    "closed_final_margin_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedFinalMarginSocket.lean",
    "depth11_graph_exact_portfolio": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphExactPortfolioSocket.lean",
    "depth11_layer4_mapped_finish": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4MappedFinish.lean",
    "depth11_layer4_mapped_branch_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4MappedBranchSocket.lean",
    "depth11_closed_providers": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke.lean",
}

GUARDS = {
    "depth11_layer4_mapped_finish": ROOT
    / "scripts/generated/depth11_layer4_mapped_finish_latest_guard.json",
    "depth11_closed_providers_lake": ROOT
    / "scripts/generated/depth11_closed_providers_strengthened_adapters_lake_guard.json",
    "depth11_layer4_mapped_branch_socket_lake": ROOT
    / "scripts/generated/depth11_layer4_mapped_branch_socket_lake_guard.json",
}

REQUIRED_SYMBOLS = {
    "target_cursor": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target_of_closed",
        "topPairingTriCursor_of_closed",
        "TopPairingTriCursorFrom",
    ],
    "transducer_tail": [
        "theorem ofClosedRank",
        "theorem cons",
    ],
    "closed_transducer_socket": [
        "StrengthenedClosedTransducerProducer",
        "StrengthenedClosedTransducerProducerAll",
        "scaledMargin_nonpos_of_closedTransducerProducerAll",
    ],
    "closed_final_margin_socket": [
        "Split10MExactGraphFinishFinalMarginProducer",
        "split10MFinalMarginProducer_of_exactGraphFinish",
    ],
    "depth11_graph_exact_portfolio": [
        "Depth11GraphExactPortfolioAllFamily",
        "Depth11GraphExactClassCase",
        "scaledMargin_nonpos_of_depth11GraphExactPortfolio",
    ],
    "depth11_layer4_mapped_finish": [
        "Depth11Layer4SevenBranchMappedPortfolioAllFamily",
        "mappedSevenBranchClassifier_of_mappedPortfolio",
        "closedToEvalGate_of_layer4MappedPortfolio",
        "scaledMargin_nonpos_of_layer4MappedPortfolio",
    ],
    "depth11_layer4_mapped_branch_socket": [
        "Depth11Layer4MappedBranchPortfolioFamily",
        "StrengthenedDepth11Layer4MappedBranchPortfolioFamily",
        "scaledMargin_nonpos_of_strengthenedMappedBranchPortfolio",
        "Depth11Layer4MappedBranchPortfolioBundle",
        "mappedPortfolio_of_mappedBranchPortfolioBundle",
        "scaledMargin_nonpos_of_mappedBranchPortfolioBundle",
    ],
    "depth11_closed_providers": [
        "semanticStateDAGAllFamily_of_class034",
        "semanticStateDAGAllFamily_of_class035",
        "semanticStateDAGAllFamily_of_class036",
        "semanticStateDAGAllFamily_of_class037",
        "semanticStateDAGAllFamily_of_class038",
        "semanticStateDAGAllFamily_of_class039",
    ],
}

PRODUCTION_SCAN_FILES = [
    "target_cursor",
    "transducer_tail",
    "closed_transducer_socket",
    "closed_final_margin_socket",
    "depth11_graph_exact_portfolio",
    "depth11_layer4_mapped_finish",
    "depth11_layer4_mapped_branch_socket",
    "depth11_closed_providers",
]

FORBIDDEN_PRODUCTION_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "acceptedTraceOfId",
    "AcceptedTraceId",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def load_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def line_count(text: str) -> int:
    if not text:
        return 0
    return text.count("\n") + (0 if text.endswith("\n") else 1)


def symbol_present(text: str, symbol: str) -> bool:
    return symbol in text


def forbidden_hits(name: str, text: str) -> list[dict[str, Any]]:
    hits: list[dict[str, Any]] = []
    for lineno, line in enumerate(text.splitlines(), 1):
        for token in FORBIDDEN_PRODUCTION_TOKENS:
            if token in line:
                hits.append(
                    {
                        "file": name,
                        "line": lineno,
                        "token": token,
                        "text": line.strip(),
                    }
                )
    return hits


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Semantic Evaluator Pivot",
        "",
        "This audit is diagnostic status evidence, not proof.  It records the",
        "current Lean theorem surfaces for the pivot away from selected-prefix",
        "membership and toward deterministic closed-language evaluator proofs.",
        "",
        f"- decision: `{report['decision']}`",
        f"- missing required symbols: `{len(report['missing_symbols'])}`",
        f"- forbidden production-token hits: `{len(report['forbidden_hits'])}`",
        "",
        "## Required Surfaces",
        "",
        "| file | lines | missing symbols |",
        "| --- | ---: | --- |",
    ]
    for name, info in report["files"].items():
        missing = ", ".join(info["missing_symbols"]) or "none"
        lines.append(f"| `{name}` | `{info['lines']}` | {missing} |")

    lines.extend(["", "## Guard Measurements", ""])
    for name, guard in report["guards"].items():
        if guard is None:
            lines.append(f"- `{name}`: missing")
        else:
            lines.append(
                "- `{}`: exit `{}`, elapsed `{}`, peak RSS MiB `{}`".format(
                    name,
                    guard.get("exit_code"),
                    guard.get("elapsed_seconds"),
                    guard.get("max_tree_rss_mib"),
                )
            )

    lines.extend(["", "## Forbidden Production Hits", ""])
    if report["forbidden_hits"]:
        for hit in report["forbidden_hits"]:
            lines.append(
                f"- `{hit['file']}` line `{hit['line']}` "
                f"`{hit['token']}`: {hit['text']}"
            )
    else:
        lines.append("- none")

    lines.extend(
        [
            "",
            "## Accepted Pivot",
            "",
            "Keep Bellman, but reject selected-prefix membership as a production",
            "route.  The next generated proof should construct:",
            "",
            "```lean",
            "Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin",
            "```",
            "",
            "from semantic closed-language state: target-shadow cursor, schedule,",
            "square-gap, local-axis, tri-source progress, graph suffix class, and",
            "graph-exact margin bound.  The final theorem should consume the",
            "existing `closedToEvalGate_of_layer4MappedPortfolio` and",
            "`scaledMargin_nonpos_of_layer4MappedPortfolio` surfaces.",
            "",
            "The branch socket lets that portfolio be emitted and checked as seven",
            "independent `Depth11Layer4MappedBranchPortfolioFamily` leaves before",
            "bundling them into the full portfolio.",
            "",
            "It also exposes a strengthened branch-local surface for the first",
            "production slice when actual-face omni or accepted bad-face evidence",
            "is needed:",
            "",
            "```lean",
            "StrengthenedDepth11Layer4MappedBranchPortfolioFamily",
            "```",
            "",
            "## Go/No-Go Gate",
            "",
            "Go only if the next producer proves the portfolio by local semantic",
            "state transitions.  No-go if the proof introduces sampled ranks,",
            "selected-prefix coverage, accepted-trace ids, exact affine RHS keys,",
            "or one branch per rank/path.  In that case, add a missing semantic",
            "state field or pivot to the cancellation-tree/cocycle quotient.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    file_report: dict[str, Any] = {}
    missing_symbols: list[dict[str, str]] = []
    all_forbidden_hits: list[dict[str, Any]] = []

    for name, path in FILES.items():
        text = read(path)
        missing = [
            symbol
            for symbol in REQUIRED_SYMBOLS.get(name, [])
            if not symbol_present(text, symbol)
        ]
        for symbol in missing:
            missing_symbols.append({"file": name, "symbol": symbol})
        if name in PRODUCTION_SCAN_FILES:
            all_forbidden_hits.extend(forbidden_hits(name, text))
        file_report[name] = {
            "path": rel(path),
            "exists": path.exists(),
            "lines": line_count(text),
            "missing_symbols": missing,
        }

    guard_report = {name: load_json(path) for name, path in GUARDS.items()}
    decision = (
        "semantic_evaluator_pivot_ready_for_membership_producer"
        if not missing_symbols and not all_forbidden_hits
        else "blocked_audit_symbols_or_forbidden_hits"
    )
    report = {
        "mode": "top_pairing_semantic_evaluator_pivot",
        "decision": decision,
        "files": file_report,
        "guards": guard_report,
        "missing_symbols": missing_symbols,
        "forbidden_hits": all_forbidden_hits,
        "next_production_target": (
            "Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin"
        ),
    }
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report), encoding="utf-8")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision: {decision}")
    return 0 if decision.startswith("semantic_evaluator") else 1


if __name__ == "__main__":
    raise SystemExit(main())
