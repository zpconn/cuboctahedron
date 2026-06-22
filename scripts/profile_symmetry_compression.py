"""Profile D4-symmetric interval compression for generated cuboctahedron evidence.

This script is deliberately untrusted.  It emits no Lean code and proves
nothing.  Its purpose is to answer an engineering question before generation:
does D4 transport plus semantic family sharing plausibly reduce the generated
coverage API to a small number of Lean leaves?
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import sys
from collections import Counter
from dataclasses import dataclass, field
from fractions import Fraction
from functools import lru_cache
from itertools import combinations, permutations, product
from pathlib import Path
from typing import Any

from exact_profile import (
    EXPECTED_IDENTITY_WORDS,
    EXPECTED_PAIR_WORDS,
    EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
    FACE_MINUS,
    FACE_NORMALS,
    FACE_OFFSETS,
    FACE_ORDER,
    FACE_PLUS,
    IDENTITY,
    NORMALS,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    STARTED_SYMS,
    ZERO_VEC,
    counts_key,
    denom_pattern_key,
    dot,
    final_axis_dot,
    first_axis_zero_index,
    fixed_part,
    forced_sequence_from_axis,
    impact_denom,
    mat_key,
    mat_mul,
    mat_vec,
    multinomial_count,
    normalized_constraints_key,
    one_dimensional_fixed_axis,
    path_prefix_affs,
    prefix_matrices,
    remaining_counts_after,
    seq_key,
    sign_pattern_key,
    sym_word,
    sym_vec,
    translation_constraints,
    translation_vector,
    total_aff,
    vec,
    vec_add,
    vec_scale,
    transported_mask,
    vec_key,
)


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "scripts" / "generated" / "symmetry_compression_profile.json"
DEFAULT_PREFIX_KILL_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "prefix_kill_tree_profile.json"
)
DEFAULT_TRANSLATION_FARKAS_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_farkas_compression_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_compression_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_FAMILY_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_family_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_COMMON_IMPACT_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_common_impact_profile.json"
)
DEFAULT_TRANSLATION_SURVIVORS_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_survivors_profile.json"
)
DEFAULT_TRANSLATION_SURVIVOR_MASK_TREE_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_survivor_mask_tree_profile.json"
)
DEFAULT_TRANSLATION_STATE_DAG_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_state_dag_profile.json"
)
DEFAULT_NONIDENTITY_EMPTY_CONE_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "nonidentity_empty_cone_profile.json"
)


def default_nonidentity_terminal_algebra_output(rank_start: int, limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
        EXPECTED_PAIR_WORDS,
        rank_start + limit,
    )
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"nonidentity_terminal_algebra_profile_{rank_start:09d}_{rank_end:09d}.json"
    )


def default_terminal_residual_census_output(rank_start: int, limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
        EXPECTED_PAIR_WORDS, rank_start + limit
    )
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"terminal_residual_census_{rank_start:09d}_{rank_end:09d}.json"
    )


def default_d26_audit_output(rank_start: int, limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
        EXPECTED_PAIR_WORDS, rank_start + limit
    )
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"nonidentity_d26_audit_{rank_start:09d}_{rank_end:09d}.json"
    )


def default_nonidentity_state_cone_output(limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(EXPECTED_PAIR_WORDS, limit)
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"nonidentity_state_cone_profile_0_{rank_end:09d}.json"
    )


def default_translation_pseudoboolean_output(limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(EXPECTED_PAIR_WORDS, limit)
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"translation_pseudoboolean_profile_0_{rank_end:09d}.json"
    )


def default_translation_lifted_pb_search_output(limit: int | None) -> Path:
    rank_end = EXPECTED_PAIR_WORDS if limit is None else min(EXPECTED_PAIR_WORDS, limit)
    return (
        REPO_ROOT
        / "scripts"
        / "generated"
        / f"translation_lifted_pb_search_profile_0_{rank_end:09d}.json"
    )


MASKS_BY_BIT_VALUE: tuple[tuple[int, int], ...] = tuple(
    (
        sum(1 << mask for mask in range(64) if not (mask & (1 << bit))),
        sum(1 << mask for mask in range(64) if mask & (1 << bit)),
    )
    for bit in range(6)
)
ALL_MASK_BITS = (1 << 64) - 1
QUADRATIC_MONOMIALS: tuple[int, ...] = (0,) + tuple(1 << i for i in range(6)) + tuple(
    (1 << i) | (1 << j) for i in range(6) for j in range(i + 1, 6)
)


@dataclass(frozen=True)
class SignedVariableTransform:
    """A signed permutation of six sign variables.

    The convention is old variable ``s_i = sign_i * t_{perm[i]}``.
    ``new_mask_from_old`` maps a mask in old variables to the corresponding
    mask in transformed variables.
    """

    perm: tuple[int, ...]
    sign_bits: int
    new_mask_from_old: bytes


@dataclass(frozen=True)
class MaskCube:
    fixed_mask: int
    fixed_bits: int
    mask_bits: int
    size: int
    key: str


@lru_cache(maxsize=1)
def signed_variable_transforms() -> tuple[SignedVariableTransform, ...]:
    transforms: list[SignedVariableTransform] = []
    for perm in permutations(range(6)):
        for sign_bits in range(64):
            mapping: list[int] = []
            for old_mask in range(64):
                new_mask = 0
                for old_var in range(6):
                    sign = 1 if sign_bits & (1 << old_var) else -1
                    new_sign = sign * bit_sign(old_mask, old_var)
                    if new_sign > 0:
                        new_mask |= 1 << perm[old_var]
                mapping.append(new_mask)
            transforms.append(
                SignedVariableTransform(
                    perm=tuple(perm),
                    sign_bits=sign_bits,
                    new_mask_from_old=bytes(mapping),
                )
            )
    return tuple(transforms)


@lru_cache(maxsize=1)
def all_mask_cubes() -> tuple[MaskCube, ...]:
    cubes: list[MaskCube] = []
    for fixed_mask in range(64):
        sub = fixed_mask
        fixed_bits = sub
        while True:
            mask_bits = 0
            for mask in range(64):
                if mask & fixed_mask == fixed_bits:
                    mask_bits |= 1 << mask
            size = mask_bits.bit_count()
            cubes.append(
                MaskCube(
                    fixed_mask=fixed_mask,
                    fixed_bits=fixed_bits,
                    mask_bits=mask_bits,
                    size=size,
                    key=f"fixed={fixed_mask:02x}:bits={fixed_bits:02x}",
                )
            )
            if sub == 0:
                break
            sub = (sub - 1) & fixed_mask
            fixed_bits = sub
    cubes.sort(key=lambda cube: (-cube.size, cube.fixed_mask.bit_count(), cube.key))
    return tuple(cubes)


def stable_digest(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def word_key(word: tuple[str, ...]) -> str:
    return ",".join(word)


def pair_order_key(word: tuple[str, ...] | list[str]) -> tuple[int, ...]:
    return tuple(PAIR_IDS.index(pair_id) for pair_id in word)


def translation_choice_order_key(choice: tuple[tuple[str, ...], int]) -> tuple[tuple[int, ...], int]:
    word, mask = choice
    return pair_order_key(word), mask


def canonical_word_with_symmetry(word: tuple[str, ...]) -> tuple[tuple[str, ...], int]:
    best_word: tuple[str, ...] | None = None
    best_sym_id = 0
    best_key: tuple[int, ...] | None = None
    raw = list(word)
    for sym_id, sym in enumerate(STARTED_SYMS):
        candidate = tuple(sym_word(sym, raw))
        candidate_key = pair_order_key(candidate)
        if best_key is None or candidate_key < best_key:
            best_word = candidate
            best_sym_id = sym_id
            best_key = candidate_key
    if best_word is None:
        raise RuntimeError("empty started symmetry list")
    return best_word, best_sym_id


def canonical_prefix_with_symmetry(prefix: tuple[str, ...]) -> tuple[tuple[str, ...], int]:
    return canonical_word_with_symmetry(prefix)


def canonical_translation_with_symmetry(
    word: tuple[str, ...],
    mask: int,
) -> tuple[tuple[str, ...], int, int]:
    best_choice: tuple[tuple[str, ...], int] | None = None
    best_sym_id = 0
    best_key: tuple[tuple[int, ...], int] | None = None
    raw = list(word)
    for sym_id, sym in enumerate(STARTED_SYMS):
        transported_word, transported_choice = transported_mask(sym, raw, mask)
        candidate = tuple(transported_word), transported_choice
        candidate_key = translation_choice_order_key(candidate)
        if best_key is None or candidate_key < best_key:
            best_choice = candidate
            best_sym_id = sym_id
            best_key = candidate_key
    if best_choice is None:
        raise RuntimeError("empty started symmetry list")
    return best_choice[0], best_choice[1], best_sym_id


def fraction_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


FACE_BY_NORMAL: dict[tuple[int, int, int], str] = {
    tuple(normal): face for face, normal in FACE_NORMALS.items()
}


def normalize_fraction_tuple(values: tuple[Fraction, ...] | list[Fraction]) -> tuple[int, ...]:
    if not values:
        return ()
    lcm = 1
    for value in values:
        lcm = lcm * value.denominator // math.gcd(lcm, value.denominator)
    ints = [value.numerator * (lcm // value.denominator) for value in values]
    gcd = 0
    for value in ints:
        gcd = math.gcd(gcd, abs(value))
    if gcd == 0:
        return tuple(0 for _ in ints)
    ints = [value // gcd for value in ints]
    first_nonzero = next((value for value in ints if value != 0), 1)
    if first_nonzero < 0:
        ints = [-value for value in ints]
    return tuple(ints)


def normalized_fraction_tuple_key(values: tuple[Fraction, ...] | list[Fraction]) -> str:
    return ",".join(str(value) for value in normalize_fraction_tuple(values))


def sym_face(sym: dict[str, bool], face: str) -> str:
    return FACE_BY_NORMAL[sym_vec(sym, FACE_NORMALS[face])]


def canonical_face_tuple_key(faces: tuple[str, ...]) -> str:
    best: tuple[int, ...] | None = None
    best_faces: tuple[str, ...] | None = None
    for sym in STARTED_SYMS:
        candidate = tuple(sym_face(sym, face) for face in faces)
        order_key = tuple(FACE_ORDER.index(face) for face in candidate)
        if best is None or order_key < best:
            best = order_key
            best_faces = candidate
    if best_faces is None:
        raise RuntimeError("empty started symmetry list")
    return ",".join(best_faces)


def algebra_margin_key(value: Fraction) -> str:
    sign = "pos" if value > 0 else "zero" if value == 0 else "neg"
    return f"{sign}:{fraction_key(value)}"


def bit_sign(mask: int, bit: int) -> int:
    return 1 if mask & (1 << bit) else -1


def vec_cross_fraction(
    a: tuple[Fraction, Fraction, Fraction],
    b: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, Fraction, Fraction]:
    return (
        a[1] * b[2] - a[2] * b[1],
        a[2] * b[0] - a[0] * b[2],
        a[0] * b[1] - a[1] * b[0],
    )


def normalize_projective_vec(
    v: tuple[Fraction, Fraction, Fraction],
) -> tuple[int, int, int]:
    denominators = [entry.denominator for entry in v]
    lcm = 1
    for denominator in denominators:
        lcm = lcm * denominator // math.gcd(lcm, denominator)
    ints = [entry.numerator * (lcm // entry.denominator) for entry in v]
    gcd = 0
    for value in ints:
        gcd = math.gcd(gcd, abs(value))
    if gcd == 0:
        return (0, 0, 0)
    ints = [value // gcd for value in ints]
    first_nonzero = next((value for value in ints if value != 0), 1)
    if first_nonzero < 0:
        ints = [-value for value in ints]
    return tuple(ints)  # type: ignore[return-value]


def normalized_axis_key(axis: tuple[Fraction, Fraction, Fraction]) -> str:
    return ",".join(str(value) for value in normalize_projective_vec(axis))


def vec_fraction(values: tuple[int, int, int] | tuple[Fraction, Fraction, Fraction]):
    return tuple(Fraction(value) for value in values)


def vec_scale_fraction(scale: Fraction, v: tuple[Fraction, Fraction, Fraction]):
    return (scale * v[0], scale * v[1], scale * v[2])


def vec_sub_fraction(
    a: tuple[Fraction, Fraction, Fraction],
    b: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, Fraction, Fraction]:
    return (a[0] - b[0], a[1] - b[1], a[2] - b[2])


def aff_apply_fraction(
    aff: tuple,
    point: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, Fraction, Fraction]:
    matrix, offset = aff
    return vec_add(mat_vec(matrix, point), offset)


def reflect_vec_fraction(
    direction: tuple[Fraction, Fraction, Fraction],
    normal: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, Fraction, Fraction]:
    nn = dot(normal, normal)
    scale = Fraction(2) * dot(normal, direction) / nn
    return vec_sub_fraction(direction, vec_scale(scale, normal))


def solve_linear_system_4(
    rows: list[list[Fraction]],
) -> tuple[Fraction, Fraction, Fraction, Fraction] | None:
    """Solve a 4x4 augmented system exactly, returning ``None`` if singular."""

    if len(rows) != 4 or any(len(row) != 5 for row in rows):
        raise ValueError("expected a 4x5 augmented matrix")
    work = [list(row) for row in rows]
    for col in range(4):
        pivot = next((row for row in range(col, 4) if work[row][col] != 0), None)
        if pivot is None:
            return None
        if pivot != col:
            work[col], work[pivot] = work[pivot], work[col]
        div = work[col][col]
        work[col] = [entry / div for entry in work[col]]
        for row in range(4):
            if row == col:
                continue
            factor = work[row][col]
            if factor == 0:
                continue
            work[row] = [
                work[row][entry] - factor * work[col][entry]
                for entry in range(5)
            ]
    return tuple(work[row][4] for row in range(4))  # type: ignore[return-value]


def first_failed_interior_face(
    point: tuple[Fraction, Fraction, Fraction],
    hit_face: str,
) -> tuple[str, Fraction] | None:
    for face in FACE_ORDER:
        if face == hit_face:
            continue
        margin = FACE_OFFSETS[face] - dot(vec(FACE_NORMALS[face]), point)
        if margin <= 0:
            return face, margin
    return None


def next_exact_hit(
    point: tuple[Fraction, Fraction, Fraction],
    direction: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, list[str]]:
    candidates: list[tuple[Fraction, str]] = []
    for face in FACE_ORDER:
        normal = vec(FACE_NORMALS[face])
        den = dot(normal, direction)
        if den <= 0:
            continue
        time = (FACE_OFFSETS[face] - dot(normal, point)) / den
        if time > 0:
            candidates.append((time, face))
    if not candidates:
        return Fraction(0), []
    best = min(time for time, _face in candidates)
    return best, [face for time, face in candidates if time == best]


def forward_hit_time_for_face(
    point: tuple[Fraction, Fraction, Fraction],
    direction: tuple[Fraction, Fraction, Fraction],
    face: str,
) -> Fraction | None:
    normal = vec(FACE_NORMALS[face])
    den = dot(normal, direction)
    if den <= 0:
        return None
    time = (FACE_OFFSETS[face] - dot(normal, point)) / den
    if time <= 0:
        return None
    return time


def axis_solve_rows(
    seq: list[str],
    axis: tuple[Fraction, Fraction, Fraction],
) -> list[list[Fraction]]:
    aff = total_aff(seq)
    matrix, offset = aff
    rows: list[list[Fraction]] = []
    for row in range(3):
        rows.append([
            matrix[row][col] - (Fraction(1) if row == col else Fraction(0))
            for col in range(3)
        ] + [-axis[row], -offset[row]])
    rows.append([Fraction(1), Fraction(0), Fraction(0), Fraction(0), Fraction(1)])
    return rows


def normalized_axis_solve_shape_key(rows: list[list[Fraction]]) -> str:
    row_keys = [
        normalized_fraction_tuple_key(row)
        for row in rows
    ]
    return stable_digest("|".join(row_keys))[:16]


def terminal_axis_candidate_failure(
    seq: list[str],
    axis: tuple[Fraction, Fraction, Fraction],
) -> tuple[str, dict[str, Any], str]:
    """Classify the exact terminal candidate forced by a nonidentity axis.

    The return value is ``(failure_name, details, reusable_key)``.  This is a
    profiler-only diagnostic, not trusted proof evidence.
    """

    aff = total_aff(seq)
    matrix, offset = aff
    rows: list[list[Fraction]] = []
    for row in range(3):
        rows.append([
            matrix[row][col] - (Fraction(1) if row == col else Fraction(0))
            for col in range(3)
        ] + [-axis[row], -offset[row]])
    rows.append([Fraction(1), Fraction(0), Fraction(0), Fraction(0), Fraction(1)])
    solution = solve_linear_system_4(rows)
    if solution is None:
        key = f"axisSolveSingular|seq={seq_key(seq)}|axis={vec_key(axis)}"
        return "axis_solve_singular", {}, key

    point = (solution[0], solution[1], solution[2])
    start_bad = first_failed_interior_face(point, "xp")
    if start_bad is not None:
        bad_face, margin = start_bad
        key = (
            "axisMissesStartInterior"
            f"|badFace={bad_face}|margin={fraction_key(margin)}"
            f"|seq={seq_key(seq)}|axis={vec_key(axis)}"
        )
        return (
            "axis_misses_start_interior",
            {
                "bad_face": bad_face,
                "margin": fraction_key(margin),
                "p0": vec_key(point),
                "lambda": fraction_key(solution[3]),
            },
            key,
        )

    image = aff_apply_fraction(aff, point)
    direction = vec_sub_fraction(image, point)
    if direction == ZERO_VEC:
        key = f"axisZeroDirection|seq={seq_key(seq)}|axis={vec_key(axis)}"
        return (
            "axis_zero_direction",
            {"p0": vec_key(point), "lambda": fraction_key(solution[3])},
            key,
        )

    inward = dot(vec(FACE_NORMALS["xp"]), direction)
    if inward >= 0:
        key = (
            "axisDirectionNotInward"
            f"|inward={fraction_key(inward)}|seq={seq_key(seq)}|axis={vec_key(axis)}"
        )
        return (
            "axis_direction_not_inward",
            {
                "p0": vec_key(point),
                "w": vec_key(direction),
                "inward_dot": fraction_key(inward),
            },
            key,
        )

    current_point = point
    current_direction = direction
    expected = seq[1:] + [seq[0]]
    for step, expected_face in enumerate(expected):
        hit_time, hits = next_exact_hit(current_point, current_direction)
        if not hits:
            key = (
                f"noFutureHit|step={step}|expected={expected_face}"
                f"|seq={seq_key(seq)}|axis={vec_key(axis)}"
            )
            return (
                "no_future_hit",
                {
                    "step": step,
                    "expected": expected_face,
                    "p": vec_key(current_point),
                    "v": vec_key(current_direction),
                },
                key,
            )
        if len(hits) != 1:
            key = (
                f"hitTie|step={step}|expected={expected_face}"
                f"|actual={','.join(hits)}|seq={seq_key(seq)}|axis={vec_key(axis)}"
            )
            return (
                "hit_tie",
                {
                    "step": step,
                    "expected": expected_face,
                    "actual": hits,
                    "time": fraction_key(hit_time),
                },
                key,
            )
        hit = hits[0]
        if hit != expected_face:
            key = (
                f"firstHitMismatch|step={step}|expected={expected_face}|actual={hit}"
                f"|seq={seq_key(seq)}|axis={vec_key(axis)}"
            )
            return (
                "first_hit_mismatch",
                {
                    "step": step,
                    "expected": expected_face,
                    "actual": hit,
                    "time": fraction_key(hit_time),
                },
                key,
            )
        current_point = vec_add(current_point, vec_scale(hit_time, current_direction))
        hit_bad = first_failed_interior_face(current_point, hit)
        if hit_bad is not None:
            bad_face, margin = hit_bad
            key = (
                f"hitInteriorFailure|step={step}|hit={hit}|badFace={bad_face}"
                f"|margin={fraction_key(margin)}|seq={seq_key(seq)}|axis={vec_key(axis)}"
            )
            return (
                "hit_interior_failure",
                {
                    "step": step,
                    "hit": hit,
                    "bad_face": bad_face,
                    "margin": fraction_key(margin),
                    "point": vec_key(current_point),
                },
                key,
            )
        current_direction = reflect_vec_fraction(
            current_direction,
            vec(FACE_NORMALS[hit]),
        )

    if current_point != point or current_direction != direction:
        key = f"periodicClosureFailure|seq={seq_key(seq)}|axis={vec_key(axis)}"
        return (
            "periodic_closure_failure",
            {
                "p0": vec_key(point),
                "p14": vec_key(current_point),
                "w0": vec_key(direction),
                "w14": vec_key(current_direction),
            },
            key,
        )

    key = f"simulatesValidOrbit|seq={seq_key(seq)}|axis={vec_key(axis)}"
    return (
        "simulates_valid_orbit",
        {
            "p0": vec_key(point),
            "w": vec_key(direction),
            "lambda": fraction_key(solution[3]),
        },
        key,
    )


def terminal_axis_candidate_algebra_failure(
    seq: list[str],
    axis: tuple[Fraction, Fraction, Fraction],
) -> tuple[str, dict[str, Any], str]:
    """Classify terminal nonidentity failures by coarse algebraic witnesses.

    This profiler-only classifier deliberately avoids keys containing the full
    sequence, raw axis, or rank.  It measures whether terminal failures share
    small theorem-family shapes before any Lean evidence is designed.
    """

    aff = total_aff(seq)
    rows = axis_solve_rows(seq, axis)
    solve_shape = normalized_axis_solve_shape_key(rows)
    solution = solve_linear_system_4(rows)
    if solution is None:
        key = f"axisSolveSingular|solveShape={solve_shape}"
        return "axis_solve_singular", {"solve_shape": solve_shape}, key

    point = (solution[0], solution[1], solution[2])
    start_bad = first_failed_interior_face(point, "xp")
    if start_bad is not None:
        bad_face, margin = start_bad
        face_key = canonical_face_tuple_key((bad_face,))
        key = (
            "axisMissesStartInterior"
            f"|badFace={face_key}|margin={algebra_margin_key(margin)}"
        )
        return (
            "axis_misses_start_interior",
            {
                "bad_face": bad_face,
                "canonical_bad_face": face_key,
                "margin": fraction_key(margin),
                "p0": vec_key(point),
                "solve_shape": solve_shape,
            },
            key,
        )

    image = aff_apply_fraction(aff, point)
    direction = vec_sub_fraction(image, point)
    if direction == ZERO_VEC:
        p_key = normalized_fraction_tuple_key(list(point) + [solution[3]])
        key = f"axisZeroDirection|candidate={p_key}"
        return (
            "axis_zero_direction",
            {"p0": vec_key(point), "lambda": fraction_key(solution[3])},
            key,
        )

    inward = dot(vec(FACE_NORMALS["xp"]), direction)
    if inward >= 0:
        key = (
            "axisDirectionNotInward"
            f"|inward={algebra_margin_key(inward)}"
        )
        return (
            "axis_direction_not_inward",
            {
                "p0": vec_key(point),
                "w": vec_key(direction),
                "inward_dot": fraction_key(inward),
            },
            key,
        )

    current_point = point
    current_direction = direction
    expected = seq[1:] + [seq[0]]
    for step, expected_face in enumerate(expected):
        hit_time, hits = next_exact_hit(current_point, current_direction)
        if not hits:
            direction_key = normalized_fraction_tuple_key(current_direction)
            face_key = canonical_face_tuple_key((expected_face,))
            key = (
                f"noFutureHit|step={step}|expected={face_key}"
                f"|direction={direction_key}"
            )
            return (
                "no_future_hit",
                {
                    "step": step,
                    "expected": expected_face,
                    "p": vec_key(current_point),
                    "v": vec_key(current_direction),
                },
                key,
            )
        if len(hits) != 1:
            faces_key = canonical_face_tuple_key(tuple([expected_face] + sorted(hits)))
            key = (
                f"hitTie|step={step}|faces={faces_key}"
                f"|time={algebra_margin_key(hit_time)}"
            )
            return (
                "hit_tie",
                {
                    "step": step,
                    "expected": expected_face,
                    "actual": hits,
                    "time": fraction_key(hit_time),
                },
                key,
            )
        hit = hits[0]
        if hit != expected_face:
            expected_time = forward_hit_time_for_face(
                current_point,
                current_direction,
                expected_face,
            )
            if expected_time is None:
                witness = "expectedNotForward"
            else:
                witness = f"actualBeforeExpected:{algebra_margin_key(expected_time - hit_time)}"
            face_key = canonical_face_tuple_key((expected_face, hit))
            key = (
                f"firstHitMismatch|step={step}|faces={face_key}|{witness}"
            )
            return (
                "first_hit_mismatch",
                {
                    "step": step,
                    "expected": expected_face,
                    "actual": hit,
                    "time": fraction_key(hit_time),
                    "expected_time": (
                        None if expected_time is None else fraction_key(expected_time)
                    ),
                    "witness": witness,
                },
                key,
            )
        current_point = vec_add(current_point, vec_scale(hit_time, current_direction))
        hit_bad = first_failed_interior_face(current_point, hit)
        if hit_bad is not None:
            bad_face, margin = hit_bad
            face_key = canonical_face_tuple_key((hit, bad_face))
            key = (
                f"hitInteriorFailure|step={step}|faces={face_key}"
                f"|margin={algebra_margin_key(margin)}"
            )
            return (
                "hit_interior_failure",
                {
                    "step": step,
                    "hit": hit,
                    "bad_face": bad_face,
                    "margin": fraction_key(margin),
                    "point": vec_key(current_point),
                },
                key,
            )
        current_direction = reflect_vec_fraction(
            current_direction,
            vec(FACE_NORMALS[hit]),
        )

    if current_point != point or current_direction != direction:
        delta_p = vec_sub_fraction(current_point, point)
        delta_v = vec_sub_fraction(current_direction, direction)
        key = (
            "periodicClosureFailure"
            f"|dp={normalized_fraction_tuple_key(delta_p)}"
            f"|dv={normalized_fraction_tuple_key(delta_v)}"
        )
        return (
            "periodic_closure_failure",
            {
                "p0": vec_key(point),
                "p14": vec_key(current_point),
                "w0": vec_key(direction),
                "w14": vec_key(current_direction),
            },
            key,
        )

    return (
        "simulates_valid_orbit",
        {
            "p0": vec_key(point),
            "w": vec_key(direction),
            "lambda": fraction_key(solution[3]),
        },
        "simulatesValidOrbit",
    )


D26_DIRECTIONS: tuple[tuple[Fraction, Fraction, Fraction], ...] = tuple(
    vec_fraction(direction)
    for direction in (
        (1, 0, 0), (-1, 0, 0),
        (0, 1, 0), (0, -1, 0),
        (0, 0, 1), (0, 0, -1),
        *[
            (sx, sy, sz)
            for sx in (-1, 1)
            for sy in (-1, 1)
            for sz in (-1, 1)
        ],
        *[
            direction
            for zero_index in range(3)
            for signs in product((-1, 1), repeat=2)
            for direction in [tuple(
                0 if index == zero_index else signs[index if index < zero_index else index - 1]
                for index in range(3)
            )]
        ],
    )
)


def axis_is_parallel_to_d26(axis: tuple[Fraction, Fraction, Fraction]) -> bool:
    return any(
        vec_cross_fraction(axis, direction) == (0, 0, 0)
        for direction in D26_DIRECTIONS
    )


def weighted_vec_sum(
    weights: tuple[Fraction, ...],
    normals: tuple[tuple[Fraction, Fraction, Fraction], ...],
) -> tuple[Fraction, Fraction, Fraction]:
    return (
        sum(w * n[0] for w, n in zip(weights, normals)),
        sum(w * n[1] for w, n in zip(weights, normals)),
        sum(w * n[2] for w, n in zip(weights, normals)),
    )


def normalize_weight_vector(weights: tuple[Fraction, ...]) -> tuple[Fraction, ...]:
    if not weights:
        return weights
    denominators = [weight.denominator for weight in weights]
    lcm = 1
    for denominator in denominators:
        lcm = lcm * denominator // math.gcd(lcm, denominator)
    ints = [weight.numerator * (lcm // weight.denominator) for weight in weights]
    gcd = 0
    for value in ints:
        gcd = math.gcd(gcd, abs(value))
    if gcd == 0:
        return weights
    ints = [value // gcd for value in ints]
    first_nonzero = next((value for value in ints if value != 0), 1)
    if first_nonzero < 0:
        ints = [-value for value in ints]
    return tuple(Fraction(value) for value in ints)


def rref_nullspace(
    rows_in: list[list[Fraction]],
    n_cols: int,
) -> list[tuple[Fraction, ...]]:
    rows = [list(row) for row in rows_in]
    pivot_cols: list[int] = []
    row = 0
    for col in range(n_cols):
        pivot = None
        for candidate in range(row, len(rows)):
            if rows[candidate][col] != 0:
                pivot = candidate
                break
        if pivot is None:
            continue
        rows[row], rows[pivot] = rows[pivot], rows[row]
        div = rows[row][col]
        rows[row] = [entry / div for entry in rows[row]]
        for other in range(len(rows)):
            if other == row:
                continue
            factor = rows[other][col]
            if factor == 0:
                continue
            rows[other] = [
                rows[other][c] - factor * rows[row][c]
                for c in range(n_cols)
            ]
        pivot_cols.append(col)
        row += 1
        if row == len(rows):
            break

    free_cols = [col for col in range(n_cols) if col not in pivot_cols]
    basis: list[tuple[Fraction, ...]] = []
    for free in free_cols:
        vector = [Fraction(0) for _ in range(n_cols)]
        vector[free] = Fraction(1)
        for pivot_row, pivot_col in enumerate(pivot_cols):
            vector[pivot_col] = -rows[pivot_row][free]
        basis.append(tuple(vector))
    return basis


def orient_nonnegative(
    weights: tuple[Fraction, ...],
) -> tuple[Fraction, ...] | None:
    if all(weight >= 0 for weight in weights) and any(weight > 0 for weight in weights):
        return normalize_weight_vector(weights)
    flipped = tuple(-weight for weight in weights)
    if all(weight >= 0 for weight in flipped) and any(weight > 0 for weight in flipped):
        return normalize_weight_vector(flipped)
    return None


@lru_cache(maxsize=None)
def find_empty_cone_certificate(
    normals: tuple[tuple[Fraction, Fraction, Fraction], ...],
) -> dict[str, Any] | None:
    """Find a small exact nonnegative dependence among active normals.

    This is an untrusted profiler helper.  It only records candidate
    certificates; Lean soundness is supplied separately by
    `EmptyConePrefixCert`.
    """

    max_support = min(4, len(normals))
    for support_size in range(2, max_support + 1):
        for support in combinations(range(len(normals)), support_size):
            selected = tuple(normals[index] for index in support)
            rows = [
                [normal[coord] for normal in selected]
                for coord in range(3)
            ]
            basis = rref_nullspace(rows, support_size)
            candidates: list[tuple[Fraction, ...]] = []
            if len(basis) == 1:
                candidates.append(basis[0])
            elif len(basis) > 1:
                for coeffs in product(range(-3, 4), repeat=len(basis)):
                    if all(coeff == 0 for coeff in coeffs):
                        continue
                    combo = tuple(
                        sum(Fraction(coeffs[j]) * basis[j][i] for j in range(len(basis)))
                        for i in range(support_size)
                    )
                    candidates.append(combo)
            for candidate in candidates:
                oriented = orient_nonnegative(candidate)
                if oriented is None:
                    continue
                if weighted_vec_sum(oriented, selected) != (0, 0, 0):
                    continue
                return {
                    "support": support,
                    "weights": oriented,
                    "normals": selected,
                }
    return None


def empty_cone_certificate_key(cert: dict[str, Any]) -> str:
    support = ",".join(str(index) for index in cert["support"])
    weights = ",".join(fraction_key(weight) for weight in cert["weights"])
    normals = ";".join(vec_key(normal) for normal in cert["normals"])
    return f"support={support}|weights={weights}|normals={normals}"


@lru_cache(maxsize=None)
def legal_signed_prefixes(prefix: tuple[str, ...]) -> tuple[tuple[int, ...], ...]:
    """Enumerate omnihedral-compatible signs for a pair prefix.

    The start face is already x+, so an `x` occurrence in the pair word must be
    x-.  Each other pair may use each sign at most once.
    """

    seen: dict[str, set[int]] = {pair_id: set() for pair_id in PAIR_IDS}
    signs: list[int] = []
    out: list[tuple[int, ...]] = []

    def rec(index: int) -> None:
        if index == len(prefix):
            out.append(tuple(signs))
            return
        pair_id = prefix[index]
        choices = (-1,) if pair_id == "x" else (-1, 1)
        for sign in choices:
            if sign in seen[pair_id]:
                continue
            seen[pair_id].add(sign)
            signs.append(sign)
            rec(index + 1)
            signs.pop()
            seen[pair_id].remove(sign)

    rec(0)
    return tuple(out)


def active_normals_for_signed_prefix(
    prefix: tuple[str, ...],
    signs: tuple[int, ...],
    pref: list,
) -> tuple[tuple[Fraction, Fraction, Fraction], ...]:
    normals: list[tuple[Fraction, Fraction, Fraction]] = [
        (Fraction(-1), Fraction(0), Fraction(0))
    ]
    for index, (pair_id, sign) in enumerate(zip(prefix, signs)):
        signed_normal = vec_scale_fraction(Fraction(sign), vec_fraction(NORMALS[pair_id]))
        normals.append(mat_vec(pref[index], signed_normal))
    return tuple(normals)


def sign_used_bit(sign: int) -> int:
    return 1 if sign < 0 else 2


def legal_next_signs(pair_id: str, used_mask: int) -> tuple[int, ...]:
    if pair_id == "x":
        return () if used_mask & 1 else (-1,)
    out: list[int] = []
    if not (used_mask & 1):
        out.append(-1)
    if not (used_mask & 2):
        out.append(1)
    return tuple(out)


def signed_face_sequence(prefix: tuple[str, ...], signs: tuple[int, ...]) -> list[str]:
    seq = ["xp"]
    for pair_id, sign in zip(prefix, signs):
        seq.append(FACE_PLUS[pair_id] if sign > 0 else FACE_MINUS[pair_id])
    return seq


@lru_cache(maxsize=None)
def signed_completion_count(
    remaining_counts: tuple[int, ...],
    used_sign_masks: tuple[int, ...],
) -> int:
    if sum(remaining_counts) == 0:
        return 1
    total = 0
    for pair_index, pair_id in enumerate(PAIR_IDS):
        if remaining_counts[pair_index] <= 0:
            continue
        for sign in legal_next_signs(pair_id, used_sign_masks[pair_index]):
            next_remaining = list(remaining_counts)
            next_remaining[pair_index] -= 1
            next_used = list(used_sign_masks)
            next_used[pair_index] |= sign_used_bit(sign)
            total += signed_completion_count(tuple(next_remaining), tuple(next_used))
    return total


def signed_completion_count_from_state(
    remaining: dict[str, int],
    used_signs: dict[str, int],
) -> int:
    return signed_completion_count(
        tuple(remaining[pair_id] for pair_id in PAIR_IDS),
        tuple(used_signs[pair_id] for pair_id in PAIR_IDS),
    )


def orient_axis_for_signed_cone(
    normals: tuple[tuple[Fraction, Fraction, Fraction], ...],
    axis: tuple[Fraction, Fraction, Fraction],
) -> tuple[tuple[Fraction, Fraction, Fraction] | None, str, str]:
    dots = tuple(dot(normal, axis) for normal in normals)
    if all(value > 0 for value in dots):
        return axis, "axis_in_cone", ",".join("+" for _ in dots)
    if all(value < 0 for value in dots):
        return (-axis[0], -axis[1], -axis[2]), "axis_in_cone_after_flip", ",".join("-" for _ in dots)
    signature = ",".join("+" if value > 0 else "-" if value < 0 else "0" for value in dots)
    if any(value == 0 for value in dots):
        return None, "axis_on_cone_boundary", signature
    return None, "axis_not_in_cone", signature


def denominator_polynomial_key(values: list[Fraction]) -> tuple[str, int]:
    """Return an exact sign-polynomial key and max nonzero degree.

    The six mask bits are encoded as signs in ``{-1,+1}``.  The Walsh
    expansion is exact on the Boolean cube and is used only for profiling.
    """

    if len(values) != 64:
        raise ValueError(f"expected 64 mask values, got {len(values)}")
    coeffs = list(values)
    step = 1
    while step < 64:
        block = step * 2
        for start in range(0, 64, block):
            for offset in range(step):
                lo = coeffs[start + offset]
                hi = coeffs[start + offset + step]
                coeffs[start + offset] = lo + hi
                coeffs[start + offset + step] = hi - lo
        step = block
    terms: list[str] = []
    max_degree = 0
    for subset, total in enumerate(coeffs):
        coeff = total / 64
        if coeff == 0:
            continue
        degree = subset.bit_count()
        max_degree = max(max_degree, degree)
        terms.append(f"{subset}:{fraction_key(coeff)}")
    return ";".join(terms), max_degree


def denominator_polynomial_coeffs(values: list[Fraction]) -> dict[int, Fraction]:
    """Return exact Walsh coefficients for the six sign bits."""

    if len(values) != 64:
        raise ValueError(f"expected 64 mask values, got {len(values)}")
    coeffs = list(values)
    step = 1
    while step < 64:
        block = step * 2
        for start in range(0, 64, block):
            for offset in range(step):
                lo = coeffs[start + offset]
                hi = coeffs[start + offset + step]
                coeffs[start + offset] = lo + hi
                coeffs[start + offset + step] = hi - lo
        step = block
    return {
        subset: total / 64
        for subset, total in enumerate(coeffs)
        if total != 0
    }


def polynomial_degree(coeffs: dict[int, Fraction]) -> int:
    return max((subset.bit_count() for subset in coeffs), default=0)


def integer_normalized_polynomial_coeffs(
    coeffs: dict[int, Fraction],
) -> dict[int, int]:
    """Scale a sign polynomial by a positive rational to primitive integers."""

    if not coeffs:
        return {}
    lcm = 1
    for coeff in coeffs.values():
        lcm = lcm * coeff.denominator // math.gcd(lcm, coeff.denominator)
    integers = {subset: coeff.numerator * (lcm // coeff.denominator)
        for subset, coeff in coeffs.items()}
    content = 0
    for value in integers.values():
        content = math.gcd(content, abs(value))
    if content == 0:
        return {}
    return {subset: value // content for subset, value in integers.items()
        if value != 0}


def integer_polynomial_key(coeffs: dict[int, int]) -> str:
    if not coeffs:
        return "0"
    return ";".join(
        f"{subset}:{coeffs[subset]}"
        for subset in sorted(coeffs)
    )


QuadraticRow = tuple[tuple[int, int], ...]


def quadratic_row_from_coeffs(coeffs: dict[int, int]) -> QuadraticRow:
    return tuple((subset, coeffs[subset]) for subset in sorted(coeffs))


def quadratic_row_key(row: QuadraticRow) -> str:
    if not row:
        return "0"
    return ";".join(f"{subset}:{coeff}" for subset, coeff in row)


def quadratic_problem_key(rows: tuple[QuadraticRow, ...]) -> str:
    return "|".join(quadratic_row_key(row) for row in rows)


def signed_subset_image(
    subset: int,
    transform: SignedVariableTransform,
) -> tuple[int, int]:
    image = 0
    sign = 1
    for old_var in range(6):
        if subset & (1 << old_var):
            image |= 1 << transform.perm[old_var]
            if not (transform.sign_bits & (1 << old_var)):
                sign = -sign
    return image, sign


def transform_quadratic_row(
    row: QuadraticRow,
    transform: SignedVariableTransform,
) -> QuadraticRow:
    out: dict[int, int] = {}
    for subset, coeff in row:
        image, sign = signed_subset_image(subset, transform)
        out[image] = out.get(image, 0) + sign * coeff
    return tuple((subset, coeff) for subset, coeff in sorted(out.items()) if coeff != 0)


def transform_quadratic_problem(
    rows: tuple[QuadraticRow, ...],
    transform: SignedVariableTransform,
) -> tuple[QuadraticRow, ...]:
    return tuple(sorted(transform_quadratic_row(row, transform) for row in rows))


def eval_quadratic_row(row: QuadraticRow, mask: int) -> int:
    total = 0
    for subset, coeff in row:
        sign = 1
        for bit in range(6):
            if subset & (1 << bit):
                sign *= bit_sign(mask, bit)
        total += coeff * sign
    return total


def transform_mask_bits(mask_bits: int, transform: SignedVariableTransform) -> int:
    out = 0
    current = mask_bits
    while current:
        low = current & -current
        old_mask = low.bit_length() - 1
        out |= 1 << transform.new_mask_from_old[old_mask]
        current ^= low
    return out


@lru_cache(maxsize=20_000)
def canonical_survivor_bits_and_transforms(
    survivor_bits: int,
) -> tuple[int, tuple[int, ...]]:
    best_bits: int | None = None
    best_transform_indices: list[int] = []
    for index, transform in enumerate(signed_variable_transforms()):
        transformed = transform_mask_bits(survivor_bits, transform)
        if best_bits is None or transformed < best_bits:
            best_bits = transformed
            best_transform_indices = [index]
        elif transformed == best_bits:
            best_transform_indices.append(index)
    if best_bits is None:
        raise RuntimeError("no signed variable transforms")
    return best_bits, tuple(best_transform_indices)


@lru_cache(maxsize=20_000)
def canonical_lifted_problem_cached(
    rows: tuple[QuadraticRow, ...],
    survivor_bits: int,
) -> tuple[str, int, int, int]:
    canonical_bits, transform_indices = canonical_survivor_bits_and_transforms(
        survivor_bits
    )
    transforms = signed_variable_transforms()
    best_key: str | None = None
    best_index = transform_indices[0]
    for index in transform_indices:
        transformed_rows = transform_quadratic_problem(rows, transforms[index])
        key = quadratic_problem_key(transformed_rows)
        if best_key is None or key < best_key:
            best_key = key
            best_index = index
    if best_key is None:
        raise RuntimeError("no canonical lifted problem")
    return best_key, canonical_bits, best_index, len(transform_indices)


def canonical_lifted_problem(
    rows: tuple[QuadraticRow, ...],
    survivor_bits: int,
) -> tuple[tuple[QuadraticRow, ...], str, int, SignedVariableTransform, int]:
    key, canonical_bits, transform_index, tie_count = canonical_lifted_problem_cached(
        rows,
        survivor_bits,
    )
    transform = signed_variable_transforms()[transform_index]
    canonical_rows = transform_quadratic_problem(rows, transform)
    return canonical_rows, key, canonical_bits, transform, tie_count


def first_failed_denominator(rows: tuple[QuadraticRow, ...], mask: int) -> int:
    for index, row in enumerate(rows):
        if eval_quadratic_row(row, mask) <= 0:
            return index + 1
    raise AssertionError("mask has no failed denominator")


def greedy_bad_cube_cover(
    *,
    canonical_rows: tuple[QuadraticRow, ...],
    survivor_bits: int,
) -> tuple[list[dict[str, Any]], int, int]:
    remaining = ALL_MASK_BITS ^ survivor_bits
    leaves: list[dict[str, Any]] = []
    point_fallbacks = 0
    max_cube_size = 0
    for cube in all_mask_cubes():
        if cube.mask_bits and cube.mask_bits & remaining == cube.mask_bits:
            failure_key = ",".join(
                f"{mask}:{first_failed_denominator(canonical_rows, mask)}"
                for mask in TranslationSurvivorMaskTreeProfiler.iter_mask_bits(
                    cube.mask_bits
                )
            )
            leaves.append({
                "cube_key": cube.key,
                "mask_bits": cube.mask_bits,
                "size": cube.size,
                "failure_key": failure_key,
            })
            if cube.size == 1:
                point_fallbacks += 1
            max_cube_size = max(max_cube_size, cube.size)
            remaining &= ~cube.mask_bits
            if remaining == 0:
                break
    if remaining != 0:
        raise AssertionError("greedy cube cover did not cover all bad masks")
    return leaves, point_fallbacks, max_cube_size


LinearIneq = tuple[Fraction, ...]


def linear_ineq_from_coeffs(coeffs: dict[int, Fraction]) -> LinearIneq | None:
    """Return c + sum a_i s_i >= 0 if the polynomial is linear."""

    if polynomial_degree(coeffs) > 1:
        return None
    return tuple(coeffs.get(0, Fraction(0)) if index == 0
        else coeffs.get(1 << (index - 1), Fraction(0))
        for index in range(7))


def _without_index(values: LinearIneq, index: int) -> LinearIneq:
    return values[:index] + values[index + 1:]


def fourier_motzkin_feasibility(
    constraints: list[LinearIneq],
    *,
    max_constraints: int,
) -> str:
    """Exact feasibility for non-strict linear inequalities, with a safety cap.

    Each constraint has shape ``c + a_0 s_0 + ... + a_n s_n >= 0``.
    The result is ``infeasible``, ``feasible``, or ``unknown`` if the exact
    elimination would exceed ``max_constraints``.
    """

    if not constraints:
        return "feasible"
    variable_count = len(constraints[0]) - 1
    current = list(constraints)
    for _variable in range(variable_count):
        zeros: list[LinearIneq] = []
        lowers: list[LinearIneq] = []
        uppers: list[LinearIneq] = []
        for constraint in current:
            coeff = constraint[1]
            rest = _without_index(constraint, 1)
            if coeff > 0:
                lowers.append(rest + (coeff,))
            elif coeff < 0:
                uppers.append(rest + (coeff,))
            else:
                zeros.append(rest)
        projected_count = len(zeros) + len(lowers) * len(uppers)
        if projected_count > max_constraints:
            return "unknown"
        next_constraints: list[LinearIneq] = list(zeros)
        for lower in lowers:
            lower_coeff = lower[-1]
            lower_rest = lower[:-1]
            for upper in uppers:
                upper_coeff = upper[-1]
                upper_rest = upper[:-1]
                # (-upper_coeff) * lower + lower_coeff * upper cancels x.
                next_constraints.append(tuple(
                    (-upper_coeff) * lower_rest[i] + lower_coeff * upper_rest[i]
                    for i in range(len(lower_rest))
                ))
        current = next_constraints
    if any(constraint[0] < 0 for constraint in current):
        return "infeasible"
    return "feasible"


def sign_cube_bound_constraints() -> list[LinearIneq]:
    constraints: list[LinearIneq] = []
    for bit in range(6):
        upper = [Fraction(1)] + [Fraction(0)] * 6
        upper[bit + 1] = Fraction(-1)
        lower = [Fraction(1)] + [Fraction(0)] * 6
        lower[bit + 1] = Fraction(1)
        constraints.append(tuple(upper))
        constraints.append(tuple(lower))
    return constraints


@dataclass
class DistinctTracker:
    """Memory-safe distinct-key tracker.

    It tracks exact distinct counts up to ``cap``.  After overflow, it keeps a
    lower bound and samples, which is enough to reject an over-large strategy
    without risking a giant set.
    """

    cap: int
    sample_limit: int
    _digests: set[str] = field(default_factory=set)
    overflowed: bool = False
    overflow_at: int | None = None
    samples: list[str] = field(default_factory=list)

    def add(self, key: str) -> None:
        digest = stable_digest(key)
        if digest in self._digests:
            return
        if len(self.samples) < self.sample_limit:
            self.samples.append(key)
        if self.overflowed:
            return
        if len(self._digests) >= self.cap:
            self.overflowed = True
            self.overflow_at = self.cap + 1
            return
        self._digests.add(digest)

    @property
    def exact_count(self) -> int | None:
        if self.overflowed:
            return None
        return len(self._digests)

    @property
    def lower_bound(self) -> int:
        return self.overflow_at if self.overflowed and self.overflow_at is not None else len(self._digests)

    def payload(self) -> dict[str, Any]:
        return {
            "exact": not self.overflowed,
            "count": self.exact_count,
            "lower_bound": self.lower_bound,
            "cap": self.cap,
            "samples": self.samples,
        }


@dataclass
class TileAccumulator:
    target_hi: int
    sample_limit: int
    expected_next: int = 0
    covered_width: int = 0
    coalesced_tiles: int = 0
    max_tile_width: int = 0
    last_key: str | None = None
    last_kind: str | None = None
    last_lo: int | None = None
    last_hi: int | None = None
    gaps: list[dict[str, int]] = field(default_factory=list)
    overlaps: list[dict[str, int]] = field(default_factory=list)
    samples: list[dict[str, Any]] = field(default_factory=list)

    def add(self, lo: int, hi: int, kind: str, key: str) -> None:
        if hi <= lo:
            return
        if lo < self.expected_next:
            if len(self.overlaps) < self.sample_limit:
                self.overlaps.append({"lo": lo, "hi": hi, "expected_next": self.expected_next})
        elif lo > self.expected_next:
            if len(self.gaps) < self.sample_limit:
                self.gaps.append({"lo": self.expected_next, "hi": lo})
        self.covered_width += hi - lo
        self.expected_next = max(self.expected_next, hi)
        if self.last_key == key and self.last_kind == kind and self.last_hi == lo:
            self.last_hi = hi
            self.max_tile_width = max(self.max_tile_width, self.last_hi - (self.last_lo or lo))
            return
        self.coalesced_tiles += 1
        self.last_key = key
        self.last_kind = kind
        self.last_lo = lo
        self.last_hi = hi
        self.max_tile_width = max(self.max_tile_width, hi - lo)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "lo": lo,
                "hi": hi,
                "kind": kind,
                "key_digest": stable_digest(key),
                "key_sample": key[:240],
            })

    def payload(self) -> dict[str, Any]:
        return {
            "covered_width": self.covered_width,
            "expected_next": self.expected_next,
            "target_hi": self.target_hi,
            "has_gaps": bool(self.gaps) or self.expected_next < self.target_hi,
            "has_overlaps": bool(self.overlaps),
            "gaps": self.gaps,
            "overlaps": self.overlaps,
            "coalesced_semantic_tiles": self.coalesced_tiles,
            "planned_public_interval_nodes": max(0, self.coalesced_tiles - 1),
            "max_tile_width": self.max_tile_width,
            "samples": self.samples,
        }


@dataclass(frozen=True)
class PrefixKillClassification:
    rank: int
    identity: bool
    kind: str
    signature: str
    family_key: str


@dataclass(frozen=True)
class PrefixKillCandidate:
    kind: str
    signature: str
    family_key: str
    rank_count: int
    nonidentity_count: int
    identity_count: int
    sample_rank: int


class PrefixKillTreeProfiler:
    """Dry-run profiler for non-identity prefix pruning.

    The profile is intentionally proof-agnostic: it does not emit Lean.  It
    answers whether exact prefix-level non-identity eliminators are likely to
    cover rank intervals with a small number of Lean-visible leaves.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        max_prefix_probe_ranks: int,
        max_residual_leaf_width: int,
        min_residual_depth: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.max_prefix_probe_ranks = max_prefix_probe_ranks
        self.max_residual_leaf_width = max_residual_leaf_width
        self.min_residual_depth = min_residual_depth
        self.use_d4_transport = use_d4_transport
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.max_depth = 0
        self.probed_prefixes = 0
        self.skipped_large_probes = 0
        self.pair_words_profiled = 0
        self.identity_vacuous_ranks = 0
        self.nonidentity_ranks = 0
        self.prefix_kill_counts: Counter[str] = Counter()
        self.prefix_kill_rank_counts: Counter[str] = Counter()
        self.residual_fallback_leaves = 0
        self.residual_fallback_width = 0
        self.max_prefix_kill_width = 0
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.prefix_family_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.tiles = TileAccumulator(self.target_hi, sample_limit)
        self.samples: list[dict[str, Any]] = []

    def full_family_key(
        self,
        prefix: tuple[str, ...],
        kind: str,
        signature: str,
    ) -> str:
        if not self.use_d4_transport:
            return f"{kind}|prefix={word_key(prefix)}|{signature}"
        canonical, _sym_id = canonical_prefix_with_symmetry(prefix)
        return (
            f"{kind}|canonicalPrefix={word_key(canonical)}"
            f"|{signature}"
        )

    def classify_word(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
        prefix: tuple[str, ...],
    ) -> PrefixKillClassification:
        matrix = mat_mul(pref[-1], RPAIR["x"])
        matrix_text = mat_key(matrix)
        if matrix == IDENTITY:
            return PrefixKillClassification(
                rank=rank,
                identity=True,
                kind="identityOnly",
                signature="identity",
                family_key=self.full_family_key(prefix, "identityOnly", "identity"),
            )
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            signature = f"M={matrix_text}|fixedPart={mat_key(fixed_part(matrix))}"
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformNoFixedAxis",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformNoFixedAxis", signature),
            )

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        if final_dot == 0:
            signature = f"M={matrix_text}|axis={vec_key(axis)}|zeroAt=final"
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="residualLeaf",
                signature=signature,
                family_key=self.full_family_key(prefix, "residualLeaf", signature),
            )

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is not None:
            signature = (
                f"M={matrix_text}|axis={vec_key(axis)}|zeroAt={zero_index}"
                f"|remaining={counts_key(remaining_counts_after(list(word), zero_index))}"
            )
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformBadDirection",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformBadDirection", signature),
            )

        forced_seq = forced_sequence_from_axis(list(word), axis, pref)
        if len(set(forced_seq)) != 14:
            sign_pattern = sign_pattern_key(list(word), axis, pref)
            signature = (
                f"M={matrix_text}|axis={vec_key(axis)}"
                f"|signs={sign_pattern}|seq={seq_key(forced_seq)}"
            )
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformBadBalance",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformBadBalance", signature),
            )

        signature = (
            f"M={matrix_text}|axis={vec_key(axis)}"
            f"|signs={sign_pattern_key(list(word), axis, pref)}"
            f"|seq={seq_key(forced_seq)}"
        )
        return PrefixKillClassification(
            rank=rank,
            identity=False,
            kind="residualLeaf",
            signature=signature,
            family_key=self.full_family_key(prefix, "residualLeaf", signature),
        )

    def enumerate_prefix_classifications(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        pref: list,
    ) -> list[PrefixKillClassification]:
        out: list[PrefixKillClassification] = []
        local_prefix = list(prefix)
        local_remaining = dict(remaining)
        local_pref = list(pref)

        def rec(child_rank_lo: int) -> None:
            block_width = multinomial_count(local_remaining)
            child_rank_hi = child_rank_lo + block_width
            if child_rank_lo >= rank_hi or child_rank_hi <= rank_lo:
                return
            if len(local_prefix) == 13:
                if rank_lo <= child_rank_lo < rank_hi:
                    out.append(
                        self.classify_word(
                            child_rank_lo,
                            tuple(local_prefix),
                            list(local_pref),
                            tuple(prefix),
                        )
                    )
                return
            next_lo = child_rank_lo
            for pair_id in PAIR_IDS:
                if local_remaining[pair_id] <= 0:
                    continue
                local_remaining[pair_id] -= 1
                child_width = multinomial_count(local_remaining)
                local_prefix.append(pair_id)
                local_pref.append(mat_mul(local_pref[-1], RPAIR[pair_id]))
                if next_lo < rank_hi and next_lo + child_width > rank_lo:
                    rec(next_lo)
                local_pref.pop()
                local_prefix.pop()
                local_remaining[pair_id] += 1
                next_lo += child_width
                if next_lo >= rank_hi:
                    break

        rec(rank_lo)
        return out

    def summarize_candidate(
        self,
        classifications: list[PrefixKillClassification],
    ) -> PrefixKillCandidate | None:
        if not classifications:
            return None
        identity_count = sum(1 for item in classifications if item.identity)
        nonidentity = [item for item in classifications if not item.identity]
        if not nonidentity:
            first = classifications[0]
            return PrefixKillCandidate(
                kind="identityOnly",
                signature="identity",
                family_key=first.family_key,
                rank_count=len(classifications),
                nonidentity_count=0,
                identity_count=identity_count,
                sample_rank=first.rank,
            )
        kinds = {item.kind for item in nonidentity}
        signatures = {item.signature for item in nonidentity}
        if len(kinds) != 1 or len(signatures) != 1:
            return None
        kind = nonidentity[0].kind
        if kind not in {
            "uniformBadDirection",
            "uniformNoFixedAxis",
            "uniformBadBalance",
        }:
            return None
        family_keys = {item.family_key for item in nonidentity}
        if len(family_keys) != 1:
            return None
        return PrefixKillCandidate(
            kind=kind,
            signature=nonidentity[0].signature,
            family_key=nonidentity[0].family_key,
            rank_count=len(classifications),
            nonidentity_count=len(nonidentity),
            identity_count=identity_count,
            sample_rank=nonidentity[0].rank,
        )

    def record_classifications(
        self,
        classifications: list[PrefixKillClassification],
    ) -> None:
        for item in classifications:
            self.pair_words_profiled += 1
            if item.identity:
                self.identity_vacuous_ranks += 1
            else:
                self.nonidentity_ranks += 1

    def record_tile(
        self,
        *,
        lo: int,
        hi: int,
        depth: int,
        candidate: PrefixKillCandidate,
        source: str,
    ) -> None:
        self.tiles.add(lo, hi, candidate.kind, candidate.family_key)
        if candidate.kind != "identityOnly":
            self.heavy_families.add(candidate.family_key)
            self.prefix_family_shapes.add(candidate.family_key)
        self.prefix_kill_counts[candidate.kind] += 1
        self.prefix_kill_rank_counts[candidate.kind] += hi - lo
        if source == "residual":
            self.residual_fallback_leaves += 1
            self.residual_fallback_width += hi - lo
        else:
            self.max_prefix_kill_width = max(self.max_prefix_kill_width, hi - lo)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "lo": lo,
                "hi": hi,
                "depth": depth,
                "kind": candidate.kind,
                "source": source,
                "rank_count": hi - lo,
                "identity_count": candidate.identity_count,
                "nonidentity_count": candidate.nonidentity_count,
                "sample_rank": candidate.sample_rank,
                "family_key_digest": stable_digest(candidate.family_key),
                "family_key_sample": candidate.family_key[:240],
            })

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            clipped_hi = min(rank_hi, self.target_hi)
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            self.max_depth = max(self.max_depth, depth)

            full_interval_inside_target = rank_hi <= self.target_hi
            if full_interval_inside_target:
                if block_width <= self.max_prefix_probe_ranks:
                    self.probed_prefixes += 1
                    classifications = self.enumerate_prefix_classifications(
                        rank_lo=rank_lo,
                        rank_hi=rank_hi,
                        prefix=prefix,
                        remaining=remaining,
                        pref=pref,
                    )
                    candidate = self.summarize_candidate(classifications)
                    if candidate is not None:
                        self.record_classifications(classifications)
                        self.record_tile(
                            lo=rank_lo,
                            hi=rank_hi,
                            depth=depth,
                            candidate=candidate,
                            source="prefix",
                        )
                        return
                    if (
                        block_width <= self.max_residual_leaf_width
                        and depth >= self.min_residual_depth
                    ):
                        self.record_classifications(classifications)
                        signature = (
                            f"prefix={word_key(tuple(prefix))}"
                            f"|width={block_width}|mixedResidual"
                        )
                        residual = PrefixKillCandidate(
                            kind="residualLeaf",
                            signature=signature,
                            family_key=self.full_family_key(
                                tuple(prefix), "residualLeaf", signature
                            ),
                            rank_count=block_width,
                            nonidentity_count=sum(
                                1 for item in classifications if not item.identity
                            ),
                            identity_count=sum(
                                1 for item in classifications if item.identity
                            ),
                            sample_rank=classifications[0].rank,
                        )
                        self.record_tile(
                            lo=rank_lo,
                            hi=rank_hi,
                            depth=depth,
                            candidate=residual,
                            source="residual",
                        )
                        return
                else:
                    self.skipped_large_probes += 1

            if len(prefix) == 13:
                classifications = self.enumerate_prefix_classifications(
                    rank_lo=rank_lo,
                    rank_hi=clipped_hi,
                    prefix=prefix,
                    remaining=remaining,
                    pref=pref,
                )
                self.record_classifications(classifications)
                candidate = self.summarize_candidate(classifications)
                if candidate is None:
                    item = classifications[0]
                    candidate = PrefixKillCandidate(
                        kind=item.kind,
                        signature=item.signature,
                        family_key=item.family_key,
                        rank_count=1,
                        nonidentity_count=0 if item.identity else 1,
                        identity_count=1 if item.identity else 0,
                        sample_rank=item.rank,
                    )
                self.record_tile(
                    lo=rank_lo,
                    hi=clipped_hi,
                    depth=depth,
                    candidate=candidate,
                    source="leaf",
                )
                return

            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        heavy_exact = self.heavy_families.exact_count
        heavy_lower = self.heavy_families.lower_bound
        residual_ratio = (
            self.residual_fallback_width / self.target_hi
            if self.target_hi > 0 else 0
        )
        return {
            "schema_version": 1,
            "mode": "prefix-kill-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "nonidentity",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "max_prefix_probe_ranks": self.max_prefix_probe_ranks,
                "max_residual_leaf_width": self.max_residual_leaf_width,
                "min_residual_depth": self.min_residual_depth,
                "residual_fallback_rank_ratio_limit": 0.10,
            },
            "actual_counts": {
                "pair_words_profiled": self.pair_words_profiled,
                "identity_vacuous_ranks": self.identity_vacuous_ranks,
                "nonidentity_ranks": self.nonidentity_ranks,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "probed_prefixes": self.probed_prefixes,
                "skipped_large_probes": self.skipped_large_probes,
                "max_prefix_kill_width": self.max_prefix_kill_width,
            },
            "templates": {
                "counts": dict(sorted(self.prefix_kill_counts.items())),
                "rank_counts": dict(sorted(self.prefix_kill_rank_counts.items())),
                "residual_fallback_leaves": self.residual_fallback_leaves,
                "residual_fallback_width": self.residual_fallback_width,
                "residual_fallback_rank_ratio": residual_ratio,
                "samples": self.samples,
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": heavy_exact,
                "planned_lean_heavy_leaves_lower_bound": heavy_lower,
                "planned_lean_heavy_leaves": heavy_exact
                if heavy_exact is not None
                else f">{heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
                "prefix_family_shapes": self.prefix_family_shapes.payload(),
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


@dataclass(frozen=True)
class EmptyConePrefixCandidate:
    kind: str
    family_key: str
    signed_variant_count: int
    certificate_count: int


class EmptyConePrefixProfiler:
    """Dry-run profiler for exact empty-cone prefix pruning.

    A pair-prefix is killed only when every omnihedral-compatible signed
    face-prefix over it has an exact nonnegative dependence among its active
    unfolded normals.  This keeps the profiler conservative: unsigned
    pair-prefixes do not pretend to know which opposite face is used.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        max_empty_cone_depth: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.max_empty_cone_depth = max_empty_cone_depth
        self.use_d4_transport = use_d4_transport
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.max_depth = 0
        self.empty_cone_prefixes = 0
        self.empty_cone_rank_width = 0
        self.max_empty_cone_width = 0
        self.residual_leaves = 0
        self.residual_width = 0
        self.max_signed_variants = 0
        self.max_certificates_per_prefix = 0
        self.signed_variant_histogram: Counter[int] = Counter()
        self.certificate_support_histogram: Counter[int] = Counter()
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.empty_cone_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.tiles = TileAccumulator(self.target_hi, sample_limit)
        self.samples: list[dict[str, Any]] = []

    def full_family_key(
        self,
        prefix: tuple[str, ...],
        cert_keys: list[str],
    ) -> str:
        if self.use_d4_transport:
            canonical, _sym_id = canonical_prefix_with_symmetry(prefix)
            prefix_key = f"canonicalPrefix={word_key(canonical)}"
        else:
            prefix_key = f"prefix={word_key(prefix)}"
        digest = stable_digest("\n".join(cert_keys))
        return f"emptyCone|{prefix_key}|variants={len(cert_keys)}|certDigest={digest}"

    def classify_prefix(
        self,
        prefix: tuple[str, ...],
        pref: list,
    ) -> EmptyConePrefixCandidate | None:
        signed_prefixes = legal_signed_prefixes(prefix)
        if not signed_prefixes:
            return None
        self.max_signed_variants = max(self.max_signed_variants, len(signed_prefixes))
        self.signed_variant_histogram[len(signed_prefixes)] += 1
        cert_keys: list[str] = []
        support_sizes: list[int] = []
        for signs in signed_prefixes:
            normals = active_normals_for_signed_prefix(prefix, signs, pref)
            cert = find_empty_cone_certificate(normals)
            if cert is None:
                return None
            cert_keys.append(
                "signs="
                + ",".join("+" if sign > 0 else "-" for sign in signs)
                + "|"
                + empty_cone_certificate_key(cert)
            )
            support_sizes.append(len(cert["support"]))
        cert_keys.sort()
        for support_size in support_sizes:
            self.certificate_support_histogram[support_size] += 1
        self.max_certificates_per_prefix = max(
            self.max_certificates_per_prefix, len(cert_keys)
        )
        family_key = self.full_family_key(prefix, cert_keys)
        return EmptyConePrefixCandidate(
            kind="emptyCone",
            family_key=family_key,
            signed_variant_count=len(signed_prefixes),
            certificate_count=len(cert_keys),
        )

    def record_tile(
        self,
        *,
        lo: int,
        hi: int,
        depth: int,
        candidate: EmptyConePrefixCandidate,
        source: str,
        prefix: tuple[str, ...],
    ) -> None:
        self.tiles.add(lo, hi, candidate.kind, candidate.family_key)
        self.heavy_families.add(candidate.family_key)
        if candidate.kind == "emptyCone":
            self.empty_cone_families.add(candidate.family_key)
            self.empty_cone_prefixes += 1
            self.empty_cone_rank_width += hi - lo
            self.max_empty_cone_width = max(self.max_empty_cone_width, hi - lo)
        else:
            self.residual_leaves += 1
            self.residual_width += hi - lo
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "lo": lo,
                "hi": hi,
                "depth": depth,
                "kind": candidate.kind,
                "source": source,
                "rank_count": hi - lo,
                "prefix": list(prefix),
                "signed_variant_count": candidate.signed_variant_count,
                "certificate_count": candidate.certificate_count,
                "family_key_digest": stable_digest(candidate.family_key),
                "family_key_sample": candidate.family_key[:240],
            })

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def record_residual(rank_lo: int, clipped_hi: int, depth: int) -> None:
            residual = EmptyConePrefixCandidate(
                kind="residualLeaf",
                family_key=(
                    "residualLeaf|prefix="
                    + word_key(tuple(prefix))
                    + f"|width={clipped_hi - rank_lo}"
                ),
                signed_variant_count=0,
                certificate_count=0,
            )
            self.record_tile(
                lo=rank_lo,
                hi=clipped_hi,
                depth=depth,
                candidate=residual,
                source="leaf" if depth == 13 else "depthCap",
                prefix=tuple(prefix),
            )

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            clipped_hi = min(rank_hi, self.target_hi)
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            self.max_depth = max(self.max_depth, depth)

            if rank_hi <= self.target_hi and depth > 0:
                candidate = self.classify_prefix(tuple(prefix), list(pref))
                if candidate is not None:
                    self.record_tile(
                        lo=rank_lo,
                        hi=rank_hi,
                        depth=depth,
                        candidate=candidate,
                        source="prefix",
                        prefix=tuple(prefix),
                    )
                    return

            if depth >= self.max_empty_cone_depth:
                record_residual(rank_lo, clipped_hi, depth)
                return

            if len(prefix) == 13:
                record_residual(rank_lo, clipped_hi, depth)
                return

            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        residual_ratio = (
            self.residual_width / self.target_hi
            if self.target_hi > 0 else 0
        )
        heavy_exact = self.heavy_families.exact_count
        heavy_lower = self.heavy_families.lower_bound
        return {
            "schema_version": 1,
            "mode": "nonidentity-empty-cone-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "nonidentity",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "empty_cone_support_limit": 4,
                "max_empty_cone_depth": self.max_empty_cone_depth,
                "legal_signed_prefixes": "omnihedral-compatible signs only",
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "empty_cone_prefixes": self.empty_cone_prefixes,
                "empty_cone_rank_width": self.empty_cone_rank_width,
                "max_empty_cone_width": self.max_empty_cone_width,
                "max_signed_variants": self.max_signed_variants,
                "max_certificates_per_prefix": self.max_certificates_per_prefix,
                "signed_variant_histogram": dict(sorted(self.signed_variant_histogram.items())),
                "certificate_support_histogram": dict(sorted(self.certificate_support_histogram.items())),
            },
            "templates": {
                "residual_fallback_leaves": self.residual_leaves,
                "residual_fallback_width": self.residual_width,
                "residual_fallback_rank_ratio": residual_ratio,
                "samples": self.samples,
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": heavy_exact,
                "planned_lean_heavy_leaves_lower_bound": heavy_lower,
                "planned_lean_heavy_leaves": heavy_exact
                if heavy_exact is not None
                else f">{heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
                "empty_cone_families": self.empty_cone_families.payload(),
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


class NonIdentityStateConeProfiler:
    """Dry-run profiler for signed-state nonidentity cone pruning.

    Unlike `EmptyConePrefixProfiler`, this tracks the actual signed face prefix
    instead of requiring every legal signing of an unsigned pair prefix to be
    killed at once.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        max_state_cone_depth: int,
        max_state_cone_states: int,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.max_state_cone_depth = max_state_cone_depth
        self.max_state_cone_states = max_state_cone_states
        self.truncated = False
        self.truncation_reason: str | None = None
        self.signed_states_visited = 0
        self.signed_states_by_depth: Counter[int] = Counter()
        self.empty_cone_states = 0
        self.empty_cone_signed_completion_width = 0
        self.max_empty_cone_signed_completion_width = 0
        self.identity_signed_terminals = 0
        self.nonidentity_signed_terminals = 0
        self.no_fixed_axis = 0
        self.axis_cone_failures = 0
        self.axis_cone_failure_counts: Counter[str] = Counter()
        self.terminal_failure_counts: Counter[str] = Counter()
        self.empty_cone_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.axis_cone_obstruction_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.terminal_obstruction_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.terminal_sequences = DistinctTracker(max_distinct_tracked, sample_limit)
        self.terminal_axes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.samples: dict[str, list[dict[str, Any]]] = {
            "empty_cone": [],
            "axis_cone": [],
            "terminal": [],
        }

    def add_sample(self, bucket: str, sample: dict[str, Any]) -> None:
        if len(self.samples[bucket]) < self.sample_limit:
            self.samples[bucket].append(sample)

    def empty_cone_key(
        self,
        prefix: tuple[str, ...],
        signs: tuple[int, ...],
        cert: dict[str, Any],
    ) -> str:
        sign_key = ",".join("+" if sign > 0 else "-" for sign in signs)
        return (
            f"signedPrefix={word_key(prefix)}|signs={sign_key}|"
            + empty_cone_certificate_key(cert)
        )

    def record_empty_cone(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: tuple[str, ...],
        signs: tuple[int, ...],
        remaining: dict[str, int],
        used_signs: dict[str, int],
        cert: dict[str, Any],
    ) -> None:
        completion_width = signed_completion_count_from_state(remaining, used_signs)
        self.empty_cone_states += 1
        self.empty_cone_signed_completion_width += completion_width
        self.max_empty_cone_signed_completion_width = max(
            self.max_empty_cone_signed_completion_width,
            completion_width,
        )
        key = self.empty_cone_key(prefix, signs, cert)
        self.empty_cone_shapes.add(key)
        self.add_sample("empty_cone", {
            "rank_lo": rank_lo,
            "rank_hi": rank_hi,
            "depth": len(prefix),
            "prefix": list(prefix),
            "signs": ["+" if sign > 0 else "-" for sign in signs],
            "signed_completion_width": completion_width,
            "certificate": empty_cone_certificate_key(cert),
        })

    def classify_terminal(
        self,
        *,
        rank: int,
        prefix: tuple[str, ...],
        signs: tuple[int, ...],
        pref: list,
        active_normals: tuple[tuple[Fraction, Fraction, Fraction], ...],
    ) -> None:
        matrix = mat_mul(pref[-1], RPAIR["x"])
        seq = signed_face_sequence(prefix, signs)
        if matrix == IDENTITY:
            self.identity_signed_terminals += 1
            return

        self.nonidentity_signed_terminals += 1
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            self.no_fixed_axis += 1
            key = f"noFixedAxis|linear={mat_key(matrix)}"
            self.terminal_obstruction_shapes.add(key)
            self.terminal_failure_counts["no_fixed_axis"] += 1
            self.add_sample("terminal", {
                "rank": rank,
                "word": word_key(prefix),
                "signs": ["+" if sign > 0 else "-" for sign in signs],
                "failure": "no_fixed_axis",
                "linear": mat_key(matrix),
            })
            return

        oriented_axis, cone_status, dot_signature = orient_axis_for_signed_cone(
            active_normals,
            axis,
        )
        if oriented_axis is None:
            self.axis_cone_failures += 1
            self.axis_cone_failure_counts[cone_status] += 1
            key = (
                f"{cone_status}|linear={mat_key(matrix)}|axis={vec_key(axis)}"
                f"|dots={dot_signature}"
            )
            self.axis_cone_obstruction_shapes.add(key)
            self.terminal_obstruction_shapes.add(key)
            self.terminal_failure_counts[cone_status] += 1
            self.add_sample("axis_cone", {
                "rank": rank,
                "word": word_key(prefix),
                "signs": ["+" if sign > 0 else "-" for sign in signs],
                "axis": vec_key(axis),
                "failure": cone_status,
                "dot_signature": dot_signature,
            })
            return

        self.terminal_axes.add(normalized_axis_key(oriented_axis))
        self.terminal_sequences.add(seq_key(seq))
        failure, details, key = terminal_axis_candidate_failure(seq, oriented_axis)
        self.terminal_failure_counts[failure] += 1
        self.terminal_obstruction_shapes.add(key)
        sample = {
            "rank": rank,
            "word": word_key(prefix),
            "signs": ["+" if sign > 0 else "-" for sign in signs],
            "axis": vec_key(oriented_axis),
            "seq": seq,
            "failure": failure,
        }
        sample.update(details)
        self.add_sample("terminal", sample)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        used_signs = {pair_id: 0 for pair_id in PAIR_IDS}
        prefix: list[str] = []
        signs: list[int] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            if self.truncated:
                return
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            depth = len(prefix)
            if self.signed_states_visited >= self.max_state_cone_states:
                self.truncated = True
                self.truncation_reason = (
                    "signed state cap reached before completing the requested window"
                )
                return
            self.signed_states_visited += 1
            self.signed_states_by_depth[depth] += 1
            if (
                self.progress_interval
                and self.signed_states_visited % self.progress_interval == 0
            ):
                print(
                    f"visited {self.signed_states_visited:,} signed states",
                    file=sys.stderr,
                )

            full_interval_inside_target = rank_hi <= self.target_hi
            active_normals = active_normals_for_signed_prefix(
                tuple(prefix),
                tuple(signs),
                list(pref),
            )
            if (
                full_interval_inside_target
                and depth > 0
                and depth <= self.max_state_cone_depth
            ):
                cert = find_empty_cone_certificate(active_normals)
                if cert is not None:
                    self.record_empty_cone(
                        rank_lo=rank_lo,
                        rank_hi=rank_hi,
                        prefix=tuple(prefix),
                        signs=tuple(signs),
                        remaining=remaining,
                        used_signs=used_signs,
                        cert=cert,
                    )
                    return

            if depth == 13:
                if rank_lo < self.target_hi:
                    self.classify_terminal(
                        rank=rank_lo,
                        prefix=tuple(prefix),
                        signs=tuple(signs),
                        pref=list(pref),
                        active_normals=active_normals,
                    )
                return

            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                child_remaining = dict(remaining)
                child_remaining[pair_id] -= 1
                child_width = multinomial_count(child_remaining)
                child_hi = child_lo + child_width
                if child_lo < self.target_hi:
                    for sign in legal_next_signs(pair_id, used_signs[pair_id]):
                        remaining[pair_id] -= 1
                        used_signs[pair_id] |= sign_used_bit(sign)
                        prefix.append(pair_id)
                        signs.append(sign)
                        pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                        rec(child_lo)
                        pref.pop()
                        signs.pop()
                        prefix.pop()
                        used_signs[pair_id] &= ~sign_used_bit(sign)
                        remaining[pair_id] += 1
                child_lo = child_hi
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        empty_exact = self.empty_cone_shapes.exact_count
        terminal_exact = self.terminal_obstruction_shapes.exact_count
        if empty_exact is None or terminal_exact is None:
            planned_exact = None
            planned_lower = max(
                self.empty_cone_shapes.lower_bound,
                self.terminal_obstruction_shapes.lower_bound,
            )
        else:
            planned_exact = empty_exact + terminal_exact
            planned_lower = (
                self.empty_cone_shapes.lower_bound
                + self.terminal_obstruction_shapes.lower_bound
            )
        accepted = (
            not self.truncated
            and planned_exact is not None
            and planned_exact <= self.max_lean_leaves
        )
        within_warning = (
            not self.truncated
            and planned_exact is not None
            and planned_exact <= self.warn_lean_leaves
        )
        terminal_total = self.identity_signed_terminals + self.nonidentity_signed_terminals
        terminal_ratio = (
            self.nonidentity_signed_terminals / terminal_total
            if terminal_total else 0
        )
        return {
            "schema_version": 1,
            "mode": "nonidentity-state-cone-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not self.truncated,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "nonidentity",
                "state_model": "signed pair-prefix cone with terminal nonidentity axis check",
                "empty_cone_support_limit": 4,
                "max_state_cone_depth": self.max_state_cone_depth,
                "max_state_cone_states": self.max_state_cone_states,
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "emits_lean_evidence": False,
            },
            "truncation": {
                "truncated": self.truncated,
                "reason": self.truncation_reason,
            },
            "signed_states": {
                "visited": self.signed_states_visited,
                "by_depth": dict(sorted(self.signed_states_by_depth.items())),
                "empty_cone_states": self.empty_cone_states,
                "empty_cone_signed_completion_width":
                    self.empty_cone_signed_completion_width,
                "max_empty_cone_signed_completion_width":
                    self.max_empty_cone_signed_completion_width,
                "unique_empty_cone_shapes": self.empty_cone_shapes.payload(),
            },
            "terminals": {
                "identity_signed_terminals": self.identity_signed_terminals,
                "nonidentity_signed_terminals": self.nonidentity_signed_terminals,
                "nonidentity_terminal_ratio": terminal_ratio,
                "no_fixed_axis": self.no_fixed_axis,
                "axis_cone_failures": self.axis_cone_failures,
                "axis_cone_failure_counts": dict(
                    sorted(self.axis_cone_failure_counts.items())
                ),
                "terminal_failure_counts": dict(
                    sorted(self.terminal_failure_counts.items())
                ),
                "unique_axis_cone_obstruction_shapes":
                    self.axis_cone_obstruction_shapes.payload(),
                "unique_terminal_obstruction_shapes":
                    self.terminal_obstruction_shapes.payload(),
                "unique_terminal_sequences": self.terminal_sequences.payload(),
                "unique_terminal_axes": self.terminal_axes.payload(),
            },
            "samples": self.samples,
            "decision": {
                "status": "profile",
                "accepted_for_phase_6l_3a": accepted,
                "within_warning_gate": within_warning,
                "planned_lean_heavy_leaves_exact": planned_exact,
                "planned_lean_heavy_leaves_lower_bound": planned_lower,
                "terminal_fallback_dominates": (
                    self.nonidentity_signed_terminals > self.empty_cone_states
                ),
                "notes": [
                    "This mode emits no Lean evidence.",
                    "It tracks signed states directly instead of unsigned rank-prefixes.",
                    "Identity-linear signed terminals remain translation-branch work.",
                    "If terminal obstruction shapes remain above the gate, reject this backend before emission.",
                ],
            },
        }


class D26AxisAuditProfiler:
    """Exact audit for the speculative D26 non-identity axis invariant."""

    def __init__(
        self,
        *,
        rank_start: int,
        limit: int | None,
        sample_limit: int,
        progress_interval: int,
        max_distinct_tracked: int,
    ) -> None:
        self.rank_start = rank_start
        self.rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
            EXPECTED_PAIR_WORDS, rank_start + limit
        )
        self.limit = None if limit is None else self.rank_end - rank_start
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.no_fixed_axis = 0
        self.fixed_axis = 0
        self.final_axis_zero = 0
        self.forced_zero_denominator = 0
        self.bad_pair_balance = 0
        self.forced_balance_survivors = 0
        self.d26_stage_counts: dict[str, Counter[str]] = {
            "fixed_axis": Counter(),
            "final_nonzero": Counter(),
            "no_forced_zero": Counter(),
            "forced_balance": Counter(),
        }
        self.distinct_axes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.distinct_non_d26_axes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.distinct_survivor_axes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.non_d26_samples: dict[str, list[dict[str, Any]]] = {
            "fixed_axis": [],
            "final_nonzero": [],
            "no_forced_zero": [],
            "forced_balance": [],
        }
        self.d26_direction_keys = sorted(
            {normalized_axis_key(direction) for direction in D26_DIRECTIONS}
        )

    def record_stage(
        self,
        stage: str,
        *,
        is_d26: bool,
        rank: int,
        word: tuple[str, ...],
        axis: tuple[Fraction, Fraction, Fraction],
        extra: dict[str, Any] | None = None,
    ) -> None:
        label = "d26" if is_d26 else "non_d26"
        self.d26_stage_counts[stage][label] += 1
        axis_key = normalized_axis_key(axis)
        self.distinct_axes.add(axis_key)
        if stage == "forced_balance":
            self.distinct_survivor_axes.add(axis_key)
        if not is_d26:
            self.distinct_non_d26_axes.add(axis_key)
            samples = self.non_d26_samples[stage]
            if len(samples) < self.sample_limit:
                payload = {
                    "rank": rank,
                    "word": list(word),
                    "axis": vec_key(axis),
                    "normalized_axis": axis_key,
                }
                if extra is not None:
                    payload.update(extra)
                samples.append(payload)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(
                f"D26 audit scanned {self.pair_words_scanned:,} pair words",
                file=sys.stderr,
            )
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.identity_words += 1
            return
        self.nonidentity_words += 1
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            self.no_fixed_axis += 1
            return
        self.fixed_axis += 1
        is_d26 = axis_is_parallel_to_d26(axis)
        self.record_stage(
            "fixed_axis",
            is_d26=is_d26,
            rank=rank,
            word=word,
            axis=axis,
        )

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        if final_dot == 0:
            self.final_axis_zero += 1
            return
        is_d26 = axis_is_parallel_to_d26(axis)
        self.record_stage(
            "final_nonzero",
            is_d26=is_d26,
            rank=rank,
            word=word,
            axis=axis,
            extra={"final_axis_dot": fraction_key(final_dot)},
        )

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is not None:
            self.forced_zero_denominator += 1
            return
        self.record_stage(
            "no_forced_zero",
            is_d26=is_d26,
            rank=rank,
            word=word,
            axis=axis,
        )

        forced_seq = forced_sequence_from_axis(list(word), axis, pref)
        if len(set(forced_seq)) != 14:
            self.bad_pair_balance += 1
            return
        self.forced_balance_survivors += 1
        self.record_stage(
            "forced_balance",
            is_d26=is_d26,
            rank=rank,
            word=word,
            axis=axis,
            extra={"forced_seq": forced_seq},
        )

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_hi <= self.rank_start or rank_lo >= self.rank_end:
                return
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            if len(prefix) == 13:
                if self.rank_start <= rank_lo < self.rank_end:
                    self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                child_hi = child_lo + child_width
                if child_hi > self.rank_start and child_lo < self.rank_end:
                    prefix.append(pair_id)
                    pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                    rec(child_lo)
                    pref.pop()
                    prefix.pop()
                remaining[pair_id] += 1
                child_lo = child_hi
                if child_lo >= self.rank_end:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        non_d26_forced_balance = self.d26_stage_counts["forced_balance"]["non_d26"]
        if non_d26_forced_balance > 0:
            status = "reject"
            notes = [
                "non-D26 axes survive the forced-sign balance gate in this window",
                "do not promote D26 to proof evidence as stated",
            ]
        elif self.forced_balance_survivors == 0:
            status = "inconclusive"
            notes = [
                "no forced-balance survivors in this window",
                "sample cannot support or refute the D26 survivor invariant",
            ]
        else:
            status = "promising"
            notes = [
                "all forced-balance survivors in this window are D26-parallel",
                "formal proof work is still required before using D26 as evidence",
            ]
        return {
            "schema_version": 1,
            "mode": "nonidentity-d26-audit",
            "trusted_as_proof": False,
            "elapsed_seconds": elapsed_seconds,
            "rank_window": {
                "start": self.rank_start,
                "end": self.rank_end,
                "width": self.rank_end - self.rank_start,
            },
            "options": {
                "d26_direction_count": len(D26_DIRECTIONS),
                "d26_projective_direction_count": len(self.d26_direction_keys),
                "d26_projective_directions": self.d26_direction_keys,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
            },
            "counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "no_fixed_axis": self.no_fixed_axis,
                "fixed_axis": self.fixed_axis,
                "final_axis_zero": self.final_axis_zero,
                "forced_zero_denominator": self.forced_zero_denominator,
                "bad_pair_balance": self.bad_pair_balance,
                "forced_balance_survivors": self.forced_balance_survivors,
            },
            "d26_stage_counts": {
                stage: dict(counter)
                for stage, counter in self.d26_stage_counts.items()
            },
            "axis_families": {
                "distinct_axes": self.distinct_axes.payload(),
                "distinct_non_d26_axes": self.distinct_non_d26_axes.payload(),
                "distinct_forced_balance_axes": self.distinct_survivor_axes.payload(),
            },
            "non_d26_samples": self.non_d26_samples,
            "decision": {
                "status": status,
                "notes": notes,
            },
        }


class TerminalResidualCensusProfiler:
    """Range-aware census for terminal residual obstruction shapes.

    This is a diagnostic bridge after the prefix/D26/empty-cone attempts failed
    to meet the leaf gate.  It asks whether the remaining depth-13 obligations
    share a small number of exact terminal shapes before we design another Lean
    family backend.
    """

    def __init__(
        self,
        *,
        rank_start: int,
        limit: int | None,
        sample_limit: int,
        progress_interval: int,
        max_distinct_tracked: int,
        use_d4_transport: bool,
    ) -> None:
        self.rank_start = rank_start
        self.rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
            EXPECTED_PAIR_WORDS, rank_start + limit
        )
        self.limit = None if limit is None else self.rank_end - rank_start
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.use_d4_transport = use_d4_transport

        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words = 0

        self.no_fixed_axis = 0
        self.final_axis_zero = 0
        self.forced_zero_denominator = 0
        self.bad_pair_balance = 0
        self.forced_balance_survivors = 0
        self.nonidentity_terminal_counts: Counter[str] = Counter()
        self.nonidentity_obstruction_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.nonidentity_terminal_candidate_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.nonidentity_sequences = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_axes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_samples: dict[str, list[dict[str, Any]]] = {}

        self.translation_sign_assignments = 0
        self.good_direction_masks = 0
        self.denominator_nonpositive_masks = 0
        self.zero_vector_masks = 0
        self.survivor_mask_histogram: Counter[int] = Counter()
        self.denominator_degree_histogram: Counter[int] = Counter()
        self.denominator_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_bitsets = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_shape_maps = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.translation_samples: list[dict[str, Any]] = []
        self.shape_cache: dict[tuple[str, str], str] = {}

    def canonical_translation_choice(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[tuple[str, ...], int, int]:
        if self.use_d4_transport:
            return canonical_translation_with_symmetry(word, mask)
        return word, mask, 0

    @staticmethod
    def denominator_values_for_choice(
        word: tuple[str, ...],
        mask: int,
        pref: list | None = None,
    ) -> tuple[tuple[Fraction, ...], tuple[Fraction, Fraction, Fraction], list[str]]:
        b, seq = translation_vector(list(word), mask, pref)
        prefixes = path_prefix_affs(seq)
        denoms = tuple(impact_denom(seq, b, impact, prefixes) for impact in range(1, 14))
        return denoms, b, seq

    def survivor_shape_digest(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> str:
        _denoms, b, seq = self.denominator_values_for_choice(word, mask)
        cache_key = (seq_key(seq), vec_key(b))
        if cache_key not in self.shape_cache:
            self.shape_cache[cache_key] = stable_digest(
                normalized_constraints_key(translation_constraints(seq, b))
            )
        return self.shape_cache[cache_key]

    def add_nonidentity_sample(
        self,
        failure: str,
        sample: dict[str, Any],
    ) -> None:
        bucket = self.nonidentity_samples.setdefault(failure, [])
        if len(bucket) < self.sample_limit:
            bucket.append(sample)

    def classify_nonidentity_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
        matrix,
    ) -> None:
        self.nonidentity_words += 1
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            self.no_fixed_axis += 1
            key = f"noFixedAxis|linear={mat_key(matrix)}"
            self.nonidentity_obstruction_shapes.add(key)
            self.add_nonidentity_sample(
                "no_fixed_axis",
                {"rank": rank, "word": word_key(word), "linear": mat_key(matrix)},
            )
            return

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        self.nonidentity_axes.add(normalized_axis_key(axis))
        if final_dot == 0:
            self.final_axis_zero += 1
            key = (
                f"badDirectionSign|zeroAt=final|linear={mat_key(matrix)}"
                f"|axis={vec_key(axis)}"
            )
            self.nonidentity_obstruction_shapes.add(key)
            self.add_nonidentity_sample(
                "final_axis_zero",
                {"rank": rank, "word": word_key(word), "axis": vec_key(axis)},
            )
            return

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is not None:
            self.forced_zero_denominator += 1
            key = (
                f"badDirectionSign|zeroAt={zero_index}|linear={mat_key(matrix)}"
                f"|axis={vec_key(axis)}"
            )
            self.nonidentity_obstruction_shapes.add(key)
            self.add_nonidentity_sample(
                "forced_zero_denominator",
                {
                    "rank": rank,
                    "word": word_key(word),
                    "axis": vec_key(axis),
                    "zero_at": zero_index,
                },
            )
            return

        forced_seq = forced_sequence_from_axis(list(word), axis, pref)
        sign_pattern = sign_pattern_key(list(word), axis, pref)
        self.nonidentity_sequences.add(seq_key(forced_seq))
        if len(set(forced_seq)) != 14:
            self.bad_pair_balance += 1
            key = (
                f"badPairBalance|forcedSigns={sign_pattern}"
                f"|forcedSeq={seq_key(forced_seq)}"
            )
            self.nonidentity_obstruction_shapes.add(key)
            self.add_nonidentity_sample(
                "bad_pair_balance",
                {
                    "rank": rank,
                    "word": word_key(word),
                    "axis": vec_key(axis),
                    "forced_seq": forced_seq,
                    "forced_signs": sign_pattern,
                },
            )
            return

        self.forced_balance_survivors += 1
        failure, details, key = terminal_axis_candidate_failure(forced_seq, axis)
        self.nonidentity_terminal_counts[failure] += 1
        self.nonidentity_obstruction_shapes.add(key)
        self.nonidentity_terminal_candidate_shapes.add(key)
        sample = {
            "rank": rank,
            "word": word_key(word),
            "axis": vec_key(axis),
            "normalized_axis": normalized_axis_key(axis),
            "forced_seq": forced_seq,
            "failure": failure,
        }
        sample.update(details)
        self.add_nonidentity_sample(failure, sample)

    def classify_translation_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
    ) -> None:
        self.identity_words += 1
        impact_values: list[list[Fraction]] = [[] for _ in range(13)]
        survivor_bits = 0
        survivor_shapes: list[tuple[int, str]] = []
        survivor_shape_by_mask: dict[int, str] = {}
        max_degree = 0

        for mask in range(64):
            self.translation_sign_assignments += 1
            denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_bits |= 1 << mask
                self.good_direction_masks += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word,
                    mask,
                )
                shape_digest = self.survivor_shape_digest(
                    canonical_word,
                    canonical_mask,
                )
                survivor_shapes.append((mask, shape_digest))
                survivor_shape_by_mask[mask] = shape_digest
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                if len(self.translation_samples) < self.sample_limit:
                    self.translation_samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1

        for values in impact_values:
            _key, degree = denominator_polynomial_key(values)
            max_degree = max(max_degree, degree)
            self.denominator_degree_histogram[degree] += 1
        impact_keys: list[str] = []
        for impact, values in enumerate(impact_values):
            key, _degree = denominator_polynomial_key(values)
            impact_keys.append(f"{impact + 1}:{key}")
        signature_key = "|".join(impact_keys)
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        self.survivor_mask_histogram[len(survivor_shapes)] += 1
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        self.survivor_shape_maps.add(
            f"sig={stable_digest(signature_key)}|survivors={survivor_bits}|{shape_map_key}"
        )

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(
                f"terminal census scanned {self.pair_words_scanned:,} pair words",
                file=sys.stderr,
            )
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.classify_translation_leaf(rank, word, pref)
        else:
            self.classify_nonidentity_leaf(rank, word, pref, matrix)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_hi <= self.rank_start or rank_lo >= self.rank_end:
                return
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            if len(prefix) == 13:
                if self.rank_start <= rank_lo < self.rank_end:
                    self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                child_hi = child_lo + child_width
                if child_hi > self.rank_start and child_lo < self.rank_end:
                    prefix.append(pair_id)
                    pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                    rec(child_lo)
                    pref.pop()
                    prefix.pop()
                remaining[pair_id] += 1
                child_lo = child_hi
                if child_lo >= self.rank_end:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        return {
            "schema_version": 1,
            "mode": "terminal-residual-census",
            "trusted_as_proof": False,
            "elapsed_seconds": elapsed_seconds,
            "rank_window": {
                "start": self.rank_start,
                "end": self.rank_end,
                "width": self.rank_end - self.rank_start,
            },
            "options": {
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "good_direction_impacts": "1..13",
                "nonidentity_terminal_simulation": "exact Fraction first-hit simulation",
                "emits_bad_direction_evidence": False,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
            },
            "counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "nonidentity_no_fixed_axis": self.no_fixed_axis,
                "nonidentity_final_axis_zero": self.final_axis_zero,
                "nonidentity_forced_zero_denominator": self.forced_zero_denominator,
                "nonidentity_bad_pair_balance": self.bad_pair_balance,
                "nonidentity_forced_balance_survivors": self.forced_balance_survivors,
            },
            "nonidentity": {
                "terminal_failure_counts": dict(
                    sorted(self.nonidentity_terminal_counts.items())
                ),
                "distinct_obstruction_shapes": (
                    self.nonidentity_obstruction_shapes.payload()
                ),
                "distinct_terminal_candidate_shapes": (
                    self.nonidentity_terminal_candidate_shapes.payload()
                ),
                "distinct_forced_sequences": self.nonidentity_sequences.payload(),
                "distinct_axes": self.nonidentity_axes.payload(),
                "samples": self.nonidentity_samples,
            },
            "translation": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.translation_samples,
            },
            "decision": {
                "status": "profile",
                "notes": [
                    "This census is untrusted and emits no Lean evidence.",
                    "Use it to decide whether terminal residual shapes are shared enough for a new family backend.",
                ],
            },
        }


class NonIdentityTerminalAlgebraProfiler:
    """Bounded profiler for coarse nonidentity terminal-obstruction theorems.

    The earlier terminal census grouped failures by full forced sequence and
    raw axis data.  This mode keeps the exact search but counts only coarser
    algebraic witness shapes, so we can decide whether a theorem-family layer
    is worth formalizing before emitting any Lean evidence.
    """

    FORBIDDEN_KEY_MARKERS = ("seq=", "axis=", "rank=", "word=")

    def __init__(
        self,
        *,
        rank_start: int,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
    ) -> None:
        self.rank_start = rank_start
        self.rank_end = EXPECTED_PAIR_WORDS if limit is None else min(
            EXPECTED_PAIR_WORDS,
            rank_start + limit,
        )
        self.limit = None if limit is None else self.rank_end - rank_start
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.max_distinct_tracked = max_distinct_tracked
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval

        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words = 0

        self.no_fixed_axis = 0
        self.final_axis_zero = 0
        self.forced_zero_denominator = 0
        self.bad_pair_balance = 0
        self.forced_balance_survivors = 0
        self.terminal_failure_counts: Counter[str] = Counter()
        self.coarse_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.shape_trackers_by_family: dict[str, DistinctTracker] = {}
        self.shape_reuse_counts: Counter[str] = Counter()
        self.samples: dict[str, list[dict[str, Any]]] = {}

    def tracker_for_family(self, family: str) -> DistinctTracker:
        if family not in self.shape_trackers_by_family:
            self.shape_trackers_by_family[family] = DistinctTracker(
                self.max_distinct_tracked,
                self.sample_limit,
            )
        return self.shape_trackers_by_family[family]

    def add_sample(self, family: str, sample: dict[str, Any]) -> None:
        bucket = self.samples.setdefault(family, [])
        if len(bucket) < self.sample_limit:
            bucket.append(sample)

    def record_shape(self, family: str, key: str) -> None:
        full_key = f"{family}|{key}"
        self.coarse_shapes.add(full_key)
        self.tracker_for_family(family).add(key)
        self.shape_reuse_counts[full_key] += 1

    @staticmethod
    def bad_pair_balance_key(forced_seq: list[str]) -> str:
        counts = Counter(forced_seq)
        duplicated = tuple(
            f"{face}:{counts[face]}"
            for face in FACE_ORDER
            if counts[face] > 1
        )
        missing = tuple(face for face in FACE_ORDER if counts[face] == 0)
        duplicated_key = canonical_face_tuple_key(
            tuple(face.split(":", 1)[0] for face in duplicated)
        ) if duplicated else "none"
        missing_key = canonical_face_tuple_key(missing) if missing else "none"
        multiplicities = ",".join(str(counts[face]) for face in FACE_ORDER)
        return (
            "badPairBalance"
            f"|duplicates={duplicated_key}|missing={missing_key}"
            f"|multiplicities={multiplicities}"
        )

    def classify_nonidentity_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
        matrix,
    ) -> None:
        self.nonidentity_words += 1
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            self.no_fixed_axis += 1
            key = f"linear={mat_key(matrix)}"
            self.record_shape("no_fixed_axis", key)
            self.add_sample(
                "no_fixed_axis",
                {"rank": rank, "word": word_key(word), "linear": mat_key(matrix)},
            )
            return

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        axis_key = normalized_axis_key(axis)
        if final_dot == 0:
            self.final_axis_zero += 1
            final_normal = mat_vec(pref[-1], vec(NORMALS["x"]))
            key = (
                f"zeroAt=final|normalClass={normalized_axis_key(final_normal)}"
                f"|axisClass={axis_key}"
            )
            self.record_shape("final_axis_zero", key)
            self.add_sample(
                "final_axis_zero",
                {"rank": rank, "word": word_key(word), "axis": vec_key(axis)},
            )
            return

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is not None:
            self.forced_zero_denominator += 1
            pair_id = word[zero_index]
            transformed_normal = mat_vec(pref[zero_index], vec(NORMALS[pair_id]))
            key = (
                f"zeroAt={zero_index}|pair={pair_id}"
                f"|normalClass={normalized_axis_key(transformed_normal)}"
                f"|axisClass={axis_key}"
            )
            self.record_shape("forced_zero_denominator", key)
            self.add_sample(
                "forced_zero_denominator",
                {
                    "rank": rank,
                    "word": word_key(word),
                    "axis": vec_key(axis),
                    "zero_at": zero_index,
                },
            )
            return

        forced_seq = forced_sequence_from_axis(list(word), axis, pref)
        if len(set(forced_seq)) != 14:
            self.bad_pair_balance += 1
            key = self.bad_pair_balance_key(forced_seq)
            self.record_shape("bad_pair_balance", key)
            self.add_sample(
                "bad_pair_balance",
                {
                    "rank": rank,
                    "word": word_key(word),
                    "axis": vec_key(axis),
                    "forced_seq": forced_seq,
                },
            )
            return

        self.forced_balance_survivors += 1
        failure, details, key = terminal_axis_candidate_algebra_failure(forced_seq, axis)
        self.terminal_failure_counts[failure] += 1
        self.record_shape(failure, key)
        sample = {
            "rank": rank,
            "word": word_key(word),
            "axis": vec_key(axis),
            "normalized_axis": axis_key,
            "forced_seq": forced_seq,
            "failure": failure,
        }
        sample.update(details)
        self.add_sample(failure, sample)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(
                f"terminal algebra scanned {self.pair_words_scanned:,} pair words",
                file=sys.stderr,
            )
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.identity_words += 1
        else:
            self.classify_nonidentity_leaf(rank, word, pref, matrix)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_hi <= self.rank_start or rank_lo >= self.rank_end:
                return
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            if len(prefix) == 13:
                if self.rank_start <= rank_lo < self.rank_end:
                    self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                child_hi = child_lo + child_width
                if child_hi > self.rank_start and child_lo < self.rank_end:
                    prefix.append(pair_id)
                    pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                    rec(child_lo)
                    pref.pop()
                    prefix.pop()
                remaining[pair_id] += 1
                child_lo = child_hi
                if child_lo >= self.rank_end:
                    break

        rec(0)

    def decision(self) -> dict[str, Any]:
        reasons: list[str] = []
        if self.coarse_shapes.exact_count is None:
            reasons.append("coarse obstruction shape tracker overflowed")
        if self.coarse_shapes.lower_bound > self.max_lean_leaves:
            reasons.append(
                "projected heavy Lean leaves "
                f"{self.coarse_shapes.lower_bound} exceed max {self.max_lean_leaves}"
            )
        elif self.coarse_shapes.lower_bound > self.warn_lean_leaves:
            reasons.append(
                "warning: projected heavy Lean leaves "
                f"{self.coarse_shapes.lower_bound} exceed warning threshold "
                f"{self.warn_lean_leaves}"
            )
        for family, tracker in sorted(self.shape_trackers_by_family.items()):
            if tracker.lower_bound > self.max_lean_leaves:
                reasons.append(
                    f"family {family} has {tracker.lower_bound} unique shapes, "
                    f"exceeding max {self.max_lean_leaves}"
                )
        forbidden = sorted({
            marker
            for key in self.shape_reuse_counts
            for marker in self.FORBIDDEN_KEY_MARKERS
            if marker in key
        })
        if forbidden:
            reasons.append(
                "coarse keys still contain forbidden rank/word/sequence/axis "
                f"markers: {', '.join(forbidden)}"
            )
        if self.terminal_failure_counts.get("simulates_valid_orbit", 0):
            reasons.append("terminal profiler found a simulated valid orbit candidate")
        rejected = any(not reason.startswith("warning:") for reason in reasons)
        return {
            "status": "rejected" if rejected else "accepted",
            "accepted_for_phase_6m": not rejected,
            "planned_lean_heavy_leaves_exact": self.coarse_shapes.exact_count,
            "planned_lean_heavy_leaves_lower_bound": self.coarse_shapes.lower_bound,
            "max_lean_leaves": self.max_lean_leaves,
            "warn_lean_leaves": self.warn_lean_leaves,
            "forbidden_key_markers_present": forbidden,
            "notes": reasons or [
                "coarse terminal algebra is below the bounded leaf gate",
            ],
        }

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        reuse_values = list(self.shape_reuse_counts.values())
        family_payload = {
            family: tracker.payload()
            for family, tracker in sorted(self.shape_trackers_by_family.items())
        }
        return {
            "schema_version": 1,
            "mode": "nonidentity-terminal-algebra-profile",
            "trusted_as_proof": False,
            "elapsed_seconds": elapsed_seconds,
            "rank_window": {
                "start": self.rank_start,
                "end": self.rank_end,
                "width": self.rank_end - self.rank_start,
            },
            "options": {
                "branch": "nonidentity",
                "terminal_classifier": (
                    "coarse algebraic witness keys; no rank/word/sequence/axis "
                    "data in counted shapes"
                ),
                "emits_lean_evidence": False,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
            },
            "counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "nonidentity_no_fixed_axis": self.no_fixed_axis,
                "nonidentity_final_axis_zero": self.final_axis_zero,
                "nonidentity_forced_zero_denominator": self.forced_zero_denominator,
                "nonidentity_bad_pair_balance": self.bad_pair_balance,
                "nonidentity_forced_balance_survivors": self.forced_balance_survivors,
            },
            "terminal": {
                "failure_counts": dict(sorted(self.terminal_failure_counts.items())),
                "unique_coarse_obstruction_shapes": self.coarse_shapes.payload(),
                "unique_shapes_by_family": family_payload,
                "shape_reuse": {
                    "shape_count": len(self.shape_reuse_counts),
                    "shared_shape_count": sum(1 for value in reuse_values if value > 1),
                    "max_reuse": max(reuse_values, default=0),
                },
                "samples": self.samples,
            },
            "decision": self.decision(),
        }


class TranslationFarkasTreeProfiler:
    """Dry-run profiler for translation/Farkas family sharing.

    This mode intentionally ignores the non-identity branch except for counting
    and rank coverage.  It asks whether identity-linear translation sign masks
    collapse to a small number of Lean-visible families once started-face D4
    transport and normalized Farkas-shape sharing are applied.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.use_d4_transport = use_d4_transport
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.translation_failure_counts: Counter[str] = Counter()
        self.translation_mask_orbit_histogram: Counter[int] = Counter()
        self.translation_canonical_choices = DistinctTracker(max_distinct_tracked, sample_limit)
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_vector_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_direction_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.farkas_shape_reuse_samples: dict[str, dict[str, Any]] = {}
        self.tiles = TileAccumulator(self.target_hi, sample_limit)
        self.samples: list[dict[str, Any]] = []

    def canonical_translation_choice(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[tuple[str, ...], int, int]:
        if self.use_d4_transport:
            return canonical_translation_with_symmetry(word, mask)
        return word, mask, 0

    @lru_cache(maxsize=200_000)
    def classify_translation_canonical(self, word: tuple[str, ...], mask: int) -> tuple[str, str, str | None]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        b, seq = translation_vector(raw_word, mask, pref)
        prefixes = path_prefix_affs(seq)
        b_text = vec_key(b)
        seq_text = seq_key(seq)
        denom_pattern = denom_pattern_key(seq, b, prefixes)
        base = f"trans|b={b_text}|seq={seq_text}|denoms={denom_pattern}"
        if b == ZERO_VEC:
            return "badTranslationVector", f"{base}|badTranslationVector", None
        if any(impact_denom(seq, b, impact, prefixes) <= 0 for impact in range(1, 14)):
            return "badDirectionSign", f"{base}|badDirectionSign", None
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return "needsFarkas", f"{base}|needsFarkas|shape={shape_digest}", shape

    def mask_orbit_size(self, word: tuple[str, ...], mask: int) -> int:
        if not self.use_d4_transport:
            return 1
        return len({
            (tuple(transported_word), transported_choice)
            for sym in STARTED_SYMS
            for transported_word, transported_choice in [transported_mask(sym, list(word), mask)]
        })

    def record_translation_case(
        self,
        *,
        rank: int,
        word: tuple[str, ...],
        mask: int,
    ) -> str:
        canonical_word, canonical_mask, mask_sym_id = self.canonical_translation_choice(word, mask)
        canonical_choice_key = f"{word_key(canonical_word)}#{canonical_mask}"
        self.translation_canonical_choices.add(canonical_choice_key)
        self.translation_mask_orbit_histogram[self.mask_orbit_size(word, mask)] += 1

        failure, family_key, shape = self.classify_translation_canonical(
            canonical_word,
            canonical_mask,
        )
        self.translation_failure_counts[failure] += 1
        self.translation_sign_assignments += 1

        if shape is None:
            transported_family_key = f"sym={mask_sym_id}|mask={canonical_mask}|{family_key}"
            if failure == "badTranslationVector":
                self.bad_vector_families.add(family_key)
            elif failure == "badDirectionSign":
                self.bad_direction_families.add(family_key)
            else:
                raise AssertionError(f"unexpected translation failure without shape: {failure}")
            self.heavy_families.add(family_key)
            leaf_key = transported_family_key
        else:
            shape_digest = stable_digest(shape)
            self.farkas_shapes.add(shape)
            self.farkas_shape_reuse_counts[shape_digest] += 1
            self.farkas_shape_reuse_samples.setdefault(shape_digest, {
                "shape_digest": shape_digest,
                "raw_rank": rank,
                "raw_word": word_key(word),
                "raw_mask": mask,
                "canonical_word": word_key(canonical_word),
                "canonical_mask": canonical_mask,
                "failure_key_digest": stable_digest(family_key),
            })
            self.heavy_families.add(f"farkasShape|{shape_digest}")
            leaf_key = f"sym={mask_sym_id}|mask={canonical_mask}|farkasShape|{shape_digest}"

        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank": rank,
                "mask": mask,
                "failure": failure,
                "canonical_word": word_key(canonical_word),
                "canonical_mask": canonical_mask,
                "family_key_digest": stable_digest(family_key),
                "shape_digest": stable_digest(shape) if shape is not None else None,
            })
        return leaf_key

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            self.tiles.add(rank, rank + 1, "nonidentitySkipped", "nonidentitySkipped")
            return

        self.identity_words += 1
        mask_family_digests: list[str] = []
        for mask in range(64):
            leaf_key = self.record_translation_case(rank=rank, word=word, mask=mask)
            mask_family_digests.append(stable_digest(leaf_key))
        rank_family_key = (
            f"translationRank|word={word_key(word)}"
            f"|maskFamilies={stable_digest('|'.join(sorted(mask_family_digests)))}"
        )
        self.tiles.add(rank, rank + 1, "translation", rank_family_key)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def farkas_shape_reuse_payload(self) -> dict[str, Any]:
        total = sum(self.farkas_shape_reuse_counts.values())
        shared = sorted(
            (
                (digest, count)
                for digest, count in self.farkas_shape_reuse_counts.items()
                if count > 1
            ),
            key=lambda item: (-item[1], item[0]),
        )
        sample_shared_shapes: list[dict[str, Any]] = []
        for digest, count in shared[: self.sample_limit]:
            sample = dict(self.farkas_shape_reuse_samples.get(digest, {}))
            sample["shape_digest"] = digest
            sample["count"] = count
            sample_shared_shapes.append(sample)
        return {
            "needs_farkas_cases": total,
            "shape_count": len(self.farkas_shape_reuse_counts),
            "shared_shape_count": len(shared),
            "max_reuse": max(self.farkas_shape_reuse_counts.values(), default=0),
            "sample_shared_shapes": sample_shared_shapes,
        }

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        heavy_exact = self.heavy_families.exact_count
        heavy_lower = self.heavy_families.lower_bound
        assignments = self.translation_sign_assignments
        exact_ratio = (
            assignments / heavy_exact
            if heavy_exact not in {None, 0}
            else None
        )
        lower_ratio = assignments / heavy_lower if heavy_lower > 0 else None
        return {
            "schema_version": 1,
            "mode": "translation-farkas-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "case_to_leaf_compression_ratio_min": 8.0,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.translation_failure_counts.items())),
                "translation_cases_after_symmetry": self.translation_canonical_choices.payload(),
                "bad_vector_families": self.bad_vector_families.payload(),
                "bad_direction_families": self.bad_direction_families.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": self.farkas_shape_reuse_payload(),
                "samples": self.samples,
            },
            "d4": {
                "translation_mask_orbit_histogram": dict(sorted(self.translation_mask_orbit_histogram.items())),
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": heavy_exact,
                "planned_lean_heavy_leaves_lower_bound": heavy_lower,
                "planned_lean_heavy_leaves": heavy_exact
                if heavy_exact is not None
                else f">{heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
                "case_to_leaf_compression_ratio_exact": exact_ratio,
                "case_to_leaf_compression_ratio_lower_bound": lower_ratio,
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


class TranslationSurvivorProfiler:
    """Dry-run profiler for GoodDirection survivor masks.

    This is the Phase 6F measurement mode.  It deliberately omits generated
    evidence for bad-direction masks and records only masks whose internal
    impact denominators are all strictly positive.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.use_d4_transport = use_d4_transport
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.good_direction_masks = 0
        self.denominator_nonpositive_masks = 0
        self.zero_vector_masks = 0
        self.survivor_mask_histogram: Counter[int] = Counter()
        self.denominator_degree_histogram: Counter[int] = Counter()
        self.denominator_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_bitsets = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_shape_maps = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.canonical_survivor_cases = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.samples: list[dict[str, Any]] = []

    def canonical_translation_choice(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[tuple[str, ...], int, int]:
        if self.use_d4_transport:
            return canonical_translation_with_symmetry(word, mask)
        return word, mask, 0

    @staticmethod
    def denominator_values_for_choice(
        word: tuple[str, ...],
        mask: int,
        pref: list | None = None,
    ) -> tuple[tuple[Fraction, ...], tuple, list[str]]:
        b, seq = translation_vector(list(word), mask, pref)
        prefixes = path_prefix_affs(seq)
        denoms = tuple(impact_denom(seq, b, impact, prefixes) for impact in range(1, 14))
        return denoms, b, seq

    @lru_cache(maxsize=200_000)
    def survivor_case_shape(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[str, str]:
        denoms, b, seq = self.denominator_values_for_choice(word, mask)
        if not all(denom > 0 for denom in denoms):
            raise ValueError("survivor_case_shape called for non-survivor mask")
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return shape, shape_digest

    def denominator_signature_for_word(
        self,
        word: tuple[str, ...],
        pref: list,
    ) -> tuple[str, int, int, list[tuple[int, str]], dict[int, str]]:
        impact_values: list[list[Fraction]] = [[] for _ in range(13)]
        survivor_bits = 0
        survivor_shapes: list[tuple[int, str]] = []
        survivor_shape_by_mask: dict[int, str] = {}
        max_degree = 0
        for mask in range(64):
            denoms, _b, _seq = self.denominator_values_for_choice(word, mask, pref)
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_bits |= 1 << mask
                canonical_word, canonical_mask, _sym_id = (
                    self.canonical_translation_choice(word, mask)
                )
                _shape, shape_digest = self.survivor_case_shape(
                    canonical_word,
                    canonical_mask,
                )
                survivor_shapes.append((mask, shape_digest))
                survivor_shape_by_mask[mask] = shape_digest
        impact_keys: list[str] = []
        for values in impact_values:
            key, degree = denominator_polynomial_key(values)
            max_degree = max(max_degree, degree)
            self.denominator_degree_histogram[degree] += 1
            impact_keys.append(key)
        signature_key = "|".join(
            f"{impact + 1}:{key}" for impact, key in enumerate(impact_keys)
        )
        return signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask = (
            self.denominator_signature_for_word(word, pref)
        )
        survivor_count = len(survivor_shapes)
        self.survivor_mask_histogram[survivor_count] += 1
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        self.survivor_shape_maps.add(
            f"sig={stable_digest(signature_key)}|survivors={survivor_bits}|{shape_map_key}"
        )
        for mask in range(64):
            self.translation_sign_assignments += 1
            if survivor_bits & (1 << mask):
                self.good_direction_masks += 1
                shape_digest = survivor_shape_by_mask[mask]
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word, mask
                )
                self.canonical_survivor_cases.add(
                    f"{word_key(canonical_word)}#{canonical_mask}"
                )
                if len(self.samples) < self.sample_limit:
                    self.samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                        "denominator_signature_digest": stable_digest(signature_key),
                        "max_denominator_degree": max_degree,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1
                elif all(denom > 0 for denom in denoms):
                    raise AssertionError("survivor bitset missed a GoodDirection mask")

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        survivor_maps_exact = self.survivor_shape_maps.exact_count
        survivor_maps_lower = self.survivor_shape_maps.lower_bound
        under_gate = (
            survivor_maps_exact is not None
            and survivor_maps_exact <= self.max_lean_leaves
        )
        warn_gate = (
            survivor_maps_exact is not None
            and survivor_maps_exact <= self.warn_lean_leaves
        )
        return {
            "schema_version": 1,
            "mode": "translation-survivors-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "good_direction_impacts": "1..13",
                "emits_bad_direction_evidence": False,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "canonical_survivor_cases": self.canonical_survivor_cases.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6g": under_gate,
                "within_warning_gate": warn_gate,
                "planned_lean_heavy_leaves_exact": survivor_maps_exact,
                "planned_lean_heavy_leaves_lower_bound": survivor_maps_lower,
                "notes": [
                    "This mode measures the GoodDirection survivor obligation.",
                    "A high survivor-map count means use a later compression phase before Lean emission.",
                ],
            },
        }


@dataclass(frozen=True)
class MaskTreeBuild:
    key: str
    leaf_keys: tuple[str, ...]
    leaf_count: int
    bad_cube_leaves: int
    farkas_leaves: int
    branch_nodes: int
    point_farkas_leaves: int
    max_depth: int
    max_masks_in_bad_cube: int
    max_survivors_in_farkas_leaf: int


class TranslationPseudoBooleanProfiler:
    """Phase 6L.2 dry-run profiler for translation GoodDirection constraints.

    This mode recomputes the 13 internal impact denominators as exact
    sign-polynomials in the six translation mask bits.  It does not emit Lean
    and does not generate bad-direction evidence.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        max_linear_fm_constraints: int,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.max_linear_fm_constraints = max_linear_fm_constraints
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.good_direction_masks = 0
        self.denominator_nonpositive_masks = 0
        self.zero_vector_masks = 0
        self.denominator_degree_histogram: Counter[int] = Counter()
        self.max_degree_word_histogram: Counter[int] = Counter()
        self.survivor_mask_histogram: Counter[int] = Counter()
        self.monomial_count_histogram: Counter[int] = Counter()
        self.quadratic_variable_histogram: Counter[int] = Counter()
        self.integer_denominator_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.linear_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.lifted_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.linear_states = 0
        self.linear_relaxation_infeasible = 0
        self.linear_relaxation_feasible = 0
        self.linear_relaxation_unknown = 0
        self.lifted_states = 0
        self.higher_degree_states = 0
        self.max_lifted_variables = 0
        self.max_quadratic_variables = 0
        self.max_mccormick_constraints = 0
        self.samples: list[dict[str, Any]] = []

    @staticmethod
    def denominator_values_for_choice(
        word: tuple[str, ...],
        mask: int,
        pref: list | None = None,
    ) -> tuple[tuple[Fraction, ...], tuple, list[str]]:
        return TranslationSurvivorProfiler.denominator_values_for_choice(
            word, mask, pref
        )

    def analyze_word(
        self,
        word: tuple[str, ...],
        pref: list,
    ) -> dict[str, Any]:
        impact_values: list[list[Fraction]] = [[] for _ in range(13)]
        survivor_count = 0
        survivor_bits = 0
        zero_vector_count = 0
        for mask in range(64):
            denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_count += 1
                survivor_bits |= 1 << mask
            elif b == ZERO_VEC:
                zero_vector_count += 1

        impact_keys: list[str] = []
        linear_constraints: list[LinearIneq] = []
        max_degree = 0
        monomial_support: set[int] = set()
        quadratic_support: set[int] = set()
        degree_histogram: Counter[int] = Counter()
        all_linear = True

        for values in impact_values:
            coeffs = denominator_polynomial_coeffs(values)
            integer_coeffs = integer_normalized_polynomial_coeffs(coeffs)
            degree = polynomial_degree(integer_coeffs)
            max_degree = max(max_degree, degree)
            degree_histogram[degree] += 1
            self.denominator_degree_histogram[degree] += 1
            monomial_support.update(subset for subset in integer_coeffs if subset != 0)
            quadratic_support.update(
                subset for subset in integer_coeffs if subset.bit_count() == 2
            )
            impact_keys.append(integer_polynomial_key(integer_coeffs))
            linear = linear_ineq_from_coeffs(coeffs)
            if linear is None:
                all_linear = False
            else:
                linear_constraints.append(linear)

        signature_key = "|".join(
            f"{impact + 1}:{key}" for impact, key in enumerate(impact_keys)
        )
        linear_result = None
        if all_linear:
            constraints = linear_constraints + sign_cube_bound_constraints()
            linear_result = fourier_motzkin_feasibility(
                constraints,
                max_constraints=self.max_linear_fm_constraints,
            )
        return {
            "signature_key": signature_key,
            "signature_digest": stable_digest(signature_key),
            "max_degree": max_degree,
            "degree_histogram": dict(sorted(degree_histogram.items())),
            "survivor_count": survivor_count,
            "survivor_bits": survivor_bits,
            "zero_vector_count": zero_vector_count,
            "monomial_count": len(monomial_support),
            "linear_variable_count": sum(
                1 for subset in monomial_support if subset.bit_count() == 1
            ),
            "quadratic_variable_count": len(quadratic_support),
            "mccormick_constraint_count": 4 * len(quadratic_support),
            "all_linear": all_linear,
            "linear_relaxation": linear_result,
        }

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.translation_sign_assignments += 64
        analysis = self.analyze_word(word, pref)
        self.good_direction_masks += analysis["survivor_count"]
        self.denominator_nonpositive_masks += 64 - analysis["survivor_count"]
        self.zero_vector_masks += analysis["zero_vector_count"]
        self.max_degree_word_histogram[analysis["max_degree"]] += 1
        self.survivor_mask_histogram[analysis["survivor_count"]] += 1
        self.monomial_count_histogram[analysis["monomial_count"]] += 1
        self.quadratic_variable_histogram[analysis["quadratic_variable_count"]] += 1
        self.integer_denominator_signatures.add(analysis["signature_key"])

        if analysis["all_linear"]:
            self.linear_states += 1
            self.linear_signatures.add(analysis["signature_key"])
            if analysis["linear_relaxation"] == "infeasible":
                self.linear_relaxation_infeasible += 1
                if analysis["survivor_count"] != 0:
                    raise AssertionError(
                        "linear relaxation infeasible but Boolean survivor exists"
                    )
            elif analysis["linear_relaxation"] == "feasible":
                self.linear_relaxation_feasible += 1
            else:
                self.linear_relaxation_unknown += 1
        else:
            self.lifted_states += 1
            if analysis["max_degree"] > 2:
                self.higher_degree_states += 1
            self.lifted_signatures.add(analysis["signature_key"])
            self.max_lifted_variables = max(
                self.max_lifted_variables,
                analysis["linear_variable_count"] + analysis["quadratic_variable_count"],
            )
            self.max_quadratic_variables = max(
                self.max_quadratic_variables,
                analysis["quadratic_variable_count"],
            )
            self.max_mccormick_constraints = max(
                self.max_mccormick_constraints,
                analysis["mccormick_constraint_count"],
            )

        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank": rank,
                "word": word_key(word),
                "signature_digest": analysis["signature_digest"],
                "max_degree": analysis["max_degree"],
                "degree_histogram": analysis["degree_histogram"],
                "survivor_count": analysis["survivor_count"],
                "monomial_count": analysis["monomial_count"],
                "linear_variable_count": analysis["linear_variable_count"],
                "quadratic_variable_count": analysis["quadratic_variable_count"],
                "mccormick_constraint_count": analysis["mccormick_constraint_count"],
                "linear_relaxation": analysis["linear_relaxation"],
            })

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        all_linear = self.lifted_states == 0 and self.higher_degree_states == 0
        return {
            "schema_version": 1,
            "mode": "translation-pseudoboolean-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.GoodDirection",
                "symmetry": "none for sign-polynomial signatures",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "max_linear_fm_constraints": self.max_linear_fm_constraints,
                "emits_bad_direction_evidence": False,
                "emits_lean_evidence": False,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "sign_polynomials": {
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "max_degree_word_histogram": dict(
                    sorted(self.max_degree_word_histogram.items())
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "monomial_count_histogram": dict(
                    sorted(self.monomial_count_histogram.items())
                ),
                "unique_integer_denominator_signatures":
                    self.integer_denominator_signatures.payload(),
                "samples": self.samples,
            },
            "continuous_linear_relaxation": {
                "linear_states": self.linear_states,
                "unique_linear_signatures": self.linear_signatures.payload(),
                "relaxation_infeasible": self.linear_relaxation_infeasible,
                "relaxation_feasible": self.linear_relaxation_feasible,
                "relaxation_unknown": self.linear_relaxation_unknown,
            },
            "lifted_pseudoboolean": {
                "states_requiring_lift": self.lifted_states,
                "states_with_degree_above_two": self.higher_degree_states,
                "unique_lifted_signatures": self.lifted_signatures.payload(),
                "quadratic_variable_histogram": dict(
                    sorted(self.quadratic_variable_histogram.items())
                ),
                "max_lifted_variables": self.max_lifted_variables,
                "max_quadratic_variables": self.max_quadratic_variables,
                "max_mccormick_constraints": self.max_mccormick_constraints,
                "denominator_constraints_per_state": 13,
                "cube_bound_constraints_per_state": 12,
            },
            "decision": {
                "status": "profile",
                "ordinary_linear_farkas_viable": all_linear,
                "requires_lifted_pseudoboolean": self.lifted_states > 0,
                "recommended_next_phase": (
                    "translation-linear-farkas-search"
                    if all_linear else
                    "translation-lifted-pseudoboolean-search"
                ),
                "notes": [
                    "This mode emits no Lean evidence.",
                    "Bad-direction masks remain discharged only by the generic GoodDirection premise.",
                    "A nonzero lifted state count means ordinary linear Farkas over six sign variables is insufficient.",
                ],
            },
        }


class TranslationLiftedPbSearchProfiler(TranslationSurvivorProfiler):
    """Phase 6L.2B dry-run search for lifted pseudo-Boolean compression.

    This remains a profiler only.  It measures whether quadratic denominator
    systems, bad-mask cubes, and survivor Farkas leaves share enough structure
    to justify a later Lean checker/emitter.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        super().__init__(
            limit=limit,
            max_lean_leaves=max_lean_leaves,
            warn_lean_leaves=warn_lean_leaves,
            max_distinct_tracked=max_distinct_tracked,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
            use_d4_transport=use_d4_transport,
        )
        self.canonical_lifted_problems = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.canonical_survivor_bitsets = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.bad_cube_certificate_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.survivor_farkas_shapes = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.survivor_leaf_obligations = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.lifted_leaf_obligations = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.bad_cube_leaf_histogram: Counter[int] = Counter()
        self.survivor_farkas_leaf_histogram: Counter[int] = Counter()
        self.canonical_transform_tie_histogram: Counter[int] = Counter()
        self.total_bad_cube_leaves = 0
        self.total_survivor_farkas_leaves = 0
        self.total_point_bad_cube_leaves = 0
        self.max_bad_cube_size = 0
        self.max_bad_cube_leaves_for_problem = 0
        self.max_survivor_farkas_leaves_for_problem = 0

    def analyze_word_quadratic(
        self,
        word: tuple[str, ...],
        pref: list,
    ) -> tuple[tuple[QuadraticRow, ...], int, dict[int, str], int, int]:
        impact_values: list[list[Fraction]] = [[] for _ in range(13)]
        survivor_bits = 0
        survivor_shape_by_mask: dict[int, str] = {}
        zero_vector_count = 0
        max_degree = 0

        for mask in range(64):
            denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_bits |= 1 << mask
                canonical_word, canonical_mask, _sym_id = self.canonical_translation_choice(
                    word,
                    mask,
                )
                _shape, shape_digest = self.survivor_case_shape(
                    canonical_word,
                    canonical_mask,
                )
                survivor_shape_by_mask[mask] = shape_digest
            elif b == ZERO_VEC:
                zero_vector_count += 1

        rows: list[QuadraticRow] = []
        for values in impact_values:
            coeffs = denominator_polynomial_coeffs(values)
            integer_coeffs = integer_normalized_polynomial_coeffs(coeffs)
            max_degree = max(max_degree, polynomial_degree(integer_coeffs))
            rows.append(quadratic_row_from_coeffs(integer_coeffs))
        return tuple(rows), survivor_bits, survivor_shape_by_mask, zero_vector_count, max_degree

    @staticmethod
    def planned_leaf_count(*trackers: DistinctTracker) -> tuple[int | None, int]:
        if any(tracker.exact_count is None for tracker in trackers):
            return None, max(tracker.lower_bound for tracker in trackers)
        return sum(tracker.exact_count or 0 for tracker in trackers), sum(
            tracker.lower_bound for tracker in trackers
        )

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.translation_sign_assignments += 64
        rows, survivor_bits, survivor_shape_by_mask, zero_count, max_degree = (
            self.analyze_word_quadratic(word, pref)
        )
        self.good_direction_masks += survivor_bits.bit_count()
        self.denominator_nonpositive_masks += 64 - survivor_bits.bit_count()
        self.zero_vector_masks += zero_count
        self.survivor_mask_histogram[survivor_bits.bit_count()] += 1

        canonical_rows, canonical_problem_key, canonical_bits, transform, tie_count = (
            canonical_lifted_problem(rows, survivor_bits)
        )
        canonical_problem_digest = stable_digest(canonical_problem_key)
        self.canonical_lifted_problems.add(canonical_problem_key)
        self.canonical_survivor_bitsets.add(f"{canonical_bits:016x}")
        self.canonical_transform_tie_histogram[tie_count] += 1

        bad_cubes, point_fallbacks, max_cube_size = greedy_bad_cube_cover(
            canonical_rows=canonical_rows,
            survivor_bits=canonical_bits,
        )
        self.total_bad_cube_leaves += len(bad_cubes)
        self.total_point_bad_cube_leaves += point_fallbacks
        self.max_bad_cube_size = max(self.max_bad_cube_size, max_cube_size)
        self.max_bad_cube_leaves_for_problem = max(
            self.max_bad_cube_leaves_for_problem,
            len(bad_cubes),
        )
        self.bad_cube_leaf_histogram[len(bad_cubes)] += 1

        for bad_cube in bad_cubes:
            bad_key = (
                f"problem={canonical_problem_digest}|cube={bad_cube['cube_key']}|"
                f"fail={bad_cube['failure_key']}"
            )
            self.bad_cube_certificate_shapes.add(bad_key)
            self.lifted_leaf_obligations.add(bad_key)

        canonical_shape_by_mask: dict[int, str] = {}
        for raw_mask, shape_digest in survivor_shape_by_mask.items():
            canonical_mask = transform.new_mask_from_old[raw_mask]
            canonical_shape_by_mask[canonical_mask] = shape_digest
            self.farkas_shapes.add(shape_digest)
            self.farkas_shape_reuse_counts[shape_digest] += 1
            self.survivor_farkas_shapes.add(shape_digest)

        unique_shapes_for_problem = set(canonical_shape_by_mask.values())
        self.total_survivor_farkas_leaves += len(unique_shapes_for_problem)
        self.max_survivor_farkas_leaves_for_problem = max(
            self.max_survivor_farkas_leaves_for_problem,
            len(unique_shapes_for_problem),
        )
        self.survivor_farkas_leaf_histogram[len(unique_shapes_for_problem)] += 1
        for shape_digest in unique_shapes_for_problem:
            leaf_key = f"problem={canonical_problem_digest}|shape={shape_digest}"
            self.survivor_leaf_obligations.add(leaf_key)
            self.lifted_leaf_obligations.add(leaf_key)

        shape_map_key = "|".join(
            f"{mask}:{canonical_shape_by_mask[mask]}"
            for mask in sorted(canonical_shape_by_mask)
        )
        self.survivor_shape_maps.add(
            f"problem={canonical_problem_digest}|{shape_map_key}"
        )

        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank": rank,
                "word": word_key(word),
                "canonical_problem_digest": canonical_problem_digest,
                "survivor_count": survivor_bits.bit_count(),
                "canonical_survivor_bits": f"{canonical_bits:016x}",
                "max_denominator_degree": max_degree,
                "bad_cube_leaves": len(bad_cubes),
                "survivor_farkas_leaves": len(unique_shapes_for_problem),
                "point_bad_cube_leaves": point_fallbacks,
                "max_bad_cube_size": max_cube_size,
                "canonical_transform_ties": tie_count,
            })

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        planned_exact, planned_lower = self.planned_leaf_count(
            self.bad_cube_certificate_shapes,
            self.survivor_leaf_obligations,
        )
        accepted = (
            not self.truncated
            and planned_exact is not None
            and planned_exact <= self.max_lean_leaves
        )
        within_warning = (
            not self.truncated
            and planned_exact is not None
            and planned_exact <= self.warn_lean_leaves
        )
        singleton_ratio = (
            self.total_point_bad_cube_leaves / self.total_bad_cube_leaves
            if self.total_bad_cube_leaves
            else 0
        )
        return {
            "schema_version": 1,
            "mode": "translation-lifted-pb-search-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.GoodDirection",
                "symmetry": (
                    "started-face D4 for Farkas shapes; signed S6 x C2^6 "
                    "for quadratic denominator problems"
                ),
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "emits_bad_direction_evidence": False,
                "emits_lean_evidence": False,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "canonicalization": {
                "unique_canonical_lifted_problems":
                    self.canonical_lifted_problems.payload(),
                "unique_canonical_survivor_bitsets":
                    self.canonical_survivor_bitsets.payload(),
                "canonical_transform_tie_histogram": dict(
                    sorted(self.canonical_transform_tie_histogram.items())
                ),
            },
            "lifted_pb": {
                "total_bad_cube_leaves": self.total_bad_cube_leaves,
                "total_point_bad_cube_leaves": self.total_point_bad_cube_leaves,
                "point_bad_cube_ratio": singleton_ratio,
                "max_bad_cube_size": self.max_bad_cube_size,
                "max_bad_cube_leaves_for_problem":
                    self.max_bad_cube_leaves_for_problem,
                "bad_cube_leaf_histogram": dict(
                    sorted(self.bad_cube_leaf_histogram.items())
                ),
                "unique_bad_cube_certificate_shapes":
                    self.bad_cube_certificate_shapes.payload(),
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "total_survivor_farkas_leaves":
                    self.total_survivor_farkas_leaves,
                "max_survivor_farkas_leaves_for_problem":
                    self.max_survivor_farkas_leaves_for_problem,
                "survivor_farkas_leaf_histogram": dict(
                    sorted(self.survivor_farkas_leaf_histogram.items())
                ),
                "unique_survivor_farkas_shapes":
                    self.survivor_farkas_shapes.payload(),
                "unique_survivor_leaf_obligations":
                    self.survivor_leaf_obligations.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6l_2b": accepted,
                "within_warning_gate": within_warning,
                "planned_lean_heavy_leaves_exact": planned_exact,
                "planned_lean_heavy_leaves_lower_bound": planned_lower,
                "singleton_fallback_dominates": singleton_ratio > 0.5,
                "notes": [
                    "This mode emits no Lean evidence.",
                    "Bad-direction masks remain discharged only by the generic GoodDirection premise.",
                    "Bad cubes are exact mask-cube profiles, not Lean certificates yet.",
                    "If the planned leaf count exceeds the hard gate, reject this backend before emission.",
                ],
            },
        }


class TranslationSurvivorMaskTreeProfiler(TranslationSurvivorProfiler):
    """Dry-run profiler for Phase 6H GoodDirection mask trees.

    This mode does not emit Lean.  It measures whether the survivor obligation
    can be represented as small Boolean trees over the six translation mask
    bits.  Bad leaves contain no GoodDirection masks; Farkas leaves contain only
    GoodDirection masks that share one normalized Farkas shape after the
    deterministic splits chosen by the profiler.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        super().__init__(
            limit=limit,
            max_lean_leaves=max_lean_leaves,
            warn_lean_leaves=warn_lean_leaves,
            max_distinct_tracked=max_distinct_tracked,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
            use_d4_transport=use_d4_transport,
        )
        self.mask_tree_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.proof_tree_obligations = DistinctTracker(max_distinct_tracked, sample_limit)
        self.leaf_obligations = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_cube_leaf_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_leaf_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.tree_leaf_histogram: Counter[int] = Counter()
        self.tree_depth_histogram: Counter[int] = Counter()
        self.max_survivors_per_farkas_leaf_histogram: Counter[int] = Counter()
        self.total_tree_leaves = 0
        self.total_bad_cube_leaves = 0
        self.total_farkas_leaves = 0
        self.total_branch_nodes = 0
        self.total_point_farkas_leaves = 0
        self.max_tree_depth = 0
        self.max_tree_leaves = 0
        self.max_masks_in_bad_cube = 0
        self.max_survivors_in_farkas_leaf = 0

    @staticmethod
    def iter_mask_bits(bits: int) -> list[int]:
        masks: list[int] = []
        current = bits
        while current:
            low = current & -current
            masks.append(low.bit_length() - 1)
            current ^= low
        return masks

    @staticmethod
    def available_split_bits(cube_bits: int) -> list[int]:
        bits: list[int] = []
        for bit, (zero_bits, one_bits) in enumerate(MASKS_BY_BIT_VALUE):
            if cube_bits & zero_bits and cube_bits & one_bits:
                bits.append(bit)
        return bits

    def build_mask_tree(
        self,
        *,
        survivor_bits: int,
        survivor_shape_by_mask: dict[int, str],
    ) -> MaskTreeBuild:
        @lru_cache(maxsize=None)
        def rec(cube_bits: int) -> MaskTreeBuild:
            survivor_subset = cube_bits & survivor_bits
            if survivor_subset == 0:
                cube_size = cube_bits.bit_count()
                key = f"B:{cube_bits:016x}"
                return MaskTreeBuild(
                    key=key,
                    leaf_keys=(key,),
                    leaf_count=1,
                    bad_cube_leaves=1,
                    farkas_leaves=0,
                    branch_nodes=0,
                    point_farkas_leaves=0,
                    max_depth=0,
                    max_masks_in_bad_cube=cube_size,
                    max_survivors_in_farkas_leaf=0,
                )

            survivor_masks = self.iter_mask_bits(survivor_subset)
            shape_set = {survivor_shape_by_mask[mask] for mask in survivor_masks}
            if len(shape_set) == 1:
                shape_digest = next(iter(shape_set))
                survivor_count = len(survivor_masks)
                cube_size = cube_bits.bit_count()
                key = (
                    f"F:{shape_digest}:cube={cube_bits:016x}:"
                    f"survivors={survivor_subset:016x}"
                )
                return MaskTreeBuild(
                    key=key,
                    leaf_keys=(key,),
                    leaf_count=1,
                    bad_cube_leaves=0,
                    farkas_leaves=1,
                    branch_nodes=0,
                    point_farkas_leaves=1 if cube_size == 1 else 0,
                    max_depth=0,
                    max_masks_in_bad_cube=0,
                    max_survivors_in_farkas_leaf=survivor_count,
                )

            candidates: list[tuple[tuple[int, int, int, int, str], MaskTreeBuild]] = []
            for bit in self.available_split_bits(cube_bits):
                zero_cube = cube_bits & MASKS_BY_BIT_VALUE[bit][0]
                one_cube = cube_bits & MASKS_BY_BIT_VALUE[bit][1]
                zero = rec(zero_cube)
                one = rec(one_cube)
                leaf_keys = zero.leaf_keys + one.leaf_keys
                key = f"S{bit}({zero.key},{one.key})"
                combined = MaskTreeBuild(
                    key=key,
                    leaf_keys=leaf_keys,
                    leaf_count=zero.leaf_count + one.leaf_count,
                    bad_cube_leaves=zero.bad_cube_leaves + one.bad_cube_leaves,
                    farkas_leaves=zero.farkas_leaves + one.farkas_leaves,
                    branch_nodes=zero.branch_nodes + one.branch_nodes + 1,
                    point_farkas_leaves=(
                        zero.point_farkas_leaves + one.point_farkas_leaves
                    ),
                    max_depth=max(zero.max_depth, one.max_depth) + 1,
                    max_masks_in_bad_cube=max(
                        zero.max_masks_in_bad_cube,
                        one.max_masks_in_bad_cube,
                    ),
                    max_survivors_in_farkas_leaf=max(
                        zero.max_survivors_in_farkas_leaf,
                        one.max_survivors_in_farkas_leaf,
                    ),
                )
                score = (
                    combined.leaf_count,
                    combined.farkas_leaves,
                    combined.branch_nodes,
                    combined.max_depth,
                    combined.key,
                )
                candidates.append((score, combined))

            if not candidates:
                raise AssertionError("mixed survivor shapes without available split bits")
            candidates.sort(key=lambda item: item[0])
            return candidates[0][1]

        return rec((1 << 64) - 1)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask = (
            self.denominator_signature_for_word(word, pref)
        )
        signature_digest = stable_digest(signature_key)
        survivor_count = len(survivor_shapes)
        self.survivor_mask_histogram[survivor_count] += 1
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        self.survivor_shape_maps.add(
            f"sig={signature_digest}|survivors={survivor_bits}|{shape_map_key}"
        )

        tree = self.build_mask_tree(
            survivor_bits=survivor_bits,
            survivor_shape_by_mask=survivor_shape_by_mask,
        )
        self.mask_tree_shapes.add(tree.key)
        self.proof_tree_obligations.add(f"{signature_digest}|{tree.key}")
        for leaf_key in tree.leaf_keys:
            self.leaf_obligations.add(f"{signature_digest}|{leaf_key}")
            if leaf_key.startswith("B:"):
                self.bad_cube_leaf_shapes.add(leaf_key)
            else:
                self.farkas_leaf_shapes.add(leaf_key)

        self.tree_leaf_histogram[tree.leaf_count] += 1
        self.tree_depth_histogram[tree.max_depth] += 1
        self.max_survivors_per_farkas_leaf_histogram[
            tree.max_survivors_in_farkas_leaf
        ] += 1
        self.total_tree_leaves += tree.leaf_count
        self.total_bad_cube_leaves += tree.bad_cube_leaves
        self.total_farkas_leaves += tree.farkas_leaves
        self.total_branch_nodes += tree.branch_nodes
        self.total_point_farkas_leaves += tree.point_farkas_leaves
        self.max_tree_depth = max(self.max_tree_depth, tree.max_depth)
        self.max_tree_leaves = max(self.max_tree_leaves, tree.leaf_count)
        self.max_masks_in_bad_cube = max(
            self.max_masks_in_bad_cube,
            tree.max_masks_in_bad_cube,
        )
        self.max_survivors_in_farkas_leaf = max(
            self.max_survivors_in_farkas_leaf,
            tree.max_survivors_in_farkas_leaf,
        )

        for mask in range(64):
            self.translation_sign_assignments += 1
            if survivor_bits & (1 << mask):
                self.good_direction_masks += 1
                shape_digest = survivor_shape_by_mask[mask]
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word, mask
                )
                self.canonical_survivor_cases.add(
                    f"{word_key(canonical_word)}#{canonical_mask}"
                )
                if len(self.samples) < self.sample_limit:
                    self.samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                        "denominator_signature_digest": signature_digest,
                        "mask_tree_digest": stable_digest(tree.key),
                        "mask_tree_leaves": tree.leaf_count,
                        "max_denominator_degree": max_degree,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1
                elif all(denom > 0 for denom in denoms):
                    raise AssertionError("survivor bitset missed a GoodDirection mask")

    @staticmethod
    def planned_leaf_count(*trackers: DistinctTracker) -> tuple[int | None, int]:
        if any(tracker.exact_count is None for tracker in trackers):
            return None, max(tracker.lower_bound for tracker in trackers)
        return max(tracker.exact_count or 0 for tracker in trackers), max(
            tracker.lower_bound for tracker in trackers
        )

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        planned_exact, planned_lower = self.planned_leaf_count(
            self.proof_tree_obligations,
            self.leaf_obligations,
        )
        accepted = planned_exact is not None and planned_exact <= self.max_lean_leaves
        within_warning = (
            planned_exact is not None and planned_exact <= self.warn_lean_leaves
        )
        return {
            "schema_version": 1,
            "mode": "translation-survivor-mask-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "good_direction_impacts": "1..13",
                "emits_bad_direction_evidence": False,
                "denominator_model": (
                    "exact 64-mask truth tables; no linearity assumption"
                ),
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "canonical_survivor_cases": self.canonical_survivor_cases.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "mask_tree": {
                "total_tree_leaves": self.total_tree_leaves,
                "total_bad_cube_leaves": self.total_bad_cube_leaves,
                "total_farkas_leaves": self.total_farkas_leaves,
                "total_branch_nodes": self.total_branch_nodes,
                "total_point_farkas_leaves": self.total_point_farkas_leaves,
                "max_tree_depth": self.max_tree_depth,
                "max_tree_leaves": self.max_tree_leaves,
                "max_masks_in_bad_cube": self.max_masks_in_bad_cube,
                "max_survivors_in_farkas_leaf": self.max_survivors_in_farkas_leaf,
                "tree_leaf_histogram": dict(sorted(self.tree_leaf_histogram.items())),
                "tree_depth_histogram": dict(sorted(self.tree_depth_histogram.items())),
                "max_survivors_per_farkas_leaf_histogram": dict(
                    sorted(self.max_survivors_per_farkas_leaf_histogram.items())
                ),
                "unique_structural_tree_shapes": self.mask_tree_shapes.payload(),
                "unique_signature_tree_obligations": (
                    self.proof_tree_obligations.payload()
                ),
                "unique_signature_leaf_obligations": self.leaf_obligations.payload(),
                "unique_bad_cube_leaf_shapes": self.bad_cube_leaf_shapes.payload(),
                "unique_farkas_leaf_shapes": self.farkas_leaf_shapes.payload(),
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6h": accepted,
                "within_warning_gate": within_warning,
                "planned_lean_heavy_leaves_exact": planned_exact,
                "planned_lean_heavy_leaves_lower_bound": planned_lower,
                "notes": [
                    "This mode profiles mask-tree compression after GoodDirection.",
                    "It uses exact truth tables because denominator polynomials may be quadratic.",
                    "If signature-tree or leaf obligations remain above the gate, proceed to Phase 6I.",
                ],
            },
        }


class TranslationStateDagProfiler(TranslationSurvivorProfiler):
    """Dry-run profiler for Phase 6I translation word/state DAG sharing.

    The profiler is deliberately proof-agnostic.  It builds exact terminal
    obligations using the same GoodDirection/Farkas classification as Phase 6F,
    then hashes recursive prefix subtrees by remaining counts, current linear
    product, and child-node digests.  This measures whether a future generated
    theorem DAG would have enough sharing to be worth formalizing.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        super().__init__(
            limit=limit,
            max_lean_leaves=max_lean_leaves,
            warn_lean_leaves=warn_lean_leaves,
            max_distinct_tracked=max_distinct_tracked,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
            use_d4_transport=use_d4_transport,
        )
        self.nodes_visited = 0
        self.internal_nodes_visited = 0
        self.terminal_nodes_visited = 0
        self.nodes_by_depth: Counter[int] = Counter()
        self.terminal_kinds: Counter[str] = Counter()
        self.child_count_histogram: Counter[int] = Counter()
        self.subtree_width_histogram: Counter[int] = Counter()
        self.dag_nodes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.internal_dag_nodes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.terminal_dag_nodes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.identity_terminal_obligations = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.nonidentity_terminal_obligations = DistinctTracker(
            max_distinct_tracked,
            sample_limit,
        )
        self.node_reuse_counts: Counter[str] = Counter()
        self.max_depth = 0
        self.max_child_count = 0
        self.max_effective_width = 0
        self.partial_nodes = 0

    def terminal_key_for_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
    ) -> tuple[str, str]:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            self.terminal_kinds["nonidentity"] += 1
            key = "terminal:nonidentity"
            self.nonidentity_terminal_obligations.add(key)
            return "N", key

        self.identity_words += 1
        self.terminal_kinds["identity"] += 1
        signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask = (
            self.denominator_signature_for_word(word, pref)
        )
        signature_digest = stable_digest(signature_key)
        survivor_count = len(survivor_shapes)
        self.survivor_mask_histogram[survivor_count] += 1
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        obligation_key = (
            f"sig={signature_digest}|survivors={survivor_bits}|{shape_map_key}"
        )
        self.survivor_shape_maps.add(obligation_key)
        self.identity_terminal_obligations.add(obligation_key)

        for mask in range(64):
            self.translation_sign_assignments += 1
            if survivor_bits & (1 << mask):
                self.good_direction_masks += 1
                shape_digest = survivor_shape_by_mask[mask]
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word, mask
                )
                self.canonical_survivor_cases.add(
                    f"{word_key(canonical_word)}#{canonical_mask}"
                )
                if len(self.samples) < self.sample_limit:
                    self.samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                        "denominator_signature_digest": signature_digest,
                        "terminal_obligation_digest": stable_digest(obligation_key),
                        "max_denominator_degree": max_degree,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1
                elif all(denom > 0 for denom in denoms):
                    raise AssertionError("survivor bitset missed a GoodDirection mask")

        key = f"terminal:identity:{stable_digest(obligation_key)}"
        return "T", key

    def record_node(
        self,
        *,
        key: str,
        kind: str,
        depth: int,
        effective_width: int,
        child_count: int,
        partial: bool,
    ) -> str:
        digest = stable_digest(key)
        self.nodes_visited += 1
        self.nodes_by_depth[depth] += 1
        self.max_depth = max(self.max_depth, depth)
        self.max_effective_width = max(self.max_effective_width, effective_width)
        self.node_reuse_counts[digest] += 1
        self.dag_nodes.add(key)
        if kind == "internal":
            self.internal_nodes_visited += 1
            self.internal_dag_nodes.add(key)
            self.child_count_histogram[child_count] += 1
            self.max_child_count = max(self.max_child_count, child_count)
        else:
            self.terminal_nodes_visited += 1
            self.terminal_dag_nodes.add(key)
        if partial:
            self.partial_nodes += 1
        if effective_width <= 16:
            self.subtree_width_histogram[effective_width] += 1
        else:
            bucket = 1 << (effective_width.bit_length() - 1)
            self.subtree_width_histogram[bucket] += 1
        return digest

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> str | None:
            subtree_width = multinomial_count(remaining)
            rank_hi = rank_lo + subtree_width
            if rank_lo >= self.target_hi:
                return None
            effective_hi = min(rank_hi, self.target_hi)
            effective_width = effective_hi - rank_lo
            partial = effective_width != subtree_width
            depth = len(prefix)

            if depth == 13:
                terminal_kind, terminal_key = self.terminal_key_for_leaf(
                    rank_lo,
                    tuple(prefix),
                    list(pref),
                )
                key = (
                    f"leaf:{terminal_kind}:depth={depth}:"
                    f"width={effective_width}:partial={int(partial)}:{terminal_key}"
                )
                return self.record_node(
                    key=key,
                    kind="terminal",
                    depth=depth,
                    effective_width=effective_width,
                    child_count=0,
                    partial=partial,
                )

            child_lo = rank_lo
            child_entries: list[tuple[str, str]] = []
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                child_digest = rec(child_lo)
                if child_digest is not None:
                    child_entries.append((pair_id, child_digest))
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

            child_key = "|".join(
                f"{pair_id}:{digest}" for pair_id, digest in child_entries
            )
            key = (
                f"node:depth={depth}:remaining={counts_key(remaining)}:"
                f"lin={mat_key(pref[-1])}:partial={int(partial)}:"
                f"children={child_key}"
            )
            return self.record_node(
                key=key,
                kind="internal",
                depth=depth,
                effective_width=effective_width,
                child_count=len(child_entries),
                partial=partial,
            )

        rec(0)

    def reuse_payload(self) -> dict[str, Any]:
        reused = [count for count in self.node_reuse_counts.values() if count > 1]
        return {
            "node_digest_count": len(self.node_reuse_counts),
            "reused_node_count": len(reused),
            "max_reuse": max(reused, default=0),
            "total_reuse_hits": sum(count - 1 for count in reused),
        }

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        identity_exact = self.identity_terminal_obligations.exact_count
        internal_exact = self.internal_dag_nodes.exact_count
        if identity_exact is None or internal_exact is None:
            planned_exact = None
            planned_lower = max(
                self.identity_terminal_obligations.lower_bound,
                self.internal_dag_nodes.lower_bound,
            )
            combined_lower = (
                self.identity_terminal_obligations.lower_bound
                + self.internal_dag_nodes.lower_bound
            )
        else:
            planned_exact = identity_exact + internal_exact
            planned_lower = planned_exact
            combined_lower = planned_exact
        accepted = planned_exact is not None and planned_exact <= self.max_lean_leaves
        within_warning = (
            planned_exact is not None and planned_exact <= self.warn_lean_leaves
        )
        return {
            "schema_version": 1,
            "mode": "translation-state-dag-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": (
                    "started-face D4 for terminal Farkas-shape canonicalization"
                    if self.use_d4_transport else "none"
                ),
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "good_direction_impacts": "1..13",
                "emits_bad_direction_evidence": False,
                "state_key": [
                    "remaining pair counts",
                    "current pair-linear product",
                    "deterministic child-node digests",
                ],
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
                "nodes_visited": self.nodes_visited,
                "internal_nodes_visited": self.internal_nodes_visited,
                "terminal_nodes_visited": self.terminal_nodes_visited,
                "partial_nodes": self.partial_nodes,
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "canonical_survivor_cases": self.canonical_survivor_cases.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "state_dag": {
                "unique_dag_nodes": self.dag_nodes.payload(),
                "unique_internal_nodes": self.internal_dag_nodes.payload(),
                "unique_terminal_nodes": self.terminal_dag_nodes.payload(),
                "unique_identity_terminal_obligations": (
                    self.identity_terminal_obligations.payload()
                ),
                "unique_nonidentity_terminal_obligations": (
                    self.nonidentity_terminal_obligations.payload()
                ),
                "terminal_kinds": dict(sorted(self.terminal_kinds.items())),
                "nodes_by_depth": dict(sorted(self.nodes_by_depth.items())),
                "child_count_histogram": dict(sorted(self.child_count_histogram.items())),
                "subtree_width_histogram": dict(
                    sorted(self.subtree_width_histogram.items())
                ),
                "max_depth": self.max_depth,
                "max_child_count": self.max_child_count,
                "max_effective_width": self.max_effective_width,
                "reuse": self.reuse_payload(),
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6i": accepted,
                "within_warning_gate": within_warning,
                "planned_lean_heavy_leaves_exact": planned_exact,
                "planned_lean_heavy_leaves_lower_bound": planned_lower,
                "planned_identity_terminal_obligations": identity_exact,
                "planned_internal_dag_nodes": internal_exact,
                "planned_combined_lower_bound": combined_lower,
                "notes": [
                    "This mode profiles recursive word/state DAG sharing.",
                    "The profile is exact for the bounded window but is not proof evidence.",
                    "If combined identity-terminal and internal-node obligations remain above the gate, proceed to Phase 6J.",
                ],
            },
        }


class TranslationBadDirectionTreeProfiler:
    """Dry-run profiler for coarse translation bad-direction tiling.

    This mode does not emit Lean.  It tiles raw rank/mask cells that fail
    because some required translation impact denominator is nonpositive.  The
    tiling is intentionally rectangular so a future Lean emitter can target
    `TranslationCaseBox`-shaped evidence rather than one certificate per mask.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        sample_limit: int,
        progress_interval: int,
        audit_cell_cap: int = 2_000_000,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.audit_cell_cap = audit_cell_cap
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.failure_counts: Counter[str] = Counter()
        self.bad_direction_by_impact: Counter[int] = Counter()
        self.row_patterns = DistinctTracker(100_000, sample_limit)
        self.open_tiles: dict[tuple[int, int, int], int] = {}
        self.tiles: list[dict[str, int]] = []
        self.tile_samples: list[dict[str, int]] = []
        self.max_rank_width = 0
        self.max_mask_width = 0
        self.bad_direction_cells = 0
        self.audit_bad_cells: set[tuple[int, int]] | None = set()
        self.audit_disabled_reason: str | None = None

    def first_bad_impact(self, seq: list[str], b: tuple) -> int | None:
        prefixes = path_prefix_affs(seq)
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                return impact
        return None

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> tuple[str, int | None]:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return "badTranslationVector", None
        bad_impact = self.first_bad_impact(seq, b)
        if bad_impact is not None:
            return "badDirectionSign", bad_impact
        return "needsFarkas", None

    def mask_runs(self, impacts_by_mask: list[int | None]) -> list[tuple[int, int, int]]:
        runs: list[tuple[int, int, int]] = []
        start: int | None = None
        impact: int | None = None
        for mask, current in enumerate(impacts_by_mask + [None]):
            if current is not None and start is None:
                start = mask
                impact = current
                continue
            if current is not None and current == impact:
                continue
            if start is not None and impact is not None:
                runs.append((start, mask, impact))
            if current is None:
                start = None
                impact = None
            else:
                start = mask
                impact = current
        return runs

    def record_bad_cell_for_audit(self, rank: int, mask: int) -> None:
        if self.audit_bad_cells is None:
            return
        if len(self.audit_bad_cells) >= self.audit_cell_cap:
            self.audit_disabled_reason = (
                f"bad-direction audit exceeded cap {self.audit_cell_cap}"
            )
            self.audit_bad_cells = None
            return
        self.audit_bad_cells.add((rank, mask))

    def finalize_tile(self, key: tuple[int, int, int], end_rank: int) -> None:
        start_rank = self.open_tiles.pop(key)
        start_mask, end_mask, impact = key
        if start_rank >= end_rank:
            return
        rank_width = end_rank - start_rank
        mask_width = end_mask - start_mask
        self.max_rank_width = max(self.max_rank_width, rank_width)
        self.max_mask_width = max(self.max_mask_width, mask_width)
        tile = {
            "start_rank": start_rank,
            "end_rank": end_rank,
            "start_mask": start_mask,
            "end_mask": end_mask,
            "impact": impact,
            "area": rank_width * mask_width,
        }
        self.tiles.append(tile)
        if len(self.tile_samples) < self.sample_limit:
            self.tile_samples.append(tile)

    def update_open_tiles(
        self,
        rank: int,
        runs: list[tuple[int, int, int]],
    ) -> None:
        active = set(runs)
        for key in list(self.open_tiles):
            if key not in active:
                self.finalize_tile(key, rank)
        for key in runs:
            self.open_tiles.setdefault(key, rank)

    def close_all_tiles(self, rank: int) -> None:
        for key in list(self.open_tiles):
            self.finalize_tile(key, rank)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            self.close_all_tiles(rank)
            return

        self.identity_words += 1
        impacts_by_mask: list[int | None] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            failure, impact = self.classify_translation_case(word, mask, pref)
            self.failure_counts[failure] += 1
            if failure == "badDirectionSign":
                if impact is None:
                    raise AssertionError("badDirectionSign without impact")
                impacts_by_mask.append(impact)
                self.bad_direction_by_impact[impact] += 1
                self.bad_direction_cells += 1
                self.record_bad_cell_for_audit(rank, mask)
            else:
                impacts_by_mask.append(None)

        runs = self.mask_runs(impacts_by_mask)
        self.row_patterns.add("|".join(f"{lo}-{hi}@{impact}" for lo, hi, impact in runs))
        self.update_open_tiles(rank, runs)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)
        self.close_all_tiles(self.target_hi)

    def audit_payload(self) -> dict[str, Any]:
        tile_area = sum(tile["area"] for tile in self.tiles)
        payload: dict[str, Any] = {
            "bad_direction_cells": self.bad_direction_cells,
            "tile_area": tile_area,
            "area_matches_bad_direction_cells": tile_area == self.bad_direction_cells,
            "audit_exact": self.audit_bad_cells is not None,
            "audit_disabled_reason": self.audit_disabled_reason,
            "has_gaps": tile_area != self.bad_direction_cells,
            "has_overlaps": False,
        }
        if self.audit_bad_cells is not None:
            covered: set[tuple[int, int]] = set()
            overlaps = 0
            for tile in self.tiles:
                for rank in range(tile["start_rank"], tile["end_rank"]):
                    for mask in range(tile["start_mask"], tile["end_mask"]):
                        cell = (rank, mask)
                        if cell in covered:
                            overlaps += 1
                        covered.add(cell)
            missing = self.audit_bad_cells - covered
            extra = covered - self.audit_bad_cells
            payload.update({
                "covered_cells": len(covered),
                "missing_cells": len(missing),
                "extra_cells": len(extra),
                "overlap_cells": overlaps,
                "has_gaps": bool(missing),
                "has_overlaps": overlaps > 0 or bool(extra),
                "missing_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(missing)[: self.sample_limit]
                ],
                "extra_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(extra)[: self.sample_limit]
                ],
            })
        return payload

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        tile_count = len(self.tiles)
        ratio = (
            self.bad_direction_cells / tile_count
            if tile_count > 0 else None
        )
        return {
            "schema_version": 1,
            "mode": "translation-baddir-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.badDirectionSign",
                "symmetry": "raw rank/mask boxes; D4 transport not applied to boxes",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "cases_per_tile_ratio_min": 64.0,
                "audit_cell_cap": self.audit_cell_cap,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.failure_counts.items())),
                "bad_direction_by_impact": dict(sorted(self.bad_direction_by_impact.items())),
                "row_patterns": self.row_patterns.payload(),
            },
            "tiling": {
                "bad_direction_tiles": tile_count,
                "planned_lean_heavy_leaves": tile_count,
                "planned_lean_heavy_leaves_exact": tile_count,
                "max_rank_width": self.max_rank_width,
                "max_mask_width": self.max_mask_width,
                "cases_per_tile_ratio": ratio,
                "samples": self.tile_samples,
            },
            "audit": self.audit_payload(),
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


@dataclass(frozen=True)
class TranslationBadDirectionCellLabel:
    kind: str
    impact: int | None = None

    def key(self) -> str:
        return f"{self.kind}:{self.impact if self.impact is not None else '-'}"


class TranslationBadDirectionFamilyTreeProfiler:
    """Dry-run profiler for non-rectangular translation bad-direction families.

    This mode is deliberately profiler-only.  It searches for symbolic
    `(pair-word prefix, mask-bit cube, impact)` families that cover many
    identity-linear translation choices with the same nonpositive impact
    denominator.  It does not emit Lean and it does not rely on the rejected
    raw rectangular rank/mask tiling.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        sample_limit: int,
        progress_interval: int,
        min_cells_per_family: int = 64,
        audit_cell_cap: int = 2_000_000,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.min_cells_per_family = min_cells_per_family
        self.audit_cell_cap = audit_cell_cap
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.failure_counts: Counter[str] = Counter()
        self.bad_direction_by_impact: Counter[int] = Counter()
        self.identity_rank_labels: dict[int, tuple[TranslationBadDirectionCellLabel, ...]] = {}
        self.identity_rank_words: dict[int, tuple[str, ...]] = {}
        self.identity_ranks: list[int] = []
        self.family_count = 0
        self.family_cells = 0
        self.fallback_bad_direction_cells = 0
        self.max_prefix_width = 0
        self.max_mask_cube_size = 0
        self.max_family_cells = 0
        self.split_counts: Counter[str] = Counter()
        self.nodes_visited = 0
        self.nodes_by_depth: Counter[int] = Counter()
        self.samples: list[dict[str, Any]] = []
        self.fallback_samples: list[dict[str, Any]] = []
        self.audit_bad_cells: set[tuple[int, int]] | None = set()
        self.audit_family_cells: set[tuple[int, int]] | None = set()
        self.audit_fallback_cells: set[tuple[int, int]] | None = set()
        self.audit_disabled_reason: str | None = None

    def first_bad_impact(self, seq: list[str], b: tuple) -> int | None:
        prefixes = path_prefix_affs(seq)
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                return impact
        return None

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> TranslationBadDirectionCellLabel:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return TranslationBadDirectionCellLabel("badTranslationVector")
        bad_impact = self.first_bad_impact(seq, b)
        if bad_impact is not None:
            return TranslationBadDirectionCellLabel("badDirectionSign", bad_impact)
        return TranslationBadDirectionCellLabel("needsFarkas")

    @staticmethod
    def cube_masks(known_bits: int, value_bits: int) -> list[int]:
        masks: list[int] = []
        for mask in range(64):
            if (mask & known_bits) == (value_bits & known_bits):
                masks.append(mask)
        return masks

    @staticmethod
    def cube_size(known_bits: int) -> int:
        return 1 << (6 - known_bits.bit_count())

    def record_audit_cell(self, store_name: str, rank: int, mask: int) -> None:
        store = getattr(self, store_name)
        if store is None:
            return
        if len(store) >= self.audit_cell_cap:
            self.audit_disabled_reason = (
                f"symbolic bad-direction audit exceeded cap {self.audit_cell_cap}"
            )
            self.audit_bad_cells = None
            self.audit_family_cells = None
            self.audit_fallback_cells = None
            return
        store.add((rank, mask))

    def scan_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.identity_ranks.append(rank)
        self.identity_rank_words[rank] = word
        labels: list[TranslationBadDirectionCellLabel] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            label = self.classify_translation_case(word, mask, pref)
            labels.append(label)
            self.failure_counts[label.kind] += 1
            if label.kind == "badDirectionSign":
                if label.impact is None:
                    raise AssertionError("badDirectionSign without impact")
                self.bad_direction_by_impact[label.impact] += 1
                self.record_audit_cell("audit_bad_cells", rank, mask)
        self.identity_rank_labels[rank] = tuple(labels)

    def scan(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.scan_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def labels_for(
        self,
        ranks: list[int],
        masks: list[int],
    ) -> Counter[TranslationBadDirectionCellLabel]:
        counts: Counter[TranslationBadDirectionCellLabel] = Counter()
        for rank in ranks:
            row = self.identity_rank_labels[rank]
            for mask in masks:
                counts[row[mask]] += 1
        return counts

    @staticmethod
    def impurity_from_counts(counts: Counter[TranslationBadDirectionCellLabel]) -> int:
        total = sum(counts.values())
        if total == 0:
            return 0
        return total - max(counts.values())

    def child_rank_blocks(
        self,
        *,
        rank_lo: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
    ) -> list[tuple[str, int, int, list[int]]]:
        out: list[tuple[str, int, int, list[int]]] = []
        child_lo = rank_lo
        rank_index = 0
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            trial = dict(remaining)
            trial[pair_id] -= 1
            child_width = multinomial_count(trial)
            child_hi = child_lo + child_width
            while rank_index < len(ranks) and ranks[rank_index] < child_lo:
                rank_index += 1
            start = rank_index
            while rank_index < len(ranks) and ranks[rank_index] < child_hi:
                rank_index += 1
            child_ranks = ranks[start:rank_index]
            if child_ranks:
                out.append((pair_id, child_lo, child_hi, child_ranks))
            child_lo = child_hi
        return out

    def best_mask_split(
        self,
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> tuple[int, int] | None:
        best: tuple[int, int] | None = None
        for bit in range(6):
            bit_mask = 1 << bit
            if known_bits & bit_mask:
                continue
            left_masks = self.cube_masks(known_bits | bit_mask, value_bits & ~bit_mask)
            right_masks = self.cube_masks(known_bits | bit_mask, value_bits | bit_mask)
            impurity = (
                self.impurity_from_counts(self.labels_for(ranks, left_masks)) +
                self.impurity_from_counts(self.labels_for(ranks, right_masks))
            )
            if best is None or impurity < best[1]:
                best = (bit, impurity)
        return best

    def rank_split_impurity(
        self,
        children: list[tuple[str, int, int, list[int]]],
        masks: list[int],
    ) -> int:
        return sum(
            self.impurity_from_counts(self.labels_for(child_ranks, masks))
            for _pair_id, _lo, _hi, child_ranks in children
        )

    def record_family(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        known_bits: int,
        value_bits: int,
        impact: int,
    ) -> None:
        cells = len(ranks) * len(masks)
        self.family_count += 1
        self.family_cells += cells
        self.max_prefix_width = max(self.max_prefix_width, rank_hi - rank_lo)
        self.max_mask_cube_size = max(self.max_mask_cube_size, len(masks))
        self.max_family_cells = max(self.max_family_cells, cells)
        for rank in ranks:
            for mask in masks:
                self.record_audit_cell("audit_family_cells", rank, mask)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank_lo": rank_lo,
                "rank_hi": rank_hi,
                "prefix": word_key(tuple(prefix)),
                "prefix_depth": len(prefix),
                "identity_rank_count": len(ranks),
                "known_bits": known_bits,
                "value_bits": value_bits & known_bits,
                "mask_count": len(masks),
                "impact": impact,
                "cells": cells,
            })

    def record_fallback(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        reason: str,
    ) -> None:
        count = 0
        for rank in ranks:
            row = self.identity_rank_labels[rank]
            for mask in masks:
                if row[mask].kind == "badDirectionSign":
                    count += 1
                    self.record_audit_cell("audit_fallback_cells", rank, mask)
        self.fallback_bad_direction_cells += count
        if count > 0 and len(self.fallback_samples) < self.sample_limit:
            self.fallback_samples.append({
                "rank_lo": rank_lo,
                "rank_hi": rank_hi,
                "prefix": word_key(tuple(prefix)),
                "prefix_depth": len(prefix),
                "mask_count": len(masks),
                "bad_direction_cells": count,
                "reason": reason,
            })

    def compress_node(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> None:
        self.nodes_visited += 1
        self.nodes_by_depth[len(prefix)] += 1
        if not ranks:
            return
        masks = self.cube_masks(known_bits, value_bits)
        if not masks:
            return
        counts = self.labels_for(ranks, masks)
        bad_count = sum(
            count for label, count in counts.items()
            if label.kind == "badDirectionSign"
        )
        if bad_count == 0:
            return
        if len(counts) == 1:
            label = next(iter(counts))
            cells = counts[label]
            if label.kind == "badDirectionSign" and cells >= self.min_cells_per_family:
                if label.impact is None:
                    raise AssertionError("uniform badDirectionSign without impact")
                self.record_family(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                    impact=label.impact,
                )
            else:
                self.record_fallback(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    reason="uniform family below cell gate",
                )
            return

        children = (
            self.child_rank_blocks(
                rank_lo=rank_lo,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
            )
            if len(prefix) < 13 else []
        )
        rank_impurity = (
            self.rank_split_impurity(children, masks) if children else None
        )
        mask_split = self.best_mask_split(ranks, known_bits, value_bits)
        mask_impurity = mask_split[1] if mask_split is not None else None

        split_kind: str | None = None
        if rank_impurity is not None and mask_impurity is not None:
            if rank_impurity < mask_impurity:
                split_kind = "rank"
            elif mask_impurity < rank_impurity:
                split_kind = "mask"
            else:
                split_kind = "rank" if len(ranks) >= len(masks) else "mask"
        elif rank_impurity is not None:
            split_kind = "rank"
        elif mask_impurity is not None:
            split_kind = "mask"

        if split_kind == "rank":
            self.split_counts["rank"] += 1
            for pair_id, child_lo, child_hi, child_ranks in children:
                next_remaining = dict(remaining)
                next_remaining[pair_id] -= 1
                self.compress_node(
                    rank_lo=child_lo,
                    rank_hi=child_hi,
                    prefix=prefix + [pair_id],
                    remaining=next_remaining,
                    ranks=child_ranks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                )
            return

        if split_kind == "mask" and mask_split is not None:
            self.split_counts["mask"] += 1
            bit = mask_split[0]
            bit_mask = 1 << bit
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits & ~bit_mask,
            )
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits | bit_mask,
            )
            return

        self.record_fallback(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            reason="no remaining symbolic split",
        )

    def compress(self) -> None:
        self.identity_ranks.sort()
        self.compress_node(
            rank_lo=0,
            rank_hi=self.target_hi,
            prefix=[],
            remaining=dict(PAIR_COUNTS),
            ranks=list(self.identity_ranks),
            known_bits=0,
            value_bits=0,
        )

    def traverse(self) -> None:
        self.scan()
        self.compress()

    def audit_payload(self) -> dict[str, Any]:
        bad_total = self.failure_counts["badDirectionSign"]
        covered = self.family_cells
        fallback = self.fallback_bad_direction_cells
        payload: dict[str, Any] = {
            "bad_direction_cells": bad_total,
            "family_cells": covered,
            "fallback_bad_direction_cells": fallback,
            "covered_plus_fallback_cells": covered + fallback,
            "area_matches_bad_direction_cells": covered + fallback == bad_total,
            "audit_exact": (
                self.audit_bad_cells is not None and
                self.audit_family_cells is not None and
                self.audit_fallback_cells is not None
            ),
            "audit_disabled_reason": self.audit_disabled_reason,
            "has_gaps": covered + fallback != bad_total,
            "has_overlaps": False,
        }
        if (
            self.audit_bad_cells is not None and
            self.audit_family_cells is not None and
            self.audit_fallback_cells is not None
        ):
            overlap = self.audit_family_cells & self.audit_fallback_cells
            union = self.audit_family_cells | self.audit_fallback_cells
            missing = self.audit_bad_cells - union
            extra = union - self.audit_bad_cells
            payload.update({
                "missing_cells": len(missing),
                "extra_cells": len(extra),
                "overlap_cells": len(overlap),
                "has_gaps": bool(missing),
                "has_overlaps": bool(extra) or bool(overlap),
                "missing_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(missing)[: self.sample_limit]
                ],
                "extra_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(extra)[: self.sample_limit]
                ],
                "overlap_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(overlap)[: self.sample_limit]
                ],
            })
        return payload

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        ratio = (
            self.family_cells / self.family_count
            if self.family_count > 0 else None
        )
        return {
            "schema_version": 1,
            "mode": "translation-baddir-family-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.badDirectionSign",
                "symmetry": "symbolic prefix and mask-bit cubes; D4 transport not yet applied",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "min_cells_per_family": self.min_cells_per_family,
                "audit_cell_cap": self.audit_cell_cap,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.failure_counts.items())),
                "bad_direction_by_impact": dict(sorted(self.bad_direction_by_impact.items())),
            },
            "symbolic_tree": {
                "nodes_visited": self.nodes_visited,
                "nodes_by_depth": dict(sorted(self.nodes_by_depth.items())),
                "split_counts": dict(sorted(self.split_counts.items())),
                "symbolic_families": self.family_count,
                "planned_lean_heavy_leaves": self.family_count,
                "planned_lean_heavy_leaves_exact": self.family_count,
                "family_cells": self.family_cells,
                "average_cells_per_family": ratio,
                "max_family_cells": self.max_family_cells,
                "max_prefix_width": self.max_prefix_width,
                "max_mask_cube_size": self.max_mask_cube_size,
                "fallback_bad_direction_cells": self.fallback_bad_direction_cells,
                "samples": self.samples,
                "fallback_samples": self.fallback_samples,
            },
            "audit": self.audit_payload(),
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


@dataclass(frozen=True)
class TranslationBadDirectionCommonImpactLabel:
    kind: str
    bad_mask: int = 0

    def key(self) -> str:
        return f"{self.kind}:{self.bad_mask}"


class TranslationBadDirectionCommonImpactTreeProfiler(
    TranslationBadDirectionFamilyTreeProfiler
):
    """Dry-run profiler for common-impact bad-direction families.

    A symbolic family is accepted when every cell in its prefix/mask domain has
    a common nonpositive impact denominator.  This relaxes the rejected Phase 6C
    "same first bad impact" rule while preserving a simple prospective Lean
    witness: one fixed impact index for the whole family.
    """

    ALL_IMPACTS_MASK = (1 << 13) - 1

    def __init__(self, **kwargs: Any) -> None:
        super().__init__(**kwargs)
        self.common_impact_counts: Counter[int] = Counter()

    @staticmethod
    def impact_bit(impact: int) -> int:
        if not (1 <= impact <= 13):
            raise ValueError(f"impact must be in 1..13, got {impact}")
        return 1 << (impact - 1)

    @staticmethod
    def first_impact_from_mask(mask: int) -> int:
        if mask == 0:
            raise ValueError("empty impact mask")
        return (mask & -mask).bit_length()

    def bad_impact_mask(self, seq: list[str], b: tuple) -> int:
        prefixes = path_prefix_affs(seq)
        mask = 0
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                mask |= self.impact_bit(impact)
        return mask

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> TranslationBadDirectionCommonImpactLabel:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return TranslationBadDirectionCommonImpactLabel("badTranslationVector")
        bad_mask = self.bad_impact_mask(seq, b)
        if bad_mask != 0:
            return TranslationBadDirectionCommonImpactLabel(
                "badDirectionSign", bad_mask
            )
        return TranslationBadDirectionCommonImpactLabel("needsFarkas")

    @staticmethod
    def impurity_from_counts(
        counts: Counter[TranslationBadDirectionCommonImpactLabel],
    ) -> int:
        total = sum(counts.values())
        if total == 0:
            return 0
        coverage_by_impact: Counter[int] = Counter()
        for label, count in counts.items():
            if label.kind != "badDirectionSign":
                continue
            for impact in range(1, 14):
                if label.bad_mask & TranslationBadDirectionCommonImpactTreeProfiler.impact_bit(impact):
                    coverage_by_impact[impact] += count
        best = max(coverage_by_impact.values(), default=0)
        return total - best

    def common_bad_mask(
        self,
        counts: Counter[TranslationBadDirectionCommonImpactLabel],
    ) -> int:
        if not counts:
            return 0
        mask = self.ALL_IMPACTS_MASK
        for label, count in counts.items():
            if count <= 0:
                continue
            if label.kind != "badDirectionSign":
                return 0
            mask &= label.bad_mask
            if mask == 0:
                return 0
        return mask

    def scan_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.identity_ranks.append(rank)
        self.identity_rank_words[rank] = word
        labels: list[TranslationBadDirectionCommonImpactLabel] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            label = self.classify_translation_case(word, mask, pref)
            labels.append(label)
            self.failure_counts[label.kind] += 1
            if label.kind == "badDirectionSign":
                for impact in range(1, 14):
                    if label.bad_mask & self.impact_bit(impact):
                        self.bad_direction_by_impact[impact] += 1
                self.record_audit_cell("audit_bad_cells", rank, mask)
        self.identity_rank_labels[rank] = tuple(labels)

    def record_family(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        known_bits: int,
        value_bits: int,
        impact: int,
    ) -> None:
        self.common_impact_counts[impact] += 1
        super().record_family(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            known_bits=known_bits,
            value_bits=value_bits,
            impact=impact,
        )

    def compress_node(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> None:
        self.nodes_visited += 1
        self.nodes_by_depth[len(prefix)] += 1
        if not ranks:
            return
        masks = self.cube_masks(known_bits, value_bits)
        if not masks:
            return
        counts = self.labels_for(ranks, masks)
        bad_count = sum(
            count for label, count in counts.items()
            if label.kind == "badDirectionSign"
        )
        if bad_count == 0:
            return

        common_mask = self.common_bad_mask(counts)
        cells = sum(counts.values())
        if common_mask != 0:
            if cells >= self.min_cells_per_family:
                self.record_family(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                    impact=self.first_impact_from_mask(common_mask),
                )
            else:
                self.record_fallback(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    reason="common-impact family below cell gate",
                )
            return

        children = (
            self.child_rank_blocks(
                rank_lo=rank_lo,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
            )
            if len(prefix) < 13 else []
        )
        rank_impurity = (
            self.rank_split_impurity(children, masks) if children else None
        )
        mask_split = self.best_mask_split(ranks, known_bits, value_bits)
        mask_impurity = mask_split[1] if mask_split is not None else None

        split_kind: str | None = None
        if rank_impurity is not None and mask_impurity is not None:
            if rank_impurity < mask_impurity:
                split_kind = "rank"
            elif mask_impurity < rank_impurity:
                split_kind = "mask"
            else:
                split_kind = "rank" if len(ranks) >= len(masks) else "mask"
        elif rank_impurity is not None:
            split_kind = "rank"
        elif mask_impurity is not None:
            split_kind = "mask"

        if split_kind == "rank":
            self.split_counts["rank"] += 1
            for pair_id, child_lo, child_hi, child_ranks in children:
                next_remaining = dict(remaining)
                next_remaining[pair_id] -= 1
                self.compress_node(
                    rank_lo=child_lo,
                    rank_hi=child_hi,
                    prefix=prefix + [pair_id],
                    remaining=next_remaining,
                    ranks=child_ranks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                )
            return

        if split_kind == "mask" and mask_split is not None:
            self.split_counts["mask"] += 1
            bit = mask_split[0]
            bit_mask = 1 << bit
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits & ~bit_mask,
            )
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits | bit_mask,
            )
            return

        self.record_fallback(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            reason="no remaining common-impact split",
        )

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        payload = super().payload(
            elapsed_seconds=elapsed_seconds,
            rejected=rejected,
            reject_reasons=reject_reasons,
        )
        payload["mode"] = "translation-baddir-common-impact-tree-profile"
        payload["options"]["symmetry"] = (
            "common-impact prefix and mask-bit cubes; D4 transport not yet applied"
        )
        payload["options"]["family_rule"] = (
            "all cells in a family share at least one nonpositive impact denominator"
        )
        payload["classification"]["bad_direction_by_impact"] = dict(
            sorted(self.bad_direction_by_impact.items())
        )
        payload["symbolic_tree"]["common_impact_family_counts"] = dict(
            sorted(self.common_impact_counts.items())
        )
        return payload


class SymmetryCompressionProfiler:
    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.unique_canonical_prefixes_by_depth: dict[int, DistinctTracker] = {
            depth: DistinctTracker(max_distinct_tracked, sample_limit) for depth in range(14)
        }
        self.canonical_prefix_nodes = 0
        self.noncanonical_prefix_nodes = 0
        self.max_depth = 0
        self.pair_words = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.translation_sign_assignments = 0
        self.nonidentity_canonical_words = DistinctTracker(max_distinct_tracked, sample_limit)
        self.translation_canonical_choices = DistinctTracker(max_distinct_tracked, sample_limit)
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_family_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_direction_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_balance_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_residual_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.farkas_shape_reuse_samples: dict[str, dict[str, Any]] = {}
        self.failure_counts: Counter[str] = Counter()
        self.nonidentity_failure_counts: Counter[str] = Counter()
        self.translation_failure_counts: Counter[str] = Counter()
        self.translation_mask_orbit_histogram: Counter[int] = Counter()
        self.pair_word_orbit_histogram: Counter[int] = Counter()
        self.tiles = TileAccumulator(self.target_hi, sample_limit)

    def canonical_prefix(self, prefix: tuple[str, ...]) -> tuple[str, ...]:
        canonical, _ = canonical_word_with_symmetry(prefix)
        return canonical

    def record_prefix(self, prefix: tuple[str, ...], lo: int, hi: int) -> None:
        _ = lo, hi
        depth = len(prefix)
        self.prefix_nodes += 1
        self.prefix_nodes_by_depth[depth] += 1
        self.max_depth = max(self.max_depth, depth)
        canonical = self.canonical_prefix(prefix)
        self.unique_canonical_prefixes_by_depth[depth].add(word_key(canonical))
        if canonical == prefix:
            self.canonical_prefix_nodes += 1
        else:
            self.noncanonical_prefix_nodes += 1
        if depth == 13:
            orbit = {tuple(sym_word(sym, list(prefix))) for sym in STARTED_SYMS}
            self.pair_word_orbit_histogram[len(orbit)] += 1

    @lru_cache(maxsize=200_000)
    def classify_nonidentity_canonical(self, word: tuple[str, ...]) -> tuple[str, str]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        matrix_text = mat_key(matrix)
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            return "noFixedAxis", f"nonid|noFixedAxis|M={matrix_text}"

        final_dot = final_axis_dot(raw_word, axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        sign_pattern = sign_pattern_key(raw_word, axis, pref)
        if final_dot == 0:
            return (
                "badDirectionSign",
                "nonid|badDirectionSign"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}|zeroAt=final",
            )
        zero_index = first_axis_zero_index(raw_word, axis, pref)
        if zero_index is not None:
            return (
                "badDirectionSign",
                "nonid|badDirectionSign"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
                f"|zeroAt={zero_index}|remaining={counts_key(remaining_counts_after(raw_word, zero_index))}",
            )
        forced_seq = forced_sequence_from_axis(raw_word, axis, pref)
        if len(set(forced_seq)) != 14:
            return (
                "badPairBalance",
                "nonid|badPairBalance"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
                f"|seq={seq_key(forced_seq)}",
            )
        return (
            "needsAxisSolveOrSimulation",
            "nonid|needsAxisSolveOrSimulation"
            f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
            f"|seq={seq_key(forced_seq)}",
        )

    @lru_cache(maxsize=200_000)
    def classify_translation_canonical(self, word: tuple[str, ...], mask: int) -> tuple[str, str, str | None]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        b, seq = translation_vector(raw_word, mask, pref)
        prefixes = path_prefix_affs(seq)
        b_text = vec_key(b)
        seq_text = seq_key(seq)
        denom_pattern = denom_pattern_key(seq, b, prefixes)
        base = f"trans|b={b_text}|seq={seq_text}|denoms={denom_pattern}"
        if b == ZERO_VEC:
            return "badTranslationVector", f"{base}|badTranslationVector", None
        if any(impact_denom(seq, b, impact, prefixes) <= 0 for impact in range(1, 14)):
            return "badDirectionSign", f"{base}|badDirectionSign", None
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return "needsFarkas", f"{base}|needsFarkas|shape={shape_digest}", shape

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words += 1
        if self.progress_interval and self.pair_words % self.progress_interval == 0:
            print(f"profiled {self.pair_words:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words += 1
            canonical_word, sym_id = canonical_word_with_symmetry(word)
            self.nonidentity_canonical_words.add(word_key(canonical_word))
            failure, family_key = self.classify_nonidentity_canonical(canonical_word)
            transported_family_key = f"sym={sym_id}|{family_key}"
            self.nonidentity_failure_counts[failure] += 1
            self.failure_counts[f"nonidentity.{failure}"] += 1
            self.heavy_families.add(family_key)
            self.nonidentity_family_shapes.add(family_key)
            if failure == "badDirectionSign":
                self.nonidentity_bad_direction_shapes.add(family_key)
            elif failure == "badPairBalance":
                self.nonidentity_bad_balance_shapes.add(family_key)
            else:
                self.nonidentity_residual_shapes.add(family_key)
            self.tiles.add(rank, rank + 1, "nonidentity", transported_family_key)
            return

        self.identity_words += 1
        canonical_pair_word, sym_id = canonical_word_with_symmetry(word)
        mask_family_digests: list[str] = []
        raw_orbit_sizes: list[int] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            canonical_word, canonical_mask, mask_sym_id = canonical_translation_with_symmetry(word, mask)
            self.translation_canonical_choices.add(f"{word_key(canonical_word)}#{canonical_mask}")
            orbit = {
                (tuple(transported_word), transported_choice)
                for sym in STARTED_SYMS
                for transported_word, transported_choice in [transported_mask(sym, list(word), mask)]
            }
            raw_orbit_sizes.append(len(orbit))
            failure, family_key, shape = self.classify_translation_canonical(canonical_word, canonical_mask)
            transported_family_key = f"sym={mask_sym_id}|mask={canonical_mask}|{family_key}"
            self.translation_failure_counts[failure] += 1
            self.failure_counts[f"translation.{failure}"] += 1
            if shape is None:
                self.heavy_families.add(family_key)
            else:
                self.heavy_families.add(f"farkasShape|{stable_digest(shape)}")
            mask_family_digests.append(stable_digest(transported_family_key))
            if shape is not None:
                self.farkas_shapes.add(shape)
                shape_digest = stable_digest(shape)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                self.farkas_shape_reuse_samples.setdefault(shape_digest, {
                    "shape_digest": shape_digest,
                    "raw_rank": rank,
                    "raw_word": word_key(word),
                    "raw_mask": mask,
                    "canonical_word": word_key(canonical_word),
                    "canonical_mask": canonical_mask,
                    "failure_key_digest": stable_digest(family_key),
                })
        for size in raw_orbit_sizes:
            self.translation_mask_orbit_histogram[size] += 1
        rank_family_key = (
            f"translationRank|sym={sym_id}|word={word_key(canonical_pair_word)}"
            f"|maskFamilies={stable_digest('|'.join(sorted(mask_family_digests)))}"
        )
        self.tiles.add(rank, rank + 1, "translation", rank_family_key)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            clipped_hi = min(rank_hi, self.target_hi)
            self.record_prefix(tuple(prefix), rank_lo, clipped_hi)
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def farkas_shape_reuse_payload(self) -> dict[str, Any]:
        total = sum(self.farkas_shape_reuse_counts.values())
        shared = sorted(
            (
                (digest, count)
                for digest, count in self.farkas_shape_reuse_counts.items()
                if count > 1
            ),
            key=lambda item: (-item[1], item[0]),
        )
        sample_shared_shapes: list[dict[str, Any]] = []
        for digest, count in shared[: self.sample_limit]:
            sample = dict(self.farkas_shape_reuse_samples.get(digest, {}))
            sample["shape_digest"] = digest
            sample["count"] = count
            sample_shared_shapes.append(sample)
        return {
            "needs_farkas_cases": total,
            "shape_count": len(self.farkas_shape_reuse_counts),
            "shared_shape_count": len(shared),
            "max_reuse": max(self.farkas_shape_reuse_counts.values(), default=0),
            "sample_shared_shapes": sample_shared_shapes,
        }

    def build_payload(self, *, elapsed_seconds: float, rejected: bool, reject_reasons: list[str]) -> dict[str, Any]:
        unique_prefix_payload = {
            str(depth): tracker.payload()
            for depth, tracker in self.unique_canonical_prefixes_by_depth.items()
            if self.prefix_nodes_by_depth[depth] > 0
        }
        planned_heavy_leaves = self.heavy_families.exact_count
        planned_heavy_lower = self.heavy_families.lower_bound
        return {
            "schema_version": 1,
            "mode": "symmetry-compression-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "symmetry": "started-face D4",
                "reversal_enabled": False,
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words": self.pair_words,
                "identity_linear_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "canonical_prefixes_seen": self.canonical_prefix_nodes,
                "canonical_prefix_nodes": self.canonical_prefix_nodes,
                "noncanonical_prefix_nodes_transported": self.noncanonical_prefix_nodes,
                "noncanonical_prefixes_transported": self.noncanonical_prefix_nodes,
                "unique_canonical_prefixes_by_depth": unique_prefix_payload,
                "canonical_dead_prefixes": 0,
                "canonical_depth13_residuals": self.nonidentity_words + self.identity_words,
                "prefix_pruning_note": (
                    "Phase 3 profiler applies no speculative prefix kills; unsupported "
                    "prefixes are classified exactly at depth 13."
                ),
            },
            "d4": {
                "pair_word_orbit_histogram": dict(sorted(self.pair_word_orbit_histogram.items())),
                "translation_mask_orbit_histogram": dict(sorted(self.translation_mask_orbit_histogram.items())),
                "canonical_pair_words": self.nonidentity_canonical_words.payload(),
                "canonical_translation_choices": self.translation_canonical_choices.payload(),
            },
            "classification": {
                "failure_counts": dict(sorted(self.failure_counts.items())),
                "nonidentity_failure_counts": dict(sorted(self.nonidentity_failure_counts.items())),
                "translation_failure_counts": dict(sorted(self.translation_failure_counts.items())),
                "identity_linear_words": self.identity_words,
                "nonidentity_family_shapes": self.nonidentity_family_shapes.payload(),
                "bad_direction_family_candidates": self.nonidentity_bad_direction_shapes.payload(),
                "bad_balance_family_candidates": self.nonidentity_bad_balance_shapes.payload(),
                "residual_family_shapes": self.nonidentity_residual_shapes.payload(),
                "nonidentity_planned_heavy_leaves":
                    self.nonidentity_family_shapes.exact_count
                    if self.nonidentity_family_shapes.exact_count is not None
                    else f">{self.nonidentity_family_shapes.lower_bound - 1}",
                "translation_cases_after_symmetry": self.translation_canonical_choices.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": self.farkas_shape_reuse_payload(),
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": planned_heavy_leaves,
                "planned_lean_heavy_leaves_lower_bound": planned_heavy_lower,
                "planned_lean_heavy_leaves": planned_heavy_leaves
                if planned_heavy_leaves is not None
                else f">{planned_heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


def validate_options(args: argparse.Namespace) -> None:
    if not args.dry_run:
        raise SystemExit("Phase 3 only supports --dry-run; Lean emission belongs to a later phase")
    mode_count = sum([
        bool(args.prefix_kill_tree),
        bool(args.translation_farkas_tree),
        bool(args.translation_baddir_tree),
        bool(args.translation_baddir_family_tree),
        bool(args.translation_baddir_common_impact_tree),
        bool(args.translation_survivors),
        bool(args.translation_pseudoboolean),
        bool(args.translation_lifted_pb_search),
        bool(args.translation_survivor_mask_tree),
        bool(args.translation_state_dag),
        bool(args.nonidentity_terminal_algebra),
        bool(args.nonidentity_state_cone_tree),
        bool(args.nonidentity_empty_cone_tree),
        bool(args.nonidentity_d26_audit),
        bool(args.terminal_residual_census),
    ])
    if mode_count > 1:
        raise SystemExit(
            "--prefix-kill-tree, --translation-farkas-tree, "
            "--translation-baddir-tree, --translation-baddir-family-tree, "
            "--translation-baddir-common-impact-tree, and "
            "--translation-survivors, --translation-pseudoboolean, "
            "--translation-lifted-pb-search, "
            "--translation-survivor-mask-tree, "
            "--translation-state-dag, --nonidentity-terminal-algebra, "
            "--nonidentity-state-cone-tree, "
            "--nonidentity-empty-cone-tree, "
            "--nonidentity-d26-audit, and --terminal-residual-census "
            "are mutually exclusive"
        )
    if args.rank_start != 0 and not (
        args.nonidentity_d26_audit
        or args.terminal_residual_census
        or args.nonidentity_terminal_algebra
    ):
        raise SystemExit(
            "--rank-start is currently supported only with "
            "--nonidentity-d26-audit, --terminal-residual-census, "
            "or --nonidentity-terminal-algebra"
        )
    if not (0 <= args.rank_start <= EXPECTED_PAIR_WORDS):
        raise SystemExit(f"--rank-start must be between 0 and {EXPECTED_PAIR_WORDS}")
    if args.limit is not None and not (0 <= args.limit <= EXPECTED_PAIR_WORDS):
        raise SystemExit(f"--limit must be between 0 and {EXPECTED_PAIR_WORDS}")
    if args.max_lean_leaves <= 0:
        raise SystemExit("--max-lean-leaves must be positive")
    if args.warn_lean_leaves <= 0:
        raise SystemExit("--warn-lean-leaves must be positive")
    if args.sample_limit < 0:
        raise SystemExit("--sample-limit must be nonnegative")
    if args.max_distinct_tracked <= args.max_lean_leaves:
        raise SystemExit("--max-distinct-tracked must be greater than --max-lean-leaves")
    if args.max_prefix_probe_ranks <= 0:
        raise SystemExit("--max-prefix-probe-ranks must be positive")
    if args.max_residual_leaf_width < 0:
        raise SystemExit("--max-residual-leaf-width must be nonnegative")
    if not (0 <= args.min_residual_depth <= 13):
        raise SystemExit("--min-residual-depth must be between 0 and 13")
    if not (0 <= args.max_empty_cone_depth <= 13):
        raise SystemExit("--max-empty-cone-depth must be between 0 and 13")
    if not (0 <= args.max_state_cone_depth <= 13):
        raise SystemExit("--max-state-cone-depth must be between 0 and 13")
    if args.max_state_cone_states <= 0:
        raise SystemExit("--max-state-cone-states must be positive")
    if args.max_linear_fm_constraints <= 0:
        raise SystemExit("--max-linear-fm-constraints must be positive")


def decision_reasons(profiler: SymmetryCompressionProfiler) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    reuse = profiler.farkas_shape_reuse_payload()
    if reuse["needs_farkas_cases"] > 0 and reuse["shared_shape_count"] == 0:
        reasons.append("no reused normalized Farkas shape observed in bounded sample")
    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if profiler.limit is None:
        if heavy_exact is None:
            reasons.append(
                "planned Lean heavy leaves exceeded tracking cap "
                f"(lower bound {heavy_lower})"
            )
        elif heavy_exact > profiler.max_lean_leaves:
            reasons.append(
                f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
            )
        elif heavy_exact > profiler.warn_lean_leaves:
            reasons.append(
                f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
                f"{profiler.warn_lean_leaves}"
            )
        if profiler.pair_words != EXPECTED_PAIR_WORDS:
            reasons.append(
                f"pair-word count {profiler.pair_words} does not match expected {EXPECTED_PAIR_WORDS}"
            )
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def prefix_kill_decision_reasons(
    profiler: PrefixKillTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if heavy_exact is None:
        reasons.append(
            "planned Lean heavy leaves exceeded tracking cap "
            f"(lower bound {heavy_lower})"
        )
    elif heavy_exact > profiler.max_lean_leaves:
        reasons.append(
            f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
        )
    elif heavy_exact > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    residual_ratio = (
        profiler.residual_fallback_width / profiler.target_hi
        if profiler.target_hi > 0 else 0
    )
    if residual_ratio > 0.10:
        reasons.append(
            "residual fallback rank ratio "
            f"{residual_ratio:.3f} exceeds max 0.100"
        )
    if profiler.max_prefix_kill_width <= 3 and profiler.target_hi >= 5000:
        reasons.append(
            "largest prefix kill width is still at most 3; prefix templates are too weak"
        )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def empty_cone_decision_reasons(
    profiler: EmptyConePrefixProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if heavy_exact is None:
        reasons.append(
            "planned Lean heavy leaves exceeded tracking cap "
            f"(lower bound {heavy_lower})"
        )
    elif heavy_exact > profiler.max_lean_leaves:
        reasons.append(
            f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
        )
    elif heavy_exact > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    residual_ratio = (
        profiler.residual_width / profiler.target_hi
        if profiler.target_hi > 0 else 0
    )
    if residual_ratio > 0.10:
        reasons.append(
            "residual fallback rank ratio "
            f"{residual_ratio:.3f} exceeds max 0.100"
        )
    if profiler.empty_cone_prefixes == 0 and profiler.target_hi > 0:
        reasons.append("no empty-cone prefix kills found")
    if profiler.max_empty_cone_width <= 3 and profiler.target_hi >= 5000:
        reasons.append(
            "largest empty-cone prefix kill width is still at most 3"
        )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_farkas_decision_reasons(
    profiler: TranslationFarkasTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")

    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if heavy_exact is None:
        reasons.append(
            "planned Lean heavy leaves exceeded tracking cap "
            f"(lower bound {heavy_lower})"
        )
    elif heavy_exact > profiler.max_lean_leaves:
        reasons.append(
            f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
        )
    elif heavy_exact > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )

    reuse = profiler.farkas_shape_reuse_payload()
    if reuse["needs_farkas_cases"] > 0 and reuse["shared_shape_count"] == 0:
        reasons.append("no reused normalized Farkas shape observed in bounded sample")
    if reuse["needs_farkas_cases"] > 0 and reuse["max_reuse"] < 2:
        reasons.append("normalized Farkas shape sharing is too weak: max reuse is below 2")

    if heavy_exact not in {None, 0}:
        compression = profiler.translation_sign_assignments / heavy_exact
        if compression < 8.0:
            reasons.append(
                "case-to-heavy-leaf compression ratio "
                f"{compression:.3f} is below the D4-scale gate 8.000"
            )

    if profiler.limit is None:
        if profiler.pair_words_scanned != EXPECTED_PAIR_WORDS:
            reasons.append(
                f"pair-word count {profiler.pair_words_scanned} does not match expected "
                f"{EXPECTED_PAIR_WORDS}"
            )
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )

    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_baddir_decision_reasons(
    profiler: TranslationBadDirectionTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    audit = profiler.audit_payload()
    tile_count = len(profiler.tiles)
    if profiler.pair_words_scanned != profiler.target_hi:
        reasons.append(
            f"pair words scanned {profiler.pair_words_scanned} does not match target "
            f"{profiler.target_hi}"
        )
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")
    if profiler.bad_direction_cells == 0:
        reasons.append("bounded profile saw no bad-direction translation cells")
    if audit["has_gaps"]:
        reasons.append("bad-direction tiling has gaps")
    if audit["has_overlaps"]:
        reasons.append("bad-direction tiling has overlaps or extra cells")
    if tile_count > profiler.max_lean_leaves:
        reasons.append(
            f"bad-direction tiles {tile_count} exceed max {profiler.max_lean_leaves}"
        )
    elif tile_count > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: bad-direction tiles {tile_count} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    if tile_count > 0:
        ratio = profiler.bad_direction_cells / tile_count
        if ratio < 64.0:
            reasons.append(
                f"bad-direction cases per tile {ratio:.3f} is below gate 64.000"
            )
    if profiler.limit is None:
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_baddir_family_decision_reasons(
    profiler: TranslationBadDirectionFamilyTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    audit = profiler.audit_payload()
    if profiler.pair_words_scanned != profiler.target_hi:
        reasons.append(
            f"pair words scanned {profiler.pair_words_scanned} does not match target "
            f"{profiler.target_hi}"
        )
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")
    if profiler.failure_counts["badDirectionSign"] == 0:
        reasons.append("bounded profile saw no bad-direction translation cells")
    if audit["has_gaps"]:
        reasons.append("symbolic bad-direction coverage has gaps")
    if audit["has_overlaps"]:
        reasons.append("symbolic bad-direction coverage has overlaps or extra cells")
    if profiler.fallback_bad_direction_cells > 0:
        reasons.append(
            "symbolic bad-direction fallback remains: "
            f"{profiler.fallback_bad_direction_cells} cells"
        )
    if profiler.family_count > profiler.max_lean_leaves:
        reasons.append(
            "symbolic bad-direction families "
            f"{profiler.family_count} exceed max {profiler.max_lean_leaves}"
        )
    elif profiler.family_count > profiler.warn_lean_leaves:
        reasons.append(
            "warning: symbolic bad-direction families "
            f"{profiler.family_count} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    if profiler.family_count > 0:
        ratio = profiler.family_cells / profiler.family_count
        if ratio < profiler.min_cells_per_family:
            reasons.append(
                "bad-direction cells per symbolic family "
                f"{ratio:.3f} is below gate {profiler.min_cells_per_family:.3f}"
            )
    if profiler.limit is None:
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def write_payload(payload: dict[str, Any], output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_summary(payload: dict[str, Any]) -> None:
    if payload.get("mode") == "nonidentity-d26-audit":
        window = payload["rank_window"]
        counts = payload["counts"]
        stages = payload["d26_stage_counts"]
        decision = payload["decision"]
        print("nonidentity D26 axis audit")
        print(
            "rank window: "
            f"[{window['start']:,}, {window['end']:,}) "
            f"width {window['width']:,}"
        )
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"nonidentity words: {counts['nonidentity_words']:,}")
        print(f"identity words: {counts['identity_words']:,}")
        print(f"fixed-axis words: {counts['fixed_axis']:,}")
        print(
            "forced-balance survivors: "
            f"{counts['forced_balance_survivors']:,} "
            f"(D26 {stages['forced_balance'].get('d26', 0):,}, "
            f"non-D26 {stages['forced_balance'].get('non_d26', 0):,})"
        )
        print(f"decision: {decision['status']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "terminal-residual-census":
        window = payload["rank_window"]
        counts = payload["counts"]
        nonidentity = payload["nonidentity"]
        translation = payload["translation"]
        print("terminal residual census")
        print(
            "rank window: "
            f"[{window['start']:,}, {window['end']:,}) "
            f"width {window['width']:,}"
        )
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity words: {counts['identity_words']:,}")
        print(f"nonidentity words: {counts['nonidentity_words']:,}")
        print(
            "nonidentity forced-balance survivors: "
            f"{counts['nonidentity_forced_balance_survivors']:,}"
        )
        print(
            "nonidentity obstruction shapes: "
            f"{nonidentity['distinct_obstruction_shapes']['lower_bound']}"
        )
        print(
            "nonidentity terminal candidate shapes: "
            f"{nonidentity['distinct_terminal_candidate_shapes']['lower_bound']}"
        )
        print(
            "nonidentity terminal failures: "
            f"{nonidentity['terminal_failure_counts']}"
        )
        print(
            "GoodDirection survivor masks: "
            f"{counts['good_direction_survivor_masks']:,}"
        )
        print(
            "translation survivor shape maps: "
            f"{translation['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(
            "translation normalized Farkas shapes: "
            f"{translation['unique_normalized_farkas_shapes']['lower_bound']}"
        )
        for note in payload["decision"]["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "nonidentity-terminal-algebra-profile":
        window = payload["rank_window"]
        counts = payload["counts"]
        terminal = payload["terminal"]
        decision = payload["decision"]
        print("nonidentity terminal algebra profile")
        print(
            "rank window: "
            f"[{window['start']:,}, {window['end']:,}) "
            f"width {window['width']:,}"
        )
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity words: {counts['identity_words']:,}")
        print(f"nonidentity words: {counts['nonidentity_words']:,}")
        print(
            "forced-balance survivors: "
            f"{counts['nonidentity_forced_balance_survivors']:,}"
        )
        print(f"terminal failures: {terminal['failure_counts']}")
        print(
            "unique coarse obstruction shapes: "
            f"{terminal['unique_coarse_obstruction_shapes']['lower_bound']}"
        )
        print(
            "max shape reuse: "
            f"{terminal['shape_reuse']['max_reuse']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6M: {decision['accepted_for_phase_6m']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "nonidentity-empty-cone-profile":
        prefix = payload["prefix"]
        tiling = payload["tiling"]
        templates = payload["templates"]
        decision = payload["decision"]
        print("nonidentity empty-cone prefix profile")
        print(f"nodes visited: {prefix['nodes_visited']:,}")
        print(f"empty-cone prefixes: {prefix['empty_cone_prefixes']:,}")
        print(f"empty-cone rank width: {prefix['empty_cone_rank_width']:,}")
        print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
        print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
        print(f"max empty-cone width: {prefix['max_empty_cone_width']:,}")
        print(
            "residual fallback: "
            f"{templates['residual_fallback_width']:,} ranks "
            f"({templates['residual_fallback_rank_ratio']:.3%})"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "nonidentity-state-cone-profile":
        states = payload["signed_states"]
        terminals = payload["terminals"]
        truncation = payload["truncation"]
        decision = payload["decision"]
        print("nonidentity signed-state cone profile")
        print(f"truncated: {truncation['truncated']}")
        if truncation["reason"] is not None:
            print(f"truncation reason: {truncation['reason']}")
        print(f"signed states visited: {states['visited']:,}")
        print(f"empty-cone states: {states['empty_cone_states']:,}")
        print(
            "empty-cone signed completion width: "
            f"{states['empty_cone_signed_completion_width']:,}"
        )
        print(
            "unique empty-cone shapes: "
            f"{states['unique_empty_cone_shapes']['lower_bound']}"
        )
        print(
            "identity signed terminals: "
            f"{terminals['identity_signed_terminals']:,}"
        )
        print(
            "nonidentity signed terminals: "
            f"{terminals['nonidentity_signed_terminals']:,}"
        )
        print(f"axis-cone failures: {terminals['axis_cone_failures']:,}")
        print(
            "unique terminal obstruction shapes: "
            f"{terminals['unique_terminal_obstruction_shapes']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6L.3A: {decision['accepted_for_phase_6l_3a']}")
        print(f"terminal fallback dominates: {decision['terminal_fallback_dominates']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "prefix-kill-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        templates = payload["templates"]
        decision = payload["decision"]
        print("prefix-kill tree profile")
        print(f"pair words profiled: {counts['pair_words_profiled']:,}")
        print(f"nonidentity ranks: {counts['nonidentity_ranks']:,}")
        print(f"identity-vacuous ranks: {counts['identity_vacuous_ranks']:,}")
        print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
        print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
        print(f"max prefix kill width: {payload['prefix']['max_prefix_kill_width']:,}")
        print(
            "residual fallback: "
            f"{templates['residual_fallback_width']:,} ranks "
            f"({templates['residual_fallback_rank_ratio']:.3%})"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-farkas-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        classification = payload["classification"]
        decision = payload["decision"]
        reuse = classification["farkas_shape_reuse"]
        print("translation/Farkas tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
        print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
        print(
            "case/heavy-leaf compression ratio: "
            f"{tiling['case_to_leaf_compression_ratio_exact']}"
        )
        print(
            "unique normalized Farkas shapes: "
            f"{classification['unique_normalized_farkas_shapes']['count']}"
        )
        print(
            "shared normalized Farkas shapes: "
            f"{reuse['shared_shape_count']} (max reuse {reuse['max_reuse']})"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"bad-direction tiles: {tiling['bad_direction_tiles']:,}")
        print(f"max rank width: {tiling['max_rank_width']:,}")
        print(f"max mask width: {tiling['max_mask_width']:,}")
        print(f"cases per tile: {tiling['cases_per_tile_ratio']}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-family-tree-profile":
        counts = payload["actual_counts"]
        tree = payload["symbolic_tree"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction symbolic family profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"symbolic families: {tree['symbolic_families']:,}")
        print(f"average cells per family: {tree['average_cells_per_family']}")
        print(f"max family cells: {tree['max_family_cells']:,}")
        print(f"max prefix width: {tree['max_prefix_width']:,}")
        print(f"max mask cube size: {tree['max_mask_cube_size']:,}")
        print(f"fallback bad-direction cells: {tree['fallback_bad_direction_cells']:,}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-common-impact-tree-profile":
        counts = payload["actual_counts"]
        tree = payload["symbolic_tree"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction common-impact profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"common-impact families: {tree['symbolic_families']:,}")
        print(f"average cells per family: {tree['average_cells_per_family']}")
        print(f"max family cells: {tree['max_family_cells']:,}")
        print(f"max prefix width: {tree['max_prefix_width']:,}")
        print(f"max mask cube size: {tree['max_mask_cube_size']:,}")
        print(f"fallback bad-direction cells: {tree['fallback_bad_direction_cells']:,}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-survivors-profile":
        counts = payload["actual_counts"]
        survivors = payload["survivors"]
        decision = payload["decision"]
        print("translation GoodDirection survivor profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(f"survivor density: {survivors['survivor_density']}")
        print(
            "unique denominator signatures: "
            f"{survivors['unique_denominator_signatures']['lower_bound']}"
        )
        print(
            "unique survivor bitsets: "
            f"{survivors['unique_survivor_bitsets']['lower_bound']}"
        )
        print(
            "unique survivor shape maps: "
            f"{survivors['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(
            "unique normalized Farkas shapes: "
            f"{survivors['unique_normalized_farkas_shapes']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6G: {decision['accepted_for_phase_6g']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "translation-pseudoboolean-profile":
        counts = payload["actual_counts"]
        polynomials = payload["sign_polynomials"]
        linear = payload["continuous_linear_relaxation"]
        lifted = payload["lifted_pseudoboolean"]
        decision = payload["decision"]
        print("translation pseudo-Boolean GoodDirection profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(
            "denominator degree histogram: "
            f"{polynomials['denominator_degree_histogram']}"
        )
        print(
            "max degree per identity word: "
            f"{polynomials['max_degree_word_histogram']}"
        )
        print(
            "unique integer denominator signatures: "
            f"{polynomials['unique_integer_denominator_signatures']['lower_bound']}"
        )
        print(
            "ordinary linear states: "
            f"{linear['linear_states']:,} "
            f"(infeasible {linear['relaxation_infeasible']:,}, "
            f"feasible {linear['relaxation_feasible']:,}, "
            f"unknown {linear['relaxation_unknown']:,})"
        )
        print(
            "lifted pseudo-Boolean states: "
            f"{lifted['states_requiring_lift']:,}"
        )
        print(
            "max lifted variables: "
            f"{lifted['max_lifted_variables']} "
            f"(quadratic {lifted['max_quadratic_variables']}, "
            f"McCormick constraints {lifted['max_mccormick_constraints']})"
        )
        print(
            "states with degree above two: "
            f"{lifted['states_with_degree_above_two']:,}"
        )
        print(f"recommended next phase: {decision['recommended_next_phase']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "translation-lifted-pb-search-profile":
        counts = payload["actual_counts"]
        canonical = payload["canonicalization"]
        lifted = payload["lifted_pb"]
        survivors = payload["survivors"]
        decision = payload["decision"]
        print("translation lifted pseudo-Boolean search profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(
            "canonical lifted problems: "
            f"{canonical['unique_canonical_lifted_problems']['lower_bound']}"
        )
        print(
            "canonical survivor bitsets: "
            f"{canonical['unique_canonical_survivor_bitsets']['lower_bound']}"
        )
        print(f"total bad-cube leaves: {lifted['total_bad_cube_leaves']:,}")
        print(
            "unique bad-cube certificate shapes: "
            f"{lifted['unique_bad_cube_certificate_shapes']['lower_bound']}"
        )
        print(
            "point bad-cube fallback ratio: "
            f"{lifted['point_bad_cube_ratio']:.3f}"
        )
        print(f"max bad-cube size: {lifted['max_bad_cube_size']:,}")
        print(
            "total survivor Farkas leaves: "
            f"{survivors['total_survivor_farkas_leaves']:,}"
        )
        print(
            "unique survivor Farkas shapes: "
            f"{survivors['unique_survivor_farkas_shapes']['lower_bound']}"
        )
        print(
            "unique survivor leaf obligations: "
            f"{survivors['unique_survivor_leaf_obligations']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6L.2B: {decision['accepted_for_phase_6l_2b']}")
        print(f"singleton fallback dominates: {decision['singleton_fallback_dominates']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "translation-survivor-mask-tree-profile":
        counts = payload["actual_counts"]
        survivors = payload["survivors"]
        tree = payload["mask_tree"]
        decision = payload["decision"]
        print("translation GoodDirection survivor mask-tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(
            "unique denominator signatures: "
            f"{survivors['unique_denominator_signatures']['lower_bound']}"
        )
        print(
            "unique survivor shape maps: "
            f"{survivors['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(f"total mask-tree leaves: {tree['total_tree_leaves']:,}")
        print(f"total bad-cube leaves: {tree['total_bad_cube_leaves']:,}")
        print(f"total Farkas leaves: {tree['total_farkas_leaves']:,}")
        print(
            "unique structural tree shapes: "
            f"{tree['unique_structural_tree_shapes']['lower_bound']}"
        )
        print(
            "unique signature tree obligations: "
            f"{tree['unique_signature_tree_obligations']['lower_bound']}"
        )
        print(
            "unique signature leaf obligations: "
            f"{tree['unique_signature_leaf_obligations']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6H: {decision['accepted_for_phase_6h']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "translation-state-dag-profile":
        counts = payload["actual_counts"]
        survivors = payload["survivors"]
        dag = payload["state_dag"]
        decision = payload["decision"]
        print("translation word/state DAG profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(f"nodes visited: {counts['nodes_visited']:,}")
        print(
            "unique internal DAG nodes: "
            f"{dag['unique_internal_nodes']['lower_bound']}"
        )
        print(
            "unique identity terminal obligations: "
            f"{dag['unique_identity_terminal_obligations']['lower_bound']}"
        )
        print(
            "unique survivor shape maps: "
            f"{survivors['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(
            "DAG reused nodes: "
            f"{dag['reuse']['reused_node_count']} "
            f"(max reuse {dag['reuse']['max_reuse']})"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6I: {decision['accepted_for_phase_6i']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    counts = payload["actual_counts"]
    tiling = payload["tiling"]
    decision = payload["decision"]
    print("symmetry compression profile")
    print(f"pair words: {counts['pair_words']:,}")
    print(f"identity-linear words: {counts['identity_linear_words']:,}")
    print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
    print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
    print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
    print(f"unique normalized Farkas shapes: {payload['classification']['unique_normalized_farkas_shapes']['count']}")
    reuse = payload["classification"]["farkas_shape_reuse"]
    print(
        "shared normalized Farkas shapes: "
        f"{reuse['shared_shape_count']} (max reuse {reuse['max_reuse']})"
    )
    print(f"decision: {decision['status']}")
    for reason in decision["reasons"]:
        print(f"- {reason}")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Profile D4-symmetric semantic interval compression without emitting Lean."
    )
    parser.add_argument("--dry-run", action="store_true", help="required; Phase 3 emits profile JSON only")
    parser.add_argument("--limit", type=int, default=None, help="profile only the first N pair-word ranks")
    parser.add_argument("--rank-start", type=int, default=0, help="starting rank for range-aware audit modes")
    parser.add_argument("--max-lean-leaves", type=int, default=2000)
    parser.add_argument("--warn-lean-leaves", type=int, default=900)
    parser.add_argument("--max-distinct-tracked", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--progress-interval", type=int, default=1_000_000)
    parser.add_argument("--output", type=Path, default=None)
    parser.add_argument(
        "--prefix-kill-tree",
        action="store_true",
        help="profile nonidentity prefix-kill tiling before depth-13 leaves",
    )
    parser.add_argument(
        "--translation-farkas-tree",
        action="store_true",
        help="profile identity-linear translation/Farkas family sharing",
    )
    parser.add_argument(
        "--translation-baddir-tree",
        action="store_true",
        help="profile rectangular tiling for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-baddir-family-tree",
        action="store_true",
        help="profile symbolic prefix/mask-cube families for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-baddir-common-impact-tree",
        action="store_true",
        help="profile common-impact prefix/mask-cube families for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-survivors",
        action="store_true",
        help="profile GoodDirection survivor masks for the translation branch",
    )
    parser.add_argument(
        "--translation-pseudoboolean",
        action="store_true",
        help="profile integer sign-polynomial and lifted pseudo-Boolean GoodDirection constraints",
    )
    parser.add_argument(
        "--translation-lifted-pb-search",
        action="store_true",
        help="profile lifted pseudo-Boolean compression for translation GoodDirection constraints",
    )
    parser.add_argument(
        "--translation-survivor-mask-tree",
        action="store_true",
        help="profile exact mask-tree compression for GoodDirection survivor cases",
    )
    parser.add_argument(
        "--translation-state-dag",
        action="store_true",
        help="profile recursive word/state DAG sharing for translation coverage",
    )
    parser.add_argument(
        "--nonidentity-empty-cone-tree",
        action="store_true",
        help="profile exact empty-cone Farkas pruning for nonidentity pair prefixes",
    )
    parser.add_argument(
        "--nonidentity-state-cone-tree",
        action="store_true",
        help="profile signed-state empty-cone pruning for nonidentity coverage",
    )
    parser.add_argument(
        "--nonidentity-terminal-algebra",
        action="store_true",
        help="profile coarse algebraic terminal-obstruction families for nonidentity coverage",
    )
    parser.add_argument(
        "--nonidentity-d26-audit",
        action="store_true",
        help="audit whether nonidentity fixed axes are parallel to the 26 cube-symmetry directions",
    )
    parser.add_argument(
        "--terminal-residual-census",
        action="store_true",
        help="profile exact terminal nonidentity shapes plus translation GoodDirection survivors",
    )
    parser.add_argument("--max-prefix-probe-ranks", type=int, default=4096)
    parser.add_argument("--max-residual-leaf-width", type=int, default=128)
    parser.add_argument("--min-residual-depth", type=int, default=13)
    parser.add_argument("--max-empty-cone-depth", type=int, default=9)
    parser.add_argument("--max-state-cone-depth", type=int, default=9)
    parser.add_argument("--max-state-cone-states", type=int, default=250_000)
    parser.add_argument("--max-linear-fm-constraints", type=int, default=100_000)
    parser.add_argument(
        "--no-d4-transport",
        action="store_true",
        help="do not share family keys across started-face D4 canonical prefixes",
    )
    parser.add_argument(
        "--allow-reject",
        action="store_true",
        help="write rejected profiles with exit code 0 for exploratory runs",
    )
    args = parser.parse_args()
    validate_options(args)
    output = args.output
    if output is None:
        if args.translation_state_dag:
            output = DEFAULT_TRANSLATION_STATE_DAG_OUTPUT
        elif args.translation_survivor_mask_tree:
            output = DEFAULT_TRANSLATION_SURVIVOR_MASK_TREE_OUTPUT
        elif args.translation_lifted_pb_search:
            output = default_translation_lifted_pb_search_output(args.limit)
        elif args.translation_pseudoboolean:
            output = default_translation_pseudoboolean_output(args.limit)
        elif args.translation_survivors:
            output = DEFAULT_TRANSLATION_SURVIVORS_OUTPUT
        elif args.translation_baddir_common_impact_tree:
            output = DEFAULT_TRANSLATION_BADDIR_COMMON_IMPACT_OUTPUT
        elif args.translation_baddir_family_tree:
            output = DEFAULT_TRANSLATION_BADDIR_FAMILY_OUTPUT
        elif args.translation_baddir_tree:
            output = DEFAULT_TRANSLATION_BADDIR_OUTPUT
        elif args.translation_farkas_tree:
            output = DEFAULT_TRANSLATION_FARKAS_OUTPUT
        elif args.prefix_kill_tree:
            output = DEFAULT_PREFIX_KILL_OUTPUT
        elif args.nonidentity_terminal_algebra:
            output = default_nonidentity_terminal_algebra_output(
                args.rank_start,
                args.limit,
            )
        elif args.nonidentity_state_cone_tree:
            output = default_nonidentity_state_cone_output(args.limit)
        elif args.nonidentity_empty_cone_tree:
            output = DEFAULT_NONIDENTITY_EMPTY_CONE_OUTPUT
        elif args.nonidentity_d26_audit:
            output = default_d26_audit_output(args.rank_start, args.limit)
        elif args.terminal_residual_census:
            output = default_terminal_residual_census_output(args.rank_start, args.limit)
        else:
            output = DEFAULT_OUTPUT

    import time

    start = time.monotonic()
    if args.terminal_residual_census:
        terminal_profiler = TerminalResidualCensusProfiler(
            rank_start=args.rank_start,
            limit=args.limit,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_distinct_tracked=args.max_distinct_tracked,
            use_d4_transport=not args.no_d4_transport,
        )
        terminal_profiler.traverse()
        rejected = False
        payload = terminal_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.nonidentity_terminal_algebra:
        terminal_algebra_profiler = NonIdentityTerminalAlgebraProfiler(
            rank_start=args.rank_start,
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        terminal_algebra_profiler.traverse()
        rejected = not terminal_algebra_profiler.decision()["accepted_for_phase_6m"]
        payload = terminal_algebra_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.nonidentity_d26_audit:
        d26_profiler = D26AxisAuditProfiler(
            rank_start=args.rank_start,
            limit=args.limit,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_distinct_tracked=args.max_distinct_tracked,
        )
        d26_profiler.traverse()
        rejected = False
        payload = d26_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.nonidentity_empty_cone_tree:
        empty_cone_profiler = EmptyConePrefixProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_empty_cone_depth=args.max_empty_cone_depth,
            use_d4_transport=not args.no_d4_transport,
        )
        empty_cone_profiler.traverse()
        rejected, reasons = empty_cone_decision_reasons(empty_cone_profiler)
        payload = empty_cone_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.nonidentity_state_cone_tree:
        state_cone_profiler = NonIdentityStateConeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_state_cone_depth=args.max_state_cone_depth,
            max_state_cone_states=args.max_state_cone_states,
        )
        state_cone_profiler.traverse()
        rejected = False
        payload = state_cone_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_state_dag:
        state_dag_profiler = TranslationStateDagProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        state_dag_profiler.traverse()
        rejected = False
        payload = state_dag_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_survivor_mask_tree:
        mask_tree_profiler = TranslationSurvivorMaskTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        mask_tree_profiler.traverse()
        rejected = False
        payload = mask_tree_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_lifted_pb_search:
        lifted_pb_profiler = TranslationLiftedPbSearchProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        lifted_pb_profiler.traverse()
        rejected = False
        payload = lifted_pb_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_pseudoboolean:
        pseudoboolean_profiler = TranslationPseudoBooleanProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_linear_fm_constraints=args.max_linear_fm_constraints,
        )
        pseudoboolean_profiler.traverse()
        rejected = False
        payload = pseudoboolean_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_survivors:
        survivor_profiler = TranslationSurvivorProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        survivor_profiler.traverse()
        rejected = False
        payload = survivor_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_baddir_common_impact_tree:
        common_impact_profiler = TranslationBadDirectionCommonImpactTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        common_impact_profiler.traverse()
        rejected, reasons = translation_baddir_family_decision_reasons(
            common_impact_profiler
        )
        payload = common_impact_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_baddir_family_tree:
        baddir_family_profiler = TranslationBadDirectionFamilyTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        baddir_family_profiler.traverse()
        rejected, reasons = translation_baddir_family_decision_reasons(
            baddir_family_profiler
        )
        payload = baddir_family_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_baddir_tree:
        baddir_profiler = TranslationBadDirectionTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        baddir_profiler.traverse()
        rejected, reasons = translation_baddir_decision_reasons(baddir_profiler)
        payload = baddir_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_farkas_tree:
        translation_profiler = TranslationFarkasTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        translation_profiler.traverse()
        rejected, reasons = translation_farkas_decision_reasons(translation_profiler)
        payload = translation_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.prefix_kill_tree:
        prefix_profiler = PrefixKillTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_prefix_probe_ranks=args.max_prefix_probe_ranks,
            max_residual_leaf_width=args.max_residual_leaf_width,
            min_residual_depth=args.min_residual_depth,
            use_d4_transport=not args.no_d4_transport,
        )
        prefix_profiler.traverse()
        rejected, reasons = prefix_kill_decision_reasons(prefix_profiler)
        payload = prefix_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    else:
        profiler = SymmetryCompressionProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        profiler.traverse()
        rejected, reasons = decision_reasons(profiler)
        payload = profiler.build_payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    write_payload(payload, output)
    print_summary(payload)
    if rejected and not args.allow_reject:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
