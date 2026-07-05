#!/usr/bin/env python3
"""Audit readiness for a graph183 semantic carrier producer.

This is a status audit, not proof evidence.  Its purpose is to keep the
graph183 Bellman frontier honest:

* the Lean carrier sockets are now in place;
* the cocycle quotient smoke is checked but diagnostic;
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
SMOKE = ROOT / (
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraph183CocycleQuotientSmoke.lean"
)
PROFILE = ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json"
QUOTIENT = ROOT / "scripts/generated/graph183_cocycle_quotients_0_1M.json"
GUARD = ROOT / "scripts/generated/graph183_quotient_margin_socket_latest_guard.json"

REQUIRED_SOCKET_SYMBOLS = [
    "Graph183TailQuotientMarginSequenceBadFace",
    "Graph183TailExactEvalSequenceBadFace",
    "graph183TailQuotientMarginFamily_of_sequenceBadFace",
    "graph183TailExactEvalFamily_of_sequenceBadFace",
    "graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace",
    "graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace",
    "nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace",
]

REQUIRED_SMOKE_SYMBOLS = [
    "graph183AcceptedBranchRawGain",
    "graph183AcceptedBranchRawGain_contract",
    "graph183QuotientStep",
    "graph183QuotientAcceptedBranchSmoke",
]

FORBIDDEN_PRODUCER_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "AcceptedTraceId",
    "acceptedTraceOfId",
]

PRODUCTION_CARRIER_CANDIDATES = [
    "graph183TailQuotientMarginSequenceBadFace_of_closedLanguage",
    "graph183TailQuotientMarginSequenceBadFace_of_quotientEval",
    "graph183TailQuotientMarginSequenceBadFace_of_cocycleQuotient",
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


def guard_checks(guard: dict[str, Any] | None) -> list[dict[str, Any]]:
    if guard is None:
        return [
            {
                "name": "socket_guard:exists",
                "passed": False,
                "detail": "missing graph183 socket guard",
            }
        ]
    return [
        {
            "name": "socket_guard:exit_zero",
            "passed": guard.get("exit_code") == 0,
            "detail": guard.get("exit_code"),
        },
        {
            "name": "socket_guard:rss_under_6500_mib",
            "passed": float(guard.get("max_tree_rss_mib", 10**9)) <= 6500.0,
            "detail": guard.get("max_tree_rss_mib"),
        },
        {
            "name": "socket_guard:available_above_30000_mib",
            "passed": float(guard.get("min_available_seen_mib", 0)) >= 30000.0,
            "detail": guard.get("min_available_seen_mib"),
        },
    ]


def production_status(socket_text: str) -> dict[str, Any]:
    found = [name for name in PRODUCTION_CARRIER_CANDIDATES if name in socket_text]
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
        "The 1M graph183 profile and quotient profile support the route as a",
        "diagnostic.  However, no production theorem currently proves",
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
    smoke_text = read_text(SMOKE)
    profile = read_json(PROFILE)
    quotient = read_json(QUOTIENT)
    guard = read_json(GUARD)

    checks: list[dict[str, Any]] = []
    checks.extend(symbol_checks("socket", SOCKET, REQUIRED_SOCKET_SYMBOLS))
    checks.extend(symbol_checks("smoke", SMOKE, REQUIRED_SMOKE_SYMBOLS))
    checks.extend(forbidden_checks("socket", SOCKET))
    checks.extend(forbidden_checks("smoke", SMOKE))
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
    checks.extend(guard_checks(guard))

    status = production_status(socket_text)
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
            "guard_elapsed_seconds": guard_metrics.get("elapsed_seconds"),
            "guard_peak_rss_mib": guard_metrics.get("max_tree_rss_mib"),
            "guard_min_available_mib": guard_metrics.get("min_available_seen_mib"),
        },
        "next_required_theorem": (
            "Graph183TailQuotientMarginSequenceBadFace scaledMargin, proved "
            "from semantic closed-language / deterministic evaluator / "
            "cocycle-gauge state"
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
