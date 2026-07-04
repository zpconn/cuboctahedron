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
        "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
        "graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch",
        "graph169ContinuationFamily_of_graph183TailFinalMargin",
        "graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedBranch",
        "graphExactEvalGateAtRank_of_graph183TailFinalMargin",
        "graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch",
        "graph183TailTableSocket_builds",
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
            "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
        ],
        "must_not_contain": [
            "graphSmokeNext",
            "Split10MGraphExactEvalGateAtRank",
            "ExactGraphFinishMarginBound",
            "Split10MExactGraphFinishFinalMarginProducer",
        ],
    }
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
            "The target-completion branch socket factors that strengthened",
            "surface one step further through `TopPairingTargetCompletionTail`.",
            "That is the current production shape for the pivot: prove remaining",
            "suffix membership from semantic actual-face / target-cancellation",
            "state, then classify to a graph-exact mapped case.",
            "",
            "The local-step socket then turns a semantic local branch table into",
            "a reusable target-completion branch family by consuming one face and",
            "passing the smaller suffix to a continuation.",
            "",
            "The first target-completion local branch-table shard is also",
            "tracked here.  It covers the graph-150/151 prefix-4 states by",
            "semantic `TopPairingTargetCompletionTail` transitions rather than",
            "observed traces.",
            "",
            "The direct graph-150 eval socket exposes the same first concrete",
            "branch through `TopPairingGraphExactEvalGateAtRank`: semantic",
            "target-completion forces `zp`, the strengthened evaluator reaches",
            "graph `157`, and a semantic post-`zp` suffix continuation supplies",
            "the final evaluator result and margin bound.  This is the preferred",
            "surface for the closed-language-to-evaluator pivot.",
            "",
            "The graph-157 continuation socket consumes one more semantic",
            "target-completion step.  After graph `150` forces `zp`, target",
            "completion forces `tppm`, the strengthened graph reaches `169`,",
            "and the remaining proof obligation is a still-smaller graph-169",
            "semantic suffix continuation.",
            "",
            "The graph-169 continuation socket consumes a third deterministic",
            "target-completion step.  After `zp,tppm`, target completion forces",
            "`tpmm`, the strengthened graph reaches `183`, and the remaining",
            "suffix is now small enough that the next scalable move should be a",
            "generated finite local-state table rather than more hand-written",
            "one-step sockets.",
            "",
            "The graph-183 tail-table socket records the first non-deterministic",
            "target-completion point on this branch.  Target-completion allows",
            "two tails: the `yp,tmpp,tmmp,xp` tail evaluates from graph `183`",
            "to `(126, -542)`, while the `tmmp,tmpp,yp,xp` tail reaches graph",
            "`19` with head `tmmp`, where `closedBellmanNext 19 Face.tmmp =",
            "none`.  The production obligation is therefore a final-margin",
            "proof for the accepted `yp` branch plus a semantic impossibility",
            "proof for the blocked `tmmp` branch.",
            "",
            "The blocked `tmmp` branch is now discharged semantically for the",
            "generated accepted bad-face predicate.  The socket proves that the",
            "blocked target-completion tail is `[tmpp, yp, xp]`, hence the full",
            "rank label list is exactly `rejectedGraphTrace_004`, and then uses",
            "`AcceptedSequenceBadFaceAtRank` / `sequenceBadFace_ok` to rule it",
            "out:",
            "",
            "```lean",
            "theorem graph183_blocked_branch_absurd_of_acceptedSequenceBadFace",
            "structure AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily",
            "theorem graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch",
            "theorem graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch",
            "```",
            "",
            "The completion-tail component is now closed semantically by the",
            "target cursor: the cursor gives the graph150 target-cancellation",
            "tail, and schedule/square/used/length state gives",
            "`Graph150TargetCompletionTail`.  The next producer for this branch",
            "should target only the remaining accepted-tail integer margin",
            "component:",
            "",
            "```lean",
            "AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin",
            "```",
            "",
            "The component combiner is:",
            "",
            "```lean",
            "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
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
        "semantic_evaluator_pivot_ready_for_membership_producer"
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
            "AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin"
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
