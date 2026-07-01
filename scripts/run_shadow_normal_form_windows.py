#!/usr/bin/env python3
"""Run the shadow normal-form profiler over checkpointed rank windows.

This is an untrusted exact profiler runner.  It is designed for the full
holonomy-normal-form validation gate: run many small windows, write one JSON
checkpoint per window, then aggregate only small count summaries.
"""

from __future__ import annotations

import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed
from collections import Counter
import json
from pathlib import Path
import time
from typing import Any

from shadow_normal_form_profile import EXPECTED_PAIR_WORDS, profile_range


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_markdown(path: Path, payload: dict[str, Any]) -> None:
    lines = [
        "# Shadow Normal-Form Window Aggregate",
        "",
        f"- Range: `[{payload['start']}, {payload['end']})`",
        f"- Window size: `{payload['window_size']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Scanned words: `{payload['scanned']:,}`",
        f"- Empty reduced shadow: `{payload['empty_shadow_count']:,}`",
        f"- Identity linear words: `{payload['identity_count']:,}`",
        f"- Mismatches: `{payload['mismatch_count']:,}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        "",
        "## Confusion Matrix",
        "",
        "| shadow / linear | identity | nonidentity |",
        "| --- | ---: | ---: |",
        (
            f"| empty | `{payload['confusion']['empty_and_identity']:,}` | "
            f"`{payload['confusion']['empty_and_nonidentity']:,}` |"
        ),
        (
            f"| nonempty | `{payload['confusion']['nonempty_and_identity']:,}` | "
            f"`{payload['confusion']['nonempty_and_nonidentity']:,}` |"
        ),
        "",
        "## Window Status",
        "",
        "| status | count |",
        "| --- | ---: |",
        f"| completed | `{payload['completed_windows']}` |",
        f"| reused existing | `{payload['reused_windows']}` |",
    ]
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n")


def window_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


def run_one_window(start: int, end: int, checkpoint_dir: str, force: bool) -> dict[str, Any]:
    directory = Path(checkpoint_dir)
    path = window_path(directory, start, end)
    if path.exists() and not force:
        payload = read_json(path)
        payload["reused_existing_checkpoint"] = True
        return payload
    payload = profile_range(
        start,
        end,
        top=0,
        mismatch_limit=20,
        progress=None,
    )
    payload["reused_existing_checkpoint"] = False
    write_json(path, payload)
    return payload


def make_windows(start: int, end: int, window_size: int) -> list[tuple[int, int]]:
    windows = []
    lo = start
    while lo < end:
        hi = min(end, lo + window_size)
        windows.append((lo, hi))
        lo = hi
    return windows


def aggregate(payloads: list[dict[str, Any]], *, start: int, end: int,
              window_size: int, jobs: int, elapsed: float,
              checkpoint_dir: Path) -> dict[str, Any]:
    confusion = Counter()
    lengths = Counter()
    parity = Counter()
    mismatch_examples: list[dict[str, Any]] = []
    reused = 0
    for payload in payloads:
        confusion.update(payload["confusion"])
        lengths.update(dict(payload["reduced_length_distribution"]))
        parity.update(dict(payload["final_parity_distribution"]))
        mismatch_examples.extend(payload.get("mismatch_examples", []))
        if payload.get("reused_existing_checkpoint"):
            reused += 1
    empty_shadow_count = (
        confusion["empty_and_identity"] + confusion["empty_and_nonidentity"]
    )
    identity_count = (
        confusion["empty_and_identity"] + confusion["nonempty_and_identity"]
    )
    mismatch_count = (
        confusion["empty_and_nonidentity"] + confusion["nonempty_and_identity"]
    )
    return {
        "schema_version": 1,
        "mode": "shadow-normal-form-window-aggregate",
        "start": start,
        "end": end,
        "window_size": window_size,
        "jobs": jobs,
        "checkpoint_dir": str(checkpoint_dir),
        "scanned": sum(int(payload["scanned"]) for payload in payloads),
        "elapsed_seconds": elapsed,
        "empty_shadow_count": empty_shadow_count,
        "identity_count": identity_count,
        "mismatch_count": mismatch_count,
        "confusion": {
            "empty_and_identity": confusion["empty_and_identity"],
            "empty_and_nonidentity": confusion["empty_and_nonidentity"],
            "nonempty_and_identity": confusion["nonempty_and_identity"],
            "nonempty_and_nonidentity": confusion["nonempty_and_nonidentity"],
        },
        "reduced_length_distribution": sorted((int(k), v) for k, v in lengths.items()),
        "final_parity_distribution": sorted((str(k), v) for k, v in parity.items()),
        "mismatch_examples": mismatch_examples[:50],
        "completed_windows": len(payloads),
        "reused_windows": reused,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int, default=EXPECTED_PAIR_WORDS)
    parser.add_argument("--window-size", type=int, default=100_000)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--checkpoint-dir", type=Path, required=True)
    parser.add_argument("--json", type=Path, required=True)
    parser.add_argument("--markdown", type=Path)
    parser.add_argument("--force", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    if not (0 <= args.start <= args.end <= EXPECTED_PAIR_WORDS):
        raise SystemExit("expected 0 <= start <= end <= numPairWords")
    if args.window_size <= 0:
        raise SystemExit("window size must be positive")
    if args.jobs <= 0:
        raise SystemExit("jobs must be positive")
    args.checkpoint_dir.mkdir(parents=True, exist_ok=True)
    windows = make_windows(args.start, args.end, args.window_size)
    began = time.time()
    payloads: list[dict[str, Any]] = []
    if args.jobs == 1:
      for lo, hi in windows:
          payloads.append(run_one_window(lo, hi, str(args.checkpoint_dir), args.force))
          print(f"completed shadow window [{lo},{hi})", flush=True)
    else:
      with ProcessPoolExecutor(max_workers=args.jobs) as pool:
          futures = [
              pool.submit(run_one_window, lo, hi, str(args.checkpoint_dir), args.force)
              for lo, hi in windows
          ]
          for future in as_completed(futures):
              payload = future.result()
              payloads.append(payload)
              print(
                  f"completed shadow window "
                  f"[{payload['start']},{payload['end']}) "
                  f"mismatches={payload['mismatch_count']}",
                  flush=True,
              )
    payloads.sort(key=lambda payload: int(payload["start"]))
    elapsed = time.time() - began
    combined = aggregate(
        payloads,
        start=args.start,
        end=args.end,
        window_size=args.window_size,
        jobs=args.jobs,
        elapsed=elapsed,
        checkpoint_dir=args.checkpoint_dir,
    )
    write_json(args.json, combined)
    if args.markdown:
        write_markdown(args.markdown, combined)
    print(json.dumps(combined, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
