#!/usr/bin/env python3
"""Audit the selected-prefix Bellman membership gap.

This is a lightweight status audit.  It does not enumerate ranks and it is not
proof.  It records that the prefix/shared-gain evaluator socket is Lean-checked
at the selected-prefix boundary, then names the remaining production
membership theorem needed before this route can be considered scalable
coverage.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

COVER_PLAN = ROOT / "scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json"
OUT_JSON = ROOT / "scripts/generated/top_pairing_selected_prefix_membership_gap.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_selected_prefix_membership_gap.md"

GUARDS = {
    "shared_gain_prefix_bucket_smoke": ROOT
    / "scripts/generated/top_pairing_shared_gain_prefix_bucket_smoke_guard.json",
    "selected_prefix_trace_margin_object_cover": ROOT
    / "scripts/generated/selected_prefix_trace_margin_object_cover_guard.json",
    "selected_prefix_trace_margin_killed_socket": ROOT
    / "scripts/generated/selected_prefix_trace_margin_killed_socket_guard.json",
    "selected_prefix_cover_membership_bridge": ROOT
    / "scripts/generated/top_pairing_selected_prefix_cover_membership_bridge_guard.json",
    "selected_prefix_cover_root_producer_bridge": ROOT
    / "scripts/generated/top_pairing_selected_prefix_cover_root_producer_bridge_guard.json",
}

LEAN_SURFACES = {
    "shared_gain_prefix_bucket_smoke": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSharedGainPrefixBucketSmoke.lean",
    "trace_margin_bounds_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingTraceMarginBoundsSocket.lean",
    "selected_prefix_trace_margin_adapter": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginAdapter.lean",
    "selected_prefix_cover_root": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStateDAGSelectedPrefixCover/All.lean",
    "selected_prefix_object_cover": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginObjectCover.lean",
    "selected_prefix_killed_socket": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTraceMarginKilledSocket.lean",
    "selected_prefix_terminal_direct_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixTerminalDirectBridge.lean",
    "selected_prefix_residual_bridge": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSelectedPrefixResidualBridge.lean",
}

FORBIDDEN_MEMBERSHIP_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "sampledSmokeNext",
]

EXPECTED_SURFACE_TOKENS = [
    "TerminalTracePrefixSharedGainClosedMarginFamily",
    "SelectedPrefixTraceMarginFamily",
    "SelectedPrefixCoverFamily",
    "SelectedPrefixResidualRankCovered",
    "TopPairingBellmanEvalLanguageAtRank",
    "BellmanAxisRankObjectCover",
    "KilledResidualBridge",
    "Coverage.NonIdentityRankKilled",
    "TerminalDirectClosedFamily",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def load_json(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"exists": False}
    payload = json.loads(path.read_text())
    payload["exists"] = True
    return payload


def guard_summary(path: Path) -> dict[str, Any]:
    payload = load_json(path)
    if not payload.get("exists"):
        return {"exists": False, "path": rel(path)}
    return {
        "exists": True,
        "path": rel(path),
        "exit_code": payload.get("exit_code"),
        "elapsed_seconds": payload.get("elapsed_seconds"),
        "max_tree_rss_mib": payload.get("max_tree_rss_mib"),
        "hard_address_space_mib": payload.get("hard_address_space_mib"),
        "min_available_seen_mib": payload.get("min_available_seen_mib"),
    }


def scan_surface(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"exists": False, "path": rel(path)}
    text = path.read_text()
    return {
        "exists": True,
        "path": rel(path),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "bytes": len(text.encode()),
        "forbidden_membership_hits": {
            token: text.count(token)
            for token in FORBIDDEN_MEMBERSHIP_TOKENS
            if token in text
        },
        "expected_surface_hits": {
            token: text.count(token)
            for token in EXPECTED_SURFACE_TOKENS
            if token in text
        },
    }


def render_markdown(report: dict[str, Any]) -> str:
    cover = report["selected_prefix_cover"]
    lines = [
        "# Top-Pairing Selected-Prefix Membership Gap",
        "",
        "This audit is diagnostic status evidence, not proof.  It records that",
        "the selected-prefix prefix/shared-gain Bellman evaluator path is",
        "Lean-checked, then isolates the remaining production membership theorem.",
        "",
        f"- decision: `{report['decision']}`",
        f"- accepted traces in diagnostic cover: `{cover['accepted_trace_count']}`",
        f"- prefix buckets: `{cover['cover_size']}`",
        f"- singleton buckets: `{cover['singleton_bucket_count']}`",
        f"- largest bucket: `{cover['largest_bucket_size']}`",
        "",
        "## Guarded Lean Checks",
        "",
        "| target | exit | elapsed | max RSS | hard AS |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for name, guard in report["guards"].items():
        lines.append(
            "| `{}` | `{}` | `{:.2f}s` | `{:.0f} MiB` | `{:.0f} MiB` |".format(
                name,
                guard.get("exit_code"),
                guard.get("elapsed_seconds") or 0.0,
                guard.get("max_tree_rss_mib") or 0.0,
                guard.get("hard_address_space_mib") or 0.0,
            )
        )

    lines.extend(
        [
            "",
            "## Current Lean Surfaces",
            "",
            "| surface | lines | forbidden sampled tokens | key surface tokens |",
            "| --- | ---: | --- | --- |",
        ]
    )
    for name, surface in report["lean_surfaces"].items():
        forbidden = ", ".join(surface.get("forbidden_membership_hits", {}).keys()) or "none"
        expected = ", ".join(surface.get("expected_surface_hits", {}).keys()) or "none"
        lines.append(
            f"| `{name}` | `{surface.get('lines', 0)}` | `{forbidden}` | `{expected}` |"
        )

    lines.extend(
        [
            "",
        "## Remaining Production Theorem",
        "",
            "The selected-prefix evaluator/killed path is not the remaining blocker.",
            "The current residual bridge has already made the production theorem",
            "concrete.  The remaining generated coverage target is:",
            "",
            "```lean",
            "CoversInterval",
            "  (SelectedPrefixResidualRankCovered scaledMargin)",
            "  0 numPairWords",
            "```",
            "",
            "Equivalently, the generated semantic residual classifier must prove:",
            "",
            "```lean",
            "forall r (hlt : r < numPairWords),",
            "  nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ =",
            "      NonIdFamilyClass.residual ->",
            "  totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠",
            "      (matId : Mat3 Rat) ->",
            "    SelectedPrefixCoverFamily scaledMargin ⟨r, hlt⟩",
            "```",
            "",
            "This exact theorem feeds:",
            "",
            "```lean",
            "killedResidualBridge_of_selectedPrefixInterval",
            "residualRankKilled_of_selectedPrefixResidualRankCovered",
            "```",
            "",
            "The preferred direct semantic consumer remains:",
            "",
            "```lean",
            "SelectedPrefixCoverFamily scaledMargin rank ->",
            "  TerminalDirectClosedFamily rank ->",
            "    Coverage.NonIdentityRankKilled rank",
            "```",
            "",
            "The proof must stay semantic.  It must not use sampled ranks, sampled",
            "paths, exact affine-RHS keys, broad generated root imports, or one",
            "branch per concrete rank.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    cover_payload = load_json(COVER_PLAN)
    cover = {
        "path": rel(COVER_PLAN),
        "accepted_trace_count": cover_payload.get("accepted_trace_count"),
        "cover_size": cover_payload.get("cover_size"),
        "singleton_bucket_count": cover_payload.get("singleton_bucket_count"),
        "largest_bucket_size": cover_payload.get("largest_bucket_size"),
    }
    guards = {name: guard_summary(path) for name, path in GUARDS.items()}
    surfaces = {name: scan_surface(path) for name, path in LEAN_SURFACES.items()}

    guard_ok = all(g.get("exit_code") == 0 for g in guards.values())
    sampled_hits = {
        name: surface["forbidden_membership_hits"]
        for name, surface in surfaces.items()
        if surface.get("forbidden_membership_hits")
    }
    decision = (
        "selected-prefix-cover-accepted-residual-interval-gap-remains"
        if guard_ok and not sampled_hits
        else "selected-prefix-evaluator-path-needs-review"
    )

    report = {
        "mode": "top-pairing-selected-prefix-membership-gap-audit",
        "decision": decision,
        "selected_prefix_cover": cover,
        "guards": guards,
        "lean_surfaces": surfaces,
        "sampled_membership_hits": sampled_hits,
        "remaining_production_theorem": {
            "status": "missing",
            "target": (
                "CoversInterval "
                "(SelectedPrefixResidualRankCovered scaledMargin) "
                "0 numPairWords"
            ),
        },
    }
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report) + "\n")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={decision}")


if __name__ == "__main__":
    main()
