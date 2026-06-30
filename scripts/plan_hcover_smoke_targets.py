#!/usr/bin/env python3
"""Choose bounded hcover smoke targets from quotient diagnostics.

The goal is not to prove coverage.  The goal is to choose the next generated
Lean smoke targets deliberately:

* a safe baseline target whose quotient key is close to a single concrete
  family but uses the production domain surface; and
* a mixed target that exercises source-skeleton/row sharing without jumping to
  template-only coverage.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
GENERATED = ROOT / "scripts/generated"

NORMAL_FORMS = GENERATED / "phase6z6k8ap16du9en_normal_form_quotients.json"
QUOTIENTS = GENERATED / "phase6z6k8ap16du9ej_classifier_census_quotients.json"
OUT_JSON = GENERATED / "phase6z6k8ap16du9fz_hcover_smoke_targets.json"
OUT_MD = GENERATED / "phase6z6k8ap16du9fz_hcover_smoke_targets.md"


def load(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def surface(report: dict[str, Any], name: str) -> dict[str, Any]:
    for item in report.get("surfaces", []):
        if item.get("surface") == name:
            return item
    raise KeyError(name)


def top_group(item: dict[str, Any]) -> dict[str, Any]:
    groups = item.get("top_groups", [])
    if not groups:
        raise ValueError(f"surface {item.get('surface')} has no top groups")
    return groups[0]


def first_mixed_group(item: dict[str, Any], *, min_families: int = 2) -> dict[str, Any]:
    for group in item.get("top_groups", []):
        if int(group.get("concrete_family_count", 0)) >= min_families:
            return group
    return top_group(item)


def summarize_group(group: dict[str, Any]) -> dict[str, Any]:
    return {
        "key": group.get("key"),
        "case_count": group.get("case_count"),
        "concrete_family_count": group.get("concrete_family_count"),
        "support_count": group.get("support_count"),
        "integer_scaled_count": group.get("integer_scaled_count"),
        "exact_row_shape_count": group.get("exact_row_shape_count"),
        "payload": group.get("payload"),
        "sample_families": group.get("sample_families")
        or group.get("sample_concrete_families"),
    }


def summarize() -> dict[str, Any]:
    normal_forms = load(NORMAL_FORMS)
    quotients = load(QUOTIENTS)

    baseline_surface = surface(normal_forms, "template_source_skeletons_integer_scaled")
    mixed_surface = surface(normal_forms, "template_source_skeletons_row")
    rejected_surface = surface(quotients, "template_row")

    baseline = top_group(baseline_surface)
    mixed = first_mixed_group(mixed_surface, min_families=2)
    rejected = top_group(rejected_surface)

    return {
        "trusted_as_proof": False,
        "phase": "6Z.6K.8AP.16DU.9FZ",
        "inputs": {
            "normal_form_quotients": str(NORMAL_FORMS.relative_to(ROOT)),
            "classifier_quotients": str(QUOTIENTS.relative_to(ROOT)),
        },
        "targets": {
            "baseline_template_source_skeletons_integer_scaled": summarize_group(
                baseline
            ),
            "mixed_template_source_skeletons_row": summarize_group(mixed),
            "rejected_template_row_stress": summarize_group(rejected),
        },
        "decision": {
            "status": "targets-selected-generator-obligation-open",
            "baseline_gate": (
                "Emit a bounded hcover smoke for the baseline group first.  It "
                "should use TemplateLanguageDomainCoversIdentityRange.single or "
                "concat and the candidate-union/source-position erasure path, "
                "but it is allowed to be close to one concrete family."
            ),
            "mixed_gate": (
                "After the baseline builds, emit a mixed source-skeleton/row "
                "smoke over the selected multi-family group.  This is the first "
                "useful test that candidate-union hcover can share above exact "
                "source indices without hiding everything in a template-only "
                "predicate."
            ),
            "do_not_start_with": (
                "Do not start with the template_row stress group: it has high "
                "case count but hides too many distinct source obligations."
            ),
        },
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    targets = payload["targets"]
    decision = payload["decision"]

    lines = [
        "# Phase 6Z.6K.8AP.16DU.9FZ Hcover Smoke Targets",
        "",
        "This proof-neutral planner chooses the next bounded hcover smoke targets",
        "from the quotient diagnostics.",
        "",
    ]

    for title, key in [
        (
            "Baseline Target",
            "baseline_template_source_skeletons_integer_scaled",
        ),
        ("Mixed Target", "mixed_template_source_skeletons_row"),
        ("Rejected Stress Target", "rejected_template_row_stress"),
    ]:
        target = targets[key]
        lines.extend(
            [
                f"## {title}",
                "",
                "| Metric | Value |",
                "| --- | ---: |",
                f"| `case_count` | `{target.get('case_count')}` |",
                f"| `concrete_family_count` | `{target.get('concrete_family_count')}` |",
                f"| `support_count` | `{target.get('support_count')}` |",
                f"| `integer_scaled_count` | `{target.get('integer_scaled_count')}` |",
                f"| `exact_row_shape_count` | `{target.get('exact_row_shape_count')}` |",
                "",
                "Payload:",
                "",
                "```json",
                json.dumps(target.get("payload"), indent=2, sort_keys=True),
                "```",
                "",
            ]
        )

    lines.extend(
        [
            "## Decision",
            "",
            f"- Status: `{decision['status']}`.",
            f"- Baseline gate: {decision['baseline_gate']}",
            f"- Mixed gate: {decision['mixed_gate']}",
            f"- Do not start with: {decision['do_not_start_with']}",
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
