#!/usr/bin/env python3
"""Audit whether Bellman generated coverage is sample-bound or semantic.

This is diagnostic tooling only.  It does not prove coverage; it records which
membership surface the current Bellman emitter/generated smoke files use, so
the plan can distinguish accepted semantic bridges from sampled path
enumeration.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any


DEFAULT_FILES = [
    Path("scripts/emit_bellman_graph_smoke.py"),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingGraphLanguage2Smoke.lean"
    ),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingGraphLanguage2GraphSmoke.lean"
    ),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingGraphLanguage2TerminalSmoke.lean"
    ),
    Path(
        "Cuboctahedron/Generated/NonIdentity/Residual/"
        "BellmanTopPairingClosedLanguageBridge.lean"
    ),
]

PATTERNS = {
    "sampled_rank_index": "SampledRankIndex",
    "sampled_contains_rank": "sampledContainsRank",
    "sampled_object_membership": "sampledObjectMembership",
    "classical_choose": "Classical.choose",
    "terminal_contains_rank": "terminalContainsRank",
    "bellman_rank_object_membership": "BellmanRankObjectMembership",
    "bellman_axis_rank_object_cover": "BellmanAxisRankObjectCover",
    "closed_top_pairing_contains_rank": "ClosedTopPairingContainsRank",
    "top_pairing_closed_language": "TopPairingClosedLanguageAtRank",
}


@dataclass(frozen=True)
class Match:
    line: int
    text: str


def find_matches(path: Path, needle: str) -> list[Match]:
    if not path.exists():
        return []
    matches: list[Match] = []
    for line_no, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if needle in line:
            matches.append(Match(line_no, line.strip()))
    return matches


def render_match_list(matches: list[Match], *, limit: int) -> list[dict[str, Any]]:
    return [
        {"line": match.line, "text": match.text}
        for match in matches[:limit]
    ]


def audit_file(path: Path, *, excerpt_limit: int) -> dict[str, Any]:
    patterns: dict[str, Any] = {}
    for name, needle in PATTERNS.items():
        matches = find_matches(path, needle)
        patterns[name] = {
            "count": len(matches),
            "examples": render_match_list(matches, limit=excerpt_limit),
        }
    return {
        "path": str(path),
        "exists": path.exists(),
        "patterns": patterns,
    }


def summarize(files: list[dict[str, Any]]) -> dict[str, Any]:
    def total(pattern: str) -> int:
        return sum(int(item["patterns"][pattern]["count"]) for item in files)

    sampled_total = (
        total("sampled_rank_index")
        + total("sampled_contains_rank")
        + total("sampled_object_membership")
        + total("classical_choose")
    )
    closed_total = (
        total("closed_top_pairing_contains_rank")
        + total("top_pairing_closed_language")
    )
    object_cover_total = total("bellman_axis_rank_object_cover")

    if sampled_total and closed_total and object_cover_total:
        decision = "sample-bound-emitter-with-closed-bridge-available"
    elif sampled_total:
        decision = "sample-bound-emitter"
    elif closed_total and object_cover_total:
        decision = "closed-language-surface-present"
    else:
        decision = "membership-surface-unclear"

    return {
        "decision": decision,
        "sampled_membership_mentions": sampled_total,
        "closed_language_mentions": closed_total,
        "object_cover_mentions": object_cover_total,
        "recommended_next_step": (
            "Replace generated SampledRankIndex/sampledContainsRank covers with "
            "a BellmanAxisRankObjectCover whose ContainsRank is "
            "ClosedTopPairingContainsRank Face.ym, and prove the covers field "
            "from TopPairingClosedLanguageAtRank rather than Classical.choose "
            "over sampled ranks."
        ),
    }


def write_markdown(path: Path, payload: dict[str, Any]) -> None:
    summary = payload["summary"]
    lines = [
        "# Bellman Membership Mode Audit",
        "",
        "This is diagnostic-only evidence.  It records whether the current",
        "Bellman generator/generated smoke surface is still sample-indexed or",
        "has moved to the semantic closed-language object-cover contract.",
        "",
        "## Summary",
        "",
        f"- decision: `{summary['decision']}`",
        f"- sampled membership mentions: `{summary['sampled_membership_mentions']}`",
        f"- closed-language mentions: `{summary['closed_language_mentions']}`",
        f"- object-cover mentions: `{summary['object_cover_mentions']}`",
        f"- recommended next step: {summary['recommended_next_step']}",
        "",
        "## Files",
        "",
    ]
    for item in payload["files"]:
        lines.append(f"### `{item['path']}`")
        lines.append("")
        lines.append(f"- exists: `{item['exists']}`")
        for name, details in item["patterns"].items():
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
        help="File to audit. May be repeated. Defaults to current Bellman emitter/smokes.",
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=Path("scripts/generated/bellman_membership_mode_audit.json"),
        help="Output JSON path.",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=Path("docs/bellman_membership_mode_audit.md"),
        help="Output Markdown path.",
    )
    parser.add_argument(
        "--excerpt-limit",
        type=int,
        default=5,
        help="Maximum example lines per pattern/file in outputs.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    files = args.files if args.files is not None else DEFAULT_FILES
    audited_files = [audit_file(path, excerpt_limit=args.excerpt_limit) for path in files]
    payload = {
        "summary": summarize(audited_files),
        "files": audited_files,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(args.markdown, payload)
    print(f"decision: {payload['summary']['decision']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
