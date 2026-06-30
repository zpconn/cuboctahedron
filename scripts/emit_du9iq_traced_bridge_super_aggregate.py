#!/usr/bin/env python3
"""Emit a shallow DU9IQ traced direct-bridge super-aggregate.

This combines already checked batch aggregate modules.  It imports only the
batch aggregate theorem surfaces and re-exports tiny `True` facts, so it does
not replay any weighted-denominator arithmetic.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path


BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_STEM = "WeightedDenomCubeDU9IQDirectBridgeBatchRank896Combined"


def module_leaf(module: str) -> str:
    return module.rsplit(".", 1)[-1]


def build_theorem_name(leaf: str) -> str:
    return leaf[0].lower() + leaf[1:] + "_builds"


def emit_lean(modules: list[str], *, stem: str) -> str:
    lines: list[str] = []
    lines.extend(f"import {module}" for module in modules)
    lines.extend([
        "",
        "/-!",
        f"Shallow super-aggregate for DU9IQ traced direct bridge batches `{stem}`.",
        "",
        "The imported batch roots contain only theorem surfaces from checked",
        "leaves.  This module proves that those roots compose without importing",
        "a broad uncached DU9IQ tree or replaying arithmetic.",
        "-/",
        "",
        f"namespace {BASE_MODULE}",
        f"namespace {stem}",
        "",
    ])
    for index, module in enumerate(modules):
        leaf = module_leaf(module)
        lines.extend([
            f"theorem batch{index:02d}_builds : True :=",
            f"  {leaf}.{build_theorem_name(leaf)}",
            "",
        ])
    lines.extend([
        f"theorem {build_theorem_name(stem)} : True := by",
        "  trivial",
        "",
        f"end {stem}",
        f"end {BASE_MODULE}",
        "",
    ])
    return "\n".join(lines)


def write_markdown(report: dict[str, object], path: Path) -> None:
    lines = [
        "# DU9IQ Traced Bridge Super-Aggregate",
        "",
        f"- output: `{report['output']}`",
        f"- module: `{report['module']}`",
        f"- batch imports: `{report['batch_count']}`",
        "",
        "## Imported batch modules",
        "",
    ]
    for module in report["batch_modules"]:  # type: ignore[index]
        lines.append(f"- `{module}`")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stem", default=DEFAULT_STEM)
    parser.add_argument("--out", type=Path, default=None)
    parser.add_argument("--report", type=Path, default=None)
    parser.add_argument(
        "--module",
        action="append",
        required=True,
        help="Batch aggregate module to import. Repeat for each batch root.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    stem = args.stem
    modules = list(args.module)
    out = args.out or (BASE_DIR / f"{stem}Smoke.lean")
    report_path = args.report or Path(
        f"scripts/generated/{stem[0].lower() + stem[1:]}_super_aggregate.json"
    )

    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(emit_lean(modules, stem=f"{stem}Smoke"), encoding="utf-8")

    report = {
        "phase": "Phase 6Z6K8AP16DU9IQ traced direct bridge super-aggregate",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "output": str(out),
        "module": f"{BASE_MODULE}.{stem}Smoke",
        "batch_count": len(modules),
        "batch_modules": modules,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(report, report_path.with_suffix(".md"))
    print(f"wrote {out} importing {len(modules)} batch roots")


if __name__ == "__main__":
    main()
