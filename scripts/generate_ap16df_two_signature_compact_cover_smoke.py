#!/usr/bin/env python3
"""Generate an AP16DF two-signature compact Walsh-cover smoke.

AP16DC proved one positive-survivor signature.  This script creates the next
bounded smoke: keep the existing rank-100805 cover and add a second
rank-101105 cover in a distinct namespace, then emit a root that imports both.

The generated Lean remains smoke evidence, not final coverage.  It is intended
to test whether AP16DC-style compact denominator covers can scale across more
than one survivor signature without namespace collisions.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16cm_walsh_vector_trace_smoke import build_lean as build_trace_lean  # noqa: E402
from generate_ap16cq_compact_denom_consumer_smoke import write_manifest_batch  # noqa: E402
from generate_ap16dc_compact_walsh_cover_smoke import (  # noqa: E402
    emit_lean as emit_cover_lean,
    write_report as write_cover_report,
)
from generate_ap16bl_impact_subcube_smoke import DEFAULT_PROFILE  # noqa: E402
from generate_ap16bo_walsh_bound_smoke import selected_data  # noqa: E402
from profile_ap16bj_walsh_subcube_cover import (  # noqa: E402
    profile as profile_walsh_cover,
    write_markdown as write_cover_markdown,
)
from generate_ap16bl_impact_subcube_smoke import selected_subcubes  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)


BASE_NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")

RANK100805_COVER_NS = (
    f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke"
)
RANK100805_COVER_LEAN = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke"
)

RANK101105 = 101105
RANK101105_MASK = 6
RANK101105_TRACE_NS = f"{BASE_NS}.ImpactSubcubeWalshVectorTraceRank101105Smoke"
RANK101105_TRACE_LEAN = (
    BASE_DIR / "ImpactSubcubeWalshVectorTraceRank101105Smoke.lean"
)
RANK101105_MANIFEST = Path(
    "scripts/generated/phase6z6k8ap16df_rank101105_selected_impacts_manifest.json"
)
RANK101105_COVER = Path(
    "scripts/generated/phase6z6k8ap16df_rank101105_walsh_subcube_cover.json"
)
RANK101105_COVER_LEAN = (
    BASE_DIR / "ImpactSubcubeWalshSymbolicCompactDenomCoverRank101105Smoke.lean"
)
RANK101105_COVER_NS = (
    f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomCoverRank101105Smoke"
)
RANK101105_COVER_REPORT = Path(
    "scripts/generated/phase6z6k8ap16df_rank101105_compact_walsh_cover_smoke.json"
)

ROOT_LEAN = (
    BASE_DIR / "ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke.lean"
)
ROOT_NS = f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke"
REPORT = Path("scripts/generated/phase6z6k8ap16df_two_signature_compact_cover_smoke.json")


def module_from_path(path: Path) -> str:
    return str(path).removesuffix(".lean").replace("/", ".")


def rank101105_impact_module(impact: int) -> tuple[Path, str]:
    suffix = f"Impact{impact:02d}"
    lean = BASE_DIR / f"ImpactSubcubeWalshSymbolicCompactDenomRank101105{suffix}Smoke.lean"
    namespace = f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomRank101105{suffix}Smoke"
    return lean, namespace


def write_rank101105_cover() -> dict[str, Any]:
    data = profile_walsh_cover(DEFAULT_PROFILE, RANK101105, RANK101105_MASK)
    RANK101105_COVER.parent.mkdir(parents=True, exist_ok=True)
    RANK101105_COVER.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_cover_markdown(data, RANK101105_COVER.with_suffix(".md"))
    return data


def write_rank101105_trace() -> None:
    RANK101105_TRACE_LEAN.parent.mkdir(parents=True, exist_ok=True)
    RANK101105_TRACE_LEAN.write_text(
        build_trace_lean(RANK101105, RANK101105_TRACE_NS),
        encoding="utf-8",
    )


def write_rank101105_manifest(cover: dict[str, Any]) -> dict[str, Any]:
    selected_impacts = sorted({int(item["impact"]) - 1 for item in cover["selected"]})
    entries = []
    for impact in selected_impacts:
        lean, namespace = rank101105_impact_module(impact)
        entries.append({
            "label": f"rank101105_mask6_impact{impact}",
            "rank": RANK101105,
            "mask": RANK101105_MASK,
            "impact_index": impact,
            "trace_namespace": RANK101105_TRACE_NS,
            "lean": str(lean),
            "namespace": namespace,
        })
    manifest = {
        "root_lean": str(
            BASE_DIR / "ImpactSubcubeWalshSymbolicCompactDenomRank101105SelectedImpactsSmoke.lean"
        ),
        "root_namespace": (
            f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomRank101105SelectedImpactsSmoke"
        ),
        "entries": entries,
    }
    RANK101105_MANIFEST.parent.mkdir(parents=True, exist_ok=True)
    RANK101105_MANIFEST.write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    return manifest


def write_rank101105_compact_denoms(manifest: dict[str, Any]) -> None:
    # Re-read through the existing manifest batch path so the AP16CQ validation
    # surface stays identical to earlier compact-denominator smokes.
    write_manifest_batch(RANK101105_MANIFEST)


def write_rank101105_cover_module(manifest: dict[str, Any]) -> dict[str, Any]:
    profile = json.loads(DEFAULT_PROFILE.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(
        profile, RANK101105, RANK101105_MASK
    )
    good_masks = [int(mask) for mask in signature["good_masks"]]
    classified_cases_and_bad_masks_for_signature(RANK101105, good_masks)
    subcubes = selected_subcubes(RANK101105_COVER)
    all_data = [
        selected_data(DEFAULT_PROFILE, RANK101105_COVER, RANK101105, RANK101105_MASK, index)
        for index in range(len(subcubes))
    ]
    covered_bad_masks = {
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    }
    missing = sorted(set(range(64)) - set(good_masks) - covered_bad_masks)
    if missing:
        raise SystemExit(f"rank101105 selected subcubes do not cover bad masks: {missing}")

    RANK101105_COVER_LEAN.write_text(
        emit_cover_lean(
            rank=RANK101105,
            namespace=RANK101105_COVER_NS,
            good_masks=good_masks,
            subcubes=subcubes,
            all_data=all_data,
            manifest=manifest,
        ),
        encoding="utf-8",
    )
    write_cover_report(
        report_path=RANK101105_COVER_REPORT,
        lean_path=RANK101105_COVER_LEAN,
        rank=RANK101105,
        good_masks=good_masks,
        subcubes=subcubes,
        all_data=all_data,
        manifest=manifest,
    )
    return {
        "rank": RANK101105,
        "mask": RANK101105_MASK,
        "good_masks": good_masks,
        "selected_subcubes": len(subcubes),
        "selected_word_impacts": sorted({int(s["impact"]) - 1 for s in subcubes}),
        "lean": str(RANK101105_COVER_LEAN),
        "namespace": RANK101105_COVER_NS,
    }


def write_root() -> None:
    lines = [
        f"import {RANK100805_COVER_LEAN}",
        f"import {module_from_path(RANK101105_COVER_LEAN)}",
        "",
        "/-!",
        "Generated AP16DF two-signature compact Walsh-cover root smoke.",
        "",
        "This module imports the rank-100805 AP16DC cover and a second",
        "rank-101105 cover with a distinct namespace.  It checks the modules can",
        "coexist without root-level denominator arithmetic.",
        "-/",
        "",
        f"namespace {ROOT_NS}",
        "",
        "theorem twoSignatureCompactWalshCoverSmoke_builds : True := by",
        f"  have h100805 : True := {RANK100805_COVER_NS}.compactWalshCoverSmoke_builds",
        f"  have h101105 : True := {RANK101105_COVER_NS}.compactWalshCoverSmoke_builds",
        "  trivial",
        "",
        f"end {ROOT_NS}",
        "",
    ]
    ROOT_LEAN.write_text("\n".join(lines), encoding="utf-8")


def write_report(rank101105_cover_summary: dict[str, Any], cover: dict[str, Any]) -> None:
    report = {
        "phase": "Phase 6Z.6K.8AP.16DF",
        "status": "generated_pending_build",
        "trusted_as_final_generated_coverage": False,
        "rank100805_cover_namespace": RANK100805_COVER_NS,
        "rank101105_cover": rank101105_cover_summary,
        "rank101105_walsh_cover": str(RANK101105_COVER),
        "rank101105_selected_subcubes": int(cover["selected_count"]),
        "rank101105_uncovered_count": int(cover["uncovered_count"]),
        "root_lean": str(ROOT_LEAN),
        "root_namespace": ROOT_NS,
    }
    REPORT.write_text(json.dumps(report, indent=2), encoding="utf-8")
    REPORT.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DF Two-Signature Compact Cover Smoke",
            "",
            "Status: generated; focused guarded Lean build required for acceptance.",
            "",
            f"- rank 100805 cover namespace: `{RANK100805_COVER_NS}`",
            f"- rank 101105 cover namespace: `{RANK101105_COVER_NS}`",
            f"- rank 101105 selected subcubes: `{cover['selected_count']}`",
            f"- rank 101105 uncovered count: `{cover['uncovered_count']}`",
            f"- rank 101105 selected word impacts: `{rank101105_cover_summary['selected_word_impacts']}`",
            f"- root Lean file: `{ROOT_LEAN}`",
            "",
            "This is bounded smoke evidence only.  It validates namespace-safe",
            "composition of two AP16DC-style cover modules once the focused build",
            "passes.",
            "",
        ]),
        encoding="utf-8",
    )


def main() -> None:
    cover = write_rank101105_cover()
    write_rank101105_trace()
    manifest = write_rank101105_manifest(cover)
    write_rank101105_compact_denoms(manifest)
    rank101105_cover_summary = write_rank101105_cover_module(manifest)
    write_root()
    write_report(rank101105_cover_summary, cover)
    print(
        f"wrote {ROOT_LEAN}; rank101105_subcubes={cover['selected_count']} "
        f"uncovered={cover['uncovered_count']}"
    )


if __name__ == "__main__":
    main()
