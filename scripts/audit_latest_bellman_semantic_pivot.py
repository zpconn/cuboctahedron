#!/usr/bin/env python3
"""Audit the latest Bellman semantic-transducer pivot.

This is a lightweight planning audit, not proof evidence.  It records the
current strategic boundary after the GPT5.5 review:

* keep Bellman/potential certificates;
* reject selected-prefix or sampled-rank membership as production coverage;
* use the closed top-pairing language, target-shadow cursor, transducer tail,
  and deterministic evaluator gates as the production membership surface;
* treat graph183 as one validated semantic terminal-machine lane, not as
  all-lane coverage.
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
        "latest-bellman-semantic-pivot-one-lane-validated"
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
            "graph183 tmpm_zm is one validated semantic terminal-machine lane",
        ],
        "rejected": [
            "selected-prefix membership as production coverage",
            "sampled-rank/path object membership",
            "one branch per rank/path",
            "exact affine RHS or solved start-point keys as membership state",
            "claiming graph183 alone proves all layer-4 coverage",
        ],
        "next_gate": (
            "Instantiate the graph183 four-piece terminal-machine pattern for "
            "one additional layer-4 lane, or make the generator emit the same "
            "semantic progress/completion/suffix/eval surface for all seven "
            "lanes. If that demands exact affine data, stop and run the "
            "cocycle/cancellation-summary quotient experiment first."
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
    return 0 if status == "latest-bellman-semantic-pivot-one-lane-validated" else 1


if __name__ == "__main__":
    raise SystemExit(main())
