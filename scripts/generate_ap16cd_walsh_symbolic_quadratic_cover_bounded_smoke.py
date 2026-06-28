#!/usr/bin/env python3
"""Generate AP.16CD bounded symbolic WalshQuadratic cover smoke.

AP16CC validated `WalshQuadraticImpactObstruction` but still proved
`impactDenomAtRank = poly.coeffEval` directly by bounded mask replay.  This
smoke moves one step closer to the intended production bridge by instantiating
`WalshSymbolicQuadraticImpactObstruction`: the coefficient equality is checked
through symbolic affine normal/vector records, while the remaining geometric
`impactDenomAtRank = dot normal vector` bridge is still bounded mask replay.
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
from generate_ap16bo_walsh_bound_smoke import selected_data  # noqa: E402
from generate_ap16cb_walsh_quadratic_bound_smoke import (  # noqa: E402
    emit_cube,
    emit_fixed_theorems,
    emit_upper,
)
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    DEFAULT_AP16BS,
    build_payload,
    emit_walsh_vec,
)
from generate_ap16l_signature_membership_smoke import mask_member_expr  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)


DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicQuadraticCoverBoundedSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16cd_walsh_symbolic_quadratic_cover_bounded_smoke.json"
)


def cube_ctor(index: int) -> str:
    return f"s{index:03d}"


def emit_mask_eq(mask: int, indent: str, hyp: str = "h") -> list[str]:
    name = case_name(mask)
    return [
        f"{indent}have hmask : mask = {name}_mask := by",
        f"{indent}  ext",
        f"{indent}  simpa [{name}_mask] using {hyp}",
        f"{indent}rw [hmask]",
    ]


def emit_symbolic_dot_facts(masks: list[int], impact: int) -> list[str]:
    lines: list[str] = []
    for mask in masks:
        case = case_name(mask)
        denom = f"{case}_{impact_suffix(impact)}_denom"
        lines.extend([
            f"private theorem mask_{mask:02d}_symbolicDot :",
            "    Cuboctahedron.dot",
            f"      (generatedNormal.eval {case}_mask)",
            f"      (generatedVector.eval {case}_mask) = {denom} := by",
            f"  norm_num [generatedNormal, generatedVector, {case}_mask, {denom},",
            "    generatedNormal_x, generatedNormal_y, generatedNormal_z,",
            "    generatedVector_x, generatedVector_y, generatedVector_z,",
            "    WalshAffineVec3.eval, WalshAffine.eval, Cuboctahedron.dot,",
            "    SignBit.value, SignBit.toPairId, maskBitForPair]",
            "",
        ])
    return lines


def emit_denom_dot_eq_for_masks(
    *, masks: list[int], impact: int, indent: str, hyp: str
) -> list[str]:
    if len(masks) == 1:
        mask = masks[0]
        case = case_name(mask)
        suffix = impact_suffix(impact)
        return [
            *emit_mask_eq(mask, indent, hyp),
            f"{indent}have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = {case}_rank := by",
            f"{indent}  ext",
            f"{indent}  rfl",
            f"{indent}rw [hrank, {case}_{suffix}_denomAtRank]",
            f"{indent}exact (mask_{mask:02d}_symbolicDot).symm",
        ]
    tail = f"{hyp}_tail"
    return [
        f"{indent}rcases {hyp} with h | {tail}",
        f"{indent}·",
        *emit_denom_dot_eq_for_masks(
            masks=[masks[0]],
            impact=impact,
            indent=indent + "  ",
            hyp="h",
        ),
        f"{indent}·",
        *emit_denom_dot_eq_for_masks(
            masks=masks[1:],
            impact=impact,
            indent=indent + "  ",
            hyp=tail,
        ),
    ]


def emit_member_cube_for_masks(*, masks: list[int], indent: str, hyp: str) -> list[str]:
    if len(masks) == 1:
        mask = masks[0]
        case = case_name(mask)
        return [
            *emit_mask_eq(mask, indent, hyp),
            f"{indent}intro bit",
            f"{indent}cases bit <;> simp [",
            f"{indent}  generatedCube, {case}_mask,",
            f"{indent}  MaskSubcube.Member, SignBit.toPairId, maskBitForPair]",
        ]
    tail = f"{hyp}_tail"
    return [
        f"{indent}rcases {hyp} with h | {tail}",
        f"{indent}·",
        *emit_member_cube_for_masks(
            masks=[masks[0]],
            indent=indent + "  ",
            hyp="h",
        ),
        f"{indent}·",
        *emit_member_cube_for_masks(
            masks=masks[1:],
            indent=indent + "  ",
            hyp=tail,
        ),
    ]


def emit_symbolic_records(item: dict) -> list[str]:
    lines: list[str] = []
    lines.extend(emit_walsh_vec("generatedNormal", item["normal"]))
    lines.append("")
    lines.extend(emit_walsh_vec("generatedVector", item["vector"]))
    lines.extend([
        "",
        "private theorem generatedDot_coefficients :",
        "    WalshAffineVec3.dot generatedNormal generatedVector =",
        "      generatedPoly := by",
        "  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,",
        "    WalshAffine.mul, generatedNormal, generatedVector, generatedPoly,",
        "    generatedNormal_x, generatedNormal_y, generatedNormal_z,",
        "    generatedVector_x, generatedVector_y, generatedVector_z]",
        "",
    ])
    return lines


def emit_family_defs(interface_member_masks: list[int], subcube: dict) -> list[str]:
    impact = int(subcube["impact"])
    masks = [int(mask) for mask in subcube["masks"]]
    lines = [
        "private def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(interface_member_masks)}",
        "",
        "private inductive GeneratedSymbolicSubcube",
        "  | s000",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedSubcubeMember : GeneratedSymbolicSubcube -> SignMask -> Prop",
        "  | .s000, mask =>",
        f"      {mask_member_expr(masks)} -- subcube {subcube['label']}",
        "",
        "private def generatedSymbolicObstruction :",
        "    (cube : GeneratedSymbolicSubcube) ->",
        "      WalshSymbolicQuadraticImpactObstruction 100805 (generatedSubcubeMember cube)",
        "  | .s000 => {",
        f"      impact := ⟨{impact}, by decide⟩",
        "      not_zero := by decide",
        "      not_last := by decide",
        "      cube := generatedCube",
        "      member_cube := by",
        "        intro mask hmember",
        "        simp [generatedSubcubeMember] at hmember",
        *emit_member_cube_for_masks(
            masks=masks,
            indent="        ",
            hyp="hmember",
        ),
        "      normal := generatedNormal",
        "      vector := generatedVector",
        "      poly := generatedPoly",
        "      dot_coefficients := generatedDot_coefficients",
        "      upper := generatedUpper",
        "      denom_dot_eq := by",
        "        intro mask hlt hmember",
        "        simp [generatedSubcubeMember] at hmember",
        *emit_denom_dot_eq_for_masks(
            masks=masks,
            impact=impact,
            indent="        ",
            hyp="hmember",
        ),
        "    }",
        "",
        "private def generatedImpactSubcubeCover :",
        "    ImpactSubcubeCover 100805 generatedGoodMaskMember where",
        "  Family := GeneratedSymbolicSubcube",
        "  Member := generatedSubcubeMember",
        "  obstruction := fun cube =>",
        "    ((generatedSymbolicObstruction cube).toWalshQuadraticImpactObstruction).toImpactSubcubeObstruction",
        "  complete := by",
        "    intro mask hnot",
        "    fin_cases mask",
    ]
    covered = set(masks)
    for mask in range(64):
        if mask in interface_member_masks:
            lines.append(
                "    · exact False.elim (hnot (by simp [generatedGoodMaskMember]))"
            )
        else:
            if mask not in covered:
                raise ValueError(f"mask {mask} is not covered by the bounded subcube")
            lines.append(
                "    · exact ⟨.s000, by simp [generatedSubcubeMember]⟩"
            )
    lines.extend([
        "",
        "theorem generatedGoodMaskMember_of_GoodDirection_viaSymbolicQuadraticImpactSubcubes",
        "    {mask : SignMask} (hlt : 100805 < numPairWords)",
        "    (hgood : GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask :=",
        "  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood",
        "",
        "theorem impactSubcubeWalshSymbolicQuadraticCoverBoundedSmoke_builds : True := by",
        "  trivial",
    ])
    return lines


def emit_lean(rank: int, interface_member_masks: list[int], subcube: dict,
              cases: dict, bound_data: dict, symbolic_item: dict) -> str:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic",
        "",
        "/-!",
        "Generated AP.16CD bounded symbolic WalshQuadratic impact-subcube cover smoke.",
        "",
        "This validates `WalshSymbolicQuadraticImpactObstruction` on one",
        "AP16BJ selected subcube. The coefficient equality is symbolic; the",
        "remaining denominator-to-symbolic-dot equality is still bounded mask",
        "replay, so this remains diagnostic rather than production evidence.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicQuadraticCoverBoundedSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        f"-- rank {rank}, selected subcube 0, label {subcube['label']}, impact {subcube['impact']}",
    ]
    lines.extend(emit_cube(subcube["label"]))
    lines.extend(emit_fixed_theorems(subcube["label"]))
    lines.append("")
    lines.extend(emit_upper(bound_data))
    lines.append("")
    lines.extend(emit_symbolic_records(symbolic_item))
    for _mask, case in sorted(cases.items()):
        lines.extend(emit_case_header(case))
        for impact in case.impacts:
            lines.extend(emit_denom_fact(case, impact))
    lines.extend(emit_symbolic_dot_facts(
        [int(mask) for mask in subcube["masks"]],
        int(subcube["impact"]),
    ))
    lines.extend(emit_family_defs(interface_member_masks, subcube))
    lines.extend([
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicQuadraticCoverBoundedSmoke",
        "",
    ])
    return "\n".join(lines)


def write_report(report_path: Path, lean_path: Path, rank: int,
                 good_masks: list[int], interface_member_masks: list[int],
                 subcube: dict, cases: dict, symbolic_item: dict) -> None:
    covered_bad_masks = sorted(int(mask) for mask in subcube["masks"])
    report = {
        "phase": "Phase 6Z.6K.8AP.16CD",
        "status": "bounded_generated_pending_build",
        "rank": rank,
        "positive_masks": good_masks,
        "interface_member_masks": interface_member_masks,
        "covered_bad_masks": covered_bad_masks,
        "selected_subcubes": 1,
        "impact": int(subcube["impact"]),
        "denom_masks": len(cases),
        "denom_facts": sum(len(case.impacts) for case in cases.values()),
        "normal_max_degree": symbolic_item["normal_max_degree"],
        "vector_max_degree": symbolic_item["vector_max_degree"],
        "expected_terms": symbolic_item["expected_terms"],
        "lean_file": str(lean_path),
        "uses_mask_replay_for_denom_dot_eq": True,
        "uses_walsh_poly_eval": False,
        "trusted_as_final_generated_coverage": False,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")
    report_path.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16CD Bounded Symbolic WalshQuadratic Cover Smoke",
            "",
            "Status: generated; focused Lean build required for acceptance.",
            "",
            f"- rank: `{rank}`",
            f"- impact: `{report['impact']}`",
            f"- positive masks: `{good_masks}`",
            f"- interface member masks: `{interface_member_masks}`",
            f"- covered bad masks: `{covered_bad_masks}`",
            f"- denominator facts: `{report['denom_facts']}`",
            f"- normal max degree: `{report['normal_max_degree']}`",
            f"- vector max degree: `{report['vector_max_degree']}`",
            f"- expected terms: `{report['expected_terms']}`",
            f"- generated Lean file: `{lean_path}`",
            "",
            "This smoke validates `WalshSymbolicQuadraticImpactObstruction`.",
            "It still uses bounded mask replay for the geometric denominator-dot",
            "equality, so it is diagnostic rather than final production",
            "compression.",
            "",
        ]),
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--ap16bs", type=Path, default=DEFAULT_AP16BS)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--cover", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    subcube = selected_subcubes(args.cover)[0]
    covered_bad_masks = sorted(int(mask) for mask in subcube["masks"])
    interface_member_masks = [
        mask for mask in range(64) if mask not in set(covered_bad_masks)
    ]
    classified_cases_and_bad_masks_for_signature(args.rank, good_masks)
    cases = denom_cases_for_cover(args.rank, good_masks, [subcube])
    bound_data = selected_data(args.profile, args.cover, args.rank, args.mask, 0)
    payload = build_payload(args.profile, args.ap16bs, args.rank, args.mask)
    impact = int(subcube["impact"])
    symbolic_item = next(
        item for item in payload["impacts"] if int(item["impact"]) == impact
    )

    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(
        emit_lean(args.rank, interface_member_masks, subcube,
                  cases, bound_data, symbolic_item),
        encoding="utf-8",
    )
    write_report(args.report, args.lean_output, args.rank, good_masks,
                 interface_member_masks, subcube, cases, symbolic_item)
    print(
        f"wrote {args.lean_output}; impact={impact} "
        f"denom_facts={sum(len(case.impacts) for case in cases.values())} "
        f"expected_terms={symbolic_item['expected_terms']}"
    )


if __name__ == "__main__":
    main()
