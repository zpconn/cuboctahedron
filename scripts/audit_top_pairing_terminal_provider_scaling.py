#!/usr/bin/env python3
"""Audit the scaling boundary for the terminal-direct provider route.

This is diagnostic bookkeeping, not proof.  It records what the newly checked
selected-prefix terminal-direct bridge proves, what its bounded source covers,
and what a production provider must still supply before this route can count as
generated coverage for the intended top-pairing residual language.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_terminal_provider_scaling.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_terminal_provider_scaling.md"

FORBIDDEN_RE = re.compile(
    r"SampledRankIndex|sampledContainsRank|sampledRankOf|sampledSmokeNext|"
    r"sampledObject|sorry|admit|axiom|native_decide|unsafe|Float|Float32|"
    r"Float64|Double"
)

LEAN_FILES = [
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingSelectedPrefixTerminalDirectBridge.lean",
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalDirectSequenceSocket.lean",
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingStateDAGSelectedPrefixCover/All.lean",
]


def load_json(rel: str) -> dict[str, Any]:
    with (ROOT / rel).open() as f:
        return json.load(f)


def stat_file(rel: str) -> dict[str, Any]:
    path = ROOT / rel
    text = path.read_text()
    return {
        "path": rel,
        "bytes": path.stat().st_size,
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
    }


def forbidden_hits(rel: str) -> list[str]:
    path = ROOT / rel
    hits: list[str] = []
    for idx, line in enumerate(path.read_text().splitlines(), start=1):
        if FORBIDDEN_RE.search(line):
            hits.append(f"{rel}:{idx}:{line.strip()}")
    return hits


def render_md(payload: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Terminal Provider Scaling Audit",
        "",
        "This is diagnostic evidence, not proof.  It records the current",
        "scaling boundary for the terminal-direct provider route after the",
        "selected-prefix provider bridge was Lean-checked.",
        "",
        f"- decision: `{payload['decision']}`",
        f"- current provider source: `{payload['current_provider_source']}`",
        f"- selected-prefix buckets: `{payload['selected_prefix_cover']['bucket_count']}`",
        f"- selected-prefix groups: `{payload['selected_prefix_cover']['group_count']}`",
        f"- accepted trace ids covered by selected-prefix source: `{payload['selected_prefix_cover']['accepted_trace_count']}`",
        f"- closed-language candidates in exact graph audit: `{payload['closed_graph_audit']['closed_candidates']}`",
        f"- graph accepted in exact graph audit: `{payload['closed_graph_audit']['accepted']}`",
        f"- graph rejected in exact graph audit: `{payload['closed_graph_audit']['rejected']}`",
        "",
        "## Checked Bounded Provider",
        "",
        "The selected-prefix source now feeds the terminal-direct provider:",
        "",
        "```lean",
        "theorem terminalDirectClosedFamily_of_selectedPrefixCoverFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :",
        "    TerminalDirectClosedFamily rank",
        "",
        "theorem nonIdentityRankKilled_of_selectedPrefixCoverFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :",
        "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank",
        "```",
        "",
        "Guarded check:",
        "",
        f"- exit: `{payload['guard']['exit_code']}`",
        f"- elapsed seconds: `{payload['guard']['elapsed_seconds']}`",
        f"- peak RSS MiB: `{payload['guard']['max_tree_rss_mib']}`",
        f"- hard address-space MiB: `{payload['guard']['hard_address_space_mib']}`",
        f"- killed reason: `{payload['guard']['killed_reason']}`",
        "",
        "## Source Size",
        "",
        "| file | lines | bytes |",
        "| --- | ---: | ---: |",
    ]
    for row in payload["lean_file_stats"]:
        lines.append(f"| `{row['path']}` | `{row['lines']}` | `{row['bytes']}` |")
    lines.extend(
        [
            "",
            "## Forbidden Token Scan",
            "",
            f"- scanned files: `{len(payload['lean_file_stats'])}`",
            f"- forbidden hits: `{payload['forbidden_hit_count']}`",
            "",
        ]
    )
    if payload["forbidden_hits"]:
        lines.extend(["```text", *payload["forbidden_hits"], "```", ""])
    else:
        lines.append("No forbidden tokens were found in the scanned files.")
        lines.append("")
    lines.extend(
        [
            "## Scaling Boundary",
            "",
            "The current selected-prefix source is accepted as a theorem-surface",
            "smoke, but it is not full generated coverage.  Its source is the",
            "37 graph-accepted trace-id cover; it should not be treated as a",
            "rank-exhaustive residual provider.",
            "",
            "A production provider must prove a semantic family predicate that",
            "supplies these four fields for every rank in the intended",
            "top-pairing residual family:",
            "",
            "```lean",
            "TopPairingClosedLanguageAtRank rank Face.ym",
            "TopPairingActualFaceOmniAtRank rank",
            "AcceptedSequenceBadFaceAtRank rank Face.ym",
            "TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels",
            "  (topPairingRankFaceLabels rank)",
            "```",
            "",
            "It does not need to expose Bellman margin data for the direct",
            "terminal route.  It must also avoid sampled rank/path objects,",
            "exact affine-RHS keys, and branch-per-rank generated proofs.",
            "",
            "## Next Gate",
            "",
            "- Implement a profiler/generator that groups the intended residual",
            "  ranks by semantic terminal/provider state, not by selected trace id",
            "  alone.",
            "- Emit a bounded representative provider leaf whose public theorem is",
            "  `TerminalDirectClosedFamily rank` for a semantic family predicate.",
            "- Guard-check that representative leaf and record RSS/time/source size.",
            "- Continue only if projected full provider families stay in the",
            "  low-thousands range and representative checks remain within the",
            "  hardware budget.  Otherwise pivot to the cancellation-tree summary",
            "  automaton described in `SYMMETRY_PLAN.md`.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    closed = load_json(
        "scripts/generated/top_pairing_closed_graph_acceptance_lean_aligned.json"
    )
    selected = load_json(
        "scripts/generated/top_pairing_state_dag_selected_prefix_cover.json"
    )
    guard = load_json(
        "scripts/generated/top_pairing_selected_prefix_terminal_direct_bridge_guard.json"
    )

    hits = [hit for rel in LEAN_FILES for hit in forbidden_hits(rel)]
    stats = closed.get("stats", {})
    payload: dict[str, Any] = {
        "decision": "bounded-provider-surface-accepted-full-provider-not-yet-proved",
        "current_provider_source": "SelectedPrefixCoverFamily scaledMargin rank",
        "closed_graph_audit": {
            "decision": closed.get("decision"),
            "closed_candidates": stats.get("closed_candidates"),
            "accepted": stats.get("accepted"),
            "rejected": stats.get("rejected"),
            "prefix_graph_rejects": stats.get("prefix_graph_rejects"),
        },
        "selected_prefix_cover": {
            "bucket_count": selected.get("bucket_count"),
            "group_count": selected.get("group_count"),
            "accepted_trace_count": selected.get("accepted_trace_count"),
            "root_lean_file": selected.get("root_lean_file"),
        },
        "guard": {
            "exit_code": guard.get("exit_code"),
            "elapsed_seconds": guard.get("elapsed_seconds"),
            "max_tree_rss_mib": guard.get("max_tree_rss_mib"),
            "hard_address_space_mib": guard.get("hard_address_space_mib"),
            "killed_reason": guard.get("killed_reason"),
        },
        "lean_file_stats": [stat_file(rel) for rel in LEAN_FILES],
        "forbidden_hit_count": len(hits),
        "forbidden_hits": hits,
        "next_required_artifact": (
            "representative full-provider semantic leaf for TerminalDirectClosedFamily"
        ),
    }

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_md(payload))
    print(f"wrote {args.json.relative_to(ROOT)}")
    print(f"wrote {args.markdown.relative_to(ROOT)}")
    print(payload["decision"])


if __name__ == "__main__":
    main()
