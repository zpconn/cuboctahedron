#!/usr/bin/env python3
"""Run the Phase 6Z.6I.1 scaled semantic family pilot benchmark."""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path
from statistics import geometric_mean


REPO_ROOT = Path(__file__).resolve().parents[1]
REPORT_JSON = (
    REPO_ROOT / "scripts" / "generated" / "phase6z6i1_scaled_family_pilot.json"
)
REPORT_MD = REPORT_JSON.with_suffix(".md")

TARGETS = {
    "rat_baseline": REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "Benchmarks"
    / "Phase6Z6I"
    / "RatBaseline.lean",
    "scaled_family": REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "Translation"
    / "TwoSource"
    / "SupportFamilies"
    / "ScaledFamilySmoke.lean",
}


@dataclass
class RunResult:
    target: str
    repeat: int
    returncode: int
    elapsed_s: float
    max_rss_kib: int | None
    stdout_tail: str
    stderr_tail: str


def tail(text: str, limit: int = 4000) -> str:
    return text[-limit:]


def lean_output_path(target_name: str, repeat: int) -> Path:
    out_dir = REPO_ROOT / ".lake" / "build" / "phase6z6i1"
    out_dir.mkdir(parents=True, exist_ok=True)
    return out_dir / f"{target_name}_{repeat}.olean"


def parse_max_rss(stderr: str) -> int | None:
    match = re.search(r"Maximum resident set size \(kbytes\):\s*(\d+)", stderr)
    if not match:
        return None
    return int(match.group(1))


def lean_path() -> str:
    proc = subprocess.run(
        ["lake", "env", "printenv", "LEAN_PATH"],
        cwd=REPO_ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=True,
    )
    return proc.stdout.strip()


def run_target(target_name: str, target: Path, repeat: int, lean_path_value: str) -> RunResult:
    out = lean_output_path(target_name, repeat)
    ilean = out.with_suffix(".ilean")
    for path in (out, ilean):
        try:
            path.unlink()
        except FileNotFoundError:
            pass
    cmd = [
        "/usr/bin/time",
        "-v",
        "lake",
        "env",
        "lean",
        "-R",
        str(REPO_ROOT),
        "-o",
        str(out),
        "-i",
        str(ilean),
        str(target),
    ]
    env = os.environ.copy()
    env["LEAN_PATH"] = lean_path_value
    started = time.perf_counter()
    proc = subprocess.run(
        cmd,
        cwd=REPO_ROOT,
        env=env,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    elapsed = time.perf_counter() - started
    return RunResult(
        target=target_name,
        repeat=repeat,
        returncode=proc.returncode,
        elapsed_s=elapsed,
        max_rss_kib=parse_max_rss(proc.stderr),
        stdout_tail=tail(proc.stdout),
        stderr_tail=tail(proc.stderr),
    )


def summarize(results: list[RunResult]) -> dict:
    by_target: dict[str, list[RunResult]] = {}
    for result in results:
        by_target.setdefault(result.target, []).append(result)

    summary: dict[str, dict] = {}
    for target, runs in by_target.items():
        ok_runs = [run for run in runs if run.returncode == 0]
        elapsed = [run.elapsed_s for run in ok_runs]
        rss = [run.max_rss_kib for run in ok_runs if run.max_rss_kib is not None]
        summary[target] = {
            "runs": len(runs),
            "passed": len(ok_runs),
            "min_elapsed_s": min(elapsed) if elapsed else None,
            "geomean_elapsed_s": geometric_mean(elapsed) if elapsed else None,
            "max_rss_kib": max(rss) if rss else None,
        }

    rat = summary.get("rat_baseline", {})
    scaled = summary.get("scaled_family", {})
    rat_time = rat.get("min_elapsed_s")
    scaled_time = scaled.get("min_elapsed_s")
    rat_rss = rat.get("max_rss_kib")
    scaled_rss = scaled.get("max_rss_kib")
    speedup = (
        rat_time / scaled_time
        if isinstance(rat_time, (int, float))
        and isinstance(scaled_time, (int, float))
        and scaled_time > 0
        else None
    )
    rss_ratio = (
        scaled_rss / rat_rss
        if isinstance(rat_rss, int)
        and isinstance(scaled_rss, int)
        and rat_rss > 0
        else None
    )
    accepted = (
        speedup is not None
        and speedup >= 1.25
        and rss_ratio is not None
        and rss_ratio <= 1.25
        and all(run.returncode == 0 for run in results)
    )
    return {
        "targets": summary,
        "speedup_min_elapsed": speedup,
        "rss_ratio_scaled_over_rat": rss_ratio,
        "decision": "accept" if accepted else "reject",
        "acceptance_rule": "accept if all runs pass, min-time speedup >= 1.25x, RSS ratio <= 1.25",
    }


def write_reports(results: list[RunResult], summary: dict) -> None:
    REPORT_JSON.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "summary": summary,
        "runs": [result.__dict__ for result in results],
    }
    REPORT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Phase 6Z.6I.1 Scaled Family Pilot",
        "",
        f"Decision: **{summary['decision']}**",
        "",
        summary["acceptance_rule"],
        "",
        "| target | passed/runs | min elapsed (s) | geomean elapsed (s) | max RSS (KiB) |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for target, data in summary["targets"].items():
        lines.append(
            "| {target} | {passed}/{runs} | {min_elapsed:.3f} | {geomean:.3f} | {rss} |".format(
                target=target,
                passed=data["passed"],
                runs=data["runs"],
                min_elapsed=data["min_elapsed_s"] or 0.0,
                geomean=data["geomean_elapsed_s"] or 0.0,
                rss=data["max_rss_kib"] or 0,
            )
        )
    lines.extend(
        [
            "",
            f"Min-time speedup: `{summary['speedup_min_elapsed']:.3f}x`"
            if summary["speedup_min_elapsed"] is not None
            else "Min-time speedup: unavailable",
            f"RSS ratio scaled/rat: `{summary['rss_ratio_scaled_over_rat']:.3f}`"
            if summary["rss_ratio_scaled_over_rat"] is not None
            else "RSS ratio scaled/rat: unavailable",
            "",
        ]
    )
    REPORT_MD.write_text("\n".join(lines))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repeats", type=int, default=2)
    args = parser.parse_args()

    lp = lean_path()
    results: list[RunResult] = []
    for repeat in range(args.repeats):
        for target_name, target in TARGETS.items():
            print(f"[phase6z6i1] {target_name} repeat {repeat + 1}/{args.repeats}")
            result = run_target(target_name, target, repeat, lp)
            results.append(result)
            print(
                f"  rc={result.returncode} elapsed={result.elapsed_s:.3f}s "
                f"rss={result.max_rss_kib}"
            )

    summary = summarize(results)
    write_reports(results, summary)
    print(f"[phase6z6i1] wrote {REPORT_JSON.relative_to(REPO_ROOT)}")
    print(f"[phase6z6i1] decision={summary['decision']}")
    return 0 if all(result.returncode == 0 for result in results) else 1


if __name__ == "__main__":
    raise SystemExit(main())
