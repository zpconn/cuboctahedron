#!/usr/bin/env python3
"""Profile the row-property family surface versus membership obligations.

Phase 6Z.6K.7 is meant to replace representative-per-case row-property
quotient leaves with true row-property-family theorems.  The Lean theorem
surface for killing a case from an existential row-property fact already lives
in `RowPropertyQuotient.lean`; the expensive part is proving, for each concrete
rank/mask, that such an existential source-row fact holds.

This diagnostic is not trusted as proof.  It measures a bounded rank window and
reports:

* how many GoodDirection survivors collapse to each public row-property
  constructor;
* how many row-property digests/source-agreement families still appear below
  that constructor layer; and
* whether the next proof step should emit more family theorems or instead build
  a semantic state/membership bridge.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symbolic_row_extraction_families import classify_choice  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k7_row_property_membership_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


COUNT_KEYS = [
    "pair_words_scanned",
    "nonidentity_words_skipped",
    "identity_words",
    "translation_sign_assignments",
    "not_good_direction_masks",
    "good_direction_survivors",
    "covered_cases",
    "non_two_source_cases",
    "uncovered_cases",
]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def top(counter: Counter[str], limit: int) -> list[dict[str, Any]]:
    return [
        {"key": key, "cases": count}
        for key, count in counter.most_common(limit)
    ]


def scan(rank_start: int, limit: int) -> dict[str, Any]:
    counts: Counter[str] = Counter({key: 0 for key in COUNT_KEYS})
    candidate_counts: dict[str, Counter[str]] = defaultdict(Counter)
    constructor_counts: Counter[str] = Counter()
    constructor_to_row_properties: dict[str, set[str]] = defaultdict(set)
    constructor_to_source_agreements: dict[str, set[str]] = defaultdict(set)
    constructor_to_exact_shapes: dict[str, set[str]] = defaultdict(set)
    samples: dict[str, dict[str, Any]] = {}

    for rank in range(rank_start, rank_start + limit):
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
            template_id = str(result["template_id"])
            constructor_counts[template_id] += 1
            samples.setdefault(template_id, result["sample"])
            constructor_to_row_properties[template_id].add(
                str(result["row_property_key"])
            )
            constructor_to_source_agreements[template_id].add(
                str(result["source_agreement_key"])
            )
            constructor_to_exact_shapes[template_id].add(
                str(result["exact_row_shape_key"])
            )
            for name, key in result["candidate_keys"].items():
                candidate_counts[name][str(key)] += 1

    if counts["non_two_source_cases"] or counts["uncovered_cases"]:
        status = "reject-uncovered-good-direction-survivors"
        decision_notes = [
            "some GoodDirection survivors are not covered by the two-source row templates"
        ]
    else:
        status = "reject-more-family-theorem-emission"
        decision_notes = [
            "the public row-property theorem layer is already collapsed to template constructors",
            "the remaining expensive obligation is membership: proving SourceAgrees and row predicates for concrete rank/mask cases",
            "do not emit more RowPropertyQuotient-style family theorems until a state/signature membership bridge exists",
        ]

    theorem_constructor_count = len(constructor_counts)
    row_predicate_parametric_count = len(candidate_counts["row_predicate_parametric"])
    row_property_parametric_count = len(candidate_counts["row_property_parametric"])
    source_agreement_count = len(candidate_counts["template_source_agreement"])
    source_row_property_count = len(candidate_counts["template_source_row_property"])
    exact_row_shape_count = len(candidate_counts["exact_row_shape"])
    covered_cases = counts["covered_cases"]

    compression = {
        "covered_cases": covered_cases,
        "theorem_constructors": theorem_constructor_count,
        "row_predicate_parametric_families": row_predicate_parametric_count,
        "row_property_parametric_families": row_property_parametric_count,
        "source_agreement_families": source_agreement_count,
        "source_row_property_families": source_row_property_count,
        "exact_row_shape_families": exact_row_shape_count,
        "cases_per_theorem_constructor": (
            covered_cases / theorem_constructor_count
            if theorem_constructor_count
            else None
        ),
        "cases_per_row_property_family": (
            covered_cases / row_property_parametric_count
            if row_property_parametric_count
            else None
        ),
        "case_to_source_row_family_ratio": (
            covered_cases / source_row_property_count
            if source_row_property_count
            else None
        ),
    }

    constructor_breakdown = []
    for template_id, count in constructor_counts.most_common():
        constructor_breakdown.append(
            {
                "template_id": template_id,
                "cases": count,
                "row_property_digests": len(
                    constructor_to_row_properties[template_id]
                ),
                "source_agreement_digests": len(
                    constructor_to_source_agreements[template_id]
                ),
                "exact_row_shapes": len(constructor_to_exact_shapes[template_id]),
                "sample": samples.get(template_id, {}),
            }
        )

    return {
        "schema_version": 1,
        "mode": "phase6z6k7_row_property_membership_profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": dict(counts),
        "compression": compression,
        "candidate_family_counts": {
            name: len(counter)
            for name, counter in sorted(candidate_counts.items())
        },
        "top_families": {
            name: top(counter, 16)
            for name, counter in sorted(candidate_counts.items())
        },
        "constructor_breakdown": constructor_breakdown,
        "decision": {
            "status": status,
            "notes": decision_notes,
            "next_required_bridge": (
                "state/signature theorem proving GoodDirection survivor membership "
                "in RowPropertyParametricCovered without per-rank row reconstruction"
            ),
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    compression = payload["compression"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.7 Row-Property Membership Profile",
        "",
        "This diagnostic is not trusted as proof. It measures whether the",
        "row-property theorem surface has collapsed enough to replace the",
        "representative-per-case root.",
        "",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Uncovered/non-two-source cases: `{counts['uncovered_cases'] + counts['non_two_source_cases']}`",
        "",
        "## Compression",
        "",
        f"- Public theorem constructors: `{compression['theorem_constructors']}`",
        f"- Row-predicate parametric families: `{compression['row_predicate_parametric_families']}`",
        f"- Row-property parametric families: `{compression['row_property_parametric_families']}`",
        f"- Source-agreement families: `{compression['source_agreement_families']}`",
        f"- Source + row-property families: `{compression['source_row_property_families']}`",
        f"- Exact row-shape families: `{compression['exact_row_shape_families']}`",
        f"- Cases per theorem constructor: `{compression['cases_per_theorem_constructor']:.2f}`",
        f"- Cases per row-property family: `{compression['cases_per_row_property_family']:.2f}`",
        "",
        "## Decision",
        "",
        f"- Status: `{decision['status']}`",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        f"- Next required bridge: {decision['next_required_bridge']}",
        "",
        "## Constructors",
        "",
        "| Template | Cases | Row-property digests | Source-agreement digests | Exact row shapes |",
        "| --- | ---: | ---: | ---: | ---: |",
    ])
    for row in payload["constructor_breakdown"]:
        lines.append(
            f"| `{row['template_id']}` | {row['cases']} | "
            f"{row['row_property_digests']} | "
            f"{row['source_agreement_digests']} | {row['exact_row_shapes']} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")

    payload = scan(args.rank_start, args.limit)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    decision = payload["decision"]
    print(
        "row-property membership profile: "
        f"{decision['status']} over [{payload['rank_start']}, {payload['rank_end']})"
    )
    print(
        "covered cases="
        f"{payload['counts']['covered_cases']} "
        "constructors="
        f"{payload['compression']['theorem_constructors']} "
        "source_row_families="
        f"{payload['compression']['source_row_property_families']}"
    )


if __name__ == "__main__":
    main()
