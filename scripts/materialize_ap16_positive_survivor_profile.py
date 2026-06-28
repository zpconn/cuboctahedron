#!/usr/bin/env python3
"""Materialize a bounded AP.16 positive-survivor profile from checkpoints.

The checkpointed census keeps detailed AP.16I-style catalogs outside the repo.
This helper merges a selected checkpoint directory into a tracked profile that
is compatible with the AP.16 shared-candidate emitters.  It is diagnostic
tooling only; the resulting JSON is not proof evidence.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import json
from pathlib import Path
from typing import Any


DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_ap16al_top5_manifest_extraction")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16am_top5_materialized_profile.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def catalog_files(checkpoint_dir: Path) -> list[Path]:
    return sorted(checkpoint_dir.glob("window_*.json"))


def merge_mask_candidates(
    left: dict[str, list[str]],
    right: dict[str, list[str]],
) -> dict[str, list[str]]:
    merged: dict[str, set[str]] = defaultdict(set)
    for source in (left, right):
        for mask, candidates in source.items():
            merged[str(mask)].update(str(candidate) for candidate in candidates)
    return {mask: sorted(candidates) for mask, candidates in sorted(merged.items())}


def merge_signatures(payloads: list[dict[str, Any]]) -> list[dict[str, Any]]:
    by_key: dict[str, dict[str, Any]] = {}
    for payload in payloads:
        for signature in payload.get("positive_survivor_signature_catalog", []):
            key = str(signature["key"])
            existing = by_key.get(key)
            if existing is None:
                by_key[key] = {
                    "key": key,
                    "good_masks": sorted(int(mask) for mask in signature.get("good_masks", [])),
                    "ranks": sorted(int(rank) for rank in signature.get("ranks", [])),
                    "case_count": int(signature.get("case_count", 0)),
                    "mask_candidates": {
                        str(mask): sorted(str(candidate) for candidate in candidates)
                        for mask, candidates in signature.get("mask_candidates", {}).items()
                    },
                }
                continue
            good_masks = sorted(set(existing["good_masks"]) | {
                int(mask) for mask in signature.get("good_masks", [])
            })
            if good_masks != existing["good_masks"]:
                raise ValueError(f"signature {key} has inconsistent good masks")
            existing["ranks"] = sorted(set(existing["ranks"]) | {
                int(rank) for rank in signature.get("ranks", [])
            })
            existing["case_count"] += int(signature.get("case_count", 0))
            existing["mask_candidates"] = merge_mask_candidates(
                existing.get("mask_candidates", {}),
                signature.get("mask_candidates", {}),
            )
    rows = []
    for row in by_key.values():
        row["rank_count"] = len(row["ranks"])
        rows.append(row)
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))


def merge_candidates(payloads: list[dict[str, Any]]) -> list[dict[str, Any]]:
    by_key: dict[str, dict[str, Any]] = {}
    for payload in payloads:
        for candidate in payload.get("positive_candidate_catalog", []):
            key = str(candidate["key"])
            existing = by_key.get(key)
            if existing is None:
                by_key[key] = {
                    **candidate,
                    "key": key,
                    "case_count": int(candidate.get("case_count", 0)),
                    "ranks": sorted(int(rank) for rank in candidate.get("ranks", [])),
                }
                continue
            existing["case_count"] += int(candidate.get("case_count", 0))
            existing["ranks"] = sorted(set(existing.get("ranks", [])) | {
                int(rank) for rank in candidate.get("ranks", [])
            })
    rows = []
    for row in by_key.values():
        row["rank_count"] = len(row.get("ranks", []))
        rows.append(row)
    return sorted(rows, key=lambda row: (-int(row.get("case_count", 0)), str(row["key"])))


def materialize(args: argparse.Namespace) -> dict[str, Any]:
    paths = catalog_files(args.checkpoint_dir)
    if args.max_windows is not None:
        paths = paths[:args.max_windows]
    if not paths:
        raise FileNotFoundError(f"no window checkpoints in {args.checkpoint_dir}")
    payloads = [read_json(path) for path in paths]
    counts: Counter[str] = Counter()
    windows: list[dict[str, Any]] = []
    total_good = 0
    ranks_with_good = 0
    max_rss = 0
    for payload in payloads:
        counts.update(payload.get("counts", {}))
        total_good += int(payload.get("total_good_direction_cases", 0))
        ranks_with_good += int(payload.get("ranks_with_good_direction", 0))
        max_rss = max(max_rss, int(payload.get("max_rss_kib", 0)))
        window = payload["window"]
        windows.append({
            "range": [window["start"], window["end"]],
            "good_direction_cases": payload.get("total_good_direction_cases", 0),
            "positive_candidate_groups": payload.get("positive_candidate_group_count", 0),
            "positive_survivor_signatures": payload.get("positive_survivor_signature_count", 0),
            "ranks_with_good_direction": payload.get("ranks_with_good_direction", 0),
            "elapsed_seconds": payload.get("elapsed_seconds", 0.0),
            "max_rss_kib": payload.get("max_rss_kib", 0),
        })
    signatures = merge_signatures(payloads)
    candidates = merge_candidates(payloads)
    return {
        "schema_version": 1,
        "mode": "ap16_materialized_positive_survivor_profile",
        "phase": args.phase,
        "trusted_as_proof": False,
        "checkpoint_dir": str(args.checkpoint_dir),
        "window_count": len(payloads),
        "rank_count_completed": sum(row["range"][1] - row["range"][0] for row in windows),
        "total_good_direction_cases": total_good,
        "ranks_with_good_direction": ranks_with_good,
        "positive_candidate_group_count": len(candidates),
        "positive_survivor_signature_count": len(signatures),
        "max_window_rss_kib": max_rss,
        "counts": dict(counts),
        "windows": sorted(windows, key=lambda row: row["range"][0]),
        "positive_candidate_catalog": candidates,
        "positive_survivor_signature_catalog": signatures,
        "top_positive_survivor_signatures": signatures[:args.top],
        "top_positive_candidate_groups": candidates[:args.top],
        "decision": {
            "status": "materialized-profile-complete",
            "notes": [
                "diagnostic profile only: not Lean proof evidence",
                "merged from detailed checkpoints outside the repo",
                "compatible with AP.16 shared-candidate smoke emitters",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} AP.16 Materialized Positive-Survivor Profile",
        "",
        "This diagnostic profile is not trusted as proof.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        f"- Windows: `{payload['window_count']}`",
        f"- Sampled ranks: `{payload['rank_count_completed']}`",
        f"- GoodDirection cases: `{payload['total_good_direction_cases']}`",
        f"- Candidate groups: `{payload['positive_candidate_group_count']}`",
        f"- Survivor signatures: `{payload['positive_survivor_signature_count']}`",
        f"- Max window RSS: `{payload['max_window_rss_kib']}` KiB",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection | Candidate groups | Signatures | Ranks w/Good | Seconds | RSS KiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["windows"]:
        lines.append(
            f"| `{row['range']}` | {row['good_direction_cases']} | "
            f"{row['positive_candidate_groups']} | {row['positive_survivor_signatures']} | "
            f"{row['ranks_with_good_direction']} | {float(row['elapsed_seconds']):.2f} | "
            f"{row['max_rss_kib']} |"
        )
    lines.extend(["", "## Top Signatures", ""])
    for signature in payload["top_positive_survivor_signatures"]:
        lines.append(
            f"- `{signature['key']}`: cases={signature['case_count']}, "
            f"ranks={signature['rank_count']}, masks={signature['good_masks']}"
        )
    lines.extend(["", "## Decision Notes", ""])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--phase", default="6Z.6K.8AP.16AM")
    parser.add_argument("--top", type=int, default=20)
    parser.add_argument("--max-windows", type=int, default=None)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    payload = materialize(args)
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "windows": payload["window_count"],
        "good_direction_cases": payload["total_good_direction_cases"],
        "candidate_groups": payload["positive_candidate_group_count"],
        "survivor_signatures": payload["positive_survivor_signature_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
