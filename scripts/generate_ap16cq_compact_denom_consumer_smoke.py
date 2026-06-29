#!/usr/bin/env python3
"""Generate an AP16 compact-denominator consumer for a Walsh trace fixture.

The generated Lean module imports an existing AP16CM/AP16CO Walsh-vector trace
fixture and proves one compact denominator equality through
`impactDenomAtRank_wordImpact_eq_walshDot`.

The impact-0 path is the smallest validated case, where the compact normal is
constant.  For nonzero impacts, the emitter generates a six-bit exact symbolic
normal proof by case-splitting the sign mask and normalizing the small
pair-prefix recurrence.
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

import check_certificates_independently as exact  # noqa: E402
from generate_ap16by_walsh_symbolic_all_smoke import (  # noqa: E402
    emit_walsh_vec,
    lean_rat,
)
from profile_ap16ce_symbolic_translation_vector_recurrence import (  # noqa: E402
    add_scaled_vec,
    clean_vec,
    occurrence_sign_coefficients,
)


DEFAULT_RANK = 101105
DEFAULT_MASK = 6
DEFAULT_IMPACT_INDEX = 0
DEFAULT_TRACE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshVectorTraceRank101105Smoke"
)
DEFAULT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke.lean"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke"
)
DEFAULT_MANIFEST = Path("scripts/generated/phase6z6k8ap16cw_compact_denom_manifest.json")
DEFAULT_ROOT_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "ImpactSubcubeWalshSymbolicCompactDenomAllSmoke.lean"
)
DEFAULT_ROOT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "ImpactSubcubeWalshSymbolicCompactDenomAllSmoke"
)

WalshAffine = dict[tuple[int, ...], Fraction]
WalshVec3 = list[WalshAffine]


def symbolic_impact_normal(word: list[str], impact_index: int) -> WalshVec3:
    pref_mats = exact.prefix_matrices(word)
    signs = occurrence_sign_coefficients(word)
    pair_id = word[impact_index]
    result: WalshVec3 = [{}, {}, {}]
    add_scaled_vec(
        result,
        signs[impact_index],
        exact.mat_vec(pref_mats[impact_index], exact.vec(exact.NORMALS[pair_id])),
    )
    return clean_vec(result)


def maybe_constant_vec(vector: WalshVec3) -> list[Fraction] | None:
    constants: list[Fraction] = []
    for component in vector:
        unsupported = [
            (subset, coeff) for subset, coeff in component.items()
            if subset and coeff
        ]
        if unsupported:
            return None
        constants.append(component.get((), Fraction(0)))
    return constants


def normal_eval_simp_names() -> str:
    return ", ".join([
        "generatedNormal",
        "generatedNormal_x",
        "generatedNormal_y",
        "generatedNormal_z",
        "WalshAffineVec3.eval",
        "WalshAffine.eval",
        "SignBit.value",
        "SignBit.toPairId",
        "signedCoeffAt",
        "signedPositiveAt",
        "generatedWord",
        "firstWordImpactIndex",
        "selectedWordImpactIndex",
        "generatedWord_get_selected",
        "pairPrefixLinearNat",
        "countPairBeforeNat",
        "canonicalNormalQ",
        "scalarMul",
        "matVec",
        "matMul",
        "matId",
        "reflM",
        "matSub",
        "scalarMat",
        "outer",
        "dot",
    ])


def emit_normal_eval_proof(normal_const: list[Fraction] | None) -> list[str]:
    lines = [
        "private theorem generatedNormal_eval_eq_compact (mask : SignMask) :",
        "    generatedNormal.eval mask =",
        "      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)",
        "        (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)",
        "          (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) := by",
    ]
    if normal_const is not None:
        lines.extend([
            "  have hCompact :",
            "      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)",
            "          (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)",
            "            (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) =",
            f"        {{ x := ({lean_rat(normal_const[0])} : Rat), y := {lean_rat(normal_const[1])}, z := {lean_rat(normal_const[2])} }} := by",
            "    simp [signedCoeffAt, signedPositiveAt, generatedWord_get_selected]",
            "    apply Vec3.ext <;>",
            "      norm_num [firstWordImpactIndex, selectedWordImpactIndex,",
            "        pairPrefixLinearNat, canonicalNormalQ,",
            "        scalarMul, matVec, matId]",
            "  rw [hCompact]",
            "  apply Vec3.ext <;>",
            "    norm_num [generatedNormal, generatedNormal_x, generatedNormal_y,",
            "      generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval,",
            "      firstWordImpactIndex, selectedWordImpactIndex]",
        ])
        return lines

    simp_names = normal_eval_simp_names()
    lines.extend([
        "  by_cases h_y : maskBitForPair mask PairId.y <;>",
        "    by_cases h_z : maskBitForPair mask PairId.z <;>",
        "    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>",
        "    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>",
        "    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>",
        "    by_cases h_dm11 : maskBitForPair mask PairId.dm11",
        "    <;> apply Vec3.ext",
        f"    <;> simp [{simp_names}, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]",
        f"    <;> norm_num [{simp_names}, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]",
    ])
    return lines


def build_lean(
    *,
    rank: int,
    mask: int,
    impact_index: int,
    trace_namespace: str,
    namespace: str,
) -> str:
    word = exact.pair_word_at_rank(rank)
    if not (0 <= impact_index < len(word)):
        raise ValueError(f"impact index must be in [0,{len(word)}), got {impact_index}")
    normal = symbolic_impact_normal(word, impact_index)
    normal_const = maybe_constant_vec(normal)

    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge",
        f"import {trace_namespace}",
        "",
        "/-!",
        f"Generated AP16CQ compact-denominator consumer for rank `{rank}`.",
        "",
        "The module consumes an existing Walsh-vector trace fixture and closes one",
        "compact denominator equality via `impactDenomAtRank_wordImpact_eq_walshDot`.",
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
        "abbrev generatedRank : Fin numPairWords :=",
        f"  {trace_namespace}.generatedRank",
        "",
        "abbrev generatedWord : PairWord :=",
        f"  {trace_namespace}.generatedWord",
        "",
        "abbrev generatedVector : WalshAffineVec3 :=",
        f"  {trace_namespace}.generatedVector",
        "",
        f"def generatedMask{mask} : SignMask := ⟨{mask}, by decide⟩",
        "",
    ]
    lines.extend(emit_walsh_vec("generatedNormal", normal, visibility=""))
    lines.extend([
        "",
        f"def selectedWordImpactIndex : WordIndex := ⟨{impact_index}, by decide⟩",
        "",
        "abbrev firstWordImpactIndex : WordIndex := selectedWordImpactIndex",
        "",
        "private theorem generatedWord_get_selected :",
        f"    generatedWord.get firstWordImpactIndex = PairId.{word[impact_index]} := by",
        "  rfl",
        "",
        "private theorem generatedFirstSignedCoeff (mask : SignMask) :",
        "    signedCoeffAt generatedWord mask firstWordImpactIndex =",
        "      (if signedPositiveAt generatedWord mask firstWordImpactIndex then 1 else -1 : Rat) := by",
        "  rfl",
        "",
    ])
    lines.extend(emit_normal_eval_proof(normal_const))
    lines.append("")
    lines.extend([
        "private theorem generatedVector_eq_translationVector (mask : SignMask) :",
        "    generatedVector.eval mask =",
        "      translationVectorOfChoice generatedWord mask :=",
        f"  {trace_namespace}.generatedVector_eval_eq_translationVector",
        "    mask",
        "",
        "theorem generatedDenomDotCompact (mask : SignMask) :",
        "    impactDenomAtRank generatedRank mask",
        "        (wordImpact firstWordImpactIndex) =",
        "      Cuboctahedron.dot (generatedNormal.eval mask)",
        "        (generatedVector.eval mask) := by",
        "  exact impactDenomAtRank_wordImpact_eq_walshDot",
        f"    {trace_namespace}.generatedUnrank_builds",
        "    (generatedNormal_eval_eq_compact mask)",
        "    (generatedVector_eq_translationVector mask)",
        "",
        f"theorem generatedDenomDotCompact_mask{mask} :",
        f"    impactDenomAtRank generatedRank generatedMask{mask}",
        "        (wordImpact firstWordImpactIndex) =",
        f"      Cuboctahedron.dot (generatedNormal.eval generatedMask{mask})",
        f"        (generatedVector.eval generatedMask{mask}) :=",
        f"  generatedDenomDotCompact generatedMask{mask}",
        "",
        "theorem generatedDotPositive_of_goodDirection",
        "    {mask : SignMask} (hgood : GoodDirectionAtRank generatedRank mask) :",
        "    0 < Cuboctahedron.dot (generatedNormal.eval mask)",
        "      (generatedVector.eval mask) :=",
        "  walshDot_pos_of_goodDirection",
        "    (generatedDenomDotCompact mask)",
        "    hgood",
        "",
        f"theorem generatedDotPositive_mask{mask}_of_goodDirection",
        f"    (hgood : GoodDirectionAtRank generatedRank generatedMask{mask}) :",
        f"    0 < Cuboctahedron.dot (generatedNormal.eval generatedMask{mask})",
        f"      (generatedVector.eval generatedMask{mask}) :=",
        "  generatedDotPositive_of_goodDirection hgood",
        "",
        "theorem compactDenomGeneratedSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def build_root_lean(*, entries: list[dict[str, Any]], namespace: str) -> str:
    imports = [str(entry["namespace"]) for entry in entries]
    lines: list[str] = []
    for module in imports:
        lines.append(f"import {module}")
    lines.extend([
        "",
        "/-!",
        "Generated AP16 compact-denominator consumer root smoke.",
        "",
        "This module imports the manifest-selected compact-denominator consumer",
        "fixtures and checks that their exported smoke theorems compose without",
        "root-level denominator arithmetic.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "theorem allCompactDenomConsumerSmokes_build :",
        "    True := by",
    ])
    for idx, entry in enumerate(entries):
        label = str(entry.get("label", f"entry{idx}"))
        safe_label = "".join(ch if ch.isalnum() else "_" for ch in label)
        lines.extend([
            f"  have h_{idx}_{safe_label} : True :=",
            f"    {entry['namespace']}.compactDenomGeneratedSmoke_builds",
        ])
    lines.extend([
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def read_manifest(path: Path) -> dict[str, Any]:
    data = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(data, dict):
        raise ValueError("manifest must be a JSON object")
    entries = data.get("entries")
    if not isinstance(entries, list) or not entries:
        raise ValueError("manifest must contain a nonempty `entries` list")
    for idx, entry in enumerate(entries):
        if not isinstance(entry, dict):
            raise ValueError(f"manifest entry {idx} must be an object")
        for key in ["rank", "mask", "impact_index", "trace_namespace", "lean", "namespace"]:
            if key not in entry:
                raise ValueError(f"manifest entry {idx} is missing `{key}`")
    return data


def write_manifest_batch(path: Path) -> None:
    manifest = read_manifest(path)
    entries = manifest["entries"]
    for entry in entries:
        lean_path = Path(str(entry["lean"]))
        lean_path.parent.mkdir(parents=True, exist_ok=True)
        lean_path.write_text(
            build_lean(
                rank=int(entry["rank"]),
                mask=int(entry["mask"]),
                impact_index=int(entry["impact_index"]),
                trace_namespace=str(entry["trace_namespace"]),
                namespace=str(entry["namespace"]),
            ),
            encoding="utf-8",
        )
        print(f"wrote {lean_path}")

    root_lean = Path(str(manifest.get("root_lean", DEFAULT_ROOT_LEAN)))
    root_namespace = str(manifest.get("root_namespace", DEFAULT_ROOT_NAMESPACE))
    root_lean.parent.mkdir(parents=True, exist_ok=True)
    root_lean.write_text(
        build_root_lean(entries=entries, namespace=root_namespace),
        encoding="utf-8",
    )
    print(f"wrote {root_lean}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", type=Path)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--impact-index", type=int, default=DEFAULT_IMPACT_INDEX)
    parser.add_argument("--trace-namespace", default=DEFAULT_TRACE_NAMESPACE)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    if args.manifest is not None:
        write_manifest_batch(args.manifest)
        return

    args.lean.parent.mkdir(parents=True, exist_ok=True)
    args.lean.write_text(
        build_lean(
            rank=args.rank,
            mask=args.mask,
            impact_index=args.impact_index,
            trace_namespace=args.trace_namespace,
            namespace=args.namespace,
        ),
        encoding="utf-8",
    )
    print(f"wrote {args.lean}")


if __name__ == "__main__":
    main()
