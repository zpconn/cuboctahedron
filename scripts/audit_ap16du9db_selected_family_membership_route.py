#!/usr/bin/env python3
"""Audit the DU.9DB selected-family membership route.

This diagnostic is not proof evidence.  DU.9DA showed that rank-family maps
are almost rank-local on `[0,5000)`, while the semantic source-index/state
family surface remains small.  This audit asks whether the next "selected
family" Lean smoke can be proof-relevant without reusing the rank-local compact
GoodDirection membership path.

The result is intentionally conservative: a selected-family smoke is accepted
only if its intended target is the range-parametric semantic catalog theorem,
and rejected if it depends on the compact-Walsh/rank-local selector-positive
membership theorems.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9da_membership_compression_surface.json"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9db_selected_family_membership_route.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
SUPPORT = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")

ROUTE_FILES = {
    "semantic_language": SUPPORT / "RowPropertySemanticLanguage.lean",
    "selector_range_adapter": SUPPORT / "SourceIndexStateSelectorDU9RRangeAdapter.lean",
    "generated_range_smoke": SUPPORT / "RowPropertySemanticRangeGeneratedSmoke.lean",
    "row_property_case_smoke": SUPPORT / "RowPropertySemanticCaseSmoke.lean",
    "row_property_smoke": SUPPORT / "SourceIndexStateSelectorDU9YRowPropertySmoke.lean",
}

COMPACT_PATTERNS = [
    r"SourceIndexStateSelectorDU9PCompactMembership",
    r"rank\d+_selectorPositive_of_GoodDirection",
    r"generatedGoodMaskMember_of_GoodDirection",
    r"viaCompactWalsh",
]

SEMANTIC_TARGETS = [
    r"SelectorCoordinateFactsGoodCatalogOnRangeFor\.of_classifierKey_source_row",
    r"SelectorCoordinateFactsGoodCatalogOnRangeFor\.of_lookup_source_row",
    r"SelectorCoordinateFactsGoodCatalogOnRangeFor\.of_keyAt_source_row",
    r"SemanticRowMembershipLanguageOnRange",
    r"SourceIndexStateSourceFacts",
    r"SourceIndexStateRowFacts",
]


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def scan_file(path: Path) -> dict[str, Any]:
    text = path.read_text(encoding="utf-8")
    compact_hits = [
        pattern for pattern in COMPACT_PATTERNS if re.search(pattern, text)
    ]
    semantic_hits = [
        pattern for pattern in SEMANTIC_TARGETS if re.search(pattern, text)
    ]
    return {
        "path": str(path),
        "exists": path.exists(),
        "compact_hits": compact_hits,
        "semantic_hits": semantic_hits,
        "uses_compact_membership": bool(compact_hits),
        "has_semantic_target_surface": bool(semantic_hits),
    }


def audit(profile_path: Path) -> dict[str, Any]:
    profile = read_json(profile_path)
    scans = {name: scan_file(path) for name, path in ROUTE_FILES.items()}

    generated_smoke_uses_compact = scans["generated_range_smoke"][
        "uses_compact_membership"
    ]
    row_property_smoke_uses_compact = scans["row_property_smoke"][
        "uses_compact_membership"
    ]
    adapter_has_semantic_target = scans["selector_range_adapter"][
        "has_semantic_target_surface"
    ]
    rank_maps_almost_local = (
        int(profile["unique_rank_family_maps"])
        >= int(profile["identity_rank_count"]) * 0.90
    )
    family_surface_small = int(profile["source_index_state_family_count"]) <= 200

    rejected_routes = [
        {
            "name": "reuse_generated_range_smoke",
            "status": "rejected",
            "reason": (
                "The existing generated semantic range smoke proves membership "
                "through rank-local compact selector-positive theorems."
            ),
            "uses_compact_membership": generated_smoke_uses_compact,
        },
        {
            "name": "rank_family_map_membership",
            "status": "rejected",
            "reason": (
                "DU.9DA shows rank->family maps are almost rank-local, so this "
                "would encode a table rather than a semantic theorem."
            ),
            "unique_rank_family_maps": profile["unique_rank_family_maps"],
            "identity_rank_count": profile["identity_rank_count"],
        },
        {
            "name": "selected_family_with_compact_membership",
            "status": "rejected",
            "reason": (
                "A selected-family smoke is not production-relevant if the "
                "GoodDirection-to-membership implication is imported from "
                "compact-Walsh rank-local covers."
            ),
            "uses_compact_membership": row_property_smoke_uses_compact,
        },
    ]

    accepted_target = {
        "name": "semantic_selector_source_row_membership",
        "status": "selected-next-proof-target",
        "required_theorem_shape": (
            "forall {rank mask} (hlt : rank < numPairWords), lo <= rank -> "
            "rank < hi -> totalLinearOfPairWord (unrankPairWord ⟨rank,hlt⟩) = "
            "matId -> GoodDirectionAtRank ⟨rank,hlt⟩ mask -> exists key, "
            "coordAt rank mask = selectorCoordinateOfKey key /\\ "
            "SourceIndexStateSourceFacts key.toSourceIndexStateKey rank mask /\\ "
            "SourceIndexStateRowFacts key.toSourceIndexStateKey rank mask"
        ),
        "adapter": (
            "SelectorCoordinateFactsGoodCatalogOnRangeFor."
            "of_classifierKey_source_row"
        ),
        "notes": [
            "This target can erase to all-Good coverage without compact membership.",
            "A first smoke should prove this for a tiny semantic sublanguage, not by rank/mask replay.",
        ],
    }

    if adapter_has_semantic_target and family_surface_small and rank_maps_almost_local:
        status = "blocked-on-semantic-membership-theorem"
        next_step = (
            "Implement a small semantic selector/source-row membership theorem "
            "for one reusable source-index/state family or source-position "
            "language, with no import of compact membership modules."
        )
    else:
        status = "needs-route-review"
        next_step = (
            "Review the selector-range adapter and DU.9DA profile before "
            "attempting a proof-producing smoke."
        )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9DB",
        "trusted_as_proof": False,
        "mode": "selected_family_membership_route_audit",
        "profile": str(profile_path),
        "profile_summary": {
            "identity_rank_count": profile["identity_rank_count"],
            "good_direction_survivors": profile["good_direction_survivors"],
            "source_index_state_family_count": profile[
                "source_index_state_family_count"
            ],
            "unique_rank_family_maps": profile["unique_rank_family_maps"],
            "largest_rank_family_map_class": profile[
                "largest_rank_family_map_class"
            ],
        },
        "file_scans": scans,
        "rejected_routes": rejected_routes,
        "accepted_target": accepted_target,
        "decision": {
            "status": status,
            "next_step": next_step,
            "notes": [
                "This emits no Lean and is not proof evidence.",
                "The current nonempty smokes remain useful regressions but still rely on compact rank-local membership.",
                "The next proof-producing module must make compact membership imports syntactically absent.",
            ],
        },
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def markdown(payload: dict[str, Any]) -> str:
    summary = payload["profile_summary"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DB Selected-Family Membership Route Audit",
        "",
        "This diagnostic is planning telemetry only. It emits no Lean and is not",
        "trusted as proof evidence.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Identity ranks: `{summary['identity_rank_count']}`",
        f"- GoodDirection survivors: `{summary['good_direction_survivors']}`",
        f"- Source-index/state families: `{summary['source_index_state_family_count']}`",
        f"- Unique rank-family maps: `{summary['unique_rank_family_maps']}`",
        f"- Largest rank-family-map class: `{summary['largest_rank_family_map_class']}`",
        "",
        "## File Scan",
        "",
        "| Surface | Compact membership? | Semantic target surface? |",
        "| --- | --- | --- |",
    ]
    for name, scan in payload["file_scans"].items():
        lines.append(
            f"| `{name}` | `{scan['uses_compact_membership']}` | "
            f"`{scan['has_semantic_target_surface']}` |"
        )
    lines.extend([
        "",
        "## Rejected Routes",
        "",
        "| Route | Reason |",
        "| --- | --- |",
    ])
    for route in payload["rejected_routes"]:
        lines.append(f"| `{route['name']}` | {route['reason']} |")
    target = payload["accepted_target"]
    lines.extend([
        "",
        "## Selected Target",
        "",
        f"- Name: `{target['name']}`",
        f"- Adapter: `{target['adapter']}`",
        "",
        "Required theorem shape:",
        "",
        "```text",
        target["required_theorem_shape"],
        "```",
        "",
        "## Decision",
        "",
        payload["decision"]["next_step"],
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    report = audit(args.profile)
    write_json(args.json, report)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(report), encoding="utf-8")
    print(json.dumps(report["decision"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
