#!/usr/bin/env python3
"""Audit the latest Bellman semantic-transducer pivot.

This is a lightweight planning audit, not proof evidence.  It records the
current strategic boundary after the GPT5.5 review:

* keep Bellman/potential certificates;
* reject selected-prefix or sampled-rank membership as production coverage;
* use the closed top-pairing language, target-shadow cursor, transducer tail,
  and deterministic evaluator gates as the production membership surface;
* treat graph183 completion-tail membership as a validated semantic lane;
* route graph183 production through a generic `sequenceBadFace` quotient-margin
  carrier, not another selected-prefix/object cover or whole-label exact-eval
  surface.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/latest_bellman_semantic_pivot.json"
OUT_MD = ROOT / "scripts/generated/latest_bellman_semantic_pivot.md"


FILES = {
    "bellman_object": ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean",
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "transducer_semantic_gate": ROOT
    / "Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean",
    "terminal_eval_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTerminalStatePartialMachineEvalSocket.lean",
    "graph183_lane": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183TerminalTailPrefixSmoke.lean",
    "graph183_tail_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean",
    "graph183_quotient_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183CocycleQuotientSmoke.lean",
    "graph183_quotient_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraph183QuotientMarginSocket.lean",
}


REQUIRED = {
    "bellman_object": [
        "structure TopPairingBellmanObj",
        "topPairingClosedMembership",
        "objectCoverOfEvalAccepts",
        "TopPairingBellmanEvalLanguageAtRank",
    ],
    "target_cursor": [
        "topPairingTargetShadow_of_summary",
        "topPairingTriShadow_eq_target_of_closed",
        "TopPairingTriCursorFrom",
        "topPairingTriCursor_of_closed",
    ],
    "transducer_tail": [
        "theorem ofClosedRank",
        "theorem cons",
        "theorem cons_square_tail",
        "theorem cons_tri_tail",
    ],
    "transducer_semantic_gate": [
        "closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
        "strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix",
        "scaledMargin_nonpos_of_rankedTransducerClosedGate",
    ],
    "terminal_eval_socket": [
        "TerminalContainedEvalPrefixGate",
        "TerminalContainedEvalProgressGate",
        "terminalContainedEvalPrefixGate_trans_progress",
    ],
    "graph183_lane": [
        "graph183Layer4ProgressGate_of_strengthened_prefix",
        "graph183Layer4CompletionTail_of_strengthened_prefix",
        "graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix_semantic",
        "graph183InitialContainedEvalPrefixGate_of_strengthened_prefix_via_progress",
    ],
    "graph183_tail_socket": [
        "acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor",
        "graph183AcceptedBranchLabels_eq_of_prefix",
        "graph183AcceptedBranchEvalGateResult_of_labels",
        "AcceptedSequenceGraph183AcceptedTailMarginFamily",
    ],
    "graph183_quotient_smoke": [
        "graph183AcceptedBranchRawGain",
        "graph183AcceptedBranchRawGain_contract",
        "graph183QuotientAcceptedBranchSmoke",
    ],
    "graph183_quotient_socket": [
        "AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily",
        "Graph183TailQuotientMarginFamily",
        "Graph183TailQuotientMarginSequenceBadFace",
        "graph183TailQuotientMarginFamily_of_sequenceBadFace",
        "scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace",
        "nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace",
        "Graph183TailExactEvalFamily",
        "Graph183TailExactEvalSequenceBadFace",
        "graph183TailExactEvalFamily_of_sequenceBadFace",
        "graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace",
        "graph183TailQuotientMarginSequenceBadFace_of_exactEvalGateResult",
        "graph183TailQuotientMarginFamily_of_tailExactEval",
        "graph183TailQuotientMarginFamily_of_exactEvalSequenceBadFace",
        "graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace",
        "graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace",
        "acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_graph183TailExactEvalFamily",
        "acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily",
        "acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin",
        "acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin",
        "graph169ContinuationFamily_of_acceptedSequenceGraph183TailQuotientMargin",
        "scaledMargin_nonpos_of_graph183TailQuotientMargin",
        "scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin",
        "Graph183TailBranchQuotientStartViolationFamily",
        "nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation",
        "AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily",
        "nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation",
    ],
}


FORBIDDEN = [
    "private inductive SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "acceptedTraceOfId",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def scan_file(path: Path, required: list[str]) -> dict[str, object]:
    text = path.read_text()
    symbols = {symbol: symbol in text for symbol in required}
    forbidden_hits = [
        {"pattern": pattern, "line": lineno}
        for lineno, line in enumerate(text.splitlines(), 1)
        for pattern in FORBIDDEN
        if pattern in line
    ]
    return {
        "path": rel(path),
        "required_symbols": symbols,
        "missing": [symbol for symbol, present in symbols.items() if not present],
        "forbidden_hits": forbidden_hits,
    }


def main() -> int:
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)

    files = {
        key: scan_file(path, REQUIRED[key])
        for key, path in FILES.items()
    }
    missing = {
        key: data["missing"]
        for key, data in files.items()
        if data["missing"]
    }
    forbidden_hits = [
        {"file": data["path"], **hit}
        for data in files.values()
        for hit in data["forbidden_hits"]
    ]

    status = (
        "latest-bellman-semantic-pivot-has-graph183-sequencebadface-carrier"
        if not missing and not forbidden_hits
        else "latest-bellman-semantic-pivot-gap"
    )

    report = {
        "status": status,
        "files": files,
        "missing": missing,
        "forbidden_hits": forbidden_hits,
        "accepted": [
            "Bellman/potential remains the margin certificate route",
            "rank objects are semantic closed-language subtypes",
            "target-shadow cursor and transducer tail are the membership front door",
            "graph183 completion-tail membership is already semantic",
            "graph183 accepted branch has a Lean-checked quotient raw-gain run",
            "graph183 now exposes a generic sequenceBadFace quotient-margin carrier",
            "the next graph183 target is an upstream semantic proof of that carrier",
        ],
        "rejected": [
            "selected-prefix membership as production coverage",
            "sampled-rank/path object membership",
            "accepted trace ids as production membership",
            "one branch per rank/path",
            "exact affine RHS or solved start-point keys as membership state",
            "claiming graph183 alone proves all layer-4 coverage",
            "whole-label exact-eval as the primary graph183 proof obligation",
        ],
        "next_gate": (
            "Prove Graph183TailQuotientMarginSequenceBadFace scaledMargin "
            "semantically for the upstream strengthened language, then feed it "
            "through graph183TailQuotientMarginFamily_of_sequenceBadFace. Pair "
            "it with the generic branch-local start-violation surface. If that "
            "proof demands sampled ranks, selected prefixes, accepted trace ids, "
            "exact affine RHS, solved start-point keys, or one branch per "
            "rank/path, stop graph183 scaling and switch to the "
            "cancellation-segment or stronger cocycle quotient state."
        ),
        "next_lean_target": (
            "Graph183TailQuotientMarginSequenceBadFace scaledMargin"
        ),
    }

    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Latest Bellman Semantic Pivot Audit",
        "",
        f"- status: `{status}`",
        f"- files checked: `{len(files)}`",
        f"- forbidden hits: `{len(forbidden_hits)}`",
        "",
        "## Checked Surfaces",
        "",
    ]
    for key, data in files.items():
        lines.append(f"- `{key}`: `{data['path']}`")
        if data["missing"]:
            lines.append(f"  - missing: `{', '.join(data['missing'])}`")
        else:
            lines.append("  - required symbols: present")
    lines.extend(
        [
            "",
            "## Decision",
            "",
            "Accepted:",
            "",
            *[f"- {item}" for item in report["accepted"]],
            "",
            "Rejected:",
            "",
            *[f"- {item}" for item in report["rejected"]],
            "",
            "Next gate:",
            "",
            report["next_gate"],
            "",
        ]
    )
    OUT_MD.write_text("\n".join(lines))

    print(json.dumps(report, indent=2, sort_keys=True))
    return 0 if status == (
        "latest-bellman-semantic-pivot-has-graph183-sequencebadface-carrier"
    ) else 1


if __name__ == "__main__":
    raise SystemExit(main())
