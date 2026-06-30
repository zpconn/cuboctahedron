#!/usr/bin/env python3
"""Audit whether selected hcover smoke targets can cover singleton ranges.

The 9FZ target planner selects semantic quotient groups.  A quotient group is
useful for candidate-domain membership, but it is not automatically a
range-level `hcover` target: a singleton rank may have GoodDirection survivors
belonging to several quotient groups.

This audit checks that distinction for the selected targets and recommends the
first range-level smoke shape.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
SCRIPT_DIR = ROOT / "scripts"
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import source_payload_for_surface  # noqa: E402
from profile_symbolic_row_extraction_families import classify_choice, digest_payload  # noqa: E402


GENERATED = ROOT / "scripts/generated"
TARGETS = GENERATED / "phase6z6k8ap16du9fz_hcover_smoke_targets.json"
OUT_JSON = GENERATED / "phase6z6k8ap16du9ga_hcover_target_range_fit.json"
OUT_MD = GENERATED / "phase6z6k8ap16du9ga_hcover_target_range_fit.md"


def rank_good_cases(rank: int) -> list[dict[str, Any]]:
    cases: list[dict[str, Any]] = []
    for mask in range(64):
        result = classify_choice(rank, mask)
        if result is None or result.get("status") != "covered":
            continue
        payload = source_payload_for_surface(result, "kind_impact")
        cases.append(
            {
                "rank": rank,
                "mask": mask,
                "template": result["template_id"],
                "source_indices": result["sample"]["source_agreement"]["indices"],
                "row_property": result["row_property_key"],
                "concrete_key": digest_payload(payload),
                "payload": payload,
            }
        )
    return cases


def candidate_ranks_from_target(target: dict[str, Any]) -> list[int]:
    ranks: list[int] = []
    for family in target.get("sample_families") or []:
        sample = family.get("sample") or {}
        if "rank" in sample:
            ranks.append(int(sample["rank"]))
    return sorted(set(ranks))


def audit_target(name: str, target: dict[str, Any]) -> dict[str, Any]:
    family_keys = {
        str(family.get("family_key") or family.get("key"))
        for family in target.get("sample_families") or []
    }
    ranks = candidate_ranks_from_target(target)
    rank_reports = []
    for rank in ranks:
        good = rank_good_cases(rank)
        matching = [case for case in good if case["concrete_key"] in family_keys]
        keys = sorted({case["concrete_key"] for case in good})
        rank_reports.append(
            {
                "rank": rank,
                "good_direction_cases": len(good),
                "matching_target_cases": len(matching),
                "good_direction_concrete_keys": len(keys),
                "target_covers_rank": len(good) == len(matching),
                "concrete_keys_needed_for_rank": keys,
            }
        )
    return {
        "target": name,
        "sample_ranks": ranks,
        "target_family_key_count": len(family_keys),
        "rank_reports": rank_reports,
        "covers_all_sample_ranks": all(
            report["target_covers_rank"] for report in rank_reports
        )
        if rank_reports
        else False,
    }


def summarize() -> dict[str, Any]:
    targets = json.loads(TARGETS.read_text(encoding="utf-8"))["targets"]
    baseline = audit_target(
        "baseline_template_source_skeletons_integer_scaled",
        targets["baseline_template_source_skeletons_integer_scaled"],
    )
    mixed = audit_target(
        "mixed_template_source_skeletons_row",
        targets["mixed_template_source_skeletons_row"],
    )

    first_rank = None
    first_keys: list[str] = []
    for report in baseline["rank_reports"] + mixed["rank_reports"]:
        if report["good_direction_cases"] > 0:
            first_rank = report["rank"]
            first_keys = report["concrete_keys_needed_for_rank"]
            break

    return {
        "trusted_as_proof": False,
        "phase": "6Z.6K.8AP.16DU.9GA",
        "targets": {
            "baseline": baseline,
            "mixed": mixed,
        },
        "recommended_range_smoke": {
            "rank": first_rank,
            "candidate_union_key_count": len(first_keys),
            "candidate_union_keys": first_keys,
        },
        "decision": {
            "status": "quotient-targets-not-range-hcover-by-themselves",
            "next_gate": (
                "Emit the first range-level smoke as a singleton rank whose "
                "domain is the union of all concrete/source-position candidate "
                "groups needed by that rank.  Use the quotient targets as member "
                "bridge components, not as complete hcover ranges by themselves."
            ),
        },
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9GA Hcover Target Range-Fit Audit",
        "",
        "This proof-neutral audit checks whether the selected 9FZ quotient targets",
        "cover the complete GoodDirection survivor set for their sample ranks.",
        "",
    ]
    for key, target in payload["targets"].items():
        lines.extend(
            [
                f"## `{key}`",
                "",
                f"- Sample ranks: `{target['sample_ranks']}`",
                f"- Target family keys: `{target['target_family_key_count']}`",
                f"- Covers all sample ranks: `{target['covers_all_sample_ranks']}`",
                "",
                "| Rank | GoodDirection cases | Target cases | Concrete keys needed | Covers rank |",
                "| ---: | ---: | ---: | ---: | --- |",
            ]
        )
        for report in target["rank_reports"]:
            lines.append(
                f"| `{report['rank']}` | "
                f"`{report['good_direction_cases']}` | "
                f"`{report['matching_target_cases']}` | "
                f"`{report['good_direction_concrete_keys']}` | "
                f"`{report['target_covers_rank']}` |"
            )
        lines.append("")

    smoke = payload["recommended_range_smoke"]
    lines.extend(
        [
            "## Recommended Range Smoke",
            "",
            f"- Rank: `{smoke['rank']}`",
            f"- Candidate-union key count: `{smoke['candidate_union_key_count']}`",
            "",
            "## Decision",
            "",
            f"- Status: `{payload['decision']['status']}`.",
            f"- Next gate: {payload['decision']['next_gate']}",
            "",
        ]
    )
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    payload = summarize()
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, OUT_MD)
    print(json.dumps(payload["decision"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
