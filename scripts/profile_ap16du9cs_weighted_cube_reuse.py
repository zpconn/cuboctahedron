#!/usr/bin/env python3
"""Profile reuse of weighted-cube certificates across translation ranks.

This is diagnostic telemetry only; it is not proof evidence.  The question is
whether the accepted rank-local weighted-cube fallback from DU.9CR can become a
family backend.  For sampled identity-linear ranks with GoodDirection
survivors, the script:

* reruns the exact DU.9BA witnessable weighted-cube profiler;
* computes the scaled Walsh coefficient record each selected cube would ask
  Lean to check;
* hashes coarse witness keys and actual scaled-polynomial keys; and
* reports whether those keys repeat enough to justify a generated family layer.

No generated Lean is emitted by this script.
"""

from __future__ import annotations

import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed
from collections import Counter
import hashlib
import json
from math import gcd
from pathlib import Path
import sys
import time
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_ap16du9ba_weighted_cube_rank import profile as profile_rank  # noqa: E402
from profile_ap16du9be_weighted_walsh_poly import (  # noqa: E402
    compute_rank_walsh_forms,
    weighted_coeffs,
    weighted_values,
    eval_poly,
    fraction_to_text,
)
from profile_ap16du9bi_weighted_coeff_certificates import (  # noqa: E402
    clear_denominators,
    field_coefficients,
    term_bound_nonpositive,
)
from profile_ap16bj_walsh_subcube_cover import label_masks  # noqa: E402


DEFAULT_AP16I = Path("scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json")
DEFAULT_OUTPUT = Path("scripts/generated/phase6z6k8ap16du9cs_weighted_cube_reuse.json")


def stable_digest(payload: object) -> str:
    text = json.dumps(payload, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def normalize_scaled_coefficients(coeffs: dict[str, int]) -> dict[str, int]:
    values = list(coeffs.values())
    divisor = 0
    for value in values:
        divisor = gcd(divisor, abs(value))
    if divisor <= 1:
        return dict(coeffs)
    return {key: value // divisor for key, value in coeffs.items()}


def selected_ranks_from_ap16i(path: Path, *, max_ranks: int) -> list[int]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    ranks: list[int] = []
    seen: set[int] = set()

    # Prefer signatures with larger rank count, since they are the only place a
    # family backend has any chance to amortize its proof work.
    signatures = sorted(
        payload.get("positive_survivor_signature_catalog", []),
        key=lambda item: (-int(item.get("rank_count", 0)), -int(item.get("case_count", 0))),
    )
    for signature in signatures:
        for rank in signature.get("ranks", []):
            value = int(rank)
            if value not in seen:
                seen.add(value)
                ranks.append(value)
                if len(ranks) >= max_ranks:
                    return ranks

    # Fallback to top candidate samples if the signature catalog is absent.
    for group in payload.get("positive_candidate_catalog", []):
        for sample in group.get("sample", []):
            value = int(sample["rank"])
            if value not in seen:
                seen.add(value)
                ranks.append(value)
                if len(ranks) >= max_ranks:
                    return ranks
    return ranks


def fraction_list_key(values: list[Any]) -> list[str]:
    return [fraction_to_text(value) for value in values]


def cube_certificate_records(rank_profile: dict[str, Any]) -> dict[str, Any]:
    rank = int(rank_profile["rank"])
    forms, forms_validated = compute_rank_walsh_forms(rank)
    records: list[dict[str, Any]] = []
    validation_failures: list[str] = []
    if not forms_validated:
        validation_failures.append("individual denominator Walsh forms did not validate")

    for index, selected in enumerate(rank_profile["witnessable_cube_cover"]["selected"]):
        witness = selected["sparse_witness"]
        support = [int(value) for value in witness["support"]]
        weights = [fraction_to_text(value) for value in witness["weights"]]
        coeffs = weighted_coeffs(forms, support, [int(value) for value in witness["weights"]])
        fields = field_coefficients(coeffs)
        scale, scaled = clear_denominators(fields)
        normalized_scaled = normalize_scaled_coefficients(scaled)
        values = weighted_values(rank, support, [int(value) for value in witness["weights"]])
        masks = [int(value) for value in selected.get("masks", label_masks(selected["label"]))]
        values_valid = all(eval_poly(coeffs, mask) == values[mask] for mask in range(64))
        cube_values = {mask: values[mask] for mask in masks}
        cube_max = max(cube_values.values())
        if not values_valid:
            validation_failures.append(f"cube {index}: weighted values did not validate")
        if cube_max > 0:
            validation_failures.append(f"cube {index}: cube max is positive")
        label = str(selected["label"])
        witness_key_payload = {
            "label": label,
            "support": support,
            "weights": weights,
        }
        scaled_key_payload = {
            **witness_key_payload,
            "scale": scale,
            "scaled": scaled,
        }
        normalized_poly_payload = {
            "label": label,
            "support": support,
            "weights": weights,
            "scaled": normalized_scaled,
        }
        sign_shape_payload = {
            "label": label,
            "support": support,
            "weights": weights,
            "signs": {
                key: (1 if value > 0 else (-1 if value < 0 else 0))
                for key, value in scaled.items()
            },
        }
        records.append({
            "index": index,
            "label": label,
            "mask_count": int(selected["mask_count"]),
            "support": support,
            "weights": weights,
            "scale": scale,
            "max_value": str(witness.get("max_value")),
            "cube_max": fraction_to_text(cube_max),
            "nonzero_scaled_coefficients": sum(1 for value in scaled.values() if value != 0),
            "term_bound_nonpositive": term_bound_nonpositive(label, coeffs),
            "witness_key": stable_digest(witness_key_payload),
            "scaled_poly_key": stable_digest(scaled_key_payload),
            "normalized_poly_key": stable_digest(normalized_poly_payload),
            "sign_shape_key": stable_digest(sign_shape_payload),
        })
    return {
        "rank": rank,
        "word": rank_profile.get("word"),
        "good_mask_count": int(rank_profile["good_mask_count"]),
        "bad_mask_count": int(rank_profile["bad_mask_count"]),
        "selected_cube_count": len(records),
        "witnessable_candidate_count": int(
            rank_profile["witnessable_cube_cover"]["candidate_count"]
        ),
        "uncovered_count": int(rank_profile["witnessable_cube_cover"]["uncovered_count"]),
        "records": records,
        "validation_failures": validation_failures,
    }


def profile_one_rank(args: tuple[int, int, int, float, float]) -> dict[str, Any]:
    rank, max_support, max_weight, seconds_per_cube, seconds_per_candidate = args
    started = time.monotonic()
    rank_profile = profile_rank(
        rank=rank,
        max_support=max_support,
        max_weight=max_weight,
        seconds_per_cube=seconds_per_cube,
        seconds_per_candidate=seconds_per_candidate,
    )
    result = cube_certificate_records(rank_profile)
    result["elapsed_seconds"] = time.monotonic() - started
    return result


def top_counter(counter: Counter[str], *, limit: int = 12) -> list[dict[str, Any]]:
    return [
        {"key": key, "count": count}
        for key, count in counter.most_common(limit)
    ]


def summarize(results: list[dict[str, Any]], *, family_gate: int) -> dict[str, Any]:
    counters: dict[str, Counter[str]] = {
        "witness_key": Counter(),
        "scaled_poly_key": Counter(),
        "normalized_poly_key": Counter(),
        "sign_shape_key": Counter(),
    }
    selected_cube_count = 0
    uncovered_ranks = 0
    validation_failures: list[dict[str, Any]] = []
    for result in results:
        if result["uncovered_count"]:
            uncovered_ranks += 1
        if result["validation_failures"]:
            validation_failures.append({
                "rank": result["rank"],
                "failures": result["validation_failures"],
            })
        for record in result["records"]:
            selected_cube_count += 1
            for key in counters:
                counters[key][record[key]] += 1

    unique_counts = {key: len(counter) for key, counter in counters.items()}
    reusable_scaled = sum(
        count for count in counters["scaled_poly_key"].values() if count > 1
    )
    reusable_normalized = sum(
        count for count in counters["normalized_poly_key"].values() if count > 1
    )
    if validation_failures:
        status = "rejected"
        notes = ["some weighted-cube coefficient records failed exact validation"]
    elif uncovered_ranks:
        status = "rejected"
        notes = [f"{uncovered_ranks} sampled ranks still have uncovered bad masks"]
    elif unique_counts["scaled_poly_key"] > family_gate:
        status = "rejected"
        notes = [
            "actual scaled-polynomial family count exceeds the configured gate"
        ]
    elif selected_cube_count and reusable_scaled / selected_cube_count < 0.25:
        status = "weak-reuse"
        notes = [
            "actual scaled-polynomial records rarely repeat; this is not yet a family backend"
        ]
    else:
        status = "promising"
        notes = [
            "scaled-polynomial records repeat often enough to justify a theorem-backed family smoke"
        ]
    return {
        "selected_cube_count": selected_cube_count,
        "uncovered_rank_count": uncovered_ranks,
        "validation_failures": validation_failures,
        "unique_counts": unique_counts,
        "reuse": {
            "scaled_poly_reused_cube_count": reusable_scaled,
            "normalized_poly_reused_cube_count": reusable_normalized,
            "scaled_poly_reuse_fraction": (
                0.0 if selected_cube_count == 0 else reusable_scaled / selected_cube_count
            ),
            "normalized_poly_reuse_fraction": (
                0.0 if selected_cube_count == 0 else reusable_normalized / selected_cube_count
            ),
        },
        "top": {
            key: top_counter(counter)
            for key, counter in counters.items()
        },
        "decision": {
            "status": status,
            "family_gate": family_gate,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9CS Weighted-Cube Reuse Profile",
        "",
        "This is exact external telemetry, not proof evidence.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Ranks profiled | {payload['rank_count']:,} |",
        f"| Selected weighted cubes | {summary['selected_cube_count']:,} |",
        f"| Ranks with uncovered bad masks | {summary['uncovered_rank_count']:,} |",
        f"| Unique witness keys | {summary['unique_counts']['witness_key']:,} |",
        f"| Unique scaled polynomial keys | {summary['unique_counts']['scaled_poly_key']:,} |",
        f"| Unique normalized polynomial keys | {summary['unique_counts']['normalized_poly_key']:,} |",
        f"| Unique sign-shape keys | {summary['unique_counts']['sign_shape_key']:,} |",
        f"| Scaled polynomial reuse fraction | {summary['reuse']['scaled_poly_reuse_fraction']:.2%} |",
        f"| Normalized polynomial reuse fraction | {summary['reuse']['normalized_poly_reuse_fraction']:.2%} |",
        f"| Elapsed seconds | {payload['elapsed_seconds']:.2f} |",
        "",
        f"Decision: **{summary['decision']['status']}**",
        "",
    ]
    for note in summary["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.extend(["", "## Sampled Ranks", ""])
    for result in payload["results"]:
        lines.append(
            f"- rank `{result['rank']}`: good={result['good_mask_count']}, "
            f"selected_cubes={result['selected_cube_count']}, "
            f"uncovered={result['uncovered_count']}, "
            f"seconds={result['elapsed_seconds']:.2f}"
        )
    lines.extend(["", "## Top Reused Scaled Polynomial Keys", ""])
    for item in summary["top"]["scaled_poly_key"]:
        lines.append(f"- `{item['key'][:16]}`: {item['count']:,}")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ap16i", type=Path, default=DEFAULT_AP16I)
    parser.add_argument("--rank", type=int, action="append", default=[])
    parser.add_argument("--max-ranks", type=int, default=12)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--max-support", type=int, default=4)
    parser.add_argument("--max-weight", type=int, default=12)
    parser.add_argument("--seconds-per-cube", type=float, default=1.5)
    parser.add_argument("--seconds-per-candidate", type=float, default=0.20)
    parser.add_argument("--family-gate", type=int, default=2000)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    if args.max_ranks <= 0:
        parser.error("--max-ranks must be positive")
    if args.jobs <= 0:
        parser.error("--jobs must be positive")
    ranks = list(dict.fromkeys(int(rank) for rank in args.rank))
    if len(ranks) < args.max_ranks:
        for rank in selected_ranks_from_ap16i(args.ap16i, max_ranks=args.max_ranks):
            if rank not in ranks:
                ranks.append(rank)
            if len(ranks) >= args.max_ranks:
                break
    if not ranks:
        parser.error("no ranks selected")

    started = time.monotonic()
    tasks = [
        (rank, args.max_support, args.max_weight,
         args.seconds_per_cube, args.seconds_per_candidate)
        for rank in ranks
    ]
    results: list[dict[str, Any]] = []
    if args.jobs == 1:
        for task in tasks:
            result = profile_one_rank(task)
            print(
                f"profiled rank {result['rank']} "
                f"cubes={result['selected_cube_count']} "
                f"uncovered={result['uncovered_count']} "
                f"seconds={result['elapsed_seconds']:.2f}",
                flush=True,
            )
            results.append(result)
    else:
        with ProcessPoolExecutor(max_workers=args.jobs) as pool:
            futures = {pool.submit(profile_one_rank, task): task[0] for task in tasks}
            for future in as_completed(futures):
                result = future.result()
                print(
                    f"profiled rank {result['rank']} "
                    f"cubes={result['selected_cube_count']} "
                    f"uncovered={result['uncovered_count']} "
                    f"seconds={result['elapsed_seconds']:.2f}",
                    flush=True,
                )
                results.append(result)
    results.sort(key=lambda item: item["rank"])
    payload = {
        "schema_version": 1,
        "phase": "Phase 6Z.6K.8AP.16DU.9CS",
        "trusted_as_proof": False,
        "config": {
            "ap16i": str(args.ap16i),
            "ranks": ranks,
            "jobs": args.jobs,
            "max_support": args.max_support,
            "max_weight": args.max_weight,
            "seconds_per_cube": args.seconds_per_cube,
            "seconds_per_candidate": args.seconds_per_candidate,
            "family_gate": args.family_gate,
        },
        "rank_count": len(results),
        "elapsed_seconds": time.monotonic() - started,
        "results": results,
        "summary": summarize(results, family_gate=args.family_gate),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n",
                           encoding="utf-8")
    args.output.with_suffix(".md").write_text(markdown(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {args.output.with_suffix('.md')}")
    print(
        "weighted-cube reuse profile: "
        f"ranks={payload['rank_count']}; "
        f"cubes={payload['summary']['selected_cube_count']}; "
        f"unique_scaled={payload['summary']['unique_counts']['scaled_poly_key']}; "
        f"decision={payload['summary']['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
