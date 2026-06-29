#!/usr/bin/env python3
"""Audit the AP16DU.9 membership surfaces after the descriptor bridge work.

This script is planning/engineering telemetry only; it is not proof evidence.
It checks that the current Lean files expose the semantic endpoint bridges we
expect, and records the remaining non-wrapper membership theorem that must be
proved by a future generated/shared-family emitter.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
CLASSIFIER = ROOT / (
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateClassifierDU3Smoke.lean"
)
SELECTOR_ADAPTER = ROOT / (
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateSelectorDU9RRangeAdapter.lean"
)
ROW_PROPERTY = ROOT / (
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "RowPropertyAllGoodBridge.lean"
)
DESCRIPTOR = ROOT / (
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateDescriptorLanguage.lean"
)


REQUIRED_SURFACES = {
    "classifier facts catalog to allGood": (
        CLASSIFIER,
        "classifierAllGoodCoverage_of_sourceIndexFactsCatalog",
    ),
    "classifier predicate catalog to allGood": (
        CLASSIFIER,
        "classifierAllGoodCoverage_of_sourceIndexPredicateCatalog",
    ),
    "classifier facts catalog to descriptor": (
        CLASSIFIER,
        "classifierDescriptorCoverage_of_sourceIndexFactsCatalog",
    ),
    "classifier predicate catalog to descriptor": (
        CLASSIFIER,
        "classifierDescriptorCoverage_of_sourceIndexPredicateCatalog",
    ),
    "classifier key facts to descriptor": (
        CLASSIFIER,
        "classifierDescriptorCoverage_of_key_source_row",
    ),
    "classifier key predicates to descriptor": (
        CLASSIFIER,
        "classifierDescriptorCoverage_of_key_source_predicate",
    ),
    "selector catalog to allGood": (
        SELECTOR_ADAPTER,
        "SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage",
    ),
    "selector catalog to descriptor": (
        SELECTOR_ADAPTER,
        "SelectorCoordinateFactsGoodCatalogOnRangeFor.to_descriptorCoverage",
    ),
    "row-property existential source/row": (
        ROW_PROPERTY,
        "RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row",
    ),
    "descriptor coverage to allGood": (
        DESCRIPTOR,
        "SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage",
    ),
}


def file_contains(path: Path, needle: str) -> bool:
    return needle in path.read_text(encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9AI Membership Surface Audit",
        "",
        "This audit is planning telemetry only, not proof evidence.",
        "",
        f"- Status: `{payload['status']}`",
        f"- Missing expected surfaces: `{len(payload['missing_surfaces'])}`",
        f"- Selected remaining obligation: `{payload['selected_remaining_obligation']['name']}`",
        "",
        "## Surface Check",
        "",
        "| Surface | Present | File |",
        "| --- | --- | --- |",
    ]
    for item in payload["surfaces"]:
        lines.append(
            f"| `{item['name']}` | `{item['present']}` | `{item['file']}` |"
        )
    lines.extend(
        [
            "",
            "## Remaining Theorem Shape",
            "",
            "```lean",
            payload["selected_remaining_obligation"]["lean"],
            "```",
            "",
            "## Decision",
            "",
            payload["decision"],
            "",
            "## Rejected Next Moves",
            "",
        ]
    )
    for rejected in payload["rejected_next_moves"]:
        lines.append(f"- {rejected}")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--json",
        type=Path,
        default=ROOT / "scripts/generated/phase6z6k8ap16du9ai_membership_surface_audit.json",
    )
    parser.add_argument("--md", type=Path, default=None)
    args = parser.parse_args()
    md_path = (
        args.md
        if args.md is not None
        else args.json.with_suffix(".md")
    )

    surfaces = []
    missing = []
    for name, (path, needle) in REQUIRED_SURFACES.items():
        present = path.exists() and file_contains(path, needle)
        item = {
            "name": name,
            "needle": needle,
            "file": str(path.relative_to(ROOT)),
            "present": present,
        }
        surfaces.append(item)
        if not present:
            missing.append(item)

    obligation = {
        "name": "semantic_classifier_key_source_row_membership",
        "lean": "\n".join(
            [
                "forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
                "  0 <= rank ->",
                "    rank < 5000 ->",
                "      totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
                "          (matId : Mat3 Rat) ->",
                "        GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
                "          exists key : ClassifierKey,",
                "            SourceIndexStateSourceFacts",
                "              key.toSourceIndexStateKey rank mask /\\",
                "            SourceIndexStateRowFacts",
                "              key.toSourceIndexStateKey rank mask",
            ]
        ),
    }
    payload = {
        "status": "accepted-surfaces-present" if not missing else "missing-surfaces",
        "surfaces": surfaces,
        "missing_surfaces": missing,
        "selected_remaining_obligation": obligation,
        "equivalent_endpoint_targets": [
            "SourceIndexStateDescriptorGoodCoverageOnRange 0 5000",
            "RowPropertyParametricCoverageOnIdentityRange 0 5000",
            "AllTranslationGoodCoverageOnRange 0 5000",
            "SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000",
            "SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000",
        ],
        "decision": (
            "Endpoint bridge work is complete enough for the bounded AP16DU "
            "classifier. The next useful work must prove the semantic "
            "membership theorem itself, preferably by a shared source-index/state "
            "family classifier, not by adding more endpoint wrappers."
        ),
        "rejected_next_moves": [
            "Do not add more all-Good/descriptor wrapper theorems unless a generated emitter actually needs a different premise shape.",
            "Do not prove membership by fin_cases over all masks or by replaying bad-direction masks.",
            "Do not scale DU.9P compact-Walsh rank-local membership covers as production evidence.",
            "Do not build a giant rank/mask table of classifier keys in Lean.",
            "Do not run broad lake builds; use focused guarded checks only.",
        ],
    }
    write_json(args.json, payload)
    write_text(md_path, markdown(payload))
    print(
        json.dumps(
            {
                "status": payload["status"],
                "missing_surfaces": len(missing),
                "json": str(args.json),
                "md": str(md_path),
            },
            indent=2,
            sort_keys=True,
        )
    )
    return 0 if not missing else 1


if __name__ == "__main__":
    raise SystemExit(main())
