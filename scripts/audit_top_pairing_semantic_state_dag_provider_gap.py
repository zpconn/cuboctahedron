#!/usr/bin/env python3
"""Audit the semantic state-DAG provider gap for top-pairing Bellman.

This script is diagnostic tooling only.  It does not prove coverage and it does
not enumerate ranks.  It compares the current split-10M graph-accepted traces
against the minimized semantic trace DAG so the next emitter can target
semantic suffix producers instead of sampled prefix/path covers.

The useful production coordinate is not only a minimized semantic class.  The
current graph suffix theorem is graph-state-indexed, so a provider class must
also account for the Bellman graph state at the same suffix boundary.
"""

from __future__ import annotations

import argparse
import json
import re
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

EVAL_GATE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
SPLIT_BASE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)
SEMANTIC_GRAPH = (
    ROOT / "scripts/generated/top_pairing_trace_state_dag_lean_aligned_graph.json"
)
MINIMIZED_DETAIL = (
    ROOT / "scripts/generated/top_pairing_trace_state_dag_minimized_detailed.json"
)
OUT_JSON = (
    ROOT / "scripts/generated/top_pairing_semantic_state_dag_provider_gap.json"
)
OUT_MD = ROOT / "scripts/generated/top_pairing_semantic_state_dag_provider_gap.md"

KNOWN_CLASS034 = {
    "semantic_class": 34,
    "graph_state": 197,
    "suffix": ["zm", "zp", "xp"],
}


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def parse_accepted_traces(text: str) -> list[dict[str, Any]]:
    traces: list[dict[str, Any]] = []
    for trace_id, body in re.findall(
        r"def acceptedFaceTrace_(\d{3}) : List Face :=\n  \[(.*?)\]",
        text,
        flags=re.S,
    ):
        traces.append(
            {
                "trace": int(trace_id),
                "faces": re.findall(r"Face\.(\w+)", body),
            }
        )
    traces.sort(key=lambda row: int(row["trace"]))
    return traces


def parse_label_of_face(base_text: str) -> dict[str, int]:
    return {
        face: int(label)
        for face, label in re.findall(
            r"\|\s+Face\.(\w+)\s+=>\s+\((\d+)\s+:\s+SmokeLabel\)",
            base_text,
        )
    }


def parse_graph_next(base_text: str) -> dict[tuple[int, int], tuple[int, int]]:
    result: dict[tuple[int, int], tuple[int, int]] = {}
    for match in re.finditer(
        r"def graphSmokeNext_s(\d{4}) : SmokeLabel -> Option \(State × Int\)\n"
        r"(?P<body>(?:  \| .+\n)+)",
        base_text,
    ):
        state = int(match.group(1))
        for label, next_state, gain in re.findall(
            r"\|\s+(\d+)\s+=>\s+some\s+\(\((\d+)\s+:\s+State\),\s+\((-?\d+)\s+:\s+Int\)\)",
            match.group("body"),
        ):
            result[(state, int(label))] = (int(next_state), int(gain))
    return result


def semantic_edges(data: dict[str, Any]) -> dict[tuple[int, str], int]:
    result: dict[tuple[int, str], int] = {}
    duplicates: list[dict[str, Any]] = []
    for edge in data["edges"]:
        key = (int(edge["source"]), str(edge["face"]))
        dst = int(edge["target"])
        found = result.get(key)
        if found is not None and found != dst:
            duplicates.append({"source": key[0], "face": key[1], "targets": [found, dst]})
        result[key] = dst
    if duplicates:
        raise RuntimeError(f"semantic graph is not deterministic: {duplicates[:3]}")
    return result


def follow_trace(
    *,
    trace: dict[str, Any],
    sem_next: dict[tuple[int, str], int],
    graph_next: dict[tuple[int, int], tuple[int, int]],
    label_of_face: dict[str, int],
    state_class: dict[int, int],
) -> dict[str, Any]:
    sem_state = 0
    graph_state = 0
    total_gain = 0
    semantic_states = [sem_state]
    graph_states = [graph_state]
    cumulative_gains = [total_gain]
    for face in trace["faces"]:
        sem_key = (sem_state, face)
        if sem_key not in sem_next:
            raise RuntimeError(
                f"trace {trace['trace']:03d} missing semantic edge {sem_key}"
            )
        sem_state = sem_next[sem_key]
        label = label_of_face[face]
        graph_step = graph_next.get((graph_state, label))
        if graph_step is None:
            raise RuntimeError(
                f"trace {trace['trace']:03d} missing graph edge "
                f"state={graph_state} face={face} label={label}"
            )
        graph_state, gain = graph_step
        total_gain += gain
        semantic_states.append(sem_state)
        graph_states.append(graph_state)
        cumulative_gains.append(total_gain)
    return {
        "trace": trace["trace"],
        "faces": trace["faces"],
        "gain": total_gain,
        "semantic_states": semantic_states,
        "graph_states": graph_states,
        "semantic_classes": [state_class[state] for state in semantic_states],
        "cumulative_gains": cumulative_gains,
    }


def key_json(value: Any) -> str:
    return json.dumps(value, separators=(",", ":"), sort_keys=True)


def summarize_boundary(rows: list[dict[str, Any]], depth: int) -> dict[str, Any]:
    semantic_classes = Counter(row["semantic_classes"][depth] for row in rows)
    graph_states = Counter(row["graph_states"][depth] for row in rows)
    pair_counts: Counter[tuple[int, int]] = Counter(
        (row["semantic_classes"][depth], row["graph_states"][depth]) for row in rows
    )
    suffix_counts: Counter[str] = Counter(
        key_json(
            {
                "semantic_class": row["semantic_classes"][depth],
                "graph_state": row["graph_states"][depth],
                "suffix": row["faces"][depth:],
            }
        )
        for row in rows
    )
    return {
        "depth": depth,
        "semantic_classes": len(semantic_classes),
        "graph_states": len(graph_states),
        "class_graph_pairs": len(pair_counts),
        "class_graph_suffix_obligations": len(suffix_counts),
        "semantic_class_histogram": {
            str(k): v for k, v in sorted(semantic_classes.items())
        },
        "graph_state_histogram": {str(k): v for k, v in sorted(graph_states.items())},
        "class_graph_histogram": [
            {"semantic_class": cls, "graph_state": graph, "traces": count}
            for (cls, graph), count in sorted(pair_counts.items())
        ],
    }


def trace_rows_for_known_class034(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    for row in rows:
        for depth, semantic_class in enumerate(row["semantic_classes"]):
            suffix = row["faces"][depth:]
            graph_state = row["graph_states"][depth]
            if (
                semantic_class == KNOWN_CLASS034["semantic_class"]
                and suffix == KNOWN_CLASS034["suffix"]
            ):
                result.append(
                    {
                        "trace": row["trace"],
                        "depth": depth,
                        "semantic_class": semantic_class,
                        "graph_state": graph_state,
                        "suffix": suffix,
                        "covered_by_current_graph_state": graph_state
                        == KNOWN_CLASS034["graph_state"],
                    }
                )
    return result


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Semantic State-DAG Provider Gap",
        "",
        "This is diagnostic-only evidence.  It does not prove coverage and it",
        "does not enumerate ranks.  It inventories the current split-10M",
        "graph-accepted traces against the minimized semantic state DAG so the",
        "next emitter can target semantic suffix providers rather than sampled",
        "prefix/path covers.",
        "",
        f"- decision: `{report['decision']}`",
        f"- accepted traces audited: `{report['accepted_traces']}`",
        f"- semantic graph states: `{report['semantic_graph']['states']}`",
        f"- semantic graph edges: `{report['semantic_graph']['edges']}`",
        f"- minimized classes: `{report['minimized_classes']}`",
        "",
        "## Boundary Inventory",
        "",
        "| depth | semantic classes | graph states | class+graph pairs | class+graph+suffix obligations |",
        "| ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in report["boundaries"]:
        lines.append(
            f"| `{row['depth']}` | `{row['semantic_classes']}` | "
            f"`{row['graph_states']}` | `{row['class_graph_pairs']}` | "
            f"`{row['class_graph_suffix_obligations']}` |"
        )

    depth11 = next(row for row in report["boundaries"] if row["depth"] == 11)
    lines.extend(
        [
            "",
            "## Depth-11 Semantic Classes",
            "",
            "| class | traces |",
            "| ---: | ---: |",
        ]
    )
    for cls, count in depth11["semantic_class_histogram"].items():
        lines.append(f"| `{cls}` | `{count}` |")

    lines.extend(
        [
            "",
            "## Known Class-034 Smoke",
            "",
            f"- semantic class: `{report['known_class034']['semantic_class']}`",
            f"- current graph state: `{report['known_class034']['graph_state']}`",
            f"- suffix: `{', '.join(report['known_class034']['suffix'])}`",
            f"- matching traces by semantic class+suffix: `{len(report['class034_matches'])}`",
            f"- covered by current graph-state-specific theorem: "
            f"`{report['class034_currently_covered_traces']}`",
            "",
            "| trace | depth | graph state | covered by current theorem |",
            "| ---: | ---: | ---: | ---: |",
        ]
    )
    for row in report["class034_matches"]:
        lines.append(
            f"| `{row['trace']:03d}` | `{row['depth']}` | "
            f"`{row['graph_state']}` | `{row['covered_by_current_graph_state']}` |"
        )

    lines.extend(
        [
            "",
            "## Interpretation",
            "",
            "- The target-shadow cursor and deterministic transducer bridge are the",
            "  right direction; the graph side is small.",
            "- A production suffix provider must be indexed at least by semantic",
            "  class and Bellman graph state at the suffix boundary.",
            "- The current class-034 provider smoke validates the local theorem",
            "  shape, but it is not a production cover: class 034 appears with",
            "  multiple graph states among the accepted traces.",
            "- `Split10MFinalMarginProducer` remains a separate open producer",
            "  obligation for every production family.",
            "",
            "## Next Gate",
            "",
            "Emit graph-state-indexed late suffix providers for the six depth-11",
            "semantic classes, then prove a semantic closed-language theorem that",
            "moves every accepted rank to one of those depth-11 suffix states",
            "using the target cursor, square-gap schedule, pair counts, and",
            "tri-source progress.  Do not use selected-prefix or sampled-rank",
            "membership.",
            "",
        ]
    )
    return "\n".join(lines)


def build_report() -> dict[str, Any]:
    traces = parse_accepted_traces(read(EVAL_GATE))
    base_text = read(SPLIT_BASE)
    label_of_face = parse_label_of_face(base_text)
    graph_next = parse_graph_next(base_text)
    sem_data = load_json(SEMANTIC_GRAPH)
    sem_next = semantic_edges(sem_data)
    minimized = load_json(MINIMIZED_DETAIL)
    state_class = {
        int(state): int(cls)
        for state, cls in minimized["detail"]["state_class"].items()
    }
    rows = [
        follow_trace(
            trace=trace,
            sem_next=sem_next,
            graph_next=graph_next,
            label_of_face=label_of_face,
            state_class=state_class,
        )
        for trace in traces
    ]
    class034 = trace_rows_for_known_class034(rows)
    boundaries = [
        summarize_boundary(rows, depth)
        for depth in [2, 4, 8, 11, 14]
    ]
    currently_covered = [
        row
        for row in class034
        if row["covered_by_current_graph_state"]
    ]
    decision = (
        "provider-gap-audited-needs-graph-state-indexed-suffix-emitters"
        if len(currently_covered) < len(class034)
        else "provider-gap-audited-class034-state-sufficient"
    )
    return {
        "mode": "top-pairing-semantic-state-dag-provider-gap",
        "decision": decision,
        "accepted_traces": len(traces),
        "semantic_graph": {
            "states": len(sem_data["states"]),
            "edges": len(sem_data["edges"]),
            "terminals": len(sem_data["terminals"]),
        },
        "minimized_classes": minimized["minimized"]["states"],
        "boundaries": boundaries,
        "known_class034": KNOWN_CLASS034,
        "class034_matches": class034,
        "class034_currently_covered_traces": len(currently_covered),
        "trace_table": [
            {
                "trace": row["trace"],
                "gain": row["gain"],
                "depth4": {
                    "semantic_class": row["semantic_classes"][4],
                    "graph_state": row["graph_states"][4],
                    "suffix": row["faces"][4:],
                },
                "depth11": {
                    "semantic_class": row["semantic_classes"][11],
                    "graph_state": row["graph_states"][11],
                    "suffix": row["faces"][11:],
                },
            }
            for row in rows
        ],
        "source_files": {
            "eval_gate": rel(EVAL_GATE),
            "split_base": rel(SPLIT_BASE),
            "semantic_graph": rel(SEMANTIC_GRAPH),
            "minimized_detail": rel(MINIMIZED_DETAIL),
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=Path, default=OUT_JSON)
    parser.add_argument("--markdown", type=Path, default=OUT_MD)
    args = parser.parse_args()

    report = build_report()
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(
        json.dumps(report, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    args.markdown.write_text(render_markdown(report) + "\n", encoding="utf-8")
    print(f"decision={report['decision']}")
    print(f"wrote {rel(args.json)}")
    print(f"wrote {rel(args.markdown)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
