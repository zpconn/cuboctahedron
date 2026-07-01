#!/usr/bin/env python3
"""Audit the Bellman graph/terminal split boundary.

This is a lightweight source-level guard for generated smoke/production shards.
It is not proof evidence.  Its job is to catch accidental architecture
regressions before a large Lean build: graph shards should expose semantic
object-level Bellman theorem surfaces, while terminal shards should own local
terminal contradiction payloads and export killed predicates.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


GRAPH_REQUIRED = [
    "inductive SampledRankIndex",
    "def sampledRankOf",
    "def sampledContainsRank",
    "def sampledScaledMarginAtRank",
    "def sampledObjectAccepts",
    "theorem graphSmoke_sampled_axis_object_eval_scaled_margin_nonpos_at_object",
    "theorem graphSmoke_sampled_axis_object_cover_eval_covers",
]

GRAPH_FORBIDDEN = [
    "PositiveCertSeq",
    "PositiveCert : NonIdCert",
    "PositiveCert.p0",
    "xpStartInterior_margin_positive",
    "ObjectStartViolationMarginCert",
    "sampledObjectStartViolationCert",
    "graphSmoke_sampled_axis_rank_killed",
]

TERMINAL_REQUIRED = [
    "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke",
    "ObjectStartViolationMarginCert",
    "private def sampledObjectStartViolationCert",
    "theorem graphSmoke_sampled_axis_rank_killed",
]

TERMINAL_FORBIDDEN = [
    "private def graphPotential",
    "private def sampledSmokeNext",
    "structure SmokeStepEval",
    "private def sampledAxisRankObjectCoverEval",
    "BellmanAxisRankObjectCover where",
]


def line_count(text: str) -> int:
    return len(text.splitlines())


def find_missing(text: str, needles: list[str]) -> list[str]:
    return [needle for needle in needles if needle not in text]


def find_present(text: str, needles: list[str]) -> list[str]:
    return [needle for needle in needles if needle in text]


def audit(graph_path: Path, terminal_path: Path) -> dict[str, Any]:
    graph = graph_path.read_text(encoding="utf-8")
    terminal = terminal_path.read_text(encoding="utf-8")

    graph_missing = find_missing(graph, GRAPH_REQUIRED)
    graph_forbidden_present = find_present(graph, GRAPH_FORBIDDEN)
    terminal_missing = find_missing(terminal, TERMINAL_REQUIRED)
    terminal_forbidden_present = find_present(terminal, TERMINAL_FORBIDDEN)

    graph_positive_mentions = graph.count("PositiveCert")
    terminal_positive_payloads = terminal.count("PositiveCert : NonIdCert")

    passed = not (
        graph_missing
        or graph_forbidden_present
        or terminal_missing
        or terminal_forbidden_present
        or graph_positive_mentions
        or terminal_positive_payloads == 0
    )

    return {
        "graph_path": str(graph_path),
        "terminal_path": str(terminal_path),
        "graph_lines": line_count(graph),
        "terminal_lines": line_count(terminal),
        "graph_required_missing": graph_missing,
        "graph_forbidden_present": graph_forbidden_present,
        "terminal_required_missing": terminal_missing,
        "terminal_forbidden_present": terminal_forbidden_present,
        "graph_positive_mentions": graph_positive_mentions,
        "terminal_positive_payloads": terminal_positive_payloads,
        "decision": {
            "status": "passed" if passed else "failed",
            "notes": [
                "Graph shards should expose object-level Bellman surfaces only.",
                "Terminal shards should own local start-violation payloads.",
                "This audit is a source-level engineering guard, not proof evidence.",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Bellman Split Boundary Audit",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Graph file: `{payload['graph_path']}`",
        f"- Terminal file: `{payload['terminal_path']}`",
        f"- Graph lines: `{payload['graph_lines']}`",
        f"- Terminal lines: `{payload['terminal_lines']}`",
        f"- Graph `PositiveCert` mentions: `{payload['graph_positive_mentions']}`",
        f"- Terminal `NonIdCert` payloads: `{payload['terminal_positive_payloads']}`",
        "",
        "## Boundary Checks",
        "",
        "| check | count | entries |",
        "| --- | ---: | --- |",
    ]
    for key in [
        "graph_required_missing",
        "graph_forbidden_present",
        "terminal_required_missing",
        "terminal_forbidden_present",
    ]:
        entries = payload[key]
        rendered = ", ".join(f"`{entry}`" for entry in entries) if entries else "-"
        lines.append(f"| `{key}` | `{len(entries)}` | {rendered} |")
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", type=Path, required=True)
    parser.add_argument("--terminal", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    payload = audit(args.graph, args.terminal)
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "graph_lines": payload["graph_lines"],
        "terminal_lines": payload["terminal_lines"],
        "graph_positive_mentions": payload["graph_positive_mentions"],
        "terminal_positive_payloads": payload["terminal_positive_payloads"],
    }, sort_keys=True))
    if payload["decision"]["status"] != "passed":
        raise SystemExit(1)


if __name__ == "__main__":
    main()
