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
import time
from pathlib import Path
from typing import Any

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

DEFAULT_PROFILE_REPORT = (
    REPO_ROOT / "scripts" / "generated" / "prefix_pruning_window_profile.json"
)
DEFAULT_UNIFORM_PROFILE_REPORT = (
    REPO_ROOT / "scripts" / "generated" / "prefix_pruning_uniform_profile.json"
)
DEFAULT_MIN_ROOT_RANKS = 2
DEFAULT_MAX_ROOT_RANKS = 24
DEFAULT_MAX_ROOTS = 2

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


def rank_word_total_block(rank: int) -> str:
    word = exact.pair_word_at_rank(rank)
    word_name = f"wordRank{rank:09d}"
    rank_name = f"rank{rank:09d}"
    total_name = f"{rank_name}_totalLinear"
    matrix = exact.total_linear(word)
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
"""


def remaining_after_prefix(prefix: list[str]) -> dict[str, int]:
    remaining = dict(exact.PAIR_COUNTS)
    for pair_id in prefix:
        if pair_id not in remaining or remaining[pair_id] <= 0:
            raise ValueError(f"invalid pair prefix: {prefix}")
        remaining[pair_id] -= 1
    return remaining


def prefix_rank_interval(prefix: list[str]) -> tuple[int, int]:
    lo = exact.prefix_start_rank(prefix)
    remaining = remaining_after_prefix(prefix)
    return lo, lo + exact.multinomial_count(remaining)


def classify_rank_for_bad_direction(rank: int) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    matrix = exact.total_linear(word)
    if matrix == exact.mat_id():
        return {
            "rank": rank,
            "word": word,
            "identity": True,
            "bad_direction": False,
        }
    try:
        axis = exact.oriented_fixed_axis(word, matrix)
        zero_index = exact.first_axis_zero_index_or_none(word, axis)
        if zero_index is None:
            return {
                "rank": rank,
                "word": word,
                "identity": False,
                "bad_direction": False,
                "reason": "no_axis_zero_index",
            }
        kernel = exact.kernel_line_cross_factor(matrix, axis)
    except ValueError as exc:
        return {
            "rank": rank,
            "word": word,
            "identity": False,
            "bad_direction": False,
            "reason": str(exc),
        }
    return {
        "rank": rank,
        "word": word,
        "identity": False,
        "bad_direction": True,
        "axis": axis,
        "kernel": kernel,
        "zero_index": zero_index,
    }


def witness_signature(classification: dict[str, Any]) -> str:
    if classification["identity"]:
        return "identity"
    return json.dumps(
        {
            "axis": [exact.rat_to_json(value) for value in classification["axis"]],
            "kernel": [
                [exact.rat_to_json(value) for value in row]
                for row in classification["kernel"]
            ],
            "zero_index": classification["zero_index"],
        },
        sort_keys=True,
    )


def nonidentity_witness_signatures(classifications: list[dict[str, Any]]) -> set[str]:
    return {
        witness_signature(item)
        for item in classifications
        if not item["identity"]
    }


def classify_bad_direction_prefix_interval(
    prefix: list[str],
    lo: int,
    hi: int,
) -> dict[str, Any] | None:
    rank_classifications = [
        classify_rank_for_bad_direction(rank) for rank in range(lo, hi)
    ]
    nonidentity = [
        item for item in rank_classifications if not item["identity"]
    ]
    if not nonidentity:
        return None
    failed = [
        item for item in nonidentity if not item.get("bad_direction", False)
    ]
    if failed:
        return None
    signatures = {
        witness_signature(item) for item in rank_classifications
    }
    witness_mode = "uniform" if len(signatures) == 1 else "completion-local"
    return {
        "start_rank": lo,
        "end_rank": hi,
        "rank_count": hi - lo,
        "prefix": list(prefix),
        "prefix_length": len(prefix),
        "failure": "badDirectionSign",
        "witness_mode": witness_mode,
        "identity_ranks": [
            item["rank"] for item in rank_classifications if item["identity"]
        ],
        "nonidentity_ranks": [
            item["rank"] for item in nonidentity
        ],
        "witness_signature_count": len(signatures),
    }


def classify_uniform_bad_direction_prefix_interval(
    prefix: list[str],
    lo: int,
    hi: int,
) -> dict[str, Any] | None:
    rank_classifications = [
        classify_rank_for_bad_direction(rank) for rank in range(lo, hi)
    ]
    nonidentity = [
        item for item in rank_classifications if not item["identity"]
    ]
    if not nonidentity:
        return None
    if any(not item.get("bad_direction", False) for item in nonidentity):
        return None
    signatures = nonidentity_witness_signatures(rank_classifications)
    if len(signatures) != 1:
        return None
    witness = nonidentity[0]
    return {
        "start_rank": lo,
        "end_rank": hi,
        "rank_count": hi - lo,
        "prefix": list(prefix),
        "prefix_length": len(prefix),
        "failure": "uniformBadDirectionSign",
        "family_kind": "uniformBadDirection",
        "witness_mode": "uniform",
        "axis": witness["axis"],
        "kernel": witness["kernel"],
        "zero_index": witness["zero_index"],
        "identity_ranks": [
            item["rank"] for item in rank_classifications if item["identity"]
        ],
        "nonidentity_ranks": [
            item["rank"] for item in nonidentity
        ],
        "witness_signature_count": len(signatures),
    }


def classify_rank_for_no_fixed(rank: int) -> dict[str, Any]:
    word = exact.pair_word_at_rank(rank)
    matrix = exact.total_linear(word)
    if matrix == exact.mat_id():
        return {
            "rank": rank,
            "word": word,
            "identity": True,
            "no_fixed": False,
        }
    try:
        witness = exact.mat3_inverse(exact.fixed_part(matrix))
    except ValueError as exc:
        return {
            "rank": rank,
            "word": word,
            "identity": False,
            "no_fixed": False,
            "reason": str(exc),
        }
    return {
        "rank": rank,
        "word": word,
        "identity": False,
        "no_fixed": True,
        "witness": witness,
    }


def no_fixed_signature(classification: dict[str, Any]) -> str:
    if classification["identity"]:
        return "identity"
    return json.dumps(
        {
            "left_inverse": [
                [exact.rat_to_json(value) for value in row]
                for row in classification["witness"]
            ],
        },
        sort_keys=True,
    )


def classify_uniform_no_fixed_prefix_interval(
    prefix: list[str],
    lo: int,
    hi: int,
) -> dict[str, Any] | None:
    rank_classifications = [
        classify_rank_for_no_fixed(rank) for rank in range(lo, hi)
    ]
    nonidentity = [
        item for item in rank_classifications if not item["identity"]
    ]
    if not nonidentity:
        return None
    if any(not item.get("no_fixed", False) for item in nonidentity):
        return None
    signatures = {
        no_fixed_signature(item) for item in nonidentity
    }
    if len(signatures) != 1:
        return None
    witness = nonidentity[0]
    return {
        "start_rank": lo,
        "end_rank": hi,
        "rank_count": hi - lo,
        "prefix": list(prefix),
        "prefix_length": len(prefix),
        "failure": "uniformNoFixedAxis",
        "family_kind": "uniformNoFixedAxis",
        "witness_mode": "uniform",
        "witness": witness["witness"],
        "identity_ranks": [
            item["rank"] for item in rank_classifications if item["identity"]
        ],
        "nonidentity_ranks": [
            item["rank"] for item in nonidentity
        ],
        "witness_signature_count": len(signatures),
    }


def discover_bad_direction_intervals(
    window_lo: int,
    window_hi: int,
    *,
    min_root_ranks: int,
    max_root_ranks: int,
) -> list[dict[str, Any]]:
    if not (0 <= window_lo <= window_hi <= exact.EXPECTED_PAIR_WORDS):
        raise ValueError(
            f"invalid discovery window [{window_lo}, {window_hi})"
        )
    if min_root_ranks < 1 or max_root_ranks < min_root_ranks:
        raise ValueError("invalid min/max root rank bounds")

    candidates: list[dict[str, Any]] = []
    seen_prefixes: set[tuple[str, ...]] = set()
    for rank in range(window_lo, window_hi):
        word = exact.pair_word_at_rank(rank)
        for depth in range(1, 14):
            prefix = tuple(word[:depth])
            if prefix in seen_prefixes:
                continue
            seen_prefixes.add(prefix)
            lo, hi = prefix_rank_interval(list(prefix))
            width = hi - lo
            if lo < window_lo or hi > window_hi:
                continue
            if width < min_root_ranks or width > max_root_ranks:
                continue
            candidate = classify_bad_direction_prefix_interval(list(prefix), lo, hi)
            if candidate is not None:
                candidates.append(candidate)

    candidates.sort(
        key=lambda item: (
            -item["rank_count"],
            item["start_rank"],
            item["prefix_length"],
            item["prefix"],
        )
    )
    return candidates


def discover_uniform_family_intervals(
    window_lo: int,
    window_hi: int,
    *,
    min_root_ranks: int,
    max_root_ranks: int,
) -> dict[str, list[dict[str, Any]]]:
    if not (0 <= window_lo <= window_hi <= exact.EXPECTED_PAIR_WORDS):
        raise ValueError(
            f"invalid discovery window [{window_lo}, {window_hi})"
        )
    if min_root_ranks < 1 or max_root_ranks < min_root_ranks:
        raise ValueError("invalid min/max root rank bounds")

    by_kind: dict[str, list[dict[str, Any]]] = {
        "uniformBadDirection": [],
        "uniformNoFixedAxis": [],
    }
    seen_prefixes: set[tuple[str, ...]] = set()
    for rank in range(window_lo, window_hi):
        word = exact.pair_word_at_rank(rank)
        for depth in range(1, 14):
            prefix = tuple(word[:depth])
            if prefix in seen_prefixes:
                continue
            seen_prefixes.add(prefix)
            lo, hi = prefix_rank_interval(list(prefix))
            width = hi - lo
            if lo < window_lo or hi > window_hi:
                continue
            if width < min_root_ranks or width > max_root_ranks:
                continue
            bad_direction = classify_uniform_bad_direction_prefix_interval(
                list(prefix), lo, hi
            )
            if bad_direction is not None:
                by_kind["uniformBadDirection"].append(bad_direction)
            no_fixed = classify_uniform_no_fixed_prefix_interval(
                list(prefix), lo, hi
            )
            if no_fixed is not None:
                by_kind["uniformNoFixedAxis"].append(no_fixed)

    for candidates in by_kind.values():
        candidates.sort(
            key=lambda item: (
                -item["rank_count"],
                -len(item["nonidentity_ranks"]),
                len(item["identity_ranks"]),
                item["start_rank"],
                item["prefix_length"],
                item["prefix"],
            )
        )
    return by_kind


def select_discovered_intervals(
    candidates: list[dict[str, Any]],
    *,
    max_roots: int,
) -> list[dict[str, Any]]:
    selected: list[dict[str, Any]] = []
    occupied: list[tuple[int, int]] = []
    for candidate in candidates:
        lo = candidate["start_rank"]
        hi = candidate["end_rank"]
        if any(not (hi <= used_lo or used_hi <= lo) for used_lo, used_hi in occupied):
            continue
        selected.append(candidate)
        occupied.append((lo, hi))
        if len(selected) >= max_roots:
            break
    selected.sort(key=lambda item: item["start_rank"])
    return selected


def select_uniform_family_intervals(
    candidates_by_kind: dict[str, list[dict[str, Any]]],
    *,
    max_roots: int,
) -> list[dict[str, Any]]:
    selected: list[dict[str, Any]] = []
    occupied: list[tuple[int, int]] = []
    per_kind_budget = max_roots
    for kind in ("uniformBadDirection", "uniformNoFixedAxis"):
        kind_selected = 0
        for candidate in candidates_by_kind.get(kind, []):
            lo = candidate["start_rank"]
            hi = candidate["end_rank"]
            if any(not (hi <= used_lo or used_hi <= lo) for used_lo, used_hi in occupied):
                continue
            selected.append(candidate)
            occupied.append((lo, hi))
            kind_selected += 1
            if kind_selected >= per_kind_budget:
                break
    selected.sort(key=lambda item: (item["start_rank"], item["end_rank"]))
    return selected


def rank_def_block(rank: int) -> str:
    word = exact.pair_word_at_rank(rank)
    word_name = f"wordRank{rank:09d}"
    rank_name = f"rank{rank:09d}"
    total_name = f"{rank_name}_totalLinear"
    matrix = exact.total_linear(word)
    word_simp = ", ".join(generic_word_get_simp_names(word_name))
    common = f"""
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
"""
    if matrix == exact.mat_id():
        return common

    axis = exact.oriented_fixed_axis(word, matrix)
    zero_index = exact.first_axis_zero_index(word, axis)
    kernel = exact.kernel_line_cross_factor(matrix, axis)
    return common + f"""

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
    word = exact.pair_word_at_rank(rank)
    matrix = exact.total_linear(word)
    if matrix == exact.mat_id():
        return f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
      ext
      rfl
    rw [hRank, {rank_name}_unrank] at hM
    exfalso
    apply hM
    rw [{rank_name}_totalLinear]
    norm_num [matId]"""

    axis = exact.oriented_fixed_axis(word, matrix)
    zero_index = exact.first_axis_zero_index(word, axis)
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


def bad_direction_verified_root_for_interval(
    *,
    start_rank: int,
    end_rank: int,
    prefix: list[str],
    namespace_name: str,
    title: str,
) -> str:
    prefix_entries = lean_list([exact.lean_pair_id(pair_id) for pair_id in prefix])
    ranks = list(range(start_rank, end_rank))
    rank_blocks = "\n".join(rank_def_block(rank) for rank in ranks)
    branches = "\n".join(rank_branch(rank) for rank in ranks)
    branch_pattern = raw_cases_rcases_pattern(start_rank, end_rank)
    rank_cases = raw_cases_disjunction(start_rank, end_rank)
    return f"""import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves {title}. It exports one interval theorem and does not contain
per-rank rank-certificate literals.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}

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
      badDirectionPairPrefix {start_rank} {end_rank} := by
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
    (raw : Nat) (hlo : {start_rank} <= raw)
    (hhi : raw < {end_rank})
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
      {start_rank} {end_rank} where
  pairPrefix := badDirectionPairPrefix
  prefix_covers := badDirectionPrefix_covers
  direction_sound := badDirection_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      {start_rank} {end_rank} :=
  badDirectionEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}
"""


def bad_direction_verified_root() -> str:
    return bad_direction_verified_root_for_interval(
        start_rank=BAD_DIRECTION_PREFIX_START,
        end_rank=BAD_DIRECTION_PREFIX_END,
        prefix=BAD_DIRECTION_PREFIX_IDS,
        namespace_name="BadDirection090_096",
        title="a depth-9 bad-direction prefix interval covering six pair-word ranks",
    )


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


def discovered_namespace(start_rank: int, end_rank: int) -> str:
    return f"DiscoveredBadDirection{start_rank:09d}_{end_rank:09d}"


def discovered_root_path(output_dir: Path, candidate: dict[str, Any]) -> Path:
    return (
        output_dir /
        f"DiscoveredBadDirection_{candidate['start_rank']:09d}_{candidate['end_rank']:09d}" /
        "VerifiedRoot.lean"
    )


def discovered_verified_root(candidate: dict[str, Any]) -> str:
    return bad_direction_verified_root_for_interval(
        start_rank=candidate["start_rank"],
        end_rank=candidate["end_rank"],
        prefix=candidate["prefix"],
        namespace_name=discovered_namespace(
            candidate["start_rank"], candidate["end_rank"]
        ),
        title=(
            "an automatically discovered bad-direction prefix interval covering "
            f"{candidate['rank_count']} pair-word ranks"
        ),
    )


def uniform_namespace(candidate: dict[str, Any]) -> str:
    prefix = {
        "uniformBadDirection": "UniformBadDirection",
        "uniformNoFixedAxis": "UniformNoFixedAxis",
    }[candidate["family_kind"]]
    return f"{prefix}{candidate['start_rank']:09d}_{candidate['end_rank']:09d}"


def uniform_root_path(output_dir: Path, candidate: dict[str, Any]) -> Path:
    return (
        output_dir /
        f"{candidate['family_kind']}_{candidate['start_rank']:09d}_{candidate['end_rank']:09d}" /
        "VerifiedRoot.lean"
    )


def uniform_nonidentity_check_blocks(candidate: dict[str, Any]) -> str:
    blocks: list[str] = []
    for rank in candidate["nonidentity_ranks"]:
        word = exact.pair_word_at_rank(rank)
        word_name = f"wordRank{rank:09d}"
        rank_name = f"rank{rank:09d}"
        word_simp = ", ".join(generic_word_get_simp_names(word_name))
        blocks.append(f"""
theorem {rank_name}_uniformKernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord {word_name})
      uniformAxis uniformKernel = true := by
  rw [{rank_name}_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, uniformAxis,
    uniformKernel]

theorem {rank_name}_uniformAxisZero :
    AxisDotZeroAtWord {word_name} uniformAxis
      ({candidate['zero_index']} : WordIndex) := by
  intro f hf
  cases f <;>
    simp [{word_simp}, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, uniformAxis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢
""")
    return "\n".join(blocks)


def no_fixed_nonidentity_check_blocks(candidate: dict[str, Any]) -> str:
    blocks: list[str] = []
    for rank in candidate["nonidentity_ranks"]:
        word_name = f"wordRank{rank:09d}"
        rank_name = f"rank{rank:09d}"
        blocks.append(f"""
theorem {rank_name}_noFixedCheck :
    checkNoFixedVectorWitness
      (totalLinearOfPairWord {word_name})
      noFixedWitness = true := by
  rw [{rank_name}_totalLinear]
  norm_num [checkNoFixedVectorWitness, fixedPart, matMul, matSub, matId,
    noFixedWitness]
""")
    return "\n".join(blocks)


def contradiction_identity_branch(
    rank: int,
    *,
    indent: str = "  ",
) -> str:
    rank_name = f"rank{rank:09d}"
    return f"""{indent}· subst raw
{indent}  have hRank :
{indent}      (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
{indent}    ext
{indent}    rfl
{indent}  rw [hRank, {rank_name}_unrank] at hM
{indent}  exfalso
{indent}  apply hM
{indent}  rw [{rank_name}_totalLinear]
{indent}  norm_num [matId]"""


def uniform_kernel_sound_branch(rank: int, candidate: dict[str, Any]) -> str:
    if rank in set(candidate["identity_ranks"]):
        return contradiction_identity_branch(rank)
    rank_name = f"rank{rank:09d}"
    return f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
      ext
      rfl
    rw [hRank, {rank_name}_unrank]
    exact {rank_name}_uniformKernelCheck"""


def uniform_axis_zero_sound_branch(rank: int, candidate: dict[str, Any]) -> str:
    if rank in set(candidate["identity_ranks"]):
        return contradiction_identity_branch(rank)
    rank_name = f"rank{rank:09d}"
    return f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
      ext
      rfl
    rw [hRank, {rank_name}_unrank]
    exact {rank_name}_uniformAxisZero"""


def no_fixed_sound_branch(rank: int, candidate: dict[str, Any]) -> str:
    if rank in set(candidate["identity_ranks"]):
        return contradiction_identity_branch(rank)
    rank_name = f"rank{rank:09d}"
    return f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = {rank_name} := by
      ext
      rfl
    rw [hRank, {rank_name}_unrank]
    exact {rank_name}_noFixedCheck"""


def prefix_covers_branches(start_rank: int, end_rank: int) -> str:
    return "".join([
        f"""  · subst raw
    have hRank :
        (⟨{rank}, hlt⟩ : Fin numPairWords) = rank{rank:09d} := by
      ext
      rfl
    rw [hRank, rank{rank:09d}_unrank]
    intro i
    fin_cases i <;> decide
""" for rank in range(start_rank, end_rank)
    ])


def uniform_bad_direction_verified_root(candidate: dict[str, Any]) -> str:
    start_rank = candidate["start_rank"]
    end_rank = candidate["end_rank"]
    prefix_entries = lean_list(
        [exact.lean_pair_id(pair_id) for pair_id in candidate["prefix"]]
    )
    ranks = list(range(start_rank, end_rank))
    rank_blocks = "\n".join(rank_word_total_block(rank) for rank in ranks)
    branch_pattern = raw_cases_rcases_pattern(start_rank, end_rank)
    rank_cases = raw_cases_disjunction(start_rank, end_rank)
    kernel_branches = "\n".join(
        uniform_kernel_sound_branch(rank, candidate) for rank in ranks
    )
    axis_branches = "\n".join(
        uniform_axis_zero_sound_branch(rank, candidate) for rank in ranks
    )
    namespace_name = uniform_namespace(candidate)
    return f"""import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated uniform bad-direction prefix family.

The axis, kernel witness, and zero-impact witness are shared by every
non-identity rank in this bounded prefix interval.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def uniformPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := {prefix_entries}
  length_le := by decide

def uniformAxis : Vec3 Rat :=
  {exact.lean_vec(candidate["axis"])}

def uniformKernel : KernelLineWitness where
  crossFactor := {exact.lean_mat3(candidate["kernel"])}

{rank_blocks}

{uniform_nonidentity_check_blocks(candidate)}

theorem uniformPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      uniformPairPrefix {start_rank} {end_rank} := by
  intro raw hlo hhi hlt
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{prefix_covers_branches(start_rank, end_rank)}

theorem uniformKernel_sound
    (raw : Nat) (hlo : {start_rank} <= raw)
    (hhi : raw < {end_rank})
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix uniformPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    checkKernelLineWitness
      (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
      uniformAxis uniformKernel = true := by
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{kernel_branches}

theorem uniformAxisZero_sound
    (raw : Nat) (hlo : {start_rank} <= raw)
    (hhi : raw < {end_rank})
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix uniformPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) uniformAxis
      ({candidate['zero_index']} : WordIndex) := by
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{axis_branches}

def uniformEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.UniformBadDirectionPrefixCert
      {start_rank} {end_rank} where
  pairPrefix := uniformPairPrefix
  prefix_covers := uniformPrefix_covers
  axis := uniformAxis
  kernel := uniformKernel
  impact := ({candidate['zero_index']} : WordIndex)
  kernel_sound := uniformKernel_sound
  axis_zero_sound := uniformAxisZero_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      {start_rank} {end_rank} :=
  uniformEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}
"""


def no_fixed_axis_verified_root(candidate: dict[str, Any]) -> str:
    start_rank = candidate["start_rank"]
    end_rank = candidate["end_rank"]
    prefix_entries = lean_list(
        [exact.lean_pair_id(pair_id) for pair_id in candidate["prefix"]]
    )
    ranks = list(range(start_rank, end_rank))
    rank_blocks = "\n".join(rank_word_total_block(rank) for rank in ranks)
    branch_pattern = raw_cases_rcases_pattern(start_rank, end_rank)
    rank_cases = raw_cases_disjunction(start_rank, end_rank)
    branches = "\n".join(no_fixed_sound_branch(rank, candidate) for rank in ranks)
    namespace_name = uniform_namespace(candidate)
    return f"""import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated uniform no-fixed-axis prefix family.

The left-inverse witness is shared by every non-identity rank in this bounded
prefix interval.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def noFixedPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := {prefix_entries}
  length_le := by decide

def noFixedWitness : NoFixedVectorWitness where
  leftInverse := {exact.lean_mat3(candidate["witness"])}

{rank_blocks}

{no_fixed_nonidentity_check_blocks(candidate)}

theorem noFixedPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      noFixedPairPrefix {start_rank} {end_rank} := by
  intro raw hlo hhi hlt
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{prefix_covers_branches(start_rank, end_rank)}

theorem noFixed_sound
    (raw : Nat) (hlo : {start_rank} <= raw)
    (hhi : raw < {end_rank})
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix noFixedPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    checkNoFixedVectorWitness
      (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
      noFixedWitness = true := by
  have hRaw : {rank_cases} := by omega
  rcases hRaw with {branch_pattern}
{branches}

def noFixedEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.NoFixedAxisPrefixCert
      {start_rank} {end_rank} where
  pairPrefix := noFixedPairPrefix
  prefix_covers := noFixedPrefix_covers
  witness := noFixedWitness
  no_fixed_sound := noFixed_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      {start_rank} {end_rank} :=
  noFixedEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.{namespace_name}
"""


def uniform_verified_root(candidate: dict[str, Any]) -> str:
    if candidate["family_kind"] == "uniformBadDirection":
        return uniform_bad_direction_verified_root(candidate)
    if candidate["family_kind"] == "uniformNoFixedAxis":
        return no_fixed_axis_verified_root(candidate)
    raise ValueError(f"unsupported uniform family kind: {candidate['family_kind']}")


def interval_record(
    *,
    start_rank: int,
    end_rank: int,
    prefix_length: int,
    failure: str,
    kind: str,
    root: Path,
    witness_mode: str | None = None,
    source: str,
) -> dict[str, Any]:
    record: dict[str, Any] = {
        "start_rank": start_rank,
        "end_rank": end_rank,
        "rank_count": end_rank - start_rank,
        "prefix_length": prefix_length,
        "failure": failure,
        "kind": kind,
        "source": source,
        "verified_root": file_record(root),
    }
    if witness_mode is not None:
        record["witness_mode"] = witness_mode
    return record


def build_manifest(
    roots: list[dict[str, Any]],
    *,
    profile: dict[str, Any] | None = None,
    mode: str = "semantic-prefix-pruning-prototype",
) -> dict[str, Any]:
    covered = [
        {
            "start_rank": root["start_rank"],
            "end_rank": root["end_rank"],
            "rank_count": root["rank_count"],
            "prefix_length": root["prefix_length"],
            "failure": root["failure"],
            "source": root["source"],
            **({"witness_mode": root["witness_mode"]} if "witness_mode" in root else {}),
        }
        for root in roots
    ]
    has_multi = any(root["rank_count"] > 1 for root in roots)
    contains_control = any(root["source"] == "control" for root in roots)
    discovered = [root for root in roots if root["source"] == "discovered"]
    profile_summary = None
    if profile is not None:
        profile_summary = {
            "window": profile["window"],
            "bounds": profile["bounds"],
            "candidate_count": profile["candidate_count"],
            "selected_count": profile["selected_count"],
            "selected_rank_count": profile["selected_rank_count"],
            "largest_candidate_rank_count": profile["largest_candidate_rank_count"],
            "witness_modes": profile["witness_modes"],
            **({"family_kind_counts": profile["family_kind_counts"]}
               if "family_kind_counts" in profile else {}),
        }
    return {
        "schema_version": 1,
        "mode": mode,
        "trusted_as_final_proof": False,
        "rank_count": sum(root["rank_count"] for root in roots),
        "covered_intervals": covered,
        "contains_local_rank_certificate_literals": False,
        "no_singleton_rank_leaf_modules": True,
        "contains_single_rank_control_interval": contains_control,
        "has_multi_rank_prefix_interval": has_multi,
        "discovered_root_count": len(discovered),
        "discovered_rank_count": sum(root["rank_count"] for root in discovered),
        "forbidden_active_patterns": FORBIDDEN_ACTIVE_PATTERNS,
        "paths": {
            "verified_roots": roots,
        },
        **({"profile_summary": profile_summary} if profile_summary is not None else {}),
    }


def profile_payload(
    *,
    window_lo: int,
    window_hi: int,
    min_root_ranks: int,
    max_root_ranks: int,
    max_roots: int,
    candidates: list[dict[str, Any]],
    selected: list[dict[str, Any]],
    elapsed_seconds: float,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "prefix-pruning-window-profile",
        "trusted_as_final_proof": False,
        "window": {
            "start_rank": window_lo,
            "end_rank": window_hi,
            "rank_count": window_hi - window_lo,
        },
        "bounds": {
            "min_root_ranks": min_root_ranks,
            "max_root_ranks": max_root_ranks,
            "max_roots": max_roots,
        },
        "candidate_count": len(candidates),
        "selected_count": len(selected),
        "selected_rank_count": sum(item["rank_count"] for item in selected),
        "has_multi_rank_candidate": any(item["rank_count"] > 1 for item in candidates),
        "largest_candidate_rank_count": max(
            (item["rank_count"] for item in candidates), default=0
        ),
        "witness_modes": sorted({item["witness_mode"] for item in candidates}),
        "candidates": candidates,
        "selected": selected,
        "elapsed_seconds": elapsed_seconds,
        "next_step": (
            "Add uniform prefix templates and rerun the full compression gate; "
            "this bounded profile is not final coverage."
        ),
    }


def uniform_candidate_summary(candidate: dict[str, Any]) -> dict[str, Any]:
    summary = {
        "start_rank": candidate["start_rank"],
        "end_rank": candidate["end_rank"],
        "rank_count": candidate["rank_count"],
        "prefix": candidate["prefix"],
        "prefix_length": candidate["prefix_length"],
        "failure": candidate["failure"],
        "family_kind": candidate["family_kind"],
        "witness_mode": candidate["witness_mode"],
        "identity_rank_count": len(candidate["identity_ranks"]),
        "nonidentity_rank_count": len(candidate["nonidentity_ranks"]),
        "identity_ranks": candidate["identity_ranks"],
        "nonidentity_ranks": candidate["nonidentity_ranks"],
        "witness_signature_count": candidate["witness_signature_count"],
    }
    if "zero_index" in candidate:
        summary["zero_index"] = candidate["zero_index"]
    return summary


def uniform_profile_payload(
    *,
    window_lo: int,
    window_hi: int,
    min_root_ranks: int,
    max_root_ranks: int,
    max_roots: int,
    candidates_by_kind: dict[str, list[dict[str, Any]]],
    selected: list[dict[str, Any]],
    elapsed_seconds: float,
) -> dict[str, Any]:
    summaries_by_kind = {
        kind: [uniform_candidate_summary(item) for item in candidates]
        for kind, candidates in candidates_by_kind.items()
    }
    candidate_count = sum(len(items) for items in summaries_by_kind.values())
    largest_candidate_rank_count = max(
        (
            item["rank_count"]
            for candidates in summaries_by_kind.values()
            for item in candidates
        ),
        default=0,
    )
    family_kind_counts = {
        kind: len(items) for kind, items in summaries_by_kind.items()
    }
    return {
        "schema_version": 1,
        "mode": "prefix-pruning-uniform-family-profile",
        "trusted_as_final_proof": False,
        "window": {
            "start_rank": window_lo,
            "end_rank": window_hi,
            "rank_count": window_hi - window_lo,
        },
        "bounds": {
            "min_root_ranks": min_root_ranks,
            "max_root_ranks": max_root_ranks,
            "max_roots": max_roots,
        },
        "candidate_count": candidate_count,
        "selected_count": len(selected),
        "selected_rank_count": sum(item["rank_count"] for item in selected),
        "has_multi_rank_candidate": any(
            item["rank_count"] > 1
            for candidates in summaries_by_kind.values()
            for item in candidates
        ),
        "largest_candidate_rank_count": largest_candidate_rank_count,
        "witness_modes": ["uniform"] if candidate_count else [],
        "family_kind_counts": family_kind_counts,
        "candidates_by_kind": summaries_by_kind,
        "selected": [uniform_candidate_summary(item) for item in selected],
        "elapsed_seconds": elapsed_seconds,
        "next_step": (
            "Add more prefix templates and rerun the full compression gate; "
            "this bounded profile is not final coverage."
        ),
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--emit", action="store_true")
    parser.add_argument("--emit-discovered", action="store_true")
    parser.add_argument("--profile-uniform-families", action="store_true")
    parser.add_argument("--emit-uniform-families", action="store_true")
    parser.add_argument(
        "--profile-window",
        nargs=2,
        type=int,
        metavar=("LO", "HI"),
        help="discover bad-direction prefix intervals in the bounded rank window",
    )
    parser.add_argument("--report", type=Path)
    parser.add_argument("--output-dir", type=Path, default=OUTPUT_DIR)
    parser.add_argument("--max-roots", type=int, default=DEFAULT_MAX_ROOTS)
    parser.add_argument("--max-root-ranks", type=int, default=DEFAULT_MAX_ROOT_RANKS)
    parser.add_argument("--min-root-ranks", type=int, default=DEFAULT_MIN_ROOT_RANKS)
    args = parser.parse_args()

    output_dir = args.output_dir
    if not output_dir.is_absolute():
        output_dir = REPO_ROOT / output_dir
    report_path = args.report
    if report_path is None:
        report_path = (
            DEFAULT_UNIFORM_PROFILE_REPORT
            if args.profile_uniform_families or args.emit_uniform_families
            else DEFAULT_PROFILE_REPORT
        )
    if not report_path.is_absolute():
        report_path = REPO_ROOT / report_path

    if args.emit_discovered and args.profile_window is None:
        parser.error("--emit-discovered requires --profile-window LO HI")
    if args.profile_uniform_families and args.profile_window is None:
        parser.error("--profile-uniform-families requires --profile-window LO HI")
    if args.emit_uniform_families and args.profile_window is None:
        parser.error("--emit-uniform-families requires --profile-window LO HI")
    if args.emit_discovered and args.emit_uniform_families:
        parser.error("--emit-discovered and --emit-uniform-families are separate modes")
    if not (
        args.emit
        or args.emit_discovered
        or args.profile_uniform_families
        or args.emit_uniform_families
        or args.profile_window is not None
    ):
        parser.error(
            "nothing to do: pass --emit, --profile-window, "
            "--emit-discovered, --profile-uniform-families, or "
            "--emit-uniform-families"
        )

    candidates: list[dict[str, Any]] = []
    selected: list[dict[str, Any]] = []
    profile: dict[str, Any] | None = None
    if args.profile_window is not None:
        window_lo, window_hi = args.profile_window
        started = time.monotonic()
        if args.profile_uniform_families or args.emit_uniform_families:
            candidates_by_kind = discover_uniform_family_intervals(
                window_lo,
                window_hi,
                min_root_ranks=args.min_root_ranks,
                max_root_ranks=args.max_root_ranks,
            )
            selected = select_uniform_family_intervals(
                candidates_by_kind, max_roots=args.max_roots
            )
            profile = uniform_profile_payload(
                window_lo=window_lo,
                window_hi=window_hi,
                min_root_ranks=args.min_root_ranks,
                max_root_ranks=args.max_root_ranks,
                max_roots=args.max_roots,
                candidates_by_kind=candidates_by_kind,
                selected=selected,
                elapsed_seconds=time.monotonic() - started,
            )
            print(
                "discovered "
                f"{profile['candidate_count']} uniform-family candidates; "
                f"selected {len(selected)}"
            )
        else:
            candidates = discover_bad_direction_intervals(
                window_lo,
                window_hi,
                min_root_ranks=args.min_root_ranks,
                max_root_ranks=args.max_root_ranks,
            )
            selected = select_discovered_intervals(
                candidates, max_roots=args.max_roots
            )
            profile = profile_payload(
                window_lo=window_lo,
                window_hi=window_hi,
                min_root_ranks=args.min_root_ranks,
                max_root_ranks=args.max_root_ranks,
                max_roots=args.max_roots,
                candidates=candidates,
                selected=selected,
                elapsed_seconds=time.monotonic() - started,
            )
            print(
                "discovered "
                f"{len(candidates)} candidate bad-direction intervals; "
                f"selected {len(selected)}"
            )
        write_text(report_path, json.dumps(profile, indent=2, sort_keys=True) + "\n")
        print(f"wrote {repo_path(report_path)}")

    roots: list[dict[str, Any]] = []
    if args.emit or args.emit_discovered:
        bad_balance_root = output_dir / "BadPairBalance102" / "VerifiedRoot.lean"
        write_text(bad_balance_root, verified_root())
        roots.append(
            interval_record(
                start_rank=102,
                end_rank=103,
                prefix_length=13,
                failure="badPairBalance",
                kind="badPairBalancePrefix",
                root=bad_balance_root,
                source="control",
            )
        )
        print(f"wrote {repo_path(bad_balance_root)}")

    selected_ranges = {
        (candidate["start_rank"], candidate["end_rank"])
        for candidate in selected
    }
    if (args.emit or args.emit_discovered) and (
        (BAD_DIRECTION_PREFIX_START, BAD_DIRECTION_PREFIX_END) not in selected_ranges
    ):
        bad_direction_root = output_dir / "BadDirection090_096" / "VerifiedRoot.lean"
        write_text(bad_direction_root, bad_direction_verified_root())
        roots.insert(
            0,
            interval_record(
                start_rank=BAD_DIRECTION_PREFIX_START,
                end_rank=BAD_DIRECTION_PREFIX_END,
                prefix_length=len(BAD_DIRECTION_PREFIX_IDS),
                failure="badDirectionSign",
                kind="badDirectionPrefix",
                root=bad_direction_root,
                witness_mode="completion-local",
                source="control",
            ),
        )
        print(f"wrote {repo_path(bad_direction_root)}")

    if args.emit_discovered:
        if not selected:
            raise SystemExit("no discovered intervals selected for emission")
        for candidate in selected:
            root = discovered_root_path(output_dir, candidate)
            write_text(root, discovered_verified_root(candidate))
            roots.append(
                interval_record(
                    start_rank=candidate["start_rank"],
                    end_rank=candidate["end_rank"],
                    prefix_length=candidate["prefix_length"],
                    failure=candidate["failure"],
                    kind="badDirectionPrefix",
                    root=root,
                    witness_mode=candidate["witness_mode"],
                    source="discovered",
                )
            )
            print(f"wrote {repo_path(root)}")

    if args.emit_uniform_families:
        if not selected:
            raise SystemExit("no uniform-family intervals selected for emission")
        for candidate in selected:
            root = uniform_root_path(output_dir, candidate)
            write_text(root, uniform_verified_root(candidate))
            roots.append(
                interval_record(
                    start_rank=candidate["start_rank"],
                    end_rank=candidate["end_rank"],
                    prefix_length=candidate["prefix_length"],
                    failure=candidate["failure"],
                    kind=f"{candidate['family_kind']}Prefix",
                    root=root,
                    witness_mode=candidate["witness_mode"],
                    source="uniform-family",
                )
            )
            print(f"wrote {repo_path(root)}")

    if roots:
        roots.sort(key=lambda item: (item["start_rank"], item["end_rank"], item["source"]))
        manifest = build_manifest(
            roots,
            profile=profile,
            mode=(
                "semantic-prefix-pruning-uniform-family-prototype"
                if args.emit_uniform_families
                else "semantic-prefix-pruning-prototype"
            ),
        )
        manifest_path = output_dir / "manifest.json"
        write_text(manifest_path, json.dumps(manifest, indent=2, sort_keys=True) + "\n")
        print(f"wrote {repo_path(manifest_path)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
