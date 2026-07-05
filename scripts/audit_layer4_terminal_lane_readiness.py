#!/usr/bin/env python3
"""Audit layer-4 terminal-machine lane readiness.

This is a lightweight planning audit, not proof evidence.  It checks which of
the seven reachable layer-4 branches currently expose the semantic
terminal-machine gate shape validated by the graph183 lane:

  first-four progress gate
  semantic target-completion tail
  filtered/terminal suffix evaluator
  initial-state contained eval-prefix gate

The final proof still needs Lean theorems for every lane.  This script only
keeps SYMMETRY_PLAN.md honest about which lanes have such theorem surfaces.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "scripts/generated/layer4_terminal_lane_readiness.json"

GRAPH183_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183TerminalTailPrefixSmoke.lean"
)

NEXT_FRONTIER_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke.lean"
)

TARGET_COMPLETION_SHARD000_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000.lean"
)

GRAPH147_DIRECT_EVAL_SOCKET_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket.lean"
)

GRAPH147_RANKED_EVAL_SOCKET_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket.lean"
)

GRAPH147_COCYCLE_BRANCH_SMOKE_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph147CocycleQuotientBranchSmoke.lean"
)

GRAPH147_COCYCLE_EDGE_SHARDS_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph147CocycleQuotientEdgeShards.lean"
)

GRAPH147_FULL_POTENTIAL_SHARDS_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph147FullPotentialShards.lean"
)

GRAPH221_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph221TerminalTailPrefixSmoke.lean"
)

GRAPH221_SEMANTIC_TERMINAL_BRIDGE_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph221SemanticTerminalBridge.lean"
)

GRAPH221_DIRECT_START_VIOLATION_BRIDGE_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph221DirectStartViolationBridge.lean"
)

GRAPH183_GRAPH221_DIRECT_PORTFOLIO_SOCKET_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph183Graph221DirectPortfolioSocket.lean"
)

TARGET_CURSOR_FILE = ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean"

TRANSDUCER_TAIL_FILE = ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean"

TERMINAL_STATE_STEP_SOCKET_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalStateStepSocket.lean"
)

CLOSED_TRANSDUCER_PRODUCER_SOCKET_FILE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedTransducerProducerSocket.lean"
)

BELLMAN_POTENTIAL_FILE = ROOT / "Cuboctahedron/Search/BellmanPotential.lean"

LANES = [
    ("tmpm_tppm", "Face.tmpm", "Face.tppm"),
    ("tmpm_zm", "Face.tmpm", "Face.zm"),
    ("yp_tmmm", "Face.yp", "Face.tmmm"),
    ("yp_zm", "Face.yp", "Face.zm"),
    ("zm_tmpp", "Face.zm", "Face.tmpp"),
    ("zm_yp", "Face.zm", "Face.yp"),
    ("zm_zp", "Face.zm", "Face.zp"),
]

GRAPH183_REQUIRED = [
    "graph183Layer4ProgressGate_of_strengthened_prefix",
    "graph183Layer4CompletionTail_of_strengthened_prefix",
    "graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix_semantic",
    "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_via_progress",
    "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic",
]

GRAPH151_PARTIAL_REQUIRED = [
    "graph151TargetCompletionState",
    "Graph151TargetCompletionTail",
    "graph151_head_of_targetCompletionTail",
    "strengthenedPrefix4Graph151TargetCompletionLocalBranchTable",
]

GRAPH147_TARGET_COMPLETION_REQUIRED = [
    "graph147TargetCompletionState",
    "Graph147TargetCompletionTail",
    "graph147_head_of_targetCompletionTail",
    "strengthenedPrefix4Graph147TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix4YpZm_eval_eq_zm_yp",
]

GRAPH147_SUFFIX_REQUIRED = [
    "strengthenedClosedPrefix5YpZmZpEvalState",
    "strengthenedClosed_prefix5_yp_zm_zp_next_from_graph147",
    "graph153TargetCompletionState",
    "Graph153TargetCompletionTail",
    "graph153_head_of_targetCompletionTail",
    "strengthenedPrefix5Graph153TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix5YpZmTmmpEvalState",
    "strengthenedClosed_prefix5_yp_zm_tmmp_next_from_graph147",
    "graph155TargetCompletionState",
    "Graph155TargetCompletionTail",
    "graph155_head_of_targetCompletionTail",
    "strengthenedPrefix5Graph155TargetCompletionLocalBranchTable",
]

GRAPH147_DEEP_SUFFIX_REQUIRED = [
    "strengthenedClosedPrefix6YpZmZpTmmmEvalState",
    "strengthenedClosed_prefix6_yp_zm_zp_tmmm_next_from_graph153",
    "graph163TargetCompletionState",
    "Graph163TargetCompletionTail",
    "graph163_head_of_targetCompletionTail",
    "strengthenedPrefix6Graph163TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix6YpZmTmmpTpmpEvalState",
    "strengthenedClosed_prefix6_yp_zm_tmmp_tpmp_next_from_graph155",
    "graph166TargetCompletionState",
    "Graph166TargetCompletionTail",
    "graph166_head_of_targetCompletionTail",
    "strengthenedPrefix6Graph166TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH176_178_REQUIRED = [
    "strengthenedClosedPrefix7YpZmZpTmmmTpmmEvalState",
    "strengthenedClosed_prefix7_yp_zm_zp_tmmm_tpmm_next_from_graph163",
    "graph176TargetCompletionState",
    "Graph176TargetCompletionTail",
    "graph176_head_of_targetCompletionTail",
    "strengthenedPrefix7Graph176TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix7YpZmTmmpTpmpTpppEvalState",
    "strengthenedClosed_prefix7_yp_zm_tmmp_tpmp_tppp_next_from_graph166",
    "graph178TargetCompletionState",
    "Graph178TargetCompletionTail",
    "graph178_head_of_targetCompletionTail",
    "strengthenedPrefix7Graph178TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH191_194_REQUIRED = [
    "strengthenedClosedPrefix8YpZmZpTmmmTpmmTppmEvalState",
    "strengthenedClosed_prefix8_yp_zm_zp_tmmm_tpmm_tppm_next_from_graph176",
    "graph191TargetCompletionState",
    "Graph191TargetCompletionTail",
    "graph191_head_of_targetCompletionTail",
    "strengthenedPrefix8Graph191TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix8YpZmTmmpTpmpTpppTpmmEvalState",
    "strengthenedClosed_prefix8_yp_zm_tmmp_tpmp_tppp_tpmm_next_from_graph178",
    "graph194TargetCompletionState",
    "Graph194TargetCompletionTail",
    "graph194_head_of_targetCompletionTail",
    "strengthenedPrefix8Graph194TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH208_211_REQUIRED = [
    "strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState",
    "strengthenedClosed_prefix9_yp_zm_zp_tmmm_tpmm_tppm_tpmp_next_from_graph191",
    "graph208TargetCompletionState",
    "Graph208TargetCompletionTail",
    "graph208_head_of_targetCompletionTail",
    "strengthenedPrefix9Graph208TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState",
    "strengthenedClosed_prefix9_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_next_from_graph194",
    "graph211TargetCompletionState",
    "Graph211TargetCompletionTail",
    "graph211_head_of_targetCompletionTail",
    "strengthenedPrefix9Graph211TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH6_11_REQUIRED = [
    "strengthenedClosedPrefix10YpZmZpTmmmTpmmTppmTpmpTmpmEvalState",
    "strengthenedClosed_prefix10_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_next_from_graph208",
    "graph6TargetCompletionState",
    "Graph6TargetCompletionTail",
    "graph6_head_of_targetCompletionTail",
    "strengthenedPrefix10Graph6TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix10YpZmTmmpTpmpTpppTpmmTmppTppmEvalState",
    "strengthenedClosed_prefix10_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_next_from_graph211",
    "graph11TargetCompletionState",
    "Graph11TargetCompletionTail",
    "graph11_head_of_targetCompletionTail",
    "strengthenedPrefix10Graph11TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH36_41_REQUIRED = [
    "strengthenedClosedPrefix11YpZmZpTmmmTpmmTppmTpmpTmpmTpppEvalState",
    "strengthenedClosed_prefix11_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_next_from_graph6",
    "graph36TargetCompletionState",
    "Graph36TargetCompletionTail",
    "graph36_head_of_targetCompletionTail",
    "strengthenedPrefix11Graph36TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpmEvalState",
    "strengthenedClosed_prefix11_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_next_from_graph11",
    "graph41TargetCompletionState",
    "Graph41TargetCompletionTail",
    "graph41_head_of_targetCompletionTail",
    "strengthenedPrefix11Graph41TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH69_75_REQUIRED = [
    "strengthenedClosedPrefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppEvalState",
    "strengthenedClosed_prefix12_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_next_from_graph36",
    "graph69TargetCompletionState",
    "Graph69TargetCompletionTail",
    "graph69_head_of_targetCompletionTail",
    "strengthenedPrefix12Graph69TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmEvalState",
    "strengthenedClosed_prefix12_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_next_from_graph41",
    "graph75TargetCompletionState",
    "Graph75TargetCompletionTail",
    "graph75_head_of_targetCompletionTail",
    "strengthenedPrefix12Graph75TargetCompletionLocalBranchTable",
]

GRAPH147_GRAPH112_109_REQUIRED = [
    "strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState",
    "strengthenedClosed_prefix13_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_tmmp_next_from_graph69",
    "graph112TargetCompletionState",
    "Graph112TargetCompletionTail",
    "graph112_head_of_targetCompletionTail",
    "strengthenedPrefix13Graph112TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState",
    "strengthenedClosed_prefix13_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_zp_next_from_graph75",
    "graph109TargetCompletionState",
    "Graph109TargetCompletionTail",
    "graph109_head_of_targetCompletionTail",
    "strengthenedPrefix13Graph109TargetCompletionLocalBranchTable",
]

GRAPH147_DETERMINISTIC_TARGET_SHARD_REQUIRED = [
    "ShardStepTarget",
    "ShardTargetSuffixOk",
    "nextTarget?",
    "nextTarget?_graph_sound",
    "nextTarget?_shard_sound",
    "ShardTargetSuffixOk.of_targetCompletionTail",
    "ShardTargetSuffixOk.eval_exists_of_external",
    "eval_exists_of_targetCompletionTail",
    "TerminalExternalOk",
    "TerminalExternalOk.final_nonneg",
    "TerminalExternalOk.eval_exists",
    "graph157ExternalTargetCompletionState",
    "Graph157ExternalTargetCompletionTail",
    "ShardExternalTailOk",
    "ShardExternalTailOk.of_external_targetCompletionTail",
    "ShardTargetSuffixOk.of_targetCompletionTail_externalTailOk",
    "ShardExternalTailOk.eval_exists",
    "eval_exists_of_targetCompletionTail_externalTailOk",
    "ShardState.inGraph147Lane",
    "ShardState.inGraph147Lane_of_nextTarget?_shard",
    "ShardExternalTailOk.terminal_of_graph147Lane",
    "ShardTargetSuffixOk.eval_exists_final_nonneg_of_graph147Lane",
    "eval_exists_final_nonneg_of_graph147TargetCompletionTail",
    "Graph147TargetCompletionTailMarginBound",
    "Graph147TargetCompletionTailEvalGate",
    "bellmanEvalAccepts_of_graph147TargetCompletionTail_margin",
    "strengthenedClosed_prefix4_yp_zm_eval_eq",
    "strengthenedClosed_prefix4_zm_yp_eval_eq",
    "Graph147TargetCompletionTailRootMarginBound",
    "Graph147TargetCompletionTailRootEvalGate",
    "graph147RootEvalGate_of_prefix_tail_margin",
    "graph147YpZmRootEvalGate_of_tail_margin",
    "graph147ZmYpRootEvalGate_of_tail_margin",
    "bellmanEvalAccepts_of_graph147YpZmRoot_margin",
    "bellmanEvalAccepts_of_graph147ZmYpRoot_margin",
    "graph147GraphExactEvalGateAtRank_of_rootEvalGate",
    "graph147YpZmGraphExactEvalGateAtRank_of_tail_margin",
    "graph147ZmYpGraphExactEvalGateAtRank_of_tail_margin",
    "graph147YpZmStrengthenedGraphExactEvalGateAtRank_of_tail_margin",
    "graph147ZmYpStrengthenedGraphExactEvalGateAtRank_of_tail_margin",
    "nextTarget?_prefix4YpZm_zp",
    "nextTarget?_prefix4YpZm_tmmp",
    "nextTarget?_terminal_graph112",
    "nextTarget?_terminal_graph109",
    "emittedShardExternalTargetCount",
]

GRAPH147_DIRECT_EVAL_SOCKET_REQUIRED = [
    "StrengthenedGraph147YpZmTargetCompletionFamily",
    "StrengthenedGraph147ZmYpTargetCompletionFamily",
    "StrengthenedGraph147TargetCompletionBundle",
    "StrengthenedGraph147YpZmRootMarginFamily",
    "StrengthenedGraph147ZmYpRootMarginFamily",
    "StrengthenedGraph147RootMarginBundle",
    "StrengthenedGraph147YpZmFullRootMarginFamily",
    "StrengthenedGraph147ZmYpFullRootMarginFamily",
    "StrengthenedGraph147FullRootMarginBundle",
    "graph147TargetCompletionTailRootMarginBound_of_fullEvalMargin",
    "graph147YpZmRootMarginBound_of_fullEvalMargin",
    "graph147ZmYpRootMarginBound_of_fullEvalMargin",
    "rootMarginFamily_of_yp_zm_fullRootMargin",
    "rootMarginFamily_of_zm_yp_fullRootMargin",
    "rootMarginBundle_of_fullRootMarginBundle",
    "fullRootMarginFamily_of_yp_zm_graphExactEvalGate",
    "fullRootMarginFamily_of_zm_yp_graphExactEvalGate",
    "fullRootMarginBundle_of_graphExactEvalGate",
    "rootMarginBundle_of_graphExactEvalGate",
    "StrengthenedGraph147RankedTransducerInvariantFamily",
    "graphExactEvalGate_of_rankedTransducerInvariantFamily",
    "rootMarginBundle_of_rankedTransducerInvariantFamily",
    "graph147YpZm_targetCompletionTail_of_strengthened_prefix",
    "graph147ZmYp_targetCompletionTail_of_strengthened_prefix",
    "targetCompletionFamily_of_yp_zm_rootMargin",
    "targetCompletionFamily_of_zm_yp_rootMargin",
    "targetCompletionBundle_of_rootMarginBundle",
    "graphExactEvalGateAtRank_of_yp_zm_targetCompletionFamily",
    "graphExactEvalGateAtRank_of_zm_yp_targetCompletionFamily",
    "graphExactEvalGateAtRank_of_bundle_yp_zm",
    "graphExactEvalGateAtRank_of_bundle_zm_yp",
    "graphExactEvalGateAtRank_of_yp_zm_rootMarginFamily",
    "graphExactEvalGateAtRank_of_zm_yp_rootMarginFamily",
    "graphExactEvalGateAtRank_of_rootMarginBundle_yp_zm",
    "graphExactEvalGateAtRank_of_rootMarginBundle_zm_yp",
]

GRAPH147_RANKED_TRANSDUCER_TARGET_REQUIRED = [
    "StrengthenedGraph147RankedTransducerInvariantFamily",
    "graphExactEvalGate_of_rankedTransducerInvariantFamily",
    "rootMarginBundle_of_rankedTransducerInvariantFamily",
    "Graph147RankedShardSuffixOk",
    "graph147RankedShardSuffixOk_localStep",
    "graph147RankedShardSuffixOk_finalPotential",
    "StrengthenedGraph147BranchSuffixStartBundle",
    "strengthenedGraph147BranchSuffixStartBundle",
    "graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix",
    "graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix",
]

GRAPH147_RANKED_EVAL_SOCKET_REQUIRED = [
    "graph147RankedEvalNext",
    "graph147RankedShardSuffixOk_eval_exists_finalPotential",
    "graph147RankedShardSuffixOk_graph_eval_exists_finalPotential",
    "graph147TargetCompletionTailRootMarginBound_of_ranked_eval_margin",
    "graph147YpZmRootMarginBound_of_ranked_eval_margin",
    "graph147ZmYpRootMarginBound_of_ranked_eval_margin",
    "StrengthenedGraph147YpZmRankedEvalMarginFamily",
    "StrengthenedGraph147ZmYpRankedEvalMarginFamily",
    "StrengthenedGraph147RankedEvalMarginBundle",
    "graph147RankedEval_margin_of_suffixInvariant",
    "StrengthenedGraph147RankedEvalMarginInvariantFamily",
    "rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily",
    "rootMarginBundle_of_rankedEvalMarginInvariantFamily_via_rankedEvalMarginBundle",
    "StrengthenedGraph147RankedShardMarginInvariantFamily",
    "Graph147RankedSuffixEvalMarginInv",
    "rankedShardMarginInvariantFamily_of_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedShardMarginInvariantFamily_via_rankedEvalMarginBundle",
    "Graph147RankedEvalMarginSequenceBadFace",
    "Graph147TargetCompletionRootMarginSequenceBadFace",
    "rootMarginBundle_of_graph147RankedEvalMarginSequenceBadFace",
    "rootMarginBundle_of_graphExactEvalGate_via_rankedEvalMarginBundle",
    "rootMarginBundle_of_rankedTransducerInvariantFamily_via_rankedEvalMarginBundle",
]

GRAPH147_COCYCLE_BRANCH_SMOKE_REQUIRED = [
    "graph147QuotientStep",
    "graph147YpZmBranchRawGain_contract",
    "graph147YpZmBranchMargin_contract",
    "graph147YpZmQuotientBranchSmoke",
    "graph147YpZmGaugeCorrectedBranchSmoke",
    "graph147ZmYpBranchRawGain_contract",
    "graph147ZmYpBranchMargin_contract",
    "graph147ZmYpQuotientBranchSmoke",
    "graph147ZmYpGaugeCorrectedBranchSmoke",
]

GRAPH147_COCYCLE_EDGE_SHARDS_REQUIRED = [
    "graph147QuotientEdgeShards_checked",
    "graph147QuotientEdgeShard000_checked",
    "graph147QuotientEdgeShard001_checked",
    "graph147QuotientEdgeShard002_checked",
    "graph147QuotientEdgeShard003_checked",
    "graph147QuotientEdgeShard004_checked",
    "graph147QuotientEdgeShard005_checked",
    "graph147QuotientEdgeShard006_checked",
    "graph147QuotientEdgeShard007_checked",
    "graph147QuotientEdgeShard008_checked",
]

GRAPH147_FULL_POTENTIAL_SHARDS_REQUIRED = [
    "graph147FullPotentialRootBound",
    "graph147FullPotentialFinalNonneg",
    "graph147FullPotentialShards_checked",
    "graph147FullPotentialShard000_checked",
    "graph147FullPotentialShard001_checked",
    "graph147FullPotentialShard002_checked",
    "graph147FullPotentialShard003_checked",
    "graph147FullPotentialShard004_checked",
    "graph147FullPotentialShard005_checked",
    "graph147FullPotentialShard006_checked",
    "graph147FullPotentialShard007_checked",
    "graph147FullPotentialShard008_checked",
]

ZMTMPP_CHAIN_REQUIRED = [
    "strengthenedClosedPrefix5ZmTmppTpppEvalState",
    "strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp",
    "graph159TargetCompletionState",
    "Graph159TargetCompletionTail",
    "graph159_head_of_targetCompletionTail",
    "strengthenedPrefix5Graph159TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState",
    "strengthenedClosed_prefix6_zm_tmpp_tppp_tpmp_next_from_prefix5",
    "graph171TargetCompletionState",
    "Graph171TargetCompletionTail",
    "graph171_head_of_targetCompletionTail",
    "strengthenedPrefix6Graph171TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState",
    "strengthenedClosed_prefix7_zm_tmpp_tppp_tpmp_tppm_next_from_prefix6",
    "graph186TargetCompletionState",
    "Graph186TargetCompletionTail",
    "graph186_head_of_targetCompletionTail",
    "strengthenedPrefix7Graph186TargetCompletionLocalBranchTable",
    "strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState",
    "strengthenedClosed_prefix8_zm_tmpp_tppp_tpmp_tppm_tmmp_next_from_prefix7",
    "graph202TargetCompletionState",
    "Graph202TargetCompletionTail",
    "graph202_head_of_targetCompletionTail",
    "strengthenedPrefix8Graph202TargetCompletionLocalBranchTable",
]

GRAPH221_FILTERED_REQUIRED = [
    "graph221TargetCompletionState",
    "Graph221TargetCompletionTail",
    "graph221Layer4ForcedTailPrefixLabels",
    "graph221Layer4ForcedTailPrefixEval",
    "graph151TargetCompletionTail_decompose_to_graph221",
    "graph221StrengthenedEvalState_next",
    "graph221YpStrengthenedEvalState_next",
    "graph221YpTmpmStrengthenedEvalState_next",
    "graph221YpTmpmStrengthenedEvalState_zp_none",
    "graph221YpTmpmZp_strengthenedEval_none",
    "graph221_head_of_targetCompletionTail",
    "graph221_yp_tmpm_head_of_targetCompletionTail",
    "graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail",
    "graph221AcceptedTailSuffixOk_of_targetCompletionTail_and_strengthenedEval",
    "graph221AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221AcceptedTailSuffixOk",
    "graph221TailPrefix029Eval",
    "graph221TailPrefix030Eval",
    "graph221TailPrefix031Eval",
    "graph221FilteredTailPrefixContinuation",
    "graph221Layer4PrefixEval",
    "graph221Layer4ForcedTerminalPrefixEval",
    "graph221Layer4AcceptedTailSuffixOk",
    "graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4FilteredTailPrefixContinuation",
    "graph221Layer4PrefixState_contains_of_strengthened_prefix",
    "graph221Layer4FilteredTailPrefixTerminal_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph221Layer4ProgressGate_of_strengthened_prefix",
    "graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval",
    "graph151CompletionTail_of_strengthened_prefix",
    "graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_eval",
]

GRAPH221_SEMANTIC_SUFFIX_REQUIRED = [
    "graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk",
    "graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk",
    "Graph221Layer4SemanticSuffixFamily",
    "graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_suffixFamily",
]

GRAPH221_BLOCKED_PREFIX_REQUIRED = [
    "graph221Layer4AcceptedTailSuffixOk_or_blockedPrefix_of_graph151TargetCompletionTail",
    "Graph221Layer4BlockedPrefixExcludedFamily",
    "graph221Layer4SemanticSuffixFamily_of_blockedPrefixExcluded",
]

GRAPH221_DIRECT_SEMANTIC_REQUIRED = [
    "graph221_yp_tmpm_zp_canComplete_false",
    "graph221AcceptedTailSuffixOk_of_targetCompletionTail",
    "graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail",
    "graph221Layer4SemanticSuffixFamily_targetCompletion",
    "graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic",
]

GRAPH221_ROOT_MARGIN_SOCKET_REQUIRED = [
    "Graph221Layer4Split10MRootMarginBound",
    "graph221Layer4AcceptedTailSuffixOk_split10M_eval_exists_final_nonneg",
    "split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_semantic_margin",
    "graph151CompletionTail_of_strengthened_prefix_generic",
    "Graph221ZmTmppSplit10MRootMarginFamily",
    "split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_generic_rootMarginFamily",
    "scaledMargin_nonpos_of_graph221_zm_tmpp_generic_rootMarginFamily",
    "Graph221ZmTmppSplit10MRootMarginSequenceBadFace",
    "graph221ZmTmppSplit10MRootMarginFamily_of_sequenceBadFace",
    "split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_sequenceBadFace",
    "scaledMargin_nonpos_of_graph221_zm_tmpp_sequenceBadFace",
    "Graph221ZmTmppSplit10MRootMarginObj",
    "Graph221ZmTmppSplit10MRootMarginObjectBound",
    "Graph221ZmTmppSplit10MBranchMarginFamily",
    "graph221Layer4Split10MRootMarginBound_of_branchMargin029",
    "graph221Layer4Split10MRootMarginBound_of_branchMargin030",
    "graph221Layer4Split10MRootMarginBound_of_branchMargin031",
    "graph221ZmTmppSplit10MRootMarginObjectBound_of_branchMarginFamily",
    "graph221ZmTmppSplit10MRootMarginFamily_of_objectBound",
    "graph221ZmTmppSplit10MRootMarginObjectBound_of_sequenceBadFace",
    "split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_objectBound",
    "scaledMargin_nonpos_of_graph221_zm_tmpp_objectBound",
    "AcceptedSequenceGraph221ZmTmppSplit10MRootMarginFamily",
    "split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_rootMarginFamily",
    "scaledMargin_nonpos_of_graph221_zm_tmpp_rootMarginFamily",
]

GRAPH221_DIRECT_START_VIOLATION_REQUIRED = [
    "objectStartViolationMarginCert_of_graph221_branch029",
    "objectStartViolationMarginCert_of_graph221_branch030",
    "objectStartViolationMarginCert_of_graph221_branch031",
    "nonIdentityRankKilled_of_graph221_branch029",
    "nonIdentityRankKilled_of_graph221_branch030",
    "nonIdentityRankKilled_of_graph221_branch031",
    "nonIdentityRankKilled_of_graph221_zm_tmpp_semantic_direct",
]

GRAPH183_GRAPH221_DIRECT_PORTFOLIO_REQUIRED = [
    "AcceptedSequenceDepth11Layer4Graph183Graph221DirectBranchGateFamily",
    "AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily",
    "acceptedSequenceGraph183Graph221DirectBranchGateFamily_of_stepRunPortfolio",
    "acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectBranchGateFamily",
    "acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio",
    "acceptedSequenceMixedKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio",
    "acceptedSequenceGraph183Graph221DirectStepRunPortfolioFamily_of_rootMarginBundle",
    "acceptedSequenceMixedKilledAllFamily_of_graph183Graph221DirectTargetCompletionStepRunPortfolio",
]

TARGET_CURSOR_REQUIRED = [
    "topPairingTargetShadow_of_summary",
    "topPairingTriShadow_eq_target_of_closed",
    "topPairingTriCursor_of_closed",
    "TopPairingTargetCursorAtRank",
    "TopPairingStartMissSemanticLanguageAtRank",
    "topPairingStartMissSemanticLanguage_of_closed",
]

TRANSDUCER_TAIL_REQUIRED = [
    "structure TopPairingTransducerTail",
    "theorem ofClosedRank",
    "theorem ofClosedObj",
    "theorem cons_square_tail",
    "theorem cons_tri_tail",
    "theorem cons",
]

TERMINAL_STATE_STEP_SOCKET_REQUIRED = [
    "structure TerminalStepState",
    "def Contains",
    "def nextStep",
    "theorem initial_contains_of_closed",
    "theorem contains_nextStep",
    "structure Head",
    "theorem Head.transducer_cons",
]

CLOSED_TRANSDUCER_PRODUCER_SOCKET_REQUIRED = [
    "structure StrengthenedClosedTransducerProducer",
    "theorem closedTransducerProducer_of_terminalContainedEvalPrefixGate",
    "theorem evalLanguageAtRank_of_closedTransducerProducer",
    "theorem scaledMargin_nonpos_of_closedTransducerProducer",
    "structure StrengthenedClosedTransducerMachineProducerAll",
    "theorem closedTransducerProducerAll_of_machineProducerAll",
    "theorem scaledMargin_nonpos_of_machineProducerAll",
]

BELLMAN_SEGMENT_CORE_REQUIRED = [
    "structure CertifiedBellmanSegment",
    "namespace CertifiedBellmanSegment",
    "theorem ofRun",
    "theorem ofEvalLabelStepFn",
    "theorem ofEvalLabelStepFnNextInvariant",
    "theorem nil",
    "theorem append",
    "theorem const_add_gain_nonpos",
]

BELLMAN_GAUGE_CORRECTED_CORE_REQUIRED = [
    "rawGain_le_of_gaugeCorrected_quotient_labelStepRun",
    "const_add_rawGain_nonpos_of_gaugeCorrected_quotient_labelStepRun",
]

FORBIDDEN = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "acceptedTraceOfId",
]


def contains_all(text: str, symbols: list[str]) -> tuple[bool, list[str]]:
    missing = [symbol for symbol in symbols if symbol not in text]
    return not missing, missing


def main() -> int:
    graph183_text = GRAPH183_FILE.read_text()
    next_frontier_text = NEXT_FRONTIER_FILE.read_text()
    target_completion_shard000_text = (
        TARGET_COMPLETION_SHARD000_FILE.read_text()
        if TARGET_COMPLETION_SHARD000_FILE.exists()
        else ""
    )
    graph147_direct_eval_socket_text = (
        GRAPH147_DIRECT_EVAL_SOCKET_FILE.read_text()
        if GRAPH147_DIRECT_EVAL_SOCKET_FILE.exists()
        else ""
    )
    graph147_ranked_eval_socket_text = (
        GRAPH147_RANKED_EVAL_SOCKET_FILE.read_text()
        if GRAPH147_RANKED_EVAL_SOCKET_FILE.exists()
        else ""
    )
    graph147_cocycle_branch_smoke_text = (
        GRAPH147_COCYCLE_BRANCH_SMOKE_FILE.read_text()
        if GRAPH147_COCYCLE_BRANCH_SMOKE_FILE.exists()
        else ""
    )
    graph147_cocycle_edge_shards_text = (
        GRAPH147_COCYCLE_EDGE_SHARDS_FILE.read_text()
        if GRAPH147_COCYCLE_EDGE_SHARDS_FILE.exists()
        else ""
    )
    graph147_full_potential_shards_text = (
        GRAPH147_FULL_POTENTIAL_SHARDS_FILE.read_text()
        if GRAPH147_FULL_POTENTIAL_SHARDS_FILE.exists()
        else ""
    )
    graph221_text = GRAPH221_FILE.read_text() if GRAPH221_FILE.exists() else ""
    graph221_semantic_terminal_bridge_text = (
        GRAPH221_SEMANTIC_TERMINAL_BRIDGE_FILE.read_text()
        if GRAPH221_SEMANTIC_TERMINAL_BRIDGE_FILE.exists()
        else ""
    )
    graph221_direct_start_violation_bridge_text = (
        GRAPH221_DIRECT_START_VIOLATION_BRIDGE_FILE.read_text()
        if GRAPH221_DIRECT_START_VIOLATION_BRIDGE_FILE.exists()
        else ""
    )
    graph183_graph221_direct_portfolio_socket_text = (
        GRAPH183_GRAPH221_DIRECT_PORTFOLIO_SOCKET_FILE.read_text()
        if GRAPH183_GRAPH221_DIRECT_PORTFOLIO_SOCKET_FILE.exists()
        else ""
    )
    target_cursor_text = (
        TARGET_CURSOR_FILE.read_text()
        if TARGET_CURSOR_FILE.exists()
        else ""
    )
    transducer_tail_text = (
        TRANSDUCER_TAIL_FILE.read_text()
        if TRANSDUCER_TAIL_FILE.exists()
        else ""
    )
    terminal_state_step_socket_text = (
        TERMINAL_STATE_STEP_SOCKET_FILE.read_text()
        if TERMINAL_STATE_STEP_SOCKET_FILE.exists()
        else ""
    )
    closed_transducer_producer_socket_text = (
        CLOSED_TRANSDUCER_PRODUCER_SOCKET_FILE.read_text()
        if CLOSED_TRANSDUCER_PRODUCER_SOCKET_FILE.exists()
        else ""
    )
    bellman_potential_text = BELLMAN_POTENTIAL_FILE.read_text()
    graph183_ok, graph183_missing = contains_all(graph183_text, GRAPH183_REQUIRED)
    bellman_segment_core_ok, bellman_segment_core_missing = contains_all(
        bellman_potential_text, BELLMAN_SEGMENT_CORE_REQUIRED
    )
    bellman_gauge_corrected_core_ok, bellman_gauge_corrected_core_missing = (
        contains_all(
            bellman_potential_text,
            BELLMAN_GAUGE_CORRECTED_CORE_REQUIRED,
        )
    )
    graph151_partial_ok, graph151_partial_missing = contains_all(
        next_frontier_text, GRAPH151_PARTIAL_REQUIRED
    )
    graph147_target_completion_ok, graph147_target_completion_missing = (
        contains_all(next_frontier_text, GRAPH147_TARGET_COMPLETION_REQUIRED)
    )
    graph147_suffix_ok, graph147_suffix_missing = contains_all(
        next_frontier_text, GRAPH147_SUFFIX_REQUIRED
    )
    graph147_deep_suffix_ok, graph147_deep_suffix_missing = contains_all(
        next_frontier_text, GRAPH147_DEEP_SUFFIX_REQUIRED
    )
    graph147_graph176_178_ok, graph147_graph176_178_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH176_178_REQUIRED
    )
    graph147_graph191_194_ok, graph147_graph191_194_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH191_194_REQUIRED
    )
    graph147_graph208_211_ok, graph147_graph208_211_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH208_211_REQUIRED
    )
    graph147_graph6_11_ok, graph147_graph6_11_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH6_11_REQUIRED
    )
    graph147_graph36_41_ok, graph147_graph36_41_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH36_41_REQUIRED
    )
    graph147_graph69_75_ok, graph147_graph69_75_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH69_75_REQUIRED
    )
    graph147_graph112_109_ok, graph147_graph112_109_missing = contains_all(
        next_frontier_text, GRAPH147_GRAPH112_109_REQUIRED
    )
    graph147_deterministic_target_shard_ok, graph147_deterministic_target_shard_missing = (
        contains_all(
            target_completion_shard000_text,
            GRAPH147_DETERMINISTIC_TARGET_SHARD_REQUIRED,
        )
    )
    graph147_direct_eval_socket_ok, graph147_direct_eval_socket_missing = (
        contains_all(
            graph147_direct_eval_socket_text,
            GRAPH147_DIRECT_EVAL_SOCKET_REQUIRED,
        )
    )
    graph147_ranked_transducer_target_ok, graph147_ranked_transducer_target_missing = (
        contains_all(
            graph147_direct_eval_socket_text,
            GRAPH147_RANKED_TRANSDUCER_TARGET_REQUIRED,
        )
    )
    graph147_ranked_eval_socket_ok, graph147_ranked_eval_socket_missing = (
        contains_all(
            graph147_ranked_eval_socket_text,
            GRAPH147_RANKED_EVAL_SOCKET_REQUIRED,
        )
    )
    graph147_cocycle_branch_smoke_ok, graph147_cocycle_branch_smoke_missing = (
        contains_all(
            graph147_cocycle_branch_smoke_text,
            GRAPH147_COCYCLE_BRANCH_SMOKE_REQUIRED,
        )
    )
    graph147_cocycle_edge_shards_ok, graph147_cocycle_edge_shards_missing = (
        contains_all(
            graph147_cocycle_edge_shards_text,
            GRAPH147_COCYCLE_EDGE_SHARDS_REQUIRED,
        )
    )
    graph147_full_potential_shards_ok, graph147_full_potential_shards_missing = (
        contains_all(
            graph147_full_potential_shards_text,
            GRAPH147_FULL_POTENTIAL_SHARDS_REQUIRED,
        )
    )
    zm_tmpp_chain_ok, zm_tmpp_chain_missing = contains_all(
        next_frontier_text, ZMTMPP_CHAIN_REQUIRED
    )
    graph221_filtered_ok, graph221_filtered_missing = contains_all(
        graph221_text, GRAPH221_FILTERED_REQUIRED
    )
    graph221_semantic_suffix_ok, graph221_semantic_suffix_missing = contains_all(
        graph221_text, GRAPH221_SEMANTIC_SUFFIX_REQUIRED
    )
    graph221_blocked_prefix_ok, graph221_blocked_prefix_missing = contains_all(
        graph221_text, GRAPH221_BLOCKED_PREFIX_REQUIRED
    )
    graph221_direct_semantic_ok, graph221_direct_semantic_missing = contains_all(
        graph221_text, GRAPH221_DIRECT_SEMANTIC_REQUIRED
    )
    graph221_root_margin_socket_ok, graph221_root_margin_socket_missing = (
        contains_all(
            graph221_semantic_terminal_bridge_text,
            GRAPH221_ROOT_MARGIN_SOCKET_REQUIRED,
        )
    )
    graph221_direct_start_violation_ok, graph221_direct_start_violation_missing = (
        contains_all(
            graph221_direct_start_violation_bridge_text,
            GRAPH221_DIRECT_START_VIOLATION_REQUIRED,
        )
    )
    graph183_graph221_direct_portfolio_ok, graph183_graph221_direct_portfolio_missing = (
        contains_all(
            graph183_graph221_direct_portfolio_socket_text,
            GRAPH183_GRAPH221_DIRECT_PORTFOLIO_REQUIRED,
        )
    )
    target_cursor_ok, target_cursor_missing = contains_all(
        target_cursor_text, TARGET_CURSOR_REQUIRED
    )
    transducer_tail_ok, transducer_tail_missing = contains_all(
        transducer_tail_text, TRANSDUCER_TAIL_REQUIRED
    )
    terminal_state_step_socket_ok, terminal_state_step_socket_missing = contains_all(
        terminal_state_step_socket_text, TERMINAL_STATE_STEP_SOCKET_REQUIRED
    )
    closed_transducer_producer_socket_ok, closed_transducer_producer_socket_missing = (
        contains_all(
            closed_transducer_producer_socket_text,
            CLOSED_TRANSDUCER_PRODUCER_SOCKET_REQUIRED,
        )
    )
    graph221_root_margin_socket_forbidden_hits = [
        token for token in FORBIDDEN if token in graph221_semantic_terminal_bridge_text
    ]
    graph221_direct_start_violation_forbidden_hits = [
        token
        for token in FORBIDDEN
        if token in graph221_direct_start_violation_bridge_text
    ]
    graph221_root_margin_socket_production_ok = (
        graph221_root_margin_socket_ok
        and not graph221_root_margin_socket_forbidden_hits
    )
    graph221_direct_start_violation_production_ok = (
        graph221_direct_start_violation_ok
        and not graph221_direct_start_violation_forbidden_hits
    )
    graph183_graph221_direct_portfolio_production_ok = (
        graph183_graph221_direct_portfolio_ok
        and graph221_direct_start_violation_production_ok
    )
    forbidden_hits = [
        token for token in FORBIDDEN if token in graph183_text
    ]

    lane_report = {}
    for lane, third, fourth in LANES:
        if lane == "tmpm_zm":
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": (
                    "validated_one_lane_semantic_gate"
                    if graph183_ok and not forbidden_hits
                    else "incomplete_graph183_gate"
                ),
                "file": str(GRAPH183_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in graph183_missing
                    for symbol in GRAPH183_REQUIRED
                },
                "forbidden_hits": forbidden_hits,
            }
        elif lane == "zm_tmpp":
            if graph221_direct_start_violation_production_ok:
                partial_status = "validated_graph221_direct_start_violation_killed"
            elif graph221_direct_start_violation_ok:
                partial_status = "diagnostic_graph221_direct_start_violation_uses_accepted_trace"
            elif graph221_direct_semantic_ok and graph221_root_margin_socket_production_ok:
                partial_status = "validated_graph221_semantic_gate_root_margin_socket_ready"
            elif graph221_direct_semantic_ok and graph221_root_margin_socket_ok:
                partial_status = "diagnostic_graph221_root_margin_socket_uses_accepted_trace"
            elif graph221_direct_semantic_ok:
                partial_status = "partial_graph221_semantic_gate"
            elif (
                graph151_partial_ok
                and zm_tmpp_chain_ok
                and graph221_filtered_ok
                and graph221_semantic_suffix_ok
                and graph221_blocked_prefix_ok
            ):
                partial_status = "partial_graph221_blocked_prefix_exclusion_frontier"
            elif (
                graph151_partial_ok
                and zm_tmpp_chain_ok
                and graph221_filtered_ok
                and graph221_semantic_suffix_ok
            ):
                partial_status = "partial_graph221_semantic_suffix_family_frontier"
            elif graph151_partial_ok and zm_tmpp_chain_ok and graph221_filtered_ok:
                partial_status = "partial_graph221_layer4_gate_with_eval_premise"
            elif graph151_partial_ok and zm_tmpp_chain_ok:
                partial_status = "partial_forced_chain_reaches_graph221_branch"
            elif graph151_partial_ok:
                partial_status = "partial_local_step_only_missing_post_tppp_suffix_table"
            else:
                partial_status = "missing_terminal_lane_semantic_gate"
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": partial_status,
                "file": str(NEXT_FRONTIER_FILE.relative_to(ROOT)),
                "graph221_file": (
                    str(GRAPH221_FILE.relative_to(ROOT))
                    if GRAPH221_FILE.exists()
                    else None
                ),
                "graph221_semantic_terminal_bridge_file": (
                    str(GRAPH221_SEMANTIC_TERMINAL_BRIDGE_FILE.relative_to(ROOT))
                    if GRAPH221_SEMANTIC_TERMINAL_BRIDGE_FILE.exists()
                    else None
                ),
                "graph221_direct_start_violation_bridge_file": (
                    str(GRAPH221_DIRECT_START_VIOLATION_BRIDGE_FILE.relative_to(ROOT))
                    if GRAPH221_DIRECT_START_VIOLATION_BRIDGE_FILE.exists()
                    else None
                ),
                "required_symbols": {
                    symbol: symbol not in graph151_partial_missing
                    for symbol in GRAPH151_PARTIAL_REQUIRED
                },
                "forced_chain_symbols": {
                    symbol: symbol not in zm_tmpp_chain_missing
                    for symbol in ZMTMPP_CHAIN_REQUIRED
                },
                "graph221_filtered_symbols": {
                    symbol: symbol not in graph221_filtered_missing
                    for symbol in GRAPH221_FILTERED_REQUIRED
                },
                "graph221_semantic_suffix_symbols": {
                    symbol: symbol not in graph221_semantic_suffix_missing
                    for symbol in GRAPH221_SEMANTIC_SUFFIX_REQUIRED
                },
                "graph221_blocked_prefix_symbols": {
                    symbol: symbol not in graph221_blocked_prefix_missing
                    for symbol in GRAPH221_BLOCKED_PREFIX_REQUIRED
                },
                "graph221_direct_semantic_symbols": {
                    symbol: symbol not in graph221_direct_semantic_missing
                    for symbol in GRAPH221_DIRECT_SEMANTIC_REQUIRED
                },
                "graph221_root_margin_socket_symbols": {
                    symbol: symbol not in graph221_root_margin_socket_missing
                    for symbol in GRAPH221_ROOT_MARGIN_SOCKET_REQUIRED
                },
                "graph221_root_margin_socket_status": (
                    "accepted_root_margin_socket_pending_margin_producer"
                    if graph221_root_margin_socket_production_ok
                    else "diagnostic_root_margin_socket_uses_accepted_trace"
                    if graph221_root_margin_socket_ok
                    else "missing_root_margin_socket"
                ),
                "graph221_root_margin_socket_forbidden_hits": (
                    graph221_root_margin_socket_forbidden_hits
                ),
                "graph221_direct_start_violation_symbols": {
                    symbol: symbol not in graph221_direct_start_violation_missing
                    for symbol in GRAPH221_DIRECT_START_VIOLATION_REQUIRED
                },
                "graph221_direct_start_violation_status": (
                    "accepted_direct_start_violation_killed_lane"
                    if graph221_direct_start_violation_production_ok
                    else "diagnostic_direct_start_violation_uses_accepted_trace"
                    if graph221_direct_start_violation_ok
                    else "missing_direct_start_violation_killed_lane"
                ),
                "graph221_direct_start_violation_forbidden_hits": (
                    graph221_direct_start_violation_forbidden_hits
                ),
                "forbidden_hits": [
                    token
                    for token in FORBIDDEN
                    if token in next_frontier_text
                    or token in graph221_text
                    or token in graph221_direct_start_violation_bridge_text
                ],
                "remaining_gap": (
                    (
                        "graph221 is now a validated direct-killed semantic "
                        "lane for zm_tmpp: the closed target-completion split "
                        "feeds three exact start-violation providers and "
                        "proves NonIdentityRankKilled without selected-prefix "
                        "or sampled-rank membership.  The next coverage step "
                        "is to prove similarly semantic direct or evaluator "
                        "routes for the remaining layer-4 lanes, not to build "
                        "a graph221 margin producer."
                        if graph221_direct_start_violation_production_ok
                        else
                        "graph221 has a useful diagnostic direct-killed bridge "
                        "for zm_tmpp, but it still enters the trace providers "
                        "through acceptedTraceOfId.  Under the current "
                        "semantic-transducer policy this is not production "
                        "coverage.  Replace it with a deterministic "
                        "closed-language-to-evaluator/start-violation theorem "
                        "over the graph221 suffix split, or fall back to a "
                        "cocycle/cancellation-summary quotient if that proof "
                        "needs trace ids."
                        if graph221_direct_start_violation_ok
                        else
                        (
                        "graph221 is now a validated semantic gate for the "
                        "zm_tmpp lane and exposes the graph-exact root-margin "
                        "socket plus the semantic object-margin target.  The "
                        "next graph221 work is to prove "
                        "Graph221ZmTmppSplit10MBranchMarginFamily from a "
                        "deterministic three-branch margin producer over "
                        "closed holonomy/cancellation state.  The Lean socket "
                        "packages that into "
                        "Graph221ZmTmppSplit10MRootMarginObjectBound and then "
                        "Graph221ZmTmppSplit10MRootMarginSequenceBadFace, "
                        "without accepted trace ids, selected-prefix tables, "
                        "sampled ranks, exact affine RHS keys, or stored paths."
                        if graph221_root_margin_socket_production_ok
                        else
                        "graph221 has a diagnostic graph-exact root-margin "
                        "socket, but it still routes through acceptedTraceOfId. "
                        "The production replacement must be a deterministic "
                        "closed-language-to-evaluator/margin theorem over the "
                        "same semantic suffix split."
                        if graph221_root_margin_socket_ok
                        else
                        "graph221 is now a validated semantic gate for the "
                        "zm_tmpp lane: target-completion itself excludes the "
                        "yp,tmpm,zp branch because the post-yp,tmpm,zp state "
                        "has canComplete = false.  The next work is to apply "
                        "the same deterministic target-completion/evaluator "
                        "pattern to the remaining layer-4 lanes without "
                        "selected-prefix or sampled-rank membership."
                        )
                    )
                    if graph221_direct_semantic_ok
                    else (
                    "graph221 target-completion now reduces the frontier to "
                    "accepted suffixes or the single blocked prefix "
                    "yp,tmpm,zp,..., and the semantic suffix family follows "
                    "from Graph221Layer4BlockedPrefixExcludedFamily.  The next "
                    "proof must be a deterministic closed-language-to-evaluator "
                    "slice: use the target-shadow/cancellation cursor plus "
                    "product-state semantics to exclude the blocked prefix, not "
                    "a selected-prefix cover.  If that exclusion needs sampled "
                    "ranks, exact affine keys, accepted trace ids, or one branch "
                    "per observed path, switch to the cocycle/cancellation-summary "
                    "quotient experiment."
                    if graph221_blocked_prefix_ok
                    else (
                    "graph221 now has a non-circular semantic suffix-family "
                    "frontier: once a production theorem proves "
                    "graph221Layer4AcceptedTailSuffixOk from strengthened "
                    "closed-language product-state semantics, the terminal "
                    "machine gate follows without assuming strengthened "
                    "evaluator success.  The next proof must target "
                    "Graph221Layer4SemanticSuffixFamily.  If that target needs "
                    "selected prefixes, sampled ranks, exact affine keys, or "
                    "one branch per observed path, switch to the "
                    "cocycle/cancellation-summary quotient experiment."
                    if graph221_semantic_suffix_ok
                    else (
                    "graph221 now has a rank-free filtered tail-prefix "
                    "continuation for the three graph-accepted suffixes, "
                    "a graph151-to-graph221 target-completion tail "
                    "decomposition, semantic discharge of the Graph151 "
                    "target-completion tail from the strengthened closed "
                    "language plus depth-11 prefix, a local theorem deriving the suffix "
                    "filter from target-completion plus the strengthened "
                    "product-state evaluator, and a lane-level terminal "
                    "machine gate that starts from the initial state once "
                    "the strengthened eval success premise is supplied. "
                    "This is not a full lane gate yet: the next proof must "
                    "derive that evaluator success directly from the "
                    "strengthened closed-language rank/prefix hypotheses."
                    if graph221_filtered_ok
                    else (
                    "graph151 now advances semantically through tppp to "
                    "graph159, graph171, graph186, and graph202, reaching "
                    "the graph221 branching frontier; no graph221 "
                    "filtered suffix/terminal continuation table analogous "
                    "to graph183 is present"
                    if zm_tmpp_chain_ok
                    else (
                        "graph151 target-completion semantics forces the next "
                        "face tppp, but no graph151 post-tppp suffix/terminal "
                        "continuation table analogous to graph183 is present"
                    )
                    )
                    )
                    )
                    )
                ),
            }
        elif lane in {"yp_zm", "zm_yp"}:
            if (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
                and graph147_graph36_41_ok
                and graph147_graph69_75_ok
                and graph147_graph112_109_ok
                and graph147_deterministic_target_shard_ok
                and graph147_direct_eval_socket_ok
            ):
                partial_status = "partial_graph147_direct_eval_socket"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
                and graph147_graph36_41_ok
                and graph147_graph69_75_ok
                and graph147_graph112_109_ok
                and graph147_deterministic_target_shard_ok
            ):
                partial_status = "partial_terminal_graph141_graph138_deterministic_target_api"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
                and graph147_graph36_41_ok
                and graph147_graph69_75_ok
                and graph147_graph112_109_ok
            ):
                partial_status = "partial_terminal_graph141_graph138_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
                and graph147_graph36_41_ok
                and graph147_graph69_75_ok
            ):
                partial_status = "partial_graph69_graph75_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
                and graph147_graph36_41_ok
            ):
                partial_status = "partial_graph36_graph41_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
                and graph147_graph6_11_ok
            ):
                partial_status = "partial_graph6_graph11_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
                and graph147_graph208_211_ok
            ):
                partial_status = "partial_graph208_graph211_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
                and graph147_graph191_194_ok
            ):
                partial_status = "partial_graph191_graph194_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
                and graph147_graph176_178_ok
            ):
                partial_status = "partial_graph176_graph178_target_completion_local_table"
            elif (
                graph147_target_completion_ok
                and graph147_suffix_ok
                and graph147_deep_suffix_ok
            ):
                partial_status = "partial_graph163_graph166_target_completion_local_table"
            elif graph147_target_completion_ok and graph147_suffix_ok:
                partial_status = "partial_graph153_graph155_target_completion_local_table"
            elif graph147_target_completion_ok:
                partial_status = "partial_graph147_target_completion_local_table"
            else:
                partial_status = "missing_terminal_lane_semantic_gate"
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": partial_status,
                "file": str(NEXT_FRONTIER_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in graph147_target_completion_missing
                    for symbol in GRAPH147_TARGET_COMPLETION_REQUIRED
                },
                "suffix_symbols": {
                    symbol: symbol not in graph147_suffix_missing
                    for symbol in GRAPH147_SUFFIX_REQUIRED
                },
                "deep_suffix_symbols": {
                    symbol: symbol not in graph147_deep_suffix_missing
                    for symbol in GRAPH147_DEEP_SUFFIX_REQUIRED
                },
                "graph176_178_symbols": {
                    symbol: symbol not in graph147_graph176_178_missing
                    for symbol in GRAPH147_GRAPH176_178_REQUIRED
                },
                "graph191_194_symbols": {
                    symbol: symbol not in graph147_graph191_194_missing
                    for symbol in GRAPH147_GRAPH191_194_REQUIRED
                },
                "graph208_211_symbols": {
                    symbol: symbol not in graph147_graph208_211_missing
                    for symbol in GRAPH147_GRAPH208_211_REQUIRED
                },
                "graph6_11_symbols": {
                    symbol: symbol not in graph147_graph6_11_missing
                    for symbol in GRAPH147_GRAPH6_11_REQUIRED
                },
                "graph36_41_symbols": {
                    symbol: symbol not in graph147_graph36_41_missing
                    for symbol in GRAPH147_GRAPH36_41_REQUIRED
                },
                "graph69_75_symbols": {
                    symbol: symbol not in graph147_graph69_75_missing
                    for symbol in GRAPH147_GRAPH69_75_REQUIRED
                },
                "graph112_109_symbols": {
                    symbol: symbol not in graph147_graph112_109_missing
                    for symbol in GRAPH147_GRAPH112_109_REQUIRED
                },
                "deterministic_target_shard_symbols": {
                    symbol: symbol not in graph147_deterministic_target_shard_missing
                    for symbol in GRAPH147_DETERMINISTIC_TARGET_SHARD_REQUIRED
                },
                "direct_eval_socket_symbols": {
                    symbol: symbol not in graph147_direct_eval_socket_missing
                    for symbol in GRAPH147_DIRECT_EVAL_SOCKET_REQUIRED
                },
                "ranked_transducer_target_symbols": {
                    symbol: symbol not in graph147_ranked_transducer_target_missing
                    for symbol in GRAPH147_RANKED_TRANSDUCER_TARGET_REQUIRED
                },
                "ranked_transducer_target_status": (
                    "accepted_graph147_ranked_transducer_boundary"
                    if graph147_ranked_transducer_target_ok
                    else "missing_graph147_ranked_transducer_boundary"
                ),
                "ranked_eval_socket_symbols": {
                    symbol: symbol not in graph147_ranked_eval_socket_missing
                    for symbol in GRAPH147_RANKED_EVAL_SOCKET_REQUIRED
                },
                "ranked_eval_socket_status": (
                    "accepted_graph147_ranked_eval_socket"
                    if graph147_ranked_eval_socket_ok
                    else "missing_graph147_ranked_eval_socket"
                ),
                "cocycle_branch_smoke_symbols": {
                    symbol: symbol not in graph147_cocycle_branch_smoke_missing
                    for symbol in GRAPH147_COCYCLE_BRANCH_SMOKE_REQUIRED
                },
                "cocycle_branch_smoke_status": (
                    "diagnostic_branch_smoke_passed"
                    if graph147_cocycle_branch_smoke_ok
                    else "missing_diagnostic_branch_smoke"
                ),
                "cocycle_edge_shards_symbols": {
                    symbol: symbol not in graph147_cocycle_edge_shards_missing
                    for symbol in GRAPH147_COCYCLE_EDGE_SHARDS_REQUIRED
                },
                "cocycle_edge_shards_status": (
                    "diagnostic_full_edge_shards_passed"
                    if graph147_cocycle_edge_shards_ok
                    else "missing_diagnostic_full_edge_shards"
                ),
                "full_potential_shards_symbols": {
                    symbol: symbol not in graph147_full_potential_shards_missing
                    for symbol in GRAPH147_FULL_POTENTIAL_SHARDS_REQUIRED
                },
                "full_potential_shards_status": (
                    "diagnostic_full_potential_shards_passed"
                    if graph147_full_potential_shards_ok
                    else "missing_diagnostic_full_potential_shards"
                ),
                "forbidden_hits": [
                    token
                    for token in FORBIDDEN
                    if token in next_frontier_text
                    or token in target_completion_shard000_text
                    or token in graph147_direct_eval_socket_text
                    or token in graph147_ranked_eval_socket_text
                    or token in graph147_cocycle_branch_smoke_text
                    or token in graph147_cocycle_edge_shards_text
                    or token in graph147_full_potential_shards_text
                ],
                "remaining_gap": (
                    "graph147 now has a direct semantic eval socket for the "
                    "yp,zm and zm,yp layer-4 branches, and the branch-local "
                    "Graph147TargetCompletionTail fields are proved directly "
                    "from TopPairingStrengthenedClosedLanguageAtRank plus "
                    "Depth11Layer4PrefixAtRank.  The future generated proof "
                    "target is now the margin-only "
                    "StrengthenedGraph147RootMarginBundle, not a mapped class "
                    "case: it must prove the remaining "
                    "Graph147TargetCompletionTailRootMarginBound fields.  The "
                    "Lean socket derives the tail and adapts the margin-only "
                    "bundle to the compatibility tail-plus-margin family.  "
                    "A bounded cocycle quotient branch smoke supports this "
                    "route diagnostically but is not coverage evidence.  "
                    "Tail plus margin then produce "
                    "TopPairingGraphExactEvalGateAtRank directly.  The lane "
                    "is still partial until those margin fields are proved.  "
                    "The sharper preferred route is now the ranked-transducer "
                    "boundary in this file: prove a finish/root-margin theorem "
                    "for `StrengthenedGraph147RankedTransducerInvariantFamily`, "
                    "using `Graph147RankedShardSuffixOk` for suffix closure, "
                    "not a mapped class case or selected-prefix membership."
                    "  The ranked-eval socket goes one step further: it proves "
                    "the suffix evaluator induction and reduces production to "
                    "a semantic branch start-margin predicate such as "
                    "`Graph147RankedEvalMarginSequenceBadFace` or a "
                    "`StrengthenedGraph147RankedShardMarginInvariantFamily`."
                    if graph147_direct_eval_socket_ok
                    else (
                    "graph147 now reaches terminal graph states 141 and 138 "
                    "and the bounded shard exposes a deterministic "
                    "nextTarget? API from semantic shard states to either the "
                    "next shard state or an external graph target.  It also "
                    "proves that target-completion tails feed the recursive "
                    "ShardTargetSuffixOk predicate and compose to evaluator "
                    "existence under external graph sockets.  It now separates "
                    "terminal graph states 141/138 from continuation graph "
                    "states 157/159, with empty-tail evaluator/final-potential "
                    "sockets only for the terminal exits.  The lane now exposes "
                    "both the suffix-started margin socket "
                    "Graph147TargetCompletionTailMarginBound and the root-gain "
                    "socket Graph147TargetCompletionTailRootMarginBound, with "
                    "BellmanEvalAccepts and TopPairingGraphExactEvalGateAtRank "
                    "adapters for the yp,zm and zm,yp prefixes.  It still "
                    "needs a semantic proof that the closed language supplies "
                    "one of those prefix splits, the Graph147TargetCompletionTail, "
                    "and the root-gain margin bound, without selected-prefix "
                    "or sampled-rank membership.  The "
                    "graph150/151 continuation "
                    "states still need their own continuation-to-margin sockets "
                    "outside this graph147 lane."
                    if graph147_deterministic_target_shard_ok
                    else (
                    "graph147 now reaches terminal graph states 141 and 138 "
                    "through deterministic target-completion/evaluator local "
                    "tables.  The lane still needs the terminal semantic "
                    "eval/margin gate that consumes these local tables and "
                    "proves the closed-language-to-eval theorem without "
                    "selected-prefix or sampled-rank membership."
                    if graph147_graph112_109_ok
                    else (
                    "graph147 now advances through graph69 and graph75.  "
                    "The latest forced steps are graph69 to tmmp/graph112 "
                    "and graph75 to zp/graph109.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph112 and graph109 before it becomes "
                    "a terminal semantic gate."
                    if graph147_graph69_75_ok
                    else (
                    "graph147 now advances through graph36 and graph41.  "
                    "The latest forced steps are graph36 to tmpp/graph69 "
                    "and graph41 to tmmm/graph75.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph69 and graph75 before it becomes "
                    "a terminal semantic gate."
                    if graph147_graph36_41_ok
                    else (
                    "graph147 now advances through graph6 and graph11.  "
                    "The latest forced steps are graph6 to tppp/graph36 "
                    "and graph11 to tmpm/graph41.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph36 and graph41 before it becomes "
                    "a terminal semantic gate."
                    if graph147_graph6_11_ok
                    else (
                    "graph147 now advances through graph208 and graph211.  "
                    "The latest forced steps are graph208 to tmpm/graph6 "
                    "and graph211 to tppm/graph11.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph6 and graph11 before it becomes "
                    "a terminal semantic gate."
                    if graph147_graph208_211_ok
                    else (
                    "graph147 now advances through graph191 and graph194.  "
                    "The latest forced steps are graph191 to tpmp/graph208 "
                    "and graph194 to tmpp/graph211.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph208 and graph211 before it "
                    "becomes a terminal semantic gate."
                    if graph147_graph191_194_ok
                    else (
                    "graph147 now advances through graph153/155, graph163/166, "
                    "and graph176/178.  The latest forced steps are graph176 "
                    "to tppm/graph191 and graph178 to tpmm/graph194.  The "
                    "lane still needs deterministic target-completion/evaluator "
                    "suffix continuations from graph191 and graph194 before it "
                    "becomes a terminal semantic gate."
                    if graph147_graph176_178_ok
                    else (
                    "graph147 now advances through graph153 and graph155, "
                    "and those continuations advance deterministically again: "
                    "graph163 forces tpmm/graph176 while graph166 forces "
                    "tppp/graph178.  The lane still needs deterministic "
                    "target-completion/evaluator suffix continuations from "
                    "graph176 and graph178 before it becomes a terminal "
                    "semantic gate."
                    if graph147_deep_suffix_ok
                    else (
                    "graph147 now advances semantically through both target "
                    "completion heads: zp reaches graph153 and is forced next "
                    "to tmmm/graph163, while tmmp reaches graph155 and is "
                    "forced next to tpmp/graph166.  The lane still needs "
                    "deterministic target-completion/evaluator suffix "
                    "continuations from graph163 and graph166 before it "
                    "becomes a terminal semantic gate."
                    if graph147_suffix_ok
                    else (
                        "graph147 target-completion now restricts the shared "
                        "yp_zm/zm_yp local frontier to the Bellman heads zp "
                        "and tmmp.  The lane still needs deterministic suffix "
                        "continuations from graph153 and graph155 before it "
                        "becomes a terminal semantic gate."
                    )
                    )
                    )
                    )
                    )
                    )
                    )
                    )
                    )
                    )
                    )
                ),
            }
        else:
            lane_report[lane] = {
                "third": third,
                "fourth": fourth,
                "status": "missing_terminal_lane_semantic_gate",
                "file": None,
                "required_symbols": {},
                "forbidden_hits": [],
            }

    validated = [
        lane
        for lane, data in lane_report.items()
        if data["status"].startswith("validated")
    ]
    missing = [
        lane
        for lane, data in lane_report.items()
        if not data["status"].startswith("validated")
    ]
    partial = [
        lane
        for lane, data in lane_report.items()
        if data["status"].startswith("partial_")
    ]
    diagnostic = [
        lane
        for lane, data in lane_report.items()
        if data["status"].startswith("diagnostic_")
    ]

    payload = {
        "status": (
            "validated_lanes_remaining_lanes_missing"
            if validated and missing
            else "no_validated_terminal_lanes"
        ),
        "validated_lane_count": len(validated),
        "partial_lane_count": len(partial),
        "diagnostic_lane_count": len(diagnostic),
        "missing_lane_count": len(missing),
        "validated_lanes": validated,
        "partial_lanes": partial,
        "diagnostic_lanes": diagnostic,
        "missing_lanes": missing,
        "bellman_segment_core": {
            "status": (
                "accepted_certified_segment_core"
                if bellman_segment_core_ok
                else "missing_certified_segment_core"
            ),
            "file": str(BELLMAN_POTENTIAL_FILE.relative_to(ROOT)),
            "required_symbols": {
                symbol: symbol not in bellman_segment_core_missing
                for symbol in BELLMAN_SEGMENT_CORE_REQUIRED
            },
            "interpretation": (
                "Certified segment composition and evaluator-to-segment "
                "adapters are available for future cancellation/segment "
                "margin producers.  This is a proof principle only, not "
                "coverage evidence."
                if bellman_segment_core_ok
                else (
                    "The cancellation/segment fallback does not yet have the "
                    "generic theorem surface needed for production margin "
                    "producers."
                )
            ),
        },
        "bellman_gauge_corrected_core": {
            "status": (
                "accepted_gauge_corrected_quotient_core"
                if bellman_gauge_corrected_core_ok
                else "missing_gauge_corrected_quotient_core"
            ),
            "file": str(BELLMAN_POTENTIAL_FILE.relative_to(ROOT)),
            "required_symbols": {
                symbol: symbol not in bellman_gauge_corrected_core_missing
                for symbol in BELLMAN_GAUGE_CORRECTED_CORE_REQUIRED
            },
            "interpretation": (
                "Gauge-corrected cocycle quotient runs can now be converted "
                "to raw margin bounds using final gauge domination and a "
                "root gauge-corrected bound.  This is a proof principle only, "
                "not graph147 coverage evidence."
                if bellman_gauge_corrected_core_ok
                else (
                    "The graph147 gauge-corrected margin candidate still lacks "
                    "a generic Lean theorem surface."
                )
            ),
        },
        "semantic_transducer_pivot": {
            "status": (
                "accepted_closed_language_transducer_boundary"
                if (
                    target_cursor_ok
                    and transducer_tail_ok
                    and terminal_state_step_socket_ok
                    and closed_transducer_producer_socket_ok
                )
                else "missing_closed_language_transducer_boundary"
            ),
            "policy": (
                "Production Bellman membership must be proved by deterministic "
                "closed-language target-cursor/transducer machines.  Selected "
                "prefixes, sampled ranks, accepted-trace ids, exact affine RHS "
                "keys, and stored paths are diagnostic-only and must not be the "
                "public coverage surface."
            ),
            "target_cursor": {
                "status": (
                    "accepted_target_shadow_cursor"
                    if target_cursor_ok
                    else "missing_target_shadow_cursor"
                ),
                "file": str(TARGET_CURSOR_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in target_cursor_missing
                    for symbol in TARGET_CURSOR_REQUIRED
                },
            },
            "transducer_tail": {
                "status": (
                    "accepted_transducer_tail"
                    if transducer_tail_ok
                    else "missing_transducer_tail"
                ),
                "file": str(TRANSDUCER_TAIL_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in transducer_tail_missing
                    for symbol in TRANSDUCER_TAIL_REQUIRED
                },
            },
            "terminal_state_step_socket": {
                "status": (
                    "accepted_terminal_state_step_socket"
                    if terminal_state_step_socket_ok
                    else "missing_terminal_state_step_socket"
                ),
                "file": str(TERMINAL_STATE_STEP_SOCKET_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in terminal_state_step_socket_missing
                    for symbol in TERMINAL_STATE_STEP_SOCKET_REQUIRED
                },
            },
            "closed_transducer_producer_socket": {
                "status": (
                    "accepted_closed_transducer_producer_socket"
                    if closed_transducer_producer_socket_ok
                    else "missing_closed_transducer_producer_socket"
                ),
                "file": str(CLOSED_TRANSDUCER_PRODUCER_SOCKET_FILE.relative_to(ROOT)),
                "required_symbols": {
                    symbol: symbol not in closed_transducer_producer_socket_missing
                    for symbol in CLOSED_TRANSDUCER_PRODUCER_SOCKET_REQUIRED
                },
            },
            "forbidden_hits": [
                token
                for token in FORBIDDEN
                if token in target_cursor_text
                or token in transducer_tail_text
                or token in terminal_state_step_socket_text
                or token in closed_transducer_producer_socket_text
            ],
        },
        "graph147_ranked_transducer_target": {
            "status": (
                "accepted_graph147_ranked_transducer_boundary"
                if graph147_ranked_transducer_target_ok
                else "missing_graph147_ranked_transducer_boundary"
            ),
            "file": (
                str(GRAPH147_DIRECT_EVAL_SOCKET_FILE.relative_to(ROOT))
                if GRAPH147_DIRECT_EVAL_SOCKET_FILE.exists()
                else None
            ),
            "required_symbols": {
                symbol: symbol not in graph147_ranked_transducer_target_missing
                for symbol in GRAPH147_RANKED_TRANSDUCER_TARGET_REQUIRED
            },
            "interpretation": (
                "Graph147 has the preferred deterministic ranked-transducer "
                "boundary for the yp_zm and zm_yp lanes.  The suffix-start "
                "and local-step pieces are semantic and rank-parametric; the "
                "remaining proof-producing target is the finish/root-margin "
                "field of StrengthenedGraph147RankedTransducerInvariantFamily, "
                "not a mapped-branch classifier or selected-prefix cover."
                if graph147_ranked_transducer_target_ok
                else (
                    "Graph147 direct eval support exists only as a partial "
                    "socket.  Add the ranked-transducer invariant boundary "
                    "before scaling another graph147 producer."
                )
            ),
            "forbidden_hits": [
                token
                for token in FORBIDDEN
                if token in graph147_direct_eval_socket_text
            ],
        },
        "graph147_ranked_eval_socket": {
            "status": (
                "accepted_graph147_ranked_eval_socket"
                if graph147_ranked_eval_socket_ok
                else "missing_graph147_ranked_eval_socket"
            ),
            "file": (
                str(GRAPH147_RANKED_EVAL_SOCKET_FILE.relative_to(ROOT))
                if GRAPH147_RANKED_EVAL_SOCKET_FILE.exists()
                else None
            ),
            "required_symbols": {
                symbol: symbol not in graph147_ranked_eval_socket_missing
                for symbol in GRAPH147_RANKED_EVAL_SOCKET_REQUIRED
            },
            "interpretation": (
                "Graph147 ranked suffix evaluation is already packaged as a "
                "semantic induction.  It proves evaluator existence/final "
                "potential from Graph147RankedShardSuffixOk and reduces the "
                "remaining production work to branch start-margin facts, "
                "preferably Graph147RankedEvalMarginSequenceBadFace or "
                "StrengthenedGraph147RankedShardMarginInvariantFamily."
                if graph147_ranked_eval_socket_ok
                else (
                    "Graph147 has a ranked-transducer boundary, but the "
                    "ranked suffix-eval/margin adapter socket is not yet "
                    "visible to the audit."
                )
            ),
            "forbidden_hits": [
                token
                for token in FORBIDDEN
                if token in graph147_ranked_eval_socket_text
            ],
        },
        "direct_killed_layer4_portfolio": {
            "status": (
                "accepted_graph183_graph221_direct_portfolio_socket"
                if graph183_graph221_direct_portfolio_production_ok
                else "diagnostic_graph183_graph221_direct_portfolio_uses_accepted_trace"
                if graph183_graph221_direct_portfolio_ok
                else "missing_graph183_graph221_direct_portfolio_socket"
            ),
            "file": (
                str(GRAPH183_GRAPH221_DIRECT_PORTFOLIO_SOCKET_FILE.relative_to(ROOT))
                if GRAPH183_GRAPH221_DIRECT_PORTFOLIO_SOCKET_FILE.exists()
                else None
            ),
            "required_symbols": {
                symbol: symbol not in graph183_graph221_direct_portfolio_missing
                for symbol in GRAPH183_GRAPH221_DIRECT_PORTFOLIO_REQUIRED
            },
            "covered_direct_lanes": [
                "tmpm_zm",
                "zm_tmpp",
            ] if graph183_graph221_direct_portfolio_production_ok else [],
            "diagnostic_direct_lanes": [
                "tmpm_zm",
                "zm_tmpp",
            ] if (
                graph183_graph221_direct_portfolio_ok
                and not graph183_graph221_direct_portfolio_production_ok
            ) else [],
            "remaining_layer4_obligations": [
                "tmpm_tppm",
                "yp_tmmm",
                "yp_zm",
                "zm_yp",
                "zm_zp",
            ],
            "interpretation": (
                "Layer-4 assembly now has direct killed routes for graph183 "
                "tmpm_zm and graph221 zm_tmpp.  The remaining branches should "
                "be attacked with the same semantic transducer/direct-killed "
                "discipline before adding any new selected-prefix or sampled "
                "membership route."
                if graph183_graph221_direct_portfolio_production_ok
                else (
                    "The combined graph183+graph221 direct portfolio builds "
                    "as a useful diagnostic, but the graph221 half still "
                    "depends on acceptedTraceOfId through its direct bridge. "
                    "It is not production coverage under the semantic "
                    "transducer pivot."
                )
                if graph183_graph221_direct_portfolio_ok
                else (
                    "The direct graph183+graph221 layer-4 portfolio socket is "
                    "not yet visible to the audit."
                )
            ),
        },
        "lanes": lane_report,
        "next_recommended_slice": (
            (
                "use the accepted closed-language transducer boundary and the "
                "diagnostic graph221 bridge to replace acceptedTraceOfId with "
                "a deterministic closed-language-to-evaluator or direct "
                "start-violation theorem.  Do not scale the combined "
                "graph183+graph221 portfolio until this trace-id dependency is "
                "gone"
                if (
                    graph221_direct_start_violation_ok
                    and not graph221_direct_start_violation_production_ok
                )
                else
                (
                    (
                        "use the accepted graph147 ranked-eval socket as the "
                        "next theorem target: prove semantic branch start-margin "
                        "facts for Graph147RankedEvalMarginSequenceBadFace, or "
                        "instantiate StrengthenedGraph147RankedShardMarginInvariantFamily "
                        "with a real margin invariant.  The suffix evaluator "
                        "induction and final-potential side are already packaged; "
                        "do not fall back to mapped class cases, selected-prefix "
                        "covers, sampled ranks, accepted traces, exact affine "
                        "keys, or stored path membership"
                        if graph147_ranked_eval_socket_ok
                        else
                        "use the accepted graph147 ranked-transducer boundary as "
                        "the next theorem target: prove the finish/root-margin "
                        "field needed by StrengthenedGraph147RankedTransducerInvariantFamily "
                        "for the yp_zm and zm_yp lanes.  The suffix-start and "
                        "local-step theorem surfaces are already semantic; do not "
                        "fall back to mapped class cases, selected-prefix covers, "
                        "sampled ranks, accepted traces, exact affine keys, or "
                        "stored path membership"
                    )
                    if graph147_ranked_transducer_target_ok
                    else
                    "use the accepted closed-language transducer boundary and "
                    "the graph183+graph221 direct portfolio to attack one "
                    "remaining layer-4 obligation semantically.  Prefer a "
                    "direct start-violation/terminal route if one exists; "
                    "otherwise prove a deterministic closed-language-to-evaluator/"
                    "margin theorem.  Stop immediately if the proof needs "
                    "selected-prefix, sampled-rank, accepted-trace, exact-affine, "
                    "or stored-path membership"
                )
                if graph221_direct_start_violation_production_ok
                else (
                "prove Graph221ZmTmppSplit10MRootMarginSequenceBadFace from a "
                "deterministic graph221 object-margin producer over closed "
                "holonomy/cancellation state, preferably targeting "
                "Graph221ZmTmppSplit10MBranchMarginFamily first; if that "
                "proof wants exact affine RHS, selected-prefix, "
                "accepted-trace, sampled-rank, or stored-path membership, "
                "stop and run the cocycle/cancellation-summary quotient "
                "experiment"
                if graph221_root_margin_socket_ok
                else
                "continue the deterministic semantic terminal-lane pattern on "
                "the remaining layer-4 lanes; use target-completion/evaluator "
                "product state and stop for the cocycle/cancellation-summary "
                "quotient experiment if a lane requires selected-prefix, "
                "sampled-rank, accepted-trace, exact-affine, or "
                "per-observed-path membership"
                )
            )
            if graph221_direct_semantic_ok
            else (
            "prove Graph221Layer4BlockedPrefixExcludedFamily as a deterministic "
            "closed-language-to-evaluator theorem for the zm_tmpp graph221 "
            "frontier, using target-shadow/cancellation cursor and product-state "
            "semantics; if that proof wants selected-prefix, sampled-rank, "
            "accepted-trace, exact-affine, or per-observed-path membership, stop "
            "and run the cocycle/cancellation-summary quotient experiment"
            if graph221_blocked_prefix_ok
            else (
            "prove Graph221Layer4SemanticSuffixFamily from deterministic "
            "product-state/cancellation semantics for the zm_tmpp graph221 "
            "frontier; if that proof wants selected-prefix or exact-affine "
            "membership, stop and run the cocycle/cancellation-summary "
            "quotient experiment"
            if graph221_semantic_suffix_ok
            else (
            "lift the zm_tmpp lane through graph221 by deriving the "
            "strengthened evaluator success from the strengthened "
            "closed-language prefix, then feed "
            "the resulting accepted suffix into the same four-piece "
            "terminal-machine pattern validated by graph183"
            if graph221_filtered_ok
            else (
                "continue the zm_tmpp semantic continuation at the graph221 "
                "branching frontier by generating or proving a filtered "
                "target-completion suffix/terminal continuation, then lift the "
                "lane through the same four-piece terminal-machine pattern "
                "validated by graph183"
                if zm_tmpp_chain_ok
                else (
                    "generate or prove the graph151 post-tppp suffix/terminal "
                    "continuation for the partial zm_tmpp lane, then lift it "
                    "through the same four-piece terminal-machine pattern "
                    "validated by graph183"
                )
                )
            )
            )
            )
        ),
    }

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
