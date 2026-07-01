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
    ROOT / "Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean",
    ROOT / "scripts/emit_bellman_graph_smoke.py",
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
    "semantic_eval_target": [
        "topPairingClosed_eval",
        "topPairingClosed_evalAccepts",
        "BellmanEvalAccepts",
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
    semantic_eval_names = [
        match
        for info in by_file.values()
        for match in info["semantic_eval_target"]  # type: ignore[index]
        if match["pattern"] in {"topPairingClosed_eval", "topPairingClosed_evalAccepts"}
    ]
    decision = (
        "semantic-object-built-eval-still-sampled"
        if semantic_object and sampled_eval and not semantic_eval_names
        else "needs-manual-review"
    )

    summary = {
        "decision": decision,
        "totals": totals,
        "files": by_file,
        "next_required_theorem": (
            "forall obj : TopPairingBellmanObj Face.ym, "
            "BellmanEvalAccepts ... obj"
        ),
        "required_emitter_change": (
            "Move deterministic eval from sampledSmokeNext/SampledRankIndex to "
            "a theorem over TopPairingBellmanObj and obj.closed."
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
        f"- semantic closed-eval theorem mentions: `{len(semantic_eval_names)}`",
        "",
        "## Interpretation",
        "",
        "The semantic object/membership layer exists, but the generated",
        "deterministic evaluator is still emitted inside the sampled block.",
        "The next go/no-go theorem remains:",
        "",
        "```lean",
        "forall obj : TopPairingBellmanObj Face.ym,",
        "  BellmanEvalAccepts ... obj",
        "```",
        "",
        "That theorem must be proved from `obj.closed` and finite automaton facts,",
        "not by case-splitting on `SampledRankIndex`.",
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
