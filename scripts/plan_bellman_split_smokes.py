#!/usr/bin/env python3
"""Plan Bellman split-smoke shards without launching Lean.

This is operational planning only, not proof evidence.  It reads a cached
Bellman graph JSON, renders the same generated trace source text that
`emit_bellman_closed_language_trace_smoke.py` would emit, and reports source
size/import-budget expectations for a bounded batch of path objects.

The point is to make the next Lean-check batch explicit before any target is
added to the allowlist or checked under the memory guard.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
from typing import Any


TRACE_SOURCE_BUDGET_KIB = 40
TRACE_IMPORT_BUDGET = 18
SPLIT_SOURCE_BUDGET_KIB = 8
SPLIT_IMPORT_BUDGET = 26
LEAN_BUILD_DIR = Path(".lake/build/lib/lean")
EMITTER_PATH = Path("scripts/emit_bellman_closed_language_trace_smoke.py")


def load_emitter_module() -> Any:
    spec = importlib.util.spec_from_file_location("bellman_trace_emitter", EMITTER_PATH)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"could not import {EMITTER_PATH}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def suffix_for(index: int) -> str:
    return "" if index == 0 else f"{index:02d}"


def name_for(index: int) -> str:
    return "generated" if index == 0 else f"generated{index:02d}"


def trace_module(index: int) -> str:
    suffix = suffix_for(index)
    return (
        "Cuboctahedron.Generated.NonIdentity.Residual."
        f"BellmanTopPairingClosedLanguageGeneratedTraceSmoke{suffix}"
    )


def split_module(index: int) -> str:
    suffix = suffix_for(index)
    return (
        "Cuboctahedron.Generated.NonIdentity.Residual."
        f"BellmanTopPairingSplitCompositionSmoke{suffix}"
    )


def module_source_path(module: str) -> Path:
    return Path(*module.split(".")).with_suffix(".lean")


def module_olean_path(module: str) -> Path:
    return LEAN_BUILD_DIR.joinpath(*module.split(".")).with_suffix(".olean")


def kib(size_bytes: int) -> int:
    return (size_bytes + 1023) // 1024


def file_status(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"exists": False, "bytes": None, "kib": None, "mtime": None}
    stat = path.stat()
    return {
        "exists": True,
        "bytes": stat.st_size,
        "kib": kib(stat.st_size),
        "mtime": stat.st_mtime,
    }


def artifact_status(source: Path, olean: Path) -> dict[str, Any]:
    source_info = file_status(source)
    olean_info = file_status(olean)
    fresh = (
        bool(source_info["exists"])
        and bool(olean_info["exists"])
        and float(olean_info["mtime"]) >= float(source_info["mtime"])
    )
    return {
        "source": source_info,
        "olean": olean_info,
        "fresh_olean": fresh,
    }


def render_trace_source(
    emitter: Any,
    graph_json: Path,
    path_object_index: int,
) -> tuple[str, dict[str, Any]]:
    faces, source = emitter.load_faces_from_graph(graph_json, path_object_index)
    emitter.validate_faces(faces)
    name = name_for(path_object_index)
    namespace = trace_module(path_object_index)
    bad_face = source.get("bad_face")
    rank = source.get("rank")
    if rank is None:
        raise ValueError(f"path object {path_object_index} has no rank")
    lines = emitter.emit_module(
        namespace,
        name,
        faces,
        concrete_local_axis=True,
        include_axis_forces_bridge=False,
        selected_rank=int(rank),
        selected_bad_face=bad_face,
    )
    text = "\n".join(lines) + "\n"
    source = {**source, "faces": faces}
    return text, source


def render_split_source(path_object_index: int) -> str:
    trace_mod = trace_module(path_object_index)
    split_mod = split_module(path_object_index)
    name = name_for(path_object_index)
    rank_name = f"{name}Rank"
    forced_seq_name = f"{name}ForcedSeq"
    theorem_name = f"{name}ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation"
    return f"""import Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke
import {trace_mod}

/-!
Small composition smoke for a sampled split Bellman route.

This file composes a generated trace shard at the `PairSignLanguageAtRank`
boundary with the separately measured axis-forces bridge.
-/

namespace {split_mod}

open Cuboctahedron

private abbrev traceRank : Fin numPairWords :=
  _root_.{trace_mod}.{rank_name}

private abbrev traceForcedSeq : Step14 -> Face :=
  _root_.{trace_mod}.{forced_seq_name}

theorem generatedClosedLanguageForSeqOfAxisForcesSplit
    {{axis : Vec3 Rat}} {{kernel : KernelLineWitness}}
    {{seq : Step14 -> Face}}
    (hRealize :
      SeqRealizesPairWord (unrankPairWord traceRank) seq)
    (hAxisConstraints :
      NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord traceRank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord traceRank)
        axis traceForcedSeq) :
    TopPairingClosedLanguageForSeq traceRank seq Face.ym :=
  _root_.{trace_mod}.{theorem_name}
    (_root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke.pairSign_of_axisForces_smoke
      hRealize hAxisConstraints hKernel hForces)

theorem splitCompositionSmoke_builds : True := by
  exact True.intro

end {split_mod}
"""


def planned_entry(emitter: Any, graph_json: Path, path_object_index: int) -> dict[str, Any]:
    trace_text, source = render_trace_source(emitter, graph_json, path_object_index)
    split_text = render_split_source(path_object_index)
    trace_source = module_source_path(trace_module(path_object_index))
    trace_olean = module_olean_path(trace_module(path_object_index))
    split_source = module_source_path(split_module(path_object_index))
    split_olean = module_olean_path(split_module(path_object_index))
    trace_kib = kib(len(trace_text.encode("utf-8")))
    split_kib = kib(len(split_text.encode("utf-8")))
    return {
        "path_object_index": path_object_index,
        "rank": source.get("rank"),
        "margin_scaled": source.get("margin_scaled"),
        "final": source.get("final"),
        "label_indices": source.get("label_indices"),
        "faces": source.get("faces"),
        "trace": {
            "target": "generated-trace" if path_object_index == 0 else f"generated-trace-{path_object_index:02d}",
            "module": trace_module(path_object_index),
            "source_path": str(trace_source),
            "olean_path": str(trace_olean),
            "planned_source_kib": trace_kib,
            "source_budget_kib": TRACE_SOURCE_BUDGET_KIB,
            "import_budget": TRACE_IMPORT_BUDGET,
            "within_source_budget": trace_kib <= TRACE_SOURCE_BUDGET_KIB,
            "artifact_status": artifact_status(trace_source, trace_olean),
        },
        "split": {
            "target": "split-composition" if path_object_index == 0 else f"split-composition-{path_object_index:02d}",
            "module": split_module(path_object_index),
            "source_path": str(split_source),
            "olean_path": str(split_olean),
            "planned_source_kib": split_kib,
            "source_budget_kib": SPLIT_SOURCE_BUDGET_KIB,
            "import_budget": SPLIT_IMPORT_BUDGET,
            "within_source_budget": split_kib <= SPLIT_SOURCE_BUDGET_KIB,
            "artifact_status": artifact_status(split_source, split_olean),
        },
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--graph-json",
        type=Path,
        default=Path(
            "scripts/generated/"
            "nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json"
        ),
        help="Cached Bellman graph JSON to inspect.",
    )
    parser.add_argument("--start-index", type=int, default=0)
    parser.add_argument("--count", type=int, default=8)
    parser.add_argument("--json", type=Path, default=None)
    parser.add_argument("--markdown", type=Path, default=None)
    return parser.parse_args()


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def markdown_report(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    lines = [
        "# Bellman Split Smoke Batch Plan",
        "",
        "This report is planning/operational evidence only. It does not prove any Lean theorem.",
        "",
        f"- graph: `{payload['graph_json']}`",
        f"- path object count: `{payload['graph_path_object_count']}`",
        f"- planned range: `{payload['start_index']}..{payload['end_index']}`",
        f"- planned entries: `{summary['planned_entries']}`",
        f"- entries over budget: `{summary['entries_over_budget']}`",
        f"- fresh trace artifacts: `{summary['fresh_trace_artifacts']}`",
        f"- fresh split artifacts: `{summary['fresh_split_artifacts']}`",
        f"- total planned trace source: `{summary['total_trace_source_kib']} KiB`",
        f"- total planned split source: `{summary['total_split_source_kib']} KiB`",
        "",
        "| index | rank | trace KiB | trace artifact | split KiB | split artifact | budget |",
        "| ---: | ---: | ---: | --- | ---: | --- | --- |",
    ]
    for entry in payload["entries"]:
        trace = entry["trace"]
        split = entry["split"]
        trace_status = "fresh" if trace["artifact_status"]["fresh_olean"] else "missing/stale"
        split_status = "fresh" if split["artifact_status"]["fresh_olean"] else "missing/stale"
        budget = "ok" if trace["within_source_budget"] and split["within_source_budget"] else "over"
        lines.append(
            f"| `{entry['path_object_index']}` | `{entry['rank']}` | "
            f"`{trace['planned_source_kib']}` | {trace_status} | "
            f"`{split['planned_source_kib']}` | {split_status} | {budget} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    args = parse_args()
    if args.start_index < 0:
        raise SystemExit("--start-index must be nonnegative")
    if args.count <= 0:
        raise SystemExit("--count must be positive")
    emitter = load_emitter_module()
    graph = json.loads(args.graph_json.read_text(encoding="utf-8"))
    path_objects = graph.get("graph", {}).get("path_objects", [])
    if not isinstance(path_objects, list):
        raise SystemExit(f"{args.graph_json} does not contain graph.path_objects")
    end_index = min(args.start_index + args.count, len(path_objects))
    entries = [
        planned_entry(emitter, args.graph_json, index)
        for index in range(args.start_index, end_index)
    ]
    entries_over_budget = sum(
        1
        for entry in entries
        if not entry["trace"]["within_source_budget"]
        or not entry["split"]["within_source_budget"]
    )
    summary = {
        "planned_entries": len(entries),
        "entries_over_budget": entries_over_budget,
        "fresh_trace_artifacts": sum(
            1 for entry in entries if entry["trace"]["artifact_status"]["fresh_olean"]
        ),
        "fresh_split_artifacts": sum(
            1 for entry in entries if entry["split"]["artifact_status"]["fresh_olean"]
        ),
        "total_trace_source_kib": sum(entry["trace"]["planned_source_kib"] for entry in entries),
        "total_split_source_kib": sum(entry["split"]["planned_source_kib"] for entry in entries),
    }
    payload = {
        "mode": "bellman-split-smoke-batch-plan",
        "graph_json": str(args.graph_json),
        "graph_path_object_count": len(path_objects),
        "start_index": args.start_index,
        "end_index": end_index,
        "summary": summary,
        "entries": entries,
        "budgets": {
            "trace_import_budget": TRACE_IMPORT_BUDGET,
            "trace_source_budget_kib": TRACE_SOURCE_BUDGET_KIB,
            "split_import_budget": SPLIT_IMPORT_BUDGET,
            "split_source_budget_kib": SPLIT_SOURCE_BUDGET_KIB,
        },
    }
    print(
        "summary\t"
        f"entries={summary['planned_entries']}\t"
        f"over_budget={summary['entries_over_budget']}\t"
        f"fresh_trace={summary['fresh_trace_artifacts']}\t"
        f"fresh_split={summary['fresh_split_artifacts']}\t"
        f"trace_kib={summary['total_trace_source_kib']}\t"
        f"split_kib={summary['total_split_source_kib']}"
    )
    print("index\trank\ttrace_kib\ttrace_artifact\tsplit_kib\tsplit_artifact\tbudget")
    for entry in entries:
        trace = entry["trace"]
        split = entry["split"]
        trace_status = "fresh" if trace["artifact_status"]["fresh_olean"] else "missing/stale"
        split_status = "fresh" if split["artifact_status"]["fresh_olean"] else "missing/stale"
        budget = "ok" if trace["within_source_budget"] and split["within_source_budget"] else "over"
        print(
            f"{entry['path_object_index']}\t{entry['rank']}\t"
            f"{trace['planned_source_kib']}\t{trace_status}\t"
            f"{split['planned_source_kib']}\t{split_status}\t{budget}"
        )
    if args.json is not None:
        write_json(args.json, payload)
    if args.markdown is not None:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text(markdown_report(payload), encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
