#!/usr/bin/env python3
"""Summarize union/growth across checkpointed classifier census reports.

This is a diagnostic report helper only; it is not trusted as proof.  It reads
aggregate JSON reports produced by ``run_source_index_state_classifier_census``,
loads their compact window checkpoints, and reports family-key reuse/new-key
growth across the reports in the given order.
"""

from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
from typing import Any


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9eg_classifier_census_union.json"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def checkpoint_paths(report: dict[str, Any]) -> list[Path]:
    checkpoint_dir = Path(str(report["checkpoint_dir"]))
    paths: list[Path] = []
    for start, end in report["ranges"]:
        path = checkpoint_dir / f"window_{int(start):09d}_{int(end):09d}.json"
        if not path.exists():
            raise FileNotFoundError(f"missing checkpoint {path}")
        paths.append(path)
    return paths


def report_families(report: dict[str, Any]) -> tuple[set[str], Counter[str], dict[str, Any]]:
    keys: set[str] = set()
    cases: Counter[str] = Counter()
    meta: dict[str, Any] = {}
    for path in checkpoint_paths(report):
        payload = read_json(path)
        for family in payload["families"]:
            key = str(family["key"])
            keys.add(key)
            cases[key] += int(family["case_count"])
            meta.setdefault(key, family)
    return keys, cases, meta


def summarize(
    *,
    reports: list[Path],
    top_limit: int,
    line_per_family_numerator: int | None,
    line_per_family_denominator: int | None,
) -> dict[str, Any]:
    seen: set[str] = set()
    union_cases: Counter[str] = Counter()
    union_meta: dict[str, Any] = {}
    rows: list[dict[str, Any]] = []
    total_rank_count = 0
    total_good_cases = 0

    for path in reports:
        report = read_json(path)
        keys, cases, meta = report_families(report)
        new_keys = keys - seen
        reused_keys = keys & seen
        seen.update(keys)
        union_cases.update(cases)
        union_meta.update({key: meta[key] for key in new_keys if key in meta})
        total_rank_count += int(report["rank_count"])
        total_good_cases += int(report["good_direction_cases"])
        rows.append({
            "report": str(path),
            "phase": report.get("phase"),
            "rank_count": report["rank_count"],
            "good_direction_cases": report["good_direction_cases"],
            "family_count": len(keys),
            "new_family_count": len(new_keys),
            "reused_family_count": len(reused_keys),
            "cumulative_family_count": len(seen),
            "reuse_fraction": (len(reused_keys) / len(keys)) if keys else None,
        })

    top_families = []
    for key, case_count in union_cases.most_common(top_limit):
        meta = union_meta.get(key, {})
        top_families.append({
            "key": key,
            "case_count": case_count,
            "template_id": meta.get("template_id"),
            "source_indices": meta.get("source_indices"),
            "samples": meta.get("samples", []),
        })

    projected_lines = None
    if line_per_family_numerator is not None and line_per_family_denominator:
        projected_lines = (
            len(seen) * line_per_family_numerator
            + line_per_family_denominator
            - 1
        ) // line_per_family_denominator

    return {
        "schema_version": 1,
        "mode": "source_index_state_classifier_census_union",
        "phase": "6Z.6K.8AP.16DU.9EG",
        "trusted_as_proof": False,
        "reports": rows,
        "report_count": len(reports),
        "sampled_rank_count": total_rank_count,
        "good_direction_cases": total_good_cases,
        "union_family_count": len(seen),
        "line_per_family_numerator": line_per_family_numerator,
        "line_per_family_denominator": line_per_family_denominator,
        "projected_lines_for_union_family_count": projected_lines,
        "top_families": top_families,
        "decision": {
            "status": "diagnostic-only",
            "notes": [
                "family-key union is diagnostic and not proof",
                "use this to choose whether to profile more windows or strengthen the quotient",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9EG Classifier Census Union",
        "",
        "This diagnostic is not trusted as proof. It summarizes family-key growth",
        "across checkpointed source-index/state classifier census reports.",
        "",
        f"- Reports: `{payload['report_count']}`",
        f"- Sampled ranks: `{payload['sampled_rank_count']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Union families: `{payload['union_family_count']}`",
    ]
    if payload["projected_lines_for_union_family_count"] is not None:
        lines.append(
            "- Projected Lean lines for this union family count: "
            f"`{payload['projected_lines_for_union_family_count']}`"
        )
    lines.extend([
        "",
        "## Report Growth",
        "",
        "| Report | Phase | Ranks | GoodDirection | Families | New | Reused | Cumulative | Reuse |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ])
    for row in payload["reports"]:
        reuse = row["reuse_fraction"]
        reuse_text = "" if reuse is None else f"{100 * reuse:.2f}%"
        lines.append(
            f"| `{row['report']}` | `{row['phase']}` | {row['rank_count']} | "
            f"{row['good_direction_cases']} | {row['family_count']} | "
            f"{row['new_family_count']} | {row['reused_family_count']} | "
            f"{row['cumulative_family_count']} | {reuse_text} |"
        )
    lines.extend([
        "",
        "## Top Union Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ])
    for family in payload["top_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family.get("samples", [])
        )
        lines.append(
            f"| {family['case_count']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
        )
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
    parser.add_argument("--input", type=Path, action="append", required=True)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=None)
    parser.add_argument("--top-limit", type=int, default=20)
    parser.add_argument("--line-per-family-numerator", type=int, default=None)
    parser.add_argument("--line-per-family-denominator", type=int, default=None)
    args = parser.parse_args()

    payload = summarize(
        reports=args.input,
        top_limit=args.top_limit,
        line_per_family_numerator=args.line_per_family_numerator,
        line_per_family_denominator=args.line_per_family_denominator,
    )
    write_json(args.json, payload)
    md_path = args.md if args.md is not None else args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "union_family_count": payload["union_family_count"],
        "sampled_rank_count": payload["sampled_rank_count"],
        "good_direction_cases": payload["good_direction_cases"],
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
