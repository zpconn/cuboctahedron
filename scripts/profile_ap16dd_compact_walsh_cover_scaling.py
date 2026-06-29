#!/usr/bin/env python3
"""AP.16DD compact Walsh-cover scaling sampler.

AP16DC proved one rank-100805 survivor signature by covering all bad masks with
20 Walsh subcubes and compact denominator consumers.  This profiler samples
materialized positive-survivor signatures and reruns the AP16BJ exact subcube
cover search for one representative rank/mask per signature.

The output is diagnostic only.  Its purpose is to decide whether the AP16DC
theorem surface can scale before emitting more Lean.
"""

from __future__ import annotations

import argparse
import json
import statistics
import time
from pathlib import Path
from typing import Any

from profile_ap16bj_walsh_subcube_cover import profile as profile_walsh_cover


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16am_top5_materialized_profile.json"
)
DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16dd_compact_walsh_cover_scaling.json"
)


def select_signatures(profile: dict[str, Any], limit: int) -> list[dict[str, Any]]:
    signatures = profile.get("top_positive_survivor_signatures", [])
    if not signatures:
        signatures = profile.get("positive_survivor_signature_catalog", [])
    selected = []
    for signature in signatures:
        ranks = [int(rank) for rank in signature.get("ranks", [])]
        good_masks = [int(mask) for mask in signature.get("good_masks", [])]
        if ranks and good_masks:
            selected.append(signature)
        if len(selected) >= limit:
            break
    return selected


def summarize(results: list[dict[str, Any]]) -> dict[str, Any]:
    selected_counts = [int(item["selected_count"]) for item in results]
    candidate_counts = [int(item["candidate_count"]) for item in results]
    bad_mask_counts = [int(item["bad_mask_count"]) for item in results]
    selected_impacts = sorted({
        int(candidate["impact"]) - 1
        for item in results
        for candidate in item["selected"]
    })
    per_signature_impacts = [
        len({int(candidate["impact"]) - 1 for candidate in item["selected"]})
        for item in results
    ]
    uncovered = [item for item in results if int(item["uncovered_count"]) != 0]
    return {
        "sampled_signature_count": len(results),
        "uncovered_signature_count": len(uncovered),
        "selected_subcubes": {
            "min": min(selected_counts) if selected_counts else 0,
            "max": max(selected_counts) if selected_counts else 0,
            "mean": statistics.fmean(selected_counts) if selected_counts else 0,
            "total": sum(selected_counts),
        },
        "candidate_subcubes": {
            "min": min(candidate_counts) if candidate_counts else 0,
            "max": max(candidate_counts) if candidate_counts else 0,
            "mean": statistics.fmean(candidate_counts) if candidate_counts else 0,
        },
        "bad_masks": {
            "min": min(bad_mask_counts) if bad_mask_counts else 0,
            "max": max(bad_mask_counts) if bad_mask_counts else 0,
            "mean": statistics.fmean(bad_mask_counts) if bad_mask_counts else 0,
        },
        "selected_word_impacts_union": selected_impacts,
        "selected_word_impact_union_count": len(selected_impacts),
        "selected_word_impacts_per_signature": {
            "min": min(per_signature_impacts) if per_signature_impacts else 0,
            "max": max(per_signature_impacts) if per_signature_impacts else 0,
            "mean": statistics.fmean(per_signature_impacts) if per_signature_impacts else 0,
        },
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    summary = data["summary"]
    lines = [
        "# Phase 6Z.6K.8AP.16DD Compact Walsh-Cover Scaling",
        "",
        "Diagnostic only; not proof data.",
        "",
        f"- sampled signatures: `{summary['sampled_signature_count']}`",
        f"- uncovered signatures: `{summary['uncovered_signature_count']}`",
        f"- selected subcubes total: `{summary['selected_subcubes']['total']}`",
        f"- selected subcubes mean: `{summary['selected_subcubes']['mean']:.2f}`",
        f"- selected subcubes max: `{summary['selected_subcubes']['max']}`",
        f"- selected word-impact union count: `{summary['selected_word_impact_union_count']}`",
        f"- selected word impacts: `{summary['selected_word_impacts_union']}`",
        f"- elapsed seconds: `{data['elapsed_seconds']:.2f}`",
        "",
        "| index | key prefix | rank | anchor mask | good masks | bad masks | candidates | selected | uncovered | word impacts |",
        "| ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for item in data["results"]:
        impacts = sorted({int(candidate["impact"]) - 1 for candidate in item["selected"]})
        lines.append(
            f"| {item['sample_index']} | `{item['signature_key'][:10]}` | "
            f"{item['rank']} | {item['anchor_mask']} | {len(item['good_masks'])} | "
            f"{item['bad_mask_count']} | {item['candidate_count']} | "
            f"{item['selected_count']} | {item['uncovered_count']} | `{impacts}` |"
        )
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--limit", type=int, default=20)
    args = parser.parse_args()
    if args.limit <= 0:
        raise SystemExit("--limit must be positive")

    started = time.monotonic()
    source_profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signatures = select_signatures(source_profile, args.limit)
    results = []
    for index, signature in enumerate(signatures):
        rank = int(signature["ranks"][0])
        anchor_mask = int(signature["good_masks"][0])
        cover = profile_walsh_cover(args.profile, rank, anchor_mask)
        cover["sample_index"] = index
        cover["signature_key"] = signature["key"]
        cover["rank"] = rank
        cover["anchor_mask"] = anchor_mask
        results.append(cover)
        print(
            f"[{index + 1}/{len(signatures)}] rank={rank} mask={anchor_mask} "
            f"selected={cover['selected_count']} uncovered={cover['uncovered_count']}"
        )

    elapsed = time.monotonic() - started
    data = {
        "phase": "Phase 6Z.6K.8AP.16DD",
        "schema_version": 1,
        "source_profile": str(args.profile),
        "trusted_as_proof": False,
        "elapsed_seconds": elapsed,
        "summary": summarize(results),
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; sampled={len(results)} "
        f"uncovered={data['summary']['uncovered_signature_count']} "
        f"max_selected={data['summary']['selected_subcubes']['max']}"
    )


if __name__ == "__main__":
    main()
