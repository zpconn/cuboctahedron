#!/usr/bin/env python3
"""Audit the graph-only suffix emitter target for top-pairing Bellman.

This is diagnostic/progress tooling only.  It does not prove coverage.

The accepted Lean surface can now convert a `GraphBranchTableSuffixOk` object
into the heavier semantic `BranchTableSuffixOk` object.  The next production
emitter should therefore produce graph-indexed suffix evidence directly,
instead of routing through the old full `faceEvalNext` bridge.

This audit records the small finite graph frontier immediately after the
Lean-proved `xm, ym` root prefix.  It parses generated Lean tables and checks
that:

* the three closed-language third-face branches from graph state 143 are
  present in the strengthened branch table;
* each such branch has a corresponding `graphSmokeNext` transition;
* the next graph states also have graph-table branches backed by
  `graphSmokeNext`.

It deliberately does not enumerate ranks, sampled paths, selected prefixes, or
exact affine RHS keys.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke/Base.lean"
)
BRANCH_TABLE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTable1MSmoke.lean"
)
OUT_JSON = ROOT / "scripts/generated/top_pairing_graph_suffix_emitter_target.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_graph_suffix_emitter_target.md"

THIRD_FACE_STATE = 143
THIRD_FACES = ["tmpm", "yp", "zm"]
ROOT_PREFIX = ["xm", "ym"]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def parse_label_of_face(base_text: str) -> dict[str, int]:
    pattern = re.compile(r"\|\s+Face\.(\w+)\s+=>\s+\((\d+)\s+:\s+SmokeLabel\)")
    return {face: int(label) for face, label in pattern.findall(base_text)}


def parse_graph_next(base_text: str) -> dict[int, dict[int, dict[str, int]]]:
    headers = list(re.finditer(r"def graphSmokeNext_s(\d{4})", base_text))
    result: dict[int, dict[int, dict[str, int]]] = {}
    for idx, header in enumerate(headers):
        state = int(header.group(1))
        start = header.end()
        end = headers[idx + 1].start() if idx + 1 < len(headers) else len(base_text)
        block = base_text[start:end]
        transitions: dict[int, dict[str, int]] = {}
        for label, dst, gain in re.findall(
            r"\|\s+(\d+)\s+=>\s+some\s+\(\((\d+)\s+:\s+State\),\s+\((-?\d+)\s+:\s+Int\)\)",
            block,
        ):
            transitions[int(label)] = {"dst": int(dst), "gain": int(gain)}
        result[state] = transitions
    return result


def parse_branch_table(table_text: str) -> dict[int, dict[str, str]]:
    pattern = re.compile(
        r"\|\s+(graph_\d+_s\d{4}_(\w+))\s*:\s+"
        r"StrengthenedBranchTable\s+\((\d+)\s+:\s+State\)\s+"
        r"Face\.(\w+)\s+BranchKind\.graph"
    )
    table: dict[int, dict[str, str]] = {}
    for ctor, suffix_face, state, face in pattern.findall(table_text):
        if suffix_face != face:
            raise ValueError(f"constructor face mismatch: {ctor} vs Face.{face}")
        table.setdefault(int(state), {})[face] = ctor
    return table


def branch_records(
    *,
    state: int,
    faces: list[str],
    label_of_face: dict[str, int],
    graph_next: dict[int, dict[int, dict[str, int]]],
    branch_table: dict[int, dict[str, str]],
) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for face in faces:
        label = label_of_face.get(face)
        transition = graph_next.get(state, {}).get(label) if label is not None else None
        records.append(
            {
                "state": state,
                "face": face,
                "label": label,
                "branch_ctor": branch_table.get(state, {}).get(face),
                "graph_next": transition,
                "ok": label is not None
                and face in branch_table.get(state, {})
                and transition is not None,
            }
        )
    return records


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Graph-Suffix Emitter Target",
        "",
        "This is diagnostic-only evidence for the next Bellman membership emitter.",
        "It records the graph-indexed target after the Lean-proved `xm, ym`",
        "root prefix, without enumerating ranks, paths, or selected prefixes.",
        "",
        f"- decision: `{report['decision']}`",
        f"- root prefix: `{', '.join(report['root_prefix'])}`",
        f"- third-face graph state: `{report['third_face_state']}`",
        "",
        "## Third-Face Branches",
        "",
        "| state | face | label | graph next | branch ctor | ok |",
        "| ---: | --- | ---: | --- | --- | ---: |",
    ]
    for rec in report["third_face_records"]:
        nxt = rec["graph_next"]
        nxt_text = "missing" if nxt is None else f"{nxt['dst']} / gain {nxt['gain']}"
        lines.append(
            "| `{}` | `Face.{}` | `{}` | `{}` | `{}` | `{}` |".format(
                rec["state"],
                rec["face"],
                rec["label"],
                nxt_text,
                rec["branch_ctor"] or "missing",
                rec["ok"],
            )
        )

    lines.extend(
        [
            "",
            "## Successor Frontier",
            "",
            "| state | face | label | graph next | branch ctor | ok |",
            "| ---: | --- | ---: | --- | --- | ---: |",
        ]
    )
    for rec in report["successor_records"]:
        nxt = rec["graph_next"]
        nxt_text = "missing" if nxt is None else f"{nxt['dst']} / gain {nxt['gain']}"
        lines.append(
            "| `{}` | `Face.{}` | `{}` | `{}` | `{}` | `{}` |".format(
                rec["state"],
                rec["face"],
                rec["label"],
                nxt_text,
                rec["branch_ctor"] or "missing",
                rec["ok"],
            )
        )

    lines.extend(
        [
            "",
            "## Emitter Contract",
            "",
            "The next generated Lean object should produce:",
            "",
            "```lean",
            "GraphBranchTableSuffixOk rank graph rest",
            "```",
            "",
            "directly from semantic closed-language/cursor state. It should not call",
            "`closed_prefix3_tmpm_branch_faceEval` or any other full semantic",
            "`faceEvalNext` bridge to recover graph membership.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    base_text = read(BASE)
    table_text = read(BRANCH_TABLE)

    label_of_face = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    branch_table = parse_branch_table(table_text)

    third_face_records = branch_records(
        state=THIRD_FACE_STATE,
        faces=THIRD_FACES,
        label_of_face=label_of_face,
        graph_next=graph_next,
        branch_table=branch_table,
    )
    successor_states = sorted(
        {
            rec["graph_next"]["dst"]
            for rec in third_face_records
            if rec["graph_next"] is not None
        }
    )
    successor_records: list[dict[str, Any]] = []
    for state in successor_states:
        faces = sorted(branch_table.get(state, {}))
        successor_records.extend(
            branch_records(
                state=state,
                faces=faces,
                label_of_face=label_of_face,
                graph_next=graph_next,
                branch_table=branch_table,
            )
        )

    all_records = third_face_records + successor_records
    decision = (
        "graph-suffix-emitter-target-ready"
        if all(rec["ok"] for rec in all_records)
        else "graph-suffix-emitter-target-needs-review"
    )
    report = {
        "mode": "top-pairing-graph-suffix-emitter-target",
        "decision": decision,
        "root_prefix": ROOT_PREFIX,
        "third_face_state": THIRD_FACE_STATE,
        "third_faces": THIRD_FACES,
        "third_face_records": third_face_records,
        "successor_states": successor_states,
        "successor_records": successor_records,
        "source_files": {
            "base": rel(BASE),
            "branch_table": rel(BRANCH_TABLE),
        },
        "next_lean_target": "GraphBranchTableSuffixOk rank graph rest",
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    OUT_MD.write_text(render_markdown(report) + "\n", encoding="utf-8")

    print(f"decision={decision}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0 if decision.endswith("ready") else 1


if __name__ == "__main__":
    raise SystemExit(main())
