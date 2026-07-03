#!/usr/bin/env python3
"""Audit the top-pairing branch-table membership frontier.

This is diagnostic/progress tooling only.  It does not prove coverage.

The strengthened Bellman branch table is useful only if the semantic closed
language can supply the table branch for each local head step.  This audit
records the current Lean theorem surface:

* target-shadow and semantic transducer-tail front doors exist;
* the generated finite branch table exists;
* the generated finite branch classifier exists;
* graph branches now drive local evaluator progress;
* socket branches are semantic contradictions;
* the remaining open theorem is closed-language-to-branch-table membership.

The audit deliberately does not enumerate ranks, accepted traces, prefixes, or
paths.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_branch_table_membership_frontier.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_branch_table_membership_frontier.md"

LEAN_FILES = {
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "eval_bridge": ROOT / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean",
    "transducer_semantic_gate": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean",
    "face_eval_split10m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTransducerFaceEvalSplit10MSmoke.lean",
    "branch_table": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTable1MSmoke.lean",
    "branch_table_split10m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableSplit10MSmoke.lean",
    "branch_table_progress": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableProgress1MSmoke.lean",
    "branch_table_progress_split10m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke.lean",
    "branch_table_suffix": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSuffix1MSmoke.lean",
    "branch_table_suffix_split10m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSuffixSplit10MSmoke.lean",
    "graph_suffix_emitter": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphSuffixEmitter1MSmoke.lean",
    "graph_accepted_prefix_frontier": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedPrefixFrontier.lean",
    "graph_accepted_suffix_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedSuffixBridge.lean",
    "graph_accepted_branch_suffix": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke.lean",
    "graph_accepted_branch_suffix_split10m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke.lean",
    "strengthened_local": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedLocal1MSmoke.lean",
    "depth11_graph_exact_portfolio": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphExactPortfolioSocket.lean",
    "depth11_layer4_classifier": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4ClassifierSocket.lean",
    "depth11_suffix_core": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphStateSuffixCore.lean",
    "depth11_suffix_classes": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixClasses.lean",
    "depth11_suffix_eval": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixEvalSmoke.lean",
    "depth11_suffix_producers": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixProducers.lean",
    "depth11_layer4_mapped_finish": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4MappedFinish.lean",
    "branch_table_semantic_gate_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSemanticGateSocket.lean",
    "semantic_tail_branch_emitter_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticTailBranchEmitterSmoke.lean",
}

GUARDS = {
    "branch_table_lake": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_1m_smoke_lake_guard.json",
    "face_eval_split10m_direct": ROOT
    / "scripts/generated/bellman_transducer_face_eval_split10m_smoke_guard.json",
    "face_eval_split10m_lake": ROOT
    / "scripts/generated/bellman_transducer_face_eval_split10m_smoke_lake_guard.json",
    "split10m_branch_table_direct": ROOT
    / "scripts/generated/bellman_split10m_branch_table_guard.json",
    "split10m_branch_table_lake": ROOT
    / "scripts/generated/bellman_split10m_branch_table_lake_guard.json",
    "branch_table_progress_direct": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_progress_1m_smoke_guard.json",
    "branch_table_progress_lake": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_progress_1m_smoke_lake_guard.json",
    "split10m_branch_table_progress_direct": ROOT
    / "scripts/generated/bellman_split10m_branch_table_progress_guard.json",
    "split10m_branch_table_progress_lake": ROOT
    / "scripts/generated/bellman_split10m_branch_table_progress_lake_guard.json",
    "branch_table_suffix_direct": ROOT
    / "scripts/generated/bellman_branch_table_suffix_1m_smoke_guard.json",
    "branch_table_suffix_lake": ROOT
    / "scripts/generated/bellman_branch_table_suffix_1m_smoke_lake_guard.json",
    "split10m_branch_table_suffix_direct": ROOT
    / "scripts/generated/bellman_split10m_branch_table_suffix_guard.json",
    "split10m_branch_table_suffix_lake": ROOT
    / "scripts/generated/bellman_split10m_branch_table_suffix_lake_guard.json",
    "graph_suffix_emitter_direct": ROOT
    / "scripts/generated/bellman_graph_suffix_emitter_1m_smoke_guard.json",
    "graph_suffix_emitter_lake": ROOT
    / "scripts/generated/bellman_graph_suffix_emitter_1m_smoke_lake_guard.json",
    "graph_accepted_prefix_frontier_direct": ROOT
    / "scripts/generated/bellman_graph_accepted_prefix_frontier_guard.json",
    "graph_accepted_prefix_frontier_lake": ROOT
    / "scripts/generated/bellman_graph_accepted_prefix_frontier_lake_guard.json",
    "graph_accepted_suffix_bridge_direct": ROOT
    / "scripts/generated/bellman_graph_accepted_suffix_bridge_guard.json",
    "graph_accepted_suffix_bridge_lake": ROOT
    / "scripts/generated/bellman_graph_accepted_suffix_bridge_lake_guard.json",
    "graph_accepted_branch_suffix_direct": ROOT
    / "scripts/generated/bellman_graph_accepted_branch_suffix_guard.json",
    "graph_accepted_branch_suffix_lake": ROOT
    / "scripts/generated/bellman_graph_accepted_branch_suffix_lake_guard.json",
    "graph_accepted_branch_suffix_split10m_direct": ROOT
    / "scripts/generated/bellman_split10m_graph_accepted_branch_suffix_guard.json",
    "graph_accepted_branch_suffix_split10m_lake": ROOT
    / "scripts/generated/bellman_split10m_graph_accepted_branch_suffix_lake_guard.json",
    "depth11_suffix_core_olean": ROOT
    / "scripts/generated/depth11_graph_state_suffix_core_olean_guard.json",
    "depth11_suffix_classes_olean": ROOT
    / "scripts/generated/depth11_graph_suffix_classes_olean_guard.json",
    "depth11_suffix_eval_olean": ROOT
    / "scripts/generated/depth11_graph_suffix_eval_smoke_olean_guard.json",
    "depth11_suffix_producers_olean": ROOT
    / "scripts/generated/depth11_graph_suffix_producers_olean_guard.json",
    "depth11_layer4_mapped_finish_direct": ROOT
    / "scripts/generated/depth11_layer4_mapped_finish_lean.json",
    "branch_table_semantic_gate_socket_direct": ROOT
    / "scripts/generated/branch_table_semantic_gate_socket_guard.json",
    "semantic_tail_branch_emitter_smoke_direct": ROOT
    / "scripts/generated/semantic_tail_branch_emitter_smoke_guard.json",
    "target_cursor_latest_direct": ROOT
    / "scripts/generated/top_pairing_target_cursor_pivot_latest_guard.json",
    "transducer_tail_latest_direct": ROOT
    / "scripts/generated/top_pairing_transducer_tail_pivot_latest_guard.json",
    "transducer_semantic_gate_latest_direct": ROOT
    / "scripts/generated/top_pairing_transducer_semantic_gate_latest_guard.json",
}

REQUIRED_SYMBOLS = {
    "topPairingTargetShadow_of_summary": "target-shadow inverse",
    "topPairingTriCursor_of_closed": "closed language to target cursor",
    "TopPairingTransducerTail.ofClosedRank": "closed language to combined semantic tail",
    "TopPairingTransducerTail.cons": "local semantic tail progress theorem",
    "closedToEvalGate_of_transducerInvariantLocalWithSuffix": "unranked semantic transducer gate",
    "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix": "ranked semantic transducer gate",
    "scaledMargin_nonpos_of_rankedTransducerClosedGate": "ranked semantic transducer nonpositive margin theorem",
    "evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix": "generic suffix evaluator",
    "transducer_face_eval_split10m_smoke_builds": "split-10M semantic prefix evaluator build sentinel",
    "closed_prefix2_branch_faceEval": "closed prefix-2 semantic branch evaluator",
    "StrengthenedBranchTable": "finite graph/socket branch relation",
    "strengthenedBranchKind?": "finite graph/socket branch classifier",
    "branchKind?_of_branchTable": "branch-table entry computes to classifier",
    "graph_next_of_graphBranch": "branch-table graph transition extractor",
    "faceEvalNext_of_graphBranchTable": "graph branch local evaluator progress",
    "branchTableProgressSplit10MSmoke_builds": "split-10M graph branch local-progress sentinel",
    "socket19TmmpBranch_impossible": "state19/tmmp semantic socket",
    "socket150TpppBranch_impossible": "state150/tppp semantic socket",
    "BranchTableSuffixOk": "suffix predicate storing branch-table evidence",
    "branchTableSuffixOk_local": "local progress from branch-table suffix",
    "eval_exists_of_branchTableSuffixOk": "whole-suffix evaluator from branch-table suffix",
    "branchTableSuffixOk_root_of_closedPrefix2": "semantic root-prefix lift into branch-table suffix",
    "branchTableSuffixOk_root_of_closedPrefix2_forall": "closed-rank root-prefix lift into branch-table suffix",
    "branchTableSuffixOk_closedPrefix2_branch_of_closed": "closed third-face branch lift into branch-table suffix",
    "branchTableSuffixOk_root_of_closedPrefix3_forall": "closed-rank third-face lift into branch-table suffix",
    "branchTableSuffixSplit10MSmoke_builds": "split-10M branch-table suffix sentinel",
    "GraphBranchTableSuffixOk": "lightweight graph-indexed suffix predicate",
    "strengthenedBranchTableSplit10MSmoke_builds": "split-10M branch table build sentinel",
    "branchTableSuffixOk_of_graphBranchTableSuffixOk": "graph suffix conversion to semantic suffix",
    "graphBranchTableSuffixOk_closedPrefix2_branch_of_closed": "closed third-face graph suffix lift",
    "branchTableSuffixOk_root_of_graphClosedPrefix3_forall": "closed-rank graph suffix root lift",
    "closed_prefix3_tmpm_next": "split-10M tmpm third-face semantic step",
    "closed_prefix3_yp_next": "split-10M yp third-face semantic step",
    "closed_prefix3_zm_next": "split-10M zm third-face semantic step",
    "graphBranchTableSuffixOk_closedPrefix3_branch_of_closed": "closed fourth-face graph suffix lift",
    "branchTableSuffixOk_root_of_graphClosedPrefix4_forall": "closed-rank fourth-face graph suffix root lift",
    "graphBranchTableSuffixOk_s0143_depth2_of_frontier": "graph-only depth-2 frontier suffix emitter",
    "graphBranchTableSuffixOk_s0144_branch_of_frontier": "graph-only successor state 144 emitter",
    "graphBranchTableSuffixOk_s0145_branch_of_frontier": "graph-only successor state 145 emitter",
    "graphBranchTableSuffixOk_s0146_branch_of_frontier": "graph-only successor state 146 emitter",
    "GraphPrefix4FrontierLabels": "graph-accepted prefix-4 frontier predicate",
    "graphPrefix4Frontier_of_graphAcceptedTraceLabels": "graph accepted traces imply graph prefix-4 frontier",
    "graphPrefix4Frontier_of_strengthened_terminal": "strengthened terminal traces imply graph prefix-4 frontier",
    "graphPrefix4FrontierLabels_of_cons2": "prefix-4 frontier grouped for depth-2 suffix emission",
    "graphBranchTableSuffixOk_s0143_depth2_of_graphPrefix4Frontier": "prefix-4 frontier feeds graph suffix emitter",
    "graphBranchTableSuffixOk_s0143_depth2_of_strengthenedTerminal": "strengthened terminal traces feed graph suffix emitter",
    "branchTableSuffixOk_root_of_strengthenedTerminalPrefix4": "strengthened terminal prefix-4 suffix evidence lifts to Bellman root",
    "graphPrefix4FrontierLabels_exists_cons2": "prefix-4 frontier yields concrete head/tail decomposition",
    "branchTableSuffixOk_root_of_strengthenedTerminal": "strengthened terminal traces lift to Bellman root without explicit prefix equality",
    "graphBranchTableSuffixOk_of_graphAcceptedTraceLabels": "graph accepted traces produce graph branch-table suffix evidence",
    "branchTableSuffixOk_root_of_strengthenedTerminal_fullTrace": "strengthened terminal traces lift to Bellman root through full graph suffix",
    "graphAcceptedBranchSuffix1MSmoke_builds": "graph-accepted branch suffix build sentinel",
    "graphAcceptedBranchSuffixSplit10MSmoke_builds": "split-10M graph-accepted branch suffix build sentinel",
    "Depth11GraphExactClassCase": "depth-11 semantic graph-exact class portfolio",
    "Depth11GraphExactPortfolioAllFamily": "all-rank depth-11 graph-exact portfolio target",
    "graphExactEvalGateAtRank_of_depth11GraphExactClassCase": "class case to graph-exact eval gate",
    "split10MGraphExactEvalAllFamily_of_depth11GraphExactPortfolio": "portfolio to graph-exact all-family",
    "scaledMargin_nonpos_of_depth11GraphExactPortfolio": "portfolio to nonpositive scaled margin",
    "Depth11Layer4PrefixAtRank": "first-four closed-language prefix predicate",
    "Depth11Layer4BranchAllowed": "schedule-allowed first-four branch predicate",
    "Depth11Layer4SemanticFrontierBranch": "semantic seven-way first-four frontier predicate",
    "Depth11Layer4GraphExactEvalAllFamily": "layer-4 graph-exact all-family target",
    "Depth11Layer4BranchGraphExactEvalAllFamily": "branch-aware layer-4 graph-exact all-family target",
    "Depth11Layer4SemanticFrontierGraphExactEvalAllFamily": "semantic-frontier layer-4 graph-exact all-family target",
    "Depth11Layer4SevenBranchGraphExactEvalAllFamily": "seven-field semantic-frontier graph-exact all-family target",
    "Depth11Layer4MappedGraphExactEvalResult": "mapped-label graph-exact eval result",
    "Depth11Layer4MappedGraphExactEvalGateAtRank": "mapped-label graph-exact eval gate",
    "Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily": "seven-field mapped-label graph-exact all-family target",
    "layer4Classifier_of_branchClassifier": "branch-aware layer-4 classifier to layer-4 classifier",
    "layer4BranchClassifier_of_semanticFrontierClassifier": "semantic-frontier classifier to branch-aware layer-4 classifier",
    "split10MGraphExactEvalGateAtRank_of_mappedLayer4Result": "mapped-label result to public graph-exact eval gate",
    "sevenBranchClassifier_of_mappedSevenBranchClassifier": "mapped seven-field classifier to public seven-field classifier",
    "semanticFrontierClassifier_of_sevenBranchClassifier": "seven-field classifier to semantic-frontier classifier",
    "split10MGraphExactEvalAllFamily_of_layer4Classifier": "layer-4 classifier to graph-exact all-family",
    "split10MGraphExactEvalAllFamily_of_layer4BranchClassifier": "branch-aware layer-4 classifier to graph-exact all-family",
    "split10MGraphExactEvalAllFamily_of_layer4SemanticFrontierClassifier": "semantic-frontier classifier to graph-exact all-family",
    "split10MGraphExactEvalAllFamily_of_layer4SevenBranchClassifier": "seven-field classifier to graph-exact all-family",
    "split10MGraphExactEvalAllFamily_of_mappedLayer4SevenBranchClassifier": "mapped seven-field classifier to graph-exact all-family",
    "scaledMargin_nonpos_of_layer4Classifier": "layer-4 classifier to nonpositive scaled margin",
    "scaledMargin_nonpos_of_layer4BranchClassifier": "branch-aware layer-4 classifier to nonpositive scaled margin",
    "scaledMargin_nonpos_of_layer4SemanticFrontierClassifier": "semantic-frontier classifier to nonpositive scaled margin",
    "scaledMargin_nonpos_of_layer4SevenBranchClassifier": "seven-field classifier to nonpositive scaled margin",
    "scaledMargin_nonpos_of_mappedLayer4SevenBranchClassifier": "mapped seven-field classifier to nonpositive scaled margin",
    "depth11GraphSuffixClasses_builds": "lightweight depth-11 suffix class module sentinel",
    "depth11GraphStateSuffixCore_builds": "trace-free depth-11 graph-state suffix core sentinel",
    "Depth11Class034State0197Suffix": "trace-free depth-11 class034/state0197 suffix predicate",
    "Class034Depth11Suffix": "lightweight class034 depth-11 suffix predicate",
    "Class035Depth11Suffix": "lightweight class035 depth-11 suffix predicate",
    "Class036Depth11Suffix": "lightweight class036 depth-11 suffix predicate",
    "Class037Depth11Suffix": "lightweight class037 depth-11 suffix predicate",
    "Class038Depth11Suffix": "lightweight class038 depth-11 suffix predicate",
    "Class039Depth11Suffix": "lightweight class039 depth-11 suffix predicate",
    "depth11GraphSuffixProducers_builds": "lightweight depth-11 suffix producer module sentinel",
    "Class034GraphSuffixProducer": "lightweight class034 graph suffix producer",
    "Class035GraphSuffixProducer": "lightweight class035 graph suffix producer",
    "Class036GraphSuffixProducer": "lightweight class036 graph suffix producer",
    "Class037GraphSuffixProducer": "lightweight class037 graph suffix producer",
    "Class038GraphSuffixProducer": "lightweight class038 graph suffix producer",
    "Class039GraphSuffixProducer": "lightweight class039 graph suffix producer",
    "depth11GraphSuffixEvalSmoke_builds": "depth-11 suffix graph-eval facts sentinel",
    "Class034Depth11GraphFinish": "class034 depth-11 graph finish predicate",
    "class034Depth11GraphFinish_of_suffix": "class034 suffix to graph finish",
    "graphEval_of_class034Depth11GraphFinish": "class034 suffix finish to evaluator equation",
    "finalPotential_nonneg_of_class034Depth11GraphFinish": "class034 suffix finish final potential",
    "Depth11Layer4MappedClassCase": "direct mapped layer-4 class case",
    "Depth11Layer4SevenBranchMappedPortfolioAllFamily": "direct mapped layer-4 portfolio target",
    "Class034ExactGraphFinishMarginBound": "class034 exact graph finish margin-bound predicate",
    "mappedLayer4Result_of_class034": "class034 direct mapped layer-4 result",
    "mappedLayer4Result_of_mappedClassCase": "mapped class case to mapped eval gate",
    "mappedSevenBranchClassifier_of_mappedPortfolio": "mapped portfolio to mapped seven-branch classifier",
    "split10MGraphExactEvalAllFamily_of_layer4MappedPortfolio": "mapped portfolio to split-10M graph-exact family",
    "closedToEvalGate_of_layer4MappedPortfolio": "mapped portfolio to canonical split-10M closed-to-eval gate",
    "scaledMargin_nonpos_of_layer4MappedPortfolio": "mapped portfolio to nonpositive scaled margin",
    "depth11Layer4MappedFinish_builds": "direct mapped finish module sentinel",
    "Split10MBranchTableClosedEvalFamily": "branch-table semantic eval-family target",
    "branchTable_of_closedPrefix2_tail": "semantic-tail local branch-table prototype",
    "branchTableSuffixOk_closedPrefix2_branch_of_tail": "semantic-tail branch-table suffix prototype",
    "branchTable_of_closedPrefix3_tmpm_tail": "prefix-3 tmpm semantic-tail local branch-table prototype",
    "branchTable_of_closedPrefix3_yp_tail": "prefix-3 yp semantic-tail local branch-table prototype",
    "branchTable_of_closedPrefix3_zm_tail": "prefix-3 zm semantic-tail local branch-table prototype",
    "branchTableSuffixOk_closedPrefix3_tmpm_branch_of_tail": "prefix-3 tmpm semantic-tail branch-table suffix prototype",
    "branchTableSuffixOk_closedPrefix3_yp_branch_of_tail": "prefix-3 yp semantic-tail branch-table suffix prototype",
    "branchTableSuffixOk_closedPrefix3_zm_branch_of_tail": "prefix-3 zm semantic-tail branch-table suffix prototype",
    "split10MClosedToEvalGate_of_branchTableClosedEvalFamily": "branch-table family to canonical split-10M closed-to-eval gate",
    "scaledMargin_nonpos_of_branchTableClosedEvalFamily": "branch-table family to nonpositive scaled margin",
    "branchTableSemanticGateSocket_builds": "branch-table semantic gate socket sentinel",
    "semanticTailBranchEmitterSmoke_builds": "generated semantic-tail branch emitter smoke sentinel",
}

FORBIDDEN_TOKENS = [
    "sorry",
    "admit",
    "axiom",
    "native_decide",
    "unsafe",
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def scan_file(path: Path) -> dict[str, Any]:
    text = read(path)
    symbol_hits = {
        symbol: text.count(symbol)
        for symbol in REQUIRED_SYMBOLS
        if symbol in text
    }
    forbidden_hits = {
        token: text.count(token)
        for token in FORBIDDEN_TOKENS
        if token in text
    }
    return {
        "path": rel(path),
        "exists": path.exists(),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "symbol_hits": symbol_hits,
        "forbidden_hits": forbidden_hits,
    }


def load_guard(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"exists": False, "path": rel(path)}
    payload = json.loads(path.read_text(encoding="utf-8"))
    return {
        "exists": True,
        "path": rel(path),
        "exit_code": payload.get("exit_code"),
        "elapsed_seconds": payload.get("elapsed_seconds"),
        "max_tree_rss_mib": payload.get("max_tree_rss_mib"),
        "killed_reason": payload.get("killed_reason"),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Branch-Table Membership Frontier",
        "",
        "This is diagnostic-only evidence.  It records the current semantic",
        "Bellman table frontier without enumerating ranks, paths, or prefixes.",
        "",
        f"- decision: `{report['decision']}`",
        f"- required symbols present: `{report['required_symbols_present']}`",
        f"- forbidden hits: `{report['forbidden_hit_count']}`",
        "",
        "## Lean Surface",
        "",
        "| symbol | role | files |",
        "| --- | --- | --- |",
    ]
    for symbol, role in REQUIRED_SYMBOLS.items():
        files = report["symbol_locations"].get(symbol, [])
        files_text = ", ".join(f"`{name}`" for name in files) or "missing"
        lines.append(f"| `{symbol}` | {role} | {files_text} |")

    lines.extend(
        [
            "",
            "## Guards",
            "",
            "| guard | exit | elapsed | peak RSS | killed |",
            "| --- | ---: | ---: | ---: | --- |",
        ]
    )
    for name, guard in report["guards"].items():
        lines.append(
            "| `{}` | `{}` | `{:.2f}s` | `{:.0f} MiB` | `{}` |".format(
                name,
                guard.get("exit_code"),
                guard.get("elapsed_seconds") or 0.0,
                guard.get("max_tree_rss_mib") or 0.0,
                guard.get("killed_reason"),
            )
        )

    lines.extend(
        [
            "",
            "## Accepted Local Surface",
            "",
            "The current Lean surface proves that a supplied finite branch-table",
            "entry is usable:",
            "",
            "```lean",
            "topPairingTargetShadow_of_summary",
            "topPairingTriCursor_of_closed",
            "TopPairingTransducerTail.ofClosedRank",
            "TopPairingTransducerTail.cons",
            "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
            "scaledMargin_nonpos_of_rankedTransducerClosedGate",
            "transducer_face_eval_split10m_smoke_builds",
            "closed_prefix2_branch_faceEval",
            "faceEvalNext_of_graphBranchTable",
            "branchTableProgressSplit10MSmoke_builds",
            "strengthenedBranchKind?",
            "branchKind?_of_branchTable",
            "socket19TmmpBranch_impossible",
            "socket150TpppBranch_impossible",
            "BranchTableSuffixOk",
            "branchTableSuffixOk_local",
            "eval_exists_of_branchTableSuffixOk",
            "branchTableSuffixOk_root_of_closedPrefix2",
            "branchTableSuffixOk_root_of_closedPrefix2_forall",
            "branchTableSuffixOk_closedPrefix2_branch_of_closed",
            "branchTableSuffixOk_root_of_closedPrefix3_forall",
            "branchTableSuffixSplit10MSmoke_builds",
            "GraphBranchTableSuffixOk",
            "strengthenedBranchTableSplit10MSmoke_builds",
            "branchTableSuffixOk_of_graphBranchTableSuffixOk",
            "graphBranchTableSuffixOk_closedPrefix2_branch_of_closed",
            "branchTableSuffixOk_root_of_graphClosedPrefix3_forall",
            "closed_prefix3_tmpm_next",
            "closed_prefix3_yp_next",
            "closed_prefix3_zm_next",
            "graphBranchTableSuffixOk_closedPrefix3_branch_of_closed",
            "branchTableSuffixOk_root_of_graphClosedPrefix4_forall",
            "graphBranchTableSuffixOk_s0143_depth2_of_frontier",
            "graphBranchTableSuffixOk_s0144_branch_of_frontier",
            "graphBranchTableSuffixOk_s0145_branch_of_frontier",
            "graphBranchTableSuffixOk_s0146_branch_of_frontier",
            "GraphPrefix4FrontierLabels",
            "graphPrefix4Frontier_of_graphAcceptedTraceLabels",
            "graphPrefix4Frontier_of_strengthened_terminal",
            "graphPrefix4FrontierLabels_of_cons2",
            "graphBranchTableSuffixOk_s0143_depth2_of_graphPrefix4Frontier",
            "graphBranchTableSuffixOk_s0143_depth2_of_strengthenedTerminal",
            "branchTableSuffixOk_root_of_strengthenedTerminalPrefix4",
            "graphPrefix4FrontierLabels_exists_cons2",
            "branchTableSuffixOk_root_of_strengthenedTerminal",
            "graphBranchTableSuffixOk_of_graphAcceptedTraceLabels",
            "branchTableSuffixOk_root_of_strengthenedTerminal_fullTrace",
            "graphAcceptedBranchSuffix1MSmoke_builds",
            "graphAcceptedBranchSuffixSplit10MSmoke_builds",
            "```",
            "",
            "The split-10M branch-table / graph-accepted suffix socket is the",
            "current graph-family-aligned bounded smoke for the eval/margin gate.",
            "",
            "## Remaining Production Theorem",
            "",
            "The open theorem is the semantic membership classifier.  In words:",
            "",
            "```text",
            "For every closed top-pairing semantic tail and local head face,",
            "the state/face pair is either one of the finite graph branches",
            "or one of the two semantic socket branches.",
            "```",
            "",
            "A future Lean/generated theorem should have the shape:",
            "",
            "```lean",
            "theorem topPairingClosed_head_branchTable",
            "    {rank : Fin numPairWords}",
            "    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)",
            "    {state : FaceEvalState} {face : Face} {rest : List Face}",
            "    (hinv : Inv state)",
            "    (htail : state.Tail (face :: rest))",
            "    (hsem : TopPairingClosedStateAt rank state (face :: rest)) :",
            "    (StrengthenedBranchTable state.graph face BranchKind.graph) ∨",
            "    (state = missingState19TmmpSemanticEvalState ∧",
            "      face = Face.tmmp ∧",
            "      StrengthenedBranchTable state.graph face BranchKind.socket19Tmmp) ∨",
            "    (state = missingState150TpppSemanticEvalState ∧",
            "      face = Face.tppp ∧",
            "      StrengthenedBranchTable state.graph face BranchKind.socket150Tppp)",
            "```",
            "",
            "`TopPairingClosedStateAt` is schematic here: the next emitter should",
            "use the existing semantic transducer state fields, not a sampled",
            "rank/path object or exact affine RHS key.",
            "",
            "The generated `strengthenedBranchKind?` classifier is available as",
            "the small finite state/face target for that emitter.  Current Lean",
            "proves only the cheap direction",
            "`branchKind?_of_branchTable`; a generic classifier-to-table converse",
            "should be emitted in shards or avoided in the hot path if it causes",
            "heartbeat blowups.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    file_scans = {name: scan_file(path) for name, path in LEAN_FILES.items()}
    guards = {name: load_guard(path) for name, path in GUARDS.items()}

    symbol_locations: dict[str, list[str]] = {symbol: [] for symbol in REQUIRED_SYMBOLS}
    for name, scan in file_scans.items():
        for symbol in scan["symbol_hits"]:
            symbol_locations[symbol].append(name)
    symbol_locations = {k: v for k, v in symbol_locations.items() if v}

    required_symbols_present = all(symbol in symbol_locations for symbol in REQUIRED_SYMBOLS)
    forbidden_hit_count = sum(
        sum(scan["forbidden_hits"].values()) for scan in file_scans.values()
    )
    guards_pass = all(guard.get("exit_code") == 0 for guard in guards.values())

    decision = (
        "local-branch-table-progress-accepted-membership-open"
        if required_symbols_present and guards_pass and forbidden_hit_count == 0
        else "branch-table-membership-frontier-needs-review"
    )

    report = {
        "mode": "top-pairing-branch-table-membership-frontier",
        "decision": decision,
        "required_symbols_present": required_symbols_present,
        "forbidden_hit_count": forbidden_hit_count,
        "files": file_scans,
        "guards": guards,
        "symbol_locations": symbol_locations,
        "next_theorem": "topPairingClosed_head_branchTable",
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    OUT_MD.write_text(render_markdown(report) + "\n", encoding="utf-8")

    print(f"decision={decision}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
