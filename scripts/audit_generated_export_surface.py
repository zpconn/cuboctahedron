#!/usr/bin/env python3
"""Audit generated Lean source surfaces before aggregate-root experiments.

This script is intentionally lightweight: it only inspects generated `.lean`
files and existing `.olean` artifacts.  It does not call Lean, Lake, or any
external checker.  The goal is to make root-import pressure visible before a
multi-leaf aggregate build risks an OOM.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


DEFAULT_ROOT = Path(".")
DEFAULT_OLEAN_ROOT = Path(".lake/build/lib/lean")
DECL_RE = re.compile(r"^(?:private\s+)?(?:def|theorem|lemma|inductive|structure)\b")


def module_name_for(path: Path, root: Path) -> str:
    rel = path.relative_to(root)
    return ".".join(rel.with_suffix("").parts)


def olean_path_for(module_name: str, olean_root: Path) -> Path:
    return olean_root.joinpath(*module_name.split(".")).with_suffix(".olean")


def audit_file(path: Path, *, root: Path, olean_root: Path) -> dict[str, Any]:
    text = path.read_text()
    lines = text.splitlines()
    module_name = module_name_for(path, root)
    olean = olean_path_for(module_name, olean_root)
    imports = [line for line in lines if line.startswith("import ")]
    decls = [line for line in lines if DECL_RE.match(line)]
    private_decls = [
        line for line in lines
        if line.startswith("private ")
        and DECL_RE.match(line.removeprefix("private "))
    ]
    public_decls = [
        line for line in decls
        if not line.startswith("private ")
    ]
    return {
        "path": str(path),
        "module": module_name,
        "lines": len(lines),
        "imports": len(imports),
        "declarations": len(decls),
        "private_declarations": len(private_decls),
        "public_declarations": len(public_decls),
        "olean_path": str(olean),
        "olean_exists": olean.exists(),
        "olean_bytes": olean.stat().st_size if olean.exists() else None,
    }


def find_files(root: Path, globs: list[str]) -> list[Path]:
    files: set[Path] = set()
    for pattern in globs:
      files.update(path for path in root.glob(pattern) if path.is_file())
    return sorted(files)


def write_markdown(report: dict[str, Any], path: Path) -> None:
    rows = sorted(
        report["files"],
        key=lambda item: item["olean_bytes"] or -1,
        reverse=True,
    )
    lines = [
        "# Generated Export Surface Audit",
        "",
        f"- root: `{report['root']}`",
        f"- olean root: `{report['olean_root']}`",
        f"- file count: `{report['summary']['file_count']}`",
        f"- total source lines: `{report['summary']['total_lines']}`",
        f"- total declarations: `{report['summary']['total_declarations']}`",
        f"- total private declarations: `{report['summary']['total_private_declarations']}`",
        f"- total public declarations: `{report['summary']['total_public_declarations']}`",
        f"- total existing olean bytes: `{report['summary']['total_olean_bytes']}`",
        "",
        "| module | lines | decls | private | public | olean MiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for item in rows:
        mib = (
            item["olean_bytes"] / (1024 * 1024)
            if item["olean_bytes"] is not None
            else None
        )
        mib_cell = f"{mib:.2f}" if mib is not None else "missing"
        lines.append(
            f"| `{item['module']}` | `{item['lines']}` | "
            f"`{item['declarations']}` | `{item['private_declarations']}` | "
            f"`{item['public_declarations']}` | `{mib_cell}` |"
        )
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=DEFAULT_ROOT)
    parser.add_argument("--olean-root", type=Path, default=DEFAULT_OLEAN_ROOT)
    parser.add_argument(
        "--glob",
        action="append",
        required=True,
        help="Path glob relative to --root; may be repeated.",
    )
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", type=Path)
    args = parser.parse_args()

    root = args.root.resolve()
    olean_root = args.olean_root.resolve()
    files = find_files(root, args.glob)
    audited = [
        audit_file(path.resolve(), root=root, olean_root=olean_root)
        for path in files
    ]
    summary = {
        "file_count": len(audited),
        "total_lines": sum(item["lines"] for item in audited),
        "total_declarations": sum(item["declarations"] for item in audited),
        "total_private_declarations": sum(
            item["private_declarations"] for item in audited
        ),
        "total_public_declarations": sum(
            item["public_declarations"] for item in audited
        ),
        "total_olean_bytes": sum(
            item["olean_bytes"] or 0 for item in audited
        ),
    }
    report = {
        "root": str(root),
        "olean_root": str(olean_root),
        "globs": args.glob,
        "summary": summary,
        "files": audited,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    if args.markdown is not None:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_markdown(report, args.markdown)
    print(json.dumps(summary, sort_keys=True))


if __name__ == "__main__":
    main()
