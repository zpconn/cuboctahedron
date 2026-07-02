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
    "closed_eval_gate": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean",
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

    rss_guard = guards["root_bridge_rss_cap"]
    rss_killed = bool(rss_guard and rss_guard.get("killed_reason"))
    sampled_hits = totals["forbidden_sampled_surface"]
    selected_prefix_risk = totals["selected_prefix_production_risk"]
    target_shadow_ready = totals["target_shadow"] >= 5
    eval_core_ready = totals["eval_core"] >= 3
    semantic_gate_ready = totals["semantic_eval_gate"] >= 5

    decision = (
        "pivot-to-deterministic-closed-language-transducer"
        if target_shadow_ready and eval_core_ready and semantic_gate_ready
        and selected_prefix_risk and not sampled_hits
        else "manual-review-transducer-pivot"
    )

    report: dict[str, Any] = {
        "decision": decision,
        "totals": totals,
        "files": {name: {"path": rel(path), **scans[name]} for name, path in FILES.items()},
        "guards": guards,
        "selected_prefix_root_bridge_rss_killed": rss_killed,
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
            "topPairingClosed_to_eval_gate",
            "topPairingClosed_scaledMargin_nonpos",
        ],
        "next_profiler_experiments": [
            "target-shadow invertibility audit",
            "closed-language-to-state transition profiler",
            "cocycle quotient profiler before adding exact affine state",
            "translation GoodDirection row-template/3-row circuit profiler",
        ],
        "no_go_rules": [
            "no sampled rank/path object",
            "no one constructor per rank/path",
            "no exact affine RHS or solved start-point key",
            "no root selected-prefix producer import as production membership",
            "no broad generated Lean build without hard address-space and RSS guard",
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
        f"- selected-prefix production-risk mentions: `{totals['selected_prefix_production_risk']}`",
        f"- forbidden sampled-surface mentions: `{totals['forbidden_sampled_surface']}`",
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
