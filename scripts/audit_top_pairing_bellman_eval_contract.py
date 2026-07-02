#!/usr/bin/env python3
"""Audit the top-pairing Bellman semantic-evaluator frontier.

This is a text-only diagnostic.  It checks whether the current generated
Bellman graph route already exposes a semantic closed-language evaluator
theorem, or whether deterministic evaluation is still tied to sampled rank
objects.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

FILES = [
    ROOT / "Cuboctahedron/Search/TopPairingBellmanObject.lean",
    ROOT / "Cuboctahedron/Search/BellmanTopPairingLanguage.lean",
    ROOT / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalTraceSmoke.lean",
    ROOT / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean",
    ROOT / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedEvalLanguage.lean",
]

PATTERNS = {
    "semantic_object": [
        "TopPairingBellmanObj",
        "TopPairingClosedContainsRank",
        "objectCoverOfEvalAccepts",
    ],
    "closed_language_fields": [
        "TopPairingClosedLanguageAtRank",
        "TopPairingClosedLanguageForSeq",
        "forCanonicalSeq",
        "TopPairingStepScheduleLabels",
        "TopPairingSquareGapLabels",
        "TopPairingLocalAxisLabels",
    ],
    "sampled_eval": [
        "sampledSmokeNext",
        "SampledSmokeStepEval",
        "SampledRankIndex",
        "sampledContainsRank",
        "sampledRankOf",
        "Classical.choose",
    ],
    "closed_to_eval_socket": [
        "closedToEvalLanguage_of_traceAndMargin",
        "scaledMargin_nonpos_of_closedToEvalLanguage",
        "evalLanguageAtRank_of_graphAcceptedTraceMargin",
        "evalLanguageAtRank_of_strengthened_graphAcceptedTraceMargin",
        "topPairingBellmanEvalObjectCoverOfClosedToEval",
    ],
    "eval_accepts": [
        "evalAccepts_of_closedTraceAndMargin",
        "bellmanEvalAccepts_of_closedFaceTraceA_or_closedFaceTraceB",
        "bellmanEvalAccepts_of_graphAcceptedTraceMargin",
        "BellmanEvalAccepts",
    ],
    "semantic_eval_language": [
        "TopPairingBellmanEvalLanguageAtRank",
        "TopPairingBellmanEvalContainsRank",
        "TopPairingBellmanEvalObj",
        "topPairingBellmanEvalObjectCoverOfClosedToEval",
    ],
    "remaining_premises": [
        "ClosedTraceOr",
        "ClosedMarginBound",
        "GraphAcceptedTraceMargin",
        "TerminalOkTraceLabels",
        "AcceptedSequenceBadFaceAtRank",
    ],
}


def find_matches(path: Path, patterns: list[str]) -> list[dict[str, object]]:
    if not path.exists():
        return []
    matches: list[dict[str, object]] = []
    for lineno, line in enumerate(path.read_text().splitlines(), 1):
        for pattern in patterns:
            if pattern in line:
                matches.append(
                    {
                        "line": lineno,
                        "pattern": pattern,
                        "text": line.strip(),
                    }
                )
    return matches


def main() -> None:
    by_file: dict[str, dict[str, object]] = {}
    totals = {key: 0 for key in PATTERNS}
    for path in FILES:
        rel = path.relative_to(ROOT).as_posix()
        entry: dict[str, object] = {"exists": path.exists()}
        for key, patterns in PATTERNS.items():
            matches = find_matches(path, patterns)
            entry[key] = matches
            totals[key] += len(matches)
        by_file[rel] = entry

    sampled_eval = totals["sampled_eval"]
    semantic_object = totals["semantic_object"]
    semantic_eval_language = totals["semantic_eval_language"]
    closed_to_eval_socket = totals["closed_to_eval_socket"]
    remaining_premises = totals["remaining_premises"]
    decision = (
        "closed-to-eval-socket-built-trace-margin-premises-remain"
        if semantic_eval_language and closed_to_eval_socket and remaining_premises
        and not sampled_eval
        else "closed-to-eval-socket-built-but-sampled-risk-present"
        if semantic_eval_language and closed_to_eval_socket and sampled_eval
        else "stronger-eval-predicate-built-closed-to-eval-missing"
        if semantic_eval_language and not closed_to_eval_socket
        else
        "semantic-object-built-eval-still-sampled"
        if semantic_object and sampled_eval
        else "needs-manual-review"
    )

    summary = {
        "decision": decision,
        "totals": totals,
        "files": by_file,
        "next_required_theorem": (
            "forall rank, TopPairingClosedLanguageAtRank rank Face.ym -> "
            "TopPairingBellmanEvalLanguageAtRank ... rank Face.ym"
        ),
        "required_emitter_change": (
            "Prove the trace and margin premises from the semantic closed "
            "language, or generate one compact semantic family theorem that "
            "does so. Do not reintroduce sampled rank/path objects."
        ),
    }

    out_json = ROOT / "scripts/generated/top_pairing_bellman_eval_contract_audit.json"
    out_md = ROOT / "docs/top_pairing_bellman_eval_contract_audit.md"
    out_json.parent.mkdir(parents=True, exist_ok=True)
    out_md.parent.mkdir(parents=True, exist_ok=True)
    out_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Top-Pairing Bellman Eval-Contract Audit",
        "",
        "This is diagnostic-only evidence.  It audits whether the current",
        "top-pairing Bellman route has reached the semantic evaluator theorem",
        "recommended by GPT5.5, or whether deterministic evaluation is still",
        "sampled-object-bound.",
        "",
        "## Summary",
        "",
        f"- decision: `{decision}`",
        f"- semantic-object mentions: `{totals['semantic_object']}`",
        f"- closed-language field mentions: `{totals['closed_language_fields']}`",
        f"- sampled-eval mentions: `{totals['sampled_eval']}`",
        f"- semantic eval-language mentions: `{totals['semantic_eval_language']}`",
        f"- closed-to-eval socket mentions: `{totals['closed_to_eval_socket']}`",
        f"- remaining-premise mentions: `{totals['remaining_premises']}`",
        "",
        "## Interpretation",
        "",
        "The semantic object/membership layer exists, and the current generated",
        "route has a conditional closed-to-eval socket.  The remaining proof",
        "obligation is not another wrapper: it is to prove the trace and margin",
        "premises from the semantic closed-language predicate, or generate one",
        "compact semantic family theorem that provides them.",
        "",
        "```lean",
        "forall rank,",
        "  TopPairingClosedLanguageAtRank rank Face.ym ->",
        "    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym",
        "```",
        "",
        "Equivalently, the next theorem can provide",
        "`GraphAcceptedTraceMargin` for the semantic closed object.  It must be",
        "proved from `TopPairingClosedLanguageAtRank` and finite automaton facts,",
        "not by case-splitting on `SampledRankIndex` or sampled paths.",
        "",
        "## Files",
        "",
    ]
    for rel, info in by_file.items():
        lines.append(f"### `{rel}`")
        lines.append("")
        lines.append(f"- exists: `{info['exists']}`")
        for key in PATTERNS:
            matches = info[key]  # type: ignore[index]
            lines.append(f"- `{key}`: `{len(matches)}`")
            for match in matches[:8]:
                lines.append(
                    f"  - line `{match['line']}`: `{match['text']}`"
                )
            if len(matches) > 8:
                lines.append(f"  - ... `{len(matches) - 8}` more")
        lines.append("")
    out_md.write_text("\n".join(lines) + "\n")
    print(f"wrote {out_json.relative_to(ROOT)}")
    print(f"wrote {out_md.relative_to(ROOT)}")
    print(f"decision: {decision}")


if __name__ == "__main__":
    main()
