#!/usr/bin/env python3
"""Profile D4 transport for semantic translation family keys.

This script is diagnostic only.  It emits no Lean proof and is not trusted as
evidence.  It measures whether started-face D4 canonicalization reduces the
current row-template/diamond semantic family workload enough to justify a
formal transport layer.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import time
from collections import Counter
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from exact_profile import STARTED_SYMS, sym_word, transported_mask  # noqa: E402
from profile_symmetry_compression import (  # noqa: E402
    canonical_translation_with_symmetry,
    seq_key,
    stable_digest,
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
from profile_symmetry_compression import two_source_multipliers_for_lines  # noqa: E402


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = (
    REPO_ROOT / "scripts" / "generated" / "phase6z6j_d4_semantic_family_transport.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_REPRESENTATIVE_JSON = (
    REPO_ROOT
    / "scripts"
    / "generated"
    / "phase6z6j_d4_semantic_family_transport_representative.json"
)
DEFAULT_REPRESENTATIVE_MD = DEFAULT_REPRESENTATIVE_JSON.with_suffix(".md")
REPRESENTATIVE_PROFILE_JSON = (
    REPO_ROOT
    / "scripts"
    / "generated"
    / "translation_row_relation_families_profile_representative.json"
)
FALLBACK_REPRESENTATIVE_WINDOWS = [
    (160_000, 165_000),
    (355_000, 360_000),
    (590_000, 595_000),
    (1_025_000, 1_030_000),
    (1_270_000, 1_275_000),
    (1_385_000, 1_390_000),
    (1_820_000, 1_825_000),
    (2_095_000, 2_100_000),
    (30_000_000, 30_100_000),
]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def inverse_sym_ids() -> dict[int, int]:
    basis = list(exact.PAIR_IDS)
    result: dict[int, int] = {}
    for sym_id, sym in enumerate(STARTED_SYMS):
        image = sym_word(sym, basis)
        for inv_id, inv in enumerate(STARTED_SYMS):
            back = sym_word(inv, image)
            forth = sym_word(sym, back)
            if back == basis and forth == image:
                result[sym_id] = inv_id
                break
        if sym_id not in result:
            raise RuntimeError(f"no inverse found for started symmetry {sym_id}")
    return result


INVERSE_SYM_ID = inverse_sym_ids()


def source_digest(source_terms: list[dict[str, Any]]) -> str:
    return stable_digest(source_pair_key(source_pair_payload(source_terms)))


def classify_semantic_family(
    word: list[str],
    mask: int,
    *,
    enable_diamond: bool,
) -> tuple[str, dict[str, Any]] | None:
    needs = exact.translation_needs_farkas(word, mask)
    if needs is None:
        return None
    b, seq = needs
    source_terms = exact.source_terms_for_translation_farkas(seq, b)
    if len(source_terms) != 2:
        raise RuntimeError("GoodDirection survivor is not two-source")
    source_terms = sorted(source_terms, key=lambda term: json.dumps(term["source"], sort_keys=True))
    sources = exact.translation_constraint_sources_py(seq)
    constraints = exact.translation_constraints_py(seq, b)
    indices = [sources.index(term["source"]) for term in source_terms]
    first_line = constraints[indices[0]]
    second_line = constraints[indices[1]]
    multipliers = two_source_multipliers_for_lines(first_line, second_line)
    if not shape_valid(
        multipliers=multipliers,
        first_line=first_line,
        second_line=second_line,
    ):
        raise RuntimeError("two-source support shape is not valid")

    matches = matching_templates(first_line, second_line, multipliers)
    sharp_matches = [
        template for template in matches if template != "exact_two_source_valid"
    ]
    diamond_matches = diamond_obstructions(first_line, second_line) if enable_diamond else []
    if diamond_matches:
        family_kind = "diamond"
        template_id = "diamond_" + "_".join(str(item["row"]) for item in diamond_matches)
    elif sharp_matches:
        family_kind = "template"
        template_id = sharp_matches[0]
    elif matches:
        family_kind = "fallback"
        template_id = matches[0]
    else:
        family_kind = "uncovered"
        template_id = "uncovered"

    digest = source_digest(source_terms)
    family_key = f"{family_kind}:{template_id}|source={digest}"
    payload = {
        "family_kind": family_kind,
        "template_id": template_id,
        "source_pair_digest": digest,
        "first_line": line_key(first_line),
        "second_line": line_key(second_line),
        "multipliers": multipliers_key(multipliers),
        "matches": matches,
        "diamond_matches": diamond_matches,
        "seq": seq_key(seq),
    }
    return family_key, payload


def validate_transport(
    raw_word: list[str],
    raw_mask: int,
    canonical_word: tuple[str, ...],
    canonical_mask: int,
    raw_to_canonical_sym: int,
) -> None:
    cword, cmask = transported_mask(
        STARTED_SYMS[raw_to_canonical_sym],
        list(raw_word),
        raw_mask,
    )
    if tuple(cword) != canonical_word or cmask != canonical_mask:
        raise RuntimeError("raw-to-canonical D4 transport validation failed")
    inv_id = INVERSE_SYM_ID[raw_to_canonical_sym]
    rword, rmask = transported_mask(
        STARTED_SYMS[inv_id],
        list(canonical_word),
        canonical_mask,
    )
    if rword != raw_word or rmask != raw_mask:
        raise RuntimeError("canonical-to-raw D4 transport validation failed")


def scan_window(
    *,
    start_rank: int,
    end_rank: int,
    enable_diamond: bool,
    sample_limit: int,
    progress_interval: int,
) -> dict[str, Any]:
    counts = Counter()
    raw_family_counts: Counter[str] = Counter()
    canonical_family_counts: Counter[str] = Counter()
    sym_counts: Counter[int] = Counter()
    orbit_members: dict[tuple[tuple[str, ...], int], set[tuple[tuple[str, ...], int]]] = {}
    raw_family_samples: dict[str, dict[str, Any]] = {}
    canonical_family_samples: dict[str, dict[str, Any]] = {}
    transport_samples: list[dict[str, Any]] = []

    started = time.perf_counter()
    for rank in range(start_rank, end_rank):
        if (
            progress_interval
            and rank != start_rank
            and (rank - start_rank) % progress_interval == 0
        ):
            elapsed = time.perf_counter() - started
            print(
                f"scanned {rank - start_rank:,}/{end_rank - start_rank:,} ranks "
                f"in {elapsed:.1f}s",
                file=sys.stderr,
            )
        word = exact.pair_word_at_rank(rank)
        if exact.lex_rank_pair_word(word) != rank:
            raise RuntimeError(f"rank mismatch at {rank}")
        counts["pair_words_scanned"] += 1
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            raw_classification = classify_semantic_family(
                word,
                mask,
                enable_diamond=enable_diamond,
            )
            if raw_classification is None:
                counts["denominator_nonpositive_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            raw_key, raw_payload = raw_classification
            raw_family_counts[raw_key] += 1
            raw_family_samples.setdefault(raw_key, {
                "rank": rank,
                "mask": mask,
                "word": word_key(word),
                **raw_payload,
            })

            canonical_word, canonical_mask, sym_id = canonical_translation_with_symmetry(
                tuple(word),
                mask,
            )
            validate_transport(word, mask, canonical_word, canonical_mask, sym_id)
            sym_counts[sym_id] += 1
            orbit_key = (tuple(canonical_word), canonical_mask)
            orbit_members.setdefault(orbit_key, set()).add((tuple(word), mask))

            canonical_classification = classify_semantic_family(
                list(canonical_word),
                canonical_mask,
                enable_diamond=enable_diamond,
            )
            if canonical_classification is None:
                raise RuntimeError("canonical GoodDirection classification disappeared")
            canonical_key, canonical_payload = canonical_classification
            canonical_family_counts[canonical_key] += 1
            canonical_family_samples.setdefault(canonical_key, {
                "canonical_word": word_key(list(canonical_word)),
                "canonical_mask": canonical_mask,
                "raw_rank": rank,
                "raw_mask": mask,
                "raw_to_canonical_sym": sym_id,
                "canonical_to_raw_sym": INVERSE_SYM_ID[sym_id],
                **canonical_payload,
            })
            if len(transport_samples) < sample_limit:
                transport_samples.append({
                    "rank": rank,
                    "mask": mask,
                    "word": word_key(word),
                    "raw_family": raw_key,
                    "canonical_word": word_key(list(canonical_word)),
                    "canonical_mask": canonical_mask,
                    "canonical_family": canonical_key,
                    "raw_to_canonical_sym": sym_id,
                    "canonical_to_raw_sym": INVERSE_SYM_ID[sym_id],
                })

    orbit_sizes = [len(members) for members in orbit_members.values()]
    return {
        "counts": dict(counts),
        "raw_family_count": len(raw_family_counts),
        "canonical_family_count": len(canonical_family_counts),
        "raw_family_counts": dict(raw_family_counts),
        "canonical_family_counts": dict(canonical_family_counts),
        "_raw_family_samples": raw_family_samples,
        "_canonical_family_samples": canonical_family_samples,
        "_orbit_members": orbit_members,
        "top_raw_families": top_families(raw_family_counts, raw_family_samples),
        "top_canonical_families": top_families(
            canonical_family_counts,
            canonical_family_samples,
        ),
        "symmetry_use_counts": {str(key): value for key, value in sorted(sym_counts.items())},
        "orbit_summary": {
            "canonical_orbits": len(orbit_members),
            "average_observed_orbit_size": (
                sum(orbit_sizes) / len(orbit_sizes) if orbit_sizes else 0.0
            ),
            "max_observed_orbit_size": max(orbit_sizes) if orbit_sizes else 0,
            "fixed_or_singleton_orbits": sum(1 for size in orbit_sizes if size == 1),
            "smaller_than_8_orbits": sum(1 for size in orbit_sizes if size < 8),
        },
        "transport_samples": transport_samples,
    }


def scan_window_from_tuple(args: tuple[int, int, bool, int, int]) -> dict[str, Any]:
    start_rank, end_rank, enable_diamond, sample_limit, progress_interval = args
    return scan_window(
        start_rank=start_rank,
        end_rank=end_rank,
        enable_diamond=enable_diamond,
        sample_limit=sample_limit,
        progress_interval=progress_interval,
    )


def merge_window_results(parts: list[dict[str, Any]]) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    raw_family_counts: Counter[str] = Counter()
    canonical_family_counts: Counter[str] = Counter()
    sym_counts: Counter[str] = Counter()
    raw_family_samples: dict[str, dict[str, Any]] = {}
    canonical_family_samples: dict[str, dict[str, Any]] = {}
    orbit_members: dict[tuple[tuple[str, ...], int], set[tuple[tuple[str, ...], int]]] = {}
    transport_samples: list[dict[str, Any]] = []

    for part in parts:
        counts.update(part["counts"])
        raw_family_counts.update(part["raw_family_counts"])
        canonical_family_counts.update(part["canonical_family_counts"])
        sym_counts.update(part["symmetry_use_counts"])
        for key, sample in part.get("_raw_family_samples", {}).items():
            raw_family_samples.setdefault(key, sample)
        for key, sample in part.get("_canonical_family_samples", {}).items():
            canonical_family_samples.setdefault(key, sample)
        for key, members in part.get("_orbit_members", {}).items():
            orbit_members.setdefault(key, set()).update(members)
        if len(transport_samples) < 24:
            remaining = 24 - len(transport_samples)
            transport_samples.extend(part.get("transport_samples", [])[:remaining])

    orbit_sizes = [len(members) for members in orbit_members.values()]
    return {
        "counts": dict(counts),
        "raw_family_count": len(raw_family_counts),
        "canonical_family_count": len(canonical_family_counts),
        "raw_family_counts": dict(raw_family_counts),
        "canonical_family_counts": dict(canonical_family_counts),
        "_raw_family_samples": raw_family_samples,
        "_canonical_family_samples": canonical_family_samples,
        "_orbit_members": orbit_members,
        "top_raw_families": top_families(raw_family_counts, raw_family_samples),
        "top_canonical_families": top_families(
            canonical_family_counts,
            canonical_family_samples,
        ),
        "symmetry_use_counts": dict(sorted(sym_counts.items(), key=lambda item: int(item[0]))),
        "orbit_summary": {
            "canonical_orbits": len(orbit_members),
            "average_observed_orbit_size": (
                sum(orbit_sizes) / len(orbit_sizes) if orbit_sizes else 0.0
            ),
            "max_observed_orbit_size": max(orbit_sizes) if orbit_sizes else 0,
            "fixed_or_singleton_orbits": sum(1 for size in orbit_sizes if size == 1),
            "smaller_than_8_orbits": sum(1 for size in orbit_sizes if size < 8),
        },
        "transport_samples": transport_samples,
    }


def strip_private(payload: dict[str, Any]) -> dict[str, Any]:
    payload.pop("_raw_family_samples", None)
    payload.pop("_canonical_family_samples", None)
    payload.pop("_orbit_members", None)
    return payload


def load_representative_windows() -> list[tuple[int, int]]:
    if REPRESENTATIVE_PROFILE_JSON.exists():
        data = json.loads(REPRESENTATIVE_PROFILE_JSON.read_text())
        selected = data.get("selected_windows", [])
        windows = []
        for item in selected:
            start = item.get("start")
            end = item.get("end")
            if isinstance(start, int) and isinstance(end, int) and start < end:
                windows.append((start, end))
        if windows:
            return sorted(dict.fromkeys(windows))
    return list(FALLBACK_REPRESENTATIVE_WINDOWS)


def run_profile_window(
    *,
    start_rank: int,
    end_rank: int,
    enable_diamond: bool,
    sample_limit: int,
    progress_interval: int,
    workers: int,
    shard_size: int,
) -> dict[str, Any]:
    if workers == 1:
        return scan_window(
            start_rank=start_rank,
            end_rank=end_rank,
            enable_diamond=enable_diamond,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
        )

    shards = [
        (
            shard_start,
            min(shard_start + shard_size, end_rank),
            enable_diamond,
            sample_limit,
            0,
        )
        for shard_start in range(start_rank, end_rank, shard_size)
    ]
    parts: list[dict[str, Any]] = []
    completed = 0
    started = time.perf_counter()
    with ProcessPoolExecutor(max_workers=workers) as pool:
        futures = {pool.submit(scan_window_from_tuple, shard): shard for shard in shards}
        for future in as_completed(futures):
            shard = futures[future]
            parts.append(future.result())
            completed += shard[1] - shard[0]
            if progress_interval:
                elapsed = time.perf_counter() - started
                print(
                    f"completed {completed:,}/{end_rank - start_rank:,} "
                    f"ranks in window [{start_rank:,},{end_rank:,}) "
                    f"across {workers} workers in {elapsed:.1f}s",
                    file=sys.stderr,
                )
    return merge_window_results(parts)


def aggregate_window_payloads(window_payloads: list[dict[str, Any]]) -> dict[str, Any]:
    merged = merge_window_results(window_payloads)
    orbit_count = 0
    orbit_size_mass = 0.0
    max_orbit_size = 0
    singleton_orbits = 0
    smaller_than_8_orbits = 0
    for payload in window_payloads:
        orbit = payload["orbit_summary"]
        count = int(orbit["canonical_orbits"])
        orbit_count += count
        orbit_size_mass += float(orbit["average_observed_orbit_size"]) * count
        max_orbit_size = max(max_orbit_size, int(orbit["max_observed_orbit_size"]))
        singleton_orbits += int(orbit["fixed_or_singleton_orbits"])
        smaller_than_8_orbits += int(orbit["smaller_than_8_orbits"])
    merged["orbit_summary"] = {
        "canonical_orbits": orbit_count,
        "average_observed_orbit_size": (
            orbit_size_mass / orbit_count if orbit_count else 0.0
        ),
        "max_observed_orbit_size": max_orbit_size,
        "fixed_or_singleton_orbits": singleton_orbits,
        "smaller_than_8_orbits": smaller_than_8_orbits,
    }
    return merged


def top_families(
    counts: Counter[str],
    samples: dict[str, dict[str, Any]],
    *,
    limit: int = 24,
) -> list[dict[str, Any]]:
    rows = []
    for family_key, cases in counts.most_common(limit):
        rows.append({
            "family_key": family_key,
            "cases": cases,
            "sample": samples.get(family_key, {}),
        })
    return rows


def decide(payload: dict[str, Any], *, max_leaf_gate: int) -> dict[str, Any]:
    raw_count = int(payload["raw_family_count"])
    canonical_count = int(payload["canonical_family_count"])
    ratio = raw_count / canonical_count if canonical_count else 0.0
    notes: list[str] = []
    if canonical_count == 0:
        status = "reject"
        notes.append("no canonical families were observed")
    elif ratio >= 1.5 and canonical_count <= max_leaf_gate:
        status = "accept"
        notes.append("D4 canonical families clear the 1.5x improvement threshold and leaf gate")
    elif ratio >= 1.2:
        status = "needs-larger-sample"
        notes.append("D4 gives moderate improvement; run representative windows before Lean work")
        if canonical_count > max_leaf_gate:
            notes.append("canonical family count is still above the heavy-leaf gate")
    else:
        status = "reject"
        notes.append("D4 does not reduce semantic family count enough")
    return {
        "status": status,
        "raw_over_canonical_ratio": ratio,
        "max_leaf_gate": max_leaf_gate,
        "notes": notes,
    }


def decide_representative(payload: dict[str, Any], *, max_leaf_gate: int) -> dict[str, Any]:
    raw_count = int(payload["raw_family_count"])
    canonical_count = int(payload["canonical_family_count"])
    ratio = raw_count / canonical_count if canonical_count else 0.0
    notes: list[str] = []
    if canonical_count == 0:
        status = "reject-near-term"
        notes.append("no canonical families were observed in the representative sample")
    elif ratio >= 1.5 and canonical_count <= max_leaf_gate:
        status = "accept-lean-transport"
        notes.append("representative aggregate clears the 1.5x transport threshold")
        notes.append("canonical family count is within the configured leaf gate")
    else:
        status = "reject-near-term"
        if ratio < 1.5:
            notes.append("representative aggregate stays below the 1.5x transport threshold")
        if canonical_count > max_leaf_gate:
            notes.append("canonical family count exceeds the configured leaf gate")
        notes.append("return to semantic row-extraction/source-agreement compression")
    return {
        "status": status,
        "raw_over_canonical_ratio": ratio,
        "max_leaf_gate": max_leaf_gate,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    orbit = payload["orbit_summary"]
    if payload.get("representative_windows"):
        title = "# Phase 6Z.6J.1 Representative D4 Semantic-Family Transport Aggregate"
        window_line = (
            f"| Representative windows | {len(payload['representative_windows']):,} |"
        )
    else:
        title = "# Phase 6Z.6J D4 Semantic-Family Transport Profile"
        window_line = (
            f"| Rank window | `{payload['rank_start']:,}` to `{payload['rank_end']:,}` |"
        )
    lines = [
        title,
        "",
        f"Decision: **{decision['status']}**",
        "",
        "| metric | value |",
        "| --- | ---: |",
        window_line,
        f"| Pair words scanned | {counts.get('pair_words_scanned', 0):,} |",
        f"| Identity words | {counts.get('identity_words', 0):,} |",
        f"| GoodDirection survivors | {counts.get('good_direction_survivors', 0):,} |",
        f"| Raw semantic families | {payload['raw_family_count']:,} |",
        f"| D4-canonical semantic families | {payload['canonical_family_count']:,} |",
        f"| Raw/canonical ratio | {decision['raw_over_canonical_ratio']:.3f}x |",
        f"| Observed canonical orbits | {orbit['canonical_orbits']:,} |",
        f"| Average observed orbit size | {orbit['average_observed_orbit_size']:.3f} |",
        f"| Max observed orbit size | {orbit['max_observed_orbit_size']:,} |",
        f"| Fixed/singleton orbits | {orbit['fixed_or_singleton_orbits']:,} |",
        f"| Smaller-than-8 orbits | {orbit['smaller_than_8_orbits']:,} |",
        f"| Transport consistency failures | {payload.get('transport_consistency_failures', 0):,} |",
        "",
        "## Decision Notes",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    if payload.get("representative_windows"):
        lines.extend([
            "",
            "## Per-Window Results",
            "",
            "| window | GoodDirection survivors | raw families | canonical families | ratio | elapsed s |",
            "| --- | ---: | ---: | ---: | ---: | ---: |",
        ])
        for row in payload["representative_windows"]:
            ratio = row["raw_over_canonical_ratio"]
            ratio_text = f"{ratio:.3f}x" if ratio else "0.000x"
            lines.append(
                f"| `[{row['start']:,},{row['end']:,})` "
                f"| {row['good_direction_survivors']:,} "
                f"| {row['raw_family_count']:,} "
                f"| {row['canonical_family_count']:,} "
                f"| {ratio_text} "
                f"| {row['elapsed_s']:.1f} |"
            )
    lines.extend([
        "",
        "## Top Raw Families",
        "",
        "| cases | family |",
        "| ---: | --- |",
    ])
    for row in payload["top_raw_families"][:12]:
        lines.append(f"| {row['cases']:,} | `{row['family_key']}` |")
    lines.extend([
        "",
        "## Top D4-Canonical Families",
        "",
        "| cases | family |",
        "| ---: | --- |",
    ])
    for row in payload["top_canonical_families"][:12]:
        lines.append(f"| {row['cases']:,} | `{row['family_key']}` |")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--start-rank", type=int, default=0)
    parser.add_argument("--end-rank", type=int, default=100_000)
    parser.add_argument(
        "--representative-windows",
        action="store_true",
        help="run the representative Phase 6Z.6E.1 windows as one aggregate gate",
    )
    parser.add_argument("--sample-limit", type=int, default=12)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument("--workers", type=int, default=min(8, os.cpu_count() or 1))
    parser.add_argument("--shard-size", type=int, default=1_000)
    parser.add_argument("--max-lean-leaves", type=int, default=2_000)
    parser.add_argument("--enable-diamond", action="store_true", default=True)
    parser.add_argument("--no-diamond", action="store_false", dest="enable_diamond")
    parser.add_argument("--output-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--output-md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.shard_size <= 0:
        parser.error("--shard-size must be positive")
    if args.representative_windows and args.output_json == DEFAULT_JSON:
        args.output_json = DEFAULT_REPRESENTATIVE_JSON
    if args.representative_windows and args.output_md == DEFAULT_MD:
        args.output_md = DEFAULT_REPRESENTATIVE_MD

    started = time.perf_counter()
    if args.representative_windows:
        windows = load_representative_windows()
        window_payloads: list[dict[str, Any]] = []
        window_rows: list[dict[str, Any]] = []
        for index, (start_rank, end_rank) in enumerate(windows, start=1):
            print(
                f"representative window {index}/{len(windows)}: "
                f"[{start_rank:,},{end_rank:,})",
                file=sys.stderr,
            )
            window_started = time.perf_counter()
            window = run_profile_window(
                start_rank=start_rank,
                end_rank=end_rank,
                enable_diamond=args.enable_diamond,
                sample_limit=args.sample_limit,
                progress_interval=args.progress_interval,
                workers=args.workers,
                shard_size=args.shard_size,
            )
            window_elapsed = time.perf_counter() - window_started
            window_payloads.append(window)
            raw_count = int(window["raw_family_count"])
            canonical_count = int(window["canonical_family_count"])
            window_rows.append({
                "start": start_rank,
                "end": end_rank,
                "width": end_rank - start_rank,
                "elapsed_s": window_elapsed,
                "good_direction_survivors": int(
                    window["counts"].get("good_direction_survivors", 0)
                ),
                "raw_family_count": raw_count,
                "canonical_family_count": canonical_count,
                "raw_over_canonical_ratio": (
                    raw_count / canonical_count if canonical_count else 0.0
                ),
            })
        window = aggregate_window_payloads(window_payloads)
        elapsed = time.perf_counter() - started
        payload = {
            "schema_version": 1,
            "phase": "6Z.6J.1",
            "representative_windows": window_rows,
            "representative_window_source": str(REPRESENTATIVE_PROFILE_JSON),
            "diamond_enabled": args.enable_diamond,
            "parallel": {
                "workers": args.workers,
                "shard_size": args.shard_size,
            },
            "elapsed_s": elapsed,
            "transport_consistency_failures": 0,
            **window,
        }
        payload["decision"] = decide_representative(
            payload,
            max_leaf_gate=args.max_lean_leaves,
        )
    else:
        window = run_profile_window(
            start_rank=args.start_rank,
            end_rank=args.end_rank,
            enable_diamond=args.enable_diamond,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            workers=args.workers,
            shard_size=args.shard_size,
        )
        elapsed = time.perf_counter() - started
        payload = {
            "schema_version": 1,
            "phase": "6Z.6J",
            "rank_start": args.start_rank,
            "rank_end": args.end_rank,
            "diamond_enabled": args.enable_diamond,
            "parallel": {
                "workers": args.workers,
                "shard_size": args.shard_size,
            },
            "elapsed_s": elapsed,
            "transport_consistency_failures": 0,
            **window,
        }
        payload["decision"] = decide(payload, max_leaf_gate=args.max_lean_leaves)
    strip_private(payload)
    write_json(args.output_json, payload)
    write_text(args.output_md, markdown_report(payload))
    print(f"wrote {args.output_json}")
    print(f"decision={payload['decision']['status']}")
    print(
        f"raw={payload['raw_family_count']} canonical={payload['canonical_family_count']} "
        f"ratio={payload['decision']['raw_over_canonical_ratio']:.3f}x"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
