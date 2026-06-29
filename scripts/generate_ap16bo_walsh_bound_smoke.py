#!/usr/bin/env python3
"""Generate the AP.16BO Walsh/subcube bound smoke.

This is the first scriptable version of the AP16BN hand-written smoke.  It
reads the AP16BJ selected subcube data, recomputes the exact Walsh polynomial
for the chosen impact, emits termwise subcube bounds, and proves polynomial
nonpositivity through `WalshSubcubeUpperBound`.

The generated Lean deliberately does not yet prove that `impactDenomAtRank`
equals the emitted Walsh polynomial.  That equality bridge is the next proof
layer.
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

from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    fraction_to_text,
)
from profile_ap16bj_walsh_subcube_cover import (  # noqa: E402
    compute_walsh_forms,
)


DEFAULT_SELECTED = Path(
    "scripts/generated/phase6z6k8ap16bj_walsh_subcube_cover.json"
)
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshEmitterSmoke.lean"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16bo_walsh_bound_emitter_smoke.json"
)

BIT_TO_LEAN = {
    "y": "SignBit.y",
    "z": "SignBit.z",
    "d111": "SignBit.d111",
    "d11m": "SignBit.d11m",
    "d1m1": "SignBit.d1m1",
    "dm11": "SignBit.dm11",
}

PAIR_TO_LEAN = {
    "y": "PairId.y",
    "z": "PairId.z",
    "d111": "PairId.d111",
    "d11m": "PairId.d11m",
    "d1m1": "PairId.d1m1",
    "dm11": "PairId.dm11",
}


def lean_rat(q: Fraction) -> str:
    if q.denominator == 1:
        return str(q.numerator)
    if q.numerator < 0:
        return f"({q.numerator}/{q.denominator})"
    return f"{q.numerator}/{q.denominator}"


def fixed_sign(label: str, bit_index: int) -> int | None:
    char = label[bit_index]
    if char == "0":
        return -1
    if char == "1":
        return 1
    return None


def term_bound(label: str, subset: tuple[int, ...], coeff: Fraction) -> Fraction:
    product = 1
    free = False
    for bit_index in subset:
        sign = fixed_sign(label, bit_index)
        if sign is None:
            free = True
        else:
            product *= sign
    if free:
        return abs(coeff)
    return coeff * product


def selected_data(profile_path: Path, selected_path: Path,
                  rank: int, mask: int, selected_index: int) -> dict[str, Any]:
    selected_profile = json.loads(selected_path.read_text(encoding="utf-8"))
    selected = selected_profile["selected"][selected_index]

    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = sorted(int(mask_value) for mask_value in signature["good_masks"])
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)
    if failures:
        raise RuntimeError(f"Walsh validation failed: {failures[:3]}")
    coeffs = forms[int(selected["impact"]) - 1]
    terms = [
        (subset, coeff)
        for subset, coeff in sorted(coeffs.items(), key=lambda item: (len(item[0]), item[0]))
        if coeff
    ]
    bounds = [term_bound(selected["label"], subset, coeff) for subset, coeff in terms]
    return {
        "rank": rank,
        "selected_index": selected_index,
        "selected": selected,
        "terms": terms,
        "bounds": bounds,
        "bound_sum": sum(bounds, Fraction(0)),
    }


def monomial_expr(subset: tuple[int, ...]) -> str:
    if not subset:
        return "constMonomial"
    if len(subset) == 1:
        return f"bitMonomial {BIT_TO_LEAN[VAR_NAMES[subset[0]]]}"
    if len(subset) == 2:
        return (
            f"twoBitMonomial {BIT_TO_LEAN[VAR_NAMES[subset[0]]]} "
            f"{BIT_TO_LEAN[VAR_NAMES[subset[1]]]}"
        )
    raise ValueError(f"unsupported Walsh degree {len(subset)} for {subset}")


def fixed_cases(label: str) -> list[tuple[str, int]]:
    result = []
    for index, char in enumerate(label):
        if char == "0":
            result.append((VAR_NAMES[index], -1))
        elif char == "1":
            result.append((VAR_NAMES[index], 1))
    return result


def emit_cube(label: str) -> list[str]:
    fixed = {name: sign for name, sign in fixed_cases(label)}
    lines = [
        "private def generatedCube : MaskSubcube where",
        "  fixed",
    ]
    for name in VAR_NAMES:
        if name in fixed:
            value = "false" if fixed[name] < 0 else "true"
            lines.append(f"    | {BIT_TO_LEAN[name]} => some {value}")
    if len(fixed) < len(VAR_NAMES):
        lines.append("    | _ => none")
    return lines


def emit_fixed_theorems(label: str) -> list[str]:
    lines: list[str] = []
    for name, sign in fixed_cases(label):
        bool_value = "false" if sign < 0 else "true"
        theorem = f"generatedCube_{name}"
        lines.extend([
            "",
            f"private theorem {theorem}",
            "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
            f"    maskBitForPair mask {PAIR_TO_LEAN[name]} = {bool_value} := by",
            "  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using",
            f"    hmask {BIT_TO_LEAN[name]}",
        ])
    return lines


def emit_fin_cases(name: str, count: int, values: list[str]) -> list[str]:
    lines = [f"private def {name} : Fin {count} -> Rat"]
    for index, value in enumerate(values):
        prefix = "  |" if index == 0 else "  |"
        lines.append(f"{prefix} ⟨{index}, _⟩ => {value}")
    return lines


def emit_poly(terms: list[tuple[tuple[int, ...], Fraction]]) -> list[str]:
    lines = [
        f"private def generatedPoly : WalshPoly {len(terms)} where",
        "  term",
    ]
    for index, (subset, coeff) in enumerate(terms):
        lines.append(
            f"    | ⟨{index}, _⟩ => "
            f"{{ coeff := {lean_rat(coeff)}, monomial := {monomial_expr(subset)} }}"
        )
    return lines


def emit_term_proof_case(index: int, subset: tuple[int, ...],
                         label: str) -> list[str]:
    lines: list[str] = []
    fixed_names = {name for name, _sign in fixed_cases(label)}
    free_names = [VAR_NAMES[j] for j in subset if VAR_NAMES[j] not in fixed_names]
    for name in subset:
        bit_name = VAR_NAMES[name]
        if bit_name in fixed_names:
            lines.append(f"      have h_{bit_name} := generatedCube_{bit_name} hmask")
    simp_args = [
        "generatedPoly",
        "generatedBound",
        "constMonomial",
        "bitMonomial",
        "twoBitMonomial",
        "WalshTerm.eval",
        "WalshMonomial.eval",
        "WalshMonomial.factorValue",
        "SignBit.value",
        "SignBit.toPairId",
    ]
    simp_args.extend(f"h_{VAR_NAMES[j]}" for j in subset)
    if free_names:
        last = len(free_names) - 1
        for idx, name in enumerate(free_names):
            prefix = "      " if idx == 0 else "        "
            suffix = " <;>" if idx < last else ""
            lines.append(
                f"{prefix}by_cases h_{name} : "
                f"maskBitForPair mask {PAIR_TO_LEAN[name]}{suffix}"
            )
        lines.append(f"        <;> norm_num [{', '.join(simp_args)}]")
    else:
        lines.append(f"      norm_num [{', '.join(simp_args)}]")
    return lines


def emit_upper(data: dict[str, Any]) -> list[str]:
    terms = data["terms"]
    bounds = data["bounds"]
    lines: list[str] = []
    lines.extend(emit_fin_cases("generatedBound", len(bounds), [lean_rat(b) for b in bounds]))
    lines.extend([
        "",
        "private def generatedUpper :",
        "    WalshSubcubeUpperBound generatedCube generatedPoly where",
        "  bound := generatedBound",
        "  term_le := by",
        "    intro i mask hmask",
        "    fin_cases i",
    ])
    for index, (subset, _coeff) in enumerate(terms):
        branch = "    ·"
        case_lines = emit_term_proof_case(index, subset, data["selected"]["label"])
        if case_lines:
            lines.append(branch + " " + case_lines[0].strip())
            for rest in case_lines[1:]:
                lines.append(rest)
        else:
            lines.append(branch + " norm_num [generatedPoly, generatedBound]")
    lines.extend([
        "  total_nonpos := by",
        "    have huniv :",
        f"        (Finset.univ : Finset (Fin {len(bounds)})) =",
        "          {" + ", ".join(f"⟨{i}, by decide⟩" for i in range(len(bounds))) + "} := by",
        "      ext i",
        "      fin_cases i <;> simp",
        "    rw [huniv]",
        "    norm_num [generatedBound]",
    ])
    return lines


def emit_lean(data: dict[str, Any]) -> str:
    selected = data["selected"]
    terms = data["terms"]
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh",
        "",
        "/-!",
        "Generated AP.16BO Walsh-bound emitter smoke.",
        "",
        "This file is generated by `scripts/generate_ap16bo_walsh_bound_smoke.py`.",
        "It proves polynomial nonpositivity for one AP16BJ selected subcube via",
        "`WalshSubcubeUpperBound`, without per-mask nonpositivity replay.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEmitterSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        f"-- rank {data['rank']}, selected subcube {data['selected_index']}, "
        f"label {selected['label']}, impact {selected['impact']}",
    ]
    lines.extend(emit_cube(selected["label"]))
    lines.extend([
        "",
        "private def constMonomial : WalshMonomial :=",
        "  { fst := none, snd := none }",
        "",
        "private def bitMonomial (bit : SignBit) : WalshMonomial :=",
        "  { fst := some bit, snd := none }",
        "",
        "private def twoBitMonomial (fst snd : SignBit) : WalshMonomial :=",
        "  { fst := some fst, snd := some snd }",
        "",
    ])
    lines.extend(emit_poly(terms))
    lines.extend(emit_fixed_theorems(selected["label"]))
    lines.append("")
    lines.extend(emit_upper(data))
    lines.extend([
        "",
        "theorem generatedPoly_nonpos",
        "    {mask : SignMask} (hmask : generatedCube.Member mask) :",
        "    generatedPoly.eval mask <= 0 :=",
        "  generatedUpper.eval_nonpos hmask",
        "",
        "theorem impactSubcubeWalshEmitterSmoke_builds : True := by",
        "  trivial",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEmitterSmoke",
    ])
    return "\n".join(lines) + "\n"


def write_report(data: dict[str, Any], output: Path) -> None:
    selected = data["selected"]
    report = {
        "phase": "Phase 6Z.6K.8AP.16BO",
        "status": "generated_pending_build",
        "rank": data["rank"],
        "selected_index": data["selected_index"],
        "label": selected["label"],
        "impact": selected["impact"],
        "term_count": len(data["terms"]),
        "bound_sum": fraction_to_text(data["bound_sum"]),
        "lean_file": str(DEFAULT_LEAN),
        "connects_to_impactDenomAtRank": False,
        "trusted_as_final_generated_coverage": False,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2), encoding="utf-8")
    md = output.with_suffix(".md")
    md.write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16BO Walsh Bound Emitter Smoke",
            "",
            "Status: generated; focused Lean build required for acceptance.",
            "",
            f"- rank: `{data['rank']}`",
            f"- selected subcube index: `{data['selected_index']}`",
            f"- label: `{selected['label']}`",
            f"- impact: `{selected['impact']}`",
            f"- term count: `{len(data['terms'])}`",
            f"- bound sum: `{fraction_to_text(data['bound_sum'])}`",
            "",
            "This generated smoke proves polynomial nonpositivity through",
            "`WalshSubcubeUpperBound`; it does not yet prove equality with",
            "`impactDenomAtRank`.",
            "",
        ]),
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--selected", type=Path, default=DEFAULT_SELECTED)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--selected-index", type=int, default=0)
    parser.add_argument("--lean-output", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    data = selected_data(
        args.profile, args.selected, args.rank, args.mask, args.selected_index
    )
    args.lean_output.parent.mkdir(parents=True, exist_ok=True)
    args.lean_output.write_text(emit_lean(data), encoding="utf-8")
    write_report(data, args.report)
    print(
        f"wrote {args.lean_output}; terms={len(data['terms'])} "
        f"bound_sum={fraction_to_text(data['bound_sum'])}"
    )


if __name__ == "__main__":
    main()
