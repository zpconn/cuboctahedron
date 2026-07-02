#!/usr/bin/env python3
"""Audit the top-pairing Bellman semantic-evaluator frontier.

This is a text-only diagnostic.  It records the precise go/no-go gate from the
latest strategy review:

* keep Bellman for exactly one more semantic-membership experiment;
* the object must be compact and semantic, namely rank plus
  `TopPairingClosedLanguageAtRank`;
* the hard theorem must turn that semantic object into deterministic evaluator
  acceptance or into one explicitly strengthened semantic predicate;
* if the proof falls back to sampled ranks/paths, rank-indexed cases, or exact
  affine-RHS keys, stop using this Bellman surface as the production proof
  route.

The audit deliberately does not enumerate ranks or build generated evidence.
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
        "topPairingClosedMembership",
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
        "topPairingBellmanEvalObjectCoverOfStrengthenedToEval",
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
        "TopPairingActualFaceOmniAtRank",
    ],
    "allowed_strengthening": [
        "TopPairingStrengthenedClosedLanguageAtRank",
        "TopPairingStrengthenedClosedContainsRank",
        "TopPairingBellmanEvalLanguageAtRank",
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
    allowed_strengthening = totals["allowed_strengthening"]
    decision = (
        "continue-one-semantic-bellman-experiment-hard-eval-theorem-open"
        if semantic_eval_language and closed_to_eval_socket and remaining_premises
        and not sampled_eval
        else "semantic-bellman-socket-built-but-sampled-risk-present"
        if semantic_eval_language and closed_to_eval_socket and sampled_eval
        else "eval-predicate-built-object-cover-socket-missing"
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
            "forall obj : TopPairingBellmanObj Face.ym, "
            "BellmanEvalAccepts ... "
            "(fun obj => topPairingScaledMargin obj.rank) "
            "(fun obj => TopPairingBellmanObj.labels ... obj) obj"
        ),
        "rank_form": (
            "forall rank, TopPairingClosedLanguageAtRank rank Face.ym -> "
            "TopPairingBellmanEvalLanguageAtRank ... rank Face.ym"
        ),
        "allowed_strengthened_form": (
            "forall rank, TopPairingStrengthenedClosedLanguageAtRank "
            "sequenceBadFace rank Face.ym -> "
            "TopPairingBellmanEvalLanguageAtRank ... rank Face.ym"
        ),
        "required_emitter_change": (
            "Prove deterministic evaluator acceptance from rank plus a "
            "closed-language proof, or from one stronger semantic predicate "
            "that carries exactly the missing evaluator/margin facts. Do not "
            "reintroduce sampled rank/path objects."
        ),
        "allowed_strengthening_mentions": allowed_strengthening,
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
        f"- allowed-strengthening mentions: `{totals['allowed_strengthening']}`",
        "",
        "## Interpretation",
        "",
        "The semantic object/membership layer exists.  In particular, the",
        "object surface is `TopPairingBellmanObj`, whose data is only a rank",
        "and a proof of `TopPairingClosedLanguageAtRank`; the membership proof",
        "does not need a sampled rank/path table.",
        "",
        "```lean",
        "structure TopPairingBellmanObj (badFace : Face) where",
        "  rank : Fin numPairWords",
        "  closed : TopPairingClosedLanguageAtRank rank badFace",
        "```",
        "",
        "The remaining proof obligation is the hard deterministic evaluator",
        "theorem:",
        "",
        "```lean",
        "forall obj : TopPairingBellmanObj Face.ym,",
        "  BellmanEvalAccepts ...",
        "    (fun obj => topPairingScaledMargin obj.rank)",
        "    (fun obj => TopPairingBellmanObj.labels ... obj)",
        "    obj",
        "```",
        "",
        "Equivalently, in rank form:",
        "",
        "```lean",
        "forall rank,",
        "  TopPairingClosedLanguageAtRank rank Face.ym ->",
        "    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym",
        "```",
        "",
        "If the plain closed predicate is too weak, the allowed adjustment is",
        "one stronger semantic predicate, for example:",
        "",
        "```lean",
        "forall rank,",
        "  TopPairingStrengthenedClosedLanguageAtRank",
        "    sequenceBadFace rank Face.ym ->",
        "    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym",
        "```",
        "",
        "That strengthening may carry `GraphAcceptedTraceMargin`,",
        "`TopPairingActualFaceOmniAtRank`, or the corresponding sequence",
        "bad-face evidence.  It must still be semantic.  It must not be a",
        "`SampledRankIndex`, a sampled path list, an exact affine-RHS key, or",
        "one generated branch per rank/path.",
        "",
        "## Go/No-Go Rule",
        "",
        "Continue Bellman only if the next implementation proves this evaluator",
        "slice from the semantic object or from one compact strengthened",
        "semantic predicate.  If the theorem collapses back into sampled",
        "membership, rank/path enumeration, or exact affine-offset keys, demote",
        "this Bellman route to discovery infrastructure and pivot to the",
        "cancellation-tree summary automaton.",
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
