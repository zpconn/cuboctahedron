#!/usr/bin/env python3
"""Emit a shallow DU9IQ traced direct-bridge batch aggregate.

The aggregate imports already checked bridge leaves and re-exports tiny build
theorems from each leaf.  It intentionally does not replay arithmetic or reduce
any weighted-denominator checker.  Its purpose is to prove that a bounded batch
has composable theorem surfaces without broad uncached imports.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_PLAN = Path(
    "scripts/generated/weighted_denom_cube_du9iq_traced_bridge_batch_plan_rank896.json"
)
BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")


def module_leaf(module: str) -> str:
    return module.rsplit(".", 1)[-1]


def default_stem(plan: dict[str, Any]) -> str:
    return f"WeightedDenomCubeDU9IQDirectBridgeBatchRank{int(plan['rank'])}"


def emit_lean(plan: dict[str, Any], *, stem: str) -> str:
    bridge_tasks = plan["bridge_tasks"]
    imports = [f"import {task['module']}" for task in bridge_tasks]
    lines: list[str] = []
    lines.extend(imports)
    lines.extend([
        "",
        "/-!",
        f"Shallow aggregate for DU9IQ traced direct bridge batch `{stem}`.",
        "",
        "The imported leaves contain the checked arithmetic.  This module only",
        "proves that the theorem surfaces compose without name conflicts or broad",
        "local unfolding.",
        "-/",
        "",
        f"namespace {BASE_MODULE}",
        f"namespace {stem}",
        "",
    ])
    for task in bridge_tasks:
        idx = int(task["summary_index"])
        leaf = module_leaf(task["module"])
        lines.extend([
            f"theorem idx{idx:02d}_builds : True :=",
            f"  {leaf}.tracedDirectBridgeGeneratedSmoke_builds",
            "",
        ])
    lines.extend([
        f"theorem {stem[0].lower() + stem[1:]}_builds : True := by",
        "  trivial",
        "",
        f"end {stem}",
        f"end {BASE_MODULE}",
        "",
    ])
    return "\n".join(lines)


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        "# DU9IQ Traced Bridge Batch Aggregate",
        "",
        f"- plan: `{report['plan']}`",
        f"- output: `{report['output']}`",
        f"- module: `{report['module']}`",
        f"- bridge imports: `{report['bridge_count']}`",
        "",
        "## Imported bridge modules",
        "",
    ]
    for module in report["bridge_modules"]:
        lines.append(f"- `{module}`")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plan", type=Path, default=DEFAULT_PLAN)
    parser.add_argument("--stem", default=None)
    parser.add_argument("--out", type=Path, default=None)
    parser.add_argument("--report", type=Path, default=None)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    plan = json.loads(args.plan.read_text(encoding="utf-8"))
    stem = args.stem or default_stem(plan)
    out = args.out or (BASE_DIR / f"{stem}Smoke.lean")
    report_path = args.report or Path(
        f"scripts/generated/{stem[0].lower() + stem[1:]}_aggregate.json"
    )

    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(emit_lean(plan, stem=f"{stem}Smoke"), encoding="utf-8")

    module = f"{BASE_MODULE}.{stem}Smoke"
    report = {
        "phase": "Phase 6Z6K8AP16DU9IQ traced direct bridge batch aggregate",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "plan": str(args.plan),
        "output": str(out),
        "module": module,
        "bridge_count": len(plan["bridge_tasks"]),
        "bridge_modules": [task["module"] for task in plan["bridge_tasks"]],
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(report, report_path.with_suffix(".md"))
    print(f"wrote {out} importing {report['bridge_count']} bridge leaves")


if __name__ == "__main__":
    main()
