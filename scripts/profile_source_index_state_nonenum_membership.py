#!/usr/bin/env python3
"""Audit non-enumerative source-index/state membership predicates.

Phase 6Z.6K.8F showed that multi-member fact-free `Applies` predicates compose
with the row-property quotient, but the generated smoke still enumerated
bounded rank/mask members.  This diagnostic asks whether any compact predicate
describes whole source-index/state families without member enumeration.

The output is not trusted as proof and emits no Lean.  It is a gate for deciding
whether to attempt a non-enumerative Lean smoke or reject this path as a final
compression surface.
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
    local_word_window,
    prefix_counts_state,
    source_kind_impact_skeleton,
    source_kind_skeleton,
    source_pair_sign_skeleton,
    source_pair_skeleton,
)
from profile_source_agreement_theorem_shapes import (  # noqa: E402
    source_index_state_payload,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice,
    digest_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8g_source_index_state_nonenum_membership_audit.json"
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

CANDIDATE_ORDER = [
    "source_index_state",
    "prefix_count_state_row_property",
    "source_pair_sign_skeleton_row_property",
    "source_pair_skeleton_row_property",
    "source_kind_impact_row_property",
    "source_kind_row_property",
    "local_word_window_row_property",
]


@dataclass
class CandidateFamily:
    key: str
    cases: int = 0
    templates: Counter[str] = field(default_factory=Counter)
    source_agreement_keys: set[str] = field(default_factory=set)
    row_property_keys: set[str] = field(default_factory=set)
    exact_row_shape_keys: set[str] = field(default_factory=set)
    samples: list[dict[str, int]] = field(default_factory=list)

    def add(self, result: dict[str, Any]) -> None:
        self.cases += 1
        self.templates[str(result["template_id"])] += 1
        self.source_agreement_keys.add(str(result["source_agreement_key"]))
        self.row_property_keys.add(str(result["row_property_key"]))
        self.exact_row_shape_keys.add(str(result["exact_row_shape_key"]))
        if len(self.samples) < 5:
            sample = result["sample"]
            self.samples.append({
                "rank": int(sample["rank"]),
                "mask": int(sample["mask"]),
            })

    def summary(self) -> dict[str, Any]:
        template = self.templates.most_common(1)[0][0] if self.templates else None
        return {
            "key": self.key,
            "cases": self.cases,
            "template_id": template,
            "source_agreement_signatures": len(self.source_agreement_keys),
            "row_property_signatures": len(self.row_property_keys),
            "exact_row_shape_signatures": len(self.exact_row_shape_keys),
            "samples": self.samples,
        }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def candidate_payloads(result: dict[str, Any], word: list[str]) -> dict[str, dict[str, Any]]:
    sample = result["sample"]
    source_agreement = sample["source_agreement"]
    sources = source_agreement["sources"]
    mask = int(sample["mask"])
    template = str(result["template_id"])
    row_property = str(result["row_property_key"])
    return {
        "source_index_state": source_index_state_payload(result),
        "prefix_count_state_row_property": {
            "template": template,
            "sources": [
                prefix_counts_state(source, word, mask)
                for source in sources
            ],
            "rowProperty": row_property,
        },
        "source_pair_sign_skeleton_row_property": {
            "template": template,
            "sources": [source_pair_sign_skeleton(source) for source in sources],
            "rowProperty": row_property,
        },
        "source_pair_skeleton_row_property": {
            "template": template,
            "sources": [source_pair_skeleton(source) for source in sources],
            "rowProperty": row_property,
        },
        "source_kind_impact_row_property": {
            "template": template,
            "sources": [source_kind_impact_skeleton(source) for source in sources],
            "rowProperty": row_property,
        },
        "source_kind_row_property": {
            "template": template,
            "sources": [source_kind_skeleton(source) for source in sources],
            "rowProperty": row_property,
        },
        "local_word_window_row_property": {
            "template": template,
            "sources": [
                local_word_window(source, word, mask)
                for source in sources
            ],
            "rowProperty": row_property,
        },
    }


def payload_has_member_data(payload: dict[str, Any]) -> bool:
    encoded = json.dumps(payload, sort_keys=True)
    forbidden_markers = [
        '"rank"',
        '"mask"',
        '"word"',
        '"seq"',
        '"b"',
        '"first_line"',
        '"second_line"',
        '"multipliers"',
    ]
    return any(marker in encoded for marker in forbidden_markers)


def payload_has_source_or_row_facts(name: str, payload: dict[str, Any]) -> bool:
    if name in {"source_agreement", "source_row_property", "exact_row_shape"}:
        return True
    encoded = json.dumps(payload, sort_keys=True)
    forbidden_markers = [
        '"sourceAgreement"',
        '"first_line"',
        '"second_line"',
        '"multipliers"',
        '"integer_scaled"',
    ]
    return any(marker in encoded for marker in forbidden_markers)


def scan(rank_start: int, limit: int) -> dict[str, Any]:
    counts: Counter[str] = Counter({key: 0 for key in COUNT_KEYS})
    families: dict[str, dict[str, CandidateFamily]] = {
        name: {}
        for name in CANDIDATE_ORDER
    }
    payload_samples: dict[str, dict[str, Any]] = {}

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
                raise RuntimeError(f"unknown status {status!r}")
            counts["covered_cases"] += 1

            for name, payload in candidate_payloads(result, list(word)).items():
                key = digest_payload(payload)
                family = families[name].setdefault(key, CandidateFamily(key=key))
                family.add(result)
                payload_samples.setdefault(f"{name}:{key}", payload)

    candidate_results = []
    for name in CANDIDATE_ORDER:
        items = list(families[name].values())
        source_unstable = sum(
            1 for family in items
            if len(family.source_agreement_keys) != 1
        )
        row_unstable = sum(
            1 for family in items
            if len(family.row_property_keys) != 1
        )
        exact_row_unstable = sum(
            1 for family in items
            if len(family.exact_row_shape_keys) != 1
        )
        payloads = [
            payload_samples[f"{name}:{family.key}"]
            for family in items
        ]
        member_list_free = not any(payload_has_member_data(payload) for payload in payloads)
        fact_free = not any(
            payload_has_source_or_row_facts(name, payload)
            for payload in payloads
        )
        passes_stability = source_unstable == 0 and row_unstable == 0
        candidate_results.append({
            "candidate": name,
            "families": len(items),
            "largest_family_cases": max((family.cases for family in items), default=0),
            "mean_cases_per_family": (
                counts["covered_cases"] / len(items)
                if items else None
            ),
            "source_unstable_families": source_unstable,
            "row_property_unstable_families": row_unstable,
            "exact_row_shape_unstable_families": exact_row_unstable,
            "member_list_free": member_list_free,
            "fact_free": fact_free,
            "passes_stability": passes_stability,
            "passes_nonenum_gate": (
                passes_stability and member_list_free and fact_free
            ),
            "top_families": [
                family.summary()
                for family in sorted(items, key=lambda family: (-family.cases, family.key))[:10]
            ],
        })

    passing = [
        item for item in candidate_results
        if item["passes_nonenum_gate"]
    ]
    if counts["non_two_source_cases"] or counts["uncovered_cases"]:
        status = "reject-uncovered-good-direction-survivors"
        chosen = None
        notes = ["some GoodDirection survivors are not covered by two-source templates"]
    elif passing:
        chosen_item = min(
            passing,
            key=lambda item: (int(item["families"]), str(item["candidate"])),
        )
        status = "needs-nonenum-lean-smoke"
        chosen = chosen_item["candidate"]
        notes = [
            f"{chosen} is stable, fact-free, and member-list-free in the bounded window",
            "next step should prove a small Lean smoke for this predicate without enumerating members",
        ]
    else:
        status = "reject-source-index-state-final-surface"
        chosen = None
        notes = [
            "no audited predicate is simultaneously stable, fact-free, and member-list-free",
            "do not scale source-index/state membership as final coverage",
        ]

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8G",
        "mode": "source_index_state_nonenum_membership_audit",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": dict(counts),
        "candidate_results": candidate_results,
        "decision": {
            "status": status,
            "chosen_candidate": chosen,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8G Source-Index/State Non-Enumerative Membership Audit",
        "",
        "This diagnostic is not trusted as proof. It audits whether bounded",
        "source-index/state membership can be represented without rank/mask",
        "member enumeration.",
        "",
        f"- Decision: `{decision['status']}`",
        f"- Chosen candidate: `{decision['chosen_candidate']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Uncovered/non-two-source cases: `{counts['uncovered_cases'] + counts['non_two_source_cases']}`",
        "",
        "## Candidate Results",
        "",
        "| Candidate | Families | Largest | Source unstable | Row unstable | Exact-row unstable | Fact-free | Member-list-free | Gate |",
        "| --- | ---: | ---: | ---: | ---: | ---: | --- | --- | --- |",
    ]
    for item in payload["candidate_results"]:
        lines.append(
            f"| `{item['candidate']}` | {item['families']} | "
            f"{item['largest_family_cases']} | "
            f"{item['source_unstable_families']} | "
            f"{item['row_property_unstable_families']} | "
            f"{item['exact_row_shape_unstable_families']} | "
            f"`{item['fact_free']}` | "
            f"`{item['member_list_free']}` | "
            f"`{item['passes_nonenum_gate']}` |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Top Families for Chosen Candidate",
        "",
    ])
    chosen = decision["chosen_candidate"]
    chosen_result = next(
        (item for item in payload["candidate_results"] if item["candidate"] == chosen),
        None,
    )
    if chosen_result:
        lines.extend([
            "| Cases | Template | Source signatures | Row signatures | Exact-row signatures | Samples |",
            "| ---: | --- | ---: | ---: | ---: | --- |",
        ])
        for family in chosen_result["top_families"]:
            samples = ", ".join(
                f"r{sample['rank']}/m{sample['mask']}"
                for sample in family["samples"]
            )
            lines.append(
                f"| {family['cases']} | `{family['template_id']}` | "
                f"{family['source_agreement_signatures']} | "
                f"{family['row_property_signatures']} | "
                f"{family['exact_row_shape_signatures']} | {samples} |"
            )
    else:
        lines.append("No candidate passed the non-enumerative gate.")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = scan(rank_start=args.rank_start, limit=args.limit)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
