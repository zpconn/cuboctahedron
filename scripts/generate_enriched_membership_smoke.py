#!/usr/bin/env python3
"""Audit enriched row-property membership coordinates for Phase 6Z.6K.8C.

Phase 6Z.6K.8B showed that `source_kind_row_property` is only an interface
smoke: its witness still carries `SourceAgrees` and row-property facts.  This
diagnostic tests the next richer coordinates before any Lean production
emission:

* `source_kind_impact_row_property`
* `source_pair_skeleton_row_property`

The output is not trusted as proof.  It is a gate that decides whether an
enriched coordinate is theorem-sufficient, or whether it would still need
per-rank row reconstruction.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_row_property_membership_signatures import (  # noqa: E402
    key_payload,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice,
    digest_payload,
)


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8a_row_property_membership_signatures.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8c_enriched_membership_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

COORDINATES = [
    "source_kind_impact_row_property",
    "source_pair_skeleton_row_property",
]


@dataclass
class FamilyStats:
    key: str
    cases: int = 0
    template_counts: Counter[str] = field(default_factory=Counter)
    source_agreement_keys: set[str] = field(default_factory=set)
    row_property_keys: set[str] = field(default_factory=set)
    exact_row_shape_keys: set[str] = field(default_factory=set)
    integer_scaled_keys: set[str] = field(default_factory=set)
    sample: dict[str, Any] | None = None

    def add(self, result: dict[str, Any]) -> None:
        self.cases += 1
        self.template_counts[str(result["template_id"])] += 1
        self.source_agreement_keys.add(str(result["source_agreement_key"]))
        self.row_property_keys.add(str(result["row_property_key"]))
        self.exact_row_shape_keys.add(str(result["exact_row_shape_key"]))
        self.integer_scaled_keys.add(
            digest_payload(result["sample"]["integer_scaled"])
        )
        if self.sample is None:
            self.sample = result["sample"]

    def summary(self) -> dict[str, Any]:
        template_id = self.template_counts.most_common(1)[0][0]
        sample = self.sample or {}
        return {
            "key": self.key,
            "cases": self.cases,
            "template_id": template_id,
            "source_agreement_signatures": len(self.source_agreement_keys),
            "row_property_signatures": len(self.row_property_keys),
            "exact_row_shape_signatures": len(self.exact_row_shape_keys),
            "integer_scaled_signatures": len(self.integer_scaled_keys),
            "sample": {
                "rank": sample.get("rank"),
                "mask": sample.get("mask"),
                "sources": sample.get("source_agreement", {}).get("sources"),
            },
        }


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def choose_selected(families: dict[str, FamilyStats]) -> list[FamilyStats]:
    if not families:
        return []
    values = list(families.values())
    selected: dict[str, FamilyStats] = {}
    largest = max(values, key=lambda family: (family.cases, family.key))
    selected[largest.key] = largest

    non_first = [
        family
        for family in values
        if family.template_counts.most_common(1)[0][0] != "eq_eq_pos_var_first"
    ]
    if non_first:
        family = max(non_first, key=lambda item: (item.cases, item.key))
        selected[family.key] = family

    smallest = min(values, key=lambda family: (family.cases, family.key))
    selected[smallest.key] = smallest
    return sorted(selected.values(), key=lambda family: (-family.cases, family.key))


def coordinate_decision(
    coordinate: str,
    families: dict[str, FamilyStats],
) -> dict[str, Any]:
    selected = choose_selected(families)
    unstable_source = sum(
        1 for family in families.values()
        if len(family.source_agreement_keys) != 1
    )
    unstable_row_property = sum(
        1 for family in families.values()
        if len(family.row_property_keys) != 1
    )
    unstable_exact_rows = sum(
        1 for family in families.values()
        if len(family.exact_row_shape_keys) != 1
    )

    notes: list[str] = []
    if unstable_source:
        notes.append(
            "some coordinate families contain multiple concrete source agreements"
        )
    if unstable_row_property:
        notes.append(
            "some coordinate families contain multiple row-property signatures"
        )
    if unstable_exact_rows:
        notes.append(
            "some coordinate families contain multiple exact row shapes"
        )

    if not families:
        status = "reject-empty-coordinate"
        notes.append("no covered GoodDirection cases were classified")
    elif unstable_source or unstable_row_property:
        status = "reject-ambiguous-membership-coordinate"
        notes.append(
            "the coordinate does not determine the facts needed by RowPropertyParametricCovered"
        )
    else:
        status = "reject-missing-formal-coordinate-theorem"
        notes.append(
            "the coordinate is stable in the bounded window, but there is no Lean theorem deriving SourceAgrees and row facts from this coordinate"
        )
        notes.append(
            "emitting Lean now would still require carrying the facts inside Applies, repeating the 6K.8B failure mode"
        )

    return {
        "coordinate": coordinate,
        "status": status,
        "families": len(families),
        "largest_family_cases": (
            max((family.cases for family in families.values()), default=0)
        ),
        "unstable_source_agreement_families": unstable_source,
        "unstable_row_property_families": unstable_row_property,
        "unstable_exact_row_shape_families": unstable_exact_rows,
        "selected_families": [
            family.summary()
            for family in selected
        ],
        "notes": notes,
    }


def scan(rank_start: int, limit: int) -> dict[str, Any]:
    counts: Counter[str] = Counter({
        "pair_words_scanned": 0,
        "nonidentity_words_skipped": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "not_good_direction_masks": 0,
        "good_direction_survivors": 0,
        "covered_cases": 0,
        "non_two_source_cases": 0,
        "uncovered_cases": 0,
    })
    families: dict[str, dict[str, FamilyStats]] = {
        coordinate: {}
        for coordinate in COORDINATES
    }

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
            sample = result["sample"]
            keys = key_payload(
                template_id=str(result["template_id"]),
                row_property_key=str(result["row_property_key"]),
                source_agreement=sample["source_agreement"],
                word=list(word),
                mask=mask,
            )
            for coordinate in COORDINATES:
                key = keys[coordinate]
                family = families[coordinate].setdefault(
                    key, FamilyStats(key=key)
                )
                family.add(result)

    coordinate_results = [
        coordinate_decision(coordinate, families[coordinate])
        for coordinate in COORDINATES
    ]
    accepted = [
        item for item in coordinate_results
        if item["status"].startswith("accept")
    ]
    if accepted:
        decision = {
            "status": "accept-enriched-membership-coordinate",
            "coordinate": accepted[0]["coordinate"],
            "notes": [
                "a coordinate passed the bounded pre-smoke audit"
            ],
        }
    else:
        decision = {
            "status": "reject-enriched-membership-coordinates",
            "coordinate": None,
            "notes": [
                "neither enriched coordinate can currently prove RowPropertyParametricCovered without carrying concrete facts",
                "do not emit full Lean coverage from these coordinates",
            ],
        }

    return {
        "schema_version": 1,
        "mode": "phase6z6k8c_enriched_membership_smoke",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": dict(counts),
        "coordinates": coordinate_results,
        "decision": decision,
        "lean_file_emitted": False,
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8C Enriched Membership Smoke",
        "",
        "This diagnostic is not trusted as proof. It checks whether enriched",
        "membership coordinates can prove `RowPropertyParametricCovered` without",
        "carrying concrete `SourceAgrees` and row-property facts inside the",
        "family predicate.",
        "",
        f"- Decision: `{decision['status']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Lean file emitted: `{payload['lean_file_emitted']}`",
        "",
        "## Coordinate Results",
        "",
        "| Coordinate | Status | Families | Largest | Source unstable | Row unstable | Exact-row unstable |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for item in payload["coordinates"]:
        lines.append(
            f"| `{item['coordinate']}` | `{item['status']}` | "
            f"{item['families']} | {item['largest_family_cases']} | "
            f"{item['unstable_source_agreement_families']} | "
            f"{item['unstable_row_property_families']} | "
            f"{item['unstable_exact_row_shape_families']} |"
        )
    lines.extend([
        "",
        "## Selected Representative Families",
        "",
    ])
    for item in payload["coordinates"]:
        lines.append(f"### `{item['coordinate']}`")
        lines.append("")
        lines.append("| Cases | Template | Source signatures | Row signatures | Exact-row signatures |")
        lines.append("| ---: | --- | ---: | ---: | ---: |")
        for family in item["selected_families"]:
            lines.append(
                f"| {family['cases']} | `{family['template_id']}` | "
                f"{family['source_agreement_signatures']} | "
                f"{family['row_property_signatures']} | "
                f"{family['exact_row_shape_signatures']} |"
            )
        lines.append("")
        for note in item["notes"]:
            lines.append(f"- {note}")
        lines.append("")
    lines.extend([
        "## Decision Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--rank-start", type=int)
    parser.add_argument("--limit", type=int)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    input_payload = read_json(args.input)
    rank_start = (
        args.rank_start
        if args.rank_start is not None
        else int(input_payload.get("rank_start", 0))
    )
    rank_end = int(input_payload.get("rank_end", rank_start + 1000))
    limit = args.limit if args.limit is not None else rank_end - rank_start

    if rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if limit <= 0:
        parser.error("--limit must be positive")

    payload = scan(rank_start, limit)
    payload["input"] = str(args.input)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(
        "enriched membership smoke: "
        f"{payload['decision']['status']} over "
        f"[{payload['rank_start']}, {payload['rank_end']})"
    )


if __name__ == "__main__":
    main()
