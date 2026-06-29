#!/usr/bin/env python3
"""Audit the missing GoodDirection -> survivor-language bridge.

This diagnostic is not proof evidence.  DU.9DG proved the descriptor/apply
side for a bounded window from an explicit survivor-language premise:

    GoodDirectionAtRank r mask -> WindowSurvivor r mask

The remaining production question is how to prove that premise without
reintroducing one proof per bad mask or forcing Lean to reduce a rank-local
Boolean classifier.  This script summarizes the local window and the prior
profiling signals that decide which bridge surfaces are still viable.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_bounded_coverage import collect_window  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9dh_gooddirection_survivor_bridge.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

REPORTS = {
    "membership_surface": Path(
        "scripts/generated/phase6z6k8ap16du9da_membership_compression_surface.json"
    ),
    "nonenum_membership": Path(
        "scripts/generated/phase6z6k8g_source_index_state_nonenum_membership_audit.json"
    ),
    "descriptor_membership": Path(
        "scripts/generated/phase6z6k8m_source_index_state_descriptor_membership.json"
    ),
    "denominator_signature": Path(
        "scripts/generated/phase6z6k8ap16bc_denominator_signature_factoring.json"
    ),
    "du9db_route": Path(
        "scripts/generated/phase6z6k8ap16du9db_selected_family_membership_route.json"
    ),
    "du9dc_contract": Path(
        "scripts/generated/phase6z6k8ap16du9dc_semantic_coverage_contract.json"
    ),
}


def load_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def report_value(report: dict[str, Any] | None, *keys: str) -> Any:
    current: Any = report
    for key in keys:
        if not isinstance(current, dict) or key not in current:
            return None
        current = current[key]
    return current


def analyze_window(rank_start: int, limit: int) -> dict[str, Any]:
    data = collect_window(rank_start=rank_start, limit=limit)
    family_sizes = sorted((family.count for family in data.families), reverse=True)
    return {
        "rank_start": rank_start,
        "limit": limit,
        "identity_ranks": sorted(data.identity_ranks),
        "nonidentity_ranks": sorted(data.nonidentity),
        "good_direction_survivors": len(data.covered),
        "bad_direction_masks": len(data.bad_masks),
        "source_index_state_families": len(data.families),
        "largest_family_size": family_sizes[0] if family_sizes else 0,
        "top_family_sizes": family_sizes[:8],
    }


def build_payload(rank_start: int, limit: int) -> dict[str, Any]:
    reports = {name: load_json(path) for name, path in REPORTS.items()}
    window = analyze_window(rank_start, limit)

    denom_status = report_value(reports["denominator_signature"], "decision", "status")
    nonenum_chosen = report_value(reports["nonenum_membership"], "decision", "chosen_candidate")
    descriptor_status = report_value(
        reports["descriptor_membership"], "decision", "status"
    )
    route_status = report_value(reports["du9db_route"], "decision", "status")
    contract_status = report_value(
        reports["du9dc_contract"], "conclusion", "status"
    )

    routes = [
        {
            "name": "local_bad_mask_denominator_contradictions",
            "status": "reject",
            "reason": (
                "DU.9DE showed this can prove a tiny complete hclass, but it "
                "spent substantial memory on concrete non-GoodDirection masks. "
                "DU.9DG deliberately avoided this path."
            ),
        },
        {
            "name": "rank_local_boolean_membership",
            "status": "reject",
            "reason": (
                "DU.9DB Boolean smoke got stuck on goodDirectionAtRankBool "
                "comparisons even for singleton membership; this is not the "
                "production bridge."
            ),
        },
        {
            "name": "completed_rank_denominator_signature_grouping",
            "status": "reject" if denom_status == "denominator-signatures-still-mostly-rank-local" else "review",
            "reason": (
                f"16BC denominator-signature status is {denom_status!r}; "
                "completed-rank denominator signatures are not compressing "
                "enough for a global bridge."
            ),
        },
        {
            "name": "source_index_state_semantic_bridge",
            "status": "next",
            "reason": (
                "8G selected source_index_state as stable, fact-free, and "
                "member-list-free; DU.9DC confirms the semantic coverage "
                "contract is already present."
            ),
        },
        {
            "name": "symbolic_walsh_or_state_language_bridge",
            "status": "fallback",
            "reason": (
                "16BI shows denominator signs can be degree-2 Walsh forms, so "
                "if source_index_state still cannot prove membership directly, "
                "the fallback should be a symbolic Walsh/state-language theorem "
                "rather than affine mask cubes."
            ),
        },
    ]

    theorem_shape = "\n".join([
        "forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        f"  {rank_start} <= rank ->",
        f"  rank < {rank_start + limit} ->",
        "    totalLinearOfPairWord (unrankPairWord \u27e8rank, hlt\u27e9) =",
        "        (matId : Mat3 Rat) ->",
        "      GoodDirectionAtRank \u27e8rank, hlt\u27e9 mask ->",
        "        exists key : SourceIndexStateKey,",
        "          SourceIndexStateSourceFacts key rank mask /\\",
        "          SourceIndexStateRowFacts key rank mask",
    ])

    return {
        "phase": "Phase 6Z.6K.8AP.16DU.9DH",
        "trusted_as_proof": False,
        "window": window,
        "prior_signals": {
            "denominator_signature_status": denom_status,
            "nonenum_chosen_candidate": nonenum_chosen,
            "descriptor_membership_status": descriptor_status,
            "du9db_route_status": route_status,
            "du9dc_contract_status": contract_status,
        },
        "routes": routes,
        "accepted_next_theorem_shape": theorem_shape,
        "decision": {
            "status": "implement-source-index-state-bridge-smoke",
            "notes": [
                "Keep DU.9DG descriptor-side theorem shape.",
                "Do not scale local bad-mask denominator contradictions.",
                "Do not use rank-local Boolean GoodDirection membership.",
                "The next Lean smoke should prove source/row facts for one broad source-index/state family from GoodDirection premises, or prove that an additional symbolic state predicate is required.",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    window = payload["window"]
    signals = payload["prior_signals"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DH GoodDirection Survivor Bridge Audit",
        "",
        "This diagnostic emits no Lean and is not trusted as proof evidence.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Window: `[{window['rank_start']}, {window['rank_start'] + window['limit']})`",
        f"- Identity ranks: `{window['identity_ranks']}`",
        f"- Nonidentity ranks: `{window['nonidentity_ranks']}`",
        f"- GoodDirection survivors: `{window['good_direction_survivors']}`",
        f"- Bad-direction masks: `{window['bad_direction_masks']}`",
        f"- Source-index/state families: `{window['source_index_state_families']}`",
        f"- Largest family size: `{window['largest_family_size']}`",
        "",
        "## Prior Signals",
        "",
    ]
    for key, value in signals.items():
        lines.append(f"- `{key}`: `{value}`")
    lines.extend([
        "",
        "## Route Decisions",
        "",
        "| Route | Status | Reason |",
        "| --- | --- | --- |",
    ])
    for route in payload["routes"]:
        reason = str(route["reason"]).replace("\n", " ")
        lines.append(f"| `{route['name']}` | `{route['status']}` | {reason} |")
    lines.extend([
        "",
        "## Accepted Next Theorem Shape",
        "",
        "```lean",
        payload["accepted_next_theorem_shape"],
        "```",
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=3)
    parser.add_argument("--out-json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--out-md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = build_payload(rank_start=args.rank_start, limit=args.limit)
    write_json(args.out_json, payload)
    write_text(args.out_md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "out_json": str(args.out_json),
        "out_md": str(args.out_md),
        "good_direction_survivors": payload["window"]["good_direction_survivors"],
        "bad_direction_masks": payload["window"]["bad_direction_masks"],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
