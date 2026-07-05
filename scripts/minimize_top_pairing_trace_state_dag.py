#!/usr/bin/env python3
"""Minimize the top-pairing semantic trace state DAG.

This is diagnostic-only evidence, not Lean proof.  It reads the Lean-aligned
semantic state DAG emitted by `profile_top_pairing_trace_state_dag.py` and
quotients states by finite labeled-language behavior:

  terminal kind + sorted outgoing (face, target-class) transitions.

The goal is to estimate whether a generated Lean classifier should target the
raw semantic state graph or a smaller behavior quotient.  No output from this
script is trusted by Lean.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_INPUT = (
    ROOT / "scripts/generated/top_pairing_trace_state_dag_lean_aligned_graph.json"
)
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_trace_state_dag_minimized.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_trace_state_dag_minimized.md"


def rel(path: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(ROOT).as_posix()
    except ValueError:
        return resolved.as_posix()


def load_graph(path: Path) -> dict[str, Any]:
    data = json.loads(path.read_text())
    for key in ["states", "edges", "terminals"]:
        if key not in data:
            raise RuntimeError(f"{path} missing key {key!r}")
    return data


def minimize(data: dict[str, Any], include_details: bool = False) -> dict[str, Any]:
    states = {int(row["id"]): row for row in data["states"]}
    children: dict[int, list[tuple[str, int]]] = defaultdict(list)
    parents: dict[int, list[int]] = defaultdict(list)
    for edge in data["edges"]:
        src = int(edge["source"])
        dst = int(edge["target"])
        face = str(edge["face"])
        children[src].append((face, dst))
        parents[dst].append(src)

    terminal_kind = {int(row["state"]): str(row["kind"]) for row in data["terminals"]}
    max_step = max(int(row["step"]) for row in states.values()) if states else 0
    by_depth: dict[int, list[int]] = defaultdict(list)
    for sid, row in states.items():
        by_depth[int(row["step"])].append(sid)

    class_of: dict[int, int] = {}
    signature_to_class: dict[tuple[Any, ...], int] = {}
    class_signature: list[tuple[Any, ...]] = []

    for depth in range(max_step, -1, -1):
        for sid in sorted(by_depth.get(depth, [])):
            outgoing = tuple(
                sorted((face, class_of[dst]) for face, dst in children.get(sid, []))
            )
            kind = terminal_kind.get(sid)
            if kind is None and not outgoing:
                kind = "dead_reject"
            sig = (kind, outgoing)
            cid = signature_to_class.get(sig)
            if cid is None:
                cid = len(class_signature)
                signature_to_class[sig] = cid
                class_signature.append(sig)
            class_of[sid] = cid

    quotient_edges = {
        (class_of[src], face, class_of[dst])
        for src, outs in children.items()
        for face, dst in outs
    }
    class_members: dict[int, list[int]] = defaultdict(list)
    for sid, cid in class_of.items():
        class_members[cid].append(sid)

    class_depths: Counter[int] = Counter()
    for cid, members in class_members.items():
        class_depths[min(int(states[sid]["step"]) for sid in members)] += 1

    terminal_classes: Counter[str] = Counter()
    for cid, sig in enumerate(class_signature):
        kind = sig[0]
        if kind is not None:
            terminal_classes[str(kind)] += 1

    root_class = class_of.get(0)
    largest_classes = sorted(
        (
            {
                "class": cid,
                "size": len(members),
                "min_step": min(int(states[sid]["step"]) for sid in members),
                "max_step": max(int(states[sid]["step"]) for sid in members),
                "example_states": members[:10],
                "terminal_kind": class_signature[cid][0],
                "out_degree": len(class_signature[cid][1]),
            }
            for cid, members in class_members.items()
        ),
        key=lambda row: (-int(row["size"]), int(row["min_step"]), int(row["class"])),
    )

    raw_states = len(states)
    raw_edges = len(data["edges"])
    minimized_states = len(class_signature)
    minimized_edges = len(quotient_edges)
    report: dict[str, Any] = {
        "raw": {
            "states": raw_states,
            "edges": raw_edges,
            "terminals": len(data["terminals"]),
            "max_step": max_step,
        },
        "minimized": {
            "states": minimized_states,
            "edges": minimized_edges,
            "root_class": root_class,
            "compression_factor_states": (
                raw_states / minimized_states if minimized_states else None
            ),
            "compression_factor_edges": (
                raw_edges / minimized_edges if minimized_edges else None
            ),
            "terminal_classes": dict(sorted(terminal_classes.items())),
            "classes_by_min_depth": {
                str(depth): count for depth, count in sorted(class_depths.items())
            },
            "largest_classes": largest_classes[:20],
        },
    }
    if include_details:
        report["detail"] = {
            "state_class": {
                str(sid): cid for sid, cid in sorted(class_of.items())
            },
            "classes": [
                {
                    "id": cid,
                    "terminal_kind": class_signature[cid][0],
                    "outgoing": [
                        {"face": face, "target_class": target}
                        for face, target in class_signature[cid][1]
                    ],
                    "members": sorted(class_members[cid]),
                    "min_step": min(
                        int(states[sid]["step"]) for sid in class_members[cid]
                    ),
                    "max_step": max(
                        int(states[sid]["step"]) for sid in class_members[cid]
                    ),
                }
                for cid in range(len(class_signature))
            ],
            "edges": [
                {
                    "source_class": src,
                    "face": face,
                    "target_class": dst,
                }
                for src, face, dst in sorted(quotient_edges)
            ],
        }
    return report


def render_markdown(report: dict[str, Any], source: Path) -> str:
    raw = report["raw"]
    mini = report["minimized"]
    lines = [
        "# Top-Pairing Trace State-DAG Minimization",
        "",
        "This is exact diagnostic evidence, not Lean proof.  It quotients the",
        "Lean-aligned semantic trace state DAG by terminal behavior and outgoing",
        "face-labelled transitions.",
        "",
        f"- source: `{rel(source)}`",
        "",
        "## Counts",
        "",
        "| metric | raw | minimized |",
        "| --- | ---: | ---: |",
        f"| states | `{raw['states']}` | `{mini['states']}` |",
        f"| edges | `{raw['edges']}` | `{mini['edges']}` |",
        f"| terminal states/classes | `{raw['terminals']}` | `{sum(mini['terminal_classes'].values())}` |",
        "",
        "## Compression",
        "",
        f"- state compression factor: `{mini['compression_factor_states']:.3f}`",
        f"- edge compression factor: `{mini['compression_factor_edges']:.3f}`",
        f"- root class: `{mini['root_class']}`",
        "",
        "## Terminal Classes",
        "",
        "| kind | classes |",
        "| --- | ---: |",
    ]
    for kind, count in mini["terminal_classes"].items():
        lines.append(f"| `{kind}` | `{count}` |")
    lines.extend(
        [
            "",
            "## Classes By Minimum Depth",
            "",
            "| depth | classes |",
            "| ---: | ---: |",
        ]
    )
    for depth, count in mini["classes_by_min_depth"].items():
        lines.append(f"| `{depth}` | `{count}` |")
    lines.extend(
        [
            "",
            "## Largest Quotient Classes",
            "",
            "| class | size | min step | max step | terminal | out degree | examples |",
            "| ---: | ---: | ---: | ---: | --- | ---: | --- |",
        ]
    )
    for row in mini["largest_classes"]:
        examples = ", ".join(str(x) for x in row["example_states"])
        lines.append(
            f"| `{row['class']}` | `{row['size']}` | `{row['min_step']}` | "
            f"`{row['max_step']}` | `{row['terminal_kind']}` | "
            f"`{row['out_degree']}` | `{examples}` |"
        )
    lines.extend(
        [
            "",
            "## Decision Hint",
            "",
            "A strong quotient would reduce the graph to low thousands or hundreds",
            "of states while preserving semantic transition behavior.  If the",
            "quotient remains close to the raw graph, the state key is still too",
            "fine and this route needs a cancellation-summary or cocycle-gauge",
            "abstraction before Lean emission.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    parser.add_argument(
        "--detailed-json",
        type=Path,
        default=None,
        help="Optional diagnostic quotient graph details for future emitters.",
    )
    args = parser.parse_args()

    data = load_graph(args.input)
    report = minimize(data)
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(report, args.input) + "\n")
    if args.detailed_json is not None:
        detailed_report = minimize(data, include_details=True)
        args.detailed_json.parent.mkdir(parents=True, exist_ok=True)
        args.detailed_json.write_text(
            json.dumps(detailed_report, indent=2, sort_keys=True) + "\n"
        )
    print(f"wrote {rel(args.json)}")
    print(f"wrote {rel(args.markdown)}")
    if args.detailed_json is not None:
        print(f"wrote {rel(args.detailed_json)}")
    print(
        "raw_states={raw} minimized_states={mini} raw_edges={raw_e} "
        "minimized_edges={mini_e}".format(
            raw=report["raw"]["states"],
            mini=report["minimized"]["states"],
            raw_e=report["raw"]["edges"],
            mini_e=report["minimized"]["edges"],
        )
    )


if __name__ == "__main__":
    main()
