#!/usr/bin/env python3
"""Profile semantic row-template/diamond families for translation survivors.

This script is diagnostic only and is not trusted as proof.  It deliberately
scans a bounded set of representative windows selected from prior census
checkpoints, then groups GoodDirection translation survivors by semantic family
keys rather than by raw ranks.
"""

from __future__ import annotations

import argparse
from collections import Counter
from concurrent.futures import ProcessPoolExecutor, as_completed
import json
import math
from pathlib import Path
import sys
import time
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symmetry_compression import (  # noqa: E402
    canonical_translation_with_symmetry,
    fraction_key,
    seq_key,
    sorted_source_farkas_terms,
    stable_digest,
    two_source_multipliers_for_lines,
    word_key,
)
from profile_translation_row_relation_templates import (  # noqa: E402
    diamond_obstructions,
    line_key,
    matching_templates,
    multipliers_key,
)
from profile_translation_source_pair_params import (  # noqa: E402
    source_pair_key,
    source_pair_payload,
)
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_OUTPUT = Path("scripts/generated/translation_row_relation_families_profile.json")
COUNT_KEYS = [
    "pair_words_scanned",
    "identity_words",
    "nonidentity_words_skipped",
    "translation_sign_assignments",
    "not_good_direction_masks",
    "good_direction_survivors",
    "covered_cases",
    "uncovered_cases",
    "invalid_cases",
    "non_two_source_cases",
    "d4_transportable_cases",
    "d4_canonical_classification_failures",
]


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


def load_checkpoint_summaries(
    checkpoint_dirs: list[Path],
    *,
    require_diamond: bool = True,
) -> list[dict[str, Any]]:
    by_window: dict[tuple[int, int], dict[str, Any]] = {}
    for checkpoint_dir in checkpoint_dirs:
        for path in sorted(checkpoint_dir.glob("window_*.json")):
            payload = read_json(path)
            if payload.get("mode") != "translation-row-relation-template-census-window":
                continue
            if bool(payload.get("diamond_enabled", False)) != require_diamond:
                continue
            window = payload["window"]
            key = (int(window["start"]), int(window["end"]))
            existing = by_window.get(key)
            if existing is None or float(payload.get("elapsed_seconds", 0.0)) < float(
                existing.get("elapsed_seconds", math.inf)
            ):
                counts = payload["result"]["counts"]
                by_window[key] = {
                    "start": key[0],
                    "end": key[1],
                    "width": key[1] - key[0],
                    "elapsed_seconds": float(payload.get("elapsed_seconds", 0.0)),
                    "max_rss_kib": int(payload.get("max_rss_kib", 0)),
                    "good_direction_survivors": int(
                        counts.get("good_direction_survivors", 0)
                    ),
                    "covered_cases": int(counts.get("covered_cases", 0)),
                    "uncovered_cases": int(counts.get("uncovered_cases", 0)),
                    "checkpoint": str(path),
                }
    return [by_window[key] for key in sorted(by_window)]


def select_windows(
    summaries: list[dict[str, Any]],
    *,
    dense_window_count: int,
    sparse_window_count: int,
    max_rank_mass: int,
    dense_selection: str,
    explicit_windows: list[tuple[int, int]],
) -> list[dict[str, Any]]:
    by_window = {
        (int(summary["start"]), int(summary["end"])): summary
        for summary in summaries
    }
    selected: list[dict[str, Any]] = []
    selected_keys: set[tuple[int, int]] = set()
    rank_mass = 0

    def try_add(summary: dict[str, Any]) -> None:
        nonlocal rank_mass
        key = (summary["start"], summary["end"])
        if key in selected_keys:
            return
        if rank_mass + int(summary["width"]) > max_rank_mass:
            return
        selected.append(summary)
        selected_keys.add(key)
        rank_mass += int(summary["width"])

    for window in explicit_windows:
        if window not in by_window:
            raise ValueError(f"explicit window has no checkpoint: {window}")
        try_add(by_window[window])

    def dense_key(item: dict[str, Any]) -> tuple[float, float, int]:
        good = int(item["good_direction_survivors"])
        elapsed = max(float(item["elapsed_seconds"]), 1e-9)
        if dense_selection == "survivors":
            return (-good, -elapsed, int(item["start"]))
        if dense_selection == "elapsed":
            return (-elapsed, -good, int(item["start"]))
        if dense_selection == "throughput":
            return (-(good / elapsed), -good, int(item["start"]))
        raise ValueError(f"unknown dense selection mode: {dense_selection}")

    dense = sorted(summaries, key=dense_key)
    for summary in dense[:dense_window_count]:
        try_add(summary)

    sparse_candidates = [
        item for item in summaries if int(item["good_direction_survivors"]) == 0
    ] or sorted(summaries, key=lambda item: int(item["good_direction_survivors"]))
    if sparse_window_count > 0 and sparse_candidates:
        if sparse_window_count == 1:
            indices = [0]
        else:
            last = len(sparse_candidates) - 1
            indices = [
                round(i * last / (sparse_window_count - 1))
                for i in range(sparse_window_count)
            ]
        for index in indices:
            try_add(sparse_candidates[index])

    if not selected and summaries:
        try_add(summaries[0])
    return sorted(selected, key=lambda item: int(item["start"]))


def normalize_fraction_vector(values: tuple[Any, ...]) -> str:
    return "|".join(fraction_key(value) for value in values)


def exact_row_shape_key(
    *,
    first_line: tuple[Any, Any, Any],
    second_line: tuple[Any, Any, Any],
    multipliers: tuple[Any, Any],
) -> str:
    return (
        f"w={normalize_fraction_vector(multipliers)};"
        f"first={normalize_fraction_vector(first_line)};"
        f"second={normalize_fraction_vector(second_line)}"
    )


def source_pair_digest(source_terms: list[dict[str, Any]]) -> str:
    return stable_digest(source_pair_key(source_pair_payload(source_terms)))


def primary_family_key(
    *,
    matches: list[str],
    diamond_matches: list[dict[str, Any]],
    source_digest: str,
) -> dict[str, str]:
    template = matches[0] if matches else "uncovered"
    diamond_rows = "+".join(sorted(str(item["row"]) for item in diamond_matches))
    diamond_or_template = (
        f"diamond:{diamond_rows}|source={source_digest}"
        if diamond_rows
        else f"template:{template}|source={source_digest}"
    )
    return {
        "template_only": template,
        "template_source": f"{template}|source={source_digest}",
        "diamond_then_template_source": diamond_or_template,
    }


def classify_choice(
    word: list[str],
    mask: int,
    *,
    rank: int | None,
    enable_diamond: bool,
) -> dict[str, Any]:
    needs = exact.translation_needs_farkas(word, mask)
    if needs is None:
        return {"status": "not_good_direction"}
    b, seq = needs
    source_terms = sorted_source_farkas_terms(
        exact.source_terms_for_translation_farkas(seq, b)
    )
    if len(source_terms) != 2:
        return {
            "status": "non_two_source",
            "source_term_count": len(source_terms),
        }
    sources = exact.translation_constraint_sources_py(seq)
    constraints = exact.translation_constraints_py(seq, b)
    indices = [sources.index(term["source"]) for term in source_terms]
    first_line = constraints[indices[0]]
    second_line = constraints[indices[1]]
    multipliers = two_source_multipliers_for_lines(first_line, second_line)
    valid = shape_valid(
        multipliers=multipliers,
        first_line=first_line,
        second_line=second_line,
    )
    matches = matching_templates(first_line, second_line, multipliers)
    diamond_matches = (
        diamond_obstructions(first_line, second_line)
        if enable_diamond else []
    )
    digest = source_pair_digest(source_terms)
    keys = primary_family_key(
        matches=matches,
        diamond_matches=diamond_matches,
        source_digest=digest,
    )
    keys["exact_row_shape_reference"] = exact_row_shape_key(
        first_line=first_line,
        second_line=second_line,
        multipliers=multipliers,
    )
    return {
        "status": "covered" if valid and matches else "uncovered",
        "valid": valid,
        "matches": matches,
        "diamond_matches": diamond_matches,
        "family_keys": keys,
        "sample": {
            "rank": rank,
            "mask": mask,
            "word": word_key(tuple(word)),
            "seq": seq_key(seq),
            "sources": [term["source"] for term in source_terms],
            "source_pair_digest": digest,
            "first_line": line_key(first_line),
            "second_line": line_key(second_line),
            "multipliers": multipliers_key(multipliers),
            "matches": matches,
            "diamond_matches": diamond_matches,
        },
    }


def scan_window_worker(args: tuple[int, int, int, bool, bool]) -> dict[str, Any]:
    start, end, sample_limit, enable_diamond, use_d4 = args
    counts = Counter()
    family_counts: dict[str, Counter[str]] = {
        "template_only": Counter(),
        "template_source": Counter(),
        "diamond_then_template_source": Counter(),
        "d4_diamond_then_template_source": Counter(),
        "exact_row_shape_reference": Counter(),
    }
    samples: dict[str, list[dict[str, Any]]] = {
        "uncovered": [],
        "invalid": [],
        "families": [],
    }
    d4_cache: dict[tuple[tuple[str, ...], int], dict[str, Any]] = {}

    for rank in range(start, end):
        word = exact.pair_word_at_rank(rank)
        counts["pair_words_scanned"] += 1
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            raw = classify_choice(
                word,
                mask,
                rank=rank,
                enable_diamond=enable_diamond,
            )
            if raw["status"] == "not_good_direction":
                counts["not_good_direction_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            if raw["status"] == "non_two_source":
                counts["non_two_source_cases"] += 1
                continue
            if not raw.get("valid", False):
                counts["invalid_cases"] += 1
                if len(samples["invalid"]) < sample_limit:
                    samples["invalid"].append(raw["sample"])
                continue
            if raw["status"] != "covered":
                counts["uncovered_cases"] += 1
                if len(samples["uncovered"]) < sample_limit:
                    samples["uncovered"].append(raw["sample"])
                continue
            counts["covered_cases"] += 1
            keys = raw["family_keys"]
            for variant in [
                "template_only",
                "template_source",
                "diamond_then_template_source",
                "exact_row_shape_reference",
            ]:
                family_counts[variant][keys[variant]] += 1
            if use_d4:
                canonical_word, canonical_mask, sym_id = canonical_translation_with_symmetry(
                    tuple(word), mask
                )
                cache_key = (canonical_word, canonical_mask)
                canonical = d4_cache.get(cache_key)
                if canonical is None:
                    canonical = classify_choice(
                        list(canonical_word),
                        canonical_mask,
                        rank=None,
                        enable_diamond=enable_diamond,
                    )
                    d4_cache[cache_key] = canonical
                if canonical.get("status") == "covered":
                    d4_key = canonical["family_keys"]["diamond_then_template_source"]
                    family_counts["d4_diamond_then_template_source"][
                        f"{d4_key}|canon_mask={canonical_mask}"
                    ] += 1
                    counts["d4_transportable_cases"] += 1
                else:
                    family_counts["d4_diamond_then_template_source"][
                        keys["diamond_then_template_source"]
                    ] += 1
                    counts["d4_canonical_classification_failures"] += 1
            else:
                family_counts["d4_diamond_then_template_source"][
                    keys["diamond_then_template_source"]
                ] += 1
            if len(samples["families"]) < sample_limit:
                sample = dict(raw["sample"])
                sample["family_keys"] = keys
                samples["families"].append(sample)

    return {
        "window": {"start": start, "end": end, "width": end - start},
        "counts": dict(counts),
        "family_counts": {
            variant: dict(counter)
            for variant, counter in family_counts.items()
        },
        "samples": samples,
    }


def merge_counter(target: Counter[str], incoming: dict[str, int]) -> None:
    for key, value in incoming.items():
        target[key] += int(value)


def finalized_counts(counter: Counter[str]) -> dict[str, int]:
    result = {key: int(counter.get(key, 0)) for key in COUNT_KEYS}
    for key in sorted(counter):
        result.setdefault(key, int(counter[key]))
    return result


def extend_samples(target: list[dict[str, Any]], incoming: list[dict[str, Any]], limit: int) -> None:
    if len(target) >= limit:
        return
    target.extend(incoming[: limit - len(target)])


def singleton_stats(counter: Counter[str]) -> dict[str, Any]:
    total = sum(counter.values())
    singleton_count = sum(1 for value in counter.values() if value == 1)
    singleton_mass = singleton_count
    return {
        "family_count": len(counter),
        "largest_family_size": max(counter.values(), default=0),
        "singleton_family_count": singleton_count,
        "singleton_case_mass": singleton_mass,
        "singleton_case_fraction": singleton_mass / total if total else 0.0,
        "top_families": [
            {"family_key": key, "cases": value}
            for key, value in counter.most_common(25)
        ],
    }


def decision(
    *,
    counts: Counter[str],
    variant_stats: dict[str, dict[str, Any]],
    family_limit: int,
    singleton_fraction_limit: float,
    tail_fraction_limit: float,
    discovery_curve: list[dict[str, Any]],
) -> dict[str, Any]:
    notes: list[str] = []
    if counts["uncovered_cases"] or counts["invalid_cases"] or counts["non_two_source_cases"]:
        return {
            "status": "rejected_family_coordinate",
            "best_variant": None,
            "notes": [
                "Some GoodDirection survivors were uncovered, invalid, or not two-source."
            ],
        }
    eligible = {
        variant: stats
        for variant, stats in variant_stats.items()
        if variant != "exact_row_shape_reference"
    }
    best_variant, best_stats = min(
        eligible.items(),
        key=lambda item: (
            int(item[1]["family_count"]),
            -int(item[1]["largest_family_size"]),
            item[0],
        ),
    )
    if discovery_curve:
        last = discovery_curve[-1]["variant_family_counts"].get(best_variant, 0)
        cutoff = max(0, math.floor(len(discovery_curve) * 0.75) - 1)
        earlier = discovery_curve[cutoff]["variant_family_counts"].get(best_variant, 0)
        tail_new = max(0, last - earlier)
        tail_fraction = tail_new / last if last else 0.0
    else:
        tail_new = 0
        tail_fraction = 0.0
    notes.append(
        f"Best observed variant is `{best_variant}` with "
        f"{best_stats['family_count']:,} families."
    )
    notes.append(
        f"Tail discovery for best variant added {tail_new:,} families "
        f"({tail_fraction:.2%})."
    )
    if int(best_stats["family_count"]) > family_limit:
        status = "rejected_family_coordinate"
        notes.append("Observed family count exceeds the configured family limit.")
    elif float(best_stats["singleton_case_fraction"]) > singleton_fraction_limit:
        status = "needs_more_samples"
        notes.append("Singleton case fraction is still above the configured limit.")
    elif tail_fraction > tail_fraction_limit:
        status = "needs_more_samples"
        notes.append("Family discovery tail is still too active for Lean emission.")
    else:
        status = "accepted_for_family_smoke"
        notes.append("Observed family coordinate is small enough for a Lean smoke.")
    return {
        "status": status,
        "best_variant": best_variant,
        "tail_new_family_count": tail_new,
        "tail_new_family_fraction": tail_fraction,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision_payload = payload["decision"]
    lines = [
        "# Phase 6Z.6E Translation Row-Template Family Profile",
        "",
        "This report is diagnostic only; Lean must check any emitted family theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Selected windows | {len(payload['selected_windows']):,} |",
        f"| Scanned rank mass | {payload['scanned_rank_mass']:,} |",
        f"| Pair words scanned | {counts.get('pair_words_scanned', 0):,} |",
        f"| Identity-linear words | {counts.get('identity_words', 0):,} |",
        f"| GoodDirection survivors | {counts.get('good_direction_survivors', 0):,} |",
        f"| Covered cases | {counts.get('covered_cases', 0):,} |",
        f"| Uncovered cases | {counts.get('uncovered_cases', 0):,} |",
        f"| Invalid cases | {counts.get('invalid_cases', 0):,} |",
        f"| Non-two-source cases | {counts.get('non_two_source_cases', 0):,} |",
        f"| Elapsed seconds | {payload['elapsed_seconds']:.2f} |",
        "",
        f"Decision: **{decision_payload['status']}**",
        f"Best variant: `{decision_payload.get('best_variant')}`",
        "",
    ]
    for note in decision_payload["notes"]:
        lines.append(f"- {note}")
    lines.extend(["", "## Family Variant Summary", ""])
    for variant, stats in sorted(payload["variant_stats"].items()):
        lines.append(
            f"- `{variant}`: {stats['family_count']:,} families, "
            f"largest={stats['largest_family_size']:,}, "
            f"singletons={stats['singleton_family_count']:,} "
            f"({stats['singleton_case_fraction']:.2%} case mass)"
        )
    lines.extend(["", "## Selected Windows", ""])
    for item in payload["selected_windows"]:
        lines.append(
            f"- `[{item['start']:,},{item['end']:,})`: "
            f"width={item['width']:,}, "
            f"checkpoint_good={item.get('good_direction_survivors', 0):,}, "
            f"checkpoint_seconds={item.get('elapsed_seconds', 0.0):.2f}"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--checkpoint-dir", type=Path, action="append", required=True)
    parser.add_argument("--from-planner", type=Path, default=None)
    parser.add_argument("--workers", type=int, default=8)
    parser.add_argument("--max-rank-mass", type=int, default=250_000)
    parser.add_argument("--dense-window-count", type=int, default=20)
    parser.add_argument("--sparse-window-count", type=int, default=8)
    parser.add_argument(
        "--dense-selection",
        choices=["throughput", "survivors", "elapsed"],
        default="throughput",
    )
    parser.add_argument(
        "--window",
        action="append",
        default=[],
        help="Explicit checkpoint window START:END. May be repeated.",
    )
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--family-limit", type=int, default=1_200)
    parser.add_argument("--singleton-fraction-limit", type=float, default=0.05)
    parser.add_argument("--tail-fraction-limit", type=float, default=0.10)
    parser.add_argument("--enable-diamond", action="store_true")
    parser.add_argument("--use-d4", action="store_true")
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    args = parser.parse_args()

    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.max_rank_mass <= 0:
        parser.error("--max-rank-mass must be positive")
    if args.dense_window_count < 0 or args.sparse_window_count < 0:
        parser.error("window counts must be nonnegative")
    if args.sample_limit < 0:
        parser.error("--sample-limit must be nonnegative")
    if args.family_limit <= 0:
        parser.error("--family-limit must be positive")
    explicit_windows: list[tuple[int, int]] = []
    for raw in args.window:
        pieces = raw.split(":")
        if len(pieces) != 2:
            parser.error(f"invalid --window {raw!r}; expected START:END")
        start, end = int(pieces[0]), int(pieces[1])
        if start >= end:
            parser.error(f"invalid --window {raw!r}; START must be < END")
        explicit_windows.append((start, end))

    planner_payload = read_json(args.from_planner) if args.from_planner else None
    summaries = load_checkpoint_summaries(
        args.checkpoint_dir,
        require_diamond=args.enable_diamond,
    )
    selected = select_windows(
        summaries,
        dense_window_count=args.dense_window_count,
        sparse_window_count=args.sparse_window_count,
        max_rank_mass=args.max_rank_mass,
        dense_selection=args.dense_selection,
        explicit_windows=explicit_windows,
    )
    start_time = time.monotonic()
    total_counts: Counter[str] = Counter()
    family_counts: dict[str, Counter[str]] = {
        "template_only": Counter(),
        "template_source": Counter(),
        "diamond_then_template_source": Counter(),
        "d4_diamond_then_template_source": Counter(),
        "exact_row_shape_reference": Counter(),
    }
    samples: dict[str, list[dict[str, Any]]] = {
        "uncovered": [],
        "invalid": [],
        "families": [],
    }
    discovery_curve: list[dict[str, Any]] = []

    tasks = [
        (
            int(window["start"]),
            int(window["end"]),
            args.sample_limit,
            args.enable_diamond,
            args.use_d4,
        )
        for window in selected
    ]
    results: list[dict[str, Any]] = []
    if args.workers == 1:
        for task in tasks:
            results.append(scan_window_worker(task))
    else:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            futures = {pool.submit(scan_window_worker, task): task for task in tasks}
            for future in as_completed(futures):
                results.append(future.result())

    for result in sorted(results, key=lambda item: item["window"]["start"]):
        merge_counter(total_counts, result["counts"])
        for variant, incoming in result["family_counts"].items():
            merge_counter(family_counts[variant], incoming)
        for name, incoming in result["samples"].items():
            extend_samples(samples[name], incoming, args.sample_limit)
        discovery_curve.append({
            "window": result["window"],
            "variant_family_counts": {
                variant: len(counter)
                for variant, counter in family_counts.items()
            },
        })

    variant_stats = {
        variant: singleton_stats(counter)
        for variant, counter in family_counts.items()
    }
    decision_payload = decision(
        counts=total_counts,
        variant_stats=variant_stats,
        family_limit=args.family_limit,
        singleton_fraction_limit=args.singleton_fraction_limit,
        tail_fraction_limit=args.tail_fraction_limit,
        discovery_curve=discovery_curve,
    )
    scanned_rank_mass = sum(int(window["width"]) for window in selected)
    payload = {
        "schema_version": 1,
        "mode": "translation-row-relation-family-profile",
        "trusted_as_proof": False,
        "planner_decision": planner_payload.get("decision") if planner_payload else None,
        "config": {
            "checkpoint_dirs": [str(path) for path in args.checkpoint_dir],
            "workers": args.workers,
            "max_rank_mass": args.max_rank_mass,
            "dense_window_count": args.dense_window_count,
            "sparse_window_count": args.sparse_window_count,
            "dense_selection": args.dense_selection,
            "explicit_windows": [
                {"start": start, "end": end}
                for start, end in explicit_windows
            ],
            "enable_diamond": args.enable_diamond,
            "use_d4": args.use_d4,
            "family_limit": args.family_limit,
            "singleton_fraction_limit": args.singleton_fraction_limit,
            "tail_fraction_limit": args.tail_fraction_limit,
        },
        "selected_windows": selected,
        "scanned_rank_mass": scanned_rank_mass,
        "counts": finalized_counts(total_counts),
        "variant_stats": variant_stats,
        "discovery_curve": discovery_curve,
        "samples": samples,
        "elapsed_seconds": time.monotonic() - start_time,
        "decision": decision_payload,
    }
    write_json_atomic(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "translation row-template family profile: "
        f"{payload['counts'].get('covered_cases', 0):,}/"
        f"{payload['counts'].get('good_direction_survivors', 0):,}; "
        f"decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
