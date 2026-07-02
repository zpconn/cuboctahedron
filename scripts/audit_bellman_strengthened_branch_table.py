#!/usr/bin/env python3
"""Audit the strengthened Bellman branch-table checkpoint.

This is diagnostic/progress tooling only.  It does not prove coverage.

The point of this report is to keep the semantic Bellman route honest: before
we grow more local Lean depth cuts, record which finite state/face branches are
ordinary graph transitions, which are discharged by semantic sockets, and
whether any audited branch remains uncovered.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_GRAPH = Path(
    "scripts/generated/"
    "nonid_margin_bellman_top_pairing_000000000_001000000_"
    "with_step_face_linear_tri_source_graph.json"
)
DEFAULT_CLOSURE = Path(
    "scripts/generated/bellman_target_pairing_closure_with_bad_face_1m.json"
)
DEFAULT_STATE150 = Path(
    "scripts/generated/bellman_state150_tppp_explicit_transition_audit.json"
)
DEFAULT_STRENGTHENED_GUARD = Path(
    "scripts/generated/"
    "bellman_top_pairing_strengthened_local_1m_smoke_lake_guard.json"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def graph_counts(payload: dict[str, Any]) -> dict[str, Any]:
    graph = payload.get("graph", {})
    counts = payload.get("counts", {})
    return {
        "states": len(graph.get("states", [])) or counts.get("states"),
        "edges": len(graph.get("edges", [])) or counts.get("edges"),
        "final_states": counts.get("final_states"),
        "matched_paths": counts.get("paths"),
        "scale": payload.get("bellman", {}).get("scale"),
        "root_bound": payload.get("bellman", {}).get("root_bound"),
        "max_margin_bound": payload.get("bellman", {}).get("max_margin_bound"),
    }


def build_payload(args: argparse.Namespace) -> dict[str, Any]:
    graph = read_json(args.graph)
    closure = read_json(args.closure)
    state150 = read_json(args.state150)
    strengthened_guard = read_json(args.strengthened_guard)

    closure_socket_ok = (
        closure.get("decision") == "closed-after-sequence-bad-face"
        and closure.get("closed_after_sequence_bad_face") is True
        and int(closure.get("missing_after_sequence_bad_face", 1)) == 0
    )
    state150_socket_ok = (
        state150.get("decision")
        == "explicit_transition_has_no_target_pairing_completions"
        and int(state150.get("total_completions", 1)) == 0
    )
    strengthened_lake_ok = strengthened_guard.get("exit_code") == 0

    sockets = [
        {
            "name": "state19/tmmp",
            "kind": "canonical-bad-face mismatch",
            "state": 19,
            "face": "tmmp",
            "source": str(args.closure),
            "accepted": closure_socket_ok,
        },
        {
            "name": "state150/tppp",
            "kind": "target-pairing completion impossibility",
            "state": 150,
            "face": "tppp",
            "source": str(args.state150),
            "accepted": state150_socket_ok,
        },
    ]

    uncovered = [
        socket["name"]
        for socket in sockets
        if not socket["accepted"]
    ]
    if not strengthened_lake_ok:
        uncovered.append("strengthened-local-lake-smoke")

    decision = (
        "finite-branch-table-report-ready-for-lean-emitter"
        if not uncovered
        else "finite-branch-table-report-has-uncovered-audited-branches"
    )

    return {
        "mode": "bellman-strengthened-branch-table-audit",
        "decision": decision,
        "graph_input": str(args.graph),
        "closure_input": str(args.closure),
        "state150_input": str(args.state150),
        "strengthened_guard_input": str(args.strengthened_guard),
        "graph": graph_counts(graph),
        "branch_table": {
            "real_graph_transition_branches": graph_counts(graph)["edges"],
            "semantic_socket_branches": len(sockets),
            "remaining_uncovered_audited_branches": len(uncovered),
            "uncovered": uncovered,
            "production_lean_table_emitted": False,
        },
        "sockets": sockets,
        "strengthened_lake_guard": {
            "passed": strengthened_lake_ok,
            "elapsed_seconds": strengthened_guard.get("elapsed_seconds"),
            "max_tree_rss_mib": strengthened_guard.get("max_tree_rss_mib"),
            "killed_reason": strengthened_guard.get("killed_reason"),
        },
        "next_step": (
            "Emit a finite Lean branch table from this classification.  The "
            "Lean table should use ordinary graph transitions for real edges "
            "and semantic socket constructors for the two accepted impossible "
            "branches; it must not introduce selected-prefix membership or "
            "one branch per rank/path."
        ),
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    graph = payload["graph"]
    table = payload["branch_table"]
    guard = payload["strengthened_lake_guard"]
    lines = [
        "# Bellman Strengthened Branch-Table Audit",
        "",
        "This is diagnostic-only evidence.  It records the finite branch",
        "categories that the next Lean emitter must turn into semantic",
        "`StrengthenedSuffixOk` constructors.",
        "",
        f"- decision: `{payload['decision']}`",
        f"- graph input: `{payload['graph_input']}`",
        "",
        "## Graph",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| states | `{graph['states']}` |",
        f"| real graph edges | `{graph['edges']}` |",
        f"| final states | `{graph['final_states']}` |",
        f"| matched paths in diagnostic window | `{graph['matched_paths']}` |",
        f"| Bellman scale | `{graph['scale']}` |",
        f"| root bound | `{graph['root_bound']}` |",
        f"| max margin bound | `{graph['max_margin_bound']}` |",
        "",
        "## Branch Categories",
        "",
        "| Category | Count |",
        "| --- | ---: |",
        f"| real graph-transition branches | `{table['real_graph_transition_branches']}` |",
        f"| semantic socket branches | `{table['semantic_socket_branches']}` |",
        f"| remaining uncovered audited branches | `{table['remaining_uncovered_audited_branches']}` |",
        "",
        "## Semantic Sockets",
        "",
        "| Socket | State | Face | Kind | Accepted |",
        "| --- | ---: | --- | --- | ---: |",
    ]
    for socket in payload["sockets"]:
        lines.append(
            f"| `{socket['name']}` | `{socket['state']}` | `{socket['face']}` | "
            f"{socket['kind']} | `{socket['accepted']}` |"
        )
    lines.extend(
        [
            "",
            "## Strengthened Smoke Guard",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
            f"| passed | `{guard['passed']}` |",
            f"| elapsed seconds | `{guard['elapsed_seconds']}` |",
            f"| peak RSS MiB | `{guard['max_tree_rss_mib']}` |",
            f"| killed reason | `{guard['killed_reason']}` |",
            "",
            "## Next Step",
            "",
            payload["next_step"],
            "",
        ]
    )
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--closure", type=Path, default=DEFAULT_CLOSURE)
    parser.add_argument("--state150", type=Path, default=DEFAULT_STATE150)
    parser.add_argument(
        "--strengthened-guard", type=Path, default=DEFAULT_STRENGTHENED_GUARD
    )
    parser.add_argument(
        "--json",
        type=Path,
        default=Path("scripts/generated/bellman_strengthened_branch_table_audit.json"),
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=Path("scripts/generated/bellman_strengthened_branch_table_audit.md"),
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    payload = build_payload(args)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, args.markdown)
    print(f"decision={payload['decision']}")
    print(f"wrote {args.json}")
    print(f"wrote {args.markdown}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
