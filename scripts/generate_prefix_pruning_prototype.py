#!/usr/bin/env python3
"""Emit a tiny semantic prefix-pruning prototype.

The emitted Lean root proves a bounded non-identity elimination interval using
`BadPairBalancePrefixCert`, not a local rank-certificate literal and not a singleton
rank-leaf module.  This is a deliberately small architectural smoke test for
the true prefix-pruning path.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import generate_exact_certificates as exact


REPO_ROOT = Path(__file__).resolve().parents[1]
OUTPUT_DIR = REPO_ROOT / "evidence" / "prefix_pruning"

BAD_DIRECTION_PREFIX_START = 90
BAD_DIRECTION_PREFIX_END = 96
BAD_DIRECTION_PREFIX_IDS = [
    "x",
    "y",
    "y",
    "z",
    "z",
    "d111",
    "d11m",
    "d111",
    "d11m",
]

PAIR_WORD_IDS_102 = [
    "x",
    "y",
    "y",
    "z",
    "z",
    "d111",
    "d11m",
    "d111",
    "d1m1",
    "dm11",
    "d11m",
    "d1m1",
    "dm11",
]

FORCED_FACE_IDS_102 = [
    "xp",
    "xm",
    "ym",
    "yp",
    "zp",
    "zm",
    "tppp",
    "tmmp",
    "tppp",
    "tpmp",
    "tpmm",
    "tppm",
    "tmpm",
    "tmpp",
]

FORBIDDEN_ACTIVE_PATTERNS = [
    "NonIdCert",
    "certForRank",
    "append_nonid_cert",
    "append_translation_cert",
    "CheckedNonIdRank",
    "CheckedTranslationCase",
    "def nonIdCert",
    "def translationCert",
    "/NonIdentity/Rank",
    "native_decide",
    "sorry",
    "admit",
    "axiom",
    "unsafe",
]


def repo_path(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def file_record(path: Path) -> dict:
    return {
        "path": repo_path(path),
        "exists": path.exists(),
        "bytes": path.stat().st_size if path.exists() else 0,
    }


def lean_list(items: list[str]) -> str:
    return "[" + ", ".join(items) + "]"


def lean_array(items: list[str]) -> str:
    return "#[" + ", ".join(items) + "]"


def pair_terms() -> list[str]:
    return [exact.lean_pair_id(pair_id) for pair_id in PAIR_WORD_IDS_102]


def face_terms() -> list[str]:
    return [exact.lean_face(face_id) for face_id in FORCED_FACE_IDS_102]


def word_get_simp_names(name: str = "prototypeWord") -> list[str]:
    return [f"{name}_get{index:02d}_num" for index in range(13)]


def forced_get_simp_names(name: str = "prototypeForcedFaces") -> list[str]:
    return [f"{name}_get{index:02d}_num" for index in range(14)]


def word_get_theorems() -> str:
    lines: list[str] = []
    for index, pair_id in enumerate(PAIR_WORD_IDS_102):
        pair = exact.lean_pair_id(pair_id)
        lines.extend([
            f"@[simp] theorem prototypeWord_get{index:02d}_num :",
            f"    prototypeWord.get ({index} : WordIndex) = {pair} := by",
            "  decide",
            "",
            f"@[simp] theorem prototypeWord_get{index:02d}_mk (h : {index} < 13) :",
            f"    prototypeWord.get ⟨{index}, h⟩ = {pair} := by",
            f"  have hi : (⟨{index}, h⟩ : WordIndex) = ({index} : WordIndex) := by",
            "    ext",
            "    rfl",
            "  rw [hi]",
            "  decide",
            "",
        ])
    return "\n".join(lines)


def forced_get_theorems() -> str:
    lines: list[str] = []
    for index, face_id in enumerate(FORCED_FACE_IDS_102):
        face = exact.lean_face(face_id)
        lines.extend([
            f"@[simp] theorem prototypeForcedFaces_get{index:02d}_num :",
            f"    prototypeForcedFaces.get ({index} : Step14) = {face} := by",
            "  decide",
            "",
            f"@[simp] theorem prototypeForcedFaces_get{index:02d}_mk (h : {index} < 14) :",
            f"    prototypeForcedFaces.get ⟨{index}, h⟩ = {face} := by",
            f"  have hi : (⟨{index}, h⟩ : Step14) = ({index} : Step14) := by",
            "    ext",
            "    rfl",
            "  rw [hi]",
            "  decide",
            "",
        ])
    return "\n".join(lines)


def force_sign_theorems() -> str:
    simp_terms = ", ".join([
        "prototypeForcedSeq",
        "faceVectorSeq",
        "afterStart",
        *word_get_simp_names(),
        *forced_get_simp_names(),
        "pairPrefixLinearNat",
        "pairOfFace",
        "canonicalNormalQ",
        "normalQ",
        "matId",
        "matMul",
        "reflM",
        "dot",
        "matSub",
        "scalarMat",
        "outer",
        "matVec",
        "prototypeAxis",
    ])
    lines: list[str] = []
    for index in range(13):
        lines.extend([
            f"theorem prototypeForceSign{index:02d} (f : Face)",
            f"    (hf : pairOfFace f = prototypeWord.get ({index} : WordIndex))",
            "    (hpos :",
            "      0 <",
            "        dot",
            f"          (matVec (pairPrefixLinearNat prototypeWord {index})",
            "            (normalQ f)) prototypeAxis) :",
            "    normalQ",
            f"      (prototypeForcedSeq (afterStart ({index} : WordIndex))) =",
            "      normalQ f := by",
            "  cases f <;>",
            f"    simp [{simp_terms}] at hf hpos ⊢ <;>",
            "    first | contradiction | linarith | rfl",
            "",
        ])
    return "\n".join(lines)


def generic_word_get_simp_names(name: str) -> list[str]:
    return [f"{name}_get{index:02d}_num" for index in range(13)]


def generic_word_get_theorems(name: str, word: list[str]) -> str:
    lines: list[str] = []
    for index, pair_id in enumerate(word):
        pair = exact.lean_pair_id(pair_id)
        lines.extend([
            f"@[simp] theorem {name}_get{index:02d}_num :",
            f"    {name}.get ({index} : WordIndex) = {pair} := by",
            "  decide",
            "",
            f"@[simp] theorem {name}_get{index:02d}_mk (h : {index} < 13) :",
            f"    {name}.get ⟨{index}, h⟩ = {pair} := by",
            f"  have hi : (⟨{index}, h⟩ : WordIndex) = ({index} : WordIndex) := by",
            "    ext",
            "    rfl",
            "  rw [hi]",
            "  decide",
            "",
        ])
    return "\n".join(lines)


def lean_pair_word_literal(word: list[str]) -> str:
    return lean_array([exact.lean_pair_id(pair_id) for pair_id in word])


def rank_def_block(rank: int) -> str:
    word = exact.pair_word_at_rank(rank)
    word_name = f"wordRank{rank:09d}"
    rank_name = f"rank{rank:09d}"
    total_name = f"{rank_name}_totalLinear"
    matrix = exact.total_linear(word)
    axis = exact.oriented_fixed_axis(word, matrix)
    zero_index = exact.first_axis_zero_index(word, axis)
    kernel = exact.kernel_line_cross_factor(matrix, axis)
    word_simp = ", ".join(generic_word_get_simp_names(word_name))
    return f"""
def {rank_name} : Fin numPairWords :=
  ⟨{rank}, by decide⟩

def {word_name} : PairWord :=
  ⟨{lean_pair_word_literal(word)}, by decide⟩

{generic_word_get_theorems(word_name, word)}

theorem {rank_name}_rank :
    rankPairWord? {word_name} = some {rank_name} := by
  decide

theorem {rank_name}_unrank :
    unrankPairWord {rank_name} = {word_name} :=
  ((rankPairWord?_eq_some_iff_unrank {word_name} {rank_name}).mp
    {rank_name}_rank).symm

theorem {total_name} :
    totalLinearOfPairWord {word_name} = {exact.lean_mat3(matrix)} := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def {rank_name}_axis : Vec3 Rat :=
  {exact.lean_vec(axis)}

def {rank_name}_kernel : KernelLineWitness where
  crossFactor := {exact.lean_mat3(kernel)}

theorem {rank_name}_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord {word_name})
      {rank_name}_axis {rank_name}_kernel = true := by
  rw [{total_name}]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, {rank_name}_axis,
    {rank_name}_kernel]

theorem {rank_name}_axisZero :
    AxisDotZeroAtWord {word_name} {rank_name}_axis
      ({zero_index} : WordIndex) := by
  intro f hf
  cases f <;>
    simp [{word_simp}, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, {rank_name}_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢
"""


def rank_branch(rank: int) -> str:
    rank_name = f"rank{rank:09d}"
    word_name = f"wordRank{rank:09d}"
    zero_index = exact.first_axis_zero_index(
        exact.pair_word_at_rank(rank),
        exact.oriented_fixed_axis(
            exact.pair_word_at_rank(rank),
            exact.total_linear(exact.pair_word_at_rank(rank)),
        ),
    )
    return f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
      ext
      rfl
    rw [hRank, {rank_name}_unrank] at hM ⊢
    refine ⟨{rank_name}_axis, {rank_name}_kernel,
      ({zero_index} : WordIndex), ?_, ?_⟩
    · exact {rank_name}_kernelCheck
    · exact {rank_name}_axisZero"""


def raw_cases_disjunction(start: int, end: int) -> str:
    return " ∨ ".join([f"raw = {rank}" for rank in range(start, end)])


def raw_cases_rcases_pattern(start: int, end: int) -> str:
    parts = ["hRaw"] + [f"hRaw{rank}" for rank in range(start + 1, end)]
    pattern = parts[-1]
    for part in reversed(parts[:-1]):
        pattern = f"{part} | {pattern}"
    return pattern


def bad_direction_verified_root() -> str:
    prefix_entries = lean_list([exact.lean_pair_id(pair_id) for pair_id in BAD_DIRECTION_PREFIX_IDS])
    ranks = list(range(BAD_DIRECTION_PREFIX_START, BAD_DIRECTION_PREFIX_END))
    rank_blocks = "\n".join(rank_def_block(rank) for rank in ranks)
    branches = "\n".join(rank_branch(rank) for rank in ranks)
    branch_pattern = raw_cases_rcases_pattern(BAD_DIRECTION_PREFIX_START, BAD_DIRECTION_PREFIX_END)
    rank_cases = raw_cases_disjunction(BAD_DIRECTION_PREFIX_START, BAD_DIRECTION_PREFIX_END)
    return f"""import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves a depth-9 bad-direction prefix interval covering six pair-word
ranks.  It exports one interval theorem and does not contain per-rank
rank-certificate literals.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.BadDirection090_096

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def badDirectionPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := {prefix_entries}
  length_le := by decide

{rank_blocks}

theorem badDirectionPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      badDirectionPairPrefix {BAD_DIRECTION_PREFIX_START} {BAD_DIRECTION_PREFIX_END} := by
  intro raw hlo hhi hlt
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{''.join([
f'''  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = rank{rank:09d} := by
      ext
      rfl
    rw [hRank, rank{rank:09d}_unrank]
    intro i
    fin_cases i <;> decide
''' for rank in ranks])}

theorem badDirection_sound
    (raw : Nat) (hlo : {BAD_DIRECTION_PREFIX_START} <= raw)
    (hhi : raw < {BAD_DIRECTION_PREFIX_END})
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix badDirectionPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    exists axis : Vec3 Rat, exists kernel : KernelLineWitness,
      exists i : WordIndex,
        checkKernelLineWitness
          (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
          axis kernel = true /\\
        AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) axis i := by
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{branches}

def badDirectionEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadDirectionPrefixCert
      {BAD_DIRECTION_PREFIX_START} {BAD_DIRECTION_PREFIX_END} where
  pairPrefix := badDirectionPairPrefix
  prefix_covers := badDirectionPrefix_covers
  direction_sound := badDirection_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      {BAD_DIRECTION_PREFIX_START} {BAD_DIRECTION_PREFIX_END} :=
  badDirectionEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.BadDirection090_096
"""


def verified_root() -> str:
    pair_entries = lean_list(pair_terms())
    pair_array = lean_array(pair_terms())
    forced_array = lean_array(face_terms())
    matrix = exact.total_linear(PAIR_WORD_IDS_102)
    axis = exact.vec((-exact.Fraction(9, 10), -exact.Fraction(13, 10), 1))
    final_dot = exact.final_axis_dot(PAIR_WORD_IDS_102, axis)
    word_simp = ", ".join(word_get_simp_names())
    return f"""import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves a bounded bad-pair-balance interval without local checked
certificate literals and without a singleton rank-leaf module.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.BadPairBalance102

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def prototypeRank : Fin numPairWords :=
  ⟨102, by decide⟩

def prototypePairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := {pair_entries}
  length_le := by decide

def prototypeWord : PairWord :=
  ⟨{pair_array}, by decide⟩

{word_get_theorems()}

theorem prototypeRank_rank :
    rankPairWord? prototypeWord = some prototypeRank := by
  decide

theorem prototypeRank_unrank :
    unrankPairWord prototypeRank = prototypeWord :=
  ((rankPairWord?_eq_some_iff_unrank prototypeWord prototypeRank).mp
    prototypeRank_rank).symm

def prototypeAxis : Vec3 Rat :=
  {{ x := -9 / 10, y := -13 / 10, z := 1 }}

def prototypeKernel : KernelLineWitness where
  crossFactor :=
    {{ m00 := 79 / 400, m01 := 269 / 200, m02 := 0,
      m10 := -181 / 200, m11 := -389 / 400, m12 := 0,
      m20 := -799 / 800, m21 := -43 / 800, m22 := 0 }}

def prototypeForcedFaces : Vector Face 14 :=
  ⟨{forced_array}, by decide⟩

{forced_get_theorems()}

def prototypeForcedSeq : Step14 -> Face :=
  faceVectorSeq prototypeForcedFaces

theorem prototypeTotalLinear :
    totalLinearOfPairWord prototypeWord = {exact.lean_mat3(matrix)} := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem prototypeKernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord prototypeWord)
      prototypeAxis prototypeKernel = true := by
  rw [prototypeTotalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, prototypeAxis,
    prototypeKernel]

theorem prototypeFinalAxisDot :
    finalAxisDotQ prototypeWord prototypeAxis = {exact.lean_rat(final_dot)} := by
  simp [finalAxisDotQ, pairPrefixLinearNat, {word_simp},
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec, prototypeAxis]
  norm_num

{force_sign_theorems()}

theorem prototypePrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      prototypePairPrefix 102 103 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  intro i
  fin_cases i <;> decide

theorem prototypeKernel_sound
    (raw : Nat) (hlo : 102 <= raw) (hhi : raw < 103)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix prototypePairPrefix
        (unrankPairWord ⟨raw, hlt⟩)) :
    checkKernelLineWitness
      (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
      prototypeAxis prototypeKernel = true := by
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  exact prototypeKernelCheck

theorem prototypeForces_sound
    (raw : Nat) (hlo : 102 <= raw) (hhi : raw < 103)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix prototypePairPrefix
        (unrankPairWord ⟨raw, hlt⟩)) :
    AxisForcesForcedSeq (unrankPairWord ⟨raw, hlt⟩)
      prototypeAxis prototypeForcedSeq := by
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  constructor
  · unfold StartsXp prototypeForcedSeq prototypeForcedFaces faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;>
      unfold prototypeWord prototypeForcedSeq prototypeForcedFaces
        faceVectorSeq afterStart <;>
      decide
  constructor
  · change 0 < finalAxisDotQ prototypeWord prototypeAxis
    rw [prototypeFinalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i
    · exact prototypeForceSign00 f hf hpos
    · exact prototypeForceSign01 f hf hpos
    · exact prototypeForceSign02 f hf hpos
    · exact prototypeForceSign03 f hf hpos
    · exact prototypeForceSign04 f hf hpos
    · exact prototypeForceSign05 f hf hpos
    · exact prototypeForceSign06 f hf hpos
    · exact prototypeForceSign07 f hf hpos
    · exact prototypeForceSign08 f hf hpos
    · exact prototypeForceSign09 f hf hpos
    · exact prototypeForceSign10 f hf hpos
    · exact prototypeForceSign11 f hf hpos
    · exact prototypeForceSign12 f hf hpos

theorem prototypeNotOmni :
    ¬ IsOmniSeq prototypeForcedSeq := by
  intro h
  have hEq :
      prototypeForcedSeq (6 : Step14) =
        prototypeForcedSeq (8 : Step14) := by
    decide
  have hIdx := h.1 hEq
  exact (by decide : (6 : Step14) ≠ (8 : Step14)) hIdx

def prototypeEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadPairBalancePrefixCert
      102 103 where
  pairPrefix := prototypePairPrefix
  prefix_covers := prototypePrefix_covers
  axis := prototypeAxis
  kernel := prototypeKernel
  forcedSeq := prototypeForcedSeq
  kernel_sound := prototypeKernel_sound
  forces_sound := prototypeForces_sound
  not_omni := prototypeNotOmni

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      102 103 :=
  prototypeEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.BadPairBalance102
"""


def build_manifest(bad_balance_root: Path, bad_direction_root: Path) -> dict:
    return {
        "schema_version": 1,
        "mode": "semantic-prefix-pruning-prototype",
        "trusted_as_final_proof": False,
        "rank_count": 7,
        "covered_intervals": [
            {
                "start_rank": BAD_DIRECTION_PREFIX_START,
                "end_rank": BAD_DIRECTION_PREFIX_END,
                "rank_count": BAD_DIRECTION_PREFIX_END - BAD_DIRECTION_PREFIX_START,
                "prefix_length": len(BAD_DIRECTION_PREFIX_IDS),
                "failure": "badDirectionSign",
            },
            {
                "start_rank": 102,
                "end_rank": 103,
                "rank_count": 1,
                "prefix_length": 13,
                "failure": "badPairBalance",
            },
        ],
        "contains_local_rank_certificate_literals": False,
        "no_singleton_rank_leaf_modules": True,
        "contains_single_rank_control_interval": True,
        "has_multi_rank_prefix_interval": True,
        "forbidden_active_patterns": FORBIDDEN_ACTIVE_PATTERNS,
        "paths": {
            "verified_roots": [
                {
                    "start_rank": BAD_DIRECTION_PREFIX_START,
                    "end_rank": BAD_DIRECTION_PREFIX_END,
                    "rank_count": BAD_DIRECTION_PREFIX_END - BAD_DIRECTION_PREFIX_START,
                    "kind": "badDirectionPrefix",
                    "verified_root": file_record(bad_direction_root),
                },
                {
                    "start_rank": 102,
                    "end_rank": 103,
                    "rank_count": 1,
                    "kind": "badPairBalancePrefix",
                    "verified_root": file_record(bad_balance_root),
                }
            ]
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--emit", action="store_true", required=True)
    parser.add_argument("--output-dir", type=Path, default=OUTPUT_DIR)
    args = parser.parse_args()

    output_dir = args.output_dir
    if not output_dir.is_absolute():
        output_dir = REPO_ROOT / output_dir
    bad_balance_root = output_dir / "BadPairBalance102" / "VerifiedRoot.lean"
    bad_direction_root = output_dir / "BadDirection090_096" / "VerifiedRoot.lean"
    write_text(bad_balance_root, verified_root())
    write_text(bad_direction_root, bad_direction_verified_root())
    manifest = build_manifest(bad_balance_root, bad_direction_root)
    write_text(output_dir / "manifest.json", json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    print(f"wrote {repo_path(bad_balance_root)}")
    print(f"wrote {repo_path(bad_direction_root)}")
    print(f"wrote {repo_path(output_dir / 'manifest.json')}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
