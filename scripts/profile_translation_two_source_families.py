#!/usr/bin/env python3
"""Summarize Phase 6Z two-source support-family coverage.

This script does not generate Lean proof evidence and is not trusted as proof.
It reads a Phase 6X two-source Farkas profile, checks whether the translation
GoodDirection survivors are compressed by support families under the configured
leaf gate, and emits a compact JSON/Markdown handoff for the next generated
Lean phase.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_INPUT = Path(
    "scripts/generated/translation_two_source_farkas_000000000_000100000.json"
)
DEFAULT_OUTPUT = Path(
    "scripts/generated/translation_two_source_family_phase6z_000000000_000100000.json"
)


def load_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def markdown_table(rows: list[tuple[str, Any]]) -> str:
    out = ["| Metric | Value |", "| --- | ---: |"]
    for name, value in rows:
        if isinstance(value, int):
            rendered = f"{value:,}"
        elif isinstance(value, float):
            rendered = f"{value:.3f}"
        else:
            rendered = str(value)
        out.append(f"| {name} | {rendered} |")
    return "\n".join(out)


def support_summary(data: dict[str, Any]) -> dict[str, Any]:
    summary = data.get("source_support_summary")
    if not isinstance(summary, dict):
        raise ValueError("input does not contain source_support_summary")
    two_source = data.get("two_source", {})
    actual = data.get("actual_counts", {})
    decision = data.get("decision", {})
    return {
        "support_class_count": int(summary.get("support_class_count", 0)),
        "max_cases_per_support": int(summary.get("max_cases_per_support", 0)),
        "singleton_support_classes": int(summary.get("singleton_support_classes", 0)),
        "classes_with_single_computed_pattern": int(
            summary.get("classes_with_single_computed_pattern", 0)
        ),
        "classes_with_single_scalar_pattern": int(
            summary.get("classes_with_single_scalar_pattern", 0)
        ),
        "good_direction_survivor_masks": int(
            actual.get("good_direction_survivor_masks", 0)
        ),
        "two_source_cases": int(two_source.get("two_source_cases", 0)),
        "non_two_source_cases": int(two_source.get("non_two_source_cases", 0)),
        "checker_fail_cases": int(two_source.get("checker_fail_cases", 0)),
        "source_farkas_reconstruction_failures": int(
            two_source.get("source_farkas_reconstruction_failures", 0)
        ),
        "phase6x_status": decision.get("status", "unknown"),
    }


def family_decision(
    summary: dict[str, Any],
    *,
    max_lean_leaves: int,
    warn_lean_leaves: int,
) -> dict[str, Any]:
    notes: list[str] = []
    if summary["source_farkas_reconstruction_failures"]:
        status = "rejected"
        notes.append("source Farkas reconstruction failures remain")
    elif summary["non_two_source_cases"]:
        status = "rejected"
        notes.append("some GoodDirection survivors are not two-source")
    elif summary["checker_fail_cases"]:
        status = "rejected"
        notes.append("some deterministic two-source checks failed")
    elif summary["support_class_count"] > max_lean_leaves:
        status = "rejected"
        notes.append("support-family count exceeds the Lean leaf gate")
    elif summary["support_class_count"] > warn_lean_leaves:
        status = "warn"
        notes.append("support-family count is below the hard gate but above warning level")
    else:
        status = "accepted"
        notes.append(
            "support-family count is within the gate; proceed to a theorem-backed prototype"
        )
    return {
        "status": status,
        "accepted_for_phase_6z": status in {"accepted", "warn"},
        "max_lean_leaves": max_lean_leaves,
        "warn_lean_leaves": warn_lean_leaves,
        "notes": notes,
    }


def top_support_payloads(data: dict[str, Any], limit: int) -> list[dict[str, Any]]:
    raw = data.get("top_source_support_classes", [])
    if not isinstance(raw, list):
        return []
    return raw[:limit]


def markdown_report(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    decision = payload["decision"]
    rows = [
        ("GoodDirection survivor masks", summary["good_direction_survivor_masks"]),
        ("Two-source cases", summary["two_source_cases"]),
        ("Non-two-source cases", summary["non_two_source_cases"]),
        ("Checker failures", summary["checker_fail_cases"]),
        ("Support-family classes", summary["support_class_count"]),
        ("Max cases per support", summary["max_cases_per_support"]),
        ("Singleton support classes", summary["singleton_support_classes"]),
        (
            "Classes with one computed multiplier pattern",
            summary["classes_with_single_computed_pattern"],
        ),
    ]
    lines = [
        "# Phase 6Z Two-Source Support-Family Profile",
        "",
        "This report is diagnostic only; Lean must still check generated family evidence.",
        "",
        markdown_table(rows),
        "",
        f"Decision: **{decision['status']}**",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    lines.append("## Top Support Families")
    lines.append("")
    for index, item in enumerate(payload["top_source_support_classes"], start=1):
        lines.append(
            f"{index}. `{item.get('support_digest', '<missing>')}`: "
            f"{item.get('cases', 0):,} cases; "
            f"{item.get('computed_multiplier_patterns', {}).get('unique', '?')} "
            "computed multiplier pattern(s)."
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--max-lean-leaves", type=int, default=2000)
    parser.add_argument("--warn-lean-leaves", type=int, default=500)
    parser.add_argument("--top-support-classes", type=int, default=20)
    args = parser.parse_args()

    if args.max_lean_leaves <= 0:
        parser.error("--max-lean-leaves must be positive")
    if args.warn_lean_leaves <= 0:
        parser.error("--warn-lean-leaves must be positive")
    if args.top_support_classes < 0:
        parser.error("--top-support-classes must be nonnegative")

    data = load_json(args.input)
    summary = support_summary(data)
    payload = {
        "schema_version": 1,
        "mode": "translation-two-source-support-family-profile",
        "trusted_as_proof": False,
        "input": str(args.input),
        "rank_window": data.get("rank_window"),
        "summary": summary,
        "decision": family_decision(
            summary,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
        ),
        "top_source_support_classes": top_support_payloads(
            data, args.top_support_classes
        ),
    }
    write_json(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "support-family classes: "
        f"{summary['support_class_count']:,}; decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
