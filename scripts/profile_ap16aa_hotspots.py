#!/usr/bin/env python3
"""Profile AP.16AA positive-survivor census hotspots.

This diagnostic is not proof evidence and emits no Lean.  It runs the same
AP.16I profile call used by the checkpointed AP.16AA census on a deliberately
small rank window under `cProfile`, then writes compact hotspot summaries.
"""

from __future__ import annotations

import argparse
import cProfile
import io
import json
import pstats
from pathlib import Path
import resource
import sys
import time
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_ap16i_positive_survivor_membership import profile as ap16i_profile  # noqa: E402


DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16ab_hotspots.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_PSTATS = Path("/tmp/cuboctahedron_ap16aa_hotspots.pstats")


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    tmp.replace(path)


def top_entries(stats: pstats.Stats, *, limit: int, key: int) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for func, values in sorted(
        stats.stats.items(),
        key=lambda item: item[1][key],
        reverse=True,
    )[:limit]:
        cc, nc, tt, ct, _callers = values
        filename, line, name = func
        rows.append({
            "file": filename,
            "line": line,
            "function": name,
            "primitive_calls": cc,
            "calls": nc,
            "total_seconds": tt,
            "cumulative_seconds": ct,
        })
    return rows


def profile_window(args: argparse.Namespace) -> tuple[dict[str, Any], pstats.Stats]:
    profiler = cProfile.Profile()
    t0 = time.monotonic()
    payload = profiler.runcall(
        ap16i_profile,
        ranges=[(args.rank_start, args.rank_start + args.limit)],
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        candidate_gate=args.candidate_gate,
        signature_gate=args.signature_gate,
    )
    elapsed = time.monotonic() - t0
    stats = pstats.Stats(profiler)
    if args.pstats:
        args.pstats.parent.mkdir(parents=True, exist_ok=True)
        stats.dump_stats(str(args.pstats))
    summary = {
        "schema_version": 1,
        "phase": args.phase,
        "mode": "ap16aa_hotspot_profile",
        "trusted_as_proof": False,
        "rank_start": args.rank_start,
        "rank_end": args.rank_start + args.limit,
        "limit": args.limit,
        "jobs": args.jobs,
        "elapsed_seconds": elapsed,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "total_calls": stats.total_calls,
        "primitive_calls": stats.prim_calls,
        "total_tt": stats.total_tt,
        "good_direction_cases": payload["total_good_direction_cases"],
        "ranks_with_good_direction": payload["ranks_with_good_direction"],
        "positive_candidate_groups": payload["positive_candidate_group_count"],
        "positive_survivor_signatures": payload["positive_survivor_signature_count"],
        "decision": payload["decision"],
        "top_cumulative": top_entries(stats, limit=args.top, key=3),
        "top_total": top_entries(stats, limit=args.top, key=2),
        "pstats": str(args.pstats) if args.pstats else None,
    }
    return summary, stats


def format_seconds(value: float) -> str:
    return f"{value:.4f}"


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} AP.16AA Hotspot Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Rank range: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Elapsed: `{format_seconds(payload['elapsed_seconds'])}` seconds",
        f"- Peak RSS: `{payload['max_rss_kib']}` KiB",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Positive candidate groups: `{payload['positive_candidate_groups']}`",
        f"- Positive survivor signatures: `{payload['positive_survivor_signatures']}`",
        f"- Total calls: `{payload['total_calls']}`",
        f"- Primitive calls: `{payload['primitive_calls']}`",
        "",
        "## Top Cumulative Time",
        "",
        "| Seconds | Calls | Function |",
        "| ---: | ---: | --- |",
    ]
    for row in payload["top_cumulative"]:
        lines.append(
            f"| {format_seconds(row['cumulative_seconds'])} | {row['calls']} | "
            f"`{Path(row['file']).name}:{row['line']}:{row['function']}` |"
        )
    lines.extend([
        "",
        "## Top Own Time",
        "",
        "| Seconds | Calls | Function |",
        "| ---: | ---: | --- |",
    ])
    for row in payload["top_total"]:
        lines.append(
            f"| {format_seconds(row['total_seconds'])} | {row['calls']} | "
            f"`{Path(row['file']).name}:{row['line']}:{row['function']}` |"
        )
    lines.extend([
        "",
        "## Interpretation",
        "",
        "Use this profile to decide whether AP.16AA needs a faster exact",
        "GoodDirection enumerator, a streaming source of identity/GoodDirection",
        "cases, or a cheaper post-processing layer.  The profile is intentionally",
        "small so it can be repeated without OOM risk.",
        "",
    ])
    return "\n".join(lines)


def print_stats(stats: pstats.Stats, *, sort: str, limit: int) -> str:
    output = io.StringIO()
    stats.stream = output
    stats.sort_stats(sort)
    stats.print_stats(limit)
    return output.getvalue()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=250)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--sample-limit", type=int, default=4)
    parser.add_argument("--candidate-gate", type=int, default=2000)
    parser.add_argument("--signature-gate", type=int, default=2000)
    parser.add_argument("--top", type=int, default=20)
    parser.add_argument("--phase", default="6Z.6K.8AP.16AB")
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--pstats", type=Path, default=DEFAULT_PSTATS)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise ValueError("--rank-start must be nonnegative")
    if args.limit <= 0:
        raise ValueError("--limit must be positive")
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.top <= 0:
        raise ValueError("--top must be positive")

    payload, stats = profile_window(args)
    write_json_atomic(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "rank_range": [payload["rank_start"], payload["rank_end"]],
        "elapsed_seconds": payload["elapsed_seconds"],
        "max_rss_kib": payload["max_rss_kib"],
        "good_direction_cases": payload["good_direction_cases"],
        "positive_candidate_groups": payload["positive_candidate_groups"],
        "positive_survivor_signatures": payload["positive_survivor_signatures"],
        "json": str(args.json),
        "md": str(args.md),
        "pstats": payload["pstats"],
    }, indent=2, sort_keys=True))
    print("\nTop cumulative profile:\n")
    print(print_stats(stats, sort="cumulative", limit=min(args.top, 12)))


if __name__ == "__main__":
    main()
