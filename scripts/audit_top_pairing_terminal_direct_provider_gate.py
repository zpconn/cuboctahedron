#!/usr/bin/env python3
"""Summarize the terminal-direct semantic provider gate.

This audit is diagnostic bookkeeping, not proof.  It records the current
Lean-checked consumer surfaces, exact closed-language diagnostics, and guarded
build measurements for the top-pairing terminal/direct route.  Its purpose is
to keep the symmetry plan honest about the next production obligation:
generate/prove a compact semantic provider for `TerminalDirectClosedFamily`,
not another sampled Bellman object or bare closed-language evaluator theorem.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_terminal_direct_provider_gate.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_terminal_direct_provider_gate.md"

FORBIDDEN_RE = re.compile(
    r"SampledRankIndex|sampledContainsRank|sampledRankOf|sampledSmokeNext|"
    r"sampledObject|sorry|admit|axiom|native_decide|unsafe|Float|Float32|"
    r"Float64|Double"
)

RELEVANT_LEAN_FILES = [
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalDirectSequenceSocket.lean",
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalProducerCoverageBridge.lean",
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingTerminalProducerRootSmoke.lean",
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingSelectedPrefixAcceptedPrefixEvalBridge.lean",
]

GUARD_FILES = {
    "terminal_direct_sequence_socket": (
        "scripts/generated/top_pairing_terminal_direct_sequence_socket_guard.json"
    ),
    "terminal_producer_coverage_bridge": (
        "scripts/generated/top_pairing_terminal_producer_coverage_bridge_guard.json"
    ),
    "terminal_producer_root": (
        "scripts/generated/top_pairing_terminal_producer_root_smoke_guard.json"
    ),
    "selected_prefix_cover_to_accepted_eval": (
        "scripts/generated/"
        "top_pairing_selected_prefix_cover_accepted_prefix_eval_bridge_direct_guard.json"
    ),
}


def load_json(rel: str) -> dict[str, Any]:
    with (ROOT / rel).open() as f:
        return json.load(f)


def forbidden_hits(path: Path) -> list[str]:
    hits: list[str] = []
    for idx, line in enumerate(path.read_text().splitlines(), start=1):
        if FORBIDDEN_RE.search(line):
            hits.append(f"{path.relative_to(ROOT)}:{idx}:{line.strip()}")
    return hits


def guard_summary(rel: str) -> dict[str, Any]:
    data = load_json(rel)
    return {
        "path": rel,
        "exit_code": data.get("exit_code"),
        "elapsed_seconds": data.get("elapsed_seconds"),
        "max_tree_rss_mib": data.get("max_tree_rss_mib"),
        "hard_address_space_mib": data.get("hard_address_space_mib"),
        "min_available_seen_mib": data.get("min_available_seen_mib"),
        "killed_reason": data.get("killed_reason"),
    }


def closed_count(closed: dict[str, Any], key: str) -> Any:
    for container_name in ("summary", "stats"):
        container = closed.get(container_name, {})
        if key in container:
            return container[key]
    return closed.get(key)


def render_md(payload: dict[str, Any]) -> str:
    guards = payload["guarded_checks"]
    lean_files = payload["lean_files"]
    lines = [
        "# Top-Pairing Terminal-Direct Provider Gate",
        "",
        "This is diagnostic evidence, not proof.  It summarizes the current",
        "Lean-checked terminal/direct consumer route and the remaining semantic",
        "provider obligation for the top-pairing residual family.",
        "",
        f"- decision: `{payload['decision']}`",
        f"- closed-language audit decision: `{payload['closed_language']['decision']}`",
        f"- closed candidates: `{payload['closed_language']['closed_candidates']}`",
        f"- graph accepted: `{payload['closed_language']['accepted']}`",
        f"- graph rejected: `{payload['closed_language']['rejected']}`",
        f"- accepted trace classifier count: `{payload['accepted_trace_classifier']['accepted_trace_count']}`",
        f"- selected-prefix buckets: `{payload['selected_prefix_cover']['bucket_count']}`",
        f"- selected-prefix groups: `{payload['selected_prefix_cover']['group_count']}`",
        "",
        "## Lean Consumer Surface",
        "",
        "Accepted consumer theorem:",
        "",
        "```lean",
        "theorem nonIdentityRankKilled_of_terminalDirectClosedFamily",
        "    {rank : Fin numPairWords}",
        "    (h : TerminalDirectClosedFamily rank) :",
        "    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank",
        "```",
        "",
        "The strengthened semantic provider target is:",
        "",
        "```lean",
        "TerminalDirectClosedFamily rank",
        "```",
        "",
        "which packages closed top-pairing language, actual-face omnihedral",
        "usage, accepted sequence/bad-face classification, and terminal trace",
        "classifier membership.",
        "",
        "## Guarded Lean Checks",
        "",
    ]
    for name, guard in guards.items():
        lines.extend(
            [
                f"### {name}",
                "",
                f"- exit: `{guard['exit_code']}`",
                f"- elapsed seconds: `{guard['elapsed_seconds']}`",
                f"- peak RSS MiB: `{guard['max_tree_rss_mib']}`",
                f"- hard address-space MiB: `{guard['hard_address_space_mib']}`",
                f"- min available MiB: `{guard['min_available_seen_mib']}`",
                f"- killed reason: `{guard['killed_reason']}`",
                "",
            ]
        )
    lines.extend(
        [
            "## Forbidden Token Scan",
            "",
            f"- scanned Lean files: `{len(lean_files)}`",
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
            "## Gate Interpretation",
            "",
            "- Do not pursue a bare",
            "  `TopPairingClosedLanguageAtRank -> AcceptedPrefix13EvalFamily`",
            "  theorem: the exact closed-language audit has already rejected that",
            "  coordinate.",
            "- Continue through a strengthened semantic provider that proves",
            "  `TerminalDirectClosedFamily rank` or an equivalent",
            "  `TopPairingStrengthenedClosedLanguageAtRank` predicate.",
            "- The next generated theorem should cover the intended residual",
            "  family by semantic terminal/state fields.  It must not introduce",
            "  sampled rank/path objects, exact affine-RHS keys, or a broad",
            "  Boolean checker.",
        ]
    )
    return "\n".join(lines) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    closed = load_json("scripts/generated/top_pairing_closed_graph_acceptance_lean_aligned.json")
    accepted_classifier = load_json(
        "scripts/generated/top_pairing_accepted_trace_classifier_summary.json"
    )
    selected_cover = load_json(
        "scripts/generated/top_pairing_state_dag_selected_prefix_cover.json"
    )
    guards = {name: guard_summary(path) for name, path in GUARD_FILES.items()}

    hits: list[str] = []
    for rel in RELEVANT_LEAN_FILES:
        hits.extend(forbidden_hits(ROOT / rel))

    payload: dict[str, Any] = {
        "decision": "continue-strengthened-terminal-provider",
        "closed_language": {
            "decision": closed.get("decision"),
            "closed_candidates": closed_count(closed, "closed_candidates"),
            "accepted": closed_count(closed, "accepted"),
            "rejected": closed_count(closed, "rejected"),
            "prefix_graph_rejects": closed_count(closed, "prefix_graph_rejects"),
        },
        "accepted_trace_classifier": {
            "accepted_trace_count": accepted_classifier.get("accepted_trace_count"),
            "rejected_trace_count": accepted_classifier.get("rejected_trace_count"),
            "sampled_rank_or_path_data": accepted_classifier.get(
                "sampled_rank_or_path_data"
            ),
            "proof_shape": accepted_classifier.get("proof_shape"),
        },
        "selected_prefix_cover": {
            "accepted_trace_count": selected_cover.get("accepted_trace_count"),
            "bucket_count": selected_cover.get("bucket_count"),
            "group_count": selected_cover.get("group_count"),
            "root_lean_file": selected_cover.get("root_lean_file"),
        },
        "guarded_checks": guards,
        "lean_files": RELEVANT_LEAN_FILES,
        "forbidden_hit_count": len(hits),
        "forbidden_hits": hits,
        "next_required_theorem": (
            "semantic provider for TerminalDirectClosedFamily rank over the "
            "intended top-pairing residual family"
        ),
    }

    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_md(payload))
    print(f"wrote {args.json.relative_to(ROOT)}")
    print(f"wrote {args.markdown.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
