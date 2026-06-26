#!/usr/bin/env python3
"""Profile source-agreement theorem shapes for Phase 6Z.6K.8D.

The 6K.8C enriched-coordinate smoke showed that source agreement is the
remaining unstable part of `RowPropertyParametricCovered`.  This diagnostic
compares two theorem surfaces:

* `source_index_state_row_property`: source indices plus source kind/impact and
  row-property key;
* `source_agreement_row_property`: concrete source-agreement signature plus
  row-property key.

The output is not trusted as proof.  It decides whether either surface is ready
for a tiny Lean smoke whose `Applies` predicate does not directly carry
`SourceAgrees` or row-property facts.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_row_property_membership_signatures import (  # noqa: E402
    source_kind_impact_skeleton,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice,
    digest_payload,
)


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8a_row_property_membership_signatures.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8d_source_agreement_theorem_shapes.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

SURFACES = [
    "source_index_state_row_property",
    "source_agreement_row_property",
]


@dataclass
class FamilyStats:
    key: str
    cases: int = 0
    template_counts: Counter[str] = field(default_factory=Counter)
    source_agreement_keys: set[str] = field(default_factory=set)
    row_property_keys: set[str] = field(default_factory=set)
    exact_row_shape_keys: set[str] = field(default_factory=set)
    samples: list[dict[str, Any]] = field(default_factory=list)

    def add(self, result: dict[str, Any]) -> None:
        self.cases += 1
        self.template_counts[str(result["template_id"])] += 1
        self.source_agreement_keys.add(str(result["source_agreement_key"]))
        self.row_property_keys.add(str(result["row_property_key"]))
        self.exact_row_shape_keys.add(str(result["exact_row_shape_key"]))
        if len(self.samples) < 3:
            sample = result["sample"]
            self.samples.append({
                "rank": sample.get("rank"),
                "mask": sample.get("mask"),
                "sources": sample.get("source_agreement", {}).get("sources"),
            })

    def summary(self) -> dict[str, Any]:
        return {
            "key": self.key,
            "cases": self.cases,
            "template_id": self.template_counts.most_common(1)[0][0],
            "source_agreement_signatures": len(self.source_agreement_keys),
            "row_property_signatures": len(self.row_property_keys),
            "exact_row_shape_signatures": len(self.exact_row_shape_keys),
            "samples": self.samples,
        }


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def source_index_state_payload(result: dict[str, Any]) -> dict[str, Any]:
    sample = result["sample"]
    source_agreement = sample["source_agreement"]
    sources = source_agreement["sources"]
    return {
        "template": result["template_id"],
        "indices": source_agreement["indices"],
        "sources": [source_kind_impact_skeleton(source) for source in sources],
        "rowProperty": result["row_property_key"],
    }


def source_agreement_row_property_payload(result: dict[str, Any]) -> dict[str, Any]:
    sample = result["sample"]
    return {
        "template": result["template_id"],
        "sourceAgreement": sample["source_agreement"],
        "rowProperty": result["row_property_key"],
    }


def surface_key(surface: str, result: dict[str, Any]) -> str:
    if surface == "source_index_state_row_property":
        return digest_payload(source_index_state_payload(result))
    if surface == "source_agreement_row_property":
        return digest_payload(source_agreement_row_property_payload(result))
    raise ValueError(f"unknown surface {surface!r}")


def choose_selected(families: dict[str, FamilyStats]) -> list[FamilyStats]:
    if not families:
        return []
    values = list(families.values())
    selected: dict[str, FamilyStats] = {}
    largest = max(values, key=lambda family: (family.cases, family.key))
    selected[largest.key] = largest
    non_first = [
        family for family in values
        if family.template_counts.most_common(1)[0][0] != "eq_eq_pos_var_first"
    ]
    if non_first:
        family = max(non_first, key=lambda item: (item.cases, item.key))
        selected[family.key] = family
    smallest = min(values, key=lambda family: (family.cases, family.key))
    selected[smallest.key] = smallest
    return sorted(selected.values(), key=lambda family: (-family.cases, family.key))


def surface_decision(
    surface: str,
    families: dict[str, FamilyStats],
    *,
    family_gate: int,
) -> dict[str, Any]:
    source_unstable = sum(
        1 for family in families.values()
        if len(family.source_agreement_keys) != 1
    )
    row_unstable = sum(
        1 for family in families.values()
        if len(family.row_property_keys) != 1
    )
    selected = choose_selected(families)
    notes: list[str] = []
    if source_unstable:
        notes.append("some families still contain multiple source-agreement signatures")
    if row_unstable:
        notes.append("some families still contain multiple row-property signatures")
    if len(families) > family_gate:
        notes.append("family count exceeds the configured gate")

    fact_free_applies_available = False
    if surface == "source_index_state_row_property":
        if source_unstable == 0 and row_unstable == 0 and len(families) <= family_gate:
            status = "needs-formal-source-index-lean-smoke"
            notes.append(
                "the bounded surface is stable, but no fact-free Lean source-index predicate exists yet"
            )
        else:
            status = "reject-source-index-state-surface"
            notes.append(
                "the source-index/state surface does not currently determine source agreement"
            )
    elif surface == "source_agreement_row_property":
        if source_unstable == 0 and row_unstable == 0 and len(families) <= family_gate:
            status = "needs-formal-source-agreement-partition-smoke"
            notes.append(
                "the fallback partition is stable and small, but still needs a cheap semantic source predicate"
            )
        else:
            status = "reject-source-agreement-partition"
            notes.append(
                "the source-agreement partition is not small/stable enough for the gate"
            )
    else:
        raise ValueError(f"unknown surface {surface!r}")

    return {
        "surface": surface,
        "status": status,
        "families": len(families),
        "largest_family_cases": max(
            (family.cases for family in families.values()),
            default=0,
        ),
        "source_unstable_families": source_unstable,
        "row_property_unstable_families": row_unstable,
        "exact_row_shape_unstable_families": sum(
            1 for family in families.values()
            if len(family.exact_row_shape_keys) != 1
        ),
        "fact_free_applies_available": fact_free_applies_available,
        "selected_families": [family.summary() for family in selected],
        "notes": notes,
    }


def scan(rank_start: int, limit: int, family_gate: int) -> dict[str, Any]:
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
        surface: {}
        for surface in SURFACES
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

            for surface in SURFACES:
                key = surface_key(surface, result)
                family = families[surface].setdefault(key, FamilyStats(key=key))
                family.add(result)

    surface_results = [
        surface_decision(surface, families[surface], family_gate=family_gate)
        for surface in SURFACES
    ]
    by_surface = {item["surface"]: item for item in surface_results}
    source_index = by_surface["source_index_state_row_property"]
    source_agreement = by_surface["source_agreement_row_property"]

    if source_index["status"] == "needs-formal-source-index-lean-smoke":
        decision = {
            "status": "needs-source-index-lean-smoke",
            "chosen_surface": "source_index_state_row_property",
            "notes": [
                "source-index/state is the preferred surface if a formal Lean predicate is added",
                "do not emit production coverage until that predicate proves SourceAgrees without carrying facts",
            ],
        }
    elif source_agreement["status"] == "needs-formal-source-agreement-partition-smoke":
        decision = {
            "status": "needs-source-agreement-partition-smoke",
            "chosen_surface": "source_agreement_row_property",
            "notes": [
                "fallback partition is small and stable in the bounded window",
                "next step should add a cheap semantic source-agreement predicate and smoke it",
            ],
        }
    else:
        decision = {
            "status": "reject-source-agreement-theorem-shapes",
            "chosen_surface": None,
            "notes": [
                "neither theorem surface is ready for a fact-free Lean smoke",
                "do not emit coverage from row-property membership coordinates yet",
            ],
        }

    return {
        "schema_version": 1,
        "mode": "phase6z6k8d_source_agreement_theorem_shapes",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "family_gate": family_gate,
        "counts": dict(counts),
        "surfaces": surface_results,
        "decision": decision,
        "lean_file_emitted": False,
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8D Source-Agreement Theorem Shapes",
        "",
        "This diagnostic is not trusted as proof. It compares theorem surfaces",
        "for closing the source-agreement part of `RowPropertyParametricCovered`",
        "without carrying concrete facts inside `Applies`.",
        "",
        f"- Decision: `{decision['status']}`",
        f"- Chosen surface: `{decision['chosen_surface']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Family gate: `{payload['family_gate']}`",
        f"- Lean file emitted: `{payload['lean_file_emitted']}`",
        "",
        "## Surface Results",
        "",
        "| Surface | Status | Families | Largest | Source unstable | Row unstable | Fact-free Applies |",
        "| --- | --- | ---: | ---: | ---: | ---: | --- |",
    ]
    for item in payload["surfaces"]:
        lines.append(
            f"| `{item['surface']}` | `{item['status']}` | "
            f"{item['families']} | {item['largest_family_cases']} | "
            f"{item['source_unstable_families']} | "
            f"{item['row_property_unstable_families']} | "
            f"`{item['fact_free_applies_available']}` |"
        )
    lines.extend([
        "",
        "## Selected Families",
        "",
    ])
    for item in payload["surfaces"]:
        lines.append(f"### `{item['surface']}`")
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
    parser.add_argument("--family-gate", type=int, default=200)
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
    if args.family_gate <= 0:
        parser.error("--family-gate must be positive")

    payload = scan(rank_start, limit, args.family_gate)
    payload["input"] = str(args.input)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(
        "source-agreement theorem shapes: "
        f"{payload['decision']['status']} over "
        f"[{payload['rank_start']}, {payload['rank_end']})"
    )


if __name__ == "__main__":
    main()
