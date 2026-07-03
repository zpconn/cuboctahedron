#!/usr/bin/env python3
"""Audit semantic-tail branch-table emitter readiness.

This script is proof-neutral: it does not enumerate ranks and it does not run
Lean.  It checks that the current split-10M Bellman branch-table semantic
socket exposes the local theorem shape the production emitter should generate:

* tail-facing local branch classifiers;
* tail-facing suffix-step adapters;
* no sampled rank/path, selected-prefix, accepted-trace, or exact affine keys;
* a recent hard-capped Lean guard for the socket.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSemanticGateSocket.lean"
)
GUARD = ROOT / "scripts/generated/branch_table_semantic_gate_socket_guard.json"
OUT_JSON = ROOT / "scripts/generated/top_pairing_semantic_tail_branch_emitters.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_semantic_tail_branch_emitters.md"

FORBIDDEN = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
    "AcceptedTraceId",
    "GraphAcceptedTraceLabels",
    "TopPairingTraceClassifier",
    "exactAffine",
    "affineRHS",
    "solvedP0",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def load_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def theorem_names(text: str, prefix: str) -> list[str]:
    return re.findall(rf"^theorem\s+({re.escape(prefix)}[A-Za-z0-9_']*)\b", text, re.M)


def theorem_body(text: str, name: str) -> str:
    match = re.search(
        rf"^theorem\s+{re.escape(name)}\b(?P<body>.*?)(?=^theorem\s+|\Z)",
        text,
        re.M | re.S,
    )
    return match.group("body") if match else ""


def main() -> int:
    text = read_text(SOCKET)
    classifier_names = theorem_names(text, "branchTable_of_closedPrefix")
    suffix_names = theorem_names(text, "branchTableSuffixOk_closedPrefix")
    tail_classifier_names = [
        name for name in classifier_names if name.endswith("_tail")
    ]
    tail_suffix_names = [
        name for name in suffix_names if name.endswith("_tail")
    ]

    constructors = sorted(
        set(re.findall(r"StrengthenedBranchTable\.(graph_\d+_s\d+_\w+)", text))
    )
    forbidden_hits = []
    for token in FORBIDDEN:
        for lineno, line in enumerate(text.splitlines(), 1):
            if token in line:
                forbidden_hits.append(
                    {"token": token, "line": lineno, "text": line.strip()}
                )

    bodies = {name: theorem_body(text, name) for name in tail_classifier_names}
    uses_semantic_tail = {
        name: "TopPairingTransducerTail.cons" in body for name, body in bodies.items()
    }
    has_rank_prefix_terms = {
        name: bool(re.search(r"hlabels|topPairingRankFaceLabels\s+rank", body))
        for name, body in bodies.items()
    }

    guard = load_json(GUARD)
    guard_ok = bool(guard and guard.get("exit_code") == 0)

    accepted = (
        len(tail_classifier_names) >= 4
        and len(tail_suffix_names) >= 4
        and all(uses_semantic_tail.values())
        and not any(has_rank_prefix_terms.values())
        and not forbidden_hits
        and guard_ok
    )

    payload: dict[str, Any] = {
        "mode": "top-pairing-semantic-tail-branch-emitter-readiness",
        "socket": rel(SOCKET),
        "guard": rel(GUARD),
        "tail_branch_classifiers": tail_classifier_names,
        "tail_suffix_adapters": tail_suffix_names,
        "branch_constructors_used": constructors,
        "uses_semantic_tail_cons": uses_semantic_tail,
        "classifier_mentions_rank_prefix_terms": has_rank_prefix_terms,
        "forbidden_hits": forbidden_hits,
        "guard_summary": guard,
        "decision": (
            "semantic-tail-branch-emitter-shape-accepted"
            if accepted
            else "semantic-tail-branch-emitter-shape-needs-review"
        ),
        "next_target": (
            "Generate these tail-facing local branch classifiers for all "
            "reachable semantic states needed by Split10MBranchTableClosedEvalFamily.suffix; "
            "do not emit sampled-rank, selected-prefix, accepted-trace, or exact-affine "
            "membership data."
        ),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Top-Pairing Semantic Tail Branch Emitter Readiness",
        "",
        f"- Socket: `{payload['socket']}`",
        f"- Guard: `{payload['guard']}`",
        f"- Decision: `{payload['decision']}`",
        "",
        "## Tail Branch Classifiers",
        "",
    ]
    for name in tail_classifier_names:
        status = "semantic-tail" if uses_semantic_tail.get(name) else "missing-tail"
        prefix = "no-rank-prefix" if not has_rank_prefix_terms.get(name) else "rank-prefix"
        lines.append(f"- `{name}`: {status}, {prefix}")

    lines.extend(["", "## Tail Suffix Adapters", ""])
    for name in tail_suffix_names:
        lines.append(f"- `{name}`")

    lines.extend(
        [
            "",
            "## Constructors Used",
            "",
            f"- Count: `{len(constructors)}`",
        ]
    )
    for ctor in constructors:
        lines.append(f"- `{ctor}`")

    lines.extend(
        [
            "",
            "## Guard",
            "",
            f"- Exit code: `{guard.get('exit_code') if guard else 'missing'}`",
            f"- Elapsed seconds: `{guard.get('elapsed_seconds') if guard else 'missing'}`",
            f"- Peak tree RSS MiB: `{guard.get('max_tree_rss_mib') if guard else 'missing'}`",
            f"- Hard address-space MiB: `{guard.get('hard_address_space_mib') if guard else 'missing'}`",
            "",
            "## Forbidden Hits",
            "",
        ]
    )
    if forbidden_hits:
        for hit in forbidden_hits:
            lines.append(f"- `{hit['token']}` at line `{hit['line']}`: {hit['text']}")
    else:
        lines.append("- none")
    lines.extend(["", "## Next Target", "", payload["next_target"], ""])
    OUT_MD.write_text("\n".join(lines), encoding="utf-8")

    print(f"decision={payload['decision']}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0 if accepted else 1


if __name__ == "__main__":
    raise SystemExit(main())
