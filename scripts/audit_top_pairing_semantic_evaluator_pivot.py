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
    "transducer_eval_bridge": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean",
    "transducer_semantic_gate": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean",
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
    "depth11_layer4_target_completion_branch_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket.lean",
    "target_completion_local_step_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket.lean",
    "graph150_continuation_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph150ContinuationSocket.lean",
    "graph150_direct_eval_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph150DirectEvalSocket.lean",
    "graph157_continuation_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph157ContinuationSocket.lean",
    "graph169_continuation_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph169ContinuationSocket.lean",
    "graph183_tail_table_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean",
    "graph183_quotient_margin_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183QuotientMarginSocket.lean",
    "closed_bellman_strengthened_semantic_gate_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket.lean",
    "graph183_accepted_branch_quotient": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183AcceptedBranchQuotient.lean",
    "graph183_cocycle_quotient_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183CocycleQuotientSmoke.lean",
    "target_completion_local_branch_table_shard000": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000.lean",
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
    "depth11_layer4_target_completion_branch_socket_lake": ROOT
    / "scripts/generated/depth11_layer4_target_completion_branch_socket_lake_guard.json",
    "target_completion_local_branch_table_shard000_lake": ROOT
    / "scripts/generated/target_completion_local_branch_table_shard000_lake_guard.json",
    "target_completion_local_step_socket_lake": ROOT
    / "scripts/generated/target_completion_local_step_socket_lake_guard.json",
    "graph150_continuation_socket_lake": ROOT
    / "scripts/generated/graph150_continuation_socket_lake_guard.json",
    "graph150_direct_eval_socket_lake": ROOT
    / "scripts/generated/graph150_direct_eval_socket_lake_guard.json",
    "graph157_continuation_socket_lake": ROOT
    / "scripts/generated/graph157_continuation_socket_lake_guard.json",
    "graph169_continuation_socket_lake": ROOT
    / "scripts/generated/graph169_continuation_socket_lake_guard.json",
    "graph183_tail_table_socket_lake": ROOT
    / "scripts/generated/graph183_tail_table_socket_lake_guard.json",
    "closed_bellman_strengthened_semantic_gate_socket": ROOT
    / "scripts/generated/closed_bellman_strengthened_semantic_gate_socket_latest_guard.json",
}

REQUIRED_SYMBOLS = {
    "target_cursor": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target_of_closed",
        "topPairingTriCursor_of_closed",
        "TopPairingTriCursorFrom",
    ],
    "transducer_eval_bridge": [
        "TopPairingTransducerEvalState",
        "evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix",
        "evalLanguageAtRank_of_invariantLocalWithSuffix",
    ],
    "transducer_semantic_gate": [
        "closedToEvalGate_of_transducerInvariantLocalWithSuffix",
        "strengthenedToEvalGate_of_transducerInvariantLocalWithSuffix",
        "closedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
        "scaledMargin_nonpos_of_transducerClosedGate",
        "scaledMargin_nonpos_of_transducerStrengthenedGate",
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
    "depth11_layer4_target_completion_branch_socket": [
        "StrengthenedDepth11Layer4TargetCompletionBranchFamily",
        "strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily",
        "mappedEvalGateAtRank_of_targetCompletionBranchFamily",
        "graphExactEvalGateAtRank_of_targetCompletionBranchFamily",
        "scaledMargin_nonpos_of_targetCompletionBranchFamily",
    ],
    "target_completion_local_step_socket": [
        "StrengthenedDepth11Layer4TargetCompletionLocalStepFamily",
        "targetCompletionBranchFamily_of_localStepFamily",
        "graph150_rest_nonempty_of_targetCompletionTail",
        "graph151_rest_nonempty_of_targetCompletionTail",
    ],
    "graph150_continuation_socket": [
        "StrengthenedGraph150AfterZpContinuationFamily",
        "localStepFamily_of_graph150AfterZpContinuation",
        "targetCompletionBranchFamily_of_graph150AfterZpContinuation",
        "mappedEvalGateAtRank_of_graph150AfterZpContinuation",
        "scaledMargin_nonpos_of_graph150AfterZpContinuation",
    ],
    "graph150_direct_eval_socket": [
        "StrengthenedGraph150AfterZpGraphExactContinuationFamily",
        "graphExactEvalGateAtRank_of_graph150AfterZpGraphExactContinuation",
        "graph150DirectEvalSocket_builds",
    ],
    "graph157_continuation_socket": [
        "Graph157TargetCompletionTail",
        "graph157_head_of_targetCompletionTail",
        "StrengthenedGraph157AfterTppmGraphExactContinuationFamily",
        "graph150ContinuationFamily_of_graph157AfterTppm",
        "graphExactEvalGateAtRank_of_graph157AfterTppm",
        "graph157DirectEvalSocket_builds",
    ],
    "graph169_continuation_socket": [
        "Graph169TargetCompletionTail",
        "graph169_head_of_targetCompletionTail",
        "StrengthenedGraph169AfterTpmmGraphExactContinuationFamily",
        "graph157ContinuationFamily_of_graph169AfterTpmm",
        "graphExactEvalGateAtRank_of_graph169AfterTpmm",
        "graph169DirectEvalSocket_builds",
    ],
    "graph183_tail_table_socket": [
        "graph183_tail_eq_forced_or_tmmp_branch",
        "graph183BlockedTailHeadEval",
        "graph183_blocked_restTail_eq",
        "graph183_blocked_branch_labels_eq_rejectedGraphTrace004",
        "graph183_blocked_branch_absurd_of_acceptedSequenceBadFace",
        "StrengthenedGraph183TailFinalMarginFamily",
        "AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily",
        "AcceptedSequenceGraph183CompletionTailFamily",
        "AcceptedSequenceGraph183CursorCompletionTailFamily",
        "acceptedSequenceGraph183CompletionTailFamily_of_cursor",
        "graph150_usedFaceTail_of_acceptedSequence_prefix",
        "graph150_restLength_of_acceptedSequence_prefix",
        "graph150_stepScheduleTail_of_acceptedSequence_prefix",
        "graph150_squareGapTail_of_acceptedSequence_prefix",
        "graph150_triCursorTail_of_prefix",
        "Graph150TargetCancellationTail",
        "graph150_targetCompletionTail_of_semanticCore",
        "graph150_targetCancellationTail_of_triCursor",
        "AcceptedSequenceGraph183CursorUsedCompletionTailFamily",
        "acceptedSequenceGraph183CursorCompletionTailFamily_of_used",
        "AcceptedSequenceGraph183SemanticCompletionTailFamily",
        "AcceptedSequenceGraph183TargetCancellationTailFamily",
        "acceptedSequenceGraph183SemanticCompletionTailFamily_of_cancellation",
        "acceptedSequenceGraph183TargetCancellationTailFamily_of_cursor",
        "acceptedSequenceGraph183SemanticCompletionTailFamily_of_cursor",
        "acceptedSequenceGraph183CursorUsedCompletionTailFamily_of_semantic",
        "acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor",
        "AcceptedSequenceGraph183AcceptedTailMarginFamily",
        "AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily",
        "graph183AcceptedBranchLabels",
        "graph183AcceptedBranchLabels_eq_of_prefix",
        "graph183AcceptedBranchEval_of_prefix",
        "graph183AcceptedBranchEvalGateResult_of_labels",
        "graph183AcceptedBranchEvalGateAtRank_of_labels",
        "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily",
        "acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval",
        "acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_labelMargin",
        "acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin",
        "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
        "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailMargin",
        "graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch",
        "graph169ContinuationFamily_of_graph183TailFinalMargin",
        "graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedBranch",
        "graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedTailMargin",
        "graphExactEvalGateAtRank_of_graph183TailFinalMargin",
        "graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch",
        "graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedTailMargin",
        "graph183TailTableSocket_builds",
    ],
    "graph183_quotient_margin_socket": [
        "AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily",
        "acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin",
        "acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval",
        "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin",
        "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin",
        "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval",
        "Graph183TailQuotientMarginFamily",
        "Graph183TailQuotientMarginSequenceBadFace",
        "Graph183TailQuotientMarginEvalFamily",
        "graph183TailQuotientMarginFamily_of_sequenceBadFace",
        "graph183TailQuotientMarginFamily_of_evalMarginFamily",
        "graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate",
        "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily",
        "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily",
        "scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace",
        "nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace",
        "Graph183TailExactEvalFamily",
        "Graph183TailExactEvalSequenceBadFace",
        "graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate",
        "graph183TailExactEvalFamily_of_sequenceBadFace",
        "graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace",
        "graph183TailQuotientMarginSequenceBadFace_of_exactEvalGateResult",
        "graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily",
        "graph183TailQuotientMarginFamily_of_tailExactEval",
        "graph183TailQuotientMarginFamily_of_exactEvalSequenceBadFace",
        "graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate",
        "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily",
        "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily",
        "graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace",
        "graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace",
        "acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_graph183TailExactEvalFamily",
        "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily",
        "acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin",
        "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin",
        "graph169ContinuationFamily_of_acceptedSequenceGraph183TailQuotientMargin",
        "graphExactEvalGateAtRank_of_acceptedSequenceGraph183TailQuotientMargin",
        "scaledMargin_nonpos_of_graph183TailQuotientMargin",
        "scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin",
        "Graph183TailBranchQuotientStartViolationFamily",
        "acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_graph183TailBranch",
        "nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation",
        "AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily",
        "nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation",
        "acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_quotientMargin",
        "graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily",
        "strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily",
        "strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily",
        "graph183QuotientMarginSocket_builds",
    ],
    "closed_bellman_strengthened_semantic_gate_socket": [
        "StrengthenedClosedBellmanEvalFamily",
        "StrengthenedClosedBellmanGraphExactFamily",
        "StrengthenedClosedBellmanStepRunFamily",
        "graphExactEvalGate_of_stepRunFamily",
        "evalFamily_of_graphExactFamily",
        "strengthenedClosedBellmanObjectCover_of_evalFamily",
        "scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily",
        "scaledMargin_nonpos_of_strengthenedClosedBellmanGraphExactFamily",
        "scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily",
    ],
    "graph183_accepted_branch_quotient": [
        "acceptedLocalEquation",
        "graph183AcceptedBranchRawGain",
        "graph183AcceptedBranchRawGain_contract",
        "graph183AcceptedBranchLocalEquationsChecked",
    ],
    "graph183_cocycle_quotient_smoke": [
        "private def FullStep",
        "private def SmallStep",
        "graph183QuotientStep",
        "graph183QuotientAcceptedBranchSmoke",
    ],
    "target_completion_local_branch_table_shard000": [
        "ShardState",
        "completionState",
        "localBranchTable",
        "localTransition",
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
    "transducer_eval_bridge",
    "transducer_semantic_gate",
    "transducer_tail",
    "closed_transducer_socket",
    "closed_final_margin_socket",
    "depth11_graph_exact_portfolio",
    "depth11_layer4_mapped_finish",
    "depth11_layer4_mapped_branch_socket",
    "depth11_layer4_target_completion_branch_socket",
    "target_completion_local_step_socket",
    "graph150_continuation_socket",
    "graph150_direct_eval_socket",
    "graph157_continuation_socket",
    "graph169_continuation_socket",
    "graph183_tail_table_socket",
    "graph183_quotient_margin_socket",
    "closed_bellman_strengthened_semantic_gate_socket",
    "graph183_accepted_branch_quotient",
    "target_completion_local_branch_table_shard000",
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

GRAPH_ALIGNMENT_GUARDS = {
    "graph183_tail_table_socket": {
        "must_contain": [
            "closedBellmanNext",
            "AcceptedSequenceGraph183CompletionTailFamily",
            "AcceptedSequenceGraph183CursorCompletionTailFamily",
            "AcceptedSequenceGraph183CursorUsedCompletionTailFamily",
            "AcceptedSequenceGraph183SemanticCompletionTailFamily",
            "AcceptedSequenceGraph183TargetCancellationTailFamily",
            "AcceptedSequenceGraph183AcceptedTailMarginFamily",
            "AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily",
            "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily",
            "graph183AcceptedBranchLabels",
            "acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval",
            "acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_labelMargin",
            "acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin",
            "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
            "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailMargin",
            "graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedTailMargin",
            "graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedTailMargin",
        ],
        "must_not_contain": [
            "graphSmokeNext",
            "Split10MGraphExactEvalGateAtRank",
            "ExactGraphFinishMarginBound",
            "Split10MExactGraphFinishFinalMarginProducer",
        ],
    },
    "graph183_quotient_margin_socket": {
        "must_contain": [
            "Graph183TailQuotientMarginSequenceBadFace",
            "Graph183TailQuotientMarginEvalFamily",
            "graph183TailQuotientMarginFamily_of_sequenceBadFace",
            "graph183TailQuotientMarginFamily_of_evalMarginFamily",
            "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily",
            "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily",
            "nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace",
            "Graph183TailExactEvalFamily",
            "Graph183TailExactEvalSequenceBadFace",
            "graph183TailExactEvalFamily_of_sequenceBadFace",
            "graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace",
            "graph183TailQuotientMarginFamily_of_tailExactEval",
            "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily",
            "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily",
            "graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily",
            "AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily",
            "AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily",
            "Graph183TailBranchQuotientStartViolationFamily",
            "nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation",
            "nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation",
            "graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily",
            "strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily",
            "graph183AcceptedBranchRawGain",
            "graph183AcceptedBranchRawGain_contract",
        ],
        "must_not_contain": [
            "SampledRankIndex",
            "sampledContainsRank",
            "sampledRankOf",
            "SelectedPrefix",
            "AcceptedTraceId",
            "acceptedTraceOfId",
        ],
    },
    "closed_bellman_strengthened_semantic_gate_socket": {
        "must_contain": [
            "StrengthenedClosedBellmanStepRunFamily",
            "graphExactEvalGate_of_stepRunFamily",
            "evalLabelStepFn_of_bellmanLabelStepRun",
            "closedBellmanStep_next",
            "scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily",
        ],
        "must_not_contain": [
            "SampledRankIndex",
            "sampledContainsRank",
            "sampledRankOf",
            "SelectedPrefix",
            "AcceptedTraceId",
            "acceptedTraceOfId",
        ],
    },
}


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


def graph_alignment_violations(name: str, text: str) -> list[dict[str, Any]]:
    guard = GRAPH_ALIGNMENT_GUARDS.get(name)
    if guard is None:
        return []

    violations: list[dict[str, Any]] = []
    for token in guard.get("must_contain", []):
        if token not in text:
            violations.append(
                {
                    "file": name,
                    "kind": "missing-required-graph-token",
                    "token": token,
                }
            )
    for token in guard.get("must_not_contain", []):
        if token in text:
            violations.append(
                {
                    "file": name,
                    "kind": "forbidden-graph-token",
                    "token": token,
                }
            )
    return violations


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
        f"- graph-alignment violations: `{len(report['graph_alignment_violations'])}`",
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

    lines.extend(["", "## Graph Alignment Guards", ""])
    if report["graph_alignment_violations"]:
        for violation in report["graph_alignment_violations"]:
            lines.append(
                f"- `{violation['file']}` `{violation['kind']}`: "
                f"`{violation['token']}`"
            )
    else:
        lines.append(
            "- pass: graph183 stays on the strengthened `closedBellmanNext` "
            "route and does not consume the split-10M graphSmokeNext finish "
            "surfaces."
        )

    lines.extend(
        [
            "",
            "## Accepted Pivot",
            "",
            "Keep Bellman, but reject selected-prefix membership as a production",
            "route.  For graph183 the semantic evaluator membership problem is",
            "now a deterministic transducer obligation: target cursor supplies",
            "target cancellation, schedule/square/used/length state supplies",
            "`Graph150TargetCompletionTail`, and the suffix-local transducer",
            "gate supplies the exact eval theorem once a generated family proves",
            "the local transition and final margin premises.",
            "",
            "This audit therefore treats the graph183 completion-tail slice as a",
            "passed semantic-transducer checkpoint.  The next producer should",
            "target the generic sequence-bad-face quotient-margin carrier:",
            "",
            "```lean",
            "Graph183TailQuotientMarginSequenceBadFace scaledMargin",
            "```",
            "",
            "The generic carrier feeds `Graph183TailQuotientMarginFamily` via",
            "`graph183TailQuotientMarginFamily_of_sequenceBadFace`, and the",
            "socket adapts that generic family back to the older accepted-tail",
            "margin, final-margin, graph169 continuation, graph-exact eval, and",
            "`NonIdentityRankKilled` surfaces.  The older exact-eval surface",
            "remains an adapter/checkpoint, not the preferred proof obligation.",
            "Compatibility adapters include:",
            "",
            "```lean",
            "graph183TailQuotientMarginFamily_of_sequenceBadFace",
            "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily",
            "acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin",
            "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin",
            "nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation",
            "nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation",
            "graph183AcceptedBranchRawGain",
            "graph183AcceptedBranchRawGain_contract",
            "```",
            "",
            "The margin producer may use the closed-language proof and the fixed",
            "forced tail:",
            "",
            "```lean",
            "Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm",
            "  (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)",
            "```",
            "",
            "but it must prove the integer inequality semantically.  If the proof",
            "needs exact affine RHS keys, solved start-point keys, accepted trace",
            "ids, selected prefixes, or one branch per rank/path, the route is",
            "not production-safe.  The next pivot should then be a cancellation",
            "segment or cocycle/coboundary quotient for this margin form, followed",
            "by the same Bellman potential bound.",
            "",
            "The graph183 cocycle quotient smoke is explicitly diagnostic.  It",
            "checks the local relation",
            "`rawGain = smallGain + gauge(dst) - gauge(src)` and one accepted",
            "branch, but its `FullStep`/`SmallStep` tables are private and it",
            "does not prove closed-language membership.  Production must expose",
            "or regenerate those quotient/gauge facts through the deterministic",
            "closed-language evaluator gate, not import the smoke as coverage.",
            "The production socket now imports the tiny accepted-branch quotient",
            "module instead of the full 229-edge smoke; that module checks only",
            "the 14 accepted-branch local equations and the branch raw-gain",
            "contract.",
            "",
            "## Go/No-Go Gate",
            "",
            "Go only if the next producer proves",
            "`Graph183TailQuotientMarginSequenceBadFace` from semantic",
            "closed-language state plus Lean-checked quotient/gauge integer",
            "facts, via the suffix-local transducer gate.  No-go if the proof",
            "introduces sampled ranks, selected-prefix coverage, accepted trace",
            "ids, exact affine RHS keys, or one branch per rank/path.  In that",
            "case, add a missing semantic state field or pivot to the",
            "cancellation-tree segment algebra.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    file_report: dict[str, Any] = {}
    missing_symbols: list[dict[str, str]] = []
    all_forbidden_hits: list[dict[str, Any]] = []
    all_graph_alignment_violations: list[dict[str, Any]] = []

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
        all_graph_alignment_violations.extend(
            graph_alignment_violations(name, text)
        )
        file_report[name] = {
            "path": rel(path),
            "exists": path.exists(),
            "lines": line_count(text),
            "missing_symbols": missing,
        }

    guard_report = {name: load_json(path) for name, path in GUARDS.items()}
    decision = (
        "semantic_evaluator_pivot_ready_for_graph183_sequencebadface_carrier"
        if (
            not missing_symbols
            and not all_forbidden_hits
            and not all_graph_alignment_violations
        )
        else "blocked_audit_symbols_or_forbidden_hits"
    )
    report = {
        "mode": "top_pairing_semantic_evaluator_pivot",
        "decision": decision,
        "files": file_report,
        "guards": guard_report,
        "missing_symbols": missing_symbols,
        "forbidden_hits": all_forbidden_hits,
        "graph_alignment_violations": all_graph_alignment_violations,
        "next_production_target": (
            "Graph183TailQuotientMarginSequenceBadFace scaledMargin"
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
