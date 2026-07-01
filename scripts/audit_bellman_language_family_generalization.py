#!/usr/bin/env python3
"""Audit whether Bellman rank-language families are semantic or exact-rank.

The desired production surface is a `BellmanAxisRankLanguageFamily` whose
`ContainsRank` predicate is a semantic family such as
`ClosedTopPairingContainsRank Face.ym`.  Current smokes may already use the
right structure but still instantiate it with exact singleton predicates
(`rank = clsNNNNRank`) and discharge fields by rewriting that equality.

This script records that distinction.  It is diagnostic only, not proof
evidence.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


DEFAULT_FILES = [
    Path("scripts/emit_bellman_graph_smoke.py"),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingGraphLanguage2GraphSmoke.lean"
    ),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingGraphLanguage2Smoke.lean"
    ),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingClosedLanguageBridge.lean"
    ),
]

PATTERNS = {
    "rank_language_family": "BellmanAxisRankLanguageFamily",
    "exact_contains_rank_def": re.compile(r"def\s+\w+ContainsRank.*"),
    "exact_rank_eq": re.compile(r"rank\s*=\s*cls\d+Rank"),
    "rw_hrank": "rw [hrank]",
    "kernel_check_field": "kernel_check",
    "axis_forces_field": "axis_forces",
    "margin_bound_field": "margin_bound",
    "closed_contains_rank": "ClosedTopPairingContainsRank",
    "closed_language_predicate": "TopPairingClosedLanguageAtRank",
}


def line_matches(line: str, pattern: object) -> bool:
    if isinstance(pattern, str):
        return pattern in line
    return bool(pattern.search(line))


def audit_file(path: Path, *, excerpt_limit: int) -> dict[str, Any]:
    if not path.exists():
        return {"path": str(path), "exists": False, "patterns": {}}
    lines = path.read_text(encoding="utf-8").splitlines()
    patterns: dict[str, Any] = {}
    for name, pattern in PATTERNS.items():
        matches = [
            {"line": idx, "text": line.strip()}
            for idx, line in enumerate(lines, 1)
            if line_matches(line, pattern)
        ]
        patterns[name] = {
            "count": len(matches),
            "examples": matches[:excerpt_limit],
        }
    return {"path": str(path), "exists": True, "patterns": patterns}


def summarize(files: list[dict[str, Any]]) -> dict[str, Any]:
    def total(name: str) -> int:
        return sum(int(item.get("patterns", {}).get(name, {}).get("count", 0))
                   for item in files)

    exact_mentions = total("exact_rank_eq") + total("rw_hrank")
    closed_mentions = total("closed_contains_rank") + total("closed_language_predicate")
    language_families = total("rank_language_family")

    if language_families and exact_mentions and closed_mentions:
        decision = "rank-language-family-exists-but-exact-rank-bound"
    elif language_families and exact_mentions:
        decision = "rank-language-family-exact-rank-bound"
    elif language_families and closed_mentions:
        decision = "rank-language-family-has-semantic-surface"
    else:
        decision = "rank-language-family-surface-unclear"

    return {
        "decision": decision,
        "rank_language_family_mentions": language_families,
        "exact_rank_dependency_mentions": exact_mentions,
        "closed_language_mentions": closed_mentions,
        "recommended_next_step": (
            "Change the generated family instantiation from singleton "
            "`rank = clsNNNNRank` predicates to `ClosedTopPairingContainsRank "
            "Face.ym`, and replace `rw [hrank]` field proofs with proofs from "
            "closed-language components: canonical sequence, cancellation "
            "summary, schedule/square-gap/local-axis traces, kernel check, "
            "axis-forces, margin bound, and start-violation certificate."
        ),
    }


def write_markdown(path: Path, payload: dict[str, Any]) -> None:
    summary = payload["summary"]
    lines = [
        "# Bellman Language-Family Generalization Audit",
        "",
        "This is diagnostic-only evidence.  It checks whether generated",
        "`BellmanAxisRankLanguageFamily` surfaces are already semantic or still",
        "exact-rank singleton families.",
        "",
        "## Summary",
        "",
        f"- decision: `{summary['decision']}`",
        f"- rank-language-family mentions: `{summary['rank_language_family_mentions']}`",
        f"- exact-rank dependency mentions: `{summary['exact_rank_dependency_mentions']}`",
        f"- closed-language mentions: `{summary['closed_language_mentions']}`",
        f"- recommended next step: {summary['recommended_next_step']}",
        "",
        "## Files",
        "",
    ]
    for item in payload["files"]:
        lines.append(f"### `{item['path']}`")
        lines.append("")
        lines.append(f"- exists: `{item['exists']}`")
        for name, details in item.get("patterns", {}).items():
            count = int(details["count"])
            if count == 0:
                continue
            lines.append(f"- `{name}`: `{count}`")
            for example in details["examples"]:
                lines.append(
                    f"  - line `{example['line']}`: `{example['text']}`"
                )
        lines.append("")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--file",
        dest="files",
        type=Path,
        action="append",
        default=None,
        help="File to audit. May be repeated. Defaults to current Bellman files.",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=Path("scripts/generated/bellman_language_family_generalization_audit.json"),
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=Path("docs/bellman_language_family_generalization_audit.md"),
    )
    parser.add_argument("--excerpt-limit", type=int, default=5)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    files = args.files if args.files is not None else DEFAULT_FILES
    audited = [audit_file(path, excerpt_limit=args.excerpt_limit) for path in files]
    payload = {"summary": summarize(audited), "files": audited}
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(args.markdown, payload)
    print(f"decision: {payload['summary']['decision']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
