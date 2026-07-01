#!/usr/bin/env python3
"""Summarize guarded Bellman split smoke runs.

This is a diagnostic/accounting tool only.  It aggregates JSON files already
emitted by ``run_bellman_split_smoke_path.py`` and related dry-run planners; it
does not invoke Lean and is not proof evidence.
"""

from __future__ import annotations

import argparse
import json
import math
import statistics
from dataclasses import dataclass
from pathlib import Path
from typing import Any


KIB_PER_MIB = 1024.0


@dataclass(frozen=True)
class CommandMetric:
    path_index: int
    rank: int | None
    kind: str
    elapsed_seconds: float
    max_tree_rss_kib: int
    min_available_seen_kib: int | None
    planned_source_kib: int | None
    exit_code: int | None
    guard_exit_code: int | None
    killed_reason: str | None
    module: str | None


def load_json(path: Path) -> dict[str, Any]:
    with path.open() as f:
        data = json.load(f)
    if not isinstance(data, dict):
        raise ValueError(f"{path} did not contain a JSON object")
    return data


def run_path(pattern: str, index: int) -> Path:
    return Path(pattern.format(index=index))


def run_paths(pattern: str, index: int) -> list[Path]:
    """Return the run JSON path(s) for a path index.

    The first few split-smoke checkpoints were produced before the later
    ``*_missing_run.json`` naming convention stabilized.  Keep this reader
    tolerant so one aggregate report can cover the complete historical smoke
    set without renaming artifacts.
    """

    primary = run_path(pattern, index)
    if primary.exists():
        return [primary]
    directory = primary.parent
    stem = f"bellman_split_path_{index:02d}"
    combined = directory / f"{stem}_run.json"
    if combined.exists():
        return [combined]
    pieces = [
        directory / f"{stem}_trace_only_run.json",
        directory / f"{stem}_split_only_run.json",
    ]
    existing = [p for p in pieces if p.exists()]
    if existing:
        return existing
    return [primary]


def percentile_nearest(values: list[float], pct: float) -> float | None:
    if not values:
        return None
    ordered = sorted(values)
    pos = max(0, min(len(ordered) - 1, math.ceil(pct * len(ordered)) - 1))
    return ordered[pos]


def mean_or_none(values: list[float]) -> float | None:
    return statistics.mean(values) if values else None


def median_or_none(values: list[float]) -> float | None:
    return statistics.median(values) if values else None


def mib(kib: int | None) -> float | None:
    return None if kib is None else kib / KIB_PER_MIB


def round_float(value: float | None, digits: int = 3) -> float | None:
    return None if value is None else round(value, digits)


def summarize_stage(metrics: list[CommandMetric], stage: str) -> dict[str, Any]:
    stage_metrics = [m for m in metrics if m.kind == stage]
    elapsed = [m.elapsed_seconds for m in stage_metrics]
    rss = [m.max_tree_rss_kib for m in stage_metrics]
    min_avail = [
        m.min_available_seen_kib
        for m in stage_metrics
        if m.min_available_seen_kib is not None
    ]
    sources = [
        m.planned_source_kib
        for m in stage_metrics
        if m.planned_source_kib is not None
    ]
    worst_elapsed = max(stage_metrics, key=lambda m: m.elapsed_seconds, default=None)
    worst_rss = max(stage_metrics, key=lambda m: m.max_tree_rss_kib, default=None)
    max_rss_kib = max(rss) if rss else None
    return {
        "stage": stage,
        "count": len(stage_metrics),
        "total_elapsed_seconds": round_float(sum(elapsed)),
        "mean_elapsed_seconds": round_float(mean_or_none(elapsed)),
        "median_elapsed_seconds": round_float(median_or_none(elapsed)),
        "p95_elapsed_seconds": round_float(percentile_nearest(elapsed, 0.95)),
        "max_elapsed_seconds": round_float(max(elapsed) if elapsed else None),
        "max_rss_mib": round_float(mib(max_rss_kib), 1),
        "min_available_seen_mib": round_float(mib(min(min_avail)) if min_avail else None, 1),
        "total_source_kib": sum(sources) if sources else None,
        "max_source_kib": max(sources) if sources else None,
        "worst_elapsed_path": None
        if worst_elapsed is None
        else {
            "path_index": worst_elapsed.path_index,
            "rank": worst_elapsed.rank,
            "elapsed_seconds": round_float(worst_elapsed.elapsed_seconds),
        },
        "worst_rss_path": None
        if worst_rss is None
        else {
            "path_index": worst_rss.path_index,
            "rank": worst_rss.rank,
            "max_rss_mib": round_float(mib(worst_rss.max_tree_rss_kib), 1),
        },
    }


def plan_rank_map(path: str | None) -> dict[int, int]:
    if not path:
        return {}
    p = Path(path)
    if not p.exists():
        return {}
    data = load_json(p)
    entries = data.get("entries")
    if not isinstance(entries, list):
        return {}
    result: dict[int, int] = {}
    for entry in entries:
        if not isinstance(entry, dict):
            continue
        index = entry.get("path_object_index")
        rank = entry.get("rank")
        if index is None or rank is None:
            continue
        result[int(index)] = int(rank)
    return result


def collect_metrics(
    args: argparse.Namespace, rank_by_index: dict[int, int]
) -> tuple[list[CommandMetric], list[str]]:
    metrics: list[CommandMetric] = []
    errors: list[str] = []
    for index in range(args.start_index, args.start_index + args.count):
        paths = run_paths(args.run_pattern, index)
        if not any(path.exists() for path in paths):
            errors.append(
                f"missing run JSON for path {index}: "
                + ", ".join(str(path) for path in paths)
            )
            continue
        rank = None
        seen_kinds: set[str] = set()
        for path in paths:
            data = load_json(path)
            if rank is None:
                for key in ("trace", "split"):
                    section = data.get(key)
                    if isinstance(section, dict):
                        preflight = section.get("preflight")
                        if (
                            isinstance(preflight, dict)
                            and preflight.get("rank") is not None
                        ):
                            rank = int(preflight["rank"])
                            break
            if rank is None:
                rank = rank_by_index.get(index)
            for command in data.get("commands", []):
                if not isinstance(command, dict):
                    errors.append(f"{path}: command entry is not an object")
                    continue
                kind = command.get("kind")
                if kind not in {"trace", "split"}:
                    errors.append(f"{path}: unexpected command kind {kind!r}")
                    continue
                if kind in seen_kinds:
                    errors.append(
                        f"path {index}: duplicate command kind {kind} in {path}"
                    )
                    continue
                seen_kinds.add(kind)
                guard = command.get("guard_summary")
                if not isinstance(guard, dict):
                    errors.append(f"{path}: command {kind} missing guard_summary")
                    continue
                section = data.get(kind, {})
                if not isinstance(section, dict):
                    section = {}
                metric = CommandMetric(
                    path_index=index,
                    rank=rank,
                    kind=kind,
                    elapsed_seconds=float(guard.get("elapsed_seconds", 0.0)),
                    max_tree_rss_kib=int(guard.get("max_tree_rss_kib", 0)),
                    min_available_seen_kib=(
                        None
                        if guard.get("min_available_seen_kib") is None
                        else int(guard["min_available_seen_kib"])
                    ),
                    planned_source_kib=(
                        None
                        if section.get("planned_source_kib") is None
                        else int(section["planned_source_kib"])
                    ),
                    exit_code=(
                        None
                        if command.get("exit_code") is None
                        else int(command["exit_code"])
                    ),
                    guard_exit_code=(
                        None
                        if guard.get("exit_code") is None
                        else int(guard["exit_code"])
                    ),
                    killed_reason=guard.get("killed_reason"),
                    module=section.get("module"),
                )
                metrics.append(metric)
                if metric.exit_code != 0:
                    errors.append(
                        f"{path}: command {kind} exit_code={metric.exit_code}"
                    )
                if metric.guard_exit_code != 0:
                    errors.append(
                        f"{path}: command {kind} "
                        f"guard exit_code={metric.guard_exit_code}"
                    )
                if metric.killed_reason is not None:
                    errors.append(
                        f"{path}: command {kind} "
                        f"killed_reason={metric.killed_reason}"
                    )
        missing_kinds = {"trace", "split"} - seen_kinds
        for kind in sorted(missing_kinds):
            errors.append(f"path {index}: missing command kind {kind}")
    return metrics, errors


def optional_json_summary(path: str | None) -> dict[str, Any] | None:
    if not path:
        return None
    p = Path(path)
    if not p.exists():
        return {"path": str(p), "missing": True}
    data = load_json(p)
    return {
        "path": str(p),
        "missing": False,
        "status": data.get("status"),
        "summary": data.get("summary"),
        "selected": data.get("selected"),
        "mem_available_mib": data.get("mem_available_mib"),
        "min_available_mib": data.get("min_available_mib"),
    }


def build_report(args: argparse.Namespace) -> dict[str, Any]:
    rank_by_index = plan_rank_map(args.plan_json)
    metrics, errors = collect_metrics(args, rank_by_index)
    path_indices = sorted({m.path_index for m in metrics})
    per_path_totals: list[dict[str, Any]] = []
    for index in path_indices:
        items = [m for m in metrics if m.path_index == index]
        per_path_totals.append(
            {
                "path_index": index,
                "rank": next((m.rank for m in items if m.rank is not None), None),
                "elapsed_seconds": round_float(sum(m.elapsed_seconds for m in items)),
                "max_rss_mib": round_float(
                    mib(max((m.max_tree_rss_kib for m in items), default=0)), 1
                ),
            }
        )
    total_elapsed = sum(m.elapsed_seconds for m in metrics)
    per_path_elapsed = [p["elapsed_seconds"] for p in per_path_totals]
    max_rss_kib = max((m.max_tree_rss_kib for m in metrics), default=None)
    min_avail_kib = min(
        (
            m.min_available_seen_kib
            for m in metrics
            if m.min_available_seen_kib is not None
        ),
        default=None,
    )
    hard_rss_cap_mib = args.hard_rss_cap_mib
    max_rss_mib = mib(max_rss_kib)
    return {
        "mode": "bellman-split-smoke-metrics",
        "range": {
            "start_index": args.start_index,
            "count": args.count,
            "end_index": args.start_index + args.count,
        },
        "run_pattern": args.run_pattern,
        "status": "accepted" if not errors and len(path_indices) == args.count else "blocked",
        "errors": errors,
        "paths_seen": len(path_indices),
        "commands_seen": len(metrics),
        "stages": {
            "trace": summarize_stage(metrics, "trace"),
            "split": summarize_stage(metrics, "split"),
        },
        "overall": {
            "total_elapsed_seconds": round_float(total_elapsed),
            "total_elapsed_minutes": round_float(total_elapsed / 60.0),
            "mean_path_elapsed_seconds": round_float(mean_or_none(per_path_elapsed)),
            "median_path_elapsed_seconds": round_float(
                median_or_none(per_path_elapsed)
            ),
            "p95_path_elapsed_seconds": round_float(
                percentile_nearest(per_path_elapsed, 0.95)
            ),
            "max_path_elapsed_seconds": round_float(
                max(per_path_elapsed) if per_path_elapsed else None
            ),
            "max_rss_mib": round_float(max_rss_mib, 1),
            "min_available_seen_mib": round_float(mib(min_avail_kib), 1),
            "hard_rss_cap_mib": hard_rss_cap_mib,
            "rss_headroom_to_cap_mib": round_float(
                None if max_rss_mib is None else hard_rss_cap_mib - max_rss_mib, 1
            ),
            "diagnostic_cpu_hours_per_1000_paths": round_float(
                (total_elapsed / max(1, len(path_indices))) * 1000.0 / 3600.0
            ),
            "diagnostic_wall_hours_per_1000_paths_at_4_workers": round_float(
                (total_elapsed / max(1, len(path_indices))) * 1000.0 / 3600.0 / 4.0
            ),
        },
        "per_path_totals": per_path_totals,
        "plan": optional_json_summary(args.plan_json),
        "selector": optional_json_summary(args.selector_json),
        "guard": optional_json_summary(args.guard_json),
        "note": (
            "Diagnostic aggregation only: this summarizes already emitted Lean "
            "smoke artifacts and does not prove exhaustive generated coverage."
        ),
    }


def fmt(value: Any, suffix: str = "") -> str:
    if value is None:
        return "n/a"
    return f"{value}{suffix}"


def write_markdown(report: dict[str, Any], path: Path) -> None:
    stages = report["stages"]
    overall = report["overall"]
    rng = report["range"]
    lines: list[str] = []
    lines.append(
        f"# Bellman Split Smoke Metrics [{rng['start_index']},{rng['end_index']})"
    )
    lines.append("")
    lines.append(
        "This report is untrusted diagnostic aggregation only. It reads existing "
        "guarded smoke JSON files; it does not invoke Lean and is not proof "
        "evidence for exhaustive coverage."
    )
    lines.append("")
    lines.append("## Guard Status")
    lines.append("")
    lines.append(f"- status: `{report['status']}`")
    lines.append(f"- paths seen: `{report['paths_seen']}` of `{rng['count']}`")
    lines.append(f"- commands seen: `{report['commands_seen']}`")
    if report["errors"]:
        lines.append("- errors:")
        for error in report["errors"]:
            lines.append(f"  - `{error}`")
    else:
        lines.append("- errors: none")
    for label in ("plan", "selector", "guard"):
        summary = report.get(label)
        if not summary:
            continue
        lines.append(f"- {label} report: `{summary['path']}`")
        if summary.get("missing"):
            lines.append(f"  - missing: `true`")
            continue
        if summary.get("status") is not None:
            lines.append(f"  - status: `{summary['status']}`")
        if summary.get("selected") is not None:
            lines.append(f"  - selected: `{summary['selected']}`")
        if summary.get("summary") is not None:
            lines.append(f"  - summary: `{summary['summary']}`")
    lines.append("")
    lines.append("## Timing")
    lines.append("")
    lines.append(
        "| stage | count | total s | mean s | median s | p95 s | max s |"
    )
    lines.append("| --- | ---: | ---: | ---: | ---: | ---: | ---: |")
    for stage in ("trace", "split"):
        row = stages[stage]
        lines.append(
            "| `{stage}` | `{count}` | `{total}` | `{mean}` | `{median}` | `{p95}` | `{maxv}` |".format(
                stage=stage,
                count=row["count"],
                total=fmt(row["total_elapsed_seconds"]),
                mean=fmt(row["mean_elapsed_seconds"]),
                median=fmt(row["median_elapsed_seconds"]),
                p95=fmt(row["p95_elapsed_seconds"]),
                maxv=fmt(row["max_elapsed_seconds"]),
            )
        )
    lines.append("")
    lines.append(
        f"- total guarded elapsed time: `{overall['total_elapsed_seconds']}s` "
        f"(`{overall['total_elapsed_minutes']} min`)"
    )
    lines.append(
        f"- mean path elapsed time: `{overall['mean_path_elapsed_seconds']}s`; "
        f"p95 path elapsed time: `{overall['p95_path_elapsed_seconds']}s`"
    )
    lines.append("")
    lines.append("## Memory")
    lines.append("")
    lines.append(
        "| stage | max RSS MiB | min available MiB | max source KiB | worst RSS path |"
    )
    lines.append("| --- | ---: | ---: | ---: | --- |")
    for stage in ("trace", "split"):
        row = stages[stage]
        worst = row["worst_rss_path"]
        worst_text = (
            "n/a"
            if worst is None
            else f"`{worst['path_index']}` / rank `{worst['rank']}`"
        )
        lines.append(
            "| `{stage}` | `{rss}` | `{avail}` | `{src}` | {worst} |".format(
                stage=stage,
                rss=fmt(row["max_rss_mib"]),
                avail=fmt(row["min_available_seen_mib"]),
                src=fmt(row["max_source_kib"]),
                worst=worst_text,
            )
        )
    lines.append("")
    lines.append(
        f"- overall max RSS: `{overall['max_rss_mib']} MiB`"
    )
    lines.append(
        f"- hard RSS guard cap: `{overall['hard_rss_cap_mib']} MiB`; "
        f"headroom to cap: `{overall['rss_headroom_to_cap_mib']} MiB`"
    )
    lines.append(
        f"- minimum MemAvailable observed by guards: "
        f"`{overall['min_available_seen_mib']} MiB`"
    )
    lines.append("")
    lines.append("## Diagnostic Projection")
    lines.append("")
    lines.append(
        "These projections are scale heuristics only. They do not establish "
        "coverage and should not be used as proof evidence."
    )
    lines.append("")
    lines.append(
        f"- serial guarded CPU-hours per 1000 sampled paths: "
        f"`{overall['diagnostic_cpu_hours_per_1000_paths']}`"
    )
    lines.append(
        f"- ideal wall-hours per 1000 sampled paths at four independent workers: "
        f"`{overall['diagnostic_wall_hours_per_1000_paths_at_4_workers']}`"
    )
    lines.append("")
    path.write_text("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start-index", type=int, default=0)
    parser.add_argument("--count", type=int, required=True)
    parser.add_argument(
        "--run-pattern",
        default="scripts/generated/bellman_split_path_{index:02d}_missing_run.json",
        help="Python format string with {index}.",
    )
    parser.add_argument("--plan-json")
    parser.add_argument("--selector-json")
    parser.add_argument("--guard-json")
    parser.add_argument("--hard-rss-cap-mib", type=float, default=4500.0)
    parser.add_argument("--json", required=True, dest="json_out")
    parser.add_argument("--markdown", required=True)
    args = parser.parse_args()

    report = build_report(args)
    json_path = Path(args.json_out)
    markdown_path = Path(args.markdown)
    json_path.parent.mkdir(parents=True, exist_ok=True)
    markdown_path.parent.mkdir(parents=True, exist_ok=True)
    json_path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    write_markdown(report, markdown_path)

    overall = report["overall"]
    print(
        "bellman-split-metrics "
        f"status={report['status']} "
        f"paths={report['paths_seen']}/{report['range']['count']} "
        f"commands={report['commands_seen']} "
        f"total_elapsed_s={overall['total_elapsed_seconds']} "
        f"max_rss_mib={overall['max_rss_mib']} "
        f"headroom_mib={overall['rss_headroom_to_cap_mib']}"
    )


if __name__ == "__main__":
    main()
