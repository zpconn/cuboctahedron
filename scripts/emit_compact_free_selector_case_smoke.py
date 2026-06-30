#!/usr/bin/env python3
"""Emit a compact-free selector source/row case smoke.

This is a small production-shape diagnostic.  It consumes public semantic
source/row facts from `RowPropertySemanticCaseSmoke` and emits a generated
module whose theorem surface mentions selector-coordinate source/row facts,
not compact rank-local membership.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
DEFAULT_STEM = "SourceIndexStateSelectorDU9CompactFreeCaseGeneratedSmoke"
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    f"{DEFAULT_STEM}.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/source_index_state_selector_du9_compact_free_case_generated_smoke.json"
)

CASES = [
    {
        "name": "rank0Mask8",
        "rank": 0,
        "mask": 8,
        "key": "k000",
        "source_theorem": "rank0Mask8_selectorCoordinateSourceRowFacts",
    },
    {
        "name": "rank0Mask13",
        "rank": 0,
        "mask": 13,
        "key": "k003",
        "source_theorem": "rank0Mask13_selectorCoordinateSourceRowFacts",
    },
]


def emit_lean(*, stem: str) -> str:
    ns = f"{BASE_MODULE}.{stem}"
    case_smoke = f"{BASE_MODULE}.RowPropertySemanticCaseSmoke"
    lines: list[str] = [
        f"import {case_smoke}",
        "",
        "/-!",
        "Generated compact-free selector source/row case smoke.",
        "",
        "This module intentionally imports the semantic case smoke only.  It does",
        "not import `SourceIndexStateSelectorDU9PCompactMembership` and does not",
        "use rank-local compact GoodDirection membership.",
        "-/",
        "",
        f"namespace {ns}",
        "",
        f"open {BASE_MODULE}.SourceIndexStateClassifierDU3Smoke",
        f"open {BASE_MODULE}.SourceIndexStateSelectorDU9HSmoke",
        "",
    ]
    for case in CASES:
        rank = int(case["rank"])
        mask = int(case["mask"])
        key = str(case["key"])
        name = str(case["name"])
        source_theorem = str(case["source_theorem"])
        lines.extend([
            f"abbrev {name} : SignMask := ⟨{mask}, by decide⟩",
            "",
            f"theorem {name}_selectorCoordinateSourceRowFacts :",
            "    SelectorCoordinateSourceRowFacts",
            f"      (selectorCoordinateOfKey ClassifierKey.{key}) {rank} {name} :=",
            f"  {case_smoke}.{source_theorem}",
            "",
        ])
    lines.extend([
        f"theorem {stem[0].lower() + stem[1:]}_builds : True := by",
        "  trivial",
        "",
        f"end {ns}",
        "",
    ])
    return "\n".join(lines)


def markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Compact-Free Selector Case Smoke",
        "",
        f"- output: `{report['output']}`",
        f"- module: `{report['module']}`",
        f"- imports compact membership: `{report['imports_compact_membership']}`",
        "",
        "## Cases",
        "",
        "| theorem | rank | mask | key |",
        "| --- | ---: | ---: | --- |",
    ]
    for case in report["cases"]:
        lines.append(
            f"| `{case['theorem']}` | `{case['rank']}` | "
            f"`{case['mask']}` | `ClassifierKey.{case['key']}` |"
        )
    return "\n".join(lines) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stem", default=DEFAULT_STEM)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    module = f"{BASE_MODULE}.{args.stem}"
    text = emit_lean(stem=args.stem)
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(text, encoding="utf-8")
    imports_compact = any(
        line.startswith("import ") and "SourceIndexStateSelectorDU9PCompactMembership" in line
        for line in text.splitlines()
    )
    report = {
        "phase": "Phase 6Z6K8AP16DU9IQ compact-free selector case emitter",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "output": str(args.out),
        "module": module,
        "imports_compact_membership": imports_compact,
        "cases": [
            {
                "theorem": f"{case['name']}_selectorCoordinateSourceRowFacts",
                "rank": case["rank"],
                "mask": case["mask"],
                "key": case["key"],
                "source_theorem": case["source_theorem"],
            }
            for case in CASES
        ],
        "decision": {
            "status": "compact-free-selector-case-smoke-generated",
            "notes": [
                "This is not final coverage.",
                "It validates the theorem surface future selector-family emitters should produce.",
                "Range membership remains the next hard proof obligation.",
            ],
        },
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(markdown(report), encoding="utf-8")
    print(f"wrote {args.out} with {len(CASES)} compact-free selector cases")


if __name__ == "__main__":
    main()
