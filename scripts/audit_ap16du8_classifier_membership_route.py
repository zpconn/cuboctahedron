#!/usr/bin/env python3
"""Audit the AP16DU.8 classifier-membership theorem route.

This script is planning/profiling only.  It is not proof evidence.

AP16DU.7 added a Prop/Bool bridge for the bounded source-index/state
classifier.  AP16DU.8 must prove the actual bounded membership theorem:

    identity-linear + goodDirectionAtRankBool = true -> ClassifierApplies

The point of this audit is to keep the next implementation honest: reject
finite rank/mask replay, prefer a Prop-level theorem, and name the exact
semantic lemma still missing.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du2_source_index_state_classifier_profile.json"
)
DEFAULT_DU7 = Path("scripts/generated/phase6z6k8ap16du7_classifier_prop_bridge_smoke.json")
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateClassifierDU3Smoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du8_classifier_membership_route_audit.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def count_pattern(path: Path, pattern: str) -> int:
    text = path.read_text(encoding="utf-8")
    return len(re.findall(pattern, text))


def has_pattern(path: Path, pattern: str) -> bool:
    text = path.read_text(encoding="utf-8")
    return re.search(pattern, text) is not None


def audit(profile_path: Path, du7_path: Path, lean_path: Path) -> dict[str, Any]:
    profile = read_json(profile_path)
    du7 = read_json(du7_path)
    counts = profile.get("counts", {})
    family_count = int(profile.get("source_index_state_family_count", 0))
    good_cases = int(counts.get("good_direction_survivors", 0))
    not_good_cases = int(counts.get("not_good_direction_masks", 0))
    identity_words = int(counts.get("identity_words", 0))
    assignments = int(counts.get("translation_sign_assignments", 0))
    old_replay = next(
        (
            row
            for row in profile.get("candidate_results", [])
            if row.get("name") == "bounded_replay_current"
        ),
        {},
    )

    lean_scan = {
        "classifier_applies_constructors": count_pattern(
            lean_path, r"\|\s+fam\d{3}\s+\{r : Nat\}"
        ),
        "has_bool_bridge": has_pattern(
            lean_path, r"theorem\s+classifierCompletenessOnIdentityRange_of_bool\b"
        ),
        "has_prop_bridge": has_pattern(
            lean_path, r"theorem\s+classifierCompletenessOnIdentityRange_of_prop\b"
        ),
        "has_bool_of_prop": has_pattern(
            lean_path, r"theorem\s+classifierAppliesBool_eq_true_of_applies\b"
        ),
    }

    direct_bool_obligations = identity_words * 64
    concrete_good_obligations = good_cases
    rejected_routes = [
        {
            "name": "direct_bool_decide_on_range",
            "status": "rejected",
            "reason": (
                "Would ask Lean to reduce goodDirectionAtRankBool and "
                "classifierAppliesBool over every identity rank/mask in the "
                "bounded window."
            ),
            "estimated_obligations": direct_bool_obligations,
        },
        {
            "name": "concrete_good_survivor_replay",
            "status": "rejected",
            "reason": (
                "Avoids bad-direction masks but still emits one membership "
                "branch for each concrete GoodDirection survivor."
            ),
            "estimated_obligations": concrete_good_obligations,
        },
        {
            "name": "old_bounded_replay_current",
            "status": "rejected",
            "reason": "Already rejected by DU.5 because it includes bad-direction and nonidentity branches.",
            "estimated_obligations": old_replay.get("theorem_obligations"),
        },
    ]

    accepted_route = {
        "name": "source_index_state_prop_membership",
        "status": "selected-next-implementation",
        "reason": (
            "DU.7 lets the next proof target Prop-level ClassifierApplies, "
            "so the generator can prove a semantic descriptor-language "
            "membership theorem and erase to Bool only at the boundary."
        ),
        "family_obligations": family_count,
        "required_theorem": (
            "forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords), "
            "0 <= rank -> rank < 5000 -> "
            "totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) -> "
            "goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true -> "
            "ClassifierApplies rank mask"
        ),
        "preferred_lemma_shape": (
            "source-index/state language membership: identity-linear + "
            "GoodDirection implies one reusable descriptor family applies"
        ),
    }

    status = (
        "selected-prop-membership-route"
        if (
            lean_scan["has_prop_bridge"]
            and lean_scan["has_bool_of_prop"]
            and lean_scan["classifier_applies_constructors"] == family_count
            and du7.get("decision", {}).get("status") == "classifier-smoke-emitted"
        )
        else "needs-review"
    )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.8",
        "mode": "classifier_membership_route_audit",
        "trusted_as_proof": False,
        "inputs": {
            "profile": str(profile_path),
            "du7_smoke": str(du7_path),
            "lean_module": str(lean_path),
        },
        "bounded_window": {
            "rank_start": profile.get("rank_start"),
            "rank_end": profile.get("rank_end"),
            "identity_words": identity_words,
            "translation_sign_assignments": assignments,
            "good_direction_survivors": good_cases,
            "not_good_direction_masks": not_good_cases,
            "source_index_state_families": family_count,
        },
        "lean_scan": lean_scan,
        "rejected_routes": rejected_routes,
        "accepted_route": accepted_route,
        "decision": {
            "status": status,
            "notes": [
                "DU.8 should prove Prop-level ClassifierApplies, not direct Bool membership.",
                "The proof still must be semantic; this audit does not prove coverage.",
                "The next Lean emitter should avoid rank-local survivor signatures and all-mask replay.",
            ],
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def markdown(payload: dict[str, Any]) -> str:
    window = payload["bounded_window"]
    accepted = payload["accepted_route"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.8 classifier membership route audit",
        "",
        "This report is not proof evidence. It records the theorem route selected",
        "after the AP16DU.7 Prop/Bool bridge.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Rank window: `[{window['rank_start']}, {window['rank_end']})`",
        f"- Identity words: `{window['identity_words']}`",
        f"- Translation sign assignments: `{window['translation_sign_assignments']}`",
        f"- GoodDirection survivors: `{window['good_direction_survivors']}`",
        f"- Not-GoodDirection masks avoided: `{window['not_good_direction_masks']}`",
        f"- Source-index/state families: `{window['source_index_state_families']}`",
        "",
        "## Lean Surface Scan",
        "",
        "| Item | Value |",
        "| --- | ---: |",
    ]
    for key, value in payload["lean_scan"].items():
        lines.append(f"| `{key}` | `{value}` |")
    lines.extend([
        "",
        "## Rejected Routes",
        "",
        "| Route | Status | Estimated obligations | Reason |",
        "| --- | --- | ---: | --- |",
    ])
    for row in payload["rejected_routes"]:
        lines.append(
            f"| `{row['name']}` | `{row['status']}` | "
            f"`{row.get('estimated_obligations')}` | {row['reason']} |"
        )
    lines.extend([
        "",
        "## Selected Route",
        "",
        f"- Name: `{accepted['name']}`",
        f"- Status: `{accepted['status']}`",
        f"- Family obligations: `{accepted['family_obligations']}`",
        "",
        accepted["reason"],
        "",
        "Required theorem:",
        "",
        "```text",
        accepted["required_theorem"],
        "```",
        "",
        "Preferred lemma shape:",
        "",
        "```text",
        accepted["preferred_lemma_shape"],
        "```",
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--du7-smoke", type=Path, default=DEFAULT_DU7)
    parser.add_argument("--lean-module", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = audit(args.profile, args.du7_smoke, args.lean_module)
    write_json(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "json": str(args.json),
        "md": str(args.md),
        "phase": payload["phase"],
        "status": payload["decision"]["status"],
    }, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
