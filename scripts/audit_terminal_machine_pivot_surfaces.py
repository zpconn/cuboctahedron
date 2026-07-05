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
    "graph183_tail_prefix_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183TerminalTailPrefixSmoke.lean",
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
        "TerminalTargetCompletionContinuation",
        "TerminalTargetCompletionSuffixContinuation",
        "TerminalTargetCompletionFilteredSuffixContinuation",
        "TerminalTargetCompletionTailPrefixContinuation",
        "TerminalTargetCompletionFilteredTailPrefixContinuation",
        "terminalTargetCompletionContinuation_of_suffixContinuation",
        "terminalTargetCompletionFilteredSuffixContinuation_of_suffixContinuation",
        "terminalTargetCompletionTailPrefixContinuation_of_suffixContinuation",
        "terminalTargetCompletionFilteredTailPrefixContinuation_of_filteredSuffixContinuation",
        "terminalTargetCompletionContinuation_of_filteredSuffixContinuation",
        "terminalTargetCompletionContinuation_of_tailPrefixContinuation",
        "terminalTargetCompletionContinuation_of_filteredTailPrefixContinuation",
        "terminalContainedEvalPrefixGate_of_targetCompletionContinuation",
        "terminalContainedEvalPrefixGate_trans_progress",
        "terminalContainedEvalPrefixGate_of_progress_terminal",
        "terminalContainedEvalPrefixGate_of_terminal_state",
        "terminalTraceLabels_of_containedEvalPrefixGate",
    ],
    "terminal_frontier": [
        "Layer4MachineFrontierGate",
        "Layer4MachineFrontierGateAll",
        "layer4Prefix4FrontierCons2_exists_of_closed",
        "layer4MachineFrontierGateAll",
        "layer4Progress_prefix4_exists_of_closed",
        "terminalContainedEvalPrefixGate_of_layer4MachineFrontierGate",
        "terminalContainedEvalPrefixGate_of_layer4MachineFrontierAll",
        "terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate",
        "Layer4ReachableTerminalContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4ReachableTerminalContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate_fromContains",
        "Layer4ReachableTerminalContinuationFromContainsAll",
        "terminalContainedEvalPrefixGate_of_layer4ReachableTerminalContinuationFromContainsAll",
        "Layer4ReachablePrefixMachine",
        "layer4ReachablePrefixMachine",
        "Layer4PrefixMachineContinuationFromContainsAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineContinuationFromContainsAll",
        "Layer4PrefixMachineTargetCompletionContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineTargetCompletionContinuationAll",
        "Layer4PrefixMachineTargetCompletionSuffixContinuationAll",
        "Layer4PrefixMachineTargetCompletionFilteredSuffixContinuationAll",
        "Layer4PrefixMachineTargetCompletionTailPrefixContinuationAll",
        "Layer4PrefixMachineTargetCompletionFilteredTailPrefixContinuationAll",
        "targetCompletionContinuationAll_of_suffixContinuationAll",
        "targetCompletionContinuationAll_of_tailPrefixContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineTargetCompletionSuffixContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineTargetCompletionFilteredSuffixContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineTargetCompletionTailPrefixContinuationAll",
        "terminalContainedEvalPrefixGate_of_layer4PrefixMachineTargetCompletionFilteredTailPrefixContinuationAll",
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
    "graph183_tail_prefix_smoke": [
        "graph183ForcedTailSuffixOk_of_strengthened_prefix",
        "graph183Layer4ForcedTailSuffixOk_of_strengthened_prefix",
        "graph183Layer4FilteredTailPrefixContinuation",
        "graph183Layer4FilteredTailPrefixTerminal_of_strengthened_prefix",
        "graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix",
        "graph183Layer4CompletionTail_of_strengthened_prefix",
        "graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix_semantic",
        "graph183Layer4ProgressGate_of_strengthened_prefix",
        "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_via_progress",
        "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic",
        "graph183TerminalTailPrefixEval",
        "graph183TerminalFinishProducer",
        "graph183FilteredTailPrefixContinuation",
        "graph183FilteredTailPrefixTerminal_of_strengthened_prefix",
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
                "zero-length terminal-machine leaf gate",
                "closed-transducer all-rank socket consuming a contained terminal gate",
                "depth-11 graph-path portfolio wrapper consuming the machine socket",
                "frontier-to-terminal composition from the compact layer-4 state",
                "reachable-frontier continuation package for split-10M pairs",
                "from-contains continuation package for layer-4 suffix leaves",
                "generic full-machine layer-4 prefix socket",
                "target-completion continuation socket for layer-4 suffix leaves",
                "rank-free target-completion suffix evaluator socket",
                "filtered target-completion suffix evaluator socket",
                "target-completion tail-prefix evaluator socket",
                "filtered target-completion tail-prefix evaluator socket",
                "graph183 filtered tail-prefix smoke over the semantic terminal machine",
                "graph183 layer-4 filtered tail-prefix smoke over the semantic terminal machine",
            ],
            "remaining_gap": (
                "instantiate a full generated terminal machine with "
                "Layer4ReachablePrefixMachine and prove rank-free or "
                "filtered target-completion tail-prefix continuations from "
                "its after4 third fourth states for reachable "
                "Split10MPrefix4FrontierCons2 pairs"
            ),
        },
        "next_recommended_slice": (
            "generate or prove target-completion tail-prefix evaluator gates "
            "from layer-4 frontier states inside a full generated terminal "
            "machine satisfying Layer4ReachablePrefixMachine; use the "
            "rank-free socket where target-completion alone is complete and "
            "the filtered socket where closed-language fields rule out "
            "blocked tails, leaving the final schedule-forced xp as needed"
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
