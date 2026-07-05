#!/usr/bin/env python3
"""Audit readiness for a graph183 semantic carrier producer.

This is a status audit, not proof evidence.  Its purpose is to keep the
graph183 Bellman frontier honest:

* the Lean carrier sockets are now in place;
* the accepted-branch quotient module is checked and production-sized;
* the full cocycle quotient smoke is diagnostic only;
* the 1M profiler supports the route but does not prove coverage;
* the actual production theorem proving the carrier from closed-language /
  quotient-gauge semantics has not yet been emitted.

The script exits successfully when this status is internally consistent.  It
should not be read as completing graph183 coverage.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/graph183_carrier_producer_readiness.json"
OUT_MD = ROOT / "scripts/generated/graph183_carrier_producer_readiness.md"

SOCKET = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183QuotientMarginSocket.lean"
)
CLOSED_SEMANTIC_GATE = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket.lean"
)
ACCEPTED_BRANCH = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183AcceptedBranchQuotient.lean"
)
SMOKE = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183CocycleQuotientSmoke.lean"
)
GRAPH183_START_PROVIDER = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183StartViolationProvider.lean"
)
GRAPH183_EDGE_SHARDS = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183CocycleQuotientEdgeShards.lean"
)
GRAPH183_EDGE_SHARDS_CORE = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183CocycleQuotientCore.lean"
)
TARGET_CURSOR = ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean"
TRANSDUCER_SEMANTIC_GATE = (
    ROOT / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean"
)
PROFILE = ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json"
QUOTIENT = ROOT / "scripts/generated/graph183_cocycle_quotients_0_1M.json"
EDGE_SHARDS_MANIFEST = (
    ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shards.json"
)
GUARD = ROOT / "scripts/generated/graph183_quotient_margin_socket_latest_guard.json"
EDGE_SHARDS_LAKE_GUARD = (
    ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shards_lake_guard.json"
)
EDGE_SHARDS_CORE_GUARD = (
    ROOT / "scripts/generated/graph183_cocycle_quotient_core_guard.json"
)
EDGE_SHARDS_DIRECT_GUARD = (
    ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shards_direct_guard.json"
)
EDGE_SHARD000_GUARD = (
    ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shard000_guard.json"
)
GRAPH183_START_PROVIDER_GUARD = (
    ROOT / "scripts/generated/graph183_start_violation_provider_guard.json"
)
GRAPH183_START_PROVIDER_SOURCE_GUARD = (
    ROOT / "scripts/generated/graph183_start_violation_provider_source_guard.json"
)
TRACE_START_VIOLATION_BRIDGE_GUARD = (
    ROOT / "scripts/generated/trace_start_violation_bridge_guard.json"
)
ACCEPTED_BRANCH_GUARD = (
    ROOT
    / "scripts/generated/graph183_accepted_branch_quotient_latest_guard.json"
)
CLOSED_SEMANTIC_GATE_GUARD = (
    ROOT
    / "scripts/generated/closed_bellman_strengthened_semantic_gate_socket_latest_guard.json"
)
TRACE017_PROVIDER_GUARD = (
    ROOT / "scripts/generated/trace017_start_violation_provider_guard.json"
)
TRACE017_PROVIDER_SOURCE_GUARD = (
    ROOT / "scripts/generated/trace017_start_violation_provider_source_guard.json"
)

REQUIRED_SOCKET_SYMBOLS = [
    "Graph183TailQuotientMarginSequenceBadFace",
    "Graph183TailQuotientMarginEvalFamily",
    "Graph183TailQuotientMarginEvalObj",
    "Graph183TailQuotientEvalMarginLanguageBound",
    "graph183TailQuotientMarginEvalObj_eval",
    "Graph183TailQuotientObjectMarginBound",
    "graph183TailQuotientEvalMarginLanguageBound_of_objectMarginBound",
    "graph183TailQuotientMarginEvalFamily_of_evalLanguageBound",
    "graph183TailQuotientMarginEvalFamily_of_objectMarginBound",
    "graph183TailQuotientMarginEvalFamily_of_gaugeCorrectedEvalLanguageBound",
    "Graph183TailExactEvalSequenceBadFace",
    "graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate",
    "acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin",
    "acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval",
    "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin",
    "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin",
    "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval",
    "graph183TailQuotientMarginFamily_of_sequenceBadFace",
    "graph183TailQuotientMarginFamily_of_evalMarginFamily",
    "graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate",
    "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily",
    "graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily",
    "graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily",
    "graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily",
    "graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate",
    "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily",
    "graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily",
    "strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily",
    "strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily",
    "graph183TailExactEvalFamily_of_sequenceBadFace",
    "graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace",
    "graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace",
    "nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace",
    "graph183AcceptedBranchLabels_eq_startViolationLabels",
    "objectStartViolationMarginCert_of_graph183AcceptedBranchPrefix",
    "graph183TailBranchQuotientStartViolationFamily_of_margin",
    "nonIdentityRankKilled_of_graph183TailQuotientMargin",
]

REQUIRED_CLOSED_SEMANTIC_GATE_SYMBOLS = [
    "StrengthenedClosedBellmanEvalFamily",
    "StrengthenedClosedBellmanGraphExactFamily",
    "StrengthenedClosedBellmanStepRunFamily",
    "graphExactEvalGate_of_stepRunFamily",
    "evalFamily_of_graphExactFamily",
    "strengthenedClosedBellmanObjectCover_of_evalFamily",
    "scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily",
    "scaledMargin_nonpos_of_strengthenedClosedBellmanGraphExactFamily",
    "scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily",
]

REQUIRED_ACCEPTED_BRANCH_SYMBOLS = [
    "acceptedLocalEquation",
    "graph183AcceptedBranchRawGain",
    "graph183AcceptedBranchRawGain_contract",
    "graph183AcceptedBranchLocalEquationsChecked",
]

REQUIRED_SMOKE_SYMBOLS = [
    "graph183AcceptedBranchRawGain",
    "graph183AcceptedBranchRawGain_contract",
    "graph183QuotientStep",
    "graph183QuotientAcceptedBranchSmoke",
]

REQUIRED_GRAPH183_START_PROVIDER_SYMBOLS = [
    "graph183StartViolationLabels",
    "objectStartViolationMarginCert_of_graph183AcceptedBranchLabels",
]

REQUIRED_GRAPH183_EDGE_SHARDS_SYMBOLS = [
    "FullStep",
    "SmallStep",
    "graph183QuotientStep",
    "graph183QuotientRun",
    "graph183QuotientEdgeShards_checked",
]

REQUIRED_GRAPH183_EDGE_SHARDS_CORE_SYMBOLS = [
    "graph183QuotientQ",
    "graph183QuotientGauge",
    "graph183QuotientCore_builds",
]

REQUIRED_TARGET_CURSOR_SYMBOLS = [
    "topPairingTargetShadow_of_summary",
    "topPairingTriShadow_eq_target_of_closed",
    "TopPairingTriCursorFrom",
    "TopPairingTargetCursorAtRank",
    "topPairingTriCursor_of_closed",
    "TopPairingStartMissSemanticLanguageAtRank",
]

REQUIRED_TRANSDUCER_SEMANTIC_GATE_SYMBOLS = [
    "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
    "strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
    "closedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
    "strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
    "scaledMargin_nonpos_of_rankedTransducerClosedGate",
    "scaledMargin_nonpos_of_rankedTransducerStrengthenedGate",
]

FORBIDDEN_PRODUCER_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "AcceptedTraceId",
    "acceptedTraceOfId",
]

FORBIDDEN_SOCKET_IMPORT_FRAGMENTS = [
    "BellmanTopPairingTrace017StartViolationProvider",
    "BellmanTopPairingTraceStartViolationProviders",
    "BellmanTopPairingTraceStartViolationDirectKilledBridge",
    "TopPairingTraceClassifier.Terminal",
]

FORBIDDEN_GRAPH183_START_PROVIDER_IMPORT_FRAGMENTS = [
    "BellmanTopPairingGraphAcceptedTraceMarginBridge",
    "BellmanTopPairingTrace017StartViolationProvider",
    "BellmanTopPairingTraceStartViolationProviders",
    "TopPairingTraceClassifier",
]

PRODUCTION_CARRIER_CANDIDATES = [
    "graph183TailQuotientMarginSequenceBadFace_of_targetCursorTransducer",
    "graph183TailQuotientMarginSequenceBadFace_of_rankedTransducerGate",
    "graph183TailQuotientMarginSequenceBadFace_of_closedLanguage",
    "graph183TailQuotientMarginSequenceBadFace_of_quotientEval",
    "graph183TailQuotientMarginSequenceBadFace_of_cocycleQuotient",
    "graph183TailQuotientObjectMarginBound_of_cocycleQuotient",
    "graph183TailQuotientMarginSequenceBadFaceProducer",
    "Graph183TailQuotientMarginCarrierProducer",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def read_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def symbol_checks(label: str, path: Path, required: list[str]) -> list[dict[str, Any]]:
    text = read_text(path)
    checks: list[dict[str, Any]] = [
        {"name": f"{label}:exists", "passed": path.exists(), "detail": rel(path)}
    ]
    for symbol in required:
        checks.append(
            {
                "name": f"{label}:symbol:{symbol}",
                "passed": symbol in text,
                "detail": symbol,
            }
        )
    return checks


def forbidden_checks(label: str, path: Path) -> list[dict[str, Any]]:
    text = read_text(path)
    checks = []
    for token in FORBIDDEN_PRODUCER_TOKENS:
        checks.append(
            {
                "name": f"{label}:forbidden_absent:{token}",
                "passed": token not in text,
                "detail": token,
            }
        )
    return checks


def forbidden_import_checks(
    label: str, path: Path, forbidden_fragments: list[str]
) -> list[dict[str, Any]]:
    imports = [
        line.strip()
        for line in read_text(path).splitlines()
        if line.strip().startswith("import ")
    ]
    checks = []
    for fragment in forbidden_fragments:
        hits = [line for line in imports if fragment in line]
        checks.append(
            {
                "name": f"{label}:forbidden_import_absent:{fragment}",
                "passed": not hits,
                "detail": hits,
            }
        )
    return checks


def profile_checks(profile: dict[str, Any] | None) -> list[dict[str, Any]]:
    if profile is None:
        return [
            {
                "name": "profile_1m:exists",
                "passed": False,
                "detail": "missing graph183 1M profile",
            }
        ]
    counts = profile.get("counts", {})
    bellman = profile.get("bellman", {})
    target = profile.get("target", {})
    return [
        {
            "name": "profile_1m:single_margin_family",
            "passed": counts.get("margin_families") == 1,
            "detail": counts.get("margin_families"),
        },
        {
            "name": "profile_1m:states_under_2000",
            "passed": int(counts.get("states", 10**9)) <= 2000,
            "detail": counts.get("states"),
        },
        {
            "name": "profile_1m:edges_under_5000",
            "passed": int(counts.get("edges", 10**9)) <= 5000,
            "detail": counts.get("edges"),
        },
        {
            "name": "profile_1m:offset_sum_mismatches_zero",
            "passed": counts.get("offset_sum_mismatches") == 0,
            "detail": counts.get("offset_sum_mismatches"),
        },
        {
            "name": "profile_1m:bellman_observed_nonpositive",
            "passed": bool(bellman.get("proves_observed_nonpositive")),
            "detail": bellman.get("max_margin_bound"),
        },
        {
            "name": "profile_1m:with_step_tri_source",
            "passed": target.get("state_key_mode") == "with-step-tri-source",
            "detail": target.get("state_key_mode"),
        },
    ]


def quotient_checks(quotient: dict[str, Any] | None) -> list[dict[str, Any]]:
    if quotient is None:
        return [
            {
                "name": "quotient_1m:exists",
                "passed": False,
                "detail": "missing graph183 quotient profile",
            }
        ]
    best = quotient.get("best_consistent") or {}
    solution = best.get("solution") or {}
    return [
        {
            "name": "quotient_1m:candidate_found",
            "passed": quotient.get("decision") == "cocycle_quotient_candidates_found",
            "detail": quotient.get("decision"),
        },
        {
            "name": "quotient_1m:mode_step_par",
            "passed": best.get("mode") == "step-par",
            "detail": best.get("mode"),
        },
        {
            "name": "quotient_1m:quotient_states_under_100",
            "passed": int(best.get("quotient_states", 10**9)) <= 100,
            "detail": best.get("quotient_states"),
        },
        {
            "name": "quotient_1m:quotient_edges_under_150",
            "passed": int(best.get("quotient_edges", 10**9)) <= 150,
            "detail": best.get("quotient_edges"),
        },
        {
            "name": "quotient_1m:solution_exists",
            "passed": bool(solution),
            "detail": sorted(solution.keys()) if solution else None,
        },
        {
            "name": "quotient_1m:bit_length_under_16",
            "passed": bool(solution)
            and int(solution.get("max_bit_length", 10**9)) <= 16,
            "detail": solution.get("max_bit_length") if solution else None,
        },
    ]


def guard_checks(
    label: str,
    guard: dict[str, Any] | None,
    *,
    rss_limit_mib: float = 6500.0,
) -> list[dict[str, Any]]:
    if guard is None:
        return [
            {
                "name": f"{label}:guard_exists",
                "passed": False,
                "detail": f"missing {label} guard",
            }
        ]
    return [
        {
            "name": f"{label}:guard_exit_zero",
            "passed": guard.get("exit_code") == 0,
            "detail": guard.get("exit_code"),
        },
        {
            "name": f"{label}:rss_under_{int(rss_limit_mib)}_mib",
            "passed": float(guard.get("max_tree_rss_mib", 10**9)) <= rss_limit_mib,
            "detail": guard.get("max_tree_rss_mib"),
        },
        {
            "name": f"{label}:available_above_30000_mib",
            "passed": float(guard.get("min_available_seen_mib", 0)) >= 30000.0,
            "detail": guard.get("min_available_seen_mib"),
        },
    ]


def trace_provider_no_go_checks(
    build_guard: dict[str, Any] | None,
    source_guard: dict[str, Any] | None,
) -> list[dict[str, Any]]:
    checks: list[dict[str, Any]] = []
    checks.append(
        {
            "name": "trace017_provider_no_go:build_guard_recorded",
            "passed": build_guard is not None,
            "detail": None if build_guard is None else build_guard.get("killed_reason"),
        }
    )
    if build_guard is not None:
        checks.append(
            {
                "name": "trace017_provider_no_go:build_exceeded_socket_rss_cap",
                "passed": float(build_guard.get("max_tree_rss_mib", 0)) > 7000.0,
                "detail": build_guard.get("max_tree_rss_mib"),
            }
        )
        checks.append(
            {
                "name": "trace017_provider_no_go:build_was_guard_killed",
                "passed": bool(build_guard.get("killed_reason")),
                "detail": build_guard.get("killed_reason"),
            }
        )
    checks.append(
        {
            "name": "trace017_provider_no_go:source_guard_recorded",
            "passed": source_guard is not None,
            "detail": None if source_guard is None else source_guard.get("exit_code"),
        }
    )
    if source_guard is not None:
        checks.append(
            {
                "name": "trace017_provider_no_go:source_check_not_available_as_light_import",
                "passed": source_guard.get("exit_code") != 0,
                "detail": source_guard.get("exit_code"),
            }
        )
    return checks


def production_status(*texts: str) -> dict[str, Any]:
    haystack = "\n".join(texts)
    found = [name for name in PRODUCTION_CARRIER_CANDIDATES if name in haystack]
    return {
        "candidate_names_checked": PRODUCTION_CARRIER_CANDIDATES,
        "found": found,
        "producer_exists": bool(found),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Graph183 Carrier Producer Readiness",
        "",
        "Status audit only.  This file is not proof evidence and does not certify",
        "generated coverage.",
        "",
        f"- decision: `{report['decision']}`",
        f"- failed checks: `{len(report['failed_checks'])}`",
        f"- production carrier producer exists: `{report['production_status']['producer_exists']}`",
        "",
        "## Meaning",
        "",
        "The Lean carrier sockets are present and build under a memory guard.",
        "The strengthened closed-Bellman semantic gate is also present: it",
        "accepts step-run, graph-exact, and eval-family producer shapes and",
        "adapts semantic step runs to deterministic exact-evaluator gates.",
        "The production socket now imports a tiny accepted-branch quotient",
        "module that checks the 14 local equations and accepted raw-gain",
        "contract it needs.",
        "The audit now also enforces that this socket does not import trace",
        "start-violation provider leaves or terminal trace-classifier shards.",
        "The graph183 branch-local start-violation provider is now a separate",
        "fixed-template leaf that imports only the lightweight trace",
        "start-violation bridge, not accepted-trace ids or terminal classifiers.",
        "The target-shadow cursor and ranked transducer semantic gate are",
        "present and are now required by this audit.  The production path must",
        "flow through those semantic surfaces or through an equivalently small",
        "cocycle/segment certificate; it must not revive selected-prefix or",
        "accepted-trace membership.",
        "The 1M graph183 profile and quotient profile support the route as a",
        "diagnostic.  The full 229-edge quotient smoke remains diagnostic only.",
        "The local quotient equations have also been split into edge shards,",
        "which are accepted as diagnostic proof-shape evidence: they check the",
        "same exact integer cocycle equations without the timed-out one-file",
        "table proof.",
        "Those shards now expose a composable quotient-step theorem over the",
        "public generated `graph183QuotientQ` and `graph183QuotientGauge`",
        "finite maps, so the diagnostic is no longer just a `True` smoke.",
        "However, no production theorem currently proves",
        "`Graph183TailQuotientMarginSequenceBadFace` from closed-language,",
        "deterministic-evaluator, or cocycle/gauge semantics.",
        "",
        "The next accepted implementation step must emit or prove that semantic",
        "producer.  Reusing sampled ranks, selected prefixes, accepted trace ids,",
        "exact affine RHS keys, solved start-point keys, or one branch per",
        "observed path remains a no-go.",
        "",
        "## Metrics",
        "",
        "| metric | value |",
        "| --- | ---: |",
    ]
    for key, value in report["metrics"].items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend(["", "## Checks", "", "| check | passed | detail |", "| --- | --- | --- |"])
    for check in report["checks"]:
        lines.append(f"| `{check['name']}` | `{check['passed']}` | `{check.get('detail')}` |")
    return "\n".join(lines)


def main() -> int:
    socket_text = read_text(SOCKET)
    closed_semantic_gate_text = read_text(CLOSED_SEMANTIC_GATE)
    accepted_branch_text = read_text(ACCEPTED_BRANCH)
    smoke_text = read_text(SMOKE)
    graph183_start_provider_text = read_text(GRAPH183_START_PROVIDER)
    graph183_edge_shards_text = read_text(GRAPH183_EDGE_SHARDS)
    graph183_edge_shards_core_text = read_text(GRAPH183_EDGE_SHARDS_CORE)
    target_cursor_text = read_text(TARGET_CURSOR)
    transducer_semantic_gate_text = read_text(TRANSDUCER_SEMANTIC_GATE)
    profile = read_json(PROFILE)
    quotient = read_json(QUOTIENT)
    edge_shards_manifest = read_json(EDGE_SHARDS_MANIFEST)
    guard = read_json(GUARD)
    edge_shards_lake_guard = read_json(EDGE_SHARDS_LAKE_GUARD)
    edge_shards_core_guard = read_json(EDGE_SHARDS_CORE_GUARD)
    edge_shards_direct_guard = read_json(EDGE_SHARDS_DIRECT_GUARD)
    edge_shard000_guard = read_json(EDGE_SHARD000_GUARD)
    graph183_start_provider_guard = read_json(GRAPH183_START_PROVIDER_GUARD)
    graph183_start_provider_source_guard = read_json(GRAPH183_START_PROVIDER_SOURCE_GUARD)
    trace_start_violation_bridge_guard = read_json(TRACE_START_VIOLATION_BRIDGE_GUARD)
    accepted_branch_guard = read_json(ACCEPTED_BRANCH_GUARD)
    closed_semantic_gate_guard = read_json(CLOSED_SEMANTIC_GATE_GUARD)
    trace017_provider_guard = read_json(TRACE017_PROVIDER_GUARD)
    trace017_provider_source_guard = read_json(TRACE017_PROVIDER_SOURCE_GUARD)

    checks: list[dict[str, Any]] = []
    checks.extend(symbol_checks("socket", SOCKET, REQUIRED_SOCKET_SYMBOLS))
    checks.extend(
        symbol_checks(
            "closed_semantic_gate",
            CLOSED_SEMANTIC_GATE,
            REQUIRED_CLOSED_SEMANTIC_GATE_SYMBOLS,
        )
    )
    checks.extend(
        symbol_checks(
            "accepted_branch_quotient",
            ACCEPTED_BRANCH,
            REQUIRED_ACCEPTED_BRANCH_SYMBOLS,
        )
    )
    checks.extend(symbol_checks("smoke", SMOKE, REQUIRED_SMOKE_SYMBOLS))
    checks.extend(
        symbol_checks(
            "graph183_start_provider",
            GRAPH183_START_PROVIDER,
            REQUIRED_GRAPH183_START_PROVIDER_SYMBOLS,
        )
    )
    checks.extend(
        symbol_checks(
            "graph183_edge_shards",
            GRAPH183_EDGE_SHARDS,
            REQUIRED_GRAPH183_EDGE_SHARDS_SYMBOLS,
        )
    )
    checks.extend(
        symbol_checks(
            "graph183_edge_shards_core",
            GRAPH183_EDGE_SHARDS_CORE,
            REQUIRED_GRAPH183_EDGE_SHARDS_CORE_SYMBOLS,
        )
    )
    checks.extend(
        symbol_checks(
            "target_cursor",
            TARGET_CURSOR,
            REQUIRED_TARGET_CURSOR_SYMBOLS,
        )
    )
    checks.extend(
        symbol_checks(
            "transducer_semantic_gate",
            TRANSDUCER_SEMANTIC_GATE,
            REQUIRED_TRANSDUCER_SEMANTIC_GATE_SYMBOLS,
        )
    )
    checks.extend(forbidden_checks("socket", SOCKET))
    checks.extend(forbidden_checks("closed_semantic_gate", CLOSED_SEMANTIC_GATE))
    checks.extend(forbidden_checks("accepted_branch_quotient", ACCEPTED_BRANCH))
    checks.extend(forbidden_checks("smoke", SMOKE))
    checks.extend(forbidden_checks("graph183_start_provider", GRAPH183_START_PROVIDER))
    checks.extend(forbidden_checks("graph183_edge_shards", GRAPH183_EDGE_SHARDS))
    checks.extend(
        forbidden_checks("graph183_edge_shards_core", GRAPH183_EDGE_SHARDS_CORE)
    )
    checks.extend(forbidden_checks("target_cursor", TARGET_CURSOR))
    checks.extend(forbidden_checks("transducer_semantic_gate", TRANSDUCER_SEMANTIC_GATE))
    checks.extend(
        forbidden_import_checks(
            "socket",
            SOCKET,
            FORBIDDEN_SOCKET_IMPORT_FRAGMENTS,
        )
    )
    checks.extend(
        forbidden_import_checks(
            "graph183_start_provider",
            GRAPH183_START_PROVIDER,
            FORBIDDEN_GRAPH183_START_PROVIDER_IMPORT_FRAGMENTS,
        )
    )
    checks.append(
        {
            "name": "socket:imports_accepted_branch_quotient",
            "passed": "BellmanTopPairingGraph183AcceptedBranchQuotient" in socket_text,
            "detail": "BellmanTopPairingGraph183AcceptedBranchQuotient",
        }
    )
    checks.append(
        {
            "name": "socket:does_not_import_full_smoke",
            "passed": "BellmanTopPairingGraph183CocycleQuotientSmoke" not in socket_text,
            "detail": "BellmanTopPairingGraph183CocycleQuotientSmoke",
        }
    )
    checks.append(
        {
            "name": "accepted_branch:documents_not_coverage",
            "passed": "not coverage evidence by itself" in accepted_branch_text,
            "detail": "not coverage evidence by itself",
        }
    )
    checks.append(
        {
            "name": "smoke:documents_diagnostic_not_coverage",
            "passed": "diagnostic, not generated coverage" in smoke_text,
            "detail": "diagnostic, not generated coverage",
        }
    )
    checks.append(
        {
            "name": "smoke:documents_production_replacement_needed",
            "passed": "Production should replace selected-prefix membership" in smoke_text,
            "detail": "Production should replace selected-prefix membership",
        }
    )
    checks.extend(profile_checks(profile))
    checks.extend(quotient_checks(quotient))
    checks.extend(
        guard_checks(
            "graph183_edge_shards_lake_guard",
            edge_shards_lake_guard,
            rss_limit_mib=30000.0,
        )
    )
    checks.extend(
        guard_checks(
            "graph183_edge_shards_core_guard",
            edge_shards_core_guard,
        )
    )
    checks.extend(
        guard_checks(
            "graph183_edge_shards_direct_guard",
            edge_shards_direct_guard,
        )
    )
    checks.extend(
        guard_checks(
            "graph183_edge_shard000_guard",
            edge_shard000_guard,
        )
    )
    checks.extend(guard_checks("socket_guard", guard))
    checks.extend(
        guard_checks(
            "graph183_start_provider_guard",
            graph183_start_provider_guard,
            rss_limit_mib=7000.0,
        )
    )
    checks.extend(
        guard_checks(
            "graph183_start_provider_source_guard",
            graph183_start_provider_source_guard,
        )
    )
    checks.extend(
        guard_checks(
            "trace_start_violation_bridge_guard",
            trace_start_violation_bridge_guard,
        )
    )
    checks.extend(
        guard_checks("closed_semantic_gate_guard", closed_semantic_gate_guard)
    )
    checks.extend(guard_checks("accepted_branch_guard", accepted_branch_guard))
    checks.extend(
        trace_provider_no_go_checks(
            trace017_provider_guard,
            trace017_provider_source_guard,
        )
    )

    status = production_status(
        socket_text,
        closed_semantic_gate_text,
        graph183_start_provider_text,
        graph183_edge_shards_text,
        graph183_edge_shards_core_text,
        target_cursor_text,
        transducer_semantic_gate_text,
    )
    failed = [row for row in checks if not row["passed"]]
    decision = (
        "graph183_carrier_sockets_ready_but_producer_missing"
        if not failed and not status["producer_exists"]
        else "graph183_carrier_producer_status_changed"
        if not failed
        else "graph183_carrier_readiness_blocked"
    )

    counts = (profile or {}).get("counts", {})
    best = (quotient or {}).get("best_consistent") or {}
    guard_metrics = guard or {}
    report = {
        "mode": "graph183_carrier_producer_readiness",
        "decision": decision,
        "checks": checks,
        "failed_checks": failed,
        "production_status": status,
        "metrics": {
            "profile_matched": counts.get("matched"),
            "profile_states": counts.get("states"),
            "profile_edges": counts.get("edges"),
            "profile_margin_families": counts.get("margin_families"),
            "quotient_mode": best.get("mode"),
            "quotient_states": best.get("quotient_states"),
            "quotient_edges": best.get("quotient_edges"),
            "quotient_max_bit_length": (best.get("solution") or {}).get("max_bit_length"),
            "edge_shards_edge_equations": None
            if edge_shards_manifest is None
            else edge_shards_manifest.get("edge_equations"),
            "edge_shards_shard_count": None
            if edge_shards_manifest is None
            else edge_shards_manifest.get("shard_count"),
            "edge_shards_lake_guard_elapsed_seconds": None
            if edge_shards_lake_guard is None
            else edge_shards_lake_guard.get("elapsed_seconds"),
            "edge_shards_lake_guard_peak_rss_mib": None
            if edge_shards_lake_guard is None
            else edge_shards_lake_guard.get("max_tree_rss_mib"),
            "edge_shards_core_guard_elapsed_seconds": None
            if edge_shards_core_guard is None
            else edge_shards_core_guard.get("elapsed_seconds"),
            "edge_shards_core_guard_peak_rss_mib": None
            if edge_shards_core_guard is None
            else edge_shards_core_guard.get("max_tree_rss_mib"),
            "edge_shards_direct_guard_elapsed_seconds": None
            if edge_shards_direct_guard is None
            else edge_shards_direct_guard.get("elapsed_seconds"),
            "edge_shards_direct_guard_peak_rss_mib": None
            if edge_shards_direct_guard is None
            else edge_shards_direct_guard.get("max_tree_rss_mib"),
            "edge_shard000_guard_elapsed_seconds": None
            if edge_shard000_guard is None
            else edge_shard000_guard.get("elapsed_seconds"),
            "edge_shard000_guard_peak_rss_mib": None
            if edge_shard000_guard is None
            else edge_shard000_guard.get("max_tree_rss_mib"),
            "guard_elapsed_seconds": guard_metrics.get("elapsed_seconds"),
            "guard_peak_rss_mib": guard_metrics.get("max_tree_rss_mib"),
            "guard_min_available_mib": guard_metrics.get("min_available_seen_mib"),
            "closed_semantic_gate_guard_elapsed_seconds": None
            if closed_semantic_gate_guard is None
            else closed_semantic_gate_guard.get("elapsed_seconds"),
            "closed_semantic_gate_guard_peak_rss_mib": None
            if closed_semantic_gate_guard is None
            else closed_semantic_gate_guard.get("max_tree_rss_mib"),
            "closed_semantic_gate_guard_min_available_mib": None
            if closed_semantic_gate_guard is None
            else closed_semantic_gate_guard.get("min_available_seen_mib"),
            "accepted_branch_guard_elapsed_seconds": None
            if accepted_branch_guard is None
            else accepted_branch_guard.get("elapsed_seconds"),
            "accepted_branch_guard_peak_rss_mib": None
            if accepted_branch_guard is None
            else accepted_branch_guard.get("max_tree_rss_mib"),
            "accepted_branch_guard_min_available_mib": None
            if accepted_branch_guard is None
            else accepted_branch_guard.get("min_available_seen_mib"),
            "graph183_start_provider_guard_elapsed_seconds": None
            if graph183_start_provider_guard is None
            else graph183_start_provider_guard.get("elapsed_seconds"),
            "graph183_start_provider_guard_peak_rss_mib": None
            if graph183_start_provider_guard is None
            else graph183_start_provider_guard.get("max_tree_rss_mib"),
            "graph183_start_provider_guard_min_available_mib": None
            if graph183_start_provider_guard is None
            else graph183_start_provider_guard.get("min_available_seen_mib"),
            "graph183_start_provider_source_guard_elapsed_seconds": None
            if graph183_start_provider_source_guard is None
            else graph183_start_provider_source_guard.get("elapsed_seconds"),
            "graph183_start_provider_source_guard_peak_rss_mib": None
            if graph183_start_provider_source_guard is None
            else graph183_start_provider_source_guard.get("max_tree_rss_mib"),
            "trace_start_violation_bridge_guard_elapsed_seconds": None
            if trace_start_violation_bridge_guard is None
            else trace_start_violation_bridge_guard.get("elapsed_seconds"),
            "trace_start_violation_bridge_guard_peak_rss_mib": None
            if trace_start_violation_bridge_guard is None
            else trace_start_violation_bridge_guard.get("max_tree_rss_mib"),
            "trace017_provider_guard_exit_code": None
            if trace017_provider_guard is None
            else trace017_provider_guard.get("exit_code"),
            "trace017_provider_guard_peak_rss_mib": None
            if trace017_provider_guard is None
            else trace017_provider_guard.get("max_tree_rss_mib"),
            "trace017_provider_guard_killed_reason": None
            if trace017_provider_guard is None
            else trace017_provider_guard.get("killed_reason"),
            "trace017_provider_source_guard_exit_code": None
            if trace017_provider_source_guard is None
            else trace017_provider_source_guard.get("exit_code"),
        },
        "next_required_theorem": (
            "Graph183TailQuotientMarginSequenceBadFace scaledMargin, proved "
            "from target-shadow cursor + ranked deterministic transducer "
            "semantics, or from an equivalently small checked cocycle/segment "
            "certificate"
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report) + "\n", encoding="utf-8")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision: {decision}")
    return 0 if not failed else 1


if __name__ == "__main__":
    raise SystemExit(main())
