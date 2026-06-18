#!/usr/bin/env python3
"""Generate exact small-sample certificate data for the cuboctahedron project.

This script is intentionally untrusted. It uses exact rational arithmetic and
emits data that Lean and the independent checker verify.
"""

from __future__ import annotations

import argparse
import hashlib
import itertools
import json
import math
import shutil
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Iterable

import exact_profile


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"
COVERAGE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_manifest.json"
CANONICAL_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_symmetry_sample.json"
CANONICAL_ORBIT_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_orbit_coverage.json"
CANONICAL_COVERAGE_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "canonical_coverage_manifest.json"
)
COVERAGE_TREE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_tree_sample.json"
NONIDENTITY_FAMILY_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "nonidentity_family_sample.json"
)
TRANSLATION_FAMILY_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "translation_family_sample.json"
)
EXHAUSTIVE_REAL_CERTS_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "exhaustive_real_certs_summary.json"
)
COMPRESSION_AUDIT_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "compression_audit.json"
)
LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "SmallSample.lean"
CANONICAL_LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CanonicalSample.lean"
CANONICAL_COVERAGE_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "CanonicalCoverageManifest.lean"
)
COVERAGE_TREE_LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CoverageTreeSample.lean"
NONIDENTITY_FAMILY_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "FamilySample.lean"
)
TRANSLATION_FAMILY_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "FamilySample.lean"
)
NONIDENTITY_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Chunk0000.lean"
)
TRANSLATION_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Chunk0000.lean"
)
COVERAGE_MANIFEST_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CoverageManifest.lean"
ALL_GENERATED_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "AllGenerated.lean"

EXPECTED_PAIR_WORDS = 97_297_200
EXPECTED_IDENTITY_WORDS = 2_468_088
EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS = 157_957_632
COVERAGE_CHUNK_SIZE = 100_000

PAIR_IDS = ["x", "y", "z", "d111", "d11m", "d1m1", "dm11"]
PAIR_COUNTS = {
    "x": 1,
    "y": 2,
    "z": 2,
    "d111": 2,
    "d11m": 2,
    "d1m1": 2,
    "dm11": 2,
}
STARTED_SYMS = [
    {"swapYZ": False, "negY": False, "negZ": False},
    {"swapYZ": False, "negY": False, "negZ": True},
    {"swapYZ": False, "negY": True, "negZ": False},
    {"swapYZ": False, "negY": True, "negZ": True},
    {"swapYZ": True, "negY": False, "negZ": False},
    {"swapYZ": True, "negY": False, "negZ": True},
    {"swapYZ": True, "negY": True, "negZ": False},
    {"swapYZ": True, "negY": True, "negZ": True},
]
NORMALS = {
    "x": (1, 0, 0),
    "y": (0, 1, 0),
    "z": (0, 0, 1),
    "d111": (1, 1, 1),
    "d11m": (1, 1, -1),
    "d1m1": (1, -1, 1),
    "dm11": (-1, 1, 1),
}
OFFSETS = {
    "x": Fraction(1),
    "y": Fraction(1),
    "z": Fraction(1),
    "d111": Fraction(2),
    "d11m": Fraction(2),
    "d1m1": Fraction(2),
    "dm11": Fraction(2),
}
FACE_PLUS = {
    "x": "xp",
    "y": "yp",
    "z": "zp",
    "d111": "tppp",
    "d11m": "tppm",
    "d1m1": "tpmp",
    "dm11": "tmpp",
}
FACE_MINUS = {
    "x": "xm",
    "y": "ym",
    "z": "zm",
    "d111": "tmmm",
    "d11m": "tmmp",
    "d1m1": "tmpm",
    "dm11": "tpmm",
}
FACE_NORMALS = {
    "xp": (1, 0, 0),
    "xm": (-1, 0, 0),
    "yp": (0, 1, 0),
    "ym": (0, -1, 0),
    "zp": (0, 0, 1),
    "zm": (0, 0, -1),
    "tmmm": (-1, -1, -1),
    "tmmp": (-1, -1, 1),
    "tmpm": (-1, 1, -1),
    "tmpp": (-1, 1, 1),
    "tpmm": (1, -1, -1),
    "tpmp": (1, -1, 1),
    "tppm": (1, 1, -1),
    "tppp": (1, 1, 1),
}
FACE_OFFSETS = {
    "xp": Fraction(1),
    "xm": Fraction(1),
    "yp": Fraction(1),
    "ym": Fraction(1),
    "zp": Fraction(1),
    "zm": Fraction(1),
    "tmmm": Fraction(2),
    "tmmp": Fraction(2),
    "tmpm": Fraction(2),
    "tmpp": Fraction(2),
    "tpmm": Fraction(2),
    "tpmp": Fraction(2),
    "tppm": Fraction(2),
    "tppp": Fraction(2),
}
FACE_ORDER = [
    "xp",
    "xm",
    "yp",
    "ym",
    "zp",
    "zm",
    "tmmm",
    "tmmp",
    "tmpm",
    "tmpp",
    "tpmm",
    "tpmp",
    "tppm",
    "tppp",
]

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]
Aff = tuple[Mat, Vec]
Vec4 = tuple[Fraction, Fraction, Fraction, Fraction]
Mat4 = tuple[tuple[Fraction, Fraction, Fraction, Fraction], ...]


def q(value: int | Fraction) -> Fraction:
    return value if isinstance(value, Fraction) else Fraction(value)


def vec(values: Iterable[int | Fraction]) -> Vec:
    x, y, z = values
    return (q(x), q(y), q(z))


def mat_id() -> Mat:
    return (
        (Fraction(1), Fraction(0), Fraction(0)),
        (Fraction(0), Fraction(1), Fraction(0)),
        (Fraction(0), Fraction(0), Fraction(1)),
    )


def dot(a: Vec, b: Vec) -> Fraction:
    return sum(x * y for x, y in zip(a, b))


def mat_mul(a: Mat, b: Mat) -> Mat:
    return tuple(
        tuple(sum(a[i][k] * b[k][j] for k in range(3)) for j in range(3))
        for i in range(3)
    )


def mat_vec(a: Mat, v: Vec) -> Vec:
    return tuple(sum(a[i][k] * v[k] for k in range(3)) for i in range(3))  # type: ignore[return-value]


def vec_add(a: Vec, b: Vec) -> Vec:
    return (a[0] + b[0], a[1] + b[1], a[2] + b[2])


def vec_sub(a: Vec, b: Vec) -> Vec:
    return (a[0] - b[0], a[1] - b[1], a[2] - b[2])


def vec_scale(c: Fraction, v: Vec) -> Vec:
    return (c * v[0], c * v[1], c * v[2])


def reflection_matrix(n: Vec) -> Mat:
    nn = dot(n, n)
    return tuple(
        tuple((Fraction(1) if i == j else Fraction(0)) - Fraction(2) * n[i] * n[j] / nn
              for j in range(3))
        for i in range(3)
    )


def reflection_delta_from_plane(n: Vec, c: Fraction) -> Vec:
    return vec_scale(Fraction(2) * c / dot(n, n), n)


def reflection_delta(pair_id: str) -> Vec:
    return reflection_delta_from_plane(vec(NORMALS[pair_id]), OFFSETS[pair_id])


def aff_id() -> Aff:
    return mat_id(), vec((0, 0, 0))


def face_reflection(face: str) -> Aff:
    n = vec(FACE_NORMALS[face])
    return reflection_matrix(n), reflection_delta_from_plane(n, FACE_OFFSETS[face])


def aff_compose(a: Aff, b: Aff) -> Aff:
    am, av = a
    bm, bv = b
    return mat_mul(am, bm), vec_add(mat_vec(am, bv), av)


def aff_apply(a: Aff, p: Vec) -> Vec:
    am, av = a
    return vec_add(mat_vec(am, p), av)


RPAIR = {pair_id: reflection_matrix(vec(normal)) for pair_id, normal in NORMALS.items()}
DCAN = {pair_id: reflection_delta(pair_id) for pair_id in PAIR_IDS}


def total_linear(word: list[str]) -> Mat:
    pref = mat_id()
    for pair_id in word:
        pref = mat_mul(pref, RPAIR[pair_id])
    return mat_mul(pref, RPAIR["x"])


def prefix_matrices(word: list[str]) -> list[Mat]:
    pref = [mat_id()]
    for pair_id in word:
        pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
    return pref


def path_prefix_matrices(seq: list[str]) -> list[Mat]:
    pref = [mat_id()]
    for index in range(1, 14):
        pref.append(mat_mul(pref[-1], face_reflection(seq[index])[0]))
    return pref


def path_prefix_affs(seq: list[str]) -> list[Aff]:
    pref = [aff_id()]
    for index in range(1, 14):
        pref.append(aff_compose(pref[-1], face_reflection(seq[index])))
    return pref


def total_aff(seq: list[str]) -> Aff:
    result = aff_id()
    for index in list(range(1, 14)) + [0]:
        result = aff_compose(result, face_reflection(seq[index]))
    return result


def axis_solve_matrix(a: Aff, axis: Vec) -> Mat4:
    matrix, _offset = a
    ident = mat_id()
    return (
        (matrix[0][0] - ident[0][0], matrix[0][1] - ident[0][1],
         matrix[0][2] - ident[0][2], -axis[0]),
        (matrix[1][0] - ident[1][0], matrix[1][1] - ident[1][1],
         matrix[1][2] - ident[1][2], -axis[1]),
        (matrix[2][0] - ident[2][0], matrix[2][1] - ident[2][1],
         matrix[2][2] - ident[2][2], -axis[2]),
        (Fraction(1), Fraction(0), Fraction(0), Fraction(0)),
    )


def axis_solve_rhs(a: Aff) -> Vec4:
    _matrix, offset = a
    return (-offset[0], -offset[1], -offset[2], Fraction(1))


def axis_solve_vector(p0: Vec, lam: Fraction) -> Vec4:
    return (p0[0], p0[1], p0[2], lam)


def solve_axis_intersection(a: Aff, axis: Vec) -> tuple[Vec, Fraction, Mat4]:
    solve_matrix = axis_solve_matrix(a, axis)
    inverse = mat4_inverse(solve_matrix)
    solution = mat4_vec(inverse, axis_solve_rhs(a))
    if mat4_vec(solve_matrix, solution) != axis_solve_rhs(a):
        raise ValueError("axis solve vector failed self-check")
    return (solution[0], solution[1], solution[2]), solution[3], inverse


def is_identity(m: Mat) -> bool:
    return m == mat_id()


def fixed_part(m: Mat) -> Mat:
    ident = mat_id()
    return tuple(tuple(m[i][j] - ident[i][j] for j in range(3)) for i in range(3))


def cross_left(axis: Vec) -> Mat:
    x, y, z = axis
    return (
        (Fraction(0), -z, y),
        (z, Fraction(0), -x),
        (-y, x, Fraction(0)),
    )


def transpose(m: Mat) -> Mat:
    return tuple(tuple(m[j][i] for j in range(3)) for i in range(3))


def invert_square(rows: list[list[Fraction]]) -> list[list[Fraction]]:
    n = len(rows)
    aug = [list(row) + [Fraction(1) if i == j else Fraction(0) for j in range(n)]
           for i, row in enumerate(rows)]
    for col in range(n):
        pivot = next((row for row in range(col, n) if aug[row][col] != 0), None)
        if pivot is None:
            raise ValueError("singular matrix")
        aug[col], aug[pivot] = aug[pivot], aug[col]
        div = aug[col][col]
        aug[col] = [value / div for value in aug[col]]
        for row in range(n):
            if row == col or aug[row][col] == 0:
                continue
            factor = aug[row][col]
            aug[row] = [aug[row][j] - factor * aug[col][j] for j in range(2 * n)]
    return [row[n:] for row in aug]


def mat3_inverse(m: Mat) -> Mat:
    inv = invert_square([list(row) for row in m])
    result: Mat = tuple(tuple(row) for row in inv)  # type: ignore[assignment]
    if mat_mul(result, m) != mat_id():
        raise ValueError("mat3 inverse witness failed self-check")
    return result


def mat4_id() -> Mat4:
    return tuple(
        tuple(Fraction(1) if i == j else Fraction(0) for j in range(4))
        for i in range(4)
    )  # type: ignore[return-value]


def mat4_mul(a: Mat4, b: Mat4) -> Mat4:
    return tuple(
        tuple(sum(a[i][k] * b[k][j] for k in range(4)) for j in range(4))
        for i in range(4)
    )  # type: ignore[return-value]


def mat4_vec(a: Mat4, v: Vec4) -> Vec4:
    return tuple(sum(a[i][k] * v[k] for k in range(4)) for i in range(4))  # type: ignore[return-value]


def mat4_inverse(m: Mat4) -> Mat4:
    inv = invert_square([list(row) for row in m])
    result: Mat4 = tuple(tuple(row) for row in inv)  # type: ignore[assignment]
    if mat4_mul(result, m) != mat4_id():
        raise ValueError("mat4 inverse witness failed self-check")
    return result


def solve_linear_system(a: Mat, b: Vec) -> Vec:
    rows = [list(a[i]) + [b[i]] for i in range(3)]
    pivot_cols: list[int] = []
    pivot_row = 0
    for col in range(3):
        found = next((row for row in range(pivot_row, 3) if rows[row][col] != 0), None)
        if found is None:
            continue
        rows[pivot_row], rows[found] = rows[found], rows[pivot_row]
        div = rows[pivot_row][col]
        rows[pivot_row] = [value / div for value in rows[pivot_row]]
        for row in range(3):
            if row == pivot_row or rows[row][col] == 0:
                continue
            factor = rows[row][col]
            rows[row] = [rows[row][j] - factor * rows[pivot_row][j] for j in range(4)]
        pivot_cols.append(col)
        pivot_row += 1
    for row in range(pivot_row, 3):
        if all(rows[row][col] == 0 for col in range(3)) and rows[row][3] != 0:
            raise ValueError("inconsistent linear system")
    solution = [Fraction(0), Fraction(0), Fraction(0)]
    for row, col in enumerate(pivot_cols):
        solution[col] = rows[row][3]
    return tuple(solution)  # type: ignore[return-value]


def kernel_line_cross_factor(m: Mat, axis: Vec) -> Mat:
    fixed = fixed_part(m)
    fixed_t = transpose(fixed)
    rows = []
    for target_row in cross_left(axis):
        rows.append(solve_linear_system(fixed_t, target_row))
    result: Mat = tuple(rows)  # type: ignore[assignment]
    if mat_mul(result, fixed) != cross_left(axis):
        raise ValueError("kernel-line witness failed self-check")
    return result


def rref(a: Mat) -> tuple[list[list[Fraction]], list[int]]:
    rows = [list(row) for row in a]
    pivot_cols: list[int] = []
    pivot_row = 0
    for col in range(3):
        found = next((row for row in range(pivot_row, 3) if rows[row][col] != 0), None)
        if found is None:
            continue
        rows[pivot_row], rows[found] = rows[found], rows[pivot_row]
        div = rows[pivot_row][col]
        rows[pivot_row] = [value / div for value in rows[pivot_row]]
        for row in range(3):
            if row == pivot_row or rows[row][col] == 0:
                continue
            factor = rows[row][col]
            rows[row] = [rows[row][j] - factor * rows[pivot_row][j] for j in range(3)]
        pivot_cols.append(col)
        pivot_row += 1
    return rows, pivot_cols


def one_dimensional_fixed_axis(m: Mat) -> Vec:
    rows, pivot_cols = rref(fixed_part(m))
    free_cols = [col for col in range(3) if col not in pivot_cols]
    if len(free_cols) != 1:
        raise ValueError("fixed space is not one-dimensional")
    free = free_cols[0]
    axis = [Fraction(0), Fraction(0), Fraction(0)]
    axis[free] = Fraction(1)
    for row, col in enumerate(pivot_cols):
        axis[col] = -rows[row][free]
    return tuple(axis)  # type: ignore[return-value]


def oriented_fixed_axis(word: list[str], matrix: Mat) -> Vec:
    axis = one_dimensional_fixed_axis(matrix)
    if final_axis_dot(word, axis) < 0:
        axis = tuple(-value for value in axis)  # type: ignore[assignment]
    return axis


def enumerate_pair_words(limit: int) -> list[list[str]]:
    result: list[list[str]] = []
    word: list[str] = []
    remaining = dict(PAIR_COUNTS)

    def rec() -> None:
        if len(result) >= limit:
            return
        if len(word) == 13:
            result.append(list(word))
            return
        for pair_id in PAIR_IDS:
            if remaining[pair_id] > 0:
                remaining[pair_id] -= 1
                word.append(pair_id)
                rec()
                word.pop()
                remaining[pair_id] += 1
                if len(result) >= limit:
                    return

    rec()
    return result


def pair_word_at_rank(rank: int) -> list[str]:
    words = enumerate_pair_words(rank + 1)
    return words[rank]


def valid_pair_word(word: list[str]) -> bool:
    return len(word) == 13 and {pair_id: word.count(pair_id) for pair_id in PAIR_IDS} == PAIR_COUNTS


def multinomial_count(counts: dict[str, int]) -> int:
    total = sum(counts.values())
    denominator = 1
    for pair_id in PAIR_IDS:
        denominator *= math.factorial(counts[pair_id])
    return math.factorial(total) // denominator


def lex_rank_pair_word(word: list[str]) -> int:
    if not valid_pair_word(word):
        raise ValueError("invalid pair word")
    rank = 0
    remaining = dict(PAIR_COUNTS)
    for current in word:
        current_code = PAIR_IDS.index(current)
        for smaller in PAIR_IDS[:current_code]:
            if remaining[smaller] == 0:
                continue
            trial = dict(remaining)
            trial[smaller] -= 1
            rank += multinomial_count(trial)
        remaining[current] -= 1
    return rank


def sign_assignment(word: list[str], mask: int) -> list[int]:
    positions: dict[str, list[int]] = {pair_id: [] for pair_id in PAIR_IDS}
    for index, pair_id in enumerate(word):
        positions[pair_id].append(index)
    signs = [0] * len(word)
    signs[positions["x"][0]] = -1
    for pair_index, pair_id in enumerate(PAIR_IDS[1:]):
        bit = (mask >> pair_index) & 1
        first, second = positions[pair_id]
        signs[first] = 1 if bit else -1
        signs[second] = -1 if bit else 1
    return signs


def translation_vector(word: list[str], mask: int) -> tuple[Vec, list[str]]:
    signs = sign_assignment(word, mask)
    pref = prefix_matrices(word)
    bpref: list[Vec] = [vec((0, 0, 0))]
    seq = ["xp"]
    for index, pair_id in enumerate(word):
        delta = vec_scale(Fraction(signs[index]), mat_vec(pref[index], DCAN[pair_id]))
        bpref.append(vec_add(bpref[-1], delta))
        seq.append(FACE_PLUS[pair_id] if signs[index] > 0 else FACE_MINUS[pair_id])
    b = vec_add(bpref[-1], mat_vec(pref[-1], DCAN["x"]))
    return b, seq


Lin2Q = tuple[Fraction, Fraction, Fraction]
StrictLin2Q = tuple[Fraction, Fraction, Fraction]


def lin2_const(qvalue: Fraction) -> Lin2Q:
    return (qvalue, Fraction(0), Fraction(0))


def lin2_y() -> Lin2Q:
    return (Fraction(0), Fraction(1), Fraction(0))


def lin2_z() -> Lin2Q:
    return (Fraction(0), Fraction(0), Fraction(1))


def lin2_add(lhs: Lin2Q, rhs: Lin2Q) -> Lin2Q:
    return (lhs[0] + rhs[0], lhs[1] + rhs[1], lhs[2] + rhs[2])


def lin2_scale(scale: Fraction, value: Lin2Q) -> Lin2Q:
    return (scale * value[0], scale * value[1], scale * value[2])


def lin2_dot_vec3(n: Vec, p: tuple[Lin2Q, Lin2Q, Lin2Q]) -> Lin2Q:
    return lin2_add(
        lin2_add(lin2_scale(n[0], p[0]), lin2_scale(n[1], p[1])),
        lin2_scale(n[2], p[2]),
    )


def strict_lt_constraint(lhs: Lin2Q, rhs: Lin2Q) -> StrictLin2Q:
    return (lhs[1] - rhs[1], lhs[2] - rhs[2], rhs[0] - lhs[0])


def translation_impact_time_lin(seq: list[str], b: Vec, impact: int) -> Lin2Q:
    if impact == 0:
        return lin2_const(Fraction(0))
    if impact == 14:
        return lin2_const(Fraction(1))
    prefixes = path_prefix_affs(seq)
    normal_value, offset = impact_plane_normal_offset(seq, prefixes, impact)
    den = dot(normal_value, b)
    if den == 0:
        raise ZeroDivisionError("translation impact denominator is zero")
    return (
        (offset - normal_value[0]) / den,
        -normal_value[1] / den,
        -normal_value[2] / den,
    )


def translation_line_point_lin(b: Vec, t: Lin2Q) -> tuple[Lin2Q, Lin2Q, Lin2Q]:
    return (
        lin2_add(lin2_const(Fraction(1)), lin2_scale(b[0], t)),
        lin2_add(lin2_y(), lin2_scale(b[1], t)),
        lin2_add(lin2_z(), lin2_scale(b[2], t)),
    )


def translation_constraints_py(seq: list[str], b: Vec) -> list[StrictLin2Q]:
    constraints: list[StrictLin2Q] = [
        (Fraction(1), Fraction(1), Fraction(1)),
        (Fraction(1), Fraction(-1), Fraction(1)),
        (Fraction(-1), Fraction(1), Fraction(1)),
        (Fraction(-1), Fraction(-1), Fraction(1)),
    ]
    impact_times = [translation_impact_time_lin(seq, b, impact) for impact in range(15)]
    for step in range(14):
        constraints.append(strict_lt_constraint(impact_times[step], impact_times[step + 1]))
    prefixes = path_prefix_affs(seq)
    for impact in range(1, 15):
        hit = impact_face(seq, impact)
        point = translation_line_point_lin(b, impact_times[impact])
        for face in FACE_ORDER:
            if face == hit:
                continue
            copied, offset = copied_normal_offset(seq, prefixes, impact, face)
            constraints.append(
                strict_lt_constraint(
                    lin2_dot_vec3(copied, point),
                    lin2_const(offset),
                )
            )
    return constraints


def translation_constraint_sources_py(seq: list[str]) -> list[dict]:
    sources: list[dict] = [
        {"kind": "xpStart", "index": 0},
        {"kind": "xpStart", "index": 1},
        {"kind": "xpStart", "index": 2},
        {"kind": "xpStart", "index": 3},
    ]
    for step in range(14):
        sources.append({"kind": "ordering", "step": step})
    for impact in range(1, 15):
        hit = impact_face(seq, impact)
        for face in FACE_ORDER:
            if face != hit:
                sources.append({"kind": "interior", "impact": impact, "face": face})
    return sources


def weighted_sum_constraints(
    constraints: list[StrictLin2Q], terms: list[tuple[int, Fraction]]
) -> StrictLin2Q:
    a = b = c = Fraction(0)
    for index, multiplier in terms:
        line = constraints[index]
        a += multiplier * line[0]
        b += multiplier * line[1]
        c += multiplier * line[2]
    return a, b, c


def check_farkas_py(
    constraints: list[StrictLin2Q], terms: list[tuple[int, Fraction]]
) -> bool:
    if not terms or not any(multiplier > 0 for _index, multiplier in terms):
        return False
    if any(index < 0 or index >= len(constraints) or multiplier < 0
           for index, multiplier in terms):
        return False
    total = weighted_sum_constraints(constraints, terms)
    return total[0] == 0 and total[1] == 0 and total[2] <= 0


def normalize_farkas_terms(terms: list[tuple[int, Fraction]]) -> list[tuple[int, Fraction]]:
    combined: dict[int, Fraction] = {}
    for index, multiplier in terms:
        combined[index] = combined.get(index, Fraction(0)) + multiplier
    normalized = [
        (index, multiplier)
        for index, multiplier in sorted(combined.items())
        if multiplier != 0
    ]
    if not normalized:
        return []
    denominators_lcm = 1
    for _index, multiplier in normalized:
        denominators_lcm = math.lcm(denominators_lcm, multiplier.denominator)
    integer_values = [
        abs(multiplier.numerator * (denominators_lcm // multiplier.denominator))
        for _index, multiplier in normalized
    ]
    content = 0
    for value in integer_values:
        content = math.gcd(content, value)
    if content == 0:
        return normalized
    content_q = Fraction(content, denominators_lcm)
    return [(index, multiplier / content_q) for index, multiplier in normalized]


def find_sparse_farkas(
    constraints: list[StrictLin2Q],
) -> list[tuple[int, Fraction]]:
    for i, j in itertools.combinations(range(len(constraints)), 2):
        a1, b1, _c1 = constraints[i]
        a2, b2, _c2 = constraints[j]
        if a1 * b2 - b1 * a2 != 0:
            continue
        if a2 != 0:
            first = Fraction(1)
            second = -a1 / a2
        elif b2 != 0:
            first = Fraction(1)
            second = -b1 / b2
        else:
            continue
        terms = [(i, first), (j, second)]
        if first > 0 and second > 0 and check_farkas_py(constraints, terms):
            return normalize_farkas_terms(terms)
    for i, j, k in itertools.combinations(range(len(constraints)), 3):
        a1, b1, _c1 = constraints[i]
        a2, b2, _c2 = constraints[j]
        a3, b3, _c3 = constraints[k]
        values = [
            b2 * a3 - a2 * b3,
            a1 * b3 - b1 * a3,
            b1 * a2 - a1 * b2,
        ]
        if all(value == 0 for value in values):
            continue
        if all(value >= 0 for value in values) or all(value <= 0 for value in values):
            if all(value <= 0 for value in values):
                values = [-value for value in values]
            terms = [
                term for term in [(i, values[0]), (j, values[1]), (k, values[2])]
                if term[1] != 0
            ]
            if check_farkas_py(constraints, terms):
                return normalize_farkas_terms(terms)
    raise ValueError("no sparse Farkas certificate found")


def impact_denom(seq: list[str], b: Vec, impact: int) -> Fraction:
    if impact == 0:
        face = seq[0]
    elif impact < 14:
        face = seq[impact]
    else:
        face = seq[0]
    prefix_index = max(impact - 1, 0)
    if prefix_index > 13:
        prefix_index = 13
    prefix = path_prefix_matrices(seq)[prefix_index]
    normal = mat_vec(prefix, vec(FACE_NORMALS[face]))
    return dot(normal, b)


def impact_face(seq: list[str], impact: int) -> str:
    return seq[impact] if impact < 14 else seq[0]


def pre_impact_aff(prefixes: list[Aff], impact: int) -> Aff:
    prefix_index = max(impact - 1, 0)
    if prefix_index > 13:
        prefix_index = 13
    return prefixes[prefix_index]


def copied_normal_offset(
    seq: list[str], prefixes: list[Aff], impact: int, face: str
) -> tuple[Vec, Fraction]:
    matrix, offset = pre_impact_aff(prefixes, impact)
    copied = mat_vec(matrix, vec(FACE_NORMALS[face]))
    return copied, FACE_OFFSETS[face] + dot(copied, offset)


def impact_plane_normal_offset(
    seq: list[str], prefixes: list[Aff], impact: int
) -> tuple[Vec, Fraction]:
    return copied_normal_offset(seq, prefixes, impact, impact_face(seq, impact))


def xp_start_interior(p: Vec) -> bool:
    x, y, z = p
    return (
        x == 1
        and y + z < 1
        and y - z < 1
        and -y + z < 1
        and -y - z < 1
    )


def candidate_w(seq: list[str], p0: Vec) -> Vec:
    return vec_sub(aff_apply(total_aff(seq), p0), p0)


def candidate_line_point(p0: Vec, w: Vec, t: Fraction) -> Vec:
    return vec_add(p0, vec_scale(t, w))


def candidate_impact_time(
    seq: list[str], prefixes: list[Aff], p0: Vec, w: Vec, impact: int
) -> Fraction:
    if impact == 0:
        return Fraction(0)
    if impact == 14:
        return Fraction(1)
    normal_value, offset = impact_plane_normal_offset(seq, prefixes, impact)
    denom = dot(normal_value, w)
    if denom == 0:
        raise ZeroDivisionError("candidate impact denominator is zero")
    return (offset - dot(normal_value, p0)) / denom


def first_bad_candidate_ordering(seq: list[str], p0: Vec, w: Vec) -> int | None:
    prefixes = path_prefix_affs(seq)
    times = [candidate_impact_time(seq, prefixes, p0, w, impact) for impact in range(15)]
    for step in range(14):
        if times[step + 1] <= times[step]:
            return step
    return None


def first_bad_candidate_interior(seq: list[str], p0: Vec, w: Vec) -> tuple[int, str] | None:
    prefixes = path_prefix_affs(seq)
    for impact in range(15):
        hit = impact_face(seq, impact)
        t = candidate_impact_time(seq, prefixes, p0, w, impact)
        point = candidate_line_point(p0, w, t)
        for face in FACE_ORDER:
            if face == hit:
                continue
            copied, offset = copied_normal_offset(seq, prefixes, impact, face)
            if offset <= dot(copied, point):
                return impact, face
    return None


def pair_of_face(face: str) -> str:
    for pair_id in PAIR_IDS:
        if FACE_PLUS[pair_id] == face or FACE_MINUS[pair_id] == face:
            return pair_id
    raise ValueError(face)


def positive_sign_of_face(face: str) -> bool:
    return FACE_PLUS[pair_of_face(face)] == face


def sym_vec(sym: dict, v: Vec) -> Vec:
    x, y, z = v
    if sym["swapYZ"]:
        y, z = z, y
    if sym["negY"]:
        y = -y
    if sym["negZ"]:
        z = -z
    return (x, y, z)


FACE_BY_NORMAL = {vec(normal): face for face, normal in FACE_NORMALS.items()}


def sym_face(sym: dict, face: str) -> str:
    return FACE_BY_NORMAL[sym_vec(sym, vec(FACE_NORMALS[face]))]


def sym_pair(sym: dict, pair_id: str) -> str:
    return pair_of_face(sym_face(sym, FACE_PLUS[pair_id]))


def sym_word(sym: dict, word: list[str]) -> list[str]:
    return [sym_pair(sym, pair_id) for pair_id in word]


def sym_seq(sym: dict, seq: list[str]) -> list[str]:
    return [sym_face(sym, face) for face in seq]


def mask_from_word_seq(word: list[str], seq: list[str]) -> int:
    mask = 0
    for pair_index, pair_id in enumerate(PAIR_IDS[1:]):
        first = word.index(pair_id)
        if positive_sign_of_face(seq[first + 1]):
            mask |= 1 << pair_index
    return mask


def transported_translation_mask(sym: dict, word: list[str], mask: int) -> int:
    _b, seq = translation_vector(word, mask)
    raw_word = sym_word(sym, word)
    raw_seq = sym_seq(sym, seq)
    return mask_from_word_seq(raw_word, raw_seq)


def pair_word_order_key(word: list[str]) -> tuple[int, ...]:
    return tuple(PAIR_IDS.index(pair_id) for pair_id in word)


def translation_choice_order_key(choice: tuple[list[str], int]) -> tuple[tuple[int, ...], int]:
    word, mask = choice
    return pair_word_order_key(word), mask


def started_sym_id(sym: dict) -> int:
    return STARTED_SYMS.index(sym)


def started_sym_inverse(sym: dict) -> dict:
    for candidate in STARTED_SYMS:
        if all(sym_pair(candidate, sym_pair(sym, pair_id)) == pair_id
               for pair_id in PAIR_IDS):
            return candidate
    raise ValueError(f"no inverse for started symmetry {sym}")


def canonical_pair_transform(word: list[str]) -> dict:
    best = STARTED_SYMS[0]
    best_key = pair_word_order_key(sym_word(best, word))
    for candidate in STARTED_SYMS:
        candidate_key = pair_word_order_key(sym_word(candidate, word))
        if candidate_key <= best_key:
            best = candidate
            best_key = candidate_key
    return best


def canonical_translation_transform(word: list[str], mask: int) -> dict:
    best = STARTED_SYMS[0]
    best_key = translation_choice_order_key(
        (sym_word(best, word), transported_translation_mask(best, word, mask))
    )
    for candidate in STARTED_SYMS:
        candidate_key = translation_choice_order_key(
            (
                sym_word(candidate, word),
                transported_translation_mask(candidate, word, mask),
            )
        )
        if candidate_key <= best_key:
            best = candidate
            best_key = candidate_key
    return best


def canonical_word(word: list[str]) -> list[str]:
    return sym_word(canonical_pair_transform(word), word)


def canonical_translation_choice(word: list[str], mask: int) -> tuple[list[str], int]:
    sym = canonical_translation_transform(word, mask)
    return sym_word(sym, word), transported_translation_mask(sym, word, mask)


def canonical_pair_coverage_record(rank: int) -> dict:
    word = pair_word_at_rank(rank)
    sym = canonical_pair_transform(word)
    inverse = started_sym_inverse(sym)
    canonical = sym_word(sym, word)
    return {
        "raw_rank": rank,
        "raw_word": word,
        "canonical_rank": lex_rank_pair_word(canonical),
        "canonical_word": canonical,
        "raw_to_canonical_transform_id": started_sym_id(sym),
        "raw_to_canonical_transform": sym,
        "canonical_to_raw_transform_id": started_sym_id(inverse),
        "canonical_to_raw_transform": inverse,
    }


def canonical_translation_coverage_record(rank: int, mask: int) -> dict:
    word = pair_word_at_rank(rank)
    sym = canonical_translation_transform(word, mask)
    inverse = started_sym_inverse(sym)
    canonical_word_value = sym_word(sym, word)
    canonical_mask = transported_translation_mask(sym, word, mask)
    return {
        "raw_rank": rank,
        "raw_word": word,
        "raw_mask": mask,
        "canonical_rank": lex_rank_pair_word(canonical_word_value),
        "canonical_word": canonical_word_value,
        "canonical_mask": canonical_mask,
        "raw_to_canonical_transform_id": started_sym_id(sym),
        "raw_to_canonical_transform": sym,
        "canonical_to_raw_transform_id": started_sym_id(inverse),
        "canonical_to_raw_transform": inverse,
    }


def lean_started_sym(sym: dict) -> str:
    def lean_bool(value: bool) -> str:
        return "true" if value else "false"

    return (
        "{ swapYZ := " + lean_bool(sym["swapYZ"]) +
        ", negY := " + lean_bool(sym["negY"]) +
        ", negZ := " + lean_bool(sym["negZ"]) + " }"
    )


def forced_sequence_from_axis(word: list[str], axis: Vec) -> list[str]:
    pref = prefix_matrices(word)
    seq = ["xp"]
    for index, pair_id in enumerate(word):
        d = dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis)
        if d == 0:
            raise ValueError("axis does not force this pair sign")
        seq.append(FACE_PLUS[pair_id] if d > 0 else FACE_MINUS[pair_id])
    return seq


def final_axis_dot(word: list[str], axis: Vec) -> Fraction:
    return dot(mat_vec(prefix_matrices(word)[13], vec(NORMALS["x"])), axis)


def first_axis_zero_index(word: list[str], axis: Vec) -> int:
    pref = prefix_matrices(word)
    for index, pair_id in enumerate(word):
        if dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis) == 0:
            return index
    raise ValueError("no zero axis dot found")


def first_axis_zero_index_or_none(word: list[str], axis: Vec) -> int | None:
    pref = prefix_matrices(word)
    for index, pair_id in enumerate(word):
        if dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis) == 0:
            return index
    return None


def first_bad_translation_impact(seq: list[str], b: Vec) -> int:
    for impact in range(1, 14):
        if impact_denom(seq, b, impact) <= 0:
            return impact
    raise ValueError("no bad translation impact denominator found")


def rat_to_json(x: Fraction) -> str:
    if x.denominator == 1:
        return str(x.numerator)
    return f"{x.numerator}/{x.denominator}"


def vec_to_json(v: Vec) -> list[str]:
    return [rat_to_json(x) for x in v]


def mat_to_json(m: Mat) -> list[list[str]]:
    return [[rat_to_json(x) for x in row] for row in m]


def mat4_to_json(m: Mat4) -> list[list[str]]:
    return [[rat_to_json(x) for x in row] for row in m]


def lean_rat(x: Fraction) -> str:
    if x.denominator == 1:
        return str(x.numerator)
    return f"({x.numerator}/{x.denominator})"


def lean_vec(v: Vec) -> str:
    return "{ x := " + lean_rat(v[0]) + ", y := " + lean_rat(v[1]) + ", z := " + lean_rat(v[2]) + " }"


def lean_mat3(m: Mat) -> str:
    fields = [
        ("m00", m[0][0]), ("m01", m[0][1]), ("m02", m[0][2]),
        ("m10", m[1][0]), ("m11", m[1][1]), ("m12", m[1][2]),
        ("m20", m[2][0]), ("m21", m[2][1]), ("m22", m[2][2]),
    ]
    return "{ " + ", ".join(f"{name} := {lean_rat(value)}" for name, value in fields) + " }"


def lean_mat4(m: Mat4) -> str:
    fields = [
        ("m00", m[0][0]), ("m01", m[0][1]), ("m02", m[0][2]), ("m03", m[0][3]),
        ("m10", m[1][0]), ("m11", m[1][1]), ("m12", m[1][2]), ("m13", m[1][3]),
        ("m20", m[2][0]), ("m21", m[2][1]), ("m22", m[2][2]), ("m23", m[2][3]),
        ("m30", m[3][0]), ("m31", m[3][1]), ("m32", m[3][2]), ("m33", m[3][3]),
    ]
    return "{ " + ", ".join(f"{name} := {lean_rat(value)}" for name, value in fields) + " }"


def lean_mat4_id() -> str:
    return "mat4Id"


def lean_aff(a: Aff) -> str:
    matrix, offset = a
    return "{ M := " + lean_mat3(matrix) + ", b := " + lean_vec(offset) + " }"


def lean_pair_id(pair_id: str) -> str:
    return f"PairId.{pair_id}"


def lean_face(face: str) -> str:
    return f"Face.{face}"


def lean_pair_word_literal(word: list[str]) -> str:
    return "  ⟨#[" + ", ".join(lean_pair_id(pair_id) for pair_id in word) + "], by decide⟩"


def lean_pair_word_inline(word: list[str]) -> str:
    return "⟨#[" + ", ".join(lean_pair_id(pair_id) for pair_id in word) + "], by decide⟩"


def lean_sign_mask(mask: int) -> str:
    return f"⟨{mask}, by decide⟩"


def lean_farkas_cert(terms: list[dict]) -> str:
    lean_terms = ", ".join(
        f"({term['index']}, {lean_rat(Fraction(term['multiplier']))})"
        for term in terms
    )
    return "{ terms := [" + lean_terms + "] }"


def lean_translation_constraint_source(source: dict) -> str:
    if source["kind"] == "xpStart":
        return f"TranslationConstraintSource.xpStart ⟨{source['index']}, by decide⟩"
    if source["kind"] == "ordering":
        return f"TranslationConstraintSource.ordering ⟨{source['step']}, by decide⟩"
    if source["kind"] == "interior":
        return (
            "TranslationConstraintSource.interior "
            f"⟨{source['impact']}, by decide⟩ {lean_face(source['face'])}"
        )
    raise ValueError(f"unsupported translation constraint source: {source['kind']}")


def lean_source_farkas_cert(terms: list[dict]) -> str:
    lean_terms = ", ".join(
        "{ source := "
        + lean_translation_constraint_source(term["source"])
        + f", multiplier := {lean_rat(Fraction(term['multiplier']))} }}"
        for term in terms
    )
    return "{ terms := [" + lean_terms + "] }"


def lean_canonical_pair_coverage(record: dict) -> str:
    return (
        "{ rawRank := " + str(record["raw_rank"]) +
        ", rawWord := " + lean_pair_word_inline(record["raw_word"]) +
        ", canonical := { rank := " + str(record["canonical_rank"]) +
        ", word := " + lean_pair_word_inline(record["canonical_word"]) + " }" +
        ", rawToCanonicalTransformId := " +
        str(record["raw_to_canonical_transform_id"]) +
        ", rawToCanonicalTransform := " +
        lean_started_sym(record["raw_to_canonical_transform"]) +
        ", canonicalToRawTransformId := " +
        str(record["canonical_to_raw_transform_id"]) +
        ", canonicalToRawTransform := " +
        lean_started_sym(record["canonical_to_raw_transform"]) +
        " }"
    )


def lean_canonical_translation_coverage(record: dict) -> str:
    return (
        "{ rawRank := " + str(record["raw_rank"]) +
        ", rawWord := " + lean_pair_word_inline(record["raw_word"]) +
        ", rawMask := " + lean_sign_mask(record["raw_mask"]) +
        ", canonical := { rank := " + str(record["canonical_rank"]) +
        ", word := " + lean_pair_word_inline(record["canonical_word"]) +
        ", mask := " + lean_sign_mask(record["canonical_mask"]) + " }" +
        ", rawToCanonicalTransformId := " +
        str(record["raw_to_canonical_transform_id"]) +
        ", rawToCanonicalTransform := " +
        lean_started_sym(record["raw_to_canonical_transform"]) +
        ", canonicalToRawTransformId := " +
        str(record["canonical_to_raw_transform_id"]) +
        ", canonicalToRawTransform := " +
        lean_started_sym(record["canonical_to_raw_transform"]) +
        " }"
    )


def lean_face_vector_literal(seq: list[str]) -> str:
    return "  ⟨#[" + ", ".join(lean_face(face) for face in seq) + "], by decide⟩"


def word_name(rank: int) -> str:
    return f"wordRank{rank:09d}"


def seq_name(name: str) -> str:
    return f"{name}Seq"


@dataclass(frozen=True)
class NonIdCertPayload:
    name: str
    rank: int
    word: list[str]
    axis: Vec
    kernel_cross_factor: Mat
    forced_seq: list[str]
    failure: dict
    p0: Vec = (Fraction(0), Fraction(0), Fraction(0))
    lam: Fraction = Fraction(0)
    solve_left_inverse: Mat4 = mat4_id()

    def to_json(self) -> dict:
        return {
            "name": self.name,
            "rank": self.rank,
            "word": self.word,
            "axis": vec_to_json(self.axis),
            "kernel_cross_factor": mat_to_json(self.kernel_cross_factor),
            "forced_seq": self.forced_seq,
            "p0": vec_to_json(self.p0),
            "lambda": rat_to_json(self.lam),
            "solve_left_inverse": mat4_to_json(self.solve_left_inverse),
            "failure": self.failure,
        }


@dataclass(frozen=True)
class TranslationCertPayload:
    name: str
    rank: int
    mask: int
    word: list[str]
    seq: list[str]
    b: Vec
    failure: dict

    def to_json(self) -> dict:
        return {
            "name": self.name,
            "rank": self.rank,
            "mask": self.mask,
            "word": self.word,
            "seq": self.seq,
            "b": vec_to_json(self.b),
            "failure": self.failure,
        }


def build_nonid_bad_direction(rank: int) -> NonIdCertPayload:
    word = pair_word_at_rank(rank)
    matrix = total_linear(word)
    axis = one_dimensional_fixed_axis(matrix)
    failure_index = first_axis_zero_index(word, axis)
    return NonIdCertPayload(
        name="nonIdBadDirection000",
        rank=rank,
        word=word,
        axis=axis,
        kernel_cross_factor=kernel_line_cross_factor(matrix, axis),
        forced_seq=["xp"] + [FACE_PLUS[pair_id] for pair_id in word],
        failure={"kind": "badDirectionSign", "index": failure_index},
    )


def build_nonid_bad_pair_balance(rank: int) -> NonIdCertPayload:
    word = pair_word_at_rank(rank)
    matrix = total_linear(word)
    axis = one_dimensional_fixed_axis(matrix)
    if final_axis_dot(word, axis) < 0:
        axis = tuple(-value for value in axis)  # type: ignore[assignment]
    if final_axis_dot(word, axis) <= 0:
        raise ValueError("axis orientation failed")
    forced_seq = forced_sequence_from_axis(word, axis)
    if len(set(forced_seq)) == 14:
        raise ValueError("forced sequence unexpectedly omnihedral")
    return NonIdCertPayload(
        name="nonIdBadPairBalance000",
        rank=rank,
        word=word,
        axis=axis,
        kernel_cross_factor=kernel_line_cross_factor(matrix, axis),
        forced_seq=forced_seq,
        failure={"kind": "badPairBalance"},
    )


def build_nonid_no_fixed_axis(rank: int) -> NonIdCertPayload:
    word = pair_word_at_rank(rank)
    matrix = total_linear(word)
    witness = mat3_inverse(fixed_part(matrix))
    return NonIdCertPayload(
        name="nonIdNoFixedAxis000",
        rank=rank,
        word=word,
        axis=vec((0, 0, 0)),
        kernel_cross_factor=mat_id(),
        forced_seq=["xp"] + [FACE_PLUS[pair_id] for pair_id in word],
        failure={"kind": "noFixedAxis", "left_inverse": mat_to_json(witness)},
    )


def build_nonid_axis_or_candidate_failure(rank: int, name: str) -> NonIdCertPayload:
    word = pair_word_at_rank(rank)
    matrix = total_linear(word)
    axis = oriented_fixed_axis(word, matrix)
    if final_axis_dot(word, axis) <= 0:
        raise ValueError("axis orientation failed")
    if any(
        dot(mat_vec(prefix_matrices(word)[index], vec(NORMALS[pair_id])), axis) == 0
        for index, pair_id in enumerate(word)
    ):
        raise ValueError("axis does not force all signs")
    forced_seq = forced_sequence_from_axis(word, axis)
    if len(set(forced_seq)) != 14:
        raise ValueError("forced sequence is not omnihedral")
    affine = total_aff(forced_seq)
    p0, lam, solve_left_inverse = solve_axis_intersection(affine, axis)
    if not xp_start_interior(p0):
        failure = {"kind": "axisMissesStartInterior"}
    else:
        w = candidate_w(forced_seq, p0)
        bad_step = first_bad_candidate_ordering(forced_seq, p0, w)
        if bad_step is not None:
            failure = {"kind": "badFirstHit", "step": bad_step}
        else:
            bad_interior = first_bad_candidate_interior(forced_seq, p0, w)
            if bad_interior is None:
                raise ValueError("candidate did not yield a supported failure")
            impact, bad_face = bad_interior
            failure = {"kind": "badHitInterior", "impact": impact, "badFace": bad_face}
    return NonIdCertPayload(
        name=name,
        rank=rank,
        word=word,
        axis=axis,
        kernel_cross_factor=kernel_line_cross_factor(matrix, axis),
        forced_seq=forced_seq,
        p0=p0,
        lam=lam,
        solve_left_inverse=solve_left_inverse,
        failure=failure,
    )


def build_nonid_cert_for_rank(rank: int, name: str) -> NonIdCertPayload:
    word = pair_word_at_rank(rank)
    matrix = total_linear(word)
    try:
        axis = oriented_fixed_axis(word, matrix)
    except ValueError:
        cert = build_nonid_no_fixed_axis(rank)
        return NonIdCertPayload(
            name=name,
            rank=cert.rank,
            word=cert.word,
            axis=cert.axis,
            kernel_cross_factor=cert.kernel_cross_factor,
            forced_seq=cert.forced_seq,
            failure=cert.failure,
        )
    if final_axis_dot(word, axis) <= 0:
        raise ValueError("unsupported final-axis sign failure")
    zero_index = first_axis_zero_index_or_none(word, axis)
    if zero_index is not None:
        return NonIdCertPayload(
            name=name,
            rank=rank,
            word=word,
            axis=axis,
            kernel_cross_factor=kernel_line_cross_factor(matrix, axis),
            forced_seq=["xp"] + [FACE_PLUS[pair_id] for pair_id in word],
            failure={"kind": "badDirectionSign", "index": zero_index},
        )
    forced_seq = forced_sequence_from_axis(word, axis)
    if len(set(forced_seq)) != 14:
        return NonIdCertPayload(
            name=name,
            rank=rank,
            word=word,
            axis=axis,
            kernel_cross_factor=kernel_line_cross_factor(matrix, axis),
            forced_seq=forced_seq,
            failure={"kind": "badPairBalance"},
        )
    return build_nonid_axis_or_candidate_failure(rank, name)


def build_translation_bad_direction(rank: int, mask: int) -> TranslationCertPayload:
    word = pair_word_at_rank(rank)
    b, seq = translation_vector(word, mask)
    failure_impact = first_bad_translation_impact(seq, b)
    return TranslationCertPayload(
        name="translationBadDirection000",
        rank=rank,
        mask=mask,
        word=word,
        seq=seq,
        b=b,
        failure={"kind": "badDirectionSign", "impact": failure_impact},
    )


def build_payload() -> dict:
    nonid_certs = [build_nonid_bad_direction(1)]
    translation_certs = [build_translation_bad_direction(0, 0)]
    word_ranks = sorted({0, *(cert.rank for cert in nonid_certs), *(cert.rank for cert in translation_certs)})
    words = [{"rank": rank, "word": pair_word_at_rank(rank)} for rank in word_ranks]
    return {
        "schema_version": 2,
        "mode": "small-sample-real-certs",
        "expected_sanity_counts": {
            "pair_words": EXPECTED_PAIR_WORDS,
            "identity_linear_words": EXPECTED_IDENTITY_WORDS,
            "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        },
        "pair_words": words,
        "nonidentity_certs": [cert.to_json() for cert in nonid_certs],
        "translation_certs": [cert.to_json() for cert in translation_certs],
        "chunks": {
            "nonidentity": {
                "name": "NonIdentity.Chunk0000",
                "covered_ranks": [cert.rank for cert in nonid_certs],
                "cert_names": [cert.name for cert in nonid_certs],
            },
            "translation": {
                "name": "Translation.Chunk0000",
                "covered_cases": [
                    {"pair_rank": cert.rank, "sign_mask": cert.mask}
                    for cert in translation_certs
                ],
                "cert_names": [cert.name for cert in translation_certs],
            },
        },
        "summary": {
            "pair_words_sampled": len(words),
            "nonidentity_certs": len(nonid_certs),
            "translation_certs": len(translation_certs),
        },
    }


CANONICAL_SAMPLE_SYM = {"swapYZ": False, "negY": False, "negZ": True}


def transport_nonid_cert(cert: NonIdCertPayload, sym: dict, name: str) -> NonIdCertPayload:
    raw_word = sym_word(sym, cert.word)
    raw_rank = lex_rank_pair_word(raw_word)
    matrix = total_linear(raw_word)
    raw_axis = sym_vec(sym, cert.axis)
    raw_forced_seq = sym_seq(sym, cert.forced_seq)
    failure = dict(cert.failure)
    return NonIdCertPayload(
        name=name,
        rank=raw_rank,
        word=raw_word,
        axis=raw_axis,
        kernel_cross_factor=kernel_line_cross_factor(matrix, raw_axis),
        forced_seq=raw_forced_seq,
        failure=failure,
    )


def transport_translation_cert(
    cert: TranslationCertPayload, sym: dict, name: str
) -> TranslationCertPayload:
    raw_word = sym_word(sym, cert.word)
    raw_seq = sym_seq(sym, cert.seq)
    raw_mask = mask_from_word_seq(raw_word, raw_seq)
    raw_b, checked_seq = translation_vector(raw_word, raw_mask)
    if checked_seq != raw_seq:
        raise ValueError("transported translation sequence does not match mask")
    expected_b = sym_vec(sym, cert.b)
    if raw_b != expected_b:
        raise ValueError("transported translation vector mismatch")
    failure = dict(cert.failure)
    raw_rank = lex_rank_pair_word(raw_word)
    return TranslationCertPayload(
        name=name,
        rank=raw_rank,
        mask=raw_mask,
        word=raw_word,
        seq=raw_seq,
        b=raw_b,
        failure=failure,
    )


def build_canonical_payload() -> dict:
    canonical_nonid = build_nonid_bad_direction(1)
    canonical_translation = build_translation_bad_direction(0, 0)
    raw_nonid = transport_nonid_cert(
        canonical_nonid, CANONICAL_SAMPLE_SYM, "nonIdBadDirectionSym000"
    )
    raw_translation = transport_translation_cert(
        canonical_translation, CANONICAL_SAMPLE_SYM, "translationBadDirectionSym000"
    )
    records = {
        canonical_nonid.rank: canonical_nonid.word,
        canonical_translation.rank: canonical_translation.word,
        raw_nonid.rank: raw_nonid.word,
        raw_translation.rank: raw_translation.word,
    }
    words = [{"rank": rank, "word": records[rank]} for rank in sorted(records)]
    return {
        "schema_version": 1,
        "mode": "canonical-symmetry-sample",
        "symmetry": CANONICAL_SAMPLE_SYM,
        "transform_policy": {
            "proof_reducing_transforms": ["started_symmetry"],
            "grouping_only_transforms": ["reversal"],
            "reversal_proof_transport_enabled": False,
            "canonical_rule": "lexicographic_minimum_over_started_symmetry_group",
            "combined_exact_manifest_step": "14E.2A",
        },
        "pair_words": words,
        "nonidentity": {
            "canonical": canonical_nonid.to_json(),
            "raw": raw_nonid.to_json(),
        },
        "translation": {
            "canonical": canonical_translation.to_json(),
            "raw": raw_translation.to_json(),
        },
        "summary": {
            "canonical_pair_words": len(words),
            "nonidentity_transport_cases": 1,
            "translation_transport_cases": 1,
        },
    }


def append_word_definitions(lines: list[str], payload: dict) -> None:
    for record in payload["pair_words"]:
        rank = record["rank"]
        name = word_name(rank)
        lines.append(f"def {name} : PairWord :=")
        lines.append(lean_pair_word_literal(record["word"]))
        lines.append("")
        append_pair_word_get_theorems(lines, name, record["word"])


def append_pair_word_get_theorems(lines: list[str], name: str, word: list[str]) -> None:
    for index, pair_id in enumerate(word):
        pair = lean_pair_id(pair_id)
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


def append_face_vector_get_theorems(lines: list[str], name: str, seq: list[str]) -> None:
    for index, face in enumerate(seq):
        face_term = lean_face(face)
        lines.extend([
            f"@[simp] theorem {name}_get{index:02d}_num :",
            f"    {name}.get ({index} : Step14) = {face_term} := by",
            "  decide",
            "",
            f"@[simp] theorem {name}_get{index:02d}_mk (h : {index} < 14) :",
            f"    {name}.get ⟨{index}, h⟩ = {face_term} := by",
            f"  have hi : (⟨{index}, h⟩ : Step14) = ({index} : Step14) := by",
            "    ext",
            "    rfl",
            "  rw [hi]",
            "  decide",
            "",
        ])


def append_nonid_cert(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    forced = seq_name(name)
    axis = tuple(Fraction(x) for x in cert["axis"])  # type: ignore[assignment]
    kernel = tuple(tuple(Fraction(x) for x in row) for row in cert["kernel_cross_factor"])  # type: ignore[assignment]
    p0 = tuple(Fraction(x) for x in cert.get("p0", ["0", "0", "0"]))  # type: ignore[assignment]
    lam = Fraction(cert.get("lambda", "0"))
    solve = tuple(
        tuple(Fraction(x) for x in row)
        for row in cert.get("solve_left_inverse", mat4_to_json(mat4_id()))
    )  # type: ignore[assignment]
    lines.append(f"def {forced} : Vector Face 14 :=")
    lines.append(lean_face_vector_literal(cert["forced_seq"]))
    lines.append("")
    append_face_vector_get_theorems(lines, forced, cert["forced_seq"])
    lines.append(f"def {name} : NonIdCert where")
    lines.append(f"  word := {word_name(cert['rank'])}")
    lines.append(f"  axis := {lean_vec(axis)}")
    lines.append(f"  kernel := {{ crossFactor := {lean_mat3(kernel)} }}")
    lines.append(f"  forcedSeq := {forced}")
    lines.append(f"  p0 := {lean_vec(p0)}")
    lines.append(f"  lambda := {lean_rat(lam)}")
    lines.append(f"  solve := {{ leftInverse := {lean_mat4(solve)} }}")
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        lines.append(f"  failure := NonIdFailure.badDirectionSign ⟨{failure['index']}, by decide⟩")
    elif failure["kind"] == "badPairBalance":
        lines.append("  failure := NonIdFailure.badPairBalance")
    elif failure["kind"] == "noFixedAxis":
        witness = tuple(tuple(Fraction(x) for x in row) for row in failure["left_inverse"])  # type: ignore[assignment]
        lines.append(f"  failure := NonIdFailure.noFixedAxis {{ leftInverse := {lean_mat3(witness)} }}")
    elif failure["kind"] == "axisMissesStartInterior":
        lines.append("  failure := NonIdFailure.axisMissesStartInterior")
    elif failure["kind"] == "badFirstHit":
        lines.append(
            "  failure := NonIdFailure.badFirstHit "
            f"{{ step := ⟨{failure['step']}, by decide⟩ }}"
        )
    elif failure["kind"] == "badHitInterior":
        lines.append(
            "  failure := NonIdFailure.badHitInterior "
            f"{{ impact := ⟨{failure['impact']}, by decide⟩, "
            f"badFace := {lean_face(failure['badFace'])} }}"
        )
    else:
        raise ValueError(f"unsupported nonidentity failure: {failure['kind']}")
    lines.append("")


def append_translation_cert(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    seq = seq_name(name)
    b = tuple(Fraction(x) for x in cert["b"])  # type: ignore[assignment]
    lines.append(f"def {seq} : Vector Face 14 :=")
    lines.append(lean_face_vector_literal(cert["seq"]))
    lines.append("")
    append_face_vector_get_theorems(lines, seq, cert["seq"])
    lines.append(f"def {name} : TranslationCert where")
    lines.append(f"  word := {word_name(cert['rank'])}")
    lines.append(f"  signMask := ⟨{cert['mask']}, by decide⟩")
    lines.append(f"  seq := {seq}")
    lines.append(f"  b := {lean_vec(b)}")
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        lines.append(f"  failure := TranslationFailure.badDirectionSign ⟨{failure['impact']}, by decide⟩")
    elif failure["kind"] == "badTranslationVector":
        lines.append("  failure := TranslationFailure.badTranslationVector")
    elif failure["kind"] == "farkas":
        if "sourceTerms" in failure:
            lines.append(
                "  failure := TranslationFailure.sourceFarkas "
                f"{lean_source_farkas_cert(failure['sourceTerms'])}"
            )
        else:
            lines.append(f"  failure := TranslationFailure.farkas {lean_farkas_cert(failure['terms'])}")
    else:
        raise ValueError(f"unsupported translation failure: {failure['kind']}")
    lines.append("")


def nonid_check_body_lines(cert: dict, indent: str = "  ") -> list[str]:
    name = cert["name"]
    failure = cert["failure"]
    if failure["kind"] != "badDirectionSign":
        raise ValueError(f"unsupported nonidentity proof template: {failure['kind']}")
    idx = failure["index"]
    word = word_name(cert["rank"])
    return [
        f"{indent}apply checkNonIdCert_badDirectionSign {name} ⟨{idx}, by decide⟩",
        f"{indent}· rfl",
        f"{indent}· unfold {name} {word} ValidPairWord pairCount",
        f"{indent}  decide",
        f"{indent}· rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"{indent}  simp [{name}, pairLinearProductRight, pairLinearSuffixNat, reflM,",
        f"{indent}    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        f"{indent}  norm_num",
        f"{indent}· rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"{indent}  simp [{name}, checkKernelLineWitness, checkVec3NonzeroQ,",
        f"{indent}    pairLinearProductRight, pairLinearSuffixNat, reflM, canonicalNormalQ,",
        f"{indent}    matSub, matId, scalarMat, outer, dot, matMul, matVec, fixedPart,",
        f"{indent}    crossLeftMatrix]",
        f"{indent}  norm_num",
        f"{indent}· intro f hf",
        f"{indent}  cases f <;> simp [{name}, pairOfFace, pairPrefixLinearNat,",
        f"{indent}    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,",
        f"{indent}    scalarMat, outer, matVec] at hf ⊢",
    ]


def append_nonid_check_theorem(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    lines.extend([
        f"theorem {name}_check : checkNonIdCert {name} = true := by",
        *nonid_check_body_lines(cert),
        "",
    ])


def translation_check_body_lines(cert: dict, indent: str = "  ") -> list[str]:
    name = cert["name"]
    failure = cert["failure"]
    word = word_name(cert["rank"])
    denom_simp = [
        f"{indent}· simp [",
        f"{indent}    {name}, TranslationCert.seqFun, faceVectorSeq, impactDenom,",
        f"{indent}    impactPlaneNormalQ, copiedNormalQ, preImpactNormalQ,",
        f"{indent}    preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,",
        f"{indent}    faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId,",
        f"{indent}    affId, affCompose, scalarMat, outer, dot, matMul, matVec,",
        f"{indent}    vecAdd, scalarMul, lastImpact] <;> norm_num",
    ]
    farkas_simp = [
        f"{indent}· simp [",
        f"{indent}    {name}, TranslationCert.seqFun, faceVectorSeq, checkFarkas,",
        f"{indent}    checkFarkasTerm, checkFarkasPositive, weightedSum, termLinear,",
        f"{indent}    constraintAt, translationConstraints, xpStartConstraints,",
        f"{indent}    orderingConstraints, orderingConstraint, interiorConstraints,",
        f"{indent}    impactInteriorConstraints, impactInteriorConstraint,",
        f"{indent}    nonStartImpacts, allFacesList, nextImpact, impactTimeLin,",
        f"{indent}    translationLinePointLin, linDotVec3, Lin2.ltConstraint,",
        f"{indent}    Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,",
        f"{indent}    StrictLin2.zero, StrictLin2.add, StrictLin2.scale,",
        f"{indent}    impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,",
        f"{indent}    copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,",
        f"{indent}    pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,",
        f"{indent}    normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,",
        f"{indent}    outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num",
    ]
    source_farkas_simp = [
        f"{indent}· simp [",
        f"{indent}    {name}, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,",
        f"{indent}    checkSourceFarkasTerm, checkTranslationConstraintSource,",
        f"{indent}    SourceFarkasCert.sourceConstraints, SourceFarkasCert.toFarkasCert,",
        f"{indent}    SourceFarkasCert.indexedTerms, SourceFarkasCert.indexedTermsAux,",
        f"{indent}    checkFarkas, checkFarkasTerm, checkFarkasPositive,",
        f"{indent}    weightedSum, termLinear, constraintAt,",
        f"{indent}    translationConstraintSourceLine, xpStartConstraintAt,",
        f"{indent}    orderingConstraint, impactInteriorConstraint, impactTimeLin,",
        f"{indent}    translationLinePointLin, linDotVec3, Lin2.ltConstraint,",
        f"{indent}    Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,",
        f"{indent}    StrictLin2.zero, StrictLin2.add, StrictLin2.scale,",
        f"{indent}    impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,",
        f"{indent}    copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,",
        f"{indent}    pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,",
        f"{indent}    normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,",
        f"{indent}    outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num",
    ]
    common = [
        f"{indent}· unfold {name} {word} ValidPairWord pairCount",
        f"{indent}  decide",
        f"{indent}· rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"{indent}  simp [{name}, pairLinearProductRight, pairLinearSuffixNat, reflM,",
        f"{indent}    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        f"{indent}  norm_num",
        f"{indent}· intro i",
        f"{indent}  fin_cases i <;> simp [{name}, translationChoiceSeq, signedPositiveAt,",
        f"{indent}    maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]",
        f"{indent}· apply Vec3.ext <;> norm_num [",
        f"{indent}    {name}, TranslationCert.seqFun, faceVectorSeq, totalAff,",
        f"{indent}    totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,",
        f"{indent}    reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,",
        f"{indent}    dot, matMul, matVec, vecAdd, scalarMul]",
    ]
    if failure["kind"] == "badDirectionSign":
        impact = failure["impact"]
        return [
            f"{indent}apply checkTranslationCert_badDirectionSign {name} ⟨{impact}, by decide⟩",
            f"{indent}· rfl",
            *common,
            f"{indent}· decide",
            f"{indent}· decide",
            *denom_simp,
        ]
    if failure["kind"] == "badTranslationVector":
        return [
            f"{indent}apply checkTranslationCert_badTranslationVector {name}",
            f"{indent}· rfl",
            *common,
            f"{indent}· decide",
        ]
    if failure["kind"] == "farkas":
        if "sourceTerms" in failure:
            return [
                f"{indent}apply checkTranslationCert_sourceFarkas {name} {lean_source_farkas_cert(failure['sourceTerms'])}",
                f"{indent}· rfl",
                *common,
                *source_farkas_simp,
            ]
        return [
            f"{indent}apply checkTranslationCert_farkas {name} {lean_farkas_cert(failure['terms'])}",
            f"{indent}· rfl",
            *common,
            *farkas_simp,
        ]
    raise ValueError(f"unsupported translation proof template: {failure['kind']}")


def append_translation_check_theorem(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    lines.extend([
        f"theorem {name}_check : checkTranslationCert {name} = true := by",
        *translation_check_body_lines(cert),
        "",
    ])


def write_lean(payload: dict) -> None:
    lines: list[str] = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Small exact generated sample for Step 14C.",
        "",
        "This file is generated by `scripts/generate_exact_certificates.py --small-sample`.",
        "It is not an exhaustive certificate chunk.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.SmallSample",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "",
    ]
    append_word_definitions(lines, payload)
    for cert in payload["nonidentity_certs"]:
        append_nonid_cert(lines, cert)
    for cert in payload["translation_certs"]:
        append_translation_cert(lines, cert)
    for cert in payload["nonidentity_certs"]:
        append_nonid_check_theorem(lines, cert)
    for cert in payload["translation_certs"]:
        append_translation_check_theorem(lines, cert)
    nonid_names = ", ".join(cert["name"] for cert in payload["nonidentity_certs"])
    translation_names = ", ".join(cert["name"] for cert in payload["translation_certs"])
    word_names = ", ".join(word_name(record["rank"]) for record in payload["pair_words"])
    nonid_check_names = ", ".join(
        cert["name"] + "_check" for cert in payload["nonidentity_certs"]
    )
    translation_check_names = ", ".join(
        cert["name"] + "_check" for cert in payload["translation_certs"]
    )
    lines.extend([
        "def samplePairWords : Array PairWord :=",
        f"  #[{word_names}]",
        "",
        "def nonIdCerts : Array NonIdCert :=",
        f"  #[{nonid_names}]",
        "",
        "def translationCerts : Array TranslationCert :=",
        f"  #[{translation_names}]",
        "",
        "theorem nonIdCerts_check : checkNonIdCerts nonIdCerts = true := by",
        f"  simp [checkNonIdCerts, nonIdCerts, {nonid_check_names}]",
        "",
        "theorem translationCerts_check : checkTranslationCerts translationCerts = true := by",
        f"  simp [checkTranslationCerts, translationCerts, {translation_check_names}]",
        "",
        "end Cuboctahedron.Generated.SmallSample",
        "",
    ])
    LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_nonidentity_chunk(payload: dict) -> None:
    chunk = payload["chunks"]["nonidentity"]
    certs = payload["nonidentity_certs"]
    rank_check_names = [
        f"{cert['name']}_coveredRank" for cert in certs
    ]
    cert_check_names = [
        f"SmallSample.{cert['name']}_check" for cert in certs
    ]
    lines: list[str] = [
        "import Cuboctahedron.Generated.SmallSample",
        "",
        "/-!",
        "Generated non-identity real-certificate sample chunk for Step 14C.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "",
        "open Cuboctahedron.Generated.SmallSample",
        "",
    ]
    for cert in certs:
        lines.extend([
            f"theorem {cert['name']}_coveredRank :",
            f"    checkNonIdCoveredRank {cert['rank']} SmallSample.{cert['name']} = true := by",
            "  decide",
            "",
        ])
    lines.extend([
        "def chunk : GeneratedNonIdCertChunk where",
        f"  name := \"{chunk['name']}\"",
        f"  coveredRanks := #[{', '.join(str(rank) for rank in chunk['covered_ranks'])}]",
        "  certs := nonIdCerts",
        "",
        "def certs : Array NonIdCert :=",
        "  chunk.certs",
        "",
        "theorem certs_check : checkGeneratedNonIdCertChunk chunk = true := by",
        "  simp [checkGeneratedNonIdCertChunk, checkNonIdCoveredRankList,",
        "    chunk, SmallSample.nonIdCerts,",
        f"    {', '.join(rank_check_names + cert_check_names)}]",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "",
    ])
    NONIDENTITY_CHUNK_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_CHUNK_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_translation_chunk(payload: dict) -> None:
    chunk = payload["chunks"]["translation"]
    certs = payload["translation_certs"]
    cert_check_names = [
        f"SmallSample.{cert['name']}_check" for cert in certs
    ]
    lines: list[str] = [
        "import Cuboctahedron.Generated.SmallSample",
        "",
        "/-!",
        "Generated translation real-certificate sample chunk for Step 14C.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.Chunk0000",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "",
        "open Cuboctahedron.Generated.SmallSample",
        "",
    ]
    case_names = []
    for index, covered in enumerate(chunk["covered_cases"]):
        case_name = f"coveredCase{index:03d}"
        case_names.append(case_name)
        lines.extend([
            f"def {case_name} : GeneratedTranslationCase where",
            f"  pairRank := {covered['pair_rank']}",
            f"  signMask := {covered['sign_mask']}",
            "",
        ])
    covered_check_names = []
    for index, cert in enumerate(certs):
        covered_name = case_names[index]
        theorem_name = f"{cert['name']}_coveredCase"
        covered_check_names.append(theorem_name)
        lines.extend([
            f"theorem {theorem_name} :",
            f"    checkTranslationCoveredCase {covered_name} SmallSample.{cert['name']} = true := by",
            "  decide",
            "",
        ])
    lines.extend([
        "def chunk : GeneratedTranslationCertChunk where",
        f"  name := \"{chunk['name']}\"",
        f"  coveredCases := #[{', '.join(case_names)}]",
        "  certs := translationCerts",
        "",
        "def certs : Array TranslationCert :=",
        "  chunk.certs",
        "",
        "theorem certs_check : checkGeneratedTranslationCertChunk chunk = true := by",
        "  simp [checkGeneratedTranslationCertChunk, checkTranslationCoveredCaseList,",
        "    chunk, SmallSample.translationCerts,",
        f"    {', '.join(covered_check_names + cert_check_names)}]",
        "",
        "end Cuboctahedron.Generated.Translation.Chunk0000",
        "",
    ])
    TRANSLATION_CHUNK_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_CHUNK_PATH.write_text("\n".join(lines), encoding="utf-8")


def build_coverage_chunks() -> list[dict]:
    chunks = []
    for start in range(0, EXPECTED_PAIR_WORDS, COVERAGE_CHUNK_SIZE):
        end = min(start + COVERAGE_CHUNK_SIZE, EXPECTED_PAIR_WORDS)
        chunks.append({
            "startRank": start,
            "endRank": end,
            "expectedItems": end - start,
        })
    return chunks


def build_coverage_payload() -> dict:
    return {
        "pairWordCount": EXPECTED_PAIR_WORDS,
        "signMaskCount": 64,
        "coverageKind": "contiguous-rank-intervals",
        "chunkSize": COVERAGE_CHUNK_SIZE,
        "chunks": build_coverage_chunks(),
    }


def build_canonical_coverage_payload() -> dict:
    if not CANONICAL_ORBIT_JSON_PATH.exists():
        raise SystemExit(
            "missing canonical orbit coverage JSON; run the canonical orbit "
            "coverage helper before generating Step 14E.2A"
        )
    canonical_orbit = json.loads(CANONICAL_ORBIT_JSON_PATH.read_text(encoding="utf-8"))
    actual = canonical_orbit["actual_counts"]
    canonical = canonical_orbit["canonical_counts"]
    coverage = build_coverage_payload()
    return {
        "schema_version": 1,
        "mode": "canonical-coverage-manifest",
        "coverage_kind": "functional-started-symmetry-canonicalization",
        "transform_policy": canonical_orbit["transform_policy"],
        "raw_counts": {
            "pair_words": actual["pair_words"],
            "identity_linear_words": actual["identity_linear_words"],
            "translation_sign_assignments": actual["translation_sign_assignments"],
        },
        "canonical_counts": {
            "pair_word_classes": canonical["pair_word_classes"],
            "translation_choice_classes": canonical["translation_choice_classes"],
            "max_pair_word_orbit": canonical["max_pair_word_orbit"],
            "max_translation_choice_orbit": canonical["max_translation_choice_orbit"],
        },
        "transform_ids": [
            {"id": index, "sym": sym}
            for index, sym in enumerate(STARTED_SYMS)
        ],
        "proof_reducing_transform_ids": list(range(len(STARTED_SYMS))),
        "rank_coverage": {
            "coverageKind": coverage["coverageKind"],
            "pairWordCount": coverage["pairWordCount"],
            "signMaskCount": coverage["signMaskCount"],
            "chunkSize": coverage["chunkSize"],
            "chunkCount": len(coverage["chunks"]),
            "firstChunk": coverage["chunks"][0],
            "lastChunk": coverage["chunks"][-1],
        },
    }


def write_coverage_manifest(payload: dict) -> None:
    coverage = payload["coverage"] if "coverage" in payload else payload
    lines = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Generated Step 14 coverage manifest.",
        "",
        "This manifest is retained as coverage arithmetic scaffolding. It is not",
        "imported by `Generated.AllGenerated` in Step 14C because the exhaustive",
        "real-certificate bridge is Step 14D work.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.CoverageManifest",
        "",
        "set_option maxRecDepth 10000",
        "",
        "def generatedCoverageManifest : Cuboctahedron.CoverageManifest where",
        "  chunks := [",
    ]
    for chunk in coverage["chunks"]:
        lines.extend([
            "    {",
            f"      startRank := {chunk['startRank']}",
            f"      endRank := {chunk['endRank']}",
            f"      expectedItems := {chunk['expectedItems']}",
            "    },",
        ])
    lines.extend([
        "  ]",
        f"  signMaskCount := {coverage['signMaskCount']}",
        "",
        "theorem generatedCoverageManifest_check :",
        "    Cuboctahedron.checkCoverageManifest generatedCoverageManifest = true := by",
        "  rfl",
        "",
        "end Cuboctahedron.Generated.CoverageManifest",
        "",
    ])
    COVERAGE_MANIFEST_PATH.parent.mkdir(parents=True, exist_ok=True)
    COVERAGE_MANIFEST_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_canonical_coverage_manifest(payload: dict) -> None:
    raw = payload["raw_counts"]
    canonical = payload["canonical_counts"]
    lines = [
        "import Cuboctahedron.Generated.CoverageManifest",
        "",
        "/-!",
        "Generated Step 14E.2A canonical coverage manifest.",
        "",
        "The manifest is functional: Lean computes the raw-to-canonical mapping",
        "from the started-symmetry canonicalization definitions instead of",
        "storing one row per raw case.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated",
        "",
        "def canonicalCoverageManifest : Cuboctahedron.CanonicalCoverageManifest where",
        "  rankCoverage := Cuboctahedron.Generated.CoverageManifest.generatedCoverageManifest",
        f"  pairWordCount := {raw['pair_words']}",
        f"  identityLinearWordCount := {raw['identity_linear_words']}",
        f"  translationChoiceCount := {raw['translation_sign_assignments']}",
        f"  canonicalPairWordClassCount := {canonical['pair_word_classes']}",
        f"  canonicalTranslationChoiceClassCount := {canonical['translation_choice_classes']}",
        f"  maxPairWordOrbit := {canonical['max_pair_word_orbit']}",
        f"  maxTranslationChoiceOrbit := {canonical['max_translation_choice_orbit']}",
        "  proofReducingTransformIds := Cuboctahedron.proofReducingStartedTransformIds",
        "  proofReducingTransformCount := 8",
        "  reversalProofTransportEnabled := false",
        "",
        "theorem canonicalCoverageManifest_sound :",
        "    Cuboctahedron.CanonicalCoverageManifestSound",
        "      canonicalCoverageManifest where",
        "  rankCoverageChecked :=",
        "    Cuboctahedron.Generated.CoverageManifest.generatedCoverageManifest_check",
        "  pairWordCount_eq := rfl",
        "  identityLinearWordCount_eq := rfl",
        "  translationChoiceCount_eq := rfl",
        "  canonicalPairWordClassCount_eq := rfl",
        "  canonicalTranslationChoiceClassCount_eq := rfl",
        "  maxPairWordOrbit_eq := rfl",
        "  maxTranslationChoiceOrbit_eq := rfl",
        "  proofReducingTransformIds_eq := rfl",
        "  proofReducingTransformCount_eq := rfl",
        "  startedSymGroupChecked := Cuboctahedron.checkStartedSymGroup_true",
        "  reversalPolicy_eq := rfl",
        "",
        "theorem canonicalCoverageManifest_check :",
        "    Cuboctahedron.checkCanonicalCoverageManifest",
        "      canonicalCoverageManifest = true := by",
        "  classical",
        "  unfold Cuboctahedron.checkCanonicalCoverageManifest",
        "  exact decide_eq_true canonicalCoverageManifest_sound",
        "",
        "#check Cuboctahedron.checkCanonicalCoverageManifest_sound",
        "#check canonicalCoverageManifest",
        "#check canonicalCoverageManifest_sound",
        "",
        "end Cuboctahedron.Generated",
        "",
    ]
    CANONICAL_COVERAGE_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    CANONICAL_COVERAGE_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_all_generated() -> None:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "import Cuboctahedron.Generated.NonIdentity.FamilySample",
        "import Cuboctahedron.Generated.Translation.Chunk0000",
        "import Cuboctahedron.Generated.CanonicalSample",
        "import Cuboctahedron.Generated.CanonicalCoverageManifest",
        "import Cuboctahedron.Generated.CoverageTreeSample",
        "",
        "/-!",
        "Aggregate import for generated Step 14C/14E real-certificate sample chunks.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated",
        "",
        "noncomputable def allGeneratedCheck : Bool :=",
        "  checkGeneratedNonIdCertChunk NonIdentity.Chunk0000.chunk &&",
        "    checkGeneratedTranslationCertChunk Translation.Chunk0000.chunk",
        "",
        "theorem allGeneratedCheck_true : allGeneratedCheck = true := by",
        "  unfold allGeneratedCheck",
        "  rw [NonIdentity.Chunk0000.certs_check, Translation.Chunk0000.certs_check]",
        "  rfl",
        "",
        "theorem nonidentityChunk_sound :",
        "    List.Forall₂ NonIdRankCertificateCovered",
        "      NonIdentity.Chunk0000.chunk.coveredRanks.toList",
        "      NonIdentity.Chunk0000.chunk.certs.toList :=",
        "  checkGeneratedNonIdCertChunk_sound NonIdentity.Chunk0000.certs_check",
        "",
        "theorem translationChunk_sound :",
        "    List.Forall₂ TranslationCaseCertificateCovered",
        "      Translation.Chunk0000.chunk.coveredCases.toList",
        "      Translation.Chunk0000.chunk.certs.toList :=",
        "  checkGeneratedTranslationCertChunk_sound Translation.Chunk0000.certs_check",
        "",
        "noncomputable def allGeneratedCoverageTreeCheck : Bool :=",
        "  checkNonIdCoverageTree CoverageTreeSample.nonIdRawTree &&",
        "    checkNonIdCoverageTree CoverageTreeSample.nonIdTransportTree &&",
        "      checkNonIdCoverageForest NonIdentity.sampleFamilyCoverage &&",
        "        checkTranslationCoverageTree CoverageTreeSample.translationRawTree &&",
        "          checkTranslationCoverageTree CoverageTreeSample.translationTransportTree",
        "",
        "theorem allGeneratedCoverageTreeCheck_true :",
        "    allGeneratedCoverageTreeCheck = true := by",
        "  unfold allGeneratedCoverageTreeCheck",
        "  rw [CoverageTreeSample.nonIdRawTree_check,",
        "    CoverageTreeSample.nonIdTransportTree_check,",
        "    NonIdentity.sampleFamilyCoverage_check,",
        "    CoverageTreeSample.translationRawTree_check,",
        "    CoverageTreeSample.translationTransportTree_check]",
        "  rfl",
        "",
        "end Cuboctahedron.Generated",
        "",
    ]
    ALL_GENERATED_PATH.parent.mkdir(parents=True, exist_ok=True)
    ALL_GENERATED_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_canonical_lean(payload: dict) -> None:
    sym = payload["symmetry"]
    raw_nonid = payload["nonidentity"]["raw"]
    raw_translation = payload["translation"]["raw"]
    lines: list[str] = [
        "import Cuboctahedron.Generated.SmallSample",
        "",
        "/-!",
        "Generated representative symmetry/canonicalization sample for Step 14E.2.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.CanonicalSample",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "",
        "def sampleSym : StartedSym :=",
        f"  {lean_started_sym(sym)}",
        "",
    ]
    append_word_definitions(lines, payload)
    append_nonid_cert(lines, raw_nonid)
    append_translation_cert(lines, raw_translation)
    append_nonid_check_theorem(lines, raw_nonid)
    append_translation_check_theorem(lines, raw_translation)
    lines.extend([
        "def nonidentityTransport : CanonicalNonIdTransport where",
        "  sym := sampleSym",
        "  canonical := Cuboctahedron.Generated.SmallSample.nonIdBadDirection000",
        f"  raw := {raw_nonid['name']}",
        "",
        "theorem nonidentity_transport_eq :",
        f"    {raw_nonid['name']} =",
        "      transportNonIdCertWith sampleSym",
        "        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000",
        f"        {raw_nonid['name']}.kernel",
        f"        {raw_nonid['name']}.solve := by",
        f"  unfold {raw_nonid['name']} transportNonIdCertWith",
        "  rw [Cuboctahedron.NonIdCert.mk.injEq]",
        "  constructor",
        "  · apply vector_ext_from_get",
        "    intro i",
        "    fin_cases i <;> decide",
        "  constructor",
        "  · apply Vec3.ext <;> norm_num [",
        "      Cuboctahedron.Generated.SmallSample.nonIdBadDirection000,",
        "      sampleSym, symVecQ, negIf]",
        "  constructor",
        "  · rfl",
        "  constructor",
        "  · apply vector_ext_from_get",
        "    intro i",
        "    fin_cases i <;> decide",
        "  constructor",
        "  · apply Vec3.ext <;> norm_num [",
        "      Cuboctahedron.Generated.SmallSample.nonIdBadDirection000,",
        "      sampleSym, symVecQ, negIf]",
        "  constructor",
        "  · rfl",
        "  constructor",
        "  · rfl",
        "  · rfl",
        "",
        "theorem nonidentity_transport_check :",
        "    checkCanonicalNonIdTransport nonidentityTransport = true := by",
        "  have htransported :",
        "      checkNonIdCert",
        "        (transportNonIdCertWith sampleSym",
        "          Cuboctahedron.Generated.SmallSample.nonIdBadDirection000",
        f"          {raw_nonid['name']}.kernel",
        f"          {raw_nonid['name']}.solve) = true := by",
        "    rw [← nonidentity_transport_eq]",
        *nonid_check_body_lines(raw_nonid, indent="    "),
        "  unfold checkCanonicalNonIdTransport",
        "  change",
        "      (checkNonIdCert Cuboctahedron.Generated.SmallSample.nonIdBadDirection000 &&",
        "        checkNonIdCert",
        "          (transportNonIdCertWith sampleSym",
        "            Cuboctahedron.Generated.SmallSample.nonIdBadDirection000",
        f"            {raw_nonid['name']}.kernel",
        f"            {raw_nonid['name']}.solve) &&",
        f"          decide ({raw_nonid['name']} =",
        "            transportNonIdCertWith sampleSym",
        "              Cuboctahedron.Generated.SmallSample.nonIdBadDirection000",
        f"              {raw_nonid['name']}.kernel",
        f"              {raw_nonid['name']}.solve)) = true",
        "  rw [Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check,",
        "    htransported]",
        "  simp only [Bool.true_and]",
        "  exact decide_eq_true nonidentity_transport_eq",
        "",
        "theorem nonidentity_transport_derived_check :",
        f"    checkNonIdCert {raw_nonid['name']} = true :=",
        "  canonical_nonidentity_failure_transport nonidentityTransport",
        "    nonidentity_transport_check",
        "",
        "def translationTransport : CanonicalTranslationTransport where",
        "  sym := sampleSym",
        "  canonical := Cuboctahedron.Generated.SmallSample.translationBadDirection000",
        f"  raw := {raw_translation['name']}",
        "",
        "theorem translation_transport_eq :",
        f"    {raw_translation['name']} =",
        "      transportTranslationCertShape sampleSym",
        "        Cuboctahedron.Generated.SmallSample.translationBadDirection000 := by",
        f"  unfold {raw_translation['name']} transportTranslationCertShape",
        "  rw [Cuboctahedron.TranslationCert.mk.injEq]",
        "  constructor",
        "  · apply vector_ext_from_get",
        "    intro i",
        "    fin_cases i <;> decide",
        "  constructor",
        "  · decide",
        "  constructor",
        "  · apply vector_ext_from_get",
        "    intro i",
        "    fin_cases i <;> decide",
        "  constructor",
        "  · apply Vec3.ext <;> norm_num [",
        "      Cuboctahedron.Generated.SmallSample.translationBadDirection000,",
        "      sampleSym, symVecQ, negIf]",
        "  · rfl",
        "",
        "theorem translation_transport_check :",
        "    checkCanonicalTranslationTransport translationTransport = true := by",
        "  have htransported :",
        "      checkTranslationCert",
        "        (transportTranslationCertShape sampleSym",
        "          Cuboctahedron.Generated.SmallSample.translationBadDirection000) = true := by",
        "    rw [← translation_transport_eq]",
        *translation_check_body_lines(raw_translation, indent="    "),
        "  unfold checkCanonicalTranslationTransport",
        "  change",
        "      (checkTranslationCert Cuboctahedron.Generated.SmallSample.translationBadDirection000 &&",
        "        checkTranslationCert",
        "          (transportTranslationCertShape sampleSym",
        "            Cuboctahedron.Generated.SmallSample.translationBadDirection000) &&",
        f"          decide ({raw_translation['name']} =",
        "            transportTranslationCertShape sampleSym",
        "              Cuboctahedron.Generated.SmallSample.translationBadDirection000)) = true",
        "  rw [Cuboctahedron.Generated.SmallSample.translationBadDirection000_check,",
        "    htransported]",
        "  simp only [Bool.true_and]",
        "  exact decide_eq_true translation_transport_eq",
        "",
        "theorem translation_transport_derived_check :",
        f"    checkTranslationCert {raw_translation['name']} = true :=",
        "  canonical_translation_failure_transport translationTransport",
        "    translation_transport_check",
        "",
        "#check canonical_nonidentity_failure_transport",
        "#check canonical_translation_failure_transport",
        "#check checkStartedSymGroup_sound",
        "#check symPairWord_valid",
        "#check sym_totalLinear_identity_iff",
        "#check reversal_grouping_only_policy",
        "#check nonidentity_transport_check",
        "#check translation_transport_check",
        "",
        "end Cuboctahedron.Generated.CanonicalSample",
        "",
    ])
    CANONICAL_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    CANONICAL_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def build_coverage_tree_payload() -> dict:
    canonical = build_canonical_payload()
    canonical_nonid = canonical["nonidentity"]["canonical"]
    raw_nonid = canonical["nonidentity"]["raw"]
    canonical_translation = canonical["translation"]["canonical"]
    raw_translation = canonical["translation"]["raw"]
    nonid_raw_coverage = canonical_pair_coverage_record(1)
    nonid_transport_coverage = canonical_pair_coverage_record(raw_nonid["rank"])
    translation_raw_coverage = canonical_translation_coverage_record(0, 0)
    translation_transport_coverage = canonical_translation_coverage_record(
        raw_translation["rank"], raw_translation["mask"]
    )
    return {
        "schema_version": 1,
        "mode": "coverage-tree-sample",
        "nonidentity_trees": [
            {
                "name": "nonIdRawTree",
                "coverage": nonid_raw_coverage,
                "leaf": "raw",
                "cert": "SmallSample.nonIdBadDirection000",
            },
            {
                "name": "nonIdTransportTree",
                "coverage": nonid_transport_coverage,
                "leaf": "transported",
                "canonical_cert": f"SmallSample.{canonical_nonid['name']}",
                "transport": "CanonicalSample.nonidentityTransport",
                "raw_cert": f"CanonicalSample.{raw_nonid['name']}",
            },
        ],
        "translation_trees": [
            {
                "name": "translationRawTree",
                "coverage": translation_raw_coverage,
                "leaf": "raw",
                "cert": "SmallSample.translationBadDirection000",
            },
            {
                "name": "translationTransportTree",
                "coverage": translation_transport_coverage,
                "leaf": "transported",
                "canonical_cert": f"SmallSample.{canonical_translation['name']}",
                "transport": "CanonicalSample.translationTransport",
                "raw_cert": f"CanonicalSample.{raw_translation['name']}",
            },
        ],
    }


def write_coverage_tree_json(payload: dict) -> None:
    COVERAGE_TREE_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    COVERAGE_TREE_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def write_coverage_tree_lean(payload: dict) -> None:
    raw_nonid = payload["nonidentity_trees"][0]["coverage"]
    transported_nonid = payload["nonidentity_trees"][1]["coverage"]
    raw_translation = payload["translation_trees"][0]["coverage"]
    transported_translation = payload["translation_trees"][1]["coverage"]
    lines = [
        "import Cuboctahedron.Generated.CanonicalSample",
        "",
        "/-!",
        "Generated representative prefix-state coverage trees for Step 14E.3.",
        "",
        "These small trees exercise both direct real-certificate leaves and",
        "canonical-transport leaves.  They are intentionally representative data, not",
        "the exhaustive search tree.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.CoverageTreeSample",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "",
        "def rankInterval (rank : Nat) : RankInterval where",
        "  startRank := rank",
        "  endRank := rank + 1",
        "",
        "def caseBox (rank mask : Nat) : TranslationCaseBox where",
        "  startRank := rank",
        "  endRank := rank + 1",
        "  startMask := mask",
        "  endMask := mask + 1",
        "",
        "def nonIdRawCoverage : CanonicalPairCoverage :=",
        f"  {lean_canonical_pair_coverage(raw_nonid)}",
        "",
        "def nonIdTransportCoverage : CanonicalPairCoverage :=",
        f"  {lean_canonical_pair_coverage(transported_nonid)}",
        "",
        "def translationRawCoverage : CanonicalTranslationCoverage :=",
        f"  {lean_canonical_translation_coverage(raw_translation)}",
        "",
        "def translationTransportCoverage :",
        "    CanonicalTranslationCoverage :=",
        f"  {lean_canonical_translation_coverage(transported_translation)}",
        "",
        "theorem nonIdRawCoverage_check :",
        "    checkCanonicalPairCoverage nonIdRawCoverage = true := by",
        "  decide",
        "",
        "theorem nonIdTransportCoverage_check :",
        "    checkCanonicalPairCoverage nonIdTransportCoverage = true := by",
        "  decide",
        "",
        "theorem translationRawCoverage_check :",
        "    checkCanonicalTranslationCoverage translationRawCoverage = true := by",
        "  decide",
        "",
        "theorem translationTransportCoverage_check :",
        "    checkCanonicalTranslationCoverage translationTransportCoverage = true := by",
        "  decide",
        "",
        "theorem nonIdRawCoveredRank :",
        f"    checkNonIdCoveredRank {raw_nonid['raw_rank']}",
        "      Cuboctahedron.Generated.SmallSample.nonIdBadDirection000 = true := by",
        "  decide",
        "",
        "theorem nonIdTransportCoveredRank :",
        f"    checkNonIdCoveredRank {transported_nonid['raw_rank']}",
        "      Cuboctahedron.Generated.CanonicalSample.nonidentityTransport.raw = true := by",
        "  decide",
        "",
        "def nonIdRawTree : NonIdCoverageTree :=",
        f"  NonIdCoverageTree.branch (rankInterval {raw_nonid['canonical_rank']})",
        f"    [NonIdCoverageTree.leaf (rankInterval {raw_nonid['canonical_rank']})",
        "      (NonIdCoverageLeaf.raw",
        "        nonIdRawCoverage",
        "        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000)]",
        "",
        "def nonIdTransportTree : NonIdCoverageTree :=",
        f"  NonIdCoverageTree.branch (rankInterval {transported_nonid['canonical_rank']})",
        f"    [NonIdCoverageTree.leaf (rankInterval {transported_nonid['canonical_rank']})",
        "      (NonIdCoverageLeaf.transported",
        "        nonIdTransportCoverage",
        "        Cuboctahedron.Generated.CanonicalSample.nonidentityTransport)]",
        "",
        "theorem nonIdRawLeaf_check :",
        f"    checkNonIdCoverageLeaf (rankInterval {raw_nonid['canonical_rank']})",
        "      (NonIdCoverageLeaf.raw",
        "        nonIdRawCoverage",
        "        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000) = true := by",
        "  simp only [checkNonIdCoverageLeaf, checkNonIdCoverageLeafPayload]",
        "  rw [nonIdRawCoverage_check]",
        "  simp [rankInterval, checkRankInterval,",
        "    checkRankIntervalContainsCanonicalPairCoverage,",
        "    nonIdRawCoverage, nonIdRawCoveredRank,",
        "    Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check]",
        "  norm_num [numPairWords]",
        "",
        "theorem nonIdTransportLeaf_check :",
        f"    checkNonIdCoverageLeaf (rankInterval {transported_nonid['canonical_rank']})",
        "      (NonIdCoverageLeaf.transported",
        "        nonIdTransportCoverage",
        "        Cuboctahedron.Generated.CanonicalSample.nonidentityTransport) = true := by",
        "  simp only [checkNonIdCoverageLeaf, checkNonIdCoverageLeafPayload]",
        "  rw [nonIdTransportCoverage_check]",
        "  simp [rankInterval, checkRankInterval,",
        "    checkRankIntervalContainsCanonicalPairCoverage,",
        "    nonIdTransportCoverage, nonIdTransportCoveredRank,",
        "    Cuboctahedron.Generated.CanonicalSample.nonidentity_transport_check]",
        "  norm_num [numPairWords]",
        "",
        "theorem nonIdRawTree_check :",
        "    checkNonIdCoverageTree nonIdRawTree = true := by",
        "  unfold checkNonIdCoverageTree nonIdRawTree coverageTreeFuel",
        "  simp [checkNonIdCoverageTreeFuel,",
        "    checkNonIdCoverageChildrenWith, nonIdRawLeaf_check,",
        "    checkRankInterval, NonIdCoverageTree.interval]",
        "  norm_num [rankInterval, numPairWords]",
        "",
        "theorem nonIdTransportTree_check :",
        "    checkNonIdCoverageTree nonIdTransportTree = true := by",
        "  unfold checkNonIdCoverageTree nonIdTransportTree coverageTreeFuel",
        "  simp [checkNonIdCoverageTreeFuel,",
        "    checkNonIdCoverageChildrenWith, nonIdTransportLeaf_check,",
        "    checkRankInterval, NonIdCoverageTree.interval]",
        "  norm_num [rankInterval, numPairWords]",
        "",
        "theorem nonIdRawTree_containsCoverage :",
        "    nonIdRawTree.ContainsPairCoverage nonIdRawCoverage := by",
        "  unfold NonIdCoverageTree.ContainsPairCoverage nonIdRawTree",
        "  simp [coverageTreeFuel, NonIdCoverageTree.ContainsPairCoverageFuel,",
        "    NonIdCoverageLeaf.ContainsPairCoverage, rankInterval,",
        "    RankInterval.ContainsCanonicalPairCoverage, nonIdRawCoverage]",
        "",
        "theorem nonIdTransportTree_containsCoverage :",
        "    nonIdTransportTree.ContainsPairCoverage nonIdTransportCoverage := by",
        "  unfold NonIdCoverageTree.ContainsPairCoverage nonIdTransportTree",
        "  simp [coverageTreeFuel, NonIdCoverageTree.ContainsPairCoverageFuel,",
        "    NonIdCoverageLeaf.ContainsPairCoverage, rankInterval,",
        "    RankInterval.ContainsCanonicalPairCoverage, nonIdTransportCoverage]",
        "",
        "theorem nonIdRawTree_sound :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank nonIdRawCoverage.rawRank cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdCoverageTree_sound nonIdRawTree_check",
        "    nonIdRawTree_containsCoverage",
        "",
        "theorem nonIdTransportTree_sound :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank nonIdTransportCoverage.rawRank cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdCoverageTree_sound nonIdTransportTree_check",
        "    nonIdTransportTree_containsCoverage",
        "",
        "theorem nonIdTransportTree_canonical_sound :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank nonIdTransportCoverage.rawRank cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdCoverageTree_sound nonIdTransportTree_check",
        "    nonIdTransportTree_containsCoverage",
        "",
        "def translationRawCase : GeneratedTranslationCase where",
        f"  pairRank := {raw_translation['raw_rank']}",
        f"  signMask := {raw_translation['raw_mask']}",
        "",
        "def translationTransportCase : GeneratedTranslationCase where",
        f"  pairRank := {transported_translation['raw_rank']}",
        f"  signMask := {transported_translation['raw_mask']}",
        "",
        "theorem translationRawCoveredCase :",
        f"    checkTranslationCoveredCase {{ pairRank := {raw_translation['raw_rank']}, signMask := {raw_translation['raw_mask']} }}",
        "      Cuboctahedron.Generated.SmallSample.translationBadDirection000 = true := by",
        "  decide",
        "",
        "theorem translationTransportCoveredCase :",
        f"    checkTranslationCoveredCase {{ pairRank := {transported_translation['raw_rank']}, signMask := {transported_translation['raw_mask']} }}",
        "      Cuboctahedron.Generated.CanonicalSample.translationTransport.raw = true := by",
        "  decide",
        "",
        "def translationRawTree : TranslationCoverageTree :=",
        f"  TranslationCoverageTree.rankBranch (caseBox {raw_translation['canonical_rank']} {raw_translation['canonical_mask']})",
        f"    [TranslationCoverageTree.maskBranch (caseBox {raw_translation['canonical_rank']} {raw_translation['canonical_mask']})",
        f"      [TranslationCoverageTree.leaf (caseBox {raw_translation['canonical_rank']} {raw_translation['canonical_mask']})",
        "        (TranslationCoverageLeaf.raw",
        "          translationRawCoverage",
        "          Cuboctahedron.Generated.SmallSample.translationBadDirection000)]]",
        "",
        "def translationTransportTree : TranslationCoverageTree :=",
        f"  TranslationCoverageTree.rankBranch (caseBox {transported_translation['canonical_rank']} {transported_translation['canonical_mask']})",
        f"    [TranslationCoverageTree.maskBranch (caseBox {transported_translation['canonical_rank']} {transported_translation['canonical_mask']})",
        f"      [TranslationCoverageTree.leaf (caseBox {transported_translation['canonical_rank']} {transported_translation['canonical_mask']})",
        "        (TranslationCoverageLeaf.transported",
        "          translationTransportCoverage",
        "          Cuboctahedron.Generated.CanonicalSample.translationTransport)]]",
        "",
        "theorem translationRawLeaf_check :",
        f"    checkTranslationCoverageLeaf (caseBox {raw_translation['canonical_rank']} {raw_translation['canonical_mask']})",
        "      (TranslationCoverageLeaf.raw",
        "        translationRawCoverage",
        "        Cuboctahedron.Generated.SmallSample.translationBadDirection000) = true := by",
        "  simp only [checkTranslationCoverageLeaf,",
        "    checkTranslationCoverageLeafPayload]",
        "  rw [translationRawCoverage_check]",
        "  simp [caseBox, checkTranslationCaseBox,",
        "    checkTranslationCaseBoxContainsCanonicalTranslationCoverage,",
        "    translationRawCoverage, translationRawCoveredCase,",
        "    Cuboctahedron.Generated.SmallSample.translationBadDirection000_check]",
        "  norm_num [numPairWords, numSignMasks]",
        "",
        "theorem translationTransportLeaf_check :",
        f"    checkTranslationCoverageLeaf (caseBox {transported_translation['canonical_rank']} {transported_translation['canonical_mask']})",
        "      (TranslationCoverageLeaf.transported",
        "        translationTransportCoverage",
        "        Cuboctahedron.Generated.CanonicalSample.translationTransport) = true := by",
        "  simp only [checkTranslationCoverageLeaf,",
        "    checkTranslationCoverageLeafPayload]",
        "  rw [translationTransportCoverage_check]",
        "  simp [caseBox, checkTranslationCaseBox,",
        "    checkTranslationCaseBoxContainsCanonicalTranslationCoverage,",
        "    translationTransportCoverage, translationTransportCoveredCase,",
        "    Cuboctahedron.Generated.CanonicalSample.translation_transport_check]",
        "  norm_num [numPairWords, numSignMasks]",
        "",
        "theorem translationRawTree_check :",
        "    checkTranslationCoverageTree translationRawTree = true := by",
        "  unfold checkTranslationCoverageTree translationRawTree coverageTreeFuel",
        "  simp [checkTranslationCoverageTreeFuel,",
        "    checkTranslationRankChildrenWith,",
        "    checkTranslationMaskChildrenWith, translationRawLeaf_check,",
        "    checkTranslationCaseBox, TranslationCoverageTree.box]",
        "  norm_num [caseBox, numPairWords, numSignMasks]",
        "",
        "theorem translationTransportTree_check :",
        "    checkTranslationCoverageTree translationTransportTree = true := by",
        "  unfold checkTranslationCoverageTree translationTransportTree coverageTreeFuel",
        "  simp [checkTranslationCoverageTreeFuel,",
        "    checkTranslationRankChildrenWith,",
        "    checkTranslationMaskChildrenWith, translationTransportLeaf_check,",
        "    checkTranslationCaseBox, TranslationCoverageTree.box]",
        "  norm_num [caseBox, numPairWords, numSignMasks]",
        "",
        "theorem translationRawTree_containsCoverage :",
        "    translationRawTree.ContainsTranslationCoverage translationRawCoverage := by",
        "  unfold TranslationCoverageTree.ContainsTranslationCoverage",
        "    translationRawTree",
        "  simp [coverageTreeFuel,",
        "    TranslationCoverageTree.ContainsTranslationCoverageFuel,",
        "    TranslationCoverageLeaf.ContainsTranslationCoverage, caseBox,",
        "    TranslationCaseBox.ContainsCanonicalTranslationCoverage,",
        "    translationRawCoverage]",
        "",
        "theorem translationTransportTree_containsCoverage :",
        "    translationTransportTree.ContainsTranslationCoverage",
        "      translationTransportCoverage := by",
        "  unfold TranslationCoverageTree.ContainsTranslationCoverage",
        "    translationTransportTree",
        "  simp [coverageTreeFuel,",
        "    TranslationCoverageTree.ContainsTranslationCoverageFuel,",
        "    TranslationCoverageLeaf.ContainsTranslationCoverage, caseBox,",
        "    TranslationCaseBox.ContainsCanonicalTranslationCoverage,",
        "    translationTransportCoverage]",
        "",
        "theorem translationRawTree_sound :",
        "    exists cert : TranslationCert,",
        "      checkTranslationCoveredCase",
        "          { pairRank := translationRawCoverage.rawRank,",
        "            signMask := translationRawCoverage.rawMask.val } cert = true /\\",
        "        checkTranslationCert cert = true :=",
        "  checkTranslationCoverageTree_sound translationRawTree_check",
        "    translationRawTree_containsCoverage",
        "",
        "theorem translationTransportTree_sound :",
        "    exists cert : TranslationCert,",
        "      checkTranslationCoveredCase",
        "          { pairRank := translationTransportCoverage.rawRank,",
        "            signMask := translationTransportCoverage.rawMask.val } cert = true /\\",
        "        checkTranslationCert cert = true :=",
        "  checkTranslationCoverageTree_sound translationTransportTree_check",
        "    translationTransportTree_containsCoverage",
        "",
        "theorem translationTransportTree_canonical_sound :",
        "    exists cert : TranslationCert,",
        "      checkTranslationCoveredCase",
        "          { pairRank := translationTransportCoverage.rawRank,",
        "            signMask := translationTransportCoverage.rawMask.val }",
        "          cert = true /\\",
        "        checkTranslationCert cert = true :=",
        "  checkTranslationCoverageTree_sound translationTransportTree_check",
        "    translationTransportTree_containsCoverage",
        "",
        "#check checkNonIdCoverageTree_sound",
        "#check checkTranslationCoverageTree_sound",
        "#check nonIdTransportTree_sound",
        "#check nonIdTransportTree_canonical_sound",
        "#check translationTransportTree_sound",
        "#check translationTransportTree_canonical_sound",
        "",
        "end Cuboctahedron.Generated.CoverageTreeSample",
        "",
    ]
    COVERAGE_TREE_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    COVERAGE_TREE_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def nonid_family_failure_lean(kind: str) -> str:
    if kind == "badDirectionSign":
        return "NonIdFamilyFailure.badDirectionSign"
    if kind == "badPairBalance":
        return "NonIdFamilyFailure.badPairBalance"
    if kind == "noFixedAxis":
        return "NonIdFamilyFailure.noFixedAxis"
    if kind == "axisMissesStartInterior":
        return "NonIdFamilyFailure.axisMissesStartInterior"
    if kind == "badFirstHit":
        return "NonIdFamilyFailure.badFirstHit"
    if kind == "badHitInterior":
        return "NonIdFamilyFailure.badHitInterior"
    raise ValueError(f"unsupported nonidentity family failure: {kind}")


NONID_FAMILY_FAILURE_KINDS = [
    "noFixedAxis",
    "badDirectionSign",
    "badPairBalance",
    "axisMissesStartInterior",
    "badFirstHit",
    "badHitInterior",
]


def canonical_json(value: object) -> str:
    return json.dumps(value, sort_keys=True, separators=(",", ":"))


def normalized_state_id(prefix: str, key: object) -> str:
    digest = hashlib.sha256(canonical_json(key).encode("utf-8")).hexdigest()
    return f"{prefix}:{digest[:24]}"


def nonid_cert_state_key(cert: NonIdCertPayload | dict) -> dict:
    payload = cert.to_json() if isinstance(cert, NonIdCertPayload) else cert
    return {
        "word": payload["word"],
        "axis": payload["axis"],
        "kernel_cross_factor": payload["kernel_cross_factor"],
        "forced_seq": payload["forced_seq"],
        "p0": payload["p0"],
        "lambda": payload["lambda"],
        "solve_left_inverse": payload["solve_left_inverse"],
        "failure": payload["failure"],
    }


def common_pair_prefix(words: list[list[str]]) -> list[str]:
    if not words:
        return []
    prefix: list[str] = []
    for column in zip(*words, strict=True):
        first = column[0]
        if all(pair_id == first for pair_id in column):
            prefix.append(first)
        else:
            break
    return prefix


def lean_pair_array_literal(prefix: list[str]) -> str:
    return "#[" + ", ".join(lean_pair_id(pair_id) for pair_id in prefix) + "]"


def lean_string(value: str) -> str:
    return json.dumps(value)


def build_nonidentity_family_payload() -> dict:
    specs = [
        ("sampleBadDirectionFamily", "sampleBadDirectionFamilyCert",
         "badDirectionSign", 13, 16, "nonIdFamilyBadDirection"),
        ("sampleBadPairBalanceFamily", "sampleBadPairBalanceFamilyCert",
         "badPairBalance", 102, 103, "nonIdFamilyBadPairBalance"),
        ("sampleAxisMissFamily", "sampleAxisMissFamilyCert",
         "axisMissesStartInterior", 104, 106, "nonIdFamilyAxisMiss"),
        ("sampleBadFirstHitFamily", "sampleBadFirstHitFamilyCert",
         "badFirstHit", 159, 160, "nonIdFamilyBadFirstHit"),
    ]
    families = []
    all_certs: list[NonIdCertPayload] = []
    for family_name, lean_name, failure_kind, start_rank, end_rank, prefix in specs:
        certs: list[NonIdCertPayload] = []
        for offset, rank in enumerate(range(start_rank, end_rank)):
            certs.append(build_nonid_cert_for_rank(rank, f"{prefix}{offset:03d}"))
        for cert in certs:
            if cert.failure["kind"] != failure_kind:
                raise ValueError(
                    f"rank {cert.rank} yielded {cert.failure['kind']}, expected {failure_kind}"
                )
        coverage_records = [
            canonical_pair_coverage_record(cert.rank) for cert in certs
        ]
        paired = sorted(
            zip(coverage_records, certs, strict=True),
            key=lambda item: item[0]["canonical_rank"],
        )
        coverage_records = [coverage for coverage, _cert in paired]
        certs = [cert for _coverage, cert in paired]
        canonical_ranks = [
            coverage["canonical_rank"] for coverage in coverage_records
        ]
        if canonical_ranks != list(
            range(min(canonical_ranks), max(canonical_ranks) + 1)
        ):
            raise ValueError(
                f"family {family_name} canonical ranks are not contiguous: "
                f"{canonical_ranks}"
            )
        canonical_words = [
            coverage["canonical_word"] for coverage in coverage_records
        ]
        pair_prefix = common_pair_prefix(canonical_words)
        member_state_keys = [nonid_cert_state_key(cert) for cert in certs]
        member_state_ids = [
            normalized_state_id("nonid-member", key)
            for key in member_state_keys
        ]
        family_state_key = {
            "failure_kind": failure_kind,
            "prefix": pair_prefix,
            "canonical_rank_interval": [
                min(canonical_ranks),
                max(canonical_ranks) + 1,
            ],
            "member_state_ids": member_state_ids,
            "member_state_keys": member_state_keys,
        }
        family_state_id = normalized_state_id("nonid-family", family_state_key)
        all_certs.extend(certs)
        families.append({
            "name": family_name,
            "lean_name": lean_name,
            "failure_kind": failure_kind,
            "prefix": pair_prefix,
            "normalizedStateId": family_state_id,
            "normalizedStateKey": family_state_key,
            "memberStateIds": member_state_ids,
            "memberStateKeys": member_state_keys,
            "startRank": min(canonical_ranks),
            "endRank": max(canonical_ranks) + 1,
            "rawStartRank": start_rank,
            "rawEndRank": end_rank,
            "coveredRanks": [cert.rank for cert in certs],
            "coverages": coverage_records,
            "cert_names": [cert.name for cert in certs],
            "certs": [cert.to_json() for cert in certs],
        })
    records = {cert.rank: cert.word for cert in all_certs}
    present_failure_kinds = sorted({family["failure_kind"] for family in families})
    absent_failure_kinds = [
        {
            "failure_kind": "noFixedAxis",
            "status": "globally-absent-for-valid-nonidentity-pair-words",
            "reason": (
                "The total linear part is a product of fourteen reflections, "
                "so nonidentity valid words are orientation-preserving "
                "three-dimensional orthogonal maps with a fixed axis."
            ),
        },
        {
            "failure_kind": "badHitInterior",
            "status": "not-present-in-this-representative-sample",
            "reason": (
                "The certificate language and Lean proof template support this "
                "failure kind; the bounded representative family sample did "
                "not include a rank whose exact candidate reaches this case."
            ),
        },
    ]
    return {
        "schema_version": 2,
        "mode": "nonidentity-family-sample",
        "pair_words": [
            {"rank": rank, "word": records[rank]}
            for rank in sorted(records)
        ],
        "families": families,
        "failure_kind_accounting": {
            "present": present_failure_kinds,
            "absent": absent_failure_kinds,
            "accounted_for": sorted(
                set(present_failure_kinds) |
                {record["failure_kind"] for record in absent_failure_kinds}
            ),
        },
        "summary": {
            "families": len(families),
            "covered_ranks": len(all_certs),
            "coverage_kind": "mixed-contiguous-family-leaves",
            "supported_failure_kinds": NONID_FAMILY_FAILURE_KINDS,
            "present_failure_kinds": present_failure_kinds,
        },
    }


def write_nonidentity_family_json(payload: dict) -> None:
    NONIDENTITY_FAMILY_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_FAMILY_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


MAT3_FIELD_POSITIONS = [
    ("m00", 0, 0), ("m01", 0, 1), ("m02", 0, 2),
    ("m10", 1, 0), ("m11", 1, 1), ("m12", 1, 2),
    ("m20", 2, 0), ("m21", 2, 1), ("m22", 2, 2),
]


def matrix_nonidentity_field(matrix: Mat) -> str:
    ident = mat_id()
    for field, row, col in MAT3_FIELD_POSITIONS:
        if matrix[row][col] != ident[row][col]:
            return field
    raise ValueError("matrix is identity")


def word_get_simp_names(word_def: str) -> list[str]:
    return [f"{word_def}_get{index:02d}_num" for index in range(13)]


def seq_get_simp_names(seq_def: str) -> list[str]:
    return [f"{seq_def}_get{index:02d}_num" for index in range(14)]


def append_valid_pair_word_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_validPairWord"
    word = word_name(cert["rank"])
    lines.extend([
        f"theorem {theorem} :",
        f"    ValidPairWord {word} := by",
        f"  unfold {word} ValidPairWord pairCount",
        "  decide",
        "",
    ])
    return theorem


def append_total_linear_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_totalLinear"
    word = word_name(cert["rank"])
    matrix = total_linear(cert["word"])
    lines.extend([
        f"theorem {theorem} :",
        f"    totalLinearOfPairWord {word} = {lean_mat3(matrix)} := by",
        "  rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        "  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,",
        "    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "  norm_num",
        "",
    ])
    return theorem


def append_nonidentity_theorem(lines: list[str], cert: dict, total_linear_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_nonIdentity"
    word = word_name(cert["rank"])
    matrix = total_linear(cert["word"])
    field = matrix_nonidentity_field(matrix)
    lines.extend([
        f"theorem {theorem} :",
        f"    totalLinearOfPairWord {word} ≠ (matId : Mat3 Rat) := by",
        f"  rw [{total_linear_theorem}]",
        "  intro h",
        f"  have hfield := congrArg Mat3.{field} h",
        f"  norm_num [matId] at hfield",
        "",
    ])
    return theorem


def append_kernel_check_theorem(lines: list[str], cert: dict, total_linear_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_kernelCheck"
    word = word_name(cert["rank"])
    axis = tuple(Fraction(x) for x in cert["axis"])  # type: ignore[assignment]
    kernel = tuple(tuple(Fraction(x) for x in row) for row in cert["kernel_cross_factor"])  # type: ignore[assignment]
    lines.extend([
        f"theorem {theorem} :",
        "    checkKernelLineWitness",
        f"      (totalLinearOfPairWord {word})",
        f"      {lean_vec(axis)}",
        f"      {{ crossFactor := {lean_mat3(kernel)} }} = true := by",
        f"  rw [{total_linear_theorem}]",
        "  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,",
        "    crossLeftMatrix, matSub, matId, matMul, matVec]",
        "",
    ])
    return theorem


def append_no_fixed_check_theorem(lines: list[str], cert: dict, total_linear_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_noFixedCheck"
    word = word_name(cert["rank"])
    witness = tuple(tuple(Fraction(x) for x in row) for row in cert["failure"]["left_inverse"])  # type: ignore[assignment]
    lines.extend([
        f"theorem {theorem} :",
        "    checkNoFixedVectorWitness",
        f"      (totalLinearOfPairWord {word})",
        f"      {{ leftInverse := {lean_mat3(witness)} }} = true := by",
        f"  rw [{total_linear_theorem}]",
        "  norm_num [checkNoFixedVectorWitness, fixedPart, matSub, matId, matMul]",
        "",
    ])
    return theorem


def append_final_axis_dot_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_finalAxisDot"
    word = word_name(cert["rank"])
    axis = tuple(Fraction(x) for x in cert["axis"])  # type: ignore[assignment]
    value = final_axis_dot(cert["word"], axis)
    lines.extend([
        f"theorem {theorem} :",
        f"    finalAxisDotQ {word} {lean_vec(axis)} = {lean_rat(value)} := by",
        "  simp [finalAxisDotQ, pairPrefixLinearNat,",
        f"    {', '.join(word_get_simp_names(word))},",
        "    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,",
        "    scalarMat, outer, matVec]",
        "  norm_num",
        "",
    ])
    return theorem


def append_axis_forces_theorem(lines: list[str], cert: dict, final_dot_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_axisForces"
    word = word_name(cert["rank"])
    forced = seq_name(name)
    word_simp = ", ".join(word_get_simp_names(word))
    seq_simp = ", ".join(seq_get_simp_names(forced))
    lines.extend([
        f"theorem {theorem} :",
        f"    AxisForcesForcedSeq {name}.word {name}.axis",
        f"      (faceVectorSeq {name}.forcedSeq) := by",
        "  constructor",
        f"  · unfold StartsXp {name} {forced} faceVectorSeq",
        "    decide",
        "  constructor",
        "  · intro i",
        f"    fin_cases i <;> unfold {name} {forced} faceVectorSeq <;> decide",
        "  constructor",
        f"  · change 0 < finalAxisDotQ {word} {lean_vec(tuple(Fraction(x) for x in cert['axis']))}",
        f"    rw [{final_dot_theorem}]",
        "    norm_num",
        "  · intro i f hf hpos",
        "    fin_cases i <;> cases f <;>",
        f"      simp [{name}, {forced}, faceVectorSeq, afterStart,",
        f"        {word_simp}, {seq_simp},",
        "        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,",
        "        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]",
        "        at hf hpos ⊢ <;>",
        "      first | contradiction | linarith | rfl",
        "",
    ])
    return theorem


def duplicate_face_indices(seq: list[str]) -> tuple[int, int]:
    seen: dict[str, int] = {}
    for index, face in enumerate(seq):
        if face in seen:
            return seen[face], index
        seen[face] = index
    raise ValueError("sequence has no duplicate face")


def append_not_omni_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_notOmni"
    i, j = duplicate_face_indices(cert["forced_seq"])
    lines.extend([
        f"theorem {theorem} :",
        f"    ¬ IsOmniSeq (faceVectorSeq {name}.forcedSeq) := by",
        "  intro h",
        "  have hEq :",
        f"      faceVectorSeq {name}.forcedSeq ({i} : Step14) =",
        f"        faceVectorSeq {name}.forcedSeq ({j} : Step14) := by",
        "    decide",
        "  have hIdx := h.1 hEq",
        f"  exact (by decide : ({i} : Step14) ≠ ({j} : Step14)) hIdx",
        "",
    ])
    return theorem


def append_path_prefix_aff_theorems(lines: list[str], cert: dict) -> list[str]:
    name = cert["name"]
    forced = seq_name(name)
    seq_simp = ", ".join(seq_get_simp_names(forced))
    prefixes = path_prefix_affs(cert["forced_seq"])
    theorem_names: list[str] = []
    for index, prefix in enumerate(prefixes):
        theorem = f"{name}_pathPrefix{index:02d}"
        theorem_names.append(theorem)
        if index == 0:
            lines.extend([
                f"theorem {theorem} :",
                f"    pathPrefixAffNat (faceVectorSeq {forced}) {index} = {lean_aff(prefix)} := by",
                f"  simp [{forced}, faceVectorSeq, pathPrefixAffNat, affId, matId]",
                "",
            ])
        else:
            prev = theorem_names[index - 1]
            lines.extend([
                f"theorem {theorem} :",
                f"    pathPrefixAffNat (faceVectorSeq {forced}) {index} = {lean_aff(prefix)} := by",
                f"  simp [pathPrefixAffNat, {prev}, faceVectorSeq,",
                f"    {seq_simp}, faceReflectionQ, reflM, reflD, normalQ, offsetQ,",
                "    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,",
                "    matVec, vecAdd, scalarMul]",
                "  norm_num",
                "",
            ])
    return theorem_names


def append_total_aff_theorem(lines: list[str], cert: dict, path_prefix_theorems: list[str]) -> str:
    name = cert["name"]
    theorem = f"{name}_totalAff"
    forced = seq_name(name)
    affine = total_aff(cert["forced_seq"])
    seq_simp = ", ".join(seq_get_simp_names(forced))
    lines.extend([
        f"theorem {theorem} :",
        f"    totalAff (faceVectorSeq {name}.forcedSeq) = {lean_aff(affine)} := by",
        "  rw [totalAff_eq_finalPath]",
        f"  change affCompose (pathPrefixAffNat (faceVectorSeq {forced}) 13)",
        f"      (faceReflectionQ (faceVectorSeq {forced} 0)) = {lean_aff(affine)}",
        f"  rw [{path_prefix_theorems[13]}]",
        f"  simp [faceVectorSeq, {seq_simp},",
        "    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,",
        "    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,",
        "    scalarMul]",
        "  norm_num",
        "",
    ])
    return theorem


def append_axis_solve_check_theorem(lines: list[str], cert: dict, total_aff_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_axisSolveCheck"
    lines.extend([
        f"theorem {theorem} :",
        "    checkAffineAxisSolveWitness",
        f"      (totalAff (faceVectorSeq {name}.forcedSeq))",
        f"      {name}.axis {name}.p0 {name}.lambda {name}.solve = true := by",
        f"  rw [{total_aff_theorem}]",
        f"  norm_num [{name}, checkAffineAxisSolveWitness, axisSolveMatrix,",
        "    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]",
        "",
    ])
    return theorem


def append_forced_seq_matches_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_forcedSeqMatches"
    forced = seq_name(name)
    word = word_name(cert["rank"])
    lines.extend([
        f"theorem {theorem} :",
        f"    checkForcedSeqMatchesWord {name} = true := by",
        "  classical",
        "  unfold checkForcedSeqMatchesWord",
        "  apply decide_eq_true",
        "  constructor",
        f"  · unfold StartsXp {name} faceVectorSeq",
        "    decide",
        "  · intro i",
        f"    fin_cases i <;> simp [{name}, faceVectorSeq, afterStart,",
        f"      {', '.join(word_get_simp_names(word))},",
        f"      {', '.join(seq_get_simp_names(forced))}, pairOfFace]",
        "",
    ])
    return theorem


def append_common_check_theorem(
    lines: list[str],
    cert: dict,
    valid_theorem: str,
    nonid_theorem: str,
    kernel_theorem: str,
    forced_seq_theorem: str,
    axis_solve_theorem: str,
) -> str:
    name = cert["name"]
    theorem = f"{name}_commonCheck"
    lines.extend([
        f"theorem {theorem} :",
        f"    checkNonIdCommon {name} = true := by",
        f"  have hValid : ValidPairWord {name}.word := by",
        f"    simpa [{name}] using {valid_theorem}",
        f"  have hNonId : totalLinearOfPairWord {name}.word ≠ (matId : Mat3 Rat) := by",
        f"    simpa [{name}] using {nonid_theorem}",
        f"  have hKernel :",
        f"      checkKernelLineWitness (totalLinearOfPairWord {name}.word)",
        f"        {name}.axis {name}.kernel = true := by",
        f"    simpa [{name}] using {kernel_theorem}",
        "  unfold checkNonIdCommon",
        f"  simp [hValid, hNonId, hKernel, {forced_seq_theorem}, {axis_solve_theorem}]",
        "",
    ])
    return theorem


def append_not_xp_start_interior_theorem(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    theorem = f"{name}_notXpStartInterior"
    lines.extend([
        f"theorem {theorem} :",
        f"    ¬ XpStartInteriorQ {name}.p0 := by",
        f"  unfold XpStartInteriorQ {name}",
        "  norm_num",
        "",
    ])
    return theorem


def append_candidate_w_theorem(lines: list[str], cert: dict, total_aff_theorem: str) -> str:
    name = cert["name"]
    theorem = f"{name}_candidateW"
    w = candidate_w(cert["forced_seq"], tuple(Fraction(x) for x in cert["p0"]))  # type: ignore[arg-type]
    lines.extend([
        f"theorem {theorem} :",
        f"    candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0 = {lean_vec(w)} := by",
        f"  unfold candidateWQ",
        f"  rw [{total_aff_theorem}]",
        f"  norm_num [{name}, affApply, matVec, vecSub, vecAdd]",
        "",
    ])
    return theorem


def append_candidate_time_theorem(
    lines: list[str],
    cert: dict,
    impact: int,
    candidate_w_theorem: str,
    path_prefix_theorems: list[str],
) -> str:
    name = cert["name"]
    theorem = f"{name}_candidateTime{impact:02d}"
    p0 = tuple(Fraction(x) for x in cert["p0"])  # type: ignore[assignment]
    w = candidate_w(cert["forced_seq"], p0)
    value = candidate_impact_time(cert["forced_seq"], path_prefix_affs(cert["forced_seq"]), p0, w, impact)
    forced = seq_name(name)
    seq_simp = ", ".join(seq_get_simp_names(forced))
    lines.extend([
        f"theorem {theorem} :",
        f"    candidateImpactTimeQ (faceVectorSeq {name}.forcedSeq) {name}.p0",
        f"      (candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0)",
        f"      ({impact} : Impact15) = {lean_rat(value)} := by",
        f"  rw [{candidate_w_theorem}]",
        "  simp [candidateImpactTimeQ, candidateImpactDenomQ,",
        "    impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,",
        "    copiedOffsetQ, preImpactCopyAff, pathPrefixAff,",
        "    impactFace, wordImpact, afterStart, nextImpact, lastImpact,",
        f"    {name}, faceVectorSeq, {seq_simp},",
        f"    {', '.join(path_prefix_theorems)},",
        "    normalQ, offsetQ, matVec, dot, vecAdd]",
        "  norm_num",
        "",
    ])
    return theorem


def append_candidate_ordering_theorem(
    lines: list[str],
    cert: dict,
    candidate_w_theorem: str,
    path_prefix_theorems: list[str],
) -> str:
    name = cert["name"]
    step = cert["failure"]["step"]
    theorem = f"{name}_candidateOrderingFails"
    current = append_candidate_time_theorem(
        lines, cert, step, candidate_w_theorem, path_prefix_theorems
    )
    nxt = append_candidate_time_theorem(
        lines, cert, step + 1, candidate_w_theorem, path_prefix_theorems
    )
    lines.extend([
        f"theorem {theorem} :",
        f"    CandidateOrderingFails (faceVectorSeq {name}.forcedSeq) {name}.p0",
        f"      (candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0)",
        f"      {{ step := ⟨{step}, by decide⟩ }} := by",
        "  unfold CandidateOrderingFails",
        f"  change candidateImpactTimeQ (faceVectorSeq {name}.forcedSeq) {name}.p0",
        f"      (candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0)",
        f"      ({step + 1} : Impact15) <=",
        f"    candidateImpactTimeQ (faceVectorSeq {name}.forcedSeq) {name}.p0",
        f"      (candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0)",
        f"      ({step} : Impact15)",
        f"  rw [{nxt}, {current}]",
        "  norm_num",
        "",
    ])
    return theorem


def append_candidate_hit_interior_theorem(
    lines: list[str],
    cert: dict,
    candidate_w_theorem: str,
    path_prefix_theorems: list[str],
) -> str:
    name = cert["name"]
    failure = cert["failure"]
    impact = failure["impact"]
    bad_face = failure["badFace"]
    theorem = f"{name}_candidateHitInteriorFails"
    time_theorem = append_candidate_time_theorem(
        lines, cert, impact, candidate_w_theorem, path_prefix_theorems
    )
    forced = seq_name(name)
    seq_simp = ", ".join(seq_get_simp_names(forced))
    lines.extend([
        f"theorem {theorem} :",
        f"    CandidateHitInteriorFails (faceVectorSeq {name}.forcedSeq) {name}.p0",
        f"      (candidateWQ (faceVectorSeq {name}.forcedSeq) {name}.p0)",
        f"      {{ impact := ⟨{impact}, by decide⟩, badFace := {lean_face(bad_face)} }} := by",
        "  unfold CandidateHitInteriorFails",
        "  constructor",
        "  · decide",
        f"  rw [{time_theorem}, {candidate_w_theorem}]",
        "  simp [candidateLinePointQ, copiedNormalQ, copiedOffsetQ,",
        "    preImpactCopyAff, pathPrefixAff, impactFace, lastImpact,",
        f"    {name}, faceVectorSeq, {seq_simp},",
        f"    {', '.join(path_prefix_theorems)},",
        "    normalQ, offsetQ, matVec, dot, vecAdd, scalarMul]",
        "  norm_num",
        "",
    ])
    return theorem


def write_nonidentity_family_lean(payload: dict) -> None:
    families = payload["families"]
    certs = [cert for family in families for cert in family["certs"]]
    lines: list[str] = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Generated representative non-identity family coverage sample for Step 14E.4.",
        "",
        "This file exercises a sparse forest of family leaves.  Each leaf covers",
        "a contiguous rank interval whose certificates all share the same exact",
        "failure kind. It is representative data, not the exhaustive search tree.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "",
    ]
    append_word_definitions(lines, payload)
    coverage_by_rank = {
        coverage["raw_rank"]: coverage
        for family in families
        for coverage in family["coverages"]
    }
    for cert in certs:
        append_nonid_cert(lines, cert)
        coverage = coverage_by_rank[cert["rank"]]
        lines.extend([
            f"def {cert['name']}Coverage : CanonicalPairCoverage :=",
            f"  {lean_canonical_pair_coverage(coverage)}",
            "",
            f"theorem {cert['name']}Coverage_check :",
            f"    checkCanonicalPairCoverage {cert['name']}Coverage = true := by",
            "  decide",
            "",
            f"theorem {cert['name']}Coverage_canonicalRank :",
            f"    {cert['name']}Coverage.canonical.rank = {coverage['canonical_rank']} := by",
            "  decide",
            "",
            f"theorem {cert['name']}Coverage_coveredRank :",
            f"    checkNonIdCoveredRank {cert['name']}Coverage.rawRank {cert['name']} = true := by",
            "  decide",
            "",
        ])

    family_check_theorems: list[str] = []
    family_leaf_check_theorems: list[str] = []
    family_tree_check_theorems: list[str] = []

    for cert in certs:
        name = cert["name"]
        failure = cert["failure"]
        valid_theorem = append_valid_pair_word_theorem(lines, cert)
        total_linear_theorem = append_total_linear_theorem(lines, cert)
        nonid_theorem = append_nonidentity_theorem(lines, cert, total_linear_theorem)
        kernel_theorem = append_kernel_check_theorem(lines, cert, total_linear_theorem)

        if failure["kind"] == "noFixedAxis":
            no_fixed_theorem = append_no_fixed_check_theorem(
                lines, cert, total_linear_theorem
            )
            witness = tuple(tuple(Fraction(x) for x in row) for row in failure["left_inverse"])  # type: ignore[assignment]
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_noFixedAxis {name}",
                f"    {{ leftInverse := {lean_mat3(witness)} }}",
                "  · rfl",
                f"  · simpa [{name}] using {valid_theorem}",
                f"  · simpa [{name}] using {nonid_theorem}",
                f"  · simpa [{name}] using {no_fixed_theorem}",
                "",
            ])
        elif failure["kind"] == "badDirectionSign":
            idx = failure["index"]
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_badDirectionSign {name} ⟨{idx}, by decide⟩",
                "  · rfl",
                f"  · simpa [{name}] using {valid_theorem}",
                f"  · simpa [{name}] using {nonid_theorem}",
                f"  · simpa [{name}] using {kernel_theorem}",
                "  · intro f hf",
                f"    cases f <;> simp [{name}, pairOfFace, pairPrefixLinearNat,",
                "      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,",
                "      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢",
                "",
            ])
        elif failure["kind"] == "badPairBalance":
            final_dot_theorem = append_final_axis_dot_theorem(lines, cert)
            axis_forces_theorem = append_axis_forces_theorem(lines, cert, final_dot_theorem)
            not_omni_theorem = append_not_omni_theorem(lines, cert)
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_badPairBalance_forced {name}",
                "  · rfl",
                f"  · simpa [{name}] using {valid_theorem}",
                f"  · simpa [{name}] using {nonid_theorem}",
                f"  · simpa [{name}] using {kernel_theorem}",
                f"  · simpa [{name}] using {axis_forces_theorem}",
                f"  · simpa [{name}] using {not_omni_theorem}",
                "",
            ])
        elif failure["kind"] == "axisMissesStartInterior":
            final_dot_theorem = append_final_axis_dot_theorem(lines, cert)
            axis_forces_theorem = append_axis_forces_theorem(lines, cert, final_dot_theorem)
            path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
            total_aff_theorem = append_total_aff_theorem(lines, cert, path_prefix_theorems)
            axis_solve_theorem = append_axis_solve_check_theorem(lines, cert, total_aff_theorem)
            forced_seq_theorem = append_forced_seq_matches_theorem(lines, cert)
            common_theorem = append_common_check_theorem(
                lines, cert, valid_theorem, nonid_theorem, kernel_theorem,
                forced_seq_theorem, axis_solve_theorem,
            )
            not_interior_theorem = append_not_xp_start_interior_theorem(lines, cert)
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_axisMissesStartInterior {name}",
                "  · rfl",
                f"  · simpa using {common_theorem}",
                f"  · simpa [{name}] using {axis_forces_theorem}",
                f"  · simpa [{name}] using {not_interior_theorem}",
                "",
            ])
        elif failure["kind"] == "badFirstHit":
            final_dot_theorem = append_final_axis_dot_theorem(lines, cert)
            axis_forces_theorem = append_axis_forces_theorem(lines, cert, final_dot_theorem)
            path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
            total_aff_theorem = append_total_aff_theorem(lines, cert, path_prefix_theorems)
            axis_solve_theorem = append_axis_solve_check_theorem(lines, cert, total_aff_theorem)
            forced_seq_theorem = append_forced_seq_matches_theorem(lines, cert)
            common_theorem = append_common_check_theorem(
                lines, cert, valid_theorem, nonid_theorem, kernel_theorem,
                forced_seq_theorem, axis_solve_theorem,
            )
            candidate_w_theorem = append_candidate_w_theorem(lines, cert, total_aff_theorem)
            ordering_theorem = append_candidate_ordering_theorem(
                lines, cert, candidate_w_theorem, path_prefix_theorems
            )
            step = failure["step"]
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_badFirstHit {name} {{ step := ⟨{step}, by decide⟩ }}",
                "  · rfl",
                f"  · simpa using {common_theorem}",
                f"  · simpa [{name}] using {axis_forces_theorem}",
                f"  · simpa [{name}] using {ordering_theorem}",
                "",
            ])
        elif failure["kind"] == "badHitInterior":
            final_dot_theorem = append_final_axis_dot_theorem(lines, cert)
            axis_forces_theorem = append_axis_forces_theorem(lines, cert, final_dot_theorem)
            path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
            total_aff_theorem = append_total_aff_theorem(lines, cert, path_prefix_theorems)
            axis_solve_theorem = append_axis_solve_check_theorem(lines, cert, total_aff_theorem)
            forced_seq_theorem = append_forced_seq_matches_theorem(lines, cert)
            common_theorem = append_common_check_theorem(
                lines, cert, valid_theorem, nonid_theorem, kernel_theorem,
                forced_seq_theorem, axis_solve_theorem,
            )
            candidate_w_theorem = append_candidate_w_theorem(lines, cert, total_aff_theorem)
            interior_theorem = append_candidate_hit_interior_theorem(
                lines, cert, candidate_w_theorem, path_prefix_theorems
            )
            impact = failure["impact"]
            bad_face = failure["badFace"]
            lines.extend([
                f"theorem {name}_check :",
                f"    checkNonIdCert {name} = true := by",
                f"  apply checkNonIdCert_badHitInterior {name}",
                f"    {{ impact := ⟨{impact}, by decide⟩, badFace := {lean_face(bad_face)} }}",
                "  · rfl",
                f"  · simpa using {common_theorem}",
                f"  · simpa [{name}] using {axis_forces_theorem}",
                f"  · simpa [{name}] using {interior_theorem}",
                "",
            ])
        else:
            raise ValueError(f"unsupported family proof template: {failure['kind']}")

        lines.extend([
            f"theorem {name}_coveredRank :",
            f"    checkNonIdCoveredRank {cert['rank']} {name} = true := by",
            "  decide",
            "",
            f"theorem {name}_familyFailure :",
            "    checkNonIdFamilyFailureMatches",
            f"      {nonid_family_failure_lean(failure['kind'])}",
            f"      {name} = true := by",
            "  rfl",
            "",
        ])

    for family in families:
        family_prefix = family["lean_name"]
        interval_name = f"{family_prefix}Interval"
        cert_name = family_prefix
        leaf_name = f"{family_prefix}Leaf"
        tree_name = f"{family_prefix}Tree"
        family_check = f"{family_prefix}_check"
        leaf_check = f"{family_prefix}_leafCheck"
        tree_check = f"{family_prefix}_treeCheck"
        family_check_theorems.append(family_check)
        family_leaf_check_theorems.append(leaf_check)
        family_tree_check_theorems.append(tree_check)
        family_certs = family["certs"]
        family_cert_names = ", ".join(cert["name"] for cert in family_certs)
        family_coverage_names = ", ".join(
            f"{cert['name']}Coverage" for cert in family_certs
        )
        family_prefix_literal = lean_pair_array_literal(family["prefix"])
        covered_ranks = ", ".join(str(rank) for rank in family["coveredRanks"])
        covered_coverage_list = ", ".join(
            f"{cert['name']}Coverage" for cert in family_certs
        )
        coverage_check_names = [
            f"{cert['name']}Coverage_check" for cert in family_certs
        ]
        coverage_rank_names = [
            f"{cert['name']}Coverage_canonicalRank" for cert in family_certs
        ]
        coverage_covered_names = [
            f"{cert['name']}Coverage_coveredRank" for cert in family_certs
        ]
        coverage_prefix_names: list[str] = []
        for cert in family_certs:
            prefix_theorem = f"{cert['name']}Coverage_prefix"
            coverage_prefix_names.append(prefix_theorem)
            lines.extend([
                f"theorem {prefix_theorem} :",
                f"    pairWordHasPrefix {family_prefix_literal}",
                f"      {cert['name']}Coverage.canonical.word = true := by",
                "  decide",
                "",
            ])
        covered_check_names = [f"{cert['name']}_coveredRank" for cert in family_certs]
        cert_check_names = [f"{cert['name']}_check" for cert in family_certs]
        family_match_names = [f"{cert['name']}_familyFailure" for cert in family_certs]
        lines.extend([
            f"def {interval_name} : RankInterval where",
            f"  startRank := {family['startRank']}",
            f"  endRank := {family['endRank']}",
            "",
            f"def {cert_name} : NonIdFamilyCert where",
            f"  name := \"{family['name']}\"",
            f"  failure := {nonid_family_failure_lean(family['failure_kind'])}",
            f"  pairPrefix := {family_prefix_literal}",
            f"  normalizedStateId := {lean_string(family['normalizedStateId'])}",
            f"  coverages := #[{family_coverage_names}]",
            f"  certs := #[{family_cert_names}]",
            "",
            f"theorem {family_check} :",
            f"    checkNonIdFamilyCert {interval_name} {cert_name} = true := by",
            f"  unfold checkNonIdFamilyCert {interval_name} {cert_name}",
            "  change",
            "      (checkRankInterval { startRank := " + str(family["startRank"]) +
              ", endRank := " + str(family["endRank"]) + " } &&",
            "        checkNonIdFamilyEntries",
            f"          {family_prefix_literal}",
            f"          {nonid_family_failure_lean(family['failure_kind'])}",
            f"          {family['startRank']} {family['endRank']}",
            f"          [{covered_coverage_list}]",
            f"          [{family_cert_names}]) = true",
            "  simp [checkRankInterval, checkNonIdFamilyEntries,",
            f"    {', '.join(coverage_check_names + coverage_rank_names + coverage_covered_names + coverage_prefix_names + covered_check_names + cert_check_names + family_match_names)}]",
            "  norm_num [numPairWords]",
            "",
            f"theorem {leaf_check} :",
            f"    checkNonIdCoverageLeaf {interval_name}",
            f"      (NonIdCoverageLeaf.family {cert_name}) = true := by",
            "  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload",
            "  change",
            f"      (checkRankInterval {interval_name} &&",
            f"        checkNonIdFamilyCert {interval_name} {cert_name}) = true",
            f"  rw [{family_check}]",
            f"  simp [{interval_name}, checkRankInterval]",
            "  norm_num [numPairWords]",
            "",
            f"def {leaf_name} : NonIdCoverageTree :=",
            f"  NonIdCoverageTree.leaf {interval_name}",
            f"    (NonIdCoverageLeaf.family {cert_name})",
            "",
            f"def {tree_name} : NonIdCoverageTree :=",
            f"  NonIdCoverageTree.branch {interval_name} [{leaf_name}]",
            "",
            f"theorem {tree_check} :",
            f"    checkNonIdCoverageTree {tree_name} = true := by",
            f"  unfold checkNonIdCoverageTree {tree_name} {leaf_name} coverageTreeFuel",
            "  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,",
            f"    {leaf_check}, checkRankInterval,",
            "    NonIdCoverageTree.interval]",
            f"  norm_num [numPairWords, {interval_name}]",
            "",
        ])

    forest_trees = ", ".join(f"{family['lean_name']}Tree" for family in families)
    lines.extend([
        "def sampleFamilyCoverage : NonIdCoverageForest where",
        f"  trees := [{forest_trees}]",
        "",
        "theorem sampleFamilyCoverage_check :",
        "    checkNonIdCoverageForest sampleFamilyCoverage = true := by",
        "  unfold checkNonIdCoverageForest sampleFamilyCoverage",
        f"  simp [{', '.join(family_tree_check_theorems)}]",
        "",
        "theorem sampleFamilyCoverage_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : sampleFamilyCoverage.ContainsPairRank r) :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank r.val cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdCoverageForest_pairRank_sound",
        "    sampleFamilyCoverage_check hcontains",
        "",
        "#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage",
        "#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage_sound",
        "",
        "end Cuboctahedron.Generated.NonIdentity",
        "",
    ])
    NONIDENTITY_FAMILY_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_FAMILY_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


TRANSLATION_FAMILY_FAILURE_KINDS = [
    "badTranslationVector",
    "badDirectionSign",
    "farkas",
]


def translation_family_failure_lean(kind: str) -> str:
    if kind == "badTranslationVector":
        return "TranslationFamilyFailure.badTranslationVector"
    if kind == "badDirectionSign":
        return "TranslationFamilyFailure.badDirectionSign"
    if kind == "farkas":
        return "TranslationFamilyFailure.farkas"
    raise ValueError(f"unsupported translation family failure: {kind}")


def farkas_terms_to_json(terms: list[tuple[int, Fraction]]) -> list[dict]:
    return [
        {"index": index, "multiplier": rat_to_json(multiplier)}
        for index, multiplier in terms
    ]


def strict_line_to_json(line: StrictLin2Q) -> list[str]:
    return [rat_to_json(line[0]), rat_to_json(line[1]), rat_to_json(line[2])]


def normalize_strict_line(line: StrictLin2Q) -> StrictLin2Q:
    den = 1
    for value in line:
        den = math.lcm(den, value.denominator)
    ints = [value.numerator * (den // value.denominator) for value in line]
    content = 0
    for value in ints:
        content = math.gcd(content, abs(value))
    if content == 0:
        return line
    return tuple(Fraction(value, content) for value in ints)  # type: ignore[return-value]


def normalized_constraint_system(constraints: list[StrictLin2Q]) -> dict:
    normalized_lines = [normalize_strict_line(line) for line in constraints]
    sorted_unique = sorted(set(normalized_lines))
    index_by_line = {line: index for index, line in enumerate(sorted_unique)}
    original_to_normalized = [index_by_line[line] for line in normalized_lines]
    normalized_to_originals = [
        [index for index, mapped in enumerate(original_to_normalized) if mapped == normalized_index]
        for normalized_index in range(len(sorted_unique))
    ]
    return {
        "constraints": [strict_line_to_json(line) for line in sorted_unique],
        "originalToNormalized": original_to_normalized,
        "normalizedToOriginals": normalized_to_originals,
    }


def normalized_farkas_terms_for_system(
    terms: list[tuple[int, Fraction]], system: dict
) -> list[dict]:
    original_to_normalized = system["originalToNormalized"]
    mapped = [
        (original_to_normalized[index], multiplier)
        for index, multiplier in terms
    ]
    return farkas_terms_to_json(normalize_farkas_terms(mapped))


def translation_cert_state_key(cert: TranslationCertPayload | dict) -> dict:
    payload = cert.to_json() if isinstance(cert, TranslationCertPayload) else cert
    return {
        "word": payload["word"],
        "mask": payload["mask"],
        "seq": payload["seq"],
        "b": payload["b"],
        "failure": payload["failure"],
    }


def build_translation_family_cert(
    rank: int, mask: int, name: str, failure_kind: str
) -> TranslationCertPayload:
    word = pair_word_at_rank(rank)
    b, seq = translation_vector(word, mask)
    if failure_kind == "badDirectionSign":
        failure = {"kind": "badDirectionSign", "impact": first_bad_translation_impact(seq, b)}
    elif failure_kind == "badTranslationVector":
        if b != vec((0, 0, 0)):
            raise ValueError(f"translation case {rank}/{mask} is not zero-vector")
        failure = {"kind": "badTranslationVector"}
    elif failure_kind == "farkas":
        constraints = translation_constraints_py(seq, b)
        terms = find_sparse_farkas(constraints)
        sources = translation_constraint_sources_py(seq)
        source_terms = [
            {
                "source": sources[index],
                "multiplier": rat_to_json(multiplier),
            }
            for index, multiplier in terms
        ]
        failure = {
            "kind": "farkas",
            "terms": farkas_terms_to_json(terms),
            "sourceTerms": source_terms,
        }
    else:
        raise ValueError(f"unsupported translation family failure: {failure_kind}")
    return TranslationCertPayload(
        name=name,
        rank=rank,
        mask=mask,
        word=word,
        seq=seq,
        b=b,
        failure=failure,
    )


def build_translation_family_payload() -> dict:
    specs = [
        {
            "name": "sampleTranslationFarkasFamily",
            "lean_name": "sampleTranslationFarkasFamilyCert",
            "failure_kind": "farkas",
            "prefix": "translationFamilyFarkas",
            "cases": [(0, 1), (0, 2)],
        },
        {
            "name": "sampleTranslationBadDirectionFamily",
            "lean_name": "sampleTranslationBadDirectionFamilyCert",
            "failure_kind": "badDirectionSign",
            "prefix": "translationFamilyBadDirection",
            "cases": [(0, 4), (0, 5)],
        },
    ]
    families = []
    all_certs: list[TranslationCertPayload] = []
    for spec in specs:
        certs = [
            build_translation_family_cert(rank, mask, f"{spec['prefix']}{offset:03d}", spec["failure_kind"])
            for offset, (rank, mask) in enumerate(spec["cases"])
        ]
        coverages = [
            canonical_translation_coverage_record(cert.rank, cert.mask)
            for cert in certs
        ]
        paired = sorted(
            zip(coverages, certs, strict=True),
            key=lambda item: (
                item[0]["canonical_rank"],
                item[0]["canonical_mask"],
                item[0]["raw_rank"],
                item[0]["raw_mask"],
            ),
        )
        coverages = [coverage for coverage, _cert in paired]
        certs = [cert for _coverage, cert in paired]
        member_state_keys = [translation_cert_state_key(cert) for cert in certs]
        member_state_ids = [
            normalized_state_id("translation-member", key)
            for key in member_state_keys
        ]
        family_state_key: dict = {
            "failure_kind": spec["failure_kind"],
            "coverages": [
                {
                    "raw_rank": coverage["raw_rank"],
                    "raw_mask": coverage["raw_mask"],
                    "canonical_rank": coverage["canonical_rank"],
                    "canonical_mask": coverage["canonical_mask"],
                }
                for coverage in coverages
            ],
            "member_state_ids": member_state_ids,
            "member_state_keys": member_state_keys,
        }
        if spec["failure_kind"] == "farkas":
            shared = []
            for cert in certs:
                constraints = translation_constraints_py(cert.seq, cert.b)
                system = normalized_constraint_system(constraints)
                terms = [
                    (term["index"], Fraction(term["multiplier"]))
                    for term in cert.failure["terms"]
                ]
                shared.append({
                    "case": {"rank": cert.rank, "mask": cert.mask},
                    "normalizedConstraintSystem": system,
                    "normalizedFarkasTerms": normalized_farkas_terms_for_system(terms, system),
                    "originalFarkasTerms": cert.failure["terms"],
                })
            family_state_key["sharedFarkas"] = shared
        family_state_id = normalized_state_id("translation-family", family_state_key)
        all_certs.extend(certs)
        families.append({
            "name": spec["name"],
            "lean_name": spec["lean_name"],
            "failure_kind": spec["failure_kind"],
            "normalizedStateId": family_state_id,
            "normalizedStateKey": family_state_key,
            "memberStateIds": member_state_ids,
            "memberStateKeys": member_state_keys,
            "coverages": coverages,
            "coveredCases": [
                {"pair_rank": cert.rank, "sign_mask": cert.mask}
                for cert in certs
            ],
            "cert_names": [cert.name for cert in certs],
            "certs": [cert.to_json() for cert in certs],
        })
    records = {cert.rank: cert.word for cert in all_certs}
    present = sorted({family["failure_kind"] for family in families})
    absent = [{
        "failure_kind": "badTranslationVector",
        "status": "not-present-in-this-representative-sample",
        "reason": (
            "The checker and Lean family layer support zero translation vectors; "
            "the bounded sample uses nonzero identity-linear translation cases."
        ),
    }]
    return {
        "schema_version": 1,
        "mode": "translation-family-sample",
        "pair_words": [
            {"rank": rank, "word": records[rank]}
            for rank in sorted(records)
        ],
        "families": families,
        "failure_kind_accounting": {
            "present": present,
            "absent": absent,
            "accounted_for": sorted(set(present) | {record["failure_kind"] for record in absent}),
        },
        "summary": {
            "families": len(families),
            "covered_cases": len(all_certs),
            "coverage_kind": "translation-family-leaves",
            "supported_failure_kinds": TRANSLATION_FAMILY_FAILURE_KINDS,
            "present_failure_kinds": present,
        },
    }


def write_translation_family_json(payload: dict) -> None:
    TRANSLATION_FAMILY_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_FAMILY_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def write_translation_family_lean(payload: dict) -> None:
    families = payload["families"]
    certs = [cert for family in families for cert in family["certs"]]
    lines: list[str] = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Generated representative translation family coverage sample for Step 14E.5.",
        "",
        "This file exercises grouped translation leaves, including a shared",
        "sparse Farkas family. It is representative data, not exhaustive.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation",
        "",
        "set_option maxHeartbeats 2400000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        "def caseBoxRange (startRank endRank startMask endMask : Nat) :",
        "    TranslationCaseBox where",
        "  startRank := startRank",
        "  endRank := endRank",
        "  startMask := startMask",
        "  endMask := endMask",
        "",
    ]
    append_word_definitions(lines, payload)
    coverage_by_case = {
        (coverage["raw_rank"], coverage["raw_mask"]): coverage
        for family in families
        for coverage in family["coverages"]
    }
    for cert in certs:
        append_translation_cert(lines, cert)
        append_translation_check_theorem(lines, cert)
        coverage = coverage_by_case[(cert["rank"], cert["mask"])]
        lines.extend([
            f"def {cert['name']}Coverage : CanonicalTranslationCoverage :=",
            f"  {lean_canonical_translation_coverage(coverage)}",
            "",
            f"theorem {cert['name']}Coverage_check :",
            f"    checkCanonicalTranslationCoverage {cert['name']}Coverage = true := by",
            "  decide",
            "",
            f"theorem {cert['name']}Coverage_coveredCase :",
            f"    checkTranslationCoveredCase",
            f"      {{ pairRank := {cert['name']}Coverage.rawRank,",
            f"        signMask := {cert['name']}Coverage.rawMask.val }}",
            f"      {cert['name']} = true := by",
            "  decide",
            "",
            f"theorem {cert['name']}_familyFailure :",
            "    checkTranslationFamilyFailureMatches",
            f"      {translation_family_failure_lean(cert['failure']['kind'])}",
            f"      {cert['name']} = true := by",
            "  rfl",
            "",
        ])
    family_tree_checks: list[str] = []
    for family in families:
        cert_names = ", ".join(cert["name"] for cert in family["certs"])
        coverage_names = ", ".join(f"{cert['name']}Coverage" for cert in family["certs"])
        box_start_rank = min(c["canonical_rank"] for c in family["coverages"])
        box_end_rank = max(c["canonical_rank"] for c in family["coverages"]) + 1
        box_start_mask = min(c["canonical_mask"] for c in family["coverages"])
        box_end_mask = max(c["canonical_mask"] for c in family["coverages"]) + 1
        box_name = f"{family['lean_name']}Box"
        box_valid_name = f"{family['lean_name']}_boxCheck"
        family_name = family["lean_name"]
        leaf_name = f"{family_name}Leaf"
        tree_name = f"{family_name}Tree"
        check_name = f"{family_name}_check"
        leaf_check_name = f"{family_name}_leafCheck"
        tree_check_name = f"{family_name}_treeCheck"
        family_tree_checks.append(tree_check_name)
        coverage_checks = [f"{cert['name']}Coverage_check" for cert in family["certs"]]
        covered_checks = [f"{cert['name']}Coverage_coveredCase" for cert in family["certs"]]
        cert_checks = [f"{cert['name']}_check" for cert in family["certs"]]
        failure_checks = [f"{cert['name']}_familyFailure" for cert in family["certs"]]
        box_checks = [
            f"{cert['name']}_{family_name}_boxCheck"
            for cert in family["certs"]
        ]
        lines.extend([
            f"def {box_name} : TranslationCaseBox :=",
            f"  caseBoxRange {box_start_rank} {box_end_rank} {box_start_mask} {box_end_mask}",
            "",
            f"theorem {box_valid_name} :",
            f"    checkTranslationCaseBox {box_name} = true := by",
            f"  norm_num [checkTranslationCaseBox, {box_name}, caseBoxRange,",
            "    numPairWords, numSignMasks]",
            "",
        ])
        for cert, box_check_name in zip(family["certs"], box_checks, strict=True):
            lines.extend([
                f"theorem {box_check_name} :",
                "    checkTranslationCaseBoxContainsCanonicalTranslationCoverage",
                f"      {box_name} {cert['name']}Coverage = true := by",
                "  simp [checkTranslationCaseBoxContainsCanonicalTranslationCoverage,",
                f"    {box_name}, caseBoxRange, {cert['name']}Coverage]",
                "",
            ])
        lines.extend([
            f"def {family_name} : TranslationFamilyCert where",
            f"  name := {lean_string(family['name'])}",
            f"  failure := {translation_family_failure_lean(family['failure_kind'])}",
            f"  normalizedStateId := {lean_string(family['normalizedStateId'])}",
            f"  coverages := #[{coverage_names}]",
            f"  certs := #[{cert_names}]",
            "",
            f"theorem {check_name} :",
            f"    checkTranslationFamilyCert {box_name} {family_name} = true := by",
            f"  unfold checkTranslationFamilyCert {family_name}",
            "  change",
            f"      (checkTranslationCaseBox {box_name} &&",
            "        checkTranslationFamilyEntries",
            f"          {box_name}",
            f"          {translation_family_failure_lean(family['failure_kind'])}",
            f"          [{coverage_names}]",
            f"          [{cert_names}]) = true",
            "  simp [checkTranslationFamilyEntries,",
            f"    {', '.join([box_valid_name] + coverage_checks + box_checks + covered_checks + cert_checks + failure_checks)}]",
            "",
            f"theorem {leaf_check_name} :",
            f"    checkTranslationCoverageLeaf {box_name}",
            f"      (TranslationCoverageLeaf.family {family_name}) = true := by",
            "  unfold checkTranslationCoverageLeaf checkTranslationCoverageLeafPayload",
            "  change",
            f"      (checkTranslationCaseBox {box_name} &&",
            f"        checkTranslationFamilyCert {box_name} {family_name}) = true",
            f"  rw [{check_name}, {box_valid_name}]",
            "  rfl",
            "",
            f"def {leaf_name} : TranslationCoverageTree :=",
            f"  TranslationCoverageTree.leaf {box_name}",
            f"    (TranslationCoverageLeaf.family {family_name})",
            "",
            f"def {tree_name} : TranslationCoverageTree :=",
            f"  {leaf_name}",
            "",
            f"theorem {tree_check_name} :",
            f"    checkTranslationCoverageTree {tree_name} = true := by",
            f"  unfold checkTranslationCoverageTree {tree_name} {leaf_name} coverageTreeFuel",
            f"  simpa [checkTranslationCoverageTreeFuel] using {leaf_check_name}",
            "",
        ])
    forest_trees = ", ".join(f"{family['lean_name']}Tree" for family in families)
    lines.extend([
        "def sampleFamilyCoverage : TranslationCoverageForest where",
        f"  trees := [{forest_trees}]",
        "",
        "theorem sampleFamilyCoverage_check :",
        "    checkTranslationCoverageForest sampleFamilyCoverage = true := by",
        "  unfold checkTranslationCoverageForest sampleFamilyCoverage",
        f"  simp [{', '.join(family_tree_checks)}]",
        "",
        "theorem sampleFamilyCoverage_sound",
        "    {r : Fin numPairWords} {mask : SignMask}",
        "    (hcontains : sampleFamilyCoverage.ContainsTranslationChoice r mask) :",
        "    exists cert : TranslationCert,",
        "      checkTranslationCoveredCase",
        "          { pairRank := r.val, signMask := mask.val } cert = true /\\",
        "        checkTranslationCert cert = true :=",
        "  checkTranslationCoverageForest_choice_sound",
        "    sampleFamilyCoverage_check hcontains",
        "",
        "#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage",
        "#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage_sound",
        "",
        "end Cuboctahedron.Generated.Translation",
        "",
    ])
    TRANSLATION_FAMILY_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_FAMILY_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_json(payload: dict) -> None:
    JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    JSON_PATH.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_canonical_json(payload: dict) -> None:
    CANONICAL_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    CANONICAL_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def write_coverage_json(payload: dict) -> None:
    coverage = payload["coverage"] if "coverage" in payload else payload
    COVERAGE_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    COVERAGE_JSON_PATH.write_text(
        json.dumps({
            "schema_version": 1,
            "mode": "coverage-manifest",
            "coverage": coverage,
        }, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def write_canonical_coverage_json(payload: dict) -> None:
    CANONICAL_COVERAGE_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    CANONICAL_COVERAGE_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


MIB = 1024 ** 2
GIB = 1024 ** 3


def path_status(path: Path) -> dict:
    exists = path.exists()
    try:
        display_path = str(path.relative_to(REPO_ROOT))
    except ValueError:
        display_path = str(path)
    return {
        "path": display_path,
        "exists": exists,
        "bytes": path.stat().st_size if exists else 0,
    }


def load_json_artifact(path: Path, expected_mode: str) -> dict:
    if not path.exists():
        raise FileNotFoundError(f"required artifact missing: {path.relative_to(REPO_ROOT)}")
    payload = json.loads(path.read_text(encoding="utf-8"))
    if payload.get("mode") != expected_mode:
        raise ValueError(
            f"{path.relative_to(REPO_ROOT)} has mode {payload.get('mode')!r}, "
            f"expected {expected_mode!r}"
        )
    return payload


def build_exhaustive_real_certs_summary(
    *,
    profile_input: Path,
    generated_data_budget_gib: float,
    required_free_gib: float,
    approve_large_exhaustive: bool,
    allow_flat_exhaustive: bool,
) -> dict:
    profile = exact_profile.load_profile_payload(profile_input)
    counts = exact_profile.check_profile_payload(profile)
    profile_options = profile.get("options", {})
    required_profile_options = {
        "with_symmetry": True,
        "with_reversal": True,
        "exact_state_groups": True,
    }
    missing_profile_options = [
        key
        for key, expected in required_profile_options.items()
        if profile_options.get(key) is not expected
    ]

    artifacts = {
        "profile": path_status(profile_input),
        "coverage_manifest": path_status(COVERAGE_JSON_PATH),
        "canonical_coverage_manifest": path_status(CANONICAL_COVERAGE_JSON_PATH),
        "coverage_tree_sample": path_status(COVERAGE_TREE_JSON_PATH),
        "nonidentity_family_sample": path_status(NONIDENTITY_FAMILY_JSON_PATH),
        "translation_family_sample": path_status(TRANSLATION_FAMILY_JSON_PATH),
    }

    load_json_artifact(COVERAGE_JSON_PATH, "coverage-manifest")
    load_json_artifact(CANONICAL_COVERAGE_JSON_PATH, "canonical-coverage-manifest")
    load_json_artifact(COVERAGE_TREE_JSON_PATH, "coverage-tree-sample")
    load_json_artifact(NONIDENTITY_FAMILY_JSON_PATH, "nonidentity-family-sample")
    load_json_artifact(TRANSLATION_FAMILY_JSON_PATH, "translation-family-sample")

    estimates = profile["size_estimates"]
    estimated_lean_bytes = int(estimates["estimated_lean_bytes"])
    canonical_cert_estimate = int(estimates["canonical_cert_estimate"])
    flat_total_certs = int(estimates["flat_total_certs"])
    budget_bytes = int(generated_data_budget_gib * GIB)
    required_free_bytes = int(required_free_gib * GIB)
    disk = shutil.disk_usage(REPO_ROOT)

    refusal_reasons: list[str] = []
    if missing_profile_options:
        refusal_reasons.append(
            "profile_missing_required_options:"
            + ",".join(sorted(missing_profile_options))
        )
    if flat_total_certs > canonical_cert_estimate and not allow_flat_exhaustive:
        flat_status = "disabled_without_allow_flat_exhaustive"
    else:
        flat_status = "diagnostic_allowed_but_not_used"
    if estimated_lean_bytes > budget_bytes and not approve_large_exhaustive:
        refusal_reasons.append("estimated_lean_bytes_exceeds_budget")
    if disk.free < required_free_bytes:
        refusal_reasons.append("free_space_below_required_floor")

    if refusal_reasons:
        emission_status = (
            "refused_budget_exceeded"
            if "estimated_lean_bytes_exceeds_budget" in refusal_reasons
            else "refused_prerequisite_or_space_check"
        )
    elif approve_large_exhaustive:
        emission_status = "approved_but_full_emitter_not_implemented"
        refusal_reasons.append("large_emission_writer_not_implemented")
    else:
        emission_status = "ready_but_approval_required"
        refusal_reasons.append("large_emission_requires_explicit_approval")

    return {
        "schema_version": 1,
        "mode": "exhaustive-real-certs",
        "complete": False,
        "summary_kind": "gated-estimate",
        "actual_counts": {
            "pair_words": counts["pair_words"],
            "identity_linear_words": counts["identity_linear_words"],
            "nonidentity_words": counts["nonidentity_words"],
            "translation_sign_assignments": counts["translation_sign_assignments"],
        },
        "profile": {
            "path": path_status(profile_input)["path"],
            "complete": profile.get("complete", False),
            "backend": profile.get("backend"),
            "options": profile_options,
            "required_options": required_profile_options,
        },
        "prerequisites": artifacts,
        "estimate": {
            "flat_total_certs": flat_total_certs,
            "flat_nonidentity_certs": int(estimates["flat_nonidentity_certs"]),
            "flat_translation_certs": int(estimates["flat_translation_certs"]),
            "canonical_cert_estimate": canonical_cert_estimate,
            "estimated_lean_bytes": estimated_lean_bytes,
            "estimated_lean_gib": estimated_lean_bytes / GIB,
            "profile_estimate_note": estimates.get("note", ""),
            "shared_farkas_groups": int(estimates.get("shared_farkas_groups", 0)),
        },
        "budget": {
            "generated_data_budget_gib": generated_data_budget_gib,
            "generated_data_budget_bytes": budget_bytes,
            "required_free_gib": required_free_gib,
            "required_free_bytes": required_free_bytes,
            "free_bytes": disk.free,
            "free_gib": disk.free / GIB,
        },
        "flat_fallback": {
            "allowed": allow_flat_exhaustive,
            "status": flat_status,
            "used": False,
        },
        "full_emission": {
            "requested": approve_large_exhaustive,
            "performed": False,
            "status": emission_status,
            "refusal_reasons": refusal_reasons,
            "approval_flag": "--approve-large-exhaustive",
            "large_emission_ready": False,
        },
        "expected_full_generation_paths": [
            "Cuboctahedron/Generated/NonIdentity/",
            "Cuboctahedron/Generated/Translation/",
            "Cuboctahedron/Generated/AllGenerated.lean",
        ],
    }


def write_exhaustive_real_certs_summary(payload: dict) -> None:
    EXHAUSTIVE_REAL_CERTS_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    EXHAUSTIVE_REAL_CERTS_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def family_sample_summary(payload: dict, covered_key: str) -> dict:
    families = payload["families"]
    summary = payload["summary"]
    accounting = payload["failure_kind_accounting"]
    return {
        "artifact_mode": payload["mode"],
        "family_count": len(families),
        covered_key: int(summary[covered_key]),
        "present_failure_kinds": sorted(summary["present_failure_kinds"]),
        "absent_failure_kinds": sorted(
            record["failure_kind"] for record in accounting["absent"]
        ),
        "distinct_normalized_state_ids": len({
            family["normalizedStateId"] for family in families
        }),
        "is_sample_only": True,
    }


def translation_sample_sharing_summary(payload: dict) -> dict:
    constraint_systems: set[str] = set()
    farkas_shapes: set[str] = set()
    for family in payload["families"]:
        state_key = family.get("normalizedStateKey", {})
        shared_items = state_key.get("sharedFarkas")
        if not shared_items:
            continue
        if isinstance(shared_items, dict):
            shared_items = [shared_items]
        for shared in shared_items:
            system = shared.get("normalizedConstraintSystem")
            if system is not None:
                constraint_systems.add(json.dumps(system, sort_keys=True))
            terms = shared.get("normalizedFarkasTerms")
            if terms is not None:
                farkas_shapes.add(json.dumps(terms, sort_keys=True))
    return {
        "sample_normalized_constraint_systems": len(constraint_systems),
        "sample_normalized_farkas_shapes": len(farkas_shapes),
        "full_constraint_histogram_available": False,
        "full_farkas_shape_histogram_available": False,
    }


def threshold_record(name: str, limit_bytes: int, estimated_bytes: int) -> dict:
    return {
        "name": name,
        "limit_bytes": limit_bytes,
        "fits": estimated_bytes <= limit_bytes,
    }


def build_compression_audit_payload() -> dict:
    profile = exact_profile.load_profile_payload(exact_profile.PROFILE_JSON_PATH)
    counts = exact_profile.check_profile_payload(profile)
    canonical = load_json_artifact(CANONICAL_COVERAGE_JSON_PATH, "canonical-coverage-manifest")
    load_json_artifact(COVERAGE_JSON_PATH, "coverage-manifest")
    coverage_tree = load_json_artifact(COVERAGE_TREE_JSON_PATH, "coverage-tree-sample")
    nonidentity_family = load_json_artifact(
        NONIDENTITY_FAMILY_JSON_PATH, "nonidentity-family-sample"
    )
    translation_family = load_json_artifact(
        TRANSLATION_FAMILY_JSON_PATH, "translation-family-sample"
    )
    exhaustive = load_json_artifact(EXHAUSTIVE_REAL_CERTS_JSON_PATH, "exhaustive-real-certs")

    estimates = profile["size_estimates"]
    exact_summary = estimates.get("exact_state_group_summary", {})
    nonid_exact = exact_summary.get("nonidentity", {})
    translation_exact = exact_summary.get("translation", {})
    current_estimated_bytes = int(exhaustive["estimate"]["estimated_lean_bytes"])
    canonical_cert_estimate = int(exhaustive["estimate"]["canonical_cert_estimate"])
    thresholds = [
        threshold_record("1GiB", GIB, current_estimated_bytes),
        threshold_record("500MiB", 500 * MIB, current_estimated_bytes),
        threshold_record("100MiB", 100 * MIB, current_estimated_bytes),
    ]

    nonid_hist_available = int(nonid_exact.get("pathSensitiveUnbucketed", 0)) == 0
    translation_hist_available = int(translation_exact.get("pathSensitiveUnbucketed", 0)) == 0
    shared_farkas_groups = int(estimates.get("shared_farkas_groups", 0))
    sample_nonid = family_sample_summary(nonidentity_family, "covered_ranks")
    sample_translation = family_sample_summary(translation_family, "covered_cases")
    translation_sharing = translation_sample_sharing_summary(translation_family)

    full_histograms_available = (
        nonid_hist_available
        and translation_hist_available
        and translation_sharing["full_constraint_histogram_available"]
        and translation_sharing["full_farkas_shape_histogram_available"]
    )
    ready_for_14e7 = full_histograms_available and thresholds[0]["fits"]
    if ready_for_14e7:
        status = "ready_for_14E7"
        recommendation = "proceed_to_concrete_exhaustive_coverage_witness"
    elif not full_histograms_available:
        status = "blocked_needs_full_compression_histograms"
        recommendation = (
            "add_full_aggregate_compression_profiler_for_nonidentity_failure_families_"
            "and_translation_constraint_farkas_shapes"
        )
    else:
        status = "blocked_exceeds_size_budget"
        recommendation = "add_deeper_prefix_or_family_compression_before_14E7"

    return {
        "schema_version": 1,
        "mode": "compression-audit",
        "complete": True,
        "proof_complete": False,
        "actual_counts": {
            "pair_words": counts["pair_words"],
            "identity_linear_words": counts["identity_linear_words"],
            "nonidentity_words": counts["nonidentity_words"],
            "translation_sign_assignments": counts["translation_sign_assignments"],
        },
        "prerequisites": {
            "profile": path_status(exact_profile.PROFILE_JSON_PATH),
            "coverage_manifest": path_status(COVERAGE_JSON_PATH),
            "canonical_coverage_manifest": path_status(CANONICAL_COVERAGE_JSON_PATH),
            "coverage_tree_sample": path_status(COVERAGE_TREE_JSON_PATH),
            "nonidentity_family_sample": path_status(NONIDENTITY_FAMILY_JSON_PATH),
            "translation_family_sample": path_status(TRANSLATION_FAMILY_JSON_PATH),
            "exhaustive_real_certs_summary": path_status(EXHAUSTIVE_REAL_CERTS_JSON_PATH),
        },
        "canonical_counts": canonical["canonical_counts"],
        "nonidentity": {
            "raw_cases": counts["nonidentity_words"],
            "compressed_linear_groups": int(
                estimates.get("compressed_nonidentity_linear_groups", 0)
            ),
            "full_failure_family_histogram_available": nonid_hist_available,
            "path_sensitive_unbucketed": int(
                nonid_exact.get("pathSensitiveUnbucketed", 0)
            ),
            "sample_family_summary": sample_nonid,
        },
        "translation": {
            "raw_cases": counts["translation_sign_assignments"],
            "shared_farkas_groups": shared_farkas_groups,
            "full_constraint_histogram_available": translation_hist_available,
            "path_sensitive_unbucketed": int(
                translation_exact.get("pathSensitiveUnbucketed", 0)
            ),
            "sample_family_summary": sample_translation,
            "sample_sharing": translation_sharing,
        },
        "prefix_tree": {
            "sample_nonidentity_nodes": len(coverage_tree["nonidentity_trees"]),
            "sample_translation_nodes": len(coverage_tree["translation_trees"]),
            "full_leaf_estimate": int(estimates["prefix_tree_leaf_estimate"]),
            "full_reduction_proven": int(estimates["prefix_tree_leaf_estimate"])
            < canonical_cert_estimate,
        },
        "size_ladder": {
            "flat_total_certs": int(estimates["flat_total_certs"]),
            "canonical_cert_estimate": canonical_cert_estimate,
            "current_estimated_lean_bytes": current_estimated_bytes,
            "current_estimated_lean_gib": current_estimated_bytes / GIB,
            "thresholds": thresholds,
        },
        "decision": {
            "status": status,
            "ready_for_14E7": ready_for_14e7,
            "recommendation": recommendation,
        },
    }


def write_compression_audit_json(payload: dict, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--small-sample", action="store_true", help="generate deterministic Step 14C sample")
    parser.add_argument(
        "--mode",
        choices=[
            "small-sample",
            "coverage-manifest",
            "profile-exhaustive-states",
            "canonical-symmetry-sample",
            "canonical-coverage-manifest",
            "coverage-tree-sample",
            "nonidentity-family-sample",
            "translation-family-sample",
            "exhaustive-real-certs",
            "compression-audit",
        ],
        help="generation mode",
    )
    parser.add_argument(
        "--profile-limit",
        type=int,
        help="development-only limit for profile-exhaustive-states",
    )
    parser.add_argument(
        "--profile-output",
        type=Path,
        default=exact_profile.PROFILE_JSON_PATH,
        help="output path for profile-exhaustive-states JSON",
    )
    parser.add_argument(
        "--profile-input",
        type=Path,
        default=exact_profile.PROFILE_JSON_PATH,
        help="input path for exhaustive-real-certs profile JSON",
    )
    parser.add_argument(
        "--with-symmetry",
        action="store_true",
        help="include started-symmetry canonical counts in profile-exhaustive-states",
    )
    parser.add_argument(
        "--with-reversal",
        action="store_true",
        help="include grouping-only reversal canonical counts in profile-exhaustive-states",
    )
    parser.add_argument(
        "--exact-state-groups",
        action="store_true",
        help="compute exact full-state group summaries in profile-exhaustive-states",
    )
    parser.add_argument(
        "--exhaustive-summary-output",
        type=Path,
        default=EXHAUSTIVE_REAL_CERTS_JSON_PATH,
        help="output path for exhaustive-real-certs gated summary JSON",
    )
    parser.add_argument(
        "--compression-audit-output",
        type=Path,
        default=COMPRESSION_AUDIT_JSON_PATH,
        help="output path for compression-audit JSON",
    )
    parser.add_argument(
        "--generated-data-budget-gib",
        type=float,
        default=8.0,
        help="maximum generated Lean source estimate allowed before refusing emission",
    )
    parser.add_argument(
        "--required-free-gib",
        type=float,
        default=100.0,
        help="minimum free space required before large exhaustive emission",
    )
    parser.add_argument(
        "--approve-large-exhaustive",
        action="store_true",
        help="explicitly approve large exhaustive emission if size gates pass",
    )
    parser.add_argument(
        "--allow-flat-exhaustive",
        action="store_true",
        help="diagnostic-only flag allowing flat exhaustive fallback reporting",
    )
    args = parser.parse_args()
    mode = args.mode or ("small-sample" if args.small_sample else None)
    if mode is None:
        parser.error(
            "use --small-sample or --mode coverage-manifest/"
            "profile-exhaustive-states/canonical-symmetry-sample/"
            "canonical-coverage-manifest/coverage-tree-sample/"
            "nonidentity-family-sample/translation-family-sample/"
            "exhaustive-real-certs/compression-audit"
        )
    if mode == "profile-exhaustive-states":
        if args.profile_limit is not None and args.profile_limit < 0:
            parser.error("--profile-limit must be nonnegative")
        payload = exact_profile.build_profile_payload(
            limit=args.profile_limit,
            with_symmetry=args.with_symmetry,
            with_reversal=args.with_reversal,
            exact_state_groups=args.exact_state_groups,
        )
        exact_profile.write_profile_payload(payload, args.profile_output)
        exact_profile.print_profile_summary(payload)
        print(f"json: {args.profile_output}")
        return
    if mode == "exhaustive-real-certs":
        if args.generated_data_budget_gib < 0:
            parser.error("--generated-data-budget-gib must be nonnegative")
        if args.required_free_gib < 0:
            parser.error("--required-free-gib must be nonnegative")
        payload = build_exhaustive_real_certs_summary(
            profile_input=args.profile_input,
            generated_data_budget_gib=args.generated_data_budget_gib,
            required_free_gib=args.required_free_gib,
            approve_large_exhaustive=args.approve_large_exhaustive,
            allow_flat_exhaustive=args.allow_flat_exhaustive,
        )
        args.exhaustive_summary_output.parent.mkdir(parents=True, exist_ok=True)
        args.exhaustive_summary_output.write_text(
            json.dumps(payload, indent=2, sort_keys=True) + "\n",
            encoding="utf-8",
        )
        print("checked exhaustive real-certificate generation gate")
        print(f"status: {payload['full_emission']['status']}")
        print(
            "estimated Lean source: "
            f"{payload['estimate']['estimated_lean_gib']:.2f} GiB"
        )
        print(f"free space: {payload['budget']['free_gib']:.2f} GiB")
        print(f"json: {args.exhaustive_summary_output}")
        return
    if mode == "compression-audit":
        payload = build_compression_audit_payload()
        write_compression_audit_json(payload, args.compression_audit_output)
        print("generated compression feasibility audit")
        print(f"status: {payload['decision']['status']}")
        print(
            "estimated Lean source: "
            f"{payload['size_ladder']['current_estimated_lean_gib']:.2f} GiB"
        )
        for threshold in payload["size_ladder"]["thresholds"]:
            verdict = "fits" if threshold["fits"] else "does not fit"
            print(f"{threshold['name']}: {verdict}")
        print(f"recommendation: {payload['decision']['recommendation']}")
        print(f"json: {args.compression_audit_output}")
        return
    if mode == "canonical-symmetry-sample":
        payload = build_canonical_payload()
        write_canonical_json(payload)
        write_canonical_lean(payload)
        write_all_generated()
        print("generated canonical symmetry sample")
        print(f"json: {CANONICAL_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {CANONICAL_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "canonical-coverage-manifest":
        payload = build_canonical_coverage_payload()
        write_canonical_coverage_json(payload)
        write_canonical_coverage_manifest(payload)
        write_all_generated()
        print("generated canonical coverage manifest")
        print(f"json: {CANONICAL_COVERAGE_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {CANONICAL_COVERAGE_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "coverage-tree-sample":
        payload = build_coverage_tree_payload()
        write_coverage_tree_json(payload)
        write_coverage_tree_lean(payload)
        write_all_generated()
        print("generated representative coverage tree sample")
        print(f"json: {COVERAGE_TREE_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {COVERAGE_TREE_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "nonidentity-family-sample":
        payload = build_nonidentity_family_payload()
        write_nonidentity_family_json(payload)
        write_nonidentity_family_lean(payload)
        write_all_generated()
        print("generated representative nonidentity family sample")
        print(f"json: {NONIDENTITY_FAMILY_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {NONIDENTITY_FAMILY_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "translation-family-sample":
        payload = build_translation_family_payload()
        write_translation_family_json(payload)
        write_translation_family_lean(payload)
        print("generated representative translation family sample")
        print(f"json: {TRANSLATION_FAMILY_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {TRANSLATION_FAMILY_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "coverage-manifest":
        payload = build_coverage_payload()
        write_coverage_json(payload)
        write_coverage_manifest(payload)
        print(
            "generated coverage manifest data: "
            f"{payload['pairWordCount']} pair words, "
            f"{payload['signMaskCount']} sign masks, "
            f"{len(payload['chunks'])} chunks"
        )
        print(f"json: {COVERAGE_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"coverage manifest: {COVERAGE_MANIFEST_PATH.relative_to(REPO_ROOT)}")
        return
    payload = build_payload()
    payload["coverage"] = build_coverage_payload()
    write_json(payload)
    write_coverage_json(payload)
    write_lean(payload)
    write_nonidentity_chunk(payload)
    write_translation_chunk(payload)
    write_coverage_manifest(payload)
    write_all_generated()
    print(
        "generated small real-cert sample: "
        f"{payload['summary']['pair_words_sampled']} pair words, "
        f"{payload['summary']['nonidentity_certs']} nonidentity certs, "
        f"{payload['summary']['translation_certs']} translation certs"
    )
    print(f"json: {JSON_PATH.relative_to(REPO_ROOT)}")
    print(f"lean: {LEAN_PATH.relative_to(REPO_ROOT)}")
    print(f"nonidentity chunk: {NONIDENTITY_CHUNK_PATH.relative_to(REPO_ROOT)}")
    print(f"translation chunk: {TRANSLATION_CHUNK_PATH.relative_to(REPO_ROOT)}")


if __name__ == "__main__":
    main()
