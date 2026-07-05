#!/usr/bin/env python3
"""Audit the deterministic terminal-machine pivot surfaces.

This is a lightweight repository check, not proof evidence.  It records which
Lean theorem surfaces already support the semantic Bellman transducer route and
which production obligation remains open.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/terminal_machine_pivot_surfaces.json"
OUT_MD = ROOT / "scripts/generated/terminal_machine_pivot_surfaces.md"


FILES = {
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "terminal_eval_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalStatePartialMachineEvalSocket.lean",
    "terminal_frontier": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalStateFrontierSmoke.lean",
    "closed_transducer_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingClosedTransducerProducerSocket.lean",
    "depth11_graph_path": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingSemanticStateDAGDepth11GraphPathProvidersSmoke.lean",
}


REQUIRED_SYMBOLS = {
    "target_cursor": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target_of_closed",
        "topPairingTriCursor_of_closed",
    ],
    "terminal_eval_socket": [
        "TerminalContainedEvalPrefixGate",
        "TerminalContainedEvalProgressGate",
        "terminalContainedEvalPrefixGate_of_progress_terminal",
        "terminalTraceLabels_of_containedEvalPrefixGate",
    ],
    "terminal_frontier": [
        "Layer4MachineFrontierGate",
        "Layer4MachineFrontierGateAll",
        "layer4Prefix4FrontierCons2_exists_of_closed",
        "layer4MachineFrontierGateAll",
        "layer4Progress_prefix4_exists_of_closed",
        "TerminalContainedEvalProgressGate",
    ],
    "closed_transducer_socket": [
        "StrengthenedClosedTransducerMachineProducerAll",
        "closedTransducerProducerAll_of_machineProducerAll",
        "scaledMargin_nonpos_of_machineProducerAll",
    ],
    "depth11_graph_path": [
        "Depth11GraphPathMachinePortfolioAll",
        "machineProducerAll_of_depth11GraphPathMachinePortfolioAll",
        "scaledMargin_nonpos_of_depth11GraphPathMachinePortfolioAll",
    ],
}


FORBIDDEN_PATTERNS = [
    "private inductive SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "acceptedTraceOfId",
]


def check_symbols(text: str, symbols: list[str]) -> dict[str, bool]:
    return {symbol: symbol in text for symbol in symbols}


def main() -> int:
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)

    files = {}
    all_required_present = True
    forbidden_hits = []

    for key, path in FILES.items():
        text = path.read_text()
        symbols = check_symbols(text, REQUIRED_SYMBOLS[key])
        missing = [name for name, present in symbols.items() if not present]
        if missing:
            all_required_present = False
        for pattern in FORBIDDEN_PATTERNS:
            if pattern in text:
                forbidden_hits.append({"file": str(path.relative_to(ROOT)), "pattern": pattern})
        files[key] = {
            "path": str(path.relative_to(ROOT)),
            "symbols": symbols,
            "missing": missing,
        }

    report = {
        "status": (
            "machine-pivot-surfaces-present"
            if all_required_present and not forbidden_hits
            else "machine-pivot-surface-gap"
        ),
        "files": files,
        "forbidden_hits": forbidden_hits,
        "accepted_boundary": {
            "already_present": [
                "target-shadow inversion and cursor from closed language",
                "contained terminal-machine progress gates",
                "closed-transducer all-rank socket consuming a contained terminal gate",
                "depth-11 graph-path portfolio wrapper consuming the machine socket",
            ],
            "remaining_gap": (
                "prove TerminalContainedEvalPrefixGate machine start rank, not just "
                "TerminalContainedEvalProgressGate to the layer-4 frontier, from "
                "TopPairingStrengthenedClosedLanguageAtRank"
            ),
        },
        "next_recommended_slice": (
            "extend the terminal frontier emitter from layer-4 progress to a terminal "
            "contained eval-prefix gate, or add a compositional frontier-to-terminal "
            "machine theorem if a full terminal gate is still too large"
        ),
    }

    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Terminal Machine Pivot Surface Audit",
        "",
        f"- status: `{report['status']}`",
        f"- forbidden hits: `{len(forbidden_hits)}`",
        "",
        "## Surfaces",
        "",
    ]
    for key, info in files.items():
        lines.append(f"- `{key}`: `{info['path']}`")
        if info["missing"]:
            lines.append(f"  - missing: `{', '.join(info['missing'])}`")
        else:
            lines.append("  - required symbols: present")
    lines.extend(
        [
            "",
            "## Boundary",
            "",
            f"- remaining gap: {report['accepted_boundary']['remaining_gap']}",
            f"- next slice: {report['next_recommended_slice']}",
            "",
        ]
    )
    OUT_MD.write_text("\n".join(lines))

    print(json.dumps(report, indent=2, sort_keys=True))
    return 0 if report["status"] == "machine-pivot-surfaces-present" else 1


if __name__ == "__main__":
    raise SystemExit(main())
