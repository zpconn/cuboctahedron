#!/usr/bin/env python3
"""Audit the top-pairing Bellman transducer pivot.

This is a text-only, memory-safe strategy audit.  It records the latest
decision boundary:

* keep Bellman as the margin certificate architecture;
* reject selected-prefix/root-trace membership as the production membership
  proof surface;
* target a deterministic semantic transducer theorem from the closed
  holonomy/cancellation language to `evalLabelStepFn`;
* use the top-pairing target shadow/cursor as the next compact semantic field.

The script does not enumerate ranks and does not build generated Lean modules.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_transducer_pivot.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_transducer_pivot.md"

FILES = {
    "cancellation_language": ROOT / "Cuboctahedron/Search/CancellationPairingLanguage.lean",
    "top_pairing_language": ROOT / "Cuboctahedron/Search/BellmanTopPairingLanguage.lean",
    "bellman_potential": ROOT / "Cuboctahedron/Search/BellmanPotential.lean",
    "bellman_object": ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean",
    "semantic_gate": ROOT / "Cuboctahedron/Search/TopPairingBellmanSemanticGate.lean",
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "transducer_eval_bridge": ROOT / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean",
    "transducer_semantic_gate": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean",
    "closed_eval_gate": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean",
    "branch_table_semantic_gate_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSemanticGateSocket.lean",
    "missing_transition_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingMissingTransition1MSocket.lean",
    "strengthened_local_1m": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedLocal1MSmoke.lean",
    "selected_prefix_root_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingRootTraceMarginSelectedPrefixBridge.lean",
    "selected_prefix_state_dag_root": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStateDAGSelectedPrefixCover/All.lean",
}

PATTERNS = {
    "target_shadow": [
        "topPairingTargetShadow",
        "topPairingTargetSummary",
        "topPairingTargetShadow_summary",
        "triangularCancellationSummaryOfShadow",
        "TopPairingLanguageAtRank",
    ],
    "closed_language_fields": [
        "TopPairingClosedLanguageAtRank",
        "TopPairingClosedLanguageForSeq",
        "TopPairingStepSchedule",
        "TopPairingSquareGap",
        "TopPairingLocalAxis",
        "canonicalBadFace",
    ],
    "eval_core": [
        "evalLabelStepFn",
        "evalLabelStepFn_append",
        "evalLabelStepFn_bound_of_next_invariant",
        "BellmanLabelStepRun.append",
        "bellmanLabelStepRunLanguageBound_of_eval",
    ],
    "semantic_eval_gate": [
        "TopPairingClosedToEvalGate",
        "TopPairingStrengthenedToEvalGate",
        "TopPairingBellmanEvalLanguageAtRank",
        "TopPairingBellmanEvalObj",
        "TopPairingBellmanObj",
    ],
    "target_cursor_core": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target",
        "topPairingActedTriLetters_eq_target_of_closed",
        "TopPairingTriCursorFrom",
        "topPairingTriCursor_of_closed",
    ],
    "semantic_tail_core": [
        "TopPairingTransducerTail.ofClosedRank",
        "TopPairingTransducerTail.cons",
        "TopPairingTransducerTail.cons_square_tail",
        "TopPairingTransducerTail.cons_tri_tail",
    ],
    "suffix_eval_core": [
        "evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix",
        "TopPairingTransducerEvalState",
        "StrengthenedSuffixOk",
    ],
    "ranked_semantic_gate_core": [
        "closedToEvalGate_of_transducerInvariantLocalWithSuffix",
        "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
        "scaledMargin_nonpos_of_rankedTransducerClosedGate",
    ],
    "branch_table_semantic_gate_socket": [
        "Split10MBranchTableClosedEvalFamily",
        "split10MClosedToEvalGate_of_branchTableClosedEvalFamily",
        "scaledMargin_nonpos_of_branchTableClosedEvalFamily",
    ],
    "semantic_socket_core": [
        "strengthened_no_missingState19TmmpSemanticTail",
        "strengthened_no_missingState150TpppSemanticTail",
        "missingState19TmmpSemanticEvalState",
        "missingState150TpppSemanticEvalState",
    ],
    "selected_prefix_production_risk": [
        "SelectedPrefixCoverFamily",
        "SelectedPrefixResidualRankCovered",
        "RootTraceMarginProducer",
        "strengthenedSelectedPrefixCover_of_rootTraceMarginProducer",
        "SelectedPrefixTraceMarginFamily",
    ],
    "forbidden_sampled_surface": [
        "SampledRankIndex",
        "sampledContainsRank",
        "sampledRankOf",
        "sampledSmokeNext",
    ],
}

GUARD_FILES = {
    "frontier_direct_check": ROOT
    / "scripts/generated/top_pairing_production_frontier_guard.json",
    "root_bridge_hard_as": ROOT
    / "scripts/generated/top_pairing_root_trace_margin_selected_prefix_bridge_guard_for_frontier.json",
    "root_bridge_rss_cap": ROOT
    / "scripts/generated/top_pairing_root_trace_margin_selected_prefix_bridge_guard_for_frontier_no_as.json",
    "state150_socket_direct": ROOT
    / "scripts/generated/bellman_missing_transition_1m_socket_state150_guard.json",
    "strengthened_local_lake": ROOT
    / "scripts/generated/bellman_top_pairing_strengthened_local_1m_smoke_lake_guard.json",
    "strengthened_local_direct": ROOT
    / "scripts/generated/bellman_top_pairing_strengthened_local_1m_smoke_guard.json",
    "target_cursor_latest_direct": ROOT
    / "scripts/generated/top_pairing_target_cursor_pivot_latest_guard.json",
    "transducer_tail_latest_direct": ROOT
    / "scripts/generated/top_pairing_transducer_tail_pivot_latest_guard.json",
    "transducer_semantic_gate_latest_direct": ROOT
    / "scripts/generated/top_pairing_transducer_semantic_gate_latest_guard.json",
    "branch_table_semantic_gate_socket_direct": ROOT
    / "scripts/generated/branch_table_semantic_gate_socket_guard.json",
}

DIAGNOSTIC_JSON = {
    "graph_1m": ROOT
    / "scripts/generated/"
    / "nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json",
    "closure_with_bad_face_1m": ROOT
    / "scripts/generated/bellman_target_pairing_closure_with_bad_face_1m.json",
    "state150_tppp_audit": ROOT
    / "scripts/generated/bellman_state150_tppp_explicit_transition_audit.json",
}


def read_text(path: Path) -> str:
    return path.read_text() if path.exists() else ""


def scan_file(path: Path) -> dict[str, Any]:
    text = read_text(path)
    result: dict[str, Any] = {
        "exists": path.exists(),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1 if text else 0),
    }
    for key, patterns in PATTERNS.items():
        matches = []
        for lineno, line in enumerate(text.splitlines(), 1):
            for pattern in patterns:
                if pattern in line:
                    matches.append(
                        {
                            "line": lineno,
                            "pattern": pattern,
                            "text": line.strip(),
                        }
                    )
        result[key] = matches
    return result


def load_guard(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text())


def load_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text())


def graph_summary(payload: dict[str, Any] | None) -> dict[str, Any]:
    if payload is None:
        return {"exists": False}
    graph = payload.get("graph", {})
    states = graph.get("states", [])
    edges = graph.get("edges", [])
    counts = payload.get("counts", {})
    bellman = payload.get("bellman", {})
    return {
        "exists": True,
        "states": len(states) or counts.get("states"),
        "edges": len(edges) or counts.get("edges"),
        "final_states": counts.get("final_states"),
        "margin_families": counts.get("margin_families"),
        "matched_paths": counts.get("paths"),
        "scale": bellman.get("scale"),
        "max_margin_bound": bellman.get("max_margin_bound"),
        "root_bound": bellman.get("root_bound"),
    }


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def main() -> None:
    scans = {name: scan_file(path) for name, path in FILES.items()}
    totals = {
        key: sum(len(scan[key]) for scan in scans.values())
        for key in PATTERNS
    }
    guards = {
        name: load_guard(path)
        for name, path in GUARD_FILES.items()
    }
    diagnostics = {
        name: load_json(path)
        for name, path in DIAGNOSTIC_JSON.items()
    }
    graph = graph_summary(diagnostics["graph_1m"])
    closure = diagnostics["closure_with_bad_face_1m"]
    state150 = diagnostics["state150_tppp_audit"]

    rss_guard = guards["root_bridge_rss_cap"]
    rss_killed = bool(rss_guard and rss_guard.get("killed_reason"))
    sampled_hits = totals["forbidden_sampled_surface"]
    selected_prefix_risk = totals["selected_prefix_production_risk"]
    target_shadow_ready = totals["target_shadow"] >= 5
    eval_core_ready = totals["eval_core"] >= 3
    semantic_gate_ready = totals["semantic_eval_gate"] >= 5
    target_cursor_core_ready = totals["target_cursor_core"] >= 4
    semantic_tail_core_ready = totals["semantic_tail_core"] >= 4
    suffix_eval_core_ready = totals["suffix_eval_core"] >= 3
    ranked_semantic_gate_core_ready = totals["ranked_semantic_gate_core"] >= 3
    branch_table_semantic_gate_socket_ready = (
        totals["branch_table_semantic_gate_socket"] >= 3
    )
    semantic_socket_core_ready = totals["semantic_socket_core"] >= 4
    closure_closed = bool(closure and closure.get("closed_after_sequence_bad_face"))
    state150_socket_needed = bool(
        state150
        and state150.get("decision") == "explicit_transition_has_no_target_pairing_completions"
    )
    strengthened_smoke_guard = guards["strengthened_local_lake"]
    strengthened_smoke_passed = bool(
        strengthened_smoke_guard and strengthened_smoke_guard.get("exit_code") == 0
    )

    decision = (
        "semantic-transducer-pivot-accepted-next-emit-finite-branch-table"
        if target_shadow_ready and eval_core_ready and semantic_gate_ready
        and target_cursor_core_ready and semantic_tail_core_ready
        and suffix_eval_core_ready and ranked_semantic_gate_core_ready
        and branch_table_semantic_gate_socket_ready
        and semantic_socket_core_ready and closure_closed
        and state150_socket_needed and strengthened_smoke_passed
        and selected_prefix_risk and not sampled_hits
        else "manual-review-transducer-pivot"
    )

    report: dict[str, Any] = {
        "decision": decision,
        "totals": totals,
        "files": {name: {"path": rel(path), **scans[name]} for name, path in FILES.items()},
        "guards": guards,
        "diagnostics": {
            "graph_1m": graph,
            "closure_with_bad_face_1m": closure,
            "state150_tppp_audit": state150,
        },
        "selected_prefix_root_bridge_rss_killed": rss_killed,
        "semantic_branch_checkpoint": {
            "real_graph_edges": graph.get("edges"),
            "graph_states": graph.get("states"),
            "semantic_tail_core_ready": semantic_tail_core_ready,
            "ranked_semantic_gate_core_ready": ranked_semantic_gate_core_ready,
            "branch_table_semantic_gate_socket_ready": (
                branch_table_semantic_gate_socket_ready
            ),
            "semantic_socket_branches": 2,
            "known_sockets": [
                "state19/tmmp canonical-bad-face mismatch",
                "state150/tppp target-pairing completion impossibility",
            ],
            "closure_after_sequence_bad_face": closure_closed,
            "strengthened_local_smoke_passed": strengthened_smoke_passed,
            "remaining_uncovered_branch_table": (
                "not yet emitted; next checkpoint must generate/report finite "
                "state-face branch categories instead of hand prefix cuts"
            ),
        },
        "production_rule": (
            "Do not scale selected-prefix/root-trace membership as production. "
            "Use it only as a diagnostic/downstream comparison until a compact "
            "closed-language-to-eval transducer theorem exists."
        ),
        "next_theorems": [
            "topPairingTargetShadow_of_summary",
            "topPairingTriShadow_eq_target",
            "TopPairingTriCursorFrom",
            "topPairingTriCursor_of_closed",
            "TopPairingTransducerTail.ofClosedRank",
            "TopPairingTransducerTail.cons",
            "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
            "scaledMargin_nonpos_of_rankedTransducerClosedGate",
            "Split10MBranchTableClosedEvalFamily",
            "split10MClosedToEvalGate_of_branchTableClosedEvalFamily",
            "topPairingClosed_to_strengthenedSuffixOk",
            "topPairingClosed_to_eval_gate",
            "topPairingClosed_scaledMargin_nonpos",
        ],
        "next_profiler_experiments": [
            "finite strengthened state/face branch-table emitter",
            "closed-language-to-state transition profiler across disjoint windows",
            "cocycle quotient profiler before adding exact affine state",
            "translation GoodDirection row-template/3-row circuit profiler",
        ],
        "no_go_rules": [
            "no sampled rank/path object",
            "no one constructor per rank/path",
            "no exact affine RHS or solved start-point key",
            "no root selected-prefix producer import as production membership",
            "no broad generated Lean build without hard address-space and RSS guard",
            "no hand-growing depth cut after this checkpoint without a generated branch-table report",
        ],
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_MD.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Top-Pairing Bellman Transducer Pivot Audit",
        "",
        "This is diagnostic-only evidence. It records the strategy pivot from",
        "selected-prefix/root-trace membership to a deterministic semantic",
        "closed-language transducer theorem.",
        "",
        f"- decision: `{decision}`",
        f"- target-shadow surface mentions: `{totals['target_shadow']}`",
        f"- closed-language field mentions: `{totals['closed_language_fields']}`",
        f"- eval-core mentions: `{totals['eval_core']}`",
        f"- semantic eval-gate mentions: `{totals['semantic_eval_gate']}`",
        f"- target-cursor core mentions: `{totals['target_cursor_core']}`",
        f"- semantic-tail core mentions: `{totals['semantic_tail_core']}`",
        f"- suffix-eval core mentions: `{totals['suffix_eval_core']}`",
        f"- ranked semantic-gate core mentions: `{totals['ranked_semantic_gate_core']}`",
        f"- branch-table semantic-gate socket mentions: `{totals['branch_table_semantic_gate_socket']}`",
        f"- semantic-socket core mentions: `{totals['semantic_socket_core']}`",
        f"- selected-prefix production-risk mentions: `{totals['selected_prefix_production_risk']}`",
        f"- forbidden sampled-surface mentions: `{totals['forbidden_sampled_surface']}`",
        "",
        "## Current Semantic Branch Checkpoint",
        "",
        f"- 1M graph states: `{graph.get('states')}`",
        f"- 1M graph edges: `{graph.get('edges')}`",
        f"- semantic sockets accepted: `2`",
        f"- closure after sequence-bad-face filter: `{closure_closed}`",
        f"- strengthened local Lake smoke passed: `{strengthened_smoke_passed}`",
        "",
        "Known semantic sockets:",
        "",
        "- `state19/tmmp`: canonical-bad-face mismatch.",
        "- `state150/tppp`: target-pairing completion impossibility.",
        "",
        "Next checkpoint: emit/report a finite strengthened state-face branch",
        "table.  It must count real graph-transition branches, semantic socket",
        "branches, and remaining uncovered branches.  Do not keep extending",
        "the local theorem by hand depth cuts.",
        "",
        "## Guard Evidence",
        "",
    ]
    for name, guard in guards.items():
        if guard is None:
            lines.append(f"- `{name}`: missing")
            continue
        lines.append(
            f"- `{name}`: "
            f"exit `{guard.get('exit_code')}`, "
            f"elapsed `{guard.get('elapsed_seconds'):.2f}s`, "
            f"peak RSS `{guard.get('max_tree_rss_mib'):.0f} MiB`, "
            f"hard AS `{guard.get('hard_address_space_mib')}`, "
            f"killed `{guard.get('killed_reason')}`"
        )
    lines.extend(
        [
            "",
            "Interpretation: the selected-prefix/root-trace bridge is useful as",
            "diagnostic or downstream comparison evidence, but the recent guarded",
            "attempts show it is not the next production membership surface. The",
            "RSS-capped bridge build exceeded `7 GiB` and was terminated at about",
            "`10.3 GiB` peak RSS.",
            "",
            "The current accepted route is therefore: target cursor + suffix-carrying",
            "semantic evaluator + finite branch table + sockets for proven",
            "impossible semantic branches.  This keeps rank as an address, not as",
            "the compression coordinate.",
            "",
            "## Next Theorem Targets",
            "",
            "```lean",
            "theorem topPairingTargetShadow_of_summary",
            "    {shadow : List TriLetter}",
            "    (h : triangularCancellationSummaryOfShadow shadow =",
            "      topPairingTargetSummary) :",
            "    shadow = topPairingTargetShadow",
            "",
            "theorem topPairingTriShadow_eq_target",
            "    {rank : Fin numPairWords}",
            "    (h : TopPairingLanguageAtRank rank) :",
            "    triangularShadowOfPairWord (unrankPairWord rank) =",
            "      topPairingTargetShadow",
            "",
            "theorem TopPairingTransducerTail.ofClosedRank",
            "    {rank : Fin numPairWords} {badFace : Face}",
            "    (h : TopPairingClosedLanguageAtRank rank badFace) :",
            "    TopPairingTransducerTail 0 0 0 SqParity.id",
            "      (matId : Mat3 Rat) (topPairingRankFaceLabels rank)",
            "",
            "theorem closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
            "    ...",
            "",
            "theorem topPairingClosed_to_eval_gate",
            "    (rank : Fin numPairWords)",
            "    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :",
            "    ∃ result,",
            "      evalLabelStepFn graphNext rootState",
            "        (topPairingBellmanLabelsAtRank rank) = some result ∧",
            "      0 <= graphPotential result.1 ∧",
            "      scaledMargin rank <= (176 : Int) + result.2",
            "```",
            "",
            "## No-Go Rules",
            "",
        ]
    )
    for rule in report["no_go_rules"]:
        lines.append(f"- {rule}")
    lines.extend(
        [
            "",
            "## Required Experiments",
            "",
        ]
    )
    for exp in report["next_profiler_experiments"]:
        lines.append(f"- {exp}")
    lines.append("")
    OUT_MD.write_text("\n".join(lines))

    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={decision}")


if __name__ == "__main__":
    main()
