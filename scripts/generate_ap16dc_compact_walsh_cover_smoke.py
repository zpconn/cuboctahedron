#!/usr/bin/env python3
"""Generate an AP.16DC compact-denominator Walsh subcube cover smoke.

This is the production-shaped successor to the AP16BR bounded cover smoke.  It
keeps the AP16BJ all-subcube cover, but replaces bounded per-mask denominator
replay with the compact rank-wide denominator consumers emitted by AP16DB.

The generated Lean module is still a rank-100805 smoke, not final coverage, but
it exercises the intended erasure path:

  compact denominator equality -> symbolic Walsh quadratic obstruction ->
  ImpactSubcubeCover -> BadMaskCover-style GoodDirection consequence.
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

from generate_ap16bl_impact_subcube_smoke import (  # noqa: E402
    DEFAULT_COVER,
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    selected_subcubes,
)
from generate_ap16bo_walsh_bound_smoke import selected_data  # noqa: E402
from generate_ap16cb_walsh_quadratic_bound_smoke import (  # noqa: E402
    emit_cube,
    emit_fixed_theorems,
    emit_upper,
)
from generate_ap16l_signature_membership_smoke import mask_member_expr  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)


DEFAULT_MANIFEST = Path(
    "scripts/generated/phase6z6k8ap16db_rank100805_selected_impacts_manifest.json"
)
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke.lean"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16dc_compact_walsh_cover_smoke.json"
)


TRACE_NS = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshVectorTraceSmoke"
)


def cube_ctor(index: int) -> str:
    return f"s{index:03d}"


def subcube_ns(index: int) -> str:
    return f"Subcube{index:03d}"


def impact_module_entries(manifest: dict[str, Any]) -> dict[int, dict[str, Any]]:
    entries: dict[int, dict[str, Any]] = {}
    for entry in manifest["entries"]:
        entries[int(entry["impact_index"])] = entry
    return entries


def lean_module_from_path(path: str) -> str:
    return path.removesuffix(".lean").replace("/", ".")


def emit_dot_coefficients(entry: dict[str, Any]) -> list[str]:
    ns = entry["namespace"]
    trace_ns = entry.get("trace_namespace", TRACE_NS)
    return [
        "private theorem generatedDotCoefficients :",
        f"    WalshAffineVec3.dot {ns}.generatedNormal {ns}.generatedVector = generatedPoly := by",
        "  simp [",
        "    generatedPoly,",
        f"    {ns}.generatedNormal,",
        f"    {ns}.generatedNormal_x,",
        f"    {ns}.generatedNormal_y,",
        f"    {ns}.generatedNormal_z,",
        f"    {ns}.generatedVector,",
        f"    {trace_ns}.generatedVector,",
        f"    {trace_ns}.generatedVector_x,",
        f"    {trace_ns}.generatedVector_y,",
        f"    {trace_ns}.generatedVector_z,",
        "    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul",
        "  ]",
        "  try norm_num",
    ]


def emit_rank_eq(entry: dict[str, Any], rank: int) -> list[str]:
    ns = entry["namespace"]
    return [
        "private theorem generatedRank_eq (hlt :",
        f"    {rank} < numPairWords) :",
        f"    (⟨{rank}, hlt⟩ : Fin numPairWords) = {ns}.generatedRank := by",
        "  ext",
        "  rfl",
    ]


def emit_subcube_block(
    *,
    index: int,
    data: dict[str, Any],
    entry: dict[str, Any],
    rank: int,
) -> list[str]:
    ns = subcube_ns(index)
    lines = [f"namespace {ns}", ""]
    lines.extend(emit_cube(data["selected"]["label"]))
    lines.extend(emit_fixed_theorems(data["selected"]["label"]))
    lines.append("")
    lines.extend(emit_upper(data))
    lines.append("")
    lines.extend(emit_dot_coefficients(entry))
    lines.append("")
    lines.extend(emit_rank_eq(entry, rank))
    lines.extend(["", f"end {ns}", ""])
    return lines


def emit_member_def(subcubes: list[dict[str, Any]]) -> list[str]:
    ctors = "\n  | ".join(cube_ctor(i) for i in range(len(subcubes)))
    lines = [
        "private inductive GeneratedCompactSubcube",
        f"  | {ctors}",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedSubcubeMember : GeneratedCompactSubcube -> SignMask -> Prop",
    ]
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        ns = subcube_ns(index)
        lines.extend([
            f"  | .{ctor}, mask =>",
            f"      {ns}.generatedCube.Member mask"
            f" -- subcube {subcube['label']}",
        ])
    return lines


def emit_obstruction_def(
    *,
    rank: int,
    subcubes: list[dict[str, Any]],
    entries_by_word_impact: dict[int, dict[str, Any]],
) -> list[str]:
    lines = [
        "",
        "private def generatedSymbolicObstruction :",
        "    (cube : GeneratedCompactSubcube) ->",
        f"      WalshSymbolicQuadraticImpactObstruction {rank}",
        "        (generatedSubcubeMember cube)",
    ]
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        sns = subcube_ns(index)
        word_impact = int(subcube["impact"]) - 1
        entry = entries_by_word_impact[word_impact]
        ins = entry["namespace"]
        lines.extend([
            f"  | .{ctor} => {{",
            f"      impact := wordImpact {ins}.firstWordImpactIndex",
            "      not_zero := by",
            "        intro hv",
            f"        simp [{ins}.firstWordImpactIndex, {ins}.selectedWordImpactIndex,",
            "          wordImpact, afterStart] at hv",
            "      not_last := by",
            "        intro hv",
            f"        simp [{ins}.firstWordImpactIndex, {ins}.selectedWordImpactIndex,",
            "          wordImpact, afterStart, lastImpact] at hv",
            f"      cube := {sns}.generatedCube",
            "      member_cube := by",
            "        intro mask hmember",
            "        exact hmember",
            f"      normal := {ins}.generatedNormal",
            f"      vector := {ins}.generatedVector",
            f"      poly := {sns}.generatedPoly",
            f"      dot_coefficients := {sns}.generatedDotCoefficients",
            f"      upper := {sns}.generatedUpper",
            "      denom_dot_eq := by",
            "        intro mask hlt hmember",
            f"        rw [{sns}.generatedRank_eq hlt]",
            f"        exact {ins}.generatedDenomDotCompact mask",
            "    }",
        ])
    return lines


def emit_complete(
    *,
    rank: int,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
) -> list[str]:
    mask_to_cube: dict[int, str] = {}
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        for mask in subcube["masks"]:
            mask_to_cube.setdefault(int(mask), ctor)

    lines = [
        "",
        "private theorem generatedSubcube_complete",
        "    {mask : SignMask}",
        "    (hnot : ¬ generatedGoodMaskMember mask) :",
        "    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by",
        "  fin_cases mask",
    ]
    for mask in range(64):
        if mask in set(good_masks):
            lines.append(
                "  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))"
            )
        else:
            ctor = mask_to_cube[mask]
            ns = subcube_ns(int(ctor.removeprefix("s")))
            lines.extend([
                f"  · exact ⟨.{ctor}, by",
                "      intro bit",
                f"      cases bit <;> simp [generatedSubcubeMember, {ns}.generatedCube,",
                "        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩",
            ])

    lines.extend([
        "",
        "private def generatedImpactSubcubeCover :",
        f"    ImpactSubcubeCover {rank} generatedGoodMaskMember where",
        "  Family := GeneratedCompactSubcube",
        "  Member := generatedSubcubeMember",
        "  obstruction := fun cube =>",
        "    ((generatedSymbolicObstruction cube).toWalshQuadraticImpactObstruction).toImpactSubcubeObstruction",
        "  complete := by",
        "    intro mask hnot",
        "    exact generatedSubcube_complete hnot",
        "",
        "theorem generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes",
        f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask :=",
        "  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood",
        "",
        "theorem compactWalshCoverSmoke_builds : True := by",
        "  trivial",
    ])
    return lines


def emit_lean(
    *,
    rank: int,
    namespace: str,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
    all_data: list[dict[str, Any]],
    manifest: dict[str, Any],
) -> str:
    imports = [
        "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic",
        lean_module_from_path(manifest["root_lean"]),
    ]
    lines = [f"import {mod}" for mod in imports]
    lines.extend([
        "",
        "/-!",
        "Generated AP.16DC compact-denominator Walsh impact-subcube cover smoke.",
        "",
        f"This module covers all AP16BJ selected bad-mask subcubes for rank {rank}.",
        "Its denominator bridge uses the AP16DB compact denominator consumers, not",
        "bounded per-mask replay.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "",
        "/-- Public positive-survivor mask predicate for this generated rank fixture. -/",
        "def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(good_masks)}",
        "",
    ])

    entries_by_word_impact = impact_module_entries(manifest)
    for index, data in enumerate(all_data):
        impact = int(data["selected"]["impact"])
        word_impact = impact - 1
        if word_impact not in entries_by_word_impact:
            raise ValueError(f"missing compact denominator module for word-impact {word_impact}")
        lines.extend(emit_subcube_block(
            index=index,
            data=data,
            entry=entries_by_word_impact[word_impact],
            rank=rank,
        ))

    lines.extend(emit_member_def(subcubes))
    lines.extend(emit_obstruction_def(
        rank=rank,
        subcubes=subcubes,
        entries_by_word_impact=entries_by_word_impact,
    ))
    lines.extend(emit_complete(rank=rank, good_masks=good_masks, subcubes=subcubes))
    lines.extend([
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def write_report(
    *,
    report_path: Path,
    lean_path: Path,
    rank: int,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
    all_data: list[dict[str, Any]],
    manifest: dict[str, Any],
) -> None:
    covered_bad_masks = sorted({
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    })
    report = {
        "phase": "Phase 6Z.6K.8AP.16DC",
        "status": "generated_pending_build",
        "rank": rank,
        "positive_masks": good_masks,
        "covered_bad_masks": covered_bad_masks,
        "selected_subcubes": len(subcubes),
        "total_walsh_terms": sum(len(data["terms"]) for data in all_data),
        "selected_word_impacts": sorted({int(s["impact"]) - 1 for s in subcubes}),
        "compact_manifest": str(DEFAULT_MANIFEST),
        "compact_modules": [entry["lean"] for entry in manifest["entries"]],
        "lean_file": str(lean_path),
        "uses_mask_replay_for_denom_eq": False,
        "uses_compact_denom_dot_eq": True,
        "trusted_as_final_generated_coverage": False,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")
    report_path.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DC Compact Walsh Cover Smoke",
            "",
            "Status: generated; focused Lean build required for acceptance.",
            "",
            f"- rank: `{rank}`",
            f"- positive masks: `{good_masks}`",
            f"- covered bad masks: `{covered_bad_masks}`",
            f"- selected subcubes: `{len(subcubes)}`",
            f"- Walsh terms: `{report['total_walsh_terms']}`",
            f"- selected word-impact indices: `{report['selected_word_impacts']}`",
            f"- generated Lean file: `{report['lean_file']}`",
            "",
            "This smoke validates the all-subcube rank-100805 cover using compact",
            "denominator dot equalities.  It intentionally remains bounded smoke",
            "evidence rather than final generated coverage.",
            "",
        ]),
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--cover", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    classified_cases_and_bad_masks_for_signature(args.rank, good_masks)

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    subcubes = selected_subcubes(args.cover)
    all_data = [
        selected_data(args.profile, args.cover, args.rank, args.mask, index)
        for index in range(len(subcubes))
    ]
    covered_bad_masks = {
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    }
    missing = sorted(set(range(64)) - set(good_masks) - covered_bad_masks)
    if missing:
        raise SystemExit(f"selected subcubes do not cover bad masks: {missing}")

    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(
        emit_lean(
            rank=args.rank,
            namespace=args.namespace,
            good_masks=good_masks,
            subcubes=subcubes,
            all_data=all_data,
            manifest=manifest,
        ),
        encoding="utf-8",
    )
    write_report(
        report_path=args.report,
        lean_path=args.lean_output,
        rank=args.rank,
        good_masks=good_masks,
        subcubes=subcubes,
        all_data=all_data,
        manifest=manifest,
    )
    print(
        f"wrote {args.lean_output}; subcubes={len(subcubes)} "
        f"walsh_terms={sum(len(data['terms']) for data in all_data)}"
    )


if __name__ == "__main__":
    main()
