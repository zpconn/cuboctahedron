#!/usr/bin/env python3
"""Emit Phase 6Z.6K.8AL split pair-sign producer-coverage smoke.

Phase 8AK proved the checkpoint-window producer surface in one bounded Lean
module.  This generator emits the same theorem-valued surface in a
production-shaped import hierarchy:

* one shared source-producer module;
* one shared row-producer module;
* descriptor-key chunk modules; and
* a tiny root module importing only the chunks.

The generated files are still bounded smoke evidence, not global coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_pair_sign_producer_coverage_smoke import (  # noqa: E402
    collect_representative_families,
    grouped_by_payload,
    key_lines,
)
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    write_json,
    write_text,
)
from generate_source_index_state_producer_glue_smoke import (  # noqa: E402
    row_group_lines,
    source_group_lines,
)
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402
from profile_pair_sign_descriptor_membership_state import parse_ranges  # noqa: E402
from profile_source_index_state_fact_production import key, row_payload, source_payload  # noqa: E402


DEFAULT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PairSignProducerCoverageScalingSplit"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8al_pair_sign_producer_coverage_split_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "PairSignProducerCoverageScalingSplit"
)
DEFAULT_RANGES = (
    "0:2500,10000000:10002500,20000000:20002500,30000000:30002500,"
    "40000000:40002500,50000000:50002500,60000000:60002500,"
    "70000000:70002500,80000000:80002500,90000000:90002500"
)


def module_import_for(path: Path) -> str:
    no_suffix = path.with_suffix("")
    parts = list(no_suffix.parts)
    if parts and parts[0] == "Cuboctahedron":
        return ".".join(parts)
    raise ValueError(f"expected Cuboctahedron module path, got {path}")


def exported(lines: list[str]) -> list[str]:
    return [line.replace("private def ", "def ") for line in lines]


def header(namespace: str, phase: str, title: str) -> list[str]:
    return [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        title,
        "",
        "Generated bounded smoke evidence. This is not global coverage.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]


def source_module_lines(namespace: str, phase: str, source_groups: list[dict[str, Any]]) -> list[str]:
    lines = header(namespace, phase, "Shared pair-sign source producers.")
    for index, group in enumerate(source_groups):
        lines.extend(exported(source_group_lines(index, group)))
    lines.extend([
        "theorem sourceProducers_build : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def row_module_lines(namespace: str, phase: str, row_groups: list[dict[str, Any]]) -> list[str]:
    lines = header(namespace, phase, "Shared pair-sign row producers.")
    for index, group in enumerate(row_groups):
        lines.extend(exported(row_group_lines(index, group)))
    lines.extend([
        "theorem rowProducers_build : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def chunk_module_lines(
    *,
    namespace: str,
    source_module: str,
    row_module: str,
    source_namespace: str,
    row_namespace: str,
    phase: str,
    families: list[Any],
    source_lookup: dict[str, int],
    row_lookup: dict[str, int],
    global_start: int,
) -> list[str]:
    lines = [
        f"import {source_module}",
        f"import {row_module}",
        "",
        "/-!",
        "Pair-sign producer-coverage descriptor chunk.",
        "",
        "Generated bounded smoke evidence. This is not global coverage.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        f"open {source_namespace}",
        f"open {row_namespace}",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]
    for offset, family in enumerate(families):
        global_index = global_start + offset
        lines.extend(key_lines(
            global_index,
            family,
            source_lookup[key(source_payload(family))],
            row_lookup[key(row_payload(family))],
        ))
    lines.extend([
        "theorem chunk_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def root_lines(namespace: str, phase: str, chunk_modules: list[str]) -> list[str]:
    lines = [f"import {module}" for module in chunk_modules]
    lines.extend([
        "",
        "/-!",
        "Root for bounded split pair-sign producer-coverage smoke.",
        "",
        "This root is intentionally tiny; the checked evidence lives in bounded",
        "chunk modules and shared source/row producer modules.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "theorem splitPairSignProducerCoverageSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def chunks(items: list[Any], chunk_size: int) -> list[tuple[int, list[Any]]]:
    return [
        (start, items[start:start + chunk_size])
        for start in range(0, len(items), chunk_size)
    ]


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Split Pair-Sign Producer-Coverage Smoke",
        "",
        "This generated smoke is not global coverage. It checks the same bounded",
        "producer surface as 8AK, but in a source/row/chunk/root import layout.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Chunk count: `{payload['chunk_count']}`",
        f"- Chunk size: `{payload['chunk_size']}`",
        f"- Represented GoodDirection cases: `{payload['represented_case_count']}`",
        f"- Root module: `{payload['root_module']}`",
        "",
        "## Generated Files",
        "",
    ]
    for item in payload["files"]:
        lines.append(f"- `{item}`")
    lines.extend([
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--chunk-size", type=int, default=64)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8AL")
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.chunk_size <= 0:
        raise ValueError("--chunk-size must be positive")
    namespace = validate_module_namespace(args.namespace)
    source_namespace = f"{namespace}.Source"
    row_namespace = f"{namespace}.Row"
    ranges = parse_ranges(args.ranges)

    families, counts, windows = collect_representative_families(
        ranges=ranges,
        jobs=args.jobs,
    )
    source_groups = grouped_by_payload(families, source_payload)
    row_groups = grouped_by_payload(families, row_payload)
    source_lookup = {str(group["key"]): index for index, group in enumerate(source_groups)}
    row_lookup = {str(group["key"]): index for index, group in enumerate(row_groups)}

    args.out_dir.mkdir(parents=True, exist_ok=True)
    source_path = args.out_dir / "Source.lean"
    row_path = args.out_dir / "Row.lean"
    root_path = args.out_dir / "All.lean"
    chunk_dir = args.out_dir / "Chunks"
    chunk_dir.mkdir(parents=True, exist_ok=True)

    source_module = module_import_for(source_path)
    row_module = module_import_for(row_path)
    root_module = module_import_for(root_path)

    write_text(source_path, "\n".join(source_module_lines(
        source_namespace,
        args.phase,
        source_groups,
    )))
    write_text(row_path, "\n".join(row_module_lines(
        row_namespace,
        args.phase,
        row_groups,
    )))

    chunk_modules: list[str] = []
    chunk_files: list[str] = []
    for chunk_index, (start, chunk_families) in enumerate(chunks(families, args.chunk_size)):
        chunk_name = f"Chunk{chunk_index:03d}"
        chunk_namespace = f"{namespace}.Chunks.{chunk_name}"
        chunk_path = chunk_dir / f"{chunk_name}.lean"
        write_text(chunk_path, "\n".join(chunk_module_lines(
            namespace=chunk_namespace,
            source_module=source_module,
            row_module=row_module,
            source_namespace=source_namespace,
            row_namespace=row_namespace,
            phase=args.phase,
            families=chunk_families,
            source_lookup=source_lookup,
            row_lookup=row_lookup,
            global_start=start,
        )))
        chunk_modules.append(module_import_for(chunk_path))
        chunk_files.append(str(chunk_path))

    write_text(root_path, "\n".join(root_lines(
        namespace,
        args.phase,
        chunk_modules,
    )))

    files = [str(source_path), str(row_path), *chunk_files, str(root_path)]
    payload = {
        "schema_version": 1,
        "phase": args.phase,
        "trusted_as_proof": False,
        "jobs": args.jobs,
        "ranges": [list(item) for item in ranges],
        "counts": counts,
        "windows": windows,
        "descriptor_family_count": len(families),
        "source_group_count": len(source_groups),
        "row_group_count": len(row_groups),
        "chunk_size": args.chunk_size,
        "chunk_count": len(chunk_files),
        "represented_case_count": sum(family.count for family in families),
        "root_module": root_module,
        "namespace": namespace,
        "files": files,
        "decision": {
            "status": "split-pair-sign-producer-coverage-smoke-emitted",
            "notes": [
                "source and row producers are emitted once in shared modules",
                "descriptor keys are split into bounded chunk modules",
                "root imports only chunks and contains no raw rank/mask replay",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "descriptor_family_count": payload["descriptor_family_count"],
        "source_group_count": payload["source_group_count"],
        "row_group_count": payload["row_group_count"],
        "chunk_count": payload["chunk_count"],
        "represented_case_count": payload["represented_case_count"],
        "root_module": payload["root_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
