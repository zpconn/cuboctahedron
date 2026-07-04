#!/usr/bin/env python3
"""Audit the graph183 accepted-tail margin frontier.

This script is diagnostic status evidence only.  It does not prove generated
coverage and it does not certify the Bellman margin theorem.  Its job is to
keep the active frontier honest:

* graph183 completion-tail membership is already semantic;
* the remaining producer must target
  `AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin`;
* exact margin profiling should support a small Bellman/cocycle producer before
  any Lean emission is scaled.

The audit deliberately distinguishes "diagnostic support" from proof.  A pass
means the next Lean target is justified as a small semantic producer smoke; it
does not mean the accepted-tail margin family has been proved.
"""

from __future__ import annotations

from fractions import Fraction
import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/graph183_accepted_tail_margin_frontier.json"
OUT_MD = ROOT / "scripts/generated/graph183_accepted_tail_margin_frontier.md"

GRAPH183_SOCKET = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean"
)
BELLMAN_POTENTIAL = ROOT / "Cuboctahedron/Search/BellmanPotential.lean"
TOP_PAIRING_TARGET_CURSOR = ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean"
TOP_PAIRING_BELLMAN_OBJECT = ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean"
SEMANTIC_AUDIT = (
    ROOT / "scripts/generated/top_pairing_semantic_evaluator_pivot.json"
)
PROFILE_100K = (
    ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_100k.json"
)
PROFILE_1M = (
    ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json"
)
GUARD_100K = (
    ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_100k_guard.json"
)
GUARD_1M = (
    ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M_guard.json"
)
COCYCLE_QUOTIENT_1M = (
    ROOT / "scripts/generated/graph183_cocycle_quotients_0_1M.json"
)

REQUIRED_SOCKET_SYMBOLS = [
    "AcceptedSequenceGraph183AcceptedTailMarginFamily",
    "AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily",
    "graph183AcceptedBranchLabels",
    "graph183AcceptedBranchLabels_eq_of_prefix",
    "graph183AcceptedBranchEvalGateResult_of_labels",
    "graph183AcceptedBranchEvalGateAtRank_of_labels",
    "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily",
    "acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval",
    "acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin",
    "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components",
    "acceptedSequenceGraph183TargetCancellationTailFamily_of_cursor",
    "acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor",
    "graph183ForcedTail",
    "graph183TailEval",
    "closedBellmanNext",
]

FORBIDDEN_SOCKET_TOKENS = [
    "graphSmokeNext",
    "Split10MGraphExactEvalGateAtRank",
    "ExactGraphFinishMarginBound",
    "Split10MExactGraphFinishFinalMarginProducer",
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "AcceptedTraceId",
    "acceptedTraceOfId",
]

REQUIRED_BELLMAN_SYMBOLS = [
    "quotient_of_step_gain_eq",
]

REQUIRED_TARGET_CURSOR_SYMBOLS = [
    "topPairingTargetShadow_of_summary",
    "topPairingTriShadow_eq_target_of_closed",
    "TopPairingTriCursorFrom",
    "topPairingTriCursor_of_closed",
    "TopPairingTargetCursorAtRank",
    "TopPairingStartMissSemanticLanguageAtRank",
]

REQUIRED_BELLMAN_OBJECT_SYMBOLS = [
    "TopPairingBellmanObj",
    "topPairingClosedMembership",
    "TopPairingBellmanEvalLanguageAtRank",
    "topPairingBellmanEvalObjectCoverOfClosedToEval",
]

FORBIDDEN_SEMANTIC_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "AcceptedTraceId",
    "acceptedTraceOfId",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def read_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def fraction_le_zero(text: Any) -> bool:
    try:
        return Fraction(str(text)) <= 0
    except (ValueError, TypeError, ZeroDivisionError):
        return False


def socket_checks() -> list[dict[str, Any]]:
    text = read_text(GRAPH183_SOCKET)
    checks: list[dict[str, Any]] = []
    checks.append(
        {
            "name": "graph183_socket_exists",
            "passed": GRAPH183_SOCKET.exists(),
            "detail": rel(GRAPH183_SOCKET),
        }
    )
    for symbol in REQUIRED_SOCKET_SYMBOLS:
        checks.append(
            {
                "name": f"socket_symbol:{symbol}",
                "passed": symbol in text,
                "detail": symbol,
            }
        )
    for token in FORBIDDEN_SOCKET_TOKENS:
        checks.append(
            {
                "name": f"socket_forbidden_absent:{token}",
                "passed": token not in text,
                "detail": token,
            }
        )
    return checks


def bellman_core_checks() -> list[dict[str, Any]]:
    text = read_text(BELLMAN_POTENTIAL)
    checks: list[dict[str, Any]] = [
        {
            "name": "bellman_potential_exists",
            "passed": BELLMAN_POTENTIAL.exists(),
            "detail": rel(BELLMAN_POTENTIAL),
        }
    ]
    for symbol in REQUIRED_BELLMAN_SYMBOLS:
        checks.append(
            {
                "name": f"bellman_symbol:{symbol}",
                "passed": symbol in text,
                "detail": symbol,
            }
        )
    return checks


def text_symbol_checks(
    label: str,
    path: Path,
    required: list[str],
    forbidden: list[str] | None = None,
) -> list[dict[str, Any]]:
    text = read_text(path)
    checks: list[dict[str, Any]] = [
        {
            "name": f"{label}:exists",
            "passed": path.exists(),
            "detail": rel(path),
        }
    ]
    for symbol in required:
        checks.append(
            {
                "name": f"{label}:symbol:{symbol}",
                "passed": symbol in text,
                "detail": symbol,
            }
        )
    for token in forbidden or []:
        checks.append(
            {
                "name": f"{label}:forbidden_absent:{token}",
                "passed": token not in text,
                "detail": token,
            }
        )
    return checks


def quotient_checks(profile: dict[str, Any] | None) -> list[dict[str, Any]]:
    if profile is None:
        return [
            {
                "name": "cocycle_quotient_1m:profile_exists",
                "passed": False,
                "detail": "missing quotient profile json",
            }
        ]
    best = profile.get("best_consistent")
    return [
        {
            "name": "cocycle_quotient_1m:decision_candidate_found",
            "passed": profile.get("decision") == "cocycle_quotient_candidates_found",
            "detail": profile.get("decision"),
        },
        {
            "name": "cocycle_quotient_1m:best_exists",
            "passed": best is not None,
            "detail": None if best is None else best.get("mode"),
        },
        {
            "name": "cocycle_quotient_1m:best_states_under_100",
            "passed": bool(best) and int(best.get("quotient_states", 10**9)) <= 100,
            "detail": None if best is None else best.get("quotient_states"),
        },
        {
            "name": "cocycle_quotient_1m:best_edges_under_150",
            "passed": bool(best) and int(best.get("quotient_edges", 10**9)) <= 150,
            "detail": None if best is None else best.get("quotient_edges"),
        },
    ]


def guard_checks(name: str, guard: dict[str, Any] | None) -> list[dict[str, Any]]:
    if guard is None:
        return [
            {
                "name": f"{name}:guard_exists",
                "passed": False,
                "detail": "missing guard json",
            }
        ]
    return [
        {
            "name": f"{name}:guard_exit_zero",
            "passed": guard.get("exit_code") == 0,
            "detail": guard.get("exit_code"),
        },
        {
            "name": f"{name}:rss_under_512_mib",
            "passed": float(guard.get("max_tree_rss_mib", 10**9)) <= 512.0,
            "detail": guard.get("max_tree_rss_mib"),
        },
        {
            "name": f"{name}:available_above_30000_mib",
            "passed": float(guard.get("min_available_seen_mib", 0)) >= 30000.0,
            "detail": guard.get("min_available_seen_mib"),
        },
    ]


def profile_checks(name: str, profile: dict[str, Any] | None) -> list[dict[str, Any]]:
    if profile is None:
        return [
            {
                "name": f"{name}:profile_exists",
                "passed": False,
                "detail": "missing profile json",
            }
        ]

    counts = profile.get("counts", {})
    bellman = profile.get("bellman", {})
    target = profile.get("target", {})
    return [
        {
            "name": f"{name}:offset_sum_mismatches_zero",
            "passed": counts.get("offset_sum_mismatches") == 0,
            "detail": counts.get("offset_sum_mismatches"),
        },
        {
            "name": f"{name}:single_margin_family",
            "passed": counts.get("margin_families") == 1,
            "detail": counts.get("margin_families"),
        },
        {
            "name": f"{name}:states_under_2000",
            "passed": int(counts.get("states", 10**9)) <= 2000,
            "detail": counts.get("states"),
        },
        {
            "name": f"{name}:edges_under_5000",
            "passed": int(counts.get("edges", 10**9)) <= 5000,
            "detail": counts.get("edges"),
        },
        {
            "name": f"{name}:bounded_fixed_point",
            "passed": bool(bellman.get("bounded_fixed_point")),
            "detail": bellman.get("bounded_fixed_point"),
        },
        {
            "name": f"{name}:observed_nonpositive",
            "passed": bool(bellman.get("proves_observed_nonpositive")),
            "detail": bellman.get("max_margin_bound"),
        },
        {
            "name": f"{name}:max_margin_bound_nonpositive",
            "passed": fraction_le_zero(bellman.get("max_margin_bound")),
            "detail": bellman.get("max_margin_bound"),
        },
        {
            "name": f"{name}:with_step_tri_source_mode",
            "passed": target.get("state_key_mode") == "with-step-tri-source",
            "detail": target.get("state_key_mode"),
        },
    ]


def semantic_audit_checks(audit: dict[str, Any] | None) -> list[dict[str, Any]]:
    if audit is None:
        return [
            {
                "name": "semantic_audit_exists",
                "passed": False,
                "detail": "missing semantic audit json",
            }
        ]
    return [
        {
            "name": "semantic_audit_accepts_margin_target",
            "passed": audit.get("decision")
            == "semantic_evaluator_pivot_ready_for_accepted_tail_margin_producer",
            "detail": audit.get("decision"),
        },
        {
            "name": "semantic_audit_target_is_accepted_tail_margin",
            "passed": audit.get("next_production_target")
            == "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin",
            "detail": audit.get("next_production_target"),
        },
    ]


def metrics(profile: dict[str, Any] | None, guard: dict[str, Any] | None) -> dict[str, Any]:
    if profile is None:
        return {}
    counts = profile.get("counts", {})
    bellman = profile.get("bellman", {})
    out = {
        "range": f"[{profile.get('start')},{profile.get('end')})",
        "jobs": profile.get("jobs"),
        "matched": counts.get("matched"),
        "states": counts.get("states"),
        "edges": counts.get("edges"),
        "final_states": counts.get("final_states"),
        "margin_families": counts.get("margin_families"),
        "margin_values": counts.get("margin_values"),
        "max_margin_bound": bellman.get("max_margin_bound"),
        "scale": bellman.get("scale"),
        "elapsed_seconds": profile.get("elapsed_seconds"),
    }
    if guard is not None:
        out["guard_elapsed_seconds"] = guard.get("elapsed_seconds")
        out["guard_peak_rss_mib"] = guard.get("max_tree_rss_mib")
        out["guard_min_available_mib"] = guard.get("min_available_seen_mib")
    return out


def quotient_metrics(profile: dict[str, Any] | None) -> dict[str, Any]:
    if profile is None:
        return {}
    best = profile.get("best_consistent") or {}
    return {
        "decision": profile.get("decision"),
        "best_mode": best.get("mode"),
        "best_quotient_states": best.get("quotient_states"),
        "best_quotient_edges": best.get("quotient_edges"),
        "best_state_ratio": (best.get("compression") or {}).get("state_ratio"),
        "best_edge_ratio": (best.get("compression") or {}).get("edge_ratio"),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Graph183 Accepted-Tail Margin Frontier",
        "",
        "Diagnostic status evidence only.  This audit does not prove coverage,",
        "does not certify the margin theorem, and does not replace Lean-checked",
        "family evidence.",
        "",
        f"- decision: `{report['decision']}`",
        f"- failed checks: `{len(report['failed_checks'])}`",
        "",
        "## Meaning",
        "",
        "A passing decision means graph183 completion-tail membership is already",
        "on the semantic target-shadow cursor route, and the exact profiler",
        "supports trying the accepted-tail margin producer next.  It does not",
        "mean that producer exists.  If the producer needs sampled ranks,",
        "selected prefixes, accepted trace ids, exact affine RHS keys, or one",
        "branch per rank/path, the route must pivot to a cancellation-segment or",
        "cocycle/coboundary quotient.",
        "",
        "## Metrics",
        "",
    ]
    for name, row in report["metrics"].items():
        lines.append(f"### {name}")
        lines.append("")
        lines.append("| metric | value |")
        lines.append("| --- | ---: |")
        for key, value in row.items():
            lines.append(f"| `{key}` | `{value}` |")
        lines.append("")

    lines.extend(["## Checks", "", "| check | passed | detail |", "| --- | --- | --- |"])
    for check in report["checks"]:
        lines.append(
            "| `{}` | `{}` | `{}` |".format(
                check["name"], check["passed"], check.get("detail")
            )
        )

    lines.extend(
        [
            "",
        "## Next Lean Target",
        "",
        "```lean",
        "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin",
        "```",
        "",
        "The graph183 completion-tail component is already available via",
        "`acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor`.",
        "The exact eval surface adapts to the graph183 label-margin family",
        "through",
        "`acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval`,",
        "and then to `AcceptedSequenceGraph183AcceptedTailMarginFamily` through",
        "`acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin`.",
        "The next Lean smoke should prove the accepted-branch exact evaluator",
        "component from semantic closed-language/evaluator state.  The quotient",
        "profile is a fallback signal only: any quotient/gauge equations must",
        "still become Lean-checked local facts.",
        "",
    ]
    )
    return "\n".join(lines)


def main() -> int:
    semantic = read_json(SEMANTIC_AUDIT)
    profile_100k = read_json(PROFILE_100K)
    profile_1m = read_json(PROFILE_1M)
    guard_100k = read_json(GUARD_100K)
    guard_1m = read_json(GUARD_1M)
    quotient_1m = read_json(COCYCLE_QUOTIENT_1M)

    checks: list[dict[str, Any]] = []
    checks.extend(socket_checks())
    checks.extend(bellman_core_checks())
    checks.extend(
        text_symbol_checks(
            "target_cursor",
            TOP_PAIRING_TARGET_CURSOR,
            REQUIRED_TARGET_CURSOR_SYMBOLS,
            FORBIDDEN_SEMANTIC_TOKENS,
        )
    )
    checks.extend(
        text_symbol_checks(
            "bellman_object",
            TOP_PAIRING_BELLMAN_OBJECT,
            REQUIRED_BELLMAN_OBJECT_SYMBOLS,
            FORBIDDEN_SEMANTIC_TOKENS,
        )
    )
    checks.extend(semantic_audit_checks(semantic))
    checks.extend(profile_checks("profile_100k", profile_100k))
    checks.extend(profile_checks("profile_1m", profile_1m))
    checks.extend(guard_checks("profile_100k", guard_100k))
    checks.extend(guard_checks("profile_1m", guard_1m))
    checks.extend(quotient_checks(quotient_1m))

    failed = [row for row in checks if not row["passed"]]
    decision = (
        "diagnostic_supports_graph183_accepted_tail_margin_bellman_route"
        if not failed
        else "blocked_graph183_accepted_tail_margin_frontier"
    )
    report = {
        "mode": "graph183_accepted_tail_margin_frontier",
        "arithmetic": "untrusted diagnostics only; final evidence must be Lean-checked",
        "decision": decision,
        "checks": checks,
        "failed_checks": failed,
        "metrics": {
            "profile_100k": metrics(profile_100k, guard_100k),
            "profile_1m": metrics(profile_1m, guard_1m),
            "cocycle_quotient_1m": quotient_metrics(quotient_1m),
        },
        "next_lean_target": (
            "AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin"
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report), encoding="utf-8")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision: {decision}")
    return 0 if not failed else 1


if __name__ == "__main__":
    raise SystemExit(main())
