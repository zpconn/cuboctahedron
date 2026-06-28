#!/usr/bin/env python3
"""Generate AP.16BR bounded WalshImpactSubcubeCover smoke.

This diagnostic combines:

* AP16BP-style Walsh polynomial bounds for all 20 selected AP16BJ subcubes;
* AP16BL-style bounded denominator facts for the masks inside those subcubes;
* AP16BQ's `WalshImpactSubcubeCover` erasure bridge.

The resulting Lean module validates the cover API on rank 100805.  By default
it emits a *bounded* subcover, not the all-20-subcube AP16BJ cover, because the
all-in-one denominator-replay bridge is too close to the known OOM-prone proof
shape.  The generated theorem is still diagnostic rather than production
compression: the `impactDenomAtRank = poly.eval` bridge is proved by bounded
mask replay.  The next route must replace that equality bridge with a
symbolic/generated theorem.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16bl_impact_subcube_smoke import (  # noqa: E402
    DEFAULT_COVER,
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    case_name,
    denom_cases_for_cover,
    emit_case_header,
    emit_denom_fact,
    impact_suffix,
    selected_subcubes,
)
from generate_ap16bp_walsh_bound_all_smoke import (  # noqa: E402
    emit_block,
)
from generate_ap16bo_walsh_bound_smoke import (  # noqa: E402
    selected_data,
)
from generate_ap16l_signature_membership_smoke import mask_member_expr  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshCoverBoundedSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16br_walsh_cover_bounded_smoke.json"
)


def cube_ctor(index: int) -> str:
    return f"s{index:03d}"


def emit_common_monomials() -> list[str]:
    return [
        "private def constMonomial : WalshMonomial :=",
        "  { fst := none, snd := none }",
        "",
        "private def bitMonomial (bit : SignBit) : WalshMonomial :=",
        "  { fst := some bit, snd := none }",
        "",
        "private def twoBitMonomial (fst snd : SignBit) : WalshMonomial :=",
        "  { fst := some fst, snd := some snd }",
    ]


def emit_mask_eq(mask: int, indent: str, hyp: str = "h") -> list[str]:
    name = case_name(mask)
    return [
        f"{indent}have hmask : mask = {name}_mask := by",
        f"{indent}  ext",
        f"{indent}  simpa [{name}_mask] using {hyp}",
        f"{indent}rw [hmask]",
    ]


def emit_poly_eval_facts(subcube_index: int, data: dict, masks: list[int],
                         impact: int) -> list[str]:
    ns = f"Subcube{subcube_index:03d}"
    arity = len(data["terms"])
    univ_members = ", ".join(f"⟨{i}, by decide⟩" for i in range(arity))
    lines: list[str] = []
    for mask in masks:
        case = case_name(mask)
        denom = f"{case}_{impact_suffix(impact)}_denom"
        lines.extend([
            f"private theorem {ns}_mask_{mask:02d}_polyEval :",
            f"    {ns}.generatedPoly.eval {case}_mask = {denom} := by",
            "  unfold WalshPoly.eval",
            "  have huniv :",
            f"      (Finset.univ : Finset (Fin {arity})) =",
            f"        {{{univ_members}}} := by",
            "    ext i",
            "    fin_cases i <;> simp",
            "  rw [huniv]",
            f"  norm_num [{ns}.generatedPoly, {case}_mask, {denom},",
            "    constMonomial, bitMonomial, twoBitMonomial,",
            "    WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,",
            "    SignBit.value, SignBit.toPairId]",
            "",
        ])
    return lines


def emit_denom_eq_for_masks(
    *, subcube_index: int, masks: list[int], impact: int, indent: str, hyp: str
) -> list[str]:
    if len(masks) == 1:
        mask = masks[0]
        case = case_name(mask)
        suffix = impact_suffix(impact)
        ns = f"Subcube{subcube_index:03d}"
        return [
            *emit_mask_eq(mask, indent, hyp),
            f"{indent}have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = {case}_rank := by",
            f"{indent}  ext",
            f"{indent}  rfl",
            f"{indent}rw [hrank, {case}_{suffix}_denomAtRank]",
            f"{indent}exact ({ns}_mask_{mask:02d}_polyEval).symm",
        ]
    tail = f"{hyp}_tail"
    return [
        f"{indent}rcases {hyp} with h | {tail}",
        f"{indent}·",
        *emit_denom_eq_for_masks(
            subcube_index=subcube_index,
            masks=[masks[0]],
            impact=impact,
            indent=indent + "  ",
            hyp="h",
        ),
        f"{indent}·",
        *emit_denom_eq_for_masks(
            subcube_index=subcube_index,
            masks=masks[1:],
            impact=impact,
            indent=indent + "  ",
            hyp=tail,
        ),
    ]


def emit_member_cube_for_masks(*, subcube_index: int, masks: list[int],
                               indent: str, hyp: str) -> list[str]:
    ns = f"Subcube{subcube_index:03d}"
    if len(masks) == 1:
        mask = masks[0]
        case = case_name(mask)
        return [
            *emit_mask_eq(mask, indent, hyp),
            f"{indent}intro bit",
            f"{indent}fin_cases bit <;> simp [",
            f"{indent}  {ns}.generatedCube, {case}_mask,",
            f"{indent}  MaskSubcube.Member, SignBit.toPairId]",
        ]
    tail = f"{hyp}_tail"
    return [
        f"{indent}rcases {hyp} with h | {tail}",
        f"{indent}·",
        *emit_member_cube_for_masks(
            subcube_index=subcube_index,
            masks=[masks[0]],
            indent=indent + "  ",
            hyp="h",
        ),
        f"{indent}·",
        *emit_member_cube_for_masks(
            subcube_index=subcube_index,
            masks=masks[1:],
            indent=indent + "  ",
            hyp=tail,
        ),
    ]


def emit_family_defs(subcubes: list[dict], interface_member_masks: list[int],
                     all_data: list[dict]) -> list[str]:
    ctors = "\n  | ".join(cube_ctor(i) for i in range(len(subcubes)))
    lines = [
        "private def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(interface_member_masks)}",
        "",
        "private inductive GeneratedWalshSubcube",
        f"  | {ctors}",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedSubcubeMember : GeneratedWalshSubcube -> SignMask -> Prop",
    ]
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        lines.extend([
            f"  | .{ctor}, mask =>",
            f"      {mask_member_expr([int(mask) for mask in subcube['masks']])}"
            f" -- subcube {subcube['label']}",
        ])
    lines.extend([
        "",
        "private def generatedWalshObstruction :",
        "    (cube : GeneratedWalshSubcube) ->",
        "      WalshImpactObstruction 100805 (generatedSubcubeMember cube)",
    ])
    for index, subcube in enumerate(subcubes):
        ctor = cube_ctor(index)
        ns = f"Subcube{index:03d}"
        impact = int(subcube["impact"])
        masks = [int(mask) for mask in subcube["masks"]]
        arity = len(all_data[index]["terms"])
        lines.extend([
            f"  | .{ctor} => {{",
            f"      impact := ⟨{impact}, by decide⟩",
            "      not_zero := by decide",
            "      not_last := by decide",
            f"      cube := {ns}.generatedCube",
            "      member_cube := by",
            "        intro mask hmember",
            "        simp [generatedSubcubeMember] at hmember",
            *emit_member_cube_for_masks(
                subcube_index=index,
                masks=masks,
                indent="        ",
                hyp="hmember",
            ),
            f"      arity := {arity}",
            f"      poly := {ns}.generatedPoly",
            f"      upper := {ns}.generatedUpper",
            "      denom_eq := by",
            "        intro mask hlt hmember",
            "        simp [generatedSubcubeMember] at hmember",
            *emit_denom_eq_for_masks(
                subcube_index=index,
                masks=masks,
                impact=impact,
                indent="        ",
                hyp="hmember",
            ),
            "    }",
        ])
    return lines


def emit_cover_complete(subcubes: list[dict],
                        interface_member_masks: list[int]) -> list[str]:
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
        "    exists cube : GeneratedWalshSubcube, generatedSubcubeMember cube mask := by",
        "  fin_cases mask",
    ]
    for mask in range(64):
        if mask in interface_member_masks:
            lines.append(
                "  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))"
            )
        else:
            lines.append(
                f"  · exact ⟨.{mask_to_cube[mask]}, by simp [generatedSubcubeMember]⟩"
            )
    lines.extend([
        "",
        "private def generatedWalshImpactSubcubeCover :",
        "    WalshImpactSubcubeCover 100805 generatedGoodMaskMember where",
        "  Family := GeneratedWalshSubcube",
        "  Member := generatedSubcubeMember",
        "  obstruction := generatedWalshObstruction",
        "  complete := by",
        "    intro mask hnot",
        "    exact generatedSubcube_complete hnot",
        "",
        "theorem generatedGoodMaskMember_of_GoodDirection_viaWalshImpactSubcubes",
        "    {mask : SignMask} (hlt : 100805 < numPairWords)",
        "    (hgood : GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask :=",
        "  generatedWalshImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood",
        "",
        "theorem impactSubcubeWalshCoverSmoke_builds : True := by",
        "  trivial",
    ])
    return lines


def emit_lean(rank: int, interface_member_masks: list[int], subcubes: list[dict],
              cases: dict, all_data: list[dict]) -> str:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh",
        "",
        "/-!",
        "Generated AP.16BR Walsh impact-subcube cover smoke.",
        "",
        "This validates a bounded `WalshImpactSubcubeCover` erasure path for",
        "rank 100805. Denominator equality is still proved by bounded mask replay,",
        "so this remains diagnostic rather than production evidence.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCoverBoundedSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
    ]
    lines.extend(emit_common_monomials())
    lines.append("")
    for data in all_data:
        lines.extend(emit_block(data, f"Subcube{data['selected_index']:03d}"))
    for mask, case in sorted(cases.items()):
        lines.extend(emit_case_header(case))
        for impact in case.impacts:
            lines.extend(emit_denom_fact(case, impact))
    for index, subcube in enumerate(subcubes):
        lines.extend(emit_poly_eval_facts(
            index,
            all_data[index],
            [int(mask) for mask in subcube["masks"]],
            int(subcube["impact"]),
        ))
    lines.extend(emit_family_defs(subcubes, interface_member_masks, all_data))
    lines.extend(emit_cover_complete(subcubes, interface_member_masks))
    lines.extend([
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCoverBoundedSmoke",
        "",
    ])
    return "\n".join(lines)


def write_report(report_path: Path, lean_path: Path, rank: int,
                 good_masks: list[int], interface_member_masks: list[int],
                 subcubes: list[dict],
                 cases: dict, all_data: list[dict]) -> None:
    covered_bad_masks = sorted({
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    })
    report = {
        "phase": "Phase 6Z.6K.8AP.16BR",
        "status": "bounded_generated_pending_optional_build",
        "rank": rank,
        "positive_masks": good_masks,
        "interface_member_masks": interface_member_masks,
        "covered_bad_masks": covered_bad_masks,
        "selected_subcubes": len(subcubes),
        "denom_masks": len(cases),
        "denom_facts": sum(len(case.impacts) for case in cases.values()),
        "total_walsh_terms": sum(len(data["terms"]) for data in all_data),
        "lean_file": str(lean_path),
        "uses_mask_replay_for_denom_eq": True,
        "trusted_as_final_generated_coverage": False,
        "full_cover_requires_explicit_flag": True,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")
    report_path.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16BR Bounded Walsh Cover Smoke",
            "",
            "Status: bounded generated smoke; focused Lean build optional.",
            "",
            f"- rank: `{rank}`",
            f"- positive masks: `{good_masks}`",
            f"- interface member masks: `{interface_member_masks}`",
            f"- covered bad masks: `{covered_bad_masks}`",
            f"- selected subcubes: `{len(subcubes)}`",
            f"- denominator masks: `{len(cases)}`",
            f"- denominator facts: `{report['denom_facts']}`",
            f"- Walsh terms: `{report['total_walsh_terms']}`",
            "",
            "This smoke validates `WalshImpactSubcubeCover` on a bounded subcover",
            "but uses bounded mask replay for denominator equality.  It is",
            "diagnostic, not production compression.  The all-subcube replay route",
            "is intentionally not the default because it risks recreating the",
            "known OOM-prone proof shape.",
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
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument(
        "--max-subcubes",
        type=int,
        default=1,
        help="Maximum selected AP16BJ subcubes to emit. Defaults to one bounded diagnostic subcover.",
    )
    parser.add_argument(
        "--allow-large-cover",
        action="store_true",
        help="Permit emitting more than four replay-backed subcubes. This should not be used without a memory plan.",
    )
    args = parser.parse_args()
    if args.max_subcubes <= 0:
        raise SystemExit("--max-subcubes must be positive")
    if args.max_subcubes > 4 and not args.allow_large_cover:
        raise SystemExit(
            "--max-subcubes > 4 is disabled by default; pass --allow-large-cover "
            "only after splitting the resulting Lean target behind a memory guard"
        )

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    subcubes = selected_subcubes(args.cover)[: args.max_subcubes]
    covered_bad_masks = sorted({
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    })
    interface_member_masks = [
        mask for mask in range(64) if mask not in set(covered_bad_masks)
    ]
    # Validate that the same exact classifier still has the expected bad masks.
    classified_cases_and_bad_masks_for_signature(args.rank, good_masks)
    cases = denom_cases_for_cover(args.rank, good_masks, subcubes)
    all_data = [
        selected_data(args.profile, args.cover, args.rank, args.mask, index)
        for index in range(len(subcubes))
    ]
    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(
        emit_lean(args.rank, interface_member_masks, subcubes, cases, all_data),
        encoding="utf-8",
    )
    write_report(args.report, args.lean_output, args.rank, good_masks,
                 interface_member_masks, subcubes, cases, all_data)
    print(
        f"wrote {args.lean_output}; subcubes={len(subcubes)} "
        f"denom_facts={sum(len(case.impacts) for case in cases.values())} "
        f"walsh_terms={sum(len(data['terms']) for data in all_data)}"
    )


if __name__ == "__main__":
    main()
