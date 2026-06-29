#!/usr/bin/env python3
"""Audit AP16DU.5 classifier-completeness proof routes.

This emits no Lean and is not trusted as proof.  It records the exact
translation membership theorem that remains after AP16DU.4 and rejects the
routes that would recreate the old OOM-prone proof shapes.
"""

from __future__ import annotations

import json
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any


PROFILE = Path(
    "scripts/generated/"
    "phase6z6k8ap16du2_source_index_state_classifier_profile.json"
)
SIGNATURE_AUDIT = Path(
    "scripts/generated/"
    "phase6z6k8ap16du_candidate_completeness_route_audit.json"
)
OUT_JSON = Path(
    "scripts/generated/"
    "phase6z6k8ap16du5_classifier_completeness_route_audit.json"
)
OUT_MD = OUT_JSON.with_suffix(".md")


@dataclass
class Route:
    name: str
    status: str
    obligations: int
    concrete_survivor_branches: int
    concrete_bad_direction_branches: int
    concrete_nonidentity_branches: int
    notes: list[str]


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def build_payload(profile: dict[str, Any], signature_audit: dict[str, Any]) -> dict[str, Any]:
    counts = profile["counts"]
    family_count = int(profile["source_index_state_family_count"])
    good_cases = int(counts["good_direction_survivors"])
    bad_cases = int(counts["not_good_direction_masks"])
    nonidentity = int(profile["nonidentity_rank_count"])
    signature_count = int(signature_audit["signature_count"])
    singleton_signatures = int(signature_audit["singleton_signature_count"])
    singleton_mass = int(signature_audit["singleton_case_mass"])

    routes = [
        Route(
            name="old_bounded_replay",
            status="rejected",
            obligations=good_cases + bad_cases + nonidentity,
            concrete_survivor_branches=good_cases,
            concrete_bad_direction_branches=bad_cases,
            concrete_nonidentity_branches=nonidentity,
            notes=[
                "Revives the rejected bounded replay surface.",
                "Includes not-GoodDirection masks and nonidentity ranks.",
                "This is the proof shape that caused large RSS spikes.",
            ],
        ),
        Route(
            name="positive_survivor_singletons",
            status="rejected",
            obligations=good_cases,
            concrete_survivor_branches=good_cases,
            concrete_bad_direction_branches=0,
            concrete_nonidentity_branches=0,
            notes=[
                "Avoids bad-direction masks but still emits concrete survivor branches.",
                "It is a bounded diagnostic route, not a production proof route.",
            ],
        ),
        Route(
            name="positive_signature_route",
            status="rejected",
            obligations=signature_count,
            concrete_survivor_branches=singleton_mass,
            concrete_bad_direction_branches=0,
            concrete_nonidentity_branches=0,
            notes=[
                f"{singleton_signatures} of {signature_count} signatures are singleton/rank-local.",
                "This recreates the rank-local anchor problem under a different key.",
            ],
        ),
        Route(
            name="source_index_state_classifier_completeness",
            status="accepted-next-proof-target",
            obligations=family_count,
            concrete_survivor_branches=0,
            concrete_bad_direction_branches=0,
            concrete_nonidentity_branches=0,
            notes=[
                "This is the AP16DU.5 target.",
                "Prove classifierCompletenessOnIdentityRange for the AP16DU.3 classifierFamily.",
                "The theorem must derive ClassifierApplies from identity-linear GoodDirection assumptions.",
            ],
        ),
    ]

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.5",
        "trusted_as_proof": False,
        "mode": "classifier_completeness_route_audit",
        "range": [int(profile["rank_start"]), int(profile["rank_end"])],
        "counts": {
            "pair_words_scanned": int(counts["pair_words_scanned"]),
            "identity_words": int(counts["identity_words"]),
            "translation_sign_assignments": int(counts["translation_sign_assignments"]),
            "good_direction_survivors": good_cases,
            "not_good_direction_masks": bad_cases,
            "nonidentity_words": nonidentity,
            "source_index_state_families": family_count,
            "largest_family_cases": int(profile["largest_family_cases"]),
            "positive_signature_count": signature_count,
            "singleton_positive_signatures": singleton_signatures,
            "singleton_signature_case_mass": singleton_mass,
        },
        "routes": [asdict(route) for route in routes],
        "decision": {
            "status": "accepted-next-proof-target",
            "selected_route": "source_index_state_classifier_completeness",
            "target": (
                "SourceIndexStateClassifierDU3Smoke.classifierCompletenessOnIdentityRange"
            ),
            "erasure": (
                "SourceIndexStateClassifierDU3Smoke.classifierAllGoodCoverage"
            ),
            "notes": [
                "This audit emits no Lean and is not trusted as proof.",
                "It records the proof route selected for AP16DU.5.",
                "Do not revive old bounded replay, positive-survivor singleton, or rank-local signature routes.",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.5 Classifier Completeness Route Audit",
        "",
        "This audit is not trusted as proof and emits no Lean. It records the",
        "remaining AP16DU.5 proof route after the AP16DU.4 bridge surface.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Selected route: `{payload['decision']['selected_route']}`",
        f"- Target theorem premise: `{payload['decision']['target']}`",
        f"- Erasure theorem: `{payload['decision']['erasure']}`",
        f"- Range: `{payload['range']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Not-GoodDirection masks avoided: `{counts['not_good_direction_masks']}`",
        f"- Source-index/state families: `{counts['source_index_state_families']}`",
        f"- Largest family: `{counts['largest_family_cases']}`",
        "",
        "## Route Decision",
        "",
        "| Route | Status | Obligations | Survivor branches | Bad-direction branches | Nonidentity branches | Notes |",
        "| --- | --- | ---: | ---: | ---: | ---: | --- |",
    ]
    for route in payload["routes"]:
        notes = " ".join(route["notes"])
        lines.append(
            f"| `{route['name']}` | `{route['status']}` | "
            f"{route['obligations']} | "
            f"{route['concrete_survivor_branches']} | "
            f"{route['concrete_bad_direction_branches']} | "
            f"{route['concrete_nonidentity_branches']} | {notes} |"
        )
    lines.extend([
        "",
        "## Required Next Theorem",
        "",
        "```lean",
        "SourceIndexStateClassifierDU3Smoke.classifierCompletenessOnIdentityRange",
        "```",
        "",
        "This is the bounded `[0,5000)` theorem that arbitrary identity-linear",
        "`GoodDirectionAtRank` translation survivors satisfy one of the 125",
        "source-index/state descriptor families. Once this is proved,",
        "`classifierAllGoodCoverage` erases it to",
        "`AllTranslationGoodCoverageOnRange 0 5000`.",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    profile = read_json(PROFILE)
    signature_audit = read_json(SIGNATURE_AUDIT)
    payload = build_payload(profile, signature_audit)
    write_json(OUT_JSON, payload)
    write_text(OUT_MD, markdown(payload))
    print(json.dumps(payload["decision"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
