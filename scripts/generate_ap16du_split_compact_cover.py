#!/usr/bin/env python3
"""Emit split compact-Walsh cover modules for one rank.

The AP16DJ cover roots place every selected subcube obstruction in one Lean
file.  That checks, but several cover roots sit too close to the current memory
guard.  This emitter keeps the same proof objects while moving each selected
subcube obstruction into its own small module.  The rank root then imports those
modules and proves only the finite mask-completeness wrapper.

This is still smoke/generated-evidence infrastructure, not final project
coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16cb_walsh_quadratic_bound_smoke import (  # noqa: E402
    emit_cube,
    emit_fixed_theorems,
    emit_upper,
)
from generate_ap16dc_compact_walsh_cover_smoke import (  # noqa: E402
    emit_dot_coefficients,
    emit_rank_eq,
    impact_module_entries,
    lean_module_from_path,
)
from generate_ap16dj_compact_walsh_batch import (  # noqa: E402
    BASE_DIR,
    BASE_NS,
    cover_json,
    load_source_by_rank,
    manifest_for_entry,
    selected_data_from_forms,
    selected_manifest_json,
    write_cover_profile,
)
from generate_ap16cq_compact_denom_consumer_smoke import write_manifest_batch  # noqa: E402
from generate_ap16bl_impact_subcube_smoke import selected_subcubes  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
)
from profile_ap16bj_walsh_subcube_cover import compute_walsh_forms  # noqa: E402


DEFAULT_PLAN = Path("scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_plan.json")
DEFAULT_SOURCE = Path("scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_source.json")
DEFAULT_REPORT = Path("scripts/generated/phase6z6k8ap16du9hi_split_cover_rank84_generation.json")
DEFAULT_TAG = "DU9HI"


def rank_suffix(rank: int) -> str:
    return f"Rank{rank}"


def split_stem(tag: str, rank: int) -> str:
    return f"ImpactSubcubeWalshSymbolicCompactDenom{tag}SplitCover{rank_suffix(rank)}"


def subcube_namespace(tag: str, rank: int, index: int) -> str:
    return f"{BASE_NS}.{split_stem(tag, rank)}Subcube{index:03d}Smoke"


def subcube_lean(tag: str, rank: int, index: int) -> Path:
    return BASE_DIR / f"{split_stem(tag, rank)}Subcube{index:03d}Smoke.lean"


def root_namespace(tag: str, rank: int) -> str:
    return f"{BASE_NS}.{split_stem(tag, rank)}Smoke"


def root_lean(tag: str, rank: int) -> Path:
    return BASE_DIR / f"{split_stem(tag, rank)}Smoke.lean"


def module_from_path(path: Path) -> str:
    return str(path).removesuffix(".lean").replace("/", ".")


def public_cube(lines: list[str]) -> list[str]:
    return [
        line.replace("private def generatedCube", "def generatedCube", 1)
        for line in lines
    ]


def emit_subcube_module(
    *,
    tag: str,
    rank: int,
    index: int,
    data: dict[str, Any],
    entry: dict[str, Any],
) -> str:
    namespace = subcube_namespace(tag, rank, index)
    entry_ns = entry["namespace"]
    trace_ns = entry["trace_namespace"]
    lines = [
        f"import {lean_module_from_path(entry['lean'])}",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic",
        "",
        "/-!",
        "Generated split compact-Walsh subcube obstruction.",
        "",
        f"Rank `{rank}`, subcube `{index}`.  This file contains the heavy",
        "Walsh coefficient arithmetic for one selected bad-mask subcube.",
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
    ]
    lines.extend(public_cube(emit_cube(data["selected"]["label"])))
    lines.extend(emit_fixed_theorems(data["selected"]["label"]))
    lines.extend([
        "",
        "def generatedSubcubeMember (mask : SignMask) : Prop :=",
        "  generatedCube.Member mask",
        "",
    ])
    lines.extend(emit_upper(data))
    lines.append("")
    lines.extend(emit_dot_coefficients(entry))
    lines.append("")
    lines.extend(emit_rank_eq(entry, rank))
    lines.extend([
        "",
        "def generatedImpact : Impact15 :=",
        f"  wordImpact {entry_ns}.firstWordImpactIndex",
        "",
        "theorem generatedImpact_not_zero :",
        "    generatedImpact ≠ (0 : Impact15) := by",
        "  intro hv",
        f"  simp [generatedImpact, {entry_ns}.firstWordImpactIndex,",
        f"    {entry_ns}.selectedWordImpactIndex, wordImpact, afterStart] at hv",
        "",
        "theorem generatedImpact_not_last :",
        "    generatedImpact ≠ lastImpact := by",
        "  intro hv",
        f"  simp [generatedImpact, {entry_ns}.firstWordImpactIndex,",
        f"    {entry_ns}.selectedWordImpactIndex, wordImpact, afterStart, lastImpact] at hv",
        "",
        "private def generatedSymbolicObstruction :",
        f"    WalshSymbolicQuadraticImpactObstruction {rank} generatedSubcubeMember where",
        "  impact := generatedImpact",
        "  not_zero := generatedImpact_not_zero",
        "  not_last := generatedImpact_not_last",
        "  cube := generatedCube",
        "  member_cube := by",
        "    intro mask hmember",
        "    exact hmember",
        f"  normal := {entry_ns}.generatedNormal",
        f"  vector := {entry_ns}.generatedVector",
        "  poly := generatedPoly",
        "  dot_coefficients := generatedDotCoefficients",
        "  upper := generatedUpper",
        "  denom_dot_eq := by",
        "    intro mask hlt hmember",
        "    rw [generatedRank_eq hlt]",
        f"    exact {entry_ns}.generatedDenomDotCompact mask",
        "",
        "theorem generatedNonpos",
        "    {mask : SignMask} (hlt :",
        f"      {rank} < numPairWords)",
        "    (hmember : generatedSubcubeMember mask) :",
        "    impactDenomAtRank",
        f"      (⟨{rank}, hlt⟩ : Fin numPairWords) mask generatedImpact <= 0 := by",
        "  exact",
        "    (generatedSymbolicObstruction.toWalshQuadraticImpactObstruction",
        "      |>.toImpactSubcubeObstruction).nonpos hlt hmember",
        "",
        "theorem splitSubcubeSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    # Keep the trace namespace referenced in a comment-free way for linters:
    # emit_dot_coefficients already uses it through the generated entry.
    assert trace_ns
    return "\n".join(lines)


def cube_ctor(index: int) -> str:
    return f"s{index:03d}"


def emit_member_def(subcube_count: int, tag: str, rank: int) -> list[str]:
    ctors = "\n  | ".join(cube_ctor(i) for i in range(subcube_count))
    lines = [
        "private inductive GeneratedCompactSubcube",
        f"  | {ctors}",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedSubcubeMember : GeneratedCompactSubcube -> SignMask -> Prop",
    ]
    for index in range(subcube_count):
        ctor = cube_ctor(index)
        ns = subcube_namespace(tag, rank, index)
        lines.extend([
            f"  | .{ctor}, mask =>",
            f"      {ns}.generatedSubcubeMember mask",
        ])
    return lines


def emit_obstruction_def(subcube_count: int, tag: str, rank: int) -> list[str]:
    lines = [
        "",
        "private def generatedObstruction :",
        "    (cube : GeneratedCompactSubcube) ->",
        f"      ImpactSubcubeObstruction {rank} (generatedSubcubeMember cube)",
    ]
    for index in range(subcube_count):
        ctor = cube_ctor(index)
        ns = subcube_namespace(tag, rank, index)
        lines.extend([
            f"  | .{ctor} => {{",
            f"      impact := {ns}.generatedImpact",
            f"      not_zero := {ns}.generatedImpact_not_zero",
            f"      not_last := {ns}.generatedImpact_not_last",
            "      nonpos := by",
            "        intro mask hlt hmember",
            f"        exact {ns}.generatedNonpos hlt hmember",
            "    }",
        ])
    return lines


def emit_complete(
    *,
    rank: int,
    tag: str,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
) -> list[str]:
    mask_to_cube: dict[int, int] = {}
    for index, subcube in enumerate(subcubes):
        for mask in subcube["masks"]:
            mask_to_cube.setdefault(int(mask), index)

    lines = [
        "",
        "private theorem generatedSubcube_complete",
        "    {mask : SignMask}",
        "    (hnot : ¬ generatedGoodMaskMember mask) :",
        "    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by",
        "  fin_cases mask",
    ]
    good_set = set(good_masks)
    for mask in range(64):
        if mask in good_set:
            lines.append(
                "  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))"
            )
        else:
            index = mask_to_cube[mask]
            ctor = cube_ctor(index)
            ns = subcube_namespace(tag, rank, index)
            lines.extend([
                f"  · exact ⟨.{ctor}, by",
                "      intro bit",
                f"      cases bit <;> simp [generatedSubcubeMember, {ns}.generatedSubcubeMember,",
                f"        {ns}.generatedCube, MaskSubcube.Member, SignBit.toPairId,",
                "        maskBitForPair]⟩",
            ])

    lines.extend([
        "",
        "private def generatedImpactSubcubeCover :",
        f"    ImpactSubcubeCover {rank} generatedGoodMaskMember where",
        "  Family := GeneratedCompactSubcube",
        "  Member := generatedSubcubeMember",
        "  obstruction := generatedObstruction",
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
        "theorem splitCompactWalshCoverSmoke_builds : True := by",
        "  trivial",
    ])
    return lines


def emit_root_module(
    *,
    tag: str,
    rank: int,
    good_masks: list[int],
    subcubes: list[dict[str, Any]],
) -> str:
    namespace = root_namespace(tag, rank)
    imports = [
        "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic",
        *[
            module_from_path(subcube_lean(tag, rank, index))
            for index in range(len(subcubes))
        ],
    ]
    lines = [f"import {mod}" for mod in imports]
    lines.extend([
        "",
        "/-!",
        "Generated split compact-Walsh cover root.",
        "",
        f"This rank `{rank}` root imports one obstruction module per selected",
        "subcube and proves only the finite mask-completeness wrapper.",
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
        "",
        "/-- Public positive-survivor mask predicate for this generated rank fixture. -/",
        "def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(good_masks)}",
        "",
    ])
    lines.extend(emit_member_def(len(subcubes), tag, rank))
    lines.extend(emit_obstruction_def(len(subcubes), tag, rank))
    lines.extend(emit_complete(rank=rank, tag=tag, good_masks=good_masks, subcubes=subcubes))
    lines.extend([
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def mask_member_expr(good_masks: list[int]) -> str:
    if not good_masks:
        return "False"
    return " \\/\n    ".join(f"mask.val = {mask}" for mask in good_masks)


def find_entry(plan: dict[str, Any], rank: int) -> dict[str, Any]:
    for entry in plan["entries"]:
        if int(entry["rank"]) == rank:
            return entry
    raise SystemExit(f"rank {rank} is not present in {plan.get('plan', 'plan')}")


def build_payload(args: argparse.Namespace) -> dict[str, Any]:
    plan = json.loads(args.plan.read_text(encoding="utf-8"))
    entry = find_entry(plan, args.rank)
    source_by_rank = load_source_by_rank(args.source)
    cover_payload = write_cover_profile(source_by_rank, args.rank)

    manifest = manifest_for_entry(entry)
    manifest_path = selected_manifest_json(args.rank)
    manifest_path.parent.mkdir(parents=True, exist_ok=True)
    manifest_path.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_manifest_batch(manifest_path)

    good_masks = [int(mask) for mask in cover_payload["good_masks"]]
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(args.rank, good_masks)
    forms, failures = compute_walsh_forms(args.rank, good_masks, bad_masks)
    if failures:
        raise SystemExit(f"Walsh validation failed for rank {args.rank}: {failures[:3]}")
    subcubes = selected_subcubes(cover_json(args.rank))
    all_data = [
        selected_data_from_forms(
            cover_path=cover_json(args.rank),
            rank=args.rank,
            selected_index=index,
            forms=forms,
        )
        for index in range(len(subcubes))
    ]
    covered_bad_masks = {
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    }
    missing = sorted(set(range(64)) - set(good_masks) - covered_bad_masks)
    if missing:
        raise SystemExit(f"rank {args.rank} selected subcubes do not cover bad masks: {missing}")

    emitted_files: list[str] = []
    entries_by_word_impact = impact_module_entries(manifest)
    if args.emit:
        for index, data in enumerate(all_data):
            word_impact = int(data["selected"]["impact"]) - 1
            if word_impact not in entries_by_word_impact:
                raise SystemExit(
                    f"missing compact denominator module for word-impact {word_impact}"
                )
            path = subcube_lean(args.tag, args.rank, index)
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(
                emit_subcube_module(
                    tag=args.tag,
                    rank=args.rank,
                    index=index,
                    data=data,
                    entry=entries_by_word_impact[word_impact],
                ),
                encoding="utf-8",
            )
            emitted_files.append(str(path))
        root_path = root_lean(args.tag, args.rank)
        root_path.write_text(
            emit_root_module(
                tag=args.tag,
                rank=args.rank,
                good_masks=good_masks,
                subcubes=subcubes,
            ),
            encoding="utf-8",
        )
        emitted_files.append(str(root_path))

    targets = [
        {
            "kind": "split_cover_subcube",
            "label": f"rank{args.rank}_subcube{index:03d}",
            "module": module_from_path(subcube_lean(args.tag, args.rank, index)),
        }
        for index in range(len(subcubes))
    ]
    targets.append({
        "kind": "split_cover_root",
        "module": module_from_path(root_lean(args.tag, args.rank)),
    })
    return {
        "phase": "Phase 6Z.6K.8AP.16DU.9HI",
        "schema_version": 1,
        "status": "emitted_pending_guarded_build" if args.emit else "dry_run",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "tag": args.tag,
        "rank": args.rank,
        "plan": str(args.plan),
        "source": str(args.source),
        "good_masks": good_masks,
        "covered_bad_masks": sorted(covered_bad_masks),
        "selected_subcube_count": len(subcubes),
        "selected_word_impacts": sorted({int(s["impact"]) - 1 for s in subcubes}),
        "root_lean": str(root_lean(args.tag, args.rank)),
        "root_module": module_from_path(root_lean(args.tag, args.rank)),
        "emitted_files": emitted_files,
        "targets": targets,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plan", type=Path, default=DEFAULT_PLAN)
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--rank", type=int, default=84)
    parser.add_argument("--tag", default=DEFAULT_TAG)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--emit", action="store_true")
    return parser.parse_args()


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9HI Split Compact Cover",
        "",
        f"Status: `{payload['status']}`.",
        "",
        f"- rank: `{payload['rank']}`",
        f"- selected subcubes: `{payload['selected_subcube_count']}`",
        f"- selected word impacts: `{payload['selected_word_impacts']}`",
        f"- root module: `{payload['root_module']}`",
        f"- targets: `{len(payload['targets'])}`",
        "",
        "This topology replaces one large rank cover root with one subcube",
        "obstruction module per selected subcube plus a thin rank root.",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    args = parse_args()
    payload = build_payload(args)
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(payload, args.report.with_suffix(".md"))
    print(
        f"wrote {args.report}; status={payload['status']} "
        f"rank={payload['rank']} subcubes={payload['selected_subcube_count']} "
        f"targets={len(payload['targets'])}"
    )


if __name__ == "__main__":
    main()
