#!/usr/bin/env python3
"""Audit Bellman graph-family alignment for the top-pairing sockets.

This is diagnostic/progress tooling only.  It prevents an easy mistake in the
current Bellman pivot: composing suffix evidence generated for one finite graph
with margin/eval evidence generated for another finite graph.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_bellman_graph_family_alignment.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_bellman_graph_family_alignment.md"

GRAPH_1M_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke/Base.lean"
)
GRAPH_10M_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)

CONSUMERS = {
    "branch_suffix": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSuffix1MSmoke.lean",
    "graph_accepted_branch_suffix": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke.lean",
    "graph_accepted_eval_gate": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean",
    "closed_eval_gate": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingClosedEvalGate.lean",
}

GRAPH_MODULES = {
    "1m_face_linear_tri_source": (
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke"
    ),
    "split_10m": (
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingGraphEvalSplit10MSmoke"
    ),
}


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def parse_state_count(path: Path) -> int:
    text = read(path)
    match = re.search(r"abbrev stateCount : Nat := (\d+)", text)
    if not match:
        raise RuntimeError(f"missing stateCount in {rel(path)}")
    return int(match.group(1))


def imports_for(path: Path) -> list[str]:
    text = read(path)
    hits: list[str] = []
    for name, module_prefix in GRAPH_MODULES.items():
        if module_prefix in text:
            hits.append(name)
    return hits


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Bellman Graph-Family Alignment",
        "",
        "This audit is diagnostic-only.  It records which finite Bellman graph",
        "family each current top-pairing socket imports, so incompatible graph",
        "proofs are not accidentally composed.",
        "",
        f"- decision: `{report['decision']}`",
        "",
        "## Graph Families",
        "",
        "| family | state count | base |",
        "| --- | ---: | --- |",
    ]
    for name, family in report["families"].items():
        lines.append(
            f"| `{name}` | `{family['state_count']}` | `{family['base']}` |"
        )

    lines.extend(
        [
            "",
            "## Consumers",
            "",
            "| consumer | graph families imported | file |",
            "| --- | --- | --- |",
        ]
    )
    for name, consumer in report["consumers"].items():
        imports = ", ".join(f"`{item}`" for item in consumer["imports"]) or "none"
        lines.append(f"| `{name}` | {imports} | `{consumer['file']}` |")

    lines.extend(
        [
            "",
            "## Consequence",
            "",
            "The current branch-suffix sockets are over the 1M face-linear-tri-source",
            "graph, while the accepted eval/margin gates are over the split-10M graph.",
            "Do not directly compose those theorem surfaces.  The next Bellman",
            "membership slice must choose one graph family and regenerate the",
            "other socket against it.",
            "",
            "Preferred next options:",
            "",
            "1. regenerate the strengthened branch table / graph-accepted full",
            "   suffix socket for the split-10M graph; or",
            "2. regenerate the accepted eval/margin gate for the 1M graph.",
            "",
            "The split-10M graph is the more production-relevant candidate because",
            "it is the one currently used by the accepted margin/eval gates.",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    families = {
        "1m_face_linear_tri_source": {
            "base": rel(GRAPH_1M_BASE),
            "state_count": parse_state_count(GRAPH_1M_BASE),
        },
        "split_10m": {
            "base": rel(GRAPH_10M_BASE),
            "state_count": parse_state_count(GRAPH_10M_BASE),
        },
    }
    consumers = {
        name: {"file": rel(path), "imports": imports_for(path)}
        for name, path in CONSUMERS.items()
    }

    suffix_families = set(consumers["graph_accepted_branch_suffix"]["imports"])
    eval_families = set(consumers["graph_accepted_eval_gate"]["imports"])
    aligned = bool(suffix_families & eval_families)
    decision = (
        "graph-families-aligned"
        if aligned
        else "graph-families-not-aligned-for-direct-eval-adapter"
    )

    report = {
        "mode": "top-pairing-bellman-graph-family-alignment",
        "decision": decision,
        "families": families,
        "consumers": consumers,
    }
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    OUT_MD.write_text(render_markdown(report) + "\n", encoding="utf-8")
    print(f"decision={decision}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
