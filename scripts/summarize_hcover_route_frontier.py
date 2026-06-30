#!/usr/bin/env python3
"""Summarize the current hcover route frontier.

This is a proof-neutral planning audit.  It reads the recent bounded
diagnostics and records the accepted downstream proof surfaces, the rejected
membership coordinates, and the next compression target for the
positive-survivor `hcover` premise.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
GENERATED = ROOT / "scripts/generated"

HCOVER = GENERATED / "phase6z6k8ap16du9fv_hcover_obligations.json"
CONTRACT = GENERATED / "phase6z6k8ap16du9dc_semantic_coverage_contract.json"
QUOTIENTS = GENERATED / "phase6z6k8ap16du9ej_classifier_census_quotients.json"
NORMAL_FORMS = GENERATED / "phase6z6k8ap16du9en_normal_form_quotients.json"
SOURCE_LANGUAGE = GENERATED / "phase6z6k8ap16du9fc_source_language_profile.json"

OUT_JSON = GENERATED / "phase6z6k8ap16du9fy_hcover_route_frontier.json"
OUT_MD = GENERATED / "phase6z6k8ap16du9fy_hcover_route_frontier.md"


def load(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def surface_by_name(report: dict[str, Any], name: str) -> dict[str, Any]:
    for surface in report.get("surfaces", []):
        if surface.get("surface") == name:
            return surface
    return {}


def summarize() -> dict[str, Any]:
    hcover = load(HCOVER)
    contract = load(CONTRACT)
    quotients = load(QUOTIENTS)
    normal_forms = load(NORMAL_FORMS)
    source_language = load(SOURCE_LANGUAGE)

    concrete = surface_by_name(quotients, "concrete")
    skeletons_row = surface_by_name(quotients, "template_source_skeletons_row")
    template_row = surface_by_name(quotients, "template_row")
    nf_template_integer = surface_by_name(normal_forms, "template_integer_scaled")
    nf_template_skeleton_integer = surface_by_name(
        normal_forms, "template_source_skeletons_integer_scaled"
    )

    payload: dict[str, Any] = {
        "trusted_as_proof": False,
        "phase": "6Z.6K.8AP.16DU.9FY",
        "inputs": {
            "hcover_obligations": str(HCOVER.relative_to(ROOT)),
            "semantic_contract": str(CONTRACT.relative_to(ROOT)),
            "classifier_quotients": str(QUOTIENTS.relative_to(ROOT)),
            "normal_form_quotients": str(NORMAL_FORMS.relative_to(ROOT)),
            "source_language": str(SOURCE_LANGUAGE.relative_to(ROOT)),
        },
        "accepted_downstream_surfaces": {
            "semantic_contract_present": bool(
                contract.get("all_required_surfaces_present")
            ),
            "source_language_validation_failures": int(
                source_language.get("validation_failure_count", -1)
            ),
            "source_language_obligations": int(
                source_language.get("source_language_obligation_count", 0)
            ),
            "source_index_state_families_sampled": int(
                source_language.get("source_index_state_family_count", 0)
            ),
        },
        "rejected_or_insufficient_membership_coordinates": {
            "mask_to_candidate_map_status": hcover.get("interpretation", {}).get(
                "exact_mask_to_candidate_map_status"
            ),
            "candidate_set_status": hcover.get("interpretation", {}).get(
                "exact_candidate_set_status"
            ),
            "unique_mask_to_candidate_maps": hcover.get("counts", {}).get(
                "unique_mask_to_candidate_maps"
            ),
            "unique_candidate_sets": hcover.get("counts", {}).get(
                "unique_candidate_sets"
            ),
            "positive_survivor_signatures": hcover.get("counts", {}).get(
                "positive_survivor_signatures"
            ),
        },
        "quotient_frontier": {
            "concrete_families": concrete.get("quotient_group_count"),
            "template_source_skeletons_row_groups": skeletons_row.get(
                "quotient_group_count"
            ),
            "template_source_skeletons_row_multi_family_cases": skeletons_row.get(
                "multi_concrete_case_count"
            ),
            "template_row_groups": template_row.get("quotient_group_count"),
            "template_row_multi_family_cases": template_row.get(
                "multi_concrete_case_count"
            ),
            "normal_form_template_integer_groups": nf_template_integer.get(
                "group_count"
            ),
            "normal_form_template_skeleton_integer_groups": (
                nf_template_skeleton_integer.get("group_count")
            ),
        },
        "decision": {
            "status": "frontier-recorded-generator-obligation-open",
            "next_gate": (
                "Target a bounded generated hcover smoke whose domain is keyed "
                "above exact rank/mask maps but below template-only facts.  The "
                "candidate should reuse source-position obligations and row "
                "normal forms, then prove candidate-union membership through "
                "TemplateLanguageDomainCoversIdentityRange.single/concat rather "
                "than through exact mask-to-candidate maps."
            ),
            "do_not_use": [
                "exact mask-to-candidate maps as production hcover",
                "exact candidate sets as production hcover without further quotienting",
                "template-only quotients that hide multiple source obligations",
                "rank/mask singleton tables",
            ],
        },
    }
    return payload


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    accepted = payload["accepted_downstream_surfaces"]
    rejected = payload["rejected_or_insufficient_membership_coordinates"]
    frontier = payload["quotient_frontier"]
    decision = payload["decision"]

    lines = [
        "# Phase 6Z.6K.8AP.16DU.9FY Hcover Route Frontier",
        "",
        "This is a proof-neutral planning audit over recent bounded diagnostics.",
        "It records what is reusable, what is rejected, and what the next",
        "generated hcover smoke should target.",
        "",
        "## Accepted Downstream Surfaces",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ]
    for key, value in accepted.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Rejected Or Insufficient Membership Coordinates",
            "",
            "| Metric | Value |",
            "| --- | ---: |",
        ]
    )
    for key, value in rejected.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(["", "## Quotient Frontier", "", "| Metric | Value |", "| --- | ---: |"])
    for key, value in frontier.items():
        lines.append(f"| `{key}` | `{value}` |")

    lines.extend(
        [
            "",
            "## Decision",
            "",
            f"- Status: `{decision['status']}`.",
            f"- Next gate: {decision['next_gate']}",
            "",
            "Do not use:",
        ]
    )
    for item in decision["do_not_use"]:
        lines.append(f"- {item}.")
    lines.append("")

    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    payload = summarize()
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_markdown(payload, OUT_MD)
    print(json.dumps(payload["decision"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
