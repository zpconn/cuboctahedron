#!/usr/bin/env python3
"""Profile symbolic/integer row-extraction families for translation survivors.

This Phase 6Z.6K diagnostic is not trusted as proof.  It checks whether the
accepted row-template/source families can be supported by reusable symbolic row
facts instead of replaying rank/mask-specific rational row reconstruction in
Lean.
"""

from __future__ import annotations

import argparse
import json
import math
import os
import sys
import time
from collections import Counter, defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symmetry_compression import (  # noqa: E402
    fraction_key,
    seq_key,
    sorted_source_farkas_terms,
    stable_digest,
    two_source_multipliers_for_lines,
    word_key,
)
from profile_translation_row_relation_families import (  # noqa: E402
    exact_row_shape_key,
    source_pair_digest,
)
from profile_translation_row_relation_templates import (  # noqa: E402
    diamond_obstructions,
    line_key,
    matching_templates,
    multipliers_key,
)
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_REPORT = Path(
    "scripts/generated/translation_row_relation_families_profile_representative.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k_symbolic_row_extraction_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

COUNT_KEYS = [
    "pair_words_scanned",
    "identity_words",
    "nonidentity_words_skipped",
    "translation_sign_assignments",
    "not_good_direction_masks",
    "good_direction_survivors",
    "covered_cases",
    "uncovered_cases",
    "non_two_source_cases",
    "invalid_two_source_cases",
]

Line = tuple[Fraction, Fraction, Fraction]


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def fresh_counts() -> Counter[str]:
    return Counter({key: 0 for key in COUNT_KEYS})


def representative_windows(report: dict[str, Any]) -> list[tuple[int, int]]:
    windows = []
    for item in report.get("selected_windows", []):
        start = int(item["start"])
        end = int(item["end"])
        if start < end:
            windows.append((start, end))
    if not windows:
        raise RuntimeError("representative report has no selected_windows")
    return sorted(dict.fromkeys(windows))


def expected_template_source_counts(report: dict[str, Any]) -> dict[str, int]:
    stats = report.get("variant_stats", {}).get("template_source", {})
    top = stats.get("top_families", [])
    # Prefer full checkpoint counts if available through the representative
    # report; fall back to top families only for portable diagnostic runs.
    counts: dict[str, int] = {}
    for result in report.get("window_results", []):
        checkpoint = result.get("family_checkpoint")
        if not checkpoint:
            continue
        path = Path(checkpoint)
        if not path.exists():
            continue
        payload = read_json(path)
        family_counts = (
            payload.get("result", {})
            .get("family_counts", {})
            .get("template_source", {})
        )
        for key, count in family_counts.items():
            counts[key] = counts.get(key, 0) + int(count)
    if counts:
        return counts
    return {str(item["family_key"]): int(item["cases"]) for item in top}


def json_key(payload: Any) -> str:
    return json.dumps(payload, sort_keys=True, separators=(",", ":"))


def digest_payload(payload: Any) -> str:
    return stable_digest(json_key(payload))


def primitive_integer_vector(values: tuple[Fraction, ...]) -> tuple[int, ...]:
    if not values:
        return ()
    denominator = 1
    for value in values:
        denominator = math.lcm(denominator, value.denominator)
    ints = [value.numerator * (denominator // value.denominator) for value in values]
    content = 0
    for value in ints:
        content = math.gcd(content, abs(value))
    if content:
        ints = [value // content for value in ints]
    return tuple(ints)


def primitive_line_key(line: Line) -> tuple[int, int, int]:
    return primitive_integer_vector(line)  # type: ignore[return-value]


def primitive_multiplier_key(multipliers: tuple[Fraction, Fraction]) -> tuple[int, int]:
    return primitive_integer_vector(multipliers)  # type: ignore[return-value]


def fixed_row(line: Line, a: int, b: int) -> bool:
    return line[0] == Fraction(a) and line[1] == Fraction(b) and line[2] == 1


def row_role(line: Line) -> str:
    a, b, c = line
    fixed_options = [(1, 1), (-1, -1), (1, -1), (-1, 1)]
    for fa, fb in fixed_options:
        if fixed_row(line, fa, fb):
            return f"fixed({fa},{fb})"
    if a == b and a < 0 and c <= a:
        return "eq_eq_pos"
    if a == b and 0 < a and c <= -a:
        return "eq_eq_neg"
    if a == -b and a < 0 and c <= a:
        return "opp_pos"
    if a == -b and 0 < a and c <= -a:
        return "opp_neg"
    if b == 0:
        return f"axis_a_only:{'pos' if 0 < a else 'neg' if a < 0 else 'zero'}"
    if a == 0:
        return f"axis_b_only:{'pos' if 0 < b else 'neg' if b < 0 else 'zero'}"
    return "unclassified"


def row_property_payload(
    *,
    template_id: str,
    first_line: Line,
    second_line: Line,
    multipliers: tuple[Fraction, Fraction],
    diamond_matches: list[dict[str, Any]],
) -> dict[str, Any]:
    weighted = (
        multipliers[0] * first_line[0] + multipliers[1] * second_line[0],
        multipliers[0] * first_line[1] + multipliers[1] * second_line[1],
        multipliers[0] * first_line[2] + multipliers[1] * second_line[2],
    )
    return {
        "template_id": template_id,
        "first_role": row_role(first_line),
        "second_role": row_role(second_line),
        "weighted_zero": [
            weighted[0] == 0,
            weighted[1] == 0,
        ],
        "weighted_c_nonpos": weighted[2] <= 0,
        "diamond_rows": sorted(str(item["row"]) for item in diamond_matches),
    }


def source_agreement_payload(
    *,
    seq: list[str],
    source_terms: list[dict[str, Any]],
) -> dict[str, Any]:
    sources = exact.translation_constraint_sources_py(seq)
    indices = [sources.index(term["source"]) for term in source_terms]
    return {
        "indices": indices,
        "sources": [term["source"] for term in source_terms],
    }


def classify_choice(rank: int, mask: int) -> dict[str, Any] | None:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        return None
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
    if not valid or not matches:
        return {
            "status": "uncovered",
            "valid": valid,
            "matches": matches,
        }
    template_id = matches[0]
    source_digest = source_pair_digest(source_terms)
    source_payload = source_agreement_payload(seq=seq, source_terms=source_terms)
    row_payload = row_property_payload(
        template_id=template_id,
        first_line=first_line,
        second_line=second_line,
        multipliers=multipliers,
        diamond_matches=diamond_obstructions(first_line, second_line),
    )
    scaled_payload = {
        "first_line": primitive_line_key(first_line),
        "second_line": primitive_line_key(second_line),
        "multipliers": primitive_multiplier_key(multipliers),
    }
    exact_shape = exact_row_shape_key(
        first_line=first_line,
        second_line=second_line,
        multipliers=multipliers,
    )
    return {
        "status": "covered",
        "template_id": template_id,
        "source_digest": source_digest,
        "template_source": f"{template_id}|source={source_digest}",
        "source_agreement_key": digest_payload(source_payload),
        "row_property_key": digest_payload(row_payload),
        "integer_scaled_key": digest_payload(scaled_payload),
        "exact_row_shape_key": exact_shape,
        "candidate_keys": {
            "template_source": f"{template_id}|source={source_digest}",
            "template_source_agreement": (
                f"{template_id}|sourceAgreement={digest_payload(source_payload)}"
            ),
            "template_row_property": (
                f"{template_id}|rowProperty={digest_payload(row_payload)}"
            ),
            "row_property_parametric": (
                f"{template_id}|rowProperty={digest_payload(row_payload)}"
            ),
            "row_predicate_parametric": template_id,
            "template_source_row_property": (
                f"{template_id}|sourceAgreement={digest_payload(source_payload)}"
                f"|rowProperty={digest_payload(row_payload)}"
            ),
            "template_integer_scaled": (
                f"{template_id}|scaled={digest_payload(scaled_payload)}"
            ),
            "template_source_integer_scaled": (
                f"{template_id}|sourceAgreement={digest_payload(source_payload)}"
                f"|scaled={digest_payload(scaled_payload)}"
            ),
            "exact_row_shape": f"{template_id}|shape={exact_shape}",
        },
        "sample": {
            "rank": rank,
            "mask": mask,
            "word": word_key(tuple(word)),
            "seq": seq_key(seq),
            "source_agreement": source_payload,
            "row_property": row_payload,
            "integer_scaled": scaled_payload,
            "first_line": line_key(first_line),
            "second_line": line_key(second_line),
            "multipliers": multipliers_key(multipliers),
            "matches": matches,
        },
        # In-memory consumers can reuse this to avoid replaying the exact
        # translation classifier.  Keep JSON-facing summaries on `sample`.
        "raw": {
            "word": word,
            "seq": seq,
            "b": b,
            "sources": [term["source"] for term in source_terms],
            "first_line": first_line,
            "second_line": second_line,
            "multipliers": multipliers,
        },
    }


def scan_window(args: tuple[int, int]) -> dict[str, Any]:
    start, end = args
    counts = fresh_counts()
    candidate_counts: dict[str, Counter[str]] = defaultdict(Counter)
    by_template_source: dict[str, dict[str, set[str]]] = defaultdict(
        lambda: defaultdict(set)
    )
    family_samples: dict[str, dict[str, Any]] = {}

    for rank in range(start, end):
        counts["pair_words_scanned"] += 1
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            result = classify_choice(rank, mask)
            if result is None:
                raise RuntimeError("identity word unexpectedly classified as nonidentity")
            status = result["status"]
            if status == "not_good_direction":
                counts["not_good_direction_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            if status == "non_two_source":
                counts["non_two_source_cases"] += 1
                continue
            if status == "uncovered":
                counts["uncovered_cases"] += 1
                continue
            if status != "covered":
                raise RuntimeError(f"unknown classification status {status!r}")
            counts["covered_cases"] += 1
            template_source = result["template_source"]
            family_samples.setdefault(template_source, result["sample"])
            for name, key in result["candidate_keys"].items():
                candidate_counts[name][key] += 1
            by_template_source[template_source]["source_agreement"].add(
                result["source_agreement_key"]
            )
            by_template_source[template_source]["row_property"].add(
                result["row_property_key"]
            )
            by_template_source[template_source]["integer_scaled"].add(
                result["integer_scaled_key"]
            )
            by_template_source[template_source]["exact_row_shape"].add(
                result["exact_row_shape_key"]
            )

    return {
        "window": {"start": start, "end": end, "width": end - start},
        "counts": dict(counts),
        "candidate_counts": {
            name: dict(counter)
            for name, counter in candidate_counts.items()
        },
        "by_template_source": {
            key: {name: sorted(values) for name, values in value.items()}
            for key, value in by_template_source.items()
        },
        "family_samples": family_samples,
    }


def merge_results(parts: list[dict[str, Any]]) -> dict[str, Any]:
    counts = fresh_counts()
    candidate_counts: dict[str, Counter[str]] = defaultdict(Counter)
    by_template_source: dict[str, dict[str, set[str]]] = defaultdict(
        lambda: defaultdict(set)
    )
    family_samples: dict[str, dict[str, Any]] = {}

    for part in parts:
        counts.update(part["counts"])
        for name, values in part["candidate_counts"].items():
            candidate_counts[name].update(values)
        for family_key, signatures in part["by_template_source"].items():
            for sig_name, values in signatures.items():
                by_template_source[family_key][sig_name].update(values)
        for family_key, sample in part["family_samples"].items():
            family_samples.setdefault(family_key, sample)

    family_variation = []
    for family_key, signatures in sorted(by_template_source.items()):
        row_count = len(signatures.get("row_property", set()))
        source_count = len(signatures.get("source_agreement", set()))
        scaled_count = len(signatures.get("integer_scaled", set()))
        exact_count = len(signatures.get("exact_row_shape", set()))
        if row_count != 1 or source_count != 1 or scaled_count != 1 or exact_count != 1:
            family_variation.append({
                "family_key": family_key,
                "source_agreement_signatures": source_count,
                "row_property_signatures": row_count,
                "integer_scaled_signatures": scaled_count,
                "exact_row_shape_signatures": exact_count,
                "sample": family_samples.get(family_key, {}),
            })
    family_variation.sort(
        key=lambda row: (
            -int(row["row_property_signatures"]),
            -int(row["source_agreement_signatures"]),
            -int(row["exact_row_shape_signatures"]),
            row["family_key"],
        )
    )

    return {
        "counts": dict(counts),
        "candidate_family_counts": {
            name: len(counter)
            for name, counter in sorted(candidate_counts.items())
        },
        "candidate_top_families": {
            name: [
                {"family_key": key, "cases": count}
                for key, count in counter.most_common(16)
            ]
            for name, counter in sorted(candidate_counts.items())
        },
        "template_source_family_count": len(by_template_source),
        "family_variation": family_variation[:40],
        "variation_counts": {
            "source_agreement_unstable_families": sum(
                1
                for signatures in by_template_source.values()
                if len(signatures.get("source_agreement", set())) != 1
            ),
            "row_property_unstable_families": sum(
                1
                for signatures in by_template_source.values()
                if len(signatures.get("row_property", set())) != 1
            ),
            "integer_scaled_unstable_families": sum(
                1
                for signatures in by_template_source.values()
                if len(signatures.get("integer_scaled", set())) != 1
            ),
            "exact_row_shape_unstable_families": sum(
                1
                for signatures in by_template_source.values()
                if len(signatures.get("exact_row_shape", set())) != 1
            ),
        },
    }


def decide(payload: dict[str, Any], *, family_gate: int) -> dict[str, Any]:
    counts = payload["counts"]
    expected = payload["expected"]
    variation = payload["variation_counts"]
    candidate_counts = payload["candidate_family_counts"]
    notes: list[str] = []

    if counts.get("good_direction_survivors") != expected["good_direction_survivors"]:
        return {
            "status": "reject-data-mismatch",
            "notes": [
                "GoodDirection survivor count did not match the representative baseline"
            ],
        }
    if payload["template_source_family_count"] != expected["template_source_families"]:
        return {
            "status": "reject-data-mismatch",
            "notes": [
                "template_source family count did not match the representative baseline"
            ],
        }
    if counts.get("uncovered_cases", 0) or counts.get("non_two_source_cases", 0):
        return {
            "status": "reject-uncovered-survivors",
            "notes": [
                "some GoodDirection survivors were not covered by two-source templates"
            ],
        }

    symbolic_count = candidate_counts.get("template_source_row_property", 0)
    source_unstable = variation["source_agreement_unstable_families"]
    row_unstable = variation["row_property_unstable_families"]
    if source_unstable == 0 and row_unstable == 0 and symbolic_count <= family_gate:
        status = "accept-symbolic-family-smoke"
        notes.append("source-agreement and row-property signatures are stable per family")
        notes.append("symbolic family coordinate is within the configured family gate")
    elif source_unstable + row_unstable <= 5 and symbolic_count <= family_gate:
        status = "needs-targeted-lean-pilot"
        notes.append("only a small number of symbolic families vary")
    else:
        status = "reject-symbolic-row-extraction"
        notes.append("symbolic/source signatures fragment too much")
    notes.append(
        "exact integer-scaled row signatures are diagnostic only and may vary inside a symbolic family"
    )
    return {
        "status": status,
        "family_gate": family_gate,
        "notes": notes,
    }


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K Symbolic Row-Extraction Family Profile",
        "",
        f"Decision: **{decision['status']}**",
        "",
        "| metric | value |",
        "| --- | ---: |",
        f"| Representative windows | {len(payload['windows']):,} |",
        f"| Pair words scanned | {counts.get('pair_words_scanned', 0):,} |",
        f"| Identity words | {counts.get('identity_words', 0):,} |",
        f"| GoodDirection survivors | {counts.get('good_direction_survivors', 0):,} |",
        f"| Covered cases | {counts.get('covered_cases', 0):,} |",
        f"| Uncovered cases | {counts.get('uncovered_cases', 0):,} |",
        f"| Template-source families | {payload['template_source_family_count']:,} |",
        f"| Source-agreement unstable families | {payload['variation_counts']['source_agreement_unstable_families']:,} |",
        f"| Row-property unstable families | {payload['variation_counts']['row_property_unstable_families']:,} |",
        f"| Integer-scaled unstable families | {payload['variation_counts']['integer_scaled_unstable_families']:,} |",
        f"| Exact-row-shape unstable families | {payload['variation_counts']['exact_row_shape_unstable_families']:,} |",
        "",
        "## Decision Notes",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Candidate Coordinates",
        "",
        "| coordinate | families |",
        "| --- | ---: |",
    ])
    for name, count in sorted(payload["candidate_family_counts"].items()):
        lines.append(f"| `{name}` | {count:,} |")
    lines.extend([
        "",
        "## High-Variation Families",
        "",
        "| source agreement | row property | integer scaled | exact row shape | family |",
        "| ---: | ---: | ---: | ---: | --- |",
    ])
    for row in payload["family_variation"][:16]:
        lines.append(
            f"| {row['source_agreement_signatures']} "
            f"| {row['row_property_signatures']} "
            f"| {row['integer_scaled_signatures']} "
            f"| {row['exact_row_shape_signatures']} "
            f"| `{row['family_key']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--workers", type=int, default=min(8, os.cpu_count() or 1))
    parser.add_argument("--shard-size", type=int, default=250)
    parser.add_argument("--family-gate", type=int, default=200)
    parser.add_argument("--output-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--output-md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.shard_size <= 0:
        parser.error("--shard-size must be positive")

    report = read_json(args.report)
    windows = representative_windows(report)
    expected_counts = expected_template_source_counts(report)
    if not expected_counts:
        raise RuntimeError("representative report has no template_source counts")

    shards = []
    for start, end in windows:
        for shard_start in range(start, end, args.shard_size):
            shards.append((shard_start, min(shard_start + args.shard_size, end)))

    started = time.perf_counter()
    parts: list[dict[str, Any]] = []
    completed = 0
    if args.workers == 1:
        for shard in shards:
            parts.append(scan_window(shard))
            completed += shard[1] - shard[0]
            print(f"completed {completed:,}/{sum(e - s for s, e in windows):,} ranks")
    else:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            futures = {pool.submit(scan_window, shard): shard for shard in shards}
            for future in as_completed(futures):
                shard = futures[future]
                parts.append(future.result())
                completed += shard[1] - shard[0]
                print(
                    f"completed {completed:,}/{sum(e - s for s, e in windows):,} "
                    f"ranks across {args.workers} workers",
                    file=sys.stderr,
                )

    merged = merge_results(parts)
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K",
        "trusted_as_proof": False,
        "report": str(args.report),
        "windows": [
            {"start": start, "end": end, "width": end - start}
            for start, end in windows
        ],
        "parallel": {
            "workers": args.workers,
            "shard_size": args.shard_size,
        },
        "elapsed_s": time.perf_counter() - started,
        "expected": {
            "good_direction_survivors": sum(expected_counts.values()),
            "template_source_families": len(expected_counts),
        },
        **merged,
    }
    payload["decision"] = decide(payload, family_gate=args.family_gate)
    write_json(args.output_json, payload)
    write_text(args.output_md, markdown_report(payload))
    print(f"wrote {args.output_json}")
    print(f"decision={payload['decision']['status']}")
    print(
        "template_source="
        f"{payload['template_source_family_count']} "
        "symbolic="
        f"{payload['candidate_family_counts'].get('template_source_row_property', 0)} "
        "exact_shapes="
        f"{payload['candidate_family_counts'].get('exact_row_shape', 0)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
