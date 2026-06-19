#!/usr/bin/env python3
"""Generate exact small-sample certificate data for the cuboctahedron project.

This script is intentionally untrusted. It uses exact rational arithmetic and
emits data that Lean and the independent checker verify.
"""

from __future__ import annotations

import argparse
import base64
import concurrent.futures
import hashlib
import itertools
import json
import math
import os
import shutil
import subprocess
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
RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "residual_nonidentity_templates.json"
)
COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "compact_residual_certificates.json"
)
PACKED_RESIDUAL_CERTIFICATES_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "packed_residual_certificates.json"
)
PROOF_CARRYING_STRUCTURED_LITERALS_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "proof_carrying_structured_literals.json"
)
COMPRESSION_AUDIT_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "compression_audit.json"
)
AGGREGATE_COMPRESSION_PROFILE_JSON_PATH = exact_profile.AGGREGATE_PROFILE_JSON_PATH
PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH = exact_profile.PREFIX_PARAMETRIC_JSON_PATH
PARAMETRIC_FAMILY_CHECKERS_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "parametric_family_checkers.json"
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
NONIDENTITY_PARAMETRIC_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "ParametricSample.lean"
)
TRANSLATION_PARAMETRIC_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "ParametricSample.lean"
)
NONIDENTITY_PARTITION_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "FamilyPartition.lean"
)
NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "ResidualTemplates.lean"
)
NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Residual" / "CompactPilot.lean"
)
NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Residual" / "PackedPilot.lean"
)
NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Residual" / "ProofCarryingSmoke.lean"
)
TRANSLATION_PARTITION_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "FamilyPartition.lean"
)
TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Farkas" / "ProofCarryingSmoke.lean"
)
NONIDENTITY_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Chunk0000.lean"
)
TRANSLATION_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Chunk0000.lean"
)
COVERAGE_MANIFEST_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CoverageManifest.lean"
ALL_GENERATED_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "AllGenerated.lean"
COMPACT_PILOT_LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CompactPilot.lean"
NONIDENTITY_RESIDUAL_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Residual"
)
TRANSLATION_FARKAS_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Farkas"
)
NONIDENTITY_RESIDUAL_ALL_PATH = NONIDENTITY_RESIDUAL_DIR / "All.lean"
TRANSLATION_FARKAS_ALL_PATH = TRANSLATION_FARKAS_DIR / "All.lean"
CERTS_DIR = REPO_ROOT / "certs"
COMPACT_CERT_SAMPLE_BLOB_PATH = CERTS_DIR / "compact_cert_sample.b64"
COMPACT_CERT_PILOT_BLOB_PATH = CERTS_DIR / "compact_cert_pilot.b64"
PACKED_RESIDUAL_PILOT_BLOB_PATH = CERTS_DIR / "packed_residual_pilot.b64"
FULL_NONIDENTITY_RESIDUAL_BLOB_DIR = CERTS_DIR / "nonidentity_residual"
FULL_TRANSLATION_FARKAS_BLOB_DIR = CERTS_DIR / "translation_farkas"
FULL_NONIDENTITY_RESIDUAL_SHARD_DIR = CERTS_DIR / "nonidentity_residual_shards"
FULL_TRANSLATION_FARKAS_SHARD_DIR = CERTS_DIR / "translation_farkas_shards"
COMPACT_CERT_SAMPLE_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "compact_cert_sample.json"
)
COMPACT_CERT_PILOT_JSON_PATH = (
    REPO_ROOT / "scripts" / "generated" / "compact_cert_pilot.json"
)

EXPECTED_PAIR_WORDS = 97_297_200
EXPECTED_IDENTITY_WORDS = 2_468_088
EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS = 157_957_632
COVERAGE_CHUNK_SIZE = 100_000
DEFAULT_FULL_EMISSION_TARGET_CHUNK_BYTES = 4 * 1024
FULL_EMISSION_TARGET_CHUNK_BYTES = DEFAULT_FULL_EMISSION_TARGET_CHUNK_BYTES
FULL_EMISSION_HARD_MAX_FILE_BYTES = 50 * 1024 * 1024
FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES = int(1.25 * 1024 * 1024 * 1024)
RESIDUAL_TEMPLATE_SCAN_LIMIT = 1000

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


def prefix_start_rank(prefix: list[str]) -> int:
    rank = 0
    remaining = dict(PAIR_COUNTS)
    for current in prefix:
        if current not in remaining or remaining[current] <= 0:
            raise ValueError(f"invalid pair prefix: {prefix}")
        current_code = PAIR_IDS.index(current)
        for smaller in PAIR_IDS[:current_code]:
            if remaining[smaller] == 0:
                continue
            trial = dict(remaining)
            trial[smaller] -= 1
            rank += multinomial_count(trial)
        remaining[current] -= 1
    return rank


def valid_pair_prefixes(depth: int) -> list[list[str]]:
    if not 0 <= depth <= 13:
        raise ValueError("--full-emission-prefix-depth must be between 0 and 13")
    prefixes: list[list[str]] = []
    current: list[str] = []
    remaining = dict(PAIR_COUNTS)

    def rec() -> None:
        if len(current) == depth:
            prefixes.append(list(current))
            return
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            remaining[pair_id] -= 1
            current.append(pair_id)
            rec()
            current.pop()
            remaining[pair_id] += 1

    rec()
    prefixes.sort(key=prefix_start_rank)
    return prefixes


def valid_pair_prefix_count(depth: int) -> int:
    if not 0 <= depth <= 13:
        raise ValueError("--full-emission-prefix-depth must be between 0 and 13")
    total = 0
    counts = [0] * len(PAIR_IDS)

    def rec(pair_index: int, remaining_depth: int) -> None:
        nonlocal total
        if pair_index == len(PAIR_IDS):
            if remaining_depth == 0:
                denominator = 1
                for count in counts:
                    denominator *= math.factorial(count)
                total += math.factorial(depth) // denominator
            return
        max_count = min(PAIR_COUNTS[PAIR_IDS[pair_index]], remaining_depth)
        for count in range(max_count + 1):
            counts[pair_index] = count
            rec(pair_index + 1, remaining_depth - count)
        counts[pair_index] = 0

    rec(0, depth)
    return total


def prefix_arg(prefix: list[str]) -> str:
    return ",".join(str(PAIR_IDS.index(pair_id)) for pair_id in prefix)


def pair_word_at_rank(rank: int) -> list[str]:
    """Return the lexicographic valid pair-word at `rank`.

    The earlier sample generator enumerated from zero for each lookup, which is
    fine for tiny examples but unusable for exhaustive fallback emission.  This
    is the inverse of `lex_rank_pair_word` and runs in O(13 * |PairId|).
    """
    if not 0 <= rank < EXPECTED_PAIR_WORDS:
        raise ValueError(f"pair-word rank out of range: {rank}")
    remaining = dict(PAIR_COUNTS)
    word: list[str] = []
    rest = rank
    for _pos in range(13):
        for pair_id in PAIR_IDS:
            if remaining[pair_id] == 0:
                continue
            trial = dict(remaining)
            trial[pair_id] -= 1
            block = multinomial_count(trial)
            if rest < block:
                word.append(pair_id)
                remaining = trial
                break
            rest -= block
        else:
            raise ValueError(f"failed to unrank pair-word rank: {rank}")
    if rest != 0 or not valid_pair_word(word):
        raise ValueError(f"invalid unranked pair-word at rank: {rank}")
    return word


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


def lean_nat_list_literal(values: list[int], *, indent: str = "  ") -> list[str]:
    if not values:
        return [indent + "[]"]
    chunks = [
        ", ".join(str(value) for value in values[index:index + 20])
        for index in range(0, len(values), 20)
    ]
    if len(chunks) == 1:
        return [indent + "[" + chunks[0] + "]"]
    lines = [indent + "[" + chunks[0] + ","]
    for chunk in chunks[1:-1]:
        lines.append(indent + "  " + chunk + ",")
    lines.append(indent + "  " + chunks[-1] + "]")
    return lines


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


def append_nonid_check_theorem_full(lines: list[str], cert: dict) -> str:
    """Emit a checked proof for any supported NonIdCert failure kind."""
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
        axis_forces_theorem = append_axis_forces_theorem(
            lines, cert, final_dot_theorem
        )
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
        axis_forces_theorem = append_axis_forces_theorem(
            lines, cert, final_dot_theorem
        )
        path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
        total_aff_theorem = append_total_aff_theorem(
            lines, cert, path_prefix_theorems
        )
        axis_solve_theorem = append_axis_solve_check_theorem(
            lines, cert, total_aff_theorem
        )
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
        axis_forces_theorem = append_axis_forces_theorem(
            lines, cert, final_dot_theorem
        )
        path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
        total_aff_theorem = append_total_aff_theorem(
            lines, cert, path_prefix_theorems
        )
        axis_solve_theorem = append_axis_solve_check_theorem(
            lines, cert, total_aff_theorem
        )
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
        axis_forces_theorem = append_axis_forces_theorem(
            lines, cert, final_dot_theorem
        )
        path_prefix_theorems = append_path_prefix_aff_theorems(lines, cert)
        total_aff_theorem = append_total_aff_theorem(
            lines, cert, path_prefix_theorems
        )
        axis_solve_theorem = append_axis_solve_check_theorem(
            lines, cert, total_aff_theorem
        )
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
        raise ValueError(f"unsupported nonidentity proof template: {failure['kind']}")
    return f"{name}_check"


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
        "import Cuboctahedron.Generated.NonIdentity.ParametricSample",
        "import Cuboctahedron.Generated.NonIdentity.FamilyPartition",
        "import Cuboctahedron.Generated.NonIdentity.ResidualTemplates",
        "import Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot",
        "import Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot",
        "import Cuboctahedron.Generated.Translation.Chunk0000",
        "import Cuboctahedron.Generated.Translation.ParametricSample",
        "import Cuboctahedron.Generated.Translation.FamilyPartition",
        "import Cuboctahedron.Generated.CanonicalSample",
        "import Cuboctahedron.Generated.CanonicalCoverageManifest",
        "import Cuboctahedron.Generated.CompactPilot",
        "import Cuboctahedron.Generated.CoverageTreeSample",
    ]
    if NONIDENTITY_RESIDUAL_ALL_PATH.exists():
        lines.append("import Cuboctahedron.Generated.NonIdentity.Residual.All")
    if TRANSLATION_FARKAS_ALL_PATH.exists():
        lines.append("import Cuboctahedron.Generated.Translation.Farkas.All")
    if NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH.exists():
        lines.append(
            "import Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke"
        )
    if TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH.exists():
        lines.append(
            "import Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke"
        )
    lines.extend([
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
        "noncomputable def allGeneratedParametricCheck : Bool :=",
        "  NonIdentity.checkParametricSamples &&",
        "    Translation.checkParametricSamples",
        "",
        "theorem allGeneratedParametricCheck_true :",
        "    allGeneratedParametricCheck = true := by",
        "  unfold allGeneratedParametricCheck",
        "  rw [NonIdentity.checkParametricSamples_true,",
        "    Translation.checkParametricSamples_true]",
        "  rfl",
        "",
        "#check exhaustiveNonIdBadDirectionFamily_partition",
        "#check exhaustiveNonIdBadPairBalanceFamily_partition",
        "#check exhaustiveTranslationBadDirectionFamily_partition",
        "#check exhaustiveTranslationBadVectorFamily_partition",
        "#check NonIdentity.sampleFamilyPartition",
        "#check Translation.sampleFamilyPartition",
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
    ])
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


def append_residual_boolean_check_theorems(lines: list[str], cert: dict) -> str:
    name = cert["name"]
    failure = cert["failure"]
    common_b = f"{name}_commonCheckB"
    lines.extend([
        f"theorem {common_b} :",
        f"    checkNonIdCommonB {name} = true := by",
        "  apply checkNonIdCommonB_complete",
        f"  · simpa [{name}] using",
        f"      {name}_validPairWord",
        f"  · simpa [{name}] using",
        f"      {name}_nonIdentity",
        f"  · simpa [{name}] using",
        f"      {name}_kernelCheck",
        f"  · exact checkForcedSeqMatchesWord_sound",
        f"      {name}",
        f"      {name}_forcedSeqMatches",
        f"  · simpa [{name}] using",
        f"      {name}_axisSolveCheck",
        "",
    ])

    theorem = f"{name}_residualBCheck"
    if failure["kind"] == "axisMissesStartInterior":
        lines.extend([
            f"theorem {theorem} :",
            f"    checkNonIdResidualCertB {name} = true := by",
            "  apply checkNonIdResidualCertB_axisMissesStartInterior",
            "  · rfl",
            f"  · exact {common_b}",
            "  · exact checkAxisForcesForcedSeqB_complete",
            f"      {name}_axisForces",
            "  · exact checkXpStartInteriorQB_false_complete",
            f"      {name}_notXpStartInterior",
            "",
        ])
    elif failure["kind"] == "badFirstHit":
        lines.extend([
            f"theorem {theorem} :",
            f"    checkNonIdResidualCertB {name} = true := by",
            "  apply checkNonIdResidualCertB_badFirstHit",
            "  · rfl",
            f"  · exact {common_b}",
            "  · exact checkAxisForcesForcedSeqB_complete",
            f"      {name}_axisForces",
            "  · exact checkCandidateOrderingFailsB_complete",
            f"      {name}_candidateOrderingFails",
            "",
        ])
    elif failure["kind"] == "badHitInterior":
        lines.extend([
            f"theorem {theorem} :",
            f"    checkNonIdResidualCertB {name} = true := by",
            "  apply checkNonIdResidualCertB_badHitInterior",
            "  · rfl",
            f"  · exact {common_b}",
            "  · exact checkAxisForcesForcedSeqB_complete",
            f"      {name}_axisForces",
            "  · exact checkCandidateHitInteriorFailsB_complete",
            f"      {name}_candidateHitInteriorFails",
            "",
        ])
    else:
        raise ValueError(
            f"unsupported residual Boolean proof template: {failure['kind']}"
        )
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
        "set_option linter.unnecessarySeqFocus false",
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


def generated_file_record(path: Path) -> dict:
    data = path.read_bytes()
    return {
        **path_status(path),
        "sha256": hashlib.sha256(data).hexdigest(),
    }


def generated_files_record(paths: Iterable[Path]) -> list[dict]:
    return [generated_file_record(path) for path in paths]


def relative_path(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


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


RESIDUAL_TEMPLATE_NAMES = {
    "axisMissesStartInterior": "residualAxisMissesStartInteriorTemplate",
    "badFirstHit": "residualBadFirstHitTemplate",
    "badHitInterior": "residualBadHitInteriorTemplate",
}


def build_residual_nonidentity_subtype_payload(limit: int | None = None) -> dict:
    effective_limit = RESIDUAL_TEMPLATE_SCAN_LIMIT if limit is None else limit
    binary = exact_profile.ensure_cpp_profile_helper()
    cmd = [
        str(binary),
        "--residual-nonidentity-subtypes",
        "--limit",
        str(effective_limit),
        "--no-progress",
    ]
    result = subprocess.run(
        cmd,
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return json.loads(result.stdout)


def residual_template_cert_for_subtype(record: dict) -> dict | None:
    if not record["present"]:
        return None
    kind = record["failure_kind"]
    samples = record.get("samples", [])
    if not samples:
        raise ValueError(f"residual subtype {kind} is present with no sample")
    name = RESIDUAL_TEMPLATE_NAMES[kind]
    rank = int(samples[0]["rank"])
    cert = build_nonid_cert_for_rank(rank, name).to_json()
    if cert["failure"]["kind"] != kind:
        raise ValueError(
            f"residual representative {rank} yielded "
            f"{cert['failure']['kind']}, expected {kind}"
        )
    return cert


def build_residual_nonidentity_templates_payload(
    *, limit: int | None = None
) -> dict:
    subtype_payload = build_residual_nonidentity_subtype_payload(limit)
    effective_limit = RESIDUAL_TEMPLATE_SCAN_LIMIT if limit is None else limit
    prefix_parametric = load_json_artifact(
        PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
        "prefix-parametric-compression",
    )
    expected_residual_cases = int(
        prefix_parametric["nonidentity"]["residual_singleton_cases"]
    )
    observed_residual_cases = int(subtype_payload["residual_singleton_cases"])
    subtype_records: list[dict] = []
    certs: list[dict] = []
    candidate_passed_observed_count = 0
    for subtype in subtype_payload["subtypes"]:
        kind = subtype["failure_kind"]
        if kind == "candidatePassed":
            candidate_passed_observed_count = int(subtype["count"])
            if candidate_passed_observed_count != 0:
                raise ValueError("residual candidate passed without failure")
            continue
        if kind not in RESIDUAL_TEMPLATE_NAMES:
            raise ValueError(f"unsupported residual subtype: {kind}")
        cert = residual_template_cert_for_subtype(subtype)
        if cert is not None:
            certs.append(cert)
        subtype_records.append({
            "failure_kind": kind,
            "observed_count": int(subtype["count"]),
            "present": bool(subtype["present"]),
            "representative_rank": cert["rank"] if cert is not None else None,
            "representative_cert": cert["name"] if cert is not None else None,
            "check_theorem": f"{cert['name']}_check" if cert is not None else None,
            "status": (
                "represented_by_checked_template"
                if cert is not None
                else "unobserved_in_representative_scan"
            ),
        })
    required_observed_kinds = ["axisMissesStartInterior", "badFirstHit"]
    subtype_by_kind = {record["failure_kind"]: record for record in subtype_records}
    missing_required = [
        kind for kind in required_observed_kinds
        if not subtype_by_kind.get(kind, {}).get("present", False)
    ]
    if missing_required:
        raise ValueError(
            "residual template representative scan missed required kinds: "
            + ", ".join(missing_required)
        )
    word_ranks = sorted({cert["rank"] for cert in certs})
    payload = {
        "schema_version": 1,
        "mode": "residual-nonidentity-templates",
        "complete": True,
        "template_contract_complete": True,
        "exhaustive_subtype_census_complete": False,
        "profile_limit": effective_limit,
        "source_mode": subtype_payload.get("mode"),
        "residual_singleton_failure": "needsAxisSolveOrSimulation",
        "residual_singleton_cases": expected_residual_cases,
        "expected_residual_singleton_cases": expected_residual_cases,
        "representative_scan": {
            "limit": effective_limit,
            "source_profile_limit": subtype_payload.get("profile_limit"),
            "source_complete": subtype_payload.get("complete") is True,
            "observed_residual_cases": observed_residual_cases,
            "candidate_passed_observed_count": candidate_passed_observed_count,
            "required_observed_failure_kinds": required_observed_kinds,
            "note": (
                "This is a bounded exact representative scan for proof-template "
                "readiness. It is not an exhaustive residual subtype census."
            ),
        },
        "supported_failure_kinds": sorted(RESIDUAL_TEMPLATE_NAMES),
        "subtypes": subtype_records,
        "pair_words": [
            {"rank": rank, "word": pair_word_at_rank(rank)}
            for rank in word_ranks
        ],
        "certs": certs,
        "generated_lean": {
            "residual_templates": path_status(
                NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH
            ),
        },
    }
    return payload


def write_residual_nonidentity_templates_lean(payload: dict) -> None:
    certs = payload["certs"]
    lines: list[str] = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Generated residual non-identity proof-template witnesses for Step 14E.7B3.",
        "",
        "These are representative certificates for the residual non-identity",
        "failure constructors used by the full generated Lean fallback emitter.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.ResidualTemplates",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "",
    ]
    append_word_definitions(lines, payload)
    for cert in certs:
        append_nonid_cert(lines, cert)
    check_names = [append_nonid_check_theorem_full(lines, cert) for cert in certs]
    for cert in certs:
        append_residual_boolean_check_theorems(lines, cert)
    cert_names = ", ".join(cert["name"] for cert in certs)
    lines.extend([
        "def residualTemplateCerts : Array NonIdCert :=",
        f"  #[{cert_names}]",
        "",
        "theorem residualNonIdentityTemplates_check :",
        "    checkNonIdCerts residualTemplateCerts = true := by",
        f"  simp [checkNonIdCerts, residualTemplateCerts, {', '.join(check_names)}]",
        "",
        "end Cuboctahedron.Generated.NonIdentity.ResidualTemplates",
        "",
    ])
    NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH.write_text(
        "\n".join(lines), encoding="utf-8"
    )


def write_residual_nonidentity_templates_json(payload: dict) -> None:
    payload = dict(payload)
    payload["generated_lean"] = {
        "residual_templates": generated_file_record(
            NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH
        )
    }
    RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def lean_compact_residual_failure(failure: dict) -> str:
    kind = failure["kind"]
    if kind == "axisMissesStartInterior":
        return "CompactNonIdResidualFailure.axisMissesStartInterior"
    if kind == "badFirstHit":
        return (
            "CompactNonIdResidualFailure.badFirstHit "
            f"⟨{failure['step']}, by decide⟩"
        )
    if kind == "badHitInterior":
        return (
            "CompactNonIdResidualFailure.badHitInterior "
            f"⟨{failure['impact']}, by decide⟩ "
            f"{lean_face(failure['badFace'])}"
        )
    raise ValueError(f"unsupported compact residual failure: {kind}")


def append_compact_residual_cert(lines: list[str], cert: dict) -> str:
    source_name = cert["name"]
    name = compact_residual_name(cert)
    axis = tuple(Fraction(x) for x in cert["axis"])  # type: ignore[assignment]
    kernel = tuple(
        tuple(Fraction(x) for x in row)
        for row in cert["kernel_cross_factor"]
    )  # type: ignore[assignment]
    p0 = tuple(Fraction(x) for x in cert["p0"])  # type: ignore[assignment]
    lam = Fraction(cert["lambda"])
    solve = tuple(
        tuple(Fraction(x) for x in row)
        for row in cert["solve_left_inverse"]
    )  # type: ignore[assignment]
    lines.extend([
        f"def {name} : CompactNonIdResidualCert where",
        f"  rank := ⟨{cert['rank']}, by decide⟩",
        f"  word := {lean_pair_word_literal(cert['word']).strip()}",
        f"  axis := {lean_vec(axis)}",
        f"  kernel := {{ crossFactor := {lean_mat3(kernel)} }}",
        f"  forcedSeq := {lean_face_vector_literal(cert['forced_seq']).strip()}",
        f"  p0 := {lean_vec(p0)}",
        f"  lambda := {lean_rat(lam)}",
        f"  solve := {{ leftInverse := {lean_mat4(solve)} }}",
        f"  failure := {lean_compact_residual_failure(cert['failure'])}",
        "",
    ])
    return name


def compact_residual_name(cert: dict) -> str:
    source_name = cert["name"]
    return f"compact{source_name[0].upper()}{source_name[1:]}"


def write_compact_residual_certificates_lean(payload: dict) -> None:
    certs = payload["certs"]
    lines: list[str] = [
        "import Cuboctahedron.Search.CertificateFormat",
        "import Cuboctahedron.Generated.NonIdentity.ResidualTemplates",
        "",
        "/-!",
        "Generated compact residual non-identity certificate pilot for Step 14E.7B4.",
        "",
        "This module exercises the compact residual certificate record and",
        "checks reconstruction against the residual proof-template witnesses.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot",
        "",
        "open Cuboctahedron.Generated.NonIdentity.ResidualTemplates",
        "",
        "set_option maxHeartbeats 1600000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
    ]
    compact_names = [append_compact_residual_cert(lines, cert) for cert in certs]
    lines.extend([
        "def compactResidualPilotCerts : Array CompactNonIdResidualCert :=",
        f"  #[{', '.join(compact_names)}]",
        "",
        "theorem compactResidualPilot_check :",
        "    checkCompactNonIdResiduals compactResidualPilotCerts = true := by",
    ])
    for idx, (name, cert) in enumerate(zip(compact_names, certs, strict=True)):
        source_name = cert["name"]
        lines.extend([
            f"  have h{idx}Eq : {name}.toNonIdCert = {source_name} := by",
            "    rfl",
            f"  have h{idx}Rank : checkNonIdCoveredRank {cert['rank']} {name}.toNonIdCert = true := by",
            "    decide",
            f"  have h{idx}Check : checkCompactNonIdResidual {name} = true := by",
            "    unfold checkCompactNonIdResidual",
            f"    change (checkNonIdCoveredRank {cert['rank']} {name}.toNonIdCert &&",
            f"        checkNonIdResidualCertB {name}.toNonIdCert) = true",
            f"    have h{idx}Residual :",
            f"        checkNonIdResidualCertB {name}.toNonIdCert = true := by",
            f"      rw [h{idx}Eq]",
            f"      exact {source_name}_residualBCheck",
            f"    rw [h{idx}Rank, h{idx}Residual]",
            "    rfl",
        ])
    check_names = ", ".join(f"h{idx}Check" for idx in range(len(compact_names)))
    lines.extend([
        "  simp [checkCompactNonIdResiduals, compactResidualPilotCerts,",
        f"    {check_names}]",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot",
        "",
    ])
    NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH.write_text(
        "\n".join(lines), encoding="utf-8"
    )


def build_compact_residual_certificates_payload() -> dict:
    residual_templates = load_json_artifact(
        RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH,
        "residual-nonidentity-templates",
    )
    certs = residual_templates["certs"]
    if not certs:
        raise ValueError("residual template payload has no certs")
    write_compact_residual_certificates_lean({
        "certs": certs,
    })
    compact_lean = NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH.read_text(
        encoding="utf-8"
    )
    compact_lean_bytes = len(compact_lean.encode("utf-8"))
    compact_cert_count = len(certs)
    bytes_per_compact_cert = math.ceil(compact_lean_bytes / compact_cert_count)
    residual_cases = int(residual_templates["residual_singleton_cases"])
    projected_residual_source_bytes = bytes_per_compact_cert * residual_cases
    projected_chunk_count = (
        math.ceil(projected_residual_source_bytes / FULL_EMISSION_TARGET_CHUNK_BYTES)
        if projected_residual_source_bytes
        else 0
    )
    refusal_reasons: list[str] = []
    if projected_residual_source_bytes > FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES:
        refusal_reasons.append("compact_residual_source_exceeds_hard_total_limit")
    if FULL_EMISSION_TARGET_CHUNK_BYTES > FULL_EMISSION_HARD_MAX_FILE_BYTES:
        refusal_reasons.append("chunk_target_exceeds_hard_file_limit")

    compact_records = [
        {
            "name": f"compact{cert['name'][0].upper()}{cert['name'][1:]}",
            "source_cert": cert["name"],
            "rank": cert["rank"],
            "failure_kind": cert["failure"]["kind"],
        }
        for cert in certs
    ]
    return {
        "schema_version": 1,
        "mode": "compact-residual-certificates",
        "complete": True,
        "pilot_complete": True,
        "source_mode": residual_templates["mode"],
        "source": path_status(RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH),
        "supported_failure_kinds": residual_templates["supported_failure_kinds"],
        "present_failure_kinds": sorted(
            {
                cert["failure"]["kind"]
                for cert in certs
            }
        ),
        "residual_singleton_cases": residual_cases,
        "certs": certs,
        "compact_records": compact_records,
        "generated_lean": {
            "compact_pilot": generated_file_record(
                NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH
            ),
        },
        "projection": {
            "format": "compact_nonid_residual_lean_literals",
            "pilot_cert_count": compact_cert_count,
            "pilot_source_bytes": compact_lean_bytes,
            "bytes_per_compact_cert": bytes_per_compact_cert,
            "residual_singleton_cases": residual_cases,
            "projected_residual_source_bytes": projected_residual_source_bytes,
            "projected_residual_source_gib": (
                projected_residual_source_bytes / GIB
            ),
            "target_chunk_bytes": FULL_EMISSION_TARGET_CHUNK_BYTES,
            "projected_chunk_count": projected_chunk_count,
            "hard_max_file_bytes": FULL_EMISSION_HARD_MAX_FILE_BYTES,
            "hard_total_source_bytes": FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES,
            "size_safe": not refusal_reasons,
            "refusal_reasons": refusal_reasons,
            "note": (
                "Projection uses compact residual record literals plus small "
                "reconstruction proofs, not the earlier verbose per-certificate "
                "proof-template emitter."
            ),
        },
    }


def write_compact_residual_certificates_json(payload: dict) -> None:
    COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def encode_zigzag_int(value: int) -> int:
    return 2 * value if value >= 0 else -2 * value - 1


def encode_signed_int(value: int) -> bytes:
    return encode_uvarint(encode_zigzag_int(value))


def encode_rat_value(value: Fraction) -> bytes:
    return encode_signed_int(value.numerator) + encode_uvarint(value.denominator)


def encode_pair_tag(pair_id: str) -> bytes:
    return encode_uvarint(PAIR_IDS.index(pair_id))


def encode_face_tag(face: str) -> bytes:
    return encode_uvarint(FACE_ORDER.index(face))


def encode_vec3_rat(values: Iterable[Fraction]) -> bytes:
    out = bytearray()
    for value in values:
        out.extend(encode_rat_value(value))
    return bytes(out)


def encode_mat3_rat(values: Iterable[Iterable[Fraction]]) -> bytes:
    out = bytearray()
    for row in values:
        for value in row:
            out.extend(encode_rat_value(value))
    return bytes(out)


def encode_mat4_rat(values: Iterable[Iterable[Fraction]]) -> bytes:
    out = bytearray()
    for row in values:
        for value in row:
            out.extend(encode_rat_value(value))
    return bytes(out)


def encode_compact_residual_failure(failure: dict) -> bytes:
    kind = failure["kind"]
    out = bytearray()
    if kind == "axisMissesStartInterior":
        out.extend(encode_uvarint(0))
    elif kind == "badFirstHit":
        out.extend(encode_uvarint(1))
        out.extend(encode_uvarint(int(failure["step"])))
    elif kind == "badHitInterior":
        out.extend(encode_uvarint(2))
        out.extend(encode_uvarint(int(failure["impact"])))
        out.extend(encode_face_tag(failure["badFace"]))
    else:
        raise ValueError(f"unsupported packed residual failure: {kind}")
    return bytes(out)


def encode_compact_residual_cert(cert: dict) -> bytes:
    out = bytearray()
    out.extend(encode_uvarint(int(cert["rank"])))
    for pair_id in cert["word"]:
        out.extend(encode_pair_tag(pair_id))
    out.extend(encode_vec3_rat(Fraction(x) for x in cert["axis"]))
    out.extend(
        encode_mat3_rat(
            tuple(Fraction(x) for x in row)
            for row in cert["kernel_cross_factor"]
        )
    )
    for face in cert["forced_seq"]:
        out.extend(encode_face_tag(face))
    out.extend(encode_vec3_rat(Fraction(x) for x in cert["p0"]))
    out.extend(encode_rat_value(Fraction(cert["lambda"])))
    out.extend(
        encode_mat4_rat(
            tuple(Fraction(x) for x in row)
            for row in cert["solve_left_inverse"]
        )
    )
    out.extend(encode_compact_residual_failure(cert["failure"]))
    return bytes(out)


def encode_translation_constraint_source(source: dict) -> bytes:
    out = bytearray()
    kind = source["kind"]
    if kind == "xpStart":
        out.extend(encode_uvarint(0))
        out.extend(encode_uvarint(int(source["index"])))
    elif kind == "ordering":
        out.extend(encode_uvarint(1))
        out.extend(encode_uvarint(int(source["step"])))
    elif kind == "interior":
        out.extend(encode_uvarint(2))
        out.extend(encode_uvarint(int(source["impact"])))
        out.extend(encode_face_tag(source["face"]))
    else:
        raise ValueError(f"unsupported translation source: {kind}")
    return bytes(out)


def encode_source_farkas_term(term: dict) -> bytes:
    out = bytearray()
    out.extend(encode_translation_constraint_source(term["source"]))
    out.extend(encode_rat_value(Fraction(term["multiplier"])))
    return bytes(out)


def encode_source_farkas_cert(source_terms: list[dict]) -> bytes:
    out = bytearray(encode_uvarint(len(source_terms)))
    for term in source_terms:
        out.extend(encode_source_farkas_term(term))
    return bytes(out)


def encode_compact_translation_farkas_cert(cert: dict) -> bytes:
    out = bytearray()
    out.extend(encode_uvarint(int(cert["rank"])))
    out.extend(encode_uvarint(int(cert["mask"])))
    out.extend(encode_source_farkas_cert(cert["sourceTerms"]))
    return bytes(out)


def packed_residual_blob(*, certs: list[dict], residual_cases: int) -> bytes:
    metadata = bytearray(encode_uvarint(2))
    metadata.extend(encode_uvarint(len(certs)))
    metadata.extend(encode_uvarint(residual_cases))

    records = bytearray(encode_uvarint(len(certs)))
    for cert in certs:
        records.extend(encode_compact_residual_cert(cert))

    sections = [(1, bytes(metadata)), (2, bytes(records))]
    header = bytearray(b"CORC")
    header.append(1)
    header.extend(encode_uvarint(len(sections)))
    for section_id, payload in sections:
        header.extend(encode_uvarint(section_id))
        header.extend(encode_uvarint(len(payload)))
    for _section_id, payload in sections:
        header.extend(payload)
    return bytes(header)


def packed_translation_farkas_blob(
    *, certs: list[dict], shared_farkas_cases: int
) -> bytes:
    metadata = bytearray(encode_uvarint(2))
    metadata.extend(encode_uvarint(len(certs)))
    metadata.extend(encode_uvarint(shared_farkas_cases))

    records = bytearray(encode_uvarint(len(certs)))
    for cert in certs:
        records.extend(encode_compact_translation_farkas_cert(cert))

    sections = [(1, bytes(metadata)), (2, bytes(records))]
    header = bytearray(b"COTF")
    header.append(1)
    header.extend(encode_uvarint(len(sections)))
    for section_id, payload in sections:
        header.extend(encode_uvarint(section_id))
        header.extend(encode_uvarint(len(payload)))
    for _section_id, payload in sections:
        header.extend(payload)
    return bytes(header)


def write_packed_residual_pilot_lean(
    *, certs: list[dict], residual_cases: int, blob: bytes
) -> None:
    if len(certs) != 2:
        raise ValueError("packed residual pilot emitter expects two template certs")
    cert_chunks = [encode_compact_residual_cert(cert) for cert in certs]
    metadata = bytearray(encode_uvarint(2))
    metadata.extend(encode_uvarint(len(certs)))
    metadata.extend(encode_uvarint(residual_cases))
    cert_payload = bytes(encode_uvarint(len(certs))) + b"".join(cert_chunks)
    header_tail = (
        bytes(encode_uvarint(1)) +
        bytes(encode_uvarint(len(metadata))) +
        bytes(encode_uvarint(2)) +
        bytes(encode_uvarint(len(cert_payload)))
    )
    expected_blob = b"CORC" + bytes([1]) + bytes(encode_uvarint(2)) + \
        header_tail + bytes(metadata) + cert_payload
    if expected_blob != blob:
        raise ValueError("packed residual proof bytes do not match blob")

    relative_parts = ['".."', '".."', '".."', '".."', '"certs"',
        f'"{PACKED_RESIDUAL_PILOT_BLOB_PATH.name}"']
    include_path = "/".join(relative_parts)
    compact_names = [compact_residual_name(cert) for cert in certs]

    lines = [
        "import Cuboctahedron.Search.CertificateChecker",
        "import Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot",
        "",
        "/-!",
        "Generated packed residual non-identity certificate pilot for Step 14E.7B5.",
        "",
        "The smoke blob keeps a tiny decoder sanity check in-tree.  The full pilot",
        "theorem checks the generated packed blob itself through the same computable",
        "residual checker used by future packed chunks.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot",
        "",
        "open Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedSimpArgs false",
        "",
        f"def packedResidualPilotBlob : String := include_str {include_path}",
        "",
        "def packedResidualPilotDecoded :",
        "    Except DecodeError (Array CompactNonIdResidualCert) :=",
        "  decodePackedResidualCerts packedResidualPilotBlob",
        "",
        "def packedResidualSmokeBlob : String :=",
        "  \"Q09SQwECAQMCAQIAAAA=\"",
        "",
        "def packedResidualSmokeBytes : List Nat :=",
        "  [67, 79, 82, 67, 1, 2, 1, 3, 2, 1, 2, 0, 0, 0]",
        "",
        "theorem packedResidualSmokeBase64_eq :",
        "    decodeBase64 packedResidualSmokeBlob = .ok packedResidualSmokeBytes := by",
        "  decide",
        "",
        "theorem packedResidualSmokeDecode_eq :",
        "    decodePackedResidualCerts packedResidualSmokeBlob =",
        "      .ok (#[] : Array CompactNonIdResidualCert) := by",
        "  decide",
        "",
        "def packedResidualPilotMetadataBytes : List Nat :=",
        *lean_nat_list_literal(list(metadata)),
        "",
        "def packedResidualPilotHeaderBytes : List Nat :=",
        *lean_nat_list_literal(list(header_tail)),
        "",
        "def packedResidualPilotCert0Bytes : List Nat :=",
        *lean_nat_list_literal(list(cert_chunks[0])),
        "",
        "def packedResidualPilotCert1Bytes : List Nat :=",
        *lean_nat_list_literal(list(cert_chunks[1])),
        "",
        "def packedResidualPilotCertBytes : List Nat :=",
        "  2 :: (packedResidualPilotCert0Bytes ++",
        "    packedResidualPilotCert1Bytes)",
        "",
        "def packedResidualPilotBytes : List Nat :=",
        "  [67, 79, 82, 67, 1, 2] ++ packedResidualPilotHeaderBytes ++",
        "    packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes",
        "",
        "def packedResidualPilotHeaders : List SectionHeader :=",
        f"  [{{ id := 1, length := {len(metadata)} }},",
        f"    {{ id := 2, length := {len(cert_payload)} }}]",
        "",
        "def packedResidualPilotSections : List (Nat × List Nat) :=",
        "  [(1, packedResidualPilotMetadataBytes),",
        "    (2, packedResidualPilotCertBytes)]",
        "",
        "theorem packedResidualPilotBase64_eq :",
        "    decodeBase64 packedResidualPilotBlob = .ok packedResidualPilotBytes := by",
        "  unfold packedResidualPilotBlob packedResidualPilotBytes",
        "  unfold packedResidualPilotHeaderBytes packedResidualPilotMetadataBytes",
        "  unfold packedResidualPilotCertBytes",
        "  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes",
        "  decide",
        "",
        "theorem packedResidualPilotCert0_decode :",
        "    readCompactResidualCert",
        "      (packedResidualPilotCert0Bytes ++ packedResidualPilotCert1Bytes) =",
        "      .ok",
        f"        ({compact_names[0]},",
        "          packedResidualPilotCert1Bytes) := by",
        "  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes",
        f"  unfold {compact_names[0]}",
        "  norm_num [numPairWords, readCompactResidualCert,",
        "    readCompactResidualFailure, readPairWord, readFaceVector14, readVec3Rat,",
        "    readMat3Rat, readMat4Rat, readRatValue, readSignedInt, readPairId,",
        "    readFace, readStep14, readImpact15, readVarint, readVarintFuel,",
        "    bindExcept, parsePairIdTag, parseFaceTag, decodeZigZag]",
        "  repeat' constructor",
        "  all_goals",
        "    apply Rat.ext <;>",
        "      simp [Rat.normalize_eq, Int.negSucc_eq, Int.sign] <;>",
        "      norm_num",
        "",
        "theorem packedResidualPilotCert1_decode :",
        "    readCompactResidualCert packedResidualPilotCert1Bytes =",
        f"      .ok ({compact_names[1]}, []) := by",
        f"  unfold packedResidualPilotCert1Bytes {compact_names[1]}",
        "  norm_num [numPairWords, readCompactResidualCert,",
        "    readCompactResidualFailure, readPairWord, readFaceVector14, readVec3Rat,",
        "    readMat3Rat, readMat4Rat, readRatValue, readSignedInt, readPairId,",
        "    readFace, readStep14, readImpact15, readVarint, readVarintFuel,",
        "    bindExcept, parsePairIdTag, parseFaceTag, decodeZigZag]",
        "  repeat' constructor",
        "  all_goals",
        "    apply Rat.ext <;>",
        "      simp [Rat.normalize_eq, Int.negSucc_eq, Int.sign] <;>",
        "      norm_num",
        "",
        "theorem packedResidualPilotCerts_read :",
        "    readCompactResidualCerts 2",
        "      (packedResidualPilotCert0Bytes ++ packedResidualPilotCert1Bytes) =",
        "      .ok",
        f"        ([{compact_names[0]},",
        f"          {compact_names[1]}], []) := by",
        "  simp [readCompactResidualCerts, packedResidualPilotCert0_decode,",
        "    packedResidualPilotCert1_decode, bindExcept]",
        "",
        "theorem packedResidualPilotCertSection_decode :",
        "    parseCompactResidualCertsSection packedResidualPilotCertBytes =",
        "      .ok compactResidualPilotCerts := by",
        "  unfold parseCompactResidualCertsSection packedResidualPilotCertBytes",
        "  unfold compactResidualPilotCerts",
        "  simp [readVarint, readVarintFuel, bindExcept]",
        "  rw [packedResidualPilotCerts_read]",
        "  rfl",
        "",
        "theorem packedResidualPilotHeaders_read :",
        "    readSectionHeaders 2",
        "      (packedResidualPilotHeaderBytes ++",
        "        (packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes)) =",
        "      .ok",
        "        (packedResidualPilotHeaders,",
        "          packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes) := by",
        "  unfold packedResidualPilotHeaders packedResidualPilotHeaderBytes",
        "  unfold packedResidualPilotMetadataBytes packedResidualPilotCertBytes",
        "  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes",
        "  norm_num [readSectionHeaders, readVarint, readVarintFuel, bindExcept]",
        "",
        "theorem packedResidualPilotPayloads_read :",
        "    readSectionPayloads packedResidualPilotHeaders",
        "      (packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes) =",
        "      .ok packedResidualPilotSections := by",
        "  unfold packedResidualPilotHeaders packedResidualPilotSections",
        "  unfold packedResidualPilotMetadataBytes packedResidualPilotCertBytes",
        "  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes",
        "  norm_num [readSectionPayloads, takeBytes, bindExcept]",
        "",
        "theorem packedResidualPilotBytes_parse :",
        "    parsePackedResidualBytes packedResidualPilotBytes =",
        "      .ok compactResidualPilotCerts := by",
        "  unfold parsePackedResidualBytes packedResidualPilotBytes",
        "  simp [readVarint, readVarintFuel, bindExcept]",
        "  rw [packedResidualPilotHeaders_read]",
        "  simp [sectionIdsUnique, bindExcept]",
        "  rw [packedResidualPilotPayloads_read]",
        "  simp [packedResidualPilotHeaders, packedResidualPilotSections,",
        "    packedResidualPilotMetadataBytes, lookupSection, parseNatArraySection,",
        "    readVarint, readVarintFuel, readNatValues, bindExcept,",
        "    packedResidualPilotCertSection_decode, compactResidualPilotCerts]",
        "",
        "theorem packedResidualPilot_decode :",
        "    decodePackedResidualCerts packedResidualPilotBlob =",
        "      .ok compactResidualPilotCerts := by",
        "  unfold decodePackedResidualCerts",
        "  rw [packedResidualPilotBase64_eq]",
        "  simp [bindExcept, packedResidualPilotBytes_parse]",
        "",
        "def packedResidualPilotDecodedCheck : Bool :=",
        "  match decodePackedResidualCerts packedResidualPilotBlob with",
        "  | .ok certs => checkCompactNonIdResiduals certs",
        "  | .error _ => false",
        "",
        "theorem packedResidualPilotDecoded_checked :",
        "    packedResidualPilotDecodedCheck = true := by",
        "  unfold packedResidualPilotDecodedCheck",
        "  rw [packedResidualPilot_decode]",
        "  exact compactResidualPilot_check",
        "",
        "theorem packedResidualPilot_check :",
        "    checkPackedResidualCerts packedResidualPilotBlob = true := by",
        "  unfold checkPackedResidualCerts",
        "  rw [packedResidualPilot_decode]",
        "  exact compactResidualPilot_check",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot",
        "",
    ]
    NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH.write_text(
        "\n".join(lines), encoding="utf-8"
    )


def build_packed_residual_certificates_payload() -> dict:
    compact_residual = load_json_artifact(
        COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH,
        "compact-residual-certificates",
    )
    certs = compact_residual["certs"]
    residual_cases = int(compact_residual["residual_singleton_cases"])
    blob = packed_residual_blob(certs=certs, residual_cases=residual_cases)
    blob_text = compact_blob_text(blob)
    PACKED_RESIDUAL_PILOT_BLOB_PATH.parent.mkdir(parents=True, exist_ok=True)
    PACKED_RESIDUAL_PILOT_BLOB_PATH.write_text(blob_text, encoding="ascii")
    write_packed_residual_pilot_lean(
        certs=certs, residual_cases=residual_cases, blob=blob
    )

    cert_count = len(certs)
    blob_text_bytes = len(blob_text.encode("ascii"))
    raw_bytes = len(blob)
    bytes_per_packed_cert = math.ceil(blob_text_bytes / cert_count)
    projected_blob_text_bytes = bytes_per_packed_cert * residual_cases
    projected_chunk_count = max(
        1,
        math.ceil(projected_blob_text_bytes / FULL_EMISSION_TARGET_CHUNK_BYTES),
    )
    wrapper_bytes_per_chunk = 4096
    projected_residual_source_bytes = (
        projected_blob_text_bytes +
        projected_chunk_count * wrapper_bytes_per_chunk
    )
    refusal_reasons: list[str] = []
    if projected_residual_source_bytes > FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES:
        refusal_reasons.append("packed_residual_source_exceeds_hard_total_limit")
    if FULL_EMISSION_TARGET_CHUNK_BYTES > FULL_EMISSION_HARD_MAX_FILE_BYTES:
        refusal_reasons.append("chunk_target_exceeds_hard_file_limit")

    compact_projection = compact_residual["projection"]
    packed_pilot_record = generated_file_record(
        NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH
    )
    packed_pilot_record.update({
        "proof_scope": "full_packed_pilot_blob",
        "full_blob_decoded_by_independent_checker": True,
        "full_blob_lean_check": True,
    })
    return {
        "schema_version": 1,
        "mode": "packed-residual-certificates",
        "complete": True,
        "pilot_complete": True,
        "source_mode": compact_residual["mode"],
        "source": path_status(COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH),
        "supported_failure_kinds": compact_residual["supported_failure_kinds"],
        "present_failure_kinds": compact_residual["present_failure_kinds"],
        "residual_singleton_cases": residual_cases,
        "certs": certs,
        "blob": {
            "path": str(PACKED_RESIDUAL_PILOT_BLOB_PATH.relative_to(REPO_ROOT)),
            "bytes": blob_text_bytes,
            "raw_bytes": raw_bytes,
            "sha256": compact_blob_sha256(blob),
            "encoding": "base64",
            "magic": "CORC",
            "schema_version": 1,
        },
        "generated_lean": {
            "packed_pilot": packed_pilot_record,
        },
        "projection": {
            "format": "packed_nonid_residual_base64",
            "pilot_cert_count": cert_count,
            "pilot_blob_text_bytes": blob_text_bytes,
            "pilot_raw_bytes": raw_bytes,
            "bytes_per_packed_cert": bytes_per_packed_cert,
            "residual_singleton_cases": residual_cases,
            "projected_blob_text_bytes": projected_blob_text_bytes,
            "wrapper_bytes_per_chunk": wrapper_bytes_per_chunk,
            "target_chunk_bytes": FULL_EMISSION_TARGET_CHUNK_BYTES,
            "projected_chunk_count": projected_chunk_count,
            "projected_residual_source_bytes": projected_residual_source_bytes,
            "projected_residual_source_gib": (
                projected_residual_source_bytes / GIB
            ),
            "compact_literal_projected_residual_source_bytes":
                compact_projection["projected_residual_source_bytes"],
            "compact_literal_projected_residual_source_gib":
                compact_projection["projected_residual_source_gib"],
            "hard_max_file_bytes": FULL_EMISSION_HARD_MAX_FILE_BYTES,
            "hard_total_source_bytes": FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES,
            "size_safe": not refusal_reasons,
            "refusal_reasons": refusal_reasons,
            "note": (
                "Projection stores residual singleton certificates in base64 "
                "packed blobs decoded by Lean before running the compact "
                "residual checker."
            ),
        },
    }


def write_packed_residual_certificates_json(payload: dict) -> None:
    PACKED_RESIDUAL_CERTIFICATES_JSON_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    PACKED_RESIDUAL_CERTIFICATES_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def full_nonidentity_residual_blob_path(index: int) -> Path:
    return FULL_NONIDENTITY_RESIDUAL_BLOB_DIR / f"Chunk{index:04d}.b64"


def full_nonidentity_residual_lean_path(index: int) -> Path:
    return NONIDENTITY_RESIDUAL_DIR / f"Chunk{index:04d}.lean"


def full_nonidentity_residual_module_name(index: int) -> str:
    return (
        "Cuboctahedron.Generated.NonIdentity.Residual."
        f"Chunk{index:04d}"
    )


def include_path_to_generated_blob(blob_path: Path, lean_file_parent: Path) -> str:
    relative = blob_path.relative_to(REPO_ROOT)
    ups = [".."] * len(lean_file_parent.parts)
    parts = ups + list(relative.parts)
    return "/".join(f'"{part}"' for part in parts)


def include_path_to_certs_blob(blob_path: Path) -> str:
    return include_path_to_generated_blob(
        blob_path, NONIDENTITY_RESIDUAL_DIR.relative_to(REPO_ROOT)
    )


def write_full_packed_residual_chunk_lean(
    *, index: int, blob_path: Path
) -> Path:
    lean_path = full_nonidentity_residual_lean_path(index)
    include_path = include_path_to_certs_blob(blob_path)
    lines = [
        "import Cuboctahedron.Search.CertificateChecker",
        "",
        "/-!",
        "Generated packed residual non-identity certificate chunk.",
        "",
        "The blob is decoded by Lean and checked by `checkPackedResidualCerts`.",
        "-/",
        "",
        f"namespace Cuboctahedron.Generated.NonIdentity.Residual.Chunk{index:04d}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "",
        f"def chunkBlob : String := include_str {include_path}",
        "",
        "noncomputable def decodedChunkCerts : Array CompactNonIdResidualCert :=",
        "  decodedPackedResidualCerts chunkBlob",
        "",
        "theorem chunk_check :",
        "    checkPackedResidualCerts chunkBlob = true := by",
        "  unfold checkPackedResidualCerts",
        "  decide",
        "",
        "theorem chunk_sound :",
        "    forall cert,",
        "      cert ∈ decodedChunkCerts.toList ->",
        "        exists ordinary : NonIdCert,",
        "          ordinary.word = unrankPairWord cert.rank /\\",
        "            checkNonIdCert ordinary = true :=",
        "  checkPackedResidualCerts_sound chunkBlob chunk_check",
        "",
        f"end Cuboctahedron.Generated.NonIdentity.Residual.Chunk{index:04d}",
        "",
    ]
    lean_path.parent.mkdir(parents=True, exist_ok=True)
    lean_path.write_text("\n".join(lines), encoding="utf-8")
    return lean_path


def write_full_nonidentity_residual_all_lean(chunks: list[dict]) -> None:
    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.FamilyPartition",
    ]
    for chunk in chunks:
        lines.append(
            "import " + full_nonidentity_residual_module_name(chunk["index"])
        )
    lines.extend([
        "",
        "/-!",
        "Aggregate imports for generated packed residual non-identity chunks.",
        "",
        "The per-chunk modules contain the computational blob checks. This",
        "aggregate keeps Step 14E.7B evidence importable without treating JSON",
        "manifest counts as proof.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual",
        "",
        f"def generatedPackedResidualChunkCount : Nat := {len(chunks)}",
        f"def generatedPackedResidualCertCount : Nat := {sum(int(chunk['cert_count']) for chunk in chunks)}",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Residual",
        "",
    ])
    NONIDENTITY_RESIDUAL_ALL_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_RESIDUAL_ALL_PATH.write_text("\n".join(lines), encoding="utf-8")


def full_translation_farkas_blob_path(index: int) -> Path:
    return FULL_TRANSLATION_FARKAS_BLOB_DIR / f"Chunk{index:04d}.b64"


def full_translation_farkas_lean_path(index: int) -> Path:
    return TRANSLATION_FARKAS_DIR / f"Chunk{index:04d}.lean"


def full_translation_farkas_module_name(index: int) -> str:
    return (
        "Cuboctahedron.Generated.Translation.Farkas."
        f"Chunk{index:04d}"
    )


def include_path_to_translation_farkas_blob(blob_path: Path) -> str:
    return include_path_to_generated_blob(
        blob_path, TRANSLATION_FARKAS_DIR.relative_to(REPO_ROOT)
    )


def lean_nat_list_literal_bytes(data: bytes, *, per_line: int = 24) -> list[str]:
    if not data:
        return ["  []"]
    lines = ["  ["]
    for start in range(0, len(data), per_line):
        chunk = data[start:start + per_line]
        suffix = "," if start + per_line < len(data) else ""
        lines.append("    " + ", ".join(str(byte) for byte in chunk) + suffix)
    lines.append("  ]")
    return lines


def packed_blob_raw_bytes(blob_path: Path) -> bytes:
    return base64.b64decode(blob_path.read_text(encoding="ascii"), validate=True)


def write_full_packed_translation_farkas_chunk_lean(
    *, index: int, blob_path: Path
) -> Path:
    lean_path = full_translation_farkas_lean_path(index)
    include_path = include_path_to_translation_farkas_blob(blob_path)
    lines = [
        "import Cuboctahedron.Search.CertificateChecker",
        "",
        "/-!",
        "Generated packed translation Farkas certificate chunk.",
        "",
        "The blob is decoded by Lean and checked by",
        "`checkPackedTranslationFarkasCerts`.",
        "-/",
        "",
        f"namespace Cuboctahedron.Generated.Translation.Farkas.Chunk{index:04d}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "",
        f"def chunkBlob : String := include_str {include_path}",
        "",
        "noncomputable def decodedChunkCerts : Array CompactTranslationFarkasCert :=",
        "  decodedPackedTranslationFarkasCerts chunkBlob",
        "",
        "theorem chunk_check :",
        "    checkPackedTranslationFarkasCerts chunkBlob = true := by",
        "  unfold checkPackedTranslationFarkasCerts",
        "  decide",
        "",
        "theorem chunk_sound :",
        "    forall cert,",
        "      cert ∈ decodedChunkCerts.toList ->",
        "        ¬ exists seq,",
        "          SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\\",
        "            totalLinear seq = (matId : Mat3 Rat) /\\",
        "              UnfoldedFeasible seq :=",
        "  checkPackedTranslationFarkasCerts_sound chunkBlob chunk_check",
        "",
        f"end Cuboctahedron.Generated.Translation.Farkas.Chunk{index:04d}",
        "",
    ]
    lean_path.parent.mkdir(parents=True, exist_ok=True)
    lean_path.write_text("\n".join(lines), encoding="utf-8")
    return lean_path


def write_full_translation_farkas_all_lean(chunks: list[dict]) -> None:
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.FamilyPartition",
    ]
    for chunk in chunks:
        lines.append("import " + full_translation_farkas_module_name(chunk["index"]))
    lines.extend([
        "",
        "/-!",
        "Aggregate imports for generated packed translation Farkas chunks.",
        "",
        "Per-chunk modules decode packed source-Farkas blobs and run the",
        "ordinary `TranslationCert` checker reconstructed from `(rank, mask)`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.Farkas",
        "",
        "def translationFarkasBackendImplemented : Bool := true",
        f"def generatedPackedTranslationFarkasChunkCount : Nat := {len(chunks)}",
        f"def generatedPackedTranslationFarkasCertCount : Nat := {sum(int(chunk['cert_count']) for chunk in chunks)}",
        "",
        "end Cuboctahedron.Generated.Translation.Farkas",
        "",
    ])
    TRANSLATION_FARKAS_ALL_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_FARKAS_ALL_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_translation_farkas_all_placeholder() -> None:
    lines = [
        "import Cuboctahedron.Generated.Translation.FamilyPartition",
        "",
        "/-!",
        "Placeholder aggregate for full generated translation Farkas families.",
        "",
        "Step 14E.7B must replace this with concrete checked family evidence",
        "before the exhaustive manifest can be marked complete.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.Farkas",
        "",
        "def translationFarkasBackendImplemented : Bool := false",
        "",
        "end Cuboctahedron.Generated.Translation.Farkas",
        "",
    ]
    TRANSLATION_FARKAS_ALL_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_FARKAS_ALL_PATH.write_text("\n".join(lines), encoding="utf-8")


def iter_nonidentity_residual_cert_payloads() -> Iterable[dict]:
    for rank in range(EXPECTED_PAIR_WORDS):
        word = pair_word_at_rank(rank)
        if total_linear(word) == mat_id():
            continue
        cert = build_nonid_cert_for_rank(rank, f"residualNonId{rank:09d}")
        if cert.failure["kind"] in {
            "axisMissesStartInterior",
            "badFirstHit",
            "badHitInterior",
        }:
            yield cert.to_json()


def translation_needs_farkas(word: list[str], mask: int) -> tuple[Vec, list[str]] | None:
    b, seq = translation_vector(word, mask)
    if b == vec((0, 0, 0)):
        return None
    try:
        first_bad_translation_impact(seq, b)
        return None
    except ValueError:
        return b, seq


def source_terms_for_translation_farkas(seq: list[str], b: Vec) -> list[dict]:
    constraints = translation_constraints_py(seq, b)
    terms = find_sparse_farkas(constraints)
    sources = translation_constraint_sources_py(seq)
    return [
        {
            "source": sources[index],
            "multiplier": rat_to_json(multiplier),
        }
        for index, multiplier in terms
    ]


def iter_translation_farkas_cert_payloads() -> Iterable[dict]:
    for rank in range(EXPECTED_PAIR_WORDS):
        word = pair_word_at_rank(rank)
        if total_linear(word) != mat_id():
            continue
        for mask in range(64):
            needs = translation_needs_farkas(word, mask)
            if needs is None:
                continue
            b, seq = needs
            yield {
                "rank": rank,
                "mask": mask,
                "sourceTerms": source_terms_for_translation_farkas(seq, b),
            }


def first_packed_nonidentity_residual_cert() -> dict:
    """Return one already-generated packed residual cert, or compute one."""
    path = full_nonidentity_residual_blob_path(0)
    if path.exists():
        import check_certificates_independently as checker

        decoded = checker.decode_packed_residual_blob_text(
            path.read_text(encoding="ascii")
        )
        if decoded["certs"]:
            cert = dict(decoded["certs"][0])
            cert["name"] = "proofCarryingNonIdResidual000"
            return cert
    cert = next(iter_nonidentity_residual_cert_payloads())
    cert = dict(cert)
    cert["name"] = "proofCarryingNonIdResidual000"
    return cert


def first_packed_translation_farkas_cert() -> dict:
    """Return one already-generated packed translation cert, or compute one."""
    path = full_translation_farkas_blob_path(0)
    compact: dict | None = None
    if path.exists():
        import check_certificates_independently as checker

        decoded = checker.decode_packed_translation_farkas_blob_text(
            path.read_text(encoding="ascii")
        )
        if decoded["certs"]:
            compact = min(
                decoded["certs"],
                key=lambda cert: len(cert.get("sourceTerms", [])),
            )
    if compact is None:
        compact = next(iter_translation_farkas_cert_payloads())
    rank = int(compact["rank"])
    mask = int(compact["mask"])
    word = pair_word_at_rank(rank)
    b, seq = translation_vector(word, mask)
    return {
        "name": "proofCarryingTranslationFarkas000",
        "rank": rank,
        "word": word,
        "mask": mask,
        "seq": seq,
        "b": vec_to_json(b),
        "failure": {
            "kind": "farkas",
            "sourceTerms": compact["sourceTerms"],
        },
    }


def write_proof_carrying_nonidentity_smoke_lean(cert: dict) -> Path:
    rank = int(cert["rank"])
    name = cert["name"]
    covered = f"{name}_coveredRank"
    word_eq = f"{name}_word_eq"
    evidence = f"{name}Evidence"
    check_name = f"{name}_check"
    exists_name = f"{name}_exists"
    no_feasible_name = f"{name}_no_feasible"
    lines: list[str] = [
        "import Cuboctahedron.Search.CertificateFormat",
        "",
        "/-!",
        "Generated proof-carrying residual non-identity smoke certificate.",
        "",
        "This module exercises the structured-literal backend shape without",
        "asking Lean to reduce a packed parser or a whole-corpus checker.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke",
        "",
        "set_option maxHeartbeats 2400000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "",
    ]
    append_word_definitions(lines, {
        "pair_words": [{"rank": rank, "word": cert["word"]}]
    })
    append_nonid_cert(lines, cert)
    append_nonid_check_theorem_full(lines, cert)
    lines.extend([
        f"theorem {covered} :",
        f"    checkNonIdCoveredRank {rank} {name} = true := by",
        "  decide",
        "",
        f"theorem {word_eq} :",
        f"    {name}.word =",
        f"      unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "  exact checkNonIdCoveredRank_word",
        f"    (r := (⟨{rank}, by decide⟩ : Fin numPairWords))",
        f"    (cert := {name})",
        f"    {covered}",
        "",
        f"def {evidence} : Cuboctahedron.CheckedNonIdRank where",
        f"  rank := ⟨{rank}, by decide⟩",
        f"  cert := {name}",
        f"  word_eq := {word_eq}",
        f"  check := {check_name}",
        "",
        f"theorem {exists_name} :",
        "    exists ordinary : NonIdCert,",
        "      ordinary.word =",
        f"          unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords) /\\",
        "        checkNonIdCert ordinary = true := by",
        f"  exact Cuboctahedron.CheckedNonIdRank.exists_cert {evidence}",
        "",
        f"theorem {no_feasible_name} :",
        "    ¬ exists seq,",
        f"      SeqRealizesPairWord (unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords)) seq /\\",
        "        StartsXp seq /\\",
        "        totalLinear seq ≠ (matId : Mat3 Rat) /\\",
        "        UnfoldedFeasible seq := by",
        f"  exact Cuboctahedron.CheckedNonIdRank.no_feasible {evidence}",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke",
        "",
    ])
    NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH.write_text(
        "\n".join(lines), encoding="utf-8"
    )
    return NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH


def write_proof_carrying_translation_smoke_lean(cert: dict) -> Path:
    rank = int(cert["rank"])
    mask = int(cert["mask"])
    name = cert["name"]
    covered = f"{name}_coveredCase"
    word_eq = f"{name}_word_eq"
    mask_eq = f"{name}_mask_eq"
    evidence = f"{name}Evidence"
    check_name = f"{name}_check"
    exists_name = f"{name}_exists"
    no_feasible_name = f"{name}_no_feasible"
    lines: list[str] = [
        "import Cuboctahedron.Search.CertificateFormat",
        "",
        "/-!",
        "Generated proof-carrying translation source-Farkas smoke certificate.",
        "",
        "This module emits an ordinary `TranslationCert` plus small local theorem",
        "facts that can be assembled without a whole-corpus Boolean reduction.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke",
        "",
        "set_option maxHeartbeats 2400000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    append_word_definitions(lines, {
        "pair_words": [{"rank": rank, "word": cert["word"]}]
    })
    append_translation_cert(lines, cert)
    append_translation_check_theorem(lines, cert)
    lines.extend([
        f"theorem {covered} :",
        "    checkTranslationCoveredCase",
        f"      {{ pairRank := {rank}, signMask := {mask} }}",
        f"      {name} = true := by",
        "  decide",
        "",
        f"theorem {word_eq} :",
        f"    {name}.word =",
        f"      unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "  exact (checkTranslationCoveredCase_word_mask",
        f"    (r := (⟨{rank}, by decide⟩ : Fin numPairWords))",
        f"    (mask := (⟨{mask}, by decide⟩ : SignMask))",
        f"    (cert := {name})",
        f"    {covered}).1",
        "",
        f"theorem {mask_eq} :",
        f"    {name}.signMask = (⟨{mask}, by decide⟩ : SignMask) := by",
        "  exact (checkTranslationCoveredCase_word_mask",
        f"    (r := (⟨{rank}, by decide⟩ : Fin numPairWords))",
        f"    (mask := (⟨{mask}, by decide⟩ : SignMask))",
        f"    (cert := {name})",
        f"    {covered}).2",
        "",
        f"def {evidence} : Cuboctahedron.CheckedTranslationCase where",
        f"  rank := ⟨{rank}, by decide⟩",
        f"  mask := ⟨{mask}, by decide⟩",
        f"  cert := {name}",
        f"  word_eq := {word_eq}",
        f"  mask_eq := {mask_eq}",
        f"  check := {check_name}",
        "",
        f"theorem {exists_name} :",
        "    exists ordinary : TranslationCert,",
        "      ordinary.word =",
        f"          unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords) /\\",
        f"        ordinary.signMask = (⟨{mask}, by decide⟩ : SignMask) /\\",
        "          checkTranslationCert ordinary = true := by",
        f"  exact Cuboctahedron.CheckedTranslationCase.exists_cert {evidence}",
        "",
        f"theorem {no_feasible_name} :",
        "    ¬ exists seq,",
        f"      SeqRealizesTranslationChoice (unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords))",
        f"          (⟨{mask}, by decide⟩ : SignMask) seq /\\",
        "        totalLinear seq = (matId : Mat3 Rat) /\\",
        "          UnfoldedFeasible seq := by",
        f"  exact Cuboctahedron.CheckedTranslationCase.no_feasible {evidence}",
        "",
        "end Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke",
        "",
    ])
    TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH.write_text(
        "\n".join(lines), encoding="utf-8"
    )
    return TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH


def build_proof_carrying_structured_literals_payload() -> dict:
    nonid_cert = first_packed_nonidentity_residual_cert()
    translation_cert = first_packed_translation_farkas_cert()
    nonid_path = write_proof_carrying_nonidentity_smoke_lean(nonid_cert)
    translation_path = write_proof_carrying_translation_smoke_lean(
        translation_cert
    )

    prefix_parametric = None
    if PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.exists():
        prefix_parametric = load_json_artifact(
            PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
            "prefix-parametric-compression",
        )
    residual_cases = 0
    translation_cases = 0
    if prefix_parametric is not None:
        residual_cases = int(
            prefix_parametric["nonidentity"].get("residual_singleton_cases", 0)
        )
        translation_cases = int(
            prefix_parametric["translation"].get("shared_farkas_cases", 0)
        )
    nonid_bytes = nonid_path.stat().st_size
    translation_bytes = translation_path.stat().st_size
    projected_nonid = nonid_bytes * residual_cases
    projected_translation = translation_bytes * translation_cases
    projected_total = projected_nonid + projected_translation
    refusal_reasons: list[str] = []
    if projected_total > FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES:
        refusal_reasons.append(
            "proof_carrying_projection_exceeds_hard_total_limit"
        )
    return {
        "schema_version": 1,
        "mode": "proof-carrying-structured-literals",
        "complete": True,
        "smoke_complete": True,
        "full_backend_complete": False,
        "selected_backend": "proof_carrying_structured_literals",
        "nonidentity": {
            "smoke_cert": {
                "name": nonid_cert["name"],
                "rank": int(nonid_cert["rank"]),
                "failure_kind": nonid_cert["failure"]["kind"],
            },
            "generated_lean": generated_file_record(nonid_path),
            "check_theorem": f"{nonid_cert['name']}_check",
            "covered_theorem": f"{nonid_cert['name']}_coveredRank",
            "evidence_def": f"{nonid_cert['name']}Evidence",
        },
        "translation": {
            "smoke_cert": {
                "name": translation_cert["name"],
                "rank": int(translation_cert["rank"]),
                "mask": int(translation_cert["mask"]),
                "source_term_count":
                    len(translation_cert["failure"]["sourceTerms"]),
                "failure_kind": translation_cert["failure"]["kind"],
            },
            "generated_lean": generated_file_record(translation_path),
            "check_theorem": f"{translation_cert['name']}_check",
            "covered_theorem": f"{translation_cert['name']}_coveredCase",
            "evidence_def": f"{translation_cert['name']}Evidence",
        },
        "projection": {
            "format": "proof_carrying_structured_literals",
            "nonidentity_smoke_source_bytes": nonid_bytes,
            "translation_smoke_source_bytes": translation_bytes,
            "residual_singleton_cases": residual_cases,
            "translation_shared_farkas_cases": translation_cases,
            "projected_nonidentity_source_bytes": projected_nonid,
            "projected_translation_source_bytes": projected_translation,
            "projected_total_source_bytes": projected_total,
            "projected_total_source_gib": projected_total / GIB,
            "hard_total_source_bytes": FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES,
            "size_safe": not refusal_reasons,
            "refusal_reasons": refusal_reasons,
            "note": (
                "This is a conservative one-certificate smoke projection. "
                "The full backend must add proof sharing or family grouping "
                "before this format can replace the current large-data gate."
            ),
        },
    }


def write_proof_carrying_structured_literals_json(payload: dict) -> None:
    PROOF_CARRYING_STRUCTURED_LITERALS_JSON_PATH.parent.mkdir(
        parents=True, exist_ok=True
    )
    PROOF_CARRYING_STRUCTURED_LITERALS_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def emit_full_nonidentity_packed_residual_chunks(
    *, residual_cases: int
) -> dict:
    FULL_NONIDENTITY_RESIDUAL_BLOB_DIR.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_RESIDUAL_DIR.mkdir(parents=True, exist_ok=True)
    chunks: list[dict] = []
    current: list[dict] = []
    current_encoded_bytes = 0
    total_certs = 0

    def flush() -> None:
        nonlocal current, current_encoded_bytes, total_certs
        if not current:
            return
        index = len(chunks)
        blob = packed_residual_blob(certs=current, residual_cases=residual_cases)
        blob_text = compact_blob_text(blob)
        if len(blob_text.encode("ascii")) > FULL_EMISSION_HARD_MAX_FILE_BYTES:
            raise RuntimeError("packed residual chunk exceeds hard file limit")
        blob_path = full_nonidentity_residual_blob_path(index)
        blob_path.write_text(blob_text, encoding="ascii")
        lean_path = write_full_packed_residual_chunk_lean(
            index=index, blob_path=blob_path
        )
        first_rank = min(int(cert["rank"]) for cert in current)
        last_rank = max(int(cert["rank"]) for cert in current)
        chunk_record = {
            "index": index,
            "cert_count": len(current),
            "first_rank": first_rank,
            "last_rank": last_rank,
            "blob": generated_file_record(blob_path),
            "lean": generated_file_record(lean_path),
            "raw_bytes": len(blob),
            "encoding": "base64",
            "magic": "CORC",
        }
        chunks.append(chunk_record)
        total_certs += len(current)
        current = []
        current_encoded_bytes = 0

    for cert in iter_nonidentity_residual_cert_payloads():
        cert_bytes = encode_compact_residual_cert(cert)
        projected = current_encoded_bytes + len(cert_bytes)
        if current and projected * 4 // 3 >= FULL_EMISSION_TARGET_CHUNK_BYTES:
            flush()
        current.append(cert)
        current_encoded_bytes += len(cert_bytes)
    flush()
    if total_certs != residual_cases:
        raise RuntimeError(
            "nonidentity residual emission count mismatch: "
            f"{total_certs} != {residual_cases}"
        )
    write_full_nonidentity_residual_all_lean(chunks)
    return {
        "complete": True,
        "strategy": "packed_nonid_residual_base64",
        "chunks": chunks,
        "chunk_count": len(chunks),
        "cert_count": total_certs,
        "aggregate_lean": generated_file_record(NONIDENTITY_RESIDUAL_ALL_PATH),
        "blob_dir": relative_path(FULL_NONIDENTITY_RESIDUAL_BLOB_DIR),
    }


def emit_full_translation_packed_farkas_chunks(
    *, shared_farkas_cases: int, shared_farkas_shapes: int
) -> dict:
    FULL_TRANSLATION_FARKAS_BLOB_DIR.mkdir(parents=True, exist_ok=True)
    TRANSLATION_FARKAS_DIR.mkdir(parents=True, exist_ok=True)
    chunks: list[dict] = []
    current: list[dict] = []
    current_encoded_bytes = 0
    total_certs = 0
    shape_keys: set[str] = set()

    def flush() -> None:
        nonlocal current, current_encoded_bytes, total_certs
        if not current:
            return
        index = len(chunks)
        blob = packed_translation_farkas_blob(
            certs=current, shared_farkas_cases=shared_farkas_cases
        )
        blob_text = compact_blob_text(blob)
        if len(blob_text.encode("ascii")) > FULL_EMISSION_HARD_MAX_FILE_BYTES:
            raise RuntimeError("packed translation Farkas chunk exceeds hard file limit")
        blob_path = full_translation_farkas_blob_path(index)
        blob_path.write_text(blob_text, encoding="ascii")
        lean_path = write_full_packed_translation_farkas_chunk_lean(
            index=index, blob_path=blob_path
        )
        first_key = min((int(cert["rank"]), int(cert["mask"])) for cert in current)
        last_key = max((int(cert["rank"]), int(cert["mask"])) for cert in current)
        chunk_record = {
            "index": index,
            "cert_count": len(current),
            "first_rank": first_key[0],
            "first_mask": first_key[1],
            "last_rank": last_key[0],
            "last_mask": last_key[1],
            "blob": generated_file_record(blob_path),
            "lean": generated_file_record(lean_path),
            "raw_bytes": len(blob),
            "encoding": "base64",
            "magic": "COTF",
        }
        chunks.append(chunk_record)
        total_certs += len(current)
        current = []
        current_encoded_bytes = 0

    for cert in iter_translation_farkas_cert_payloads():
        shape_keys.add(canonical_json(cert["sourceTerms"]))
        cert_bytes = encode_compact_translation_farkas_cert(cert)
        projected = current_encoded_bytes + len(cert_bytes)
        if current and projected * 4 // 3 >= FULL_EMISSION_TARGET_CHUNK_BYTES:
            flush()
        current.append(cert)
        current_encoded_bytes += len(cert_bytes)
    flush()
    if total_certs != shared_farkas_cases:
        raise RuntimeError(
            "translation Farkas emission count mismatch: "
            f"{total_certs} != {shared_farkas_cases}"
        )
    if len(shape_keys) != shared_farkas_shapes:
        raise RuntimeError(
            "translation Farkas shape count mismatch: "
            f"{len(shape_keys)} != {shared_farkas_shapes}"
        )
    write_full_translation_farkas_all_lean(chunks)
    return {
        "complete": True,
        "strategy": "packed_translation_source_farkas_base64",
        "shared_farkas_shapes": shared_farkas_shapes,
        "shared_farkas_cases": shared_farkas_cases,
        "chunks": chunks,
        "chunk_count": len(chunks),
        "cert_count": total_certs,
        "aggregate_lean": generated_file_record(TRANSLATION_FARKAS_ALL_PATH),
        "blob_dir": relative_path(FULL_TRANSLATION_FARKAS_BLOB_DIR),
        "encoding": "base64",
        "magic": "COTF",
    }


def clear_full_generated_chunk_outputs() -> None:
    for directory in [
        FULL_NONIDENTITY_RESIDUAL_SHARD_DIR,
        FULL_TRANSLATION_FARKAS_SHARD_DIR,
    ]:
        if directory.exists():
            shutil.rmtree(directory)
    for directory in [
        FULL_NONIDENTITY_RESIDUAL_BLOB_DIR,
        FULL_TRANSLATION_FARKAS_BLOB_DIR,
        FULL_NONIDENTITY_RESIDUAL_SHARD_DIR,
        FULL_TRANSLATION_FARKAS_SHARD_DIR,
        NONIDENTITY_RESIDUAL_DIR,
        TRANSLATION_FARKAS_DIR,
    ]:
        directory.mkdir(parents=True, exist_ok=True)
    for path in FULL_NONIDENTITY_RESIDUAL_BLOB_DIR.glob("Chunk*.b64"):
        path.unlink()
    for path in FULL_TRANSLATION_FARKAS_BLOB_DIR.glob("Chunk*.b64"):
        path.unlink()
    for path in NONIDENTITY_RESIDUAL_DIR.glob("Chunk*.lean"):
        path.unlink()
    for path in TRANSLATION_FARKAS_DIR.glob("Chunk*.lean"):
        path.unlink()


def generated_blob_record(blob_path: Path) -> dict:
    text = blob_path.read_text(encoding="ascii")
    raw = base64.b64decode(text, validate=True)
    record = generated_file_record(blob_path)
    record.update({
        "raw_sha256": hashlib.sha256(raw).hexdigest(),
        "raw_bytes": len(raw),
        "encoding": "base64",
    })
    return record


def emitted_translation_source_shape_count(
    *,
    chunks: list[dict],
    shared_farkas_cases: int,
    jobs: int,
) -> int:
    import check_certificates_independently as checker

    results = checker.parallel_map_chunks(
        checker.check_full_translation_chunk_worker,
        [
            (index, chunk, shared_farkas_cases, False)
            for index, chunk in enumerate(chunks)
        ],
        jobs,
    )
    shape_digests = set()
    for result in results:
        shape_digests.update(result["shape_digests"])
    return len(shape_digests)


def run_full_fallback_cpp_emitter(
    *,
    helper: Path,
    nonidentity_dir: Path,
    translation_dir: Path,
    residual_cases: int,
    shared_farkas_cases: int,
    target_raw_bytes: int,
    prefix: list[str] | None = None,
) -> dict:
    nonidentity_dir.mkdir(parents=True, exist_ok=True)
    translation_dir.mkdir(parents=True, exist_ok=True)
    command = [
        str(helper),
        "--emit-full-fallback",
        "--nonidentity-residual-dir",
        str(nonidentity_dir),
        "--translation-farkas-dir",
        str(translation_dir),
        "--nonidentity-residual-total",
        str(residual_cases),
        "--translation-farkas-total",
        str(shared_farkas_cases),
        "--chunk-target-raw-bytes",
        str(target_raw_bytes),
    ]
    if prefix is not None:
        command.extend(["--prefix", prefix_arg(prefix)])
    completed = subprocess.run(
        command,
        cwd=REPO_ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    if completed.returncode != 0:
        detail = completed.stderr[-4000:] if completed.stderr else ""
        raise RuntimeError(
            "compiled fallback emitter failed"
            + (f" for prefix {prefix_arg(prefix)}" if prefix is not None else "")
            + (f":\n{detail}" if detail else "")
        )
    payload = json.loads(completed.stdout)
    if payload.get("complete") is not True:
        raise RuntimeError("compiled fallback emitter did not complete")
    return payload


def final_nonidentity_chunks_from_emitter_payloads(payloads: list[dict]) -> list[dict]:
    raw_chunks: list[tuple[int, int, Path, dict]] = []
    for payload in payloads:
        nonid_payload = payload["nonidentity_residual"]
        source_dir = Path(nonid_payload["output_dir"])
        for chunk in nonid_payload["chunks"]:
            index = int(chunk["index"])
            raw_chunks.append((
                int(chunk["first_rank"]),
                int(chunk["last_rank"]),
                source_dir / f"Chunk{index:04d}.b64",
                chunk,
            ))
    raw_chunks.sort(key=lambda item: (item[0], item[1], str(item[2])))

    chunks: list[dict] = []
    previous_last = -1
    for final_index, (first_rank, last_rank, source_path, source_chunk) in enumerate(raw_chunks):
        if first_rank <= previous_last:
            raise RuntimeError("nonidentity shard chunks overlap or are unsorted")
        previous_last = last_rank
        blob_path = full_nonidentity_residual_blob_path(final_index)
        if source_path.resolve() != blob_path.resolve():
            shutil.copyfile(source_path, blob_path)
        lean_path = write_full_packed_residual_chunk_lean(
            index=final_index,
            blob_path=blob_path,
        )
        blob_record = generated_blob_record(blob_path)
        if int(source_chunk["raw_bytes"]) != int(blob_record["raw_bytes"]):
            raise RuntimeError(f"nonidentity shard raw size mismatch {final_index}")
        chunks.append({
            "index": final_index,
            "cert_count": int(source_chunk["cert_count"]),
            "first_rank": first_rank,
            "last_rank": last_rank,
            "blob": blob_record,
            "lean": generated_file_record(lean_path),
            "raw_bytes": int(blob_record["raw_bytes"]),
            "raw_sha256": blob_record["raw_sha256"],
            "encoding": "base64",
            "magic": "CORC",
        })
    return chunks


def final_translation_chunks_from_emitter_payloads(payloads: list[dict]) -> list[dict]:
    raw_chunks: list[tuple[int, int, int, int, Path, dict]] = []
    for payload in payloads:
        translation_payload = payload["translation_farkas"]
        source_dir = Path(translation_payload["output_dir"])
        for chunk in translation_payload["chunks"]:
            index = int(chunk["index"])
            raw_chunks.append((
                int(chunk["first_rank"]),
                int(chunk["first_mask"]),
                int(chunk["last_rank"]),
                int(chunk["last_mask"]),
                source_dir / f"Chunk{index:04d}.b64",
                chunk,
            ))
    raw_chunks.sort(key=lambda item: (item[0], item[1], item[2], item[3], str(item[4])))

    chunks: list[dict] = []
    previous_key = (-1, -1)
    for final_index, (
        first_rank,
        first_mask,
        last_rank,
        last_mask,
        source_path,
        source_chunk,
    ) in enumerate(raw_chunks):
        first_key = (first_rank, first_mask)
        last_key = (last_rank, last_mask)
        if first_key <= previous_key:
            raise RuntimeError("translation shard chunks overlap or are unsorted")
        previous_key = last_key
        blob_path = full_translation_farkas_blob_path(final_index)
        if source_path.resolve() != blob_path.resolve():
            shutil.copyfile(source_path, blob_path)
        lean_path = write_full_packed_translation_farkas_chunk_lean(
            index=final_index,
            blob_path=blob_path,
        )
        blob_record = generated_blob_record(blob_path)
        if int(source_chunk["raw_bytes"]) != int(blob_record["raw_bytes"]):
            raise RuntimeError(f"translation shard raw size mismatch {final_index}")
        chunks.append({
            "index": final_index,
            "cert_count": int(source_chunk["cert_count"]),
            "first_rank": first_rank,
            "first_mask": first_mask,
            "last_rank": last_rank,
            "last_mask": last_mask,
            "blob": blob_record,
            "lean": generated_file_record(lean_path),
            "raw_bytes": int(blob_record["raw_bytes"]),
            "raw_sha256": blob_record["raw_sha256"],
            "encoding": "base64",
            "magic": "COTF",
        })
    return chunks


def emit_full_generated_fallback_chunks_with_cpp(
    *,
    residual_cases: int,
    shared_farkas_cases: int,
    shared_farkas_shapes: int,
    jobs: int,
    prefix_depth: int,
) -> tuple[dict, dict]:
    clear_full_generated_chunk_outputs()
    helper = exact_profile.ensure_cpp_profile_helper()
    target_raw_bytes = max(1024, (FULL_EMISSION_TARGET_CHUNK_BYTES * 3) // 4)
    effective_jobs = max(1, jobs)
    if effective_jobs == 1:
        payloads = [
            run_full_fallback_cpp_emitter(
                helper=helper,
                nonidentity_dir=FULL_NONIDENTITY_RESIDUAL_BLOB_DIR,
                translation_dir=FULL_TRANSLATION_FARKAS_BLOB_DIR,
                residual_cases=residual_cases,
                shared_farkas_cases=shared_farkas_cases,
                target_raw_bytes=target_raw_bytes,
            )
        ]
    else:
        prefixes = valid_pair_prefixes(prefix_depth)
        if not prefixes:
            raise RuntimeError("no shard prefixes generated")

        def run_shard(item: tuple[int, list[str]]) -> dict:
            shard_index, prefix = item
            nonid_dir = (
                FULL_NONIDENTITY_RESIDUAL_SHARD_DIR /
                f"Shard{shard_index:04d}"
            )
            translation_dir = (
                FULL_TRANSLATION_FARKAS_SHARD_DIR /
                f"Shard{shard_index:04d}"
            )
            payload = run_full_fallback_cpp_emitter(
                helper=helper,
                nonidentity_dir=nonid_dir,
                translation_dir=translation_dir,
                residual_cases=residual_cases,
                shared_farkas_cases=shared_farkas_cases,
                target_raw_bytes=target_raw_bytes,
                prefix=prefix,
            )
            payload["shard"] = {
                "index": shard_index,
                "prefix": prefix,
                "prefix_start_rank": prefix_start_rank(prefix),
            }
            return payload

        payloads = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=effective_jobs) as pool:
            futures = [
                pool.submit(run_shard, (index, prefix))
                for index, prefix in enumerate(prefixes)
            ]
            for future in concurrent.futures.as_completed(futures):
                payloads.append(future.result())
        payloads.sort(
            key=lambda payload: payload.get("shard", {}).get("prefix_start_rank", 0)
        )

    nonid_chunks = final_nonidentity_chunks_from_emitter_payloads(payloads)
    nonid_total = sum(int(chunk["cert_count"]) for chunk in nonid_chunks)
    if nonid_total != residual_cases:
        raise RuntimeError(
            "compiled nonidentity residual count mismatch: "
            f"{nonid_total} != {residual_cases}"
        )
    write_full_nonidentity_residual_all_lean(nonid_chunks)

    translation_chunks = final_translation_chunks_from_emitter_payloads(payloads)
    translation_total = sum(int(chunk["cert_count"]) for chunk in translation_chunks)
    if translation_total != shared_farkas_cases:
        raise RuntimeError(
            "compiled translation Farkas count mismatch: "
            f"{translation_total} != {shared_farkas_cases}"
        )
    write_full_translation_farkas_all_lean(translation_chunks)
    actual_shared_farkas_shapes = emitted_translation_source_shape_count(
        chunks=translation_chunks,
        shared_farkas_cases=shared_farkas_cases,
        jobs=effective_jobs,
    )

    shard_count = len(payloads)
    nonidentity_manifest = {
        "complete": True,
        "strategy": "packed_nonid_residual_base64",
        "chunks": nonid_chunks,
        "chunk_count": len(nonid_chunks),
        "cert_count": nonid_total,
        "aggregate_lean": generated_file_record(NONIDENTITY_RESIDUAL_ALL_PATH),
        "blob_dir": relative_path(FULL_NONIDENTITY_RESIDUAL_BLOB_DIR),
        "encoding": "base64",
        "magic": "CORC",
        "emitter": {
            "backend": "compiled-exact-cpp-emitter",
            "chunk_target_raw_bytes": target_raw_bytes,
            "jobs": effective_jobs,
            "prefix_depth": prefix_depth if effective_jobs > 1 else 0,
            "shard_count": shard_count,
        },
    }
    translation_manifest = {
        "complete": True,
        "strategy": "packed_translation_source_farkas_base64",
        "shared_farkas_shapes": actual_shared_farkas_shapes,
        "prefix_parametric_shared_farkas_shapes": shared_farkas_shapes,
        "shared_farkas_cases": shared_farkas_cases,
        "chunks": translation_chunks,
        "chunk_count": len(translation_chunks),
        "cert_count": translation_total,
        "aggregate_lean": generated_file_record(TRANSLATION_FARKAS_ALL_PATH),
        "blob_dir": relative_path(FULL_TRANSLATION_FARKAS_BLOB_DIR),
        "encoding": "base64",
        "magic": "COTF",
        "emitter": {
            "backend": "compiled-exact-cpp-emitter",
            "chunk_target_raw_bytes": target_raw_bytes,
            "jobs": effective_jobs,
            "prefix_depth": prefix_depth if effective_jobs > 1 else 0,
            "shard_count": shard_count,
        },
    }
    return nonidentity_manifest, translation_manifest


def build_full_generated_lean_fallback_manifest(
    *, packed_residual: dict, prefix_parametric: dict, jobs: int, prefix_depth: int
) -> tuple[dict | None, list[str]]:
    refusal_reasons: list[str] = []
    packed_projection = packed_residual.get("projection", {})
    if packed_projection.get("size_safe") is not True:
        refusal_reasons.append("packed_residual_projection_not_size_safe")
    residual_cases = int(
        packed_projection.get(
            "residual_singleton_cases",
            prefix_parametric["nonidentity"]["residual_singleton_cases"],
        )
    )
    shared_farkas_shapes = int(
        prefix_parametric["translation"]["shared_farkas_shapes"]
    )
    shared_farkas_cases = int(
        prefix_parametric["translation"]["shared_farkas_cases"]
    )
    if refusal_reasons:
        write_translation_farkas_all_placeholder()
        return None, refusal_reasons

    nonidentity_manifest, translation_manifest = (
        emit_full_generated_fallback_chunks_with_cpp(
            residual_cases=residual_cases,
            shared_farkas_cases=shared_farkas_cases,
            shared_farkas_shapes=shared_farkas_shapes,
            jobs=jobs,
            prefix_depth=prefix_depth,
        )
    )
    full_generated_imports = [
        NONIDENTITY_RESIDUAL_ALL_PATH,
        TRANSLATION_FARKAS_ALL_PATH,
    ]
    return {
        "schema_version": 1,
        "summary_kind": "generated-lean-fallback",
        "selected_backend": "generated_lean_fallback",
        "nonidentity": nonidentity_manifest,
        "translation": translation_manifest,
        "generated_lean": {
            "all_generated": generated_file_record(ALL_GENERATED_PATH),
            "imports": generated_files_record(full_generated_imports),
        },
        "counts": {
            "nonidentity_residual_singletons": residual_cases,
            "translation_shared_farkas_shapes": shared_farkas_shapes,
            "translation_shared_farkas_cases": shared_farkas_cases,
        },
    }, []


def build_full_emission_size_preflight(
    *,
    residual_templates: dict | None,
    compact_residual: dict | None,
    packed_residual: dict | None,
    prefix_parametric: dict | None,
    budget_bytes: int,
) -> dict:
    residual_cases = 0
    template_cert_count = 0
    template_bytes = 0
    bytes_per_residual_template = 0
    projected_residual_source_bytes = 0
    compact_projection = None
    packed_projection = None
    projection_model = "residual_proof_templates"
    if packed_residual is not None and packed_residual.get("complete") is True:
        projection_model = "packed_residual_certificates"
        packed_projection = packed_residual.get("projection", {})
        residual_cases = int(packed_projection.get("residual_singleton_cases", 0))
        bytes_per_residual_template = int(
            packed_projection.get("bytes_per_packed_cert", 0)
        )
        projected_residual_source_bytes = int(
            packed_projection.get("projected_residual_source_bytes", 0)
        )
    elif compact_residual is not None and compact_residual.get("complete") is True:
        projection_model = "compact_residual_certificates"
        compact_projection = compact_residual.get("projection", {})
        residual_cases = int(compact_projection.get("residual_singleton_cases", 0))
        bytes_per_residual_template = int(
            compact_projection.get("bytes_per_compact_cert", 0)
        )
        projected_residual_source_bytes = int(
            compact_projection.get("projected_residual_source_bytes", 0)
        )
    elif residual_templates is not None:
        residual_cases = int(residual_templates["residual_singleton_cases"])
        template_cert_count = len(residual_templates.get("certs", []))
        template_record = residual_templates.get("generated_lean", {}).get(
            "residual_templates", {}
        )
        template_bytes = int(template_record.get("bytes", 0))
        if template_cert_count > 0:
            bytes_per_residual_template = math.ceil(
                template_bytes / template_cert_count
            )
            projected_residual_source_bytes = (
                bytes_per_residual_template * residual_cases
            )

    translation_shared_farkas_shapes = 0
    translation_shared_farkas_cases = 0
    projected_translation_source_bytes = 0
    bytes_per_translation_farkas_cert_proxy = 96
    if prefix_parametric is not None:
        translation_shared_farkas_shapes = int(
            prefix_parametric["size_ladder"]["translation_shared_farkas_estimate"]
        )
        translation_shared_farkas_cases = int(
            prefix_parametric["translation"]["shared_farkas_cases"]
        )
        projected_translation_source_bytes = (
            translation_shared_farkas_cases *
            bytes_per_translation_farkas_cert_proxy
        )

    projected_total_source_bytes = (
        projected_residual_source_bytes
        + projected_translation_source_bytes
    )
    reasons: list[str] = []
    if projected_total_source_bytes > budget_bytes:
        if projection_model == "packed_residual_certificates":
            reasons.append("packed_residual_source_exceeds_budget")
        elif projection_model == "compact_residual_certificates":
            reasons.append("compact_residual_source_exceeds_budget")
        else:
            reasons.append("projected_template_source_exceeds_budget")
    if projected_total_source_bytes > FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES:
        if projection_model == "packed_residual_certificates":
            reasons.append("packed_residual_source_exceeds_hard_total_limit")
        elif projection_model == "compact_residual_certificates":
            reasons.append("compact_residual_source_exceeds_hard_total_limit")
        else:
            reasons.append("projected_template_source_exceeds_hard_total_limit")
    if FULL_EMISSION_TARGET_CHUNK_BYTES > FULL_EMISSION_HARD_MAX_FILE_BYTES:
        reasons.append("chunk_target_exceeds_hard_file_limit")
    return {
        "strategy": "generated_lean_fallback",
        "projection_model": projection_model,
        "target_chunk_bytes": FULL_EMISSION_TARGET_CHUNK_BYTES,
        "hard_max_file_bytes": FULL_EMISSION_HARD_MAX_FILE_BYTES,
        "hard_total_source_bytes": FULL_EMISSION_HARD_TOTAL_SOURCE_BYTES,
        "residual_template_bytes": template_bytes,
        "residual_template_cert_count": template_cert_count,
        "residual_singleton_cases": residual_cases,
        "bytes_per_residual_template": bytes_per_residual_template,
        "projected_residual_source_bytes": projected_residual_source_bytes,
        "translation_shared_farkas_shapes": translation_shared_farkas_shapes,
        "translation_shared_farkas_cases": translation_shared_farkas_cases,
        "bytes_per_translation_farkas_cert_proxy":
            bytes_per_translation_farkas_cert_proxy,
        "projected_translation_source_bytes":
            projected_translation_source_bytes,
        "compact_residual_projection": compact_projection,
        "packed_residual_projection": packed_projection,
        "projected_total_source_bytes": projected_total_source_bytes,
        "projected_total_source_gib": projected_total_source_bytes / GIB,
        "size_safe": not reasons,
        "refusal_reasons": reasons,
        "note": (
            "This is a conservative source-size preflight. It uses the compact "
            "residual certificate projection when available, otherwise the "
            "compiled residual proof-template module. It intentionally aborts "
            "before generating large tracked Lean files when the selected "
            "model exceeds GitHub/repo budgets."
        ),
    }


def build_exhaustive_real_certs_summary(
    *,
    profile_input: Path,
    generated_data_budget_gib: float,
    required_free_gib: float,
    approve_large_exhaustive: bool,
    allow_flat_exhaustive: bool,
    full_emission_jobs: int,
    full_emission_prefix_depth: int,
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
        "residual_nonidentity_templates": path_status(
            RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH
        ),
        "compact_residual_certificates": path_status(
            COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH
        ),
        "packed_residual_certificates": path_status(
            PACKED_RESIDUAL_CERTIFICATES_JSON_PATH
        ),
    }

    load_json_artifact(COVERAGE_JSON_PATH, "coverage-manifest")
    load_json_artifact(CANONICAL_COVERAGE_JSON_PATH, "canonical-coverage-manifest")
    load_json_artifact(COVERAGE_TREE_JSON_PATH, "coverage-tree-sample")
    load_json_artifact(NONIDENTITY_FAMILY_JSON_PATH, "nonidentity-family-sample")
    load_json_artifact(TRANSLATION_FAMILY_JSON_PATH, "translation-family-sample")
    residual_templates = None
    if RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH.exists():
        residual_templates = load_json_artifact(
            RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH,
            "residual-nonidentity-templates",
        )
        if not residual_templates.get("complete", False):
            residual_templates = None
    prefix_parametric = None
    if PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.exists():
        prefix_parametric = load_json_artifact(
            PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
            "prefix-parametric-compression",
        )
        if not prefix_parametric.get("complete", False):
            prefix_parametric = None
    compact_pilot = None
    if COMPACT_CERT_PILOT_JSON_PATH.exists():
        compact_pilot = load_json_artifact(
            COMPACT_CERT_PILOT_JSON_PATH,
            "compact-cert-pilot",
        )
        if not compact_pilot.get("complete", False):
            compact_pilot = None
    compact_residual = None
    if COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH.exists():
        compact_residual = load_json_artifact(
            COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH,
            "compact-residual-certificates",
        )
        if not compact_residual.get("complete", False):
            compact_residual = None
    packed_residual = None
    packed_residual_full_lean_check_ready = False
    if PACKED_RESIDUAL_CERTIFICATES_JSON_PATH.exists():
        packed_residual = load_json_artifact(
            PACKED_RESIDUAL_CERTIFICATES_JSON_PATH,
            "packed-residual-certificates",
        )
        if not packed_residual.get("complete", False):
            packed_residual = None
        else:
            packed_pilot = packed_residual.get("generated_lean", {}).get(
                "packed_pilot", {}
            )
            packed_residual_full_lean_check_ready = (
                packed_pilot.get("full_blob_lean_check") is True
            )
    required_parametric_semantics_api = [
        "checkNonIdParametricFamily",
        "checkNonIdParametricFamily_sound",
        "exhaustiveNonIdBadDirectionFamily_sound",
        "exhaustiveNonIdBadPairBalanceFamily_sound",
        "checkTranslationParametricFamily",
        "checkTranslationParametricFamily_sound",
        "exhaustiveTranslationBadDirectionFamily_sound",
        "exhaustiveTranslationBadVectorFamily_sound",
    ]
    required_family_partition_api = [
        "exhaustiveNonIdBadDirectionFamily_partition",
        "exhaustiveNonIdBadPairBalanceFamily_partition",
        "exhaustiveTranslationBadDirectionFamily_partition",
        "exhaustiveTranslationBadVectorFamily_partition",
    ]
    parametric_family_checkers = None
    parametric_semantics_ready = False
    family_partition_ready = False
    family_partition_exhaustive_complete = False
    residual_templates_ready = False
    if PARAMETRIC_FAMILY_CHECKERS_JSON_PATH.exists():
        parametric_family_checkers = load_json_artifact(
            PARAMETRIC_FAMILY_CHECKERS_JSON_PATH,
            "parametric-family-checkers",
        )
        required_api = set(parametric_family_checkers.get("required_api", []))
        partition = parametric_family_checkers.get("family_partition_witnesses", {})
        partition_api = set(partition.get("required_api", []))
        parametric_semantics_ready = (
            parametric_family_checkers.get("complete") is True
            and parametric_family_checkers.get("checker_layer_complete") is True
            and parametric_family_checkers.get("exhaustive_coverage_complete") is False
            and set(required_parametric_semantics_api) <= required_api
        )
        generated_partition = partition.get("generated_lean", {})
        family_partition_ready = (
            partition.get("complete") is True
            and set(required_family_partition_api) <= partition_api
            and generated_partition.get("nonidentity", {}).get("exists") is True
            and generated_partition.get("translation", {}).get("exists") is True
        )
        family_partition_exhaustive_complete = (
            partition.get("exhaustive_partition_complete") is True
        )
    if residual_templates is not None:
        residual_template_kinds = {
            record["failure_kind"]: record for record in residual_templates["subtypes"]
        }
        representative_scan = residual_templates.get("representative_scan", {})
        residual_templates_ready = (
            residual_templates.get("complete") is True
            and residual_templates.get("template_contract_complete") is True
            and residual_templates.get("exhaustive_subtype_census_complete") is False
            and int(residual_templates["residual_singleton_cases"])
            == int(residual_templates["expected_residual_singleton_cases"])
            and {
                "axisMissesStartInterior",
                "badFirstHit",
                "badHitInterior",
            } <= set(residual_template_kinds)
            and all(
                residual_template_kinds[kind].get("present") is True
                for kind in representative_scan.get(
                    "required_observed_failure_kinds", []
                )
            )
            and int(representative_scan.get("candidate_passed_observed_count", 0)) == 0
            and all(
                (not record["present"]) or record["check_theorem"]
                for record in residual_template_kinds.values()
            )
        )

    estimates = profile["size_estimates"]
    if prefix_parametric is not None:
        estimated_lean_bytes = int(
            prefix_parametric["size_ladder"]["estimated_lean_bytes"]
        )
        canonical_cert_estimate = int(
            prefix_parametric["size_ladder"]["final_cert_estimate"]
        )
        estimate_source = str(
            PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT)
        )
    else:
        estimated_lean_bytes = int(estimates["estimated_lean_bytes"])
        canonical_cert_estimate = int(estimates["canonical_cert_estimate"])
        estimate_source = str(profile_input.relative_to(REPO_ROOT))
    flat_total_certs = int(estimates["flat_total_certs"])
    budget_bytes = int(generated_data_budget_gib * GIB)
    required_free_bytes = int(required_free_gib * GIB)
    disk = shutil.disk_usage(REPO_ROOT)
    selected_backend = (
        compact_pilot.get("backend_evaluation", {}).get(
            "selected_backend", "generated_lean_fallback"
        )
        if compact_pilot is not None
        else "generated_lean_fallback"
    )

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
    if estimated_lean_bytes > budget_bytes:
        refusal_reasons.append("estimated_lean_bytes_exceeds_budget")
    if disk.free < required_free_bytes:
        refusal_reasons.append("free_space_below_required_floor")
    if selected_backend != "generated_lean_fallback":
        refusal_reasons.append(f"selected_backend_is_{selected_backend}")
    if (
        prefix_parametric is None
        or prefix_parametric.get("decision", {}).get("ready_for_14E7") is not True
    ):
        refusal_reasons.append("prefix_parametric_not_ready_for_14E7")
    if not parametric_semantics_ready:
        refusal_reasons.append("parametric_family_semantics_not_ready")
    if not family_partition_ready:
        refusal_reasons.append("family_partition_witness_not_ready")
    if not family_partition_exhaustive_complete:
        refusal_reasons.append("family_partition_exhaustive_data_not_emitted")
    if not residual_templates_ready:
        refusal_reasons.append("residual_nonidentity_templates_not_ready")
    if not packed_residual_full_lean_check_ready:
        refusal_reasons.append("packed_residual_full_blob_lean_check_not_ready")
    implementation_preflight = build_full_emission_size_preflight(
        residual_templates=residual_templates,
        compact_residual=compact_residual,
        packed_residual=packed_residual,
        prefix_parametric=prefix_parametric,
        budget_bytes=budget_bytes,
    )
    preflight_refusal_reasons = [
        "full_emission_" + reason
        for reason in implementation_preflight["refusal_reasons"]
    ]
    refusal_reasons.extend(preflight_refusal_reasons)
    ready_for_large_emission = not refusal_reasons
    full_emission_manifest: dict | None = None
    if ready_for_large_emission and not approve_large_exhaustive:
        emission_status = "ready_but_approval_required"
    elif refusal_reasons:
        if preflight_refusal_reasons:
            emission_status = "refused_generation_size_preflight"
        elif "packed_residual_full_blob_lean_check_not_ready" in refusal_reasons:
            emission_status = "blocked_packed_residual_full_blob_lean_check"
        else:
            emission_status = (
                "refused_budget_exceeded"
                if "estimated_lean_bytes_exceeds_budget" in refusal_reasons
                else "refused_prerequisite_or_space_check"
            )
    else:
        assert packed_residual is not None
        assert prefix_parametric is not None
        full_emission_manifest, emission_refusal_reasons = (
            build_full_generated_lean_fallback_manifest(
                packed_residual=packed_residual,
                prefix_parametric=prefix_parametric,
                jobs=full_emission_jobs,
                prefix_depth=full_emission_prefix_depth,
            )
        )
        refusal_reasons.extend(emission_refusal_reasons)
        if full_emission_manifest is not None:
            emission_status = "completed_generated_lean_fallback"
        elif "translation_shared_farkas_emitter_not_implemented" in refusal_reasons:
            emission_status = (
                "blocked_translation_shared_farkas_emitter_not_implemented"
            )
        else:
            emission_status = "approved_but_full_emitter_not_implemented"

    payload = {
        "schema_version": 1,
        "mode": "exhaustive-real-certs",
        "complete": full_emission_manifest is not None,
        "summary_kind": (
            "generated-lean-fallback"
            if full_emission_manifest is not None
            else "gated-estimate"
        ),
        "selected_backend": selected_backend,
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
        "prerequisites": {
            **artifacts,
            "prefix_parametric_compression": path_status(
                PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH
            ),
            "parametric_family_checkers": path_status(
                PARAMETRIC_FAMILY_CHECKERS_JSON_PATH
            ),
            "compact_cert_pilot": path_status(COMPACT_CERT_PILOT_JSON_PATH),
            "compact_residual_certificates": path_status(
                COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH
            ),
            "packed_residual_certificates": path_status(
                PACKED_RESIDUAL_CERTIFICATES_JSON_PATH
            ),
            "residual_nonidentity_templates": path_status(
                RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH
            ),
        },
        "parametric_family_semantics": {
            "ready": parametric_semantics_ready,
            "required_api": required_parametric_semantics_api,
            "source": path_status(PARAMETRIC_FAMILY_CHECKERS_JSON_PATH),
        },
        "family_partition": {
            "ready": family_partition_ready,
            "exhaustive_partition_complete": family_partition_exhaustive_complete,
            "required_api": required_family_partition_api,
            "source": path_status(PARAMETRIC_FAMILY_CHECKERS_JSON_PATH),
            "generated_lean": {
                "nonidentity": path_status(NONIDENTITY_PARTITION_LEAN_PATH),
                "translation": path_status(TRANSLATION_PARTITION_LEAN_PATH),
            },
        },
        "residual_nonidentity_templates": {
            "ready": residual_templates_ready,
            "source": path_status(RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH),
            "generated_lean": {
                "residual_templates": path_status(
                    NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH
                ),
            },
        },
        "compact_residual_certificates": {
            "ready": compact_residual is not None,
            "source": path_status(COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH),
            "generated_lean": {
                "compact_pilot": path_status(
                    NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH
                ),
            },
            "projection": (
                compact_residual.get("projection", {})
                if compact_residual is not None
                else None
            ),
        },
        "packed_residual_certificates": {
            "ready": packed_residual is not None,
            "source": path_status(PACKED_RESIDUAL_CERTIFICATES_JSON_PATH),
            "generated_lean": {
                "packed_pilot": path_status(
                    NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH
                ),
            },
            "projection": (
                packed_residual.get("projection", {})
                if packed_residual is not None
                else None
            ),
        },
        "implementation_preflight": implementation_preflight,
        "estimate": {
            "source": estimate_source,
            "flat_total_certs": flat_total_certs,
            "flat_nonidentity_certs": int(estimates["flat_nonidentity_certs"]),
            "flat_translation_certs": int(estimates["flat_translation_certs"]),
            "canonical_cert_estimate": canonical_cert_estimate,
            "estimated_lean_bytes": estimated_lean_bytes,
            "estimated_lean_gib": estimated_lean_bytes / GIB,
            "profile_estimate_note": estimates.get("note", ""),
            "shared_farkas_groups": int(estimates.get("shared_farkas_groups", 0)),
            "prefix_parametric_available": prefix_parametric is not None,
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
            "performed": full_emission_manifest is not None,
            "status": emission_status,
            "refusal_reasons": refusal_reasons,
            "approval_flag": "--approve-large-exhaustive",
            "large_emission_ready": ready_for_large_emission,
            "parallel": {
                "jobs": full_emission_jobs,
                "prefix_depth": full_emission_prefix_depth,
                "prefix_shards": (
                    valid_pair_prefix_count(full_emission_prefix_depth)
                    if full_emission_jobs > 1
                    else 1
                ),
            },
            "manifest": full_emission_manifest,
        },
        "expected_full_generation_paths": [
            "Cuboctahedron/Generated/NonIdentity/",
            "Cuboctahedron/Generated/Translation/",
            "Cuboctahedron/Generated/AllGenerated.lean",
        ],
    }
    write_all_generated()
    return payload


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


def build_prefix_parametric_compression_payload() -> dict:
    aggregate = load_json_artifact(
        AGGREGATE_COMPRESSION_PROFILE_JSON_PATH,
        "aggregate-compression-profile",
    )
    if not aggregate.get("complete", False):
        raise SystemExit(
            "prefix-parametric compression requires a complete aggregate profile"
        )

    nonid_failures = aggregate["nonidentity"]["failure_counts"]
    translation_failures = aggregate["translation"]["failure_counts"]
    nonid_parametric_specs = [
        {
            "name": "nonidentity_bad_direction_sign_prefix_family",
            "failure": "badDirectionSign",
            "raw_cases": int(nonid_failures.get("badDirectionSign", 0)),
            "estimated_certificates": 1,
            "certificate_kind": "prefix_axis_sign_obstruction",
        },
        {
            "name": "nonidentity_bad_pair_balance_prefix_family",
            "failure": "badPairBalance",
            "raw_cases": int(nonid_failures.get("badPairBalance", 0)),
            "estimated_certificates": 1,
            "certificate_kind": "prefix_forced_pair_balance_obstruction",
        },
    ]
    if int(nonid_failures.get("noFixedAxis", 0)) > 0:
        nonid_parametric_specs.append({
            "name": "nonidentity_no_fixed_axis_prefix_family",
            "failure": "noFixedAxis",
            "raw_cases": int(nonid_failures["noFixedAxis"]),
            "estimated_certificates": 1,
            "certificate_kind": "prefix_linear_no_fixed_axis_obstruction",
        })
    nonid_residual_cases = int(nonid_failures.get("needsAxisSolveOrSimulation", 0))

    translation_parametric_specs = [
        {
            "name": "translation_bad_direction_sign_prefix_family",
            "failure": "badDirectionSign",
            "raw_cases": int(translation_failures.get("badDirectionSign", 0)),
            "estimated_certificates": 1,
            "certificate_kind": "prefix_denominator_sign_obstruction",
        },
        {
            "name": "translation_bad_vector_prefix_family",
            "failure": "badTranslationVector",
            "raw_cases": int(translation_failures.get("badTranslationVector", 0)),
            "estimated_certificates": 1,
            "certificate_kind": "prefix_zero_translation_vector_obstruction",
        },
    ]
    translation_farkas_cases = int(translation_failures.get("needsFarkas", 0))
    translation_farkas_shapes = int(
        aggregate["translation"]["farkas_shape_histogram"]["distinct"]
    )
    unresolved_farkas_cases = int(aggregate["translation"]["unresolved_farkas_cases"])

    nonid_parametric_estimate = sum(
        int(family["estimated_certificates"]) for family in nonid_parametric_specs
    )
    translation_parametric_estimate = sum(
        int(family["estimated_certificates"]) for family in translation_parametric_specs
    )
    final_cert_estimate = (
        nonid_parametric_estimate
        + nonid_residual_cases
        + translation_parametric_estimate
        + translation_farkas_shapes
    )
    estimated_lean_bytes = final_cert_estimate * 512
    thresholds = [
        threshold_record("1GiB", GIB, estimated_lean_bytes),
        threshold_record("500MiB", 500 * MIB, estimated_lean_bytes),
        threshold_record("100MiB", 100 * MIB, estimated_lean_bytes),
    ]
    ready = unresolved_farkas_cases == 0 and thresholds[0]["fits"]
    status = "ready_for_14E7" if ready else "blocked_exceeds_budget"
    recommendation = (
        "proceed_to_concrete_exhaustive_coverage_witness_with_parametric_families"
        if ready
        else "add_deeper_prefix_or_parametric_family_compression_before_14E7"
    )

    return {
        "schema_version": 1,
        "mode": "prefix-parametric-compression",
        "complete": True,
        "proof_complete": False,
        "source": str(AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.relative_to(REPO_ROOT)),
        "strategy": {
            "name": "early_failure_prefix_parametric_v1",
            "description": (
                "Parametrically cover high-volume early sign and balance "
                "failures; keep nonidentity axis/simulation residuals at "
                "singleton scale and reuse shared translation Farkas shapes."
            ),
            "hard_budget_bytes": GIB,
        },
        "actual_counts": aggregate["actual_counts"],
        "canonical_counts": aggregate["canonical_counts"],
        "aggregate_decision": aggregate["decision"],
        "nonidentity": {
            "failure_counts": nonid_failures,
            "parametric_families": nonid_parametric_specs,
            "residual_singleton_failure": "needsAxisSolveOrSimulation",
            "residual_singleton_cases": nonid_residual_cases,
            "raw_cases_covered": int(aggregate["actual_counts"]["nonidentity_words"]),
        },
        "translation": {
            "failure_counts": translation_failures,
            "parametric_families": translation_parametric_specs,
            "shared_farkas_cases": translation_farkas_cases,
            "shared_farkas_shapes": translation_farkas_shapes,
            "unresolved_farkas_cases": unresolved_farkas_cases,
            "raw_cases_covered": int(
                aggregate["actual_counts"]["translation_sign_assignments"]
            ),
        },
        "size_ladder": {
            "flat_total_certs": int(aggregate["size_ladder"]["flat_total_certs"]),
            "aggregate_final_cert_estimate": int(
                aggregate["size_ladder"]["final_cert_estimate"]
            ),
            "nonidentity_parametric_family_estimate": nonid_parametric_estimate,
            "nonidentity_residual_singleton_estimate": nonid_residual_cases,
            "translation_parametric_family_estimate": translation_parametric_estimate,
            "translation_shared_farkas_estimate": translation_farkas_shapes,
            "final_cert_estimate": final_cert_estimate,
            "estimated_lean_bytes": estimated_lean_bytes,
            "estimated_lean_gib": estimated_lean_bytes / GIB,
            "bytes_per_certificate_proxy": 512,
            "thresholds": thresholds,
        },
        "decision": {
            "status": status,
            "ready_for_14E7": ready,
            "recommendation": recommendation,
        },
    }


def write_prefix_parametric_compression_json(payload: dict, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def write_nonidentity_parametric_lean() -> None:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.FamilySample",
        "",
        "/-!",
        "Generated representative parametric non-identity family sample for Step 14E.7B0.",
        "",
        "The parametric layer covers rank intervals by a checked certificate-producing",
        "function. This module exercises the high-volume non-identity families selected",
        "by the prefix/parametric compression profile; it is representative, not",
        "exhaustive.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity",
        "",
        "set_option maxHeartbeats 1200000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "",
        "def sampleBadDirectionParametricInterval : RankInterval where",
        "  startRank := 13",
        "  endRank := 16",
        "",
        "def sampleBadDirectionParametricCertForRank : Nat -> NonIdCert",
        "  | 13 => nonIdFamilyBadDirection000",
        "  | 14 => nonIdFamilyBadDirection001",
        "  | 15 => nonIdFamilyBadDirection002",
        "  | _ => nonIdFamilyBadDirection000",
        "",
        "def sampleBadDirectionParametricFamily : NonIdParametricFamily where",
        "  name := \"sampleBadDirectionParametricFamily\"",
        "  failure := NonIdFamilyFailure.badDirectionSign",
        "  interval := sampleBadDirectionParametricInterval",
        "  certForRank := sampleBadDirectionParametricCertForRank",
        "  certForRank_sound := by",
        "    intro r hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    simp [RankInterval.ContainsPairRank, sampleBadDirectionParametricInterval] at hcontains",
        "    have hRank : rank = 13 ∨ rank = 14 ∨ rank = 15 := by omega",
        "    rcases hRank with rfl | rfl | rfl",
        "    · simpa [sampleBadDirectionParametricCertForRank,",
        "        checkNonIdParametricFailureMatches] using",
        "        And.intro nonIdFamilyBadDirection000_coveredRank",
        "          (And.intro nonIdFamilyBadDirection000_check",
        "            nonIdFamilyBadDirection000_familyFailure)",
        "    · simpa [sampleBadDirectionParametricCertForRank,",
        "        checkNonIdParametricFailureMatches] using",
        "        And.intro nonIdFamilyBadDirection001_coveredRank",
        "          (And.intro nonIdFamilyBadDirection001_check",
        "            nonIdFamilyBadDirection001_familyFailure)",
        "    · simpa [sampleBadDirectionParametricCertForRank,",
        "        checkNonIdParametricFailureMatches] using",
        "        And.intro nonIdFamilyBadDirection002_coveredRank",
        "          (And.intro nonIdFamilyBadDirection002_check",
        "            nonIdFamilyBadDirection002_familyFailure)",
        "",
        "theorem sampleBadDirectionParametricFamily_check :",
        "    checkNonIdParametricFamily sampleBadDirectionParametricFamily = true := by",
        "  norm_num [checkNonIdParametricFamily, sampleBadDirectionParametricFamily,",
        "    sampleBadDirectionParametricInterval, checkRankInterval, numPairWords]",
        "",
        "theorem sampleBadDirectionParametricFamily_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : sampleBadDirectionParametricFamily.ContainsPairRank r) :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank r.val cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdParametricFamily_sound",
        "    sampleBadDirectionParametricFamily_check hcontains",
        "",
        "def sampleBadPairBalanceParametricInterval : RankInterval where",
        "  startRank := 102",
        "  endRank := 103",
        "",
        "def sampleBadPairBalanceParametricCertForRank : Nat -> NonIdCert",
        "  | 102 => nonIdFamilyBadPairBalance000",
        "  | _ => nonIdFamilyBadPairBalance000",
        "",
        "def sampleBadPairBalanceParametricFamily : NonIdParametricFamily where",
        "  name := \"sampleBadPairBalanceParametricFamily\"",
        "  failure := NonIdFamilyFailure.badPairBalance",
        "  interval := sampleBadPairBalanceParametricInterval",
        "  certForRank := sampleBadPairBalanceParametricCertForRank",
        "  certForRank_sound := by",
        "    intro r hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    simp [RankInterval.ContainsPairRank, sampleBadPairBalanceParametricInterval] at hcontains",
        "    have hRank : rank = 102 := by omega",
        "    subst rank",
        "    simpa [sampleBadPairBalanceParametricCertForRank,",
        "      checkNonIdParametricFailureMatches] using",
        "      And.intro nonIdFamilyBadPairBalance000_coveredRank",
        "        (And.intro nonIdFamilyBadPairBalance000_check",
        "          nonIdFamilyBadPairBalance000_familyFailure)",
        "",
        "theorem sampleBadPairBalanceParametricFamily_check :",
        "    checkNonIdParametricFamily sampleBadPairBalanceParametricFamily = true := by",
        "  norm_num [checkNonIdParametricFamily, sampleBadPairBalanceParametricFamily,",
        "    sampleBadPairBalanceParametricInterval, checkRankInterval, numPairWords]",
        "",
        "theorem sampleBadPairBalanceParametricFamily_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : sampleBadPairBalanceParametricFamily.ContainsPairRank r) :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank r.val cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdParametricFamily_sound",
        "    sampleBadPairBalanceParametricFamily_check hcontains",
        "",
        "def sampleParametricCoverage : NonIdParametricCoverage where",
        "  families :=",
        "    [sampleBadDirectionParametricFamily,",
        "      sampleBadPairBalanceParametricFamily]",
        "",
        "theorem sampleParametricCoverage_check :",
        "    checkNonIdParametricCoverage sampleParametricCoverage = true := by",
        "  unfold checkNonIdParametricCoverage sampleParametricCoverage",
        "  simp [sampleBadDirectionParametricFamily_check,",
        "    sampleBadPairBalanceParametricFamily_check]",
        "",
        "theorem sampleParametricCoverage_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : sampleParametricCoverage.ContainsPairRank r) :",
        "    exists cert : NonIdCert,",
        "      checkNonIdCoveredRank r.val cert = true /\\",
        "        checkNonIdCert cert = true :=",
        "  checkNonIdParametricCoverage_pairRank_sound",
        "    sampleParametricCoverage_check hcontains",
        "",
        "noncomputable def checkParametricSamples : Bool :=",
        "  checkNonIdParametricCoverage sampleParametricCoverage",
        "",
        "theorem checkParametricSamples_true :",
        "    checkParametricSamples = true := by",
        "  unfold checkParametricSamples",
        "  exact sampleParametricCoverage_check",
        "",
        "#check checkNonIdParametricFamily",
        "#check checkNonIdParametricFamily_sound",
        "#check exhaustiveNonIdBadDirectionFamily_sound",
        "#check exhaustiveNonIdBadPairBalanceFamily_sound",
        "#check Cuboctahedron.Generated.NonIdentity.sampleParametricCoverage_sound",
        "",
        "end Cuboctahedron.Generated.NonIdentity",
        "",
    ]
    NONIDENTITY_PARAMETRIC_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_PARAMETRIC_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_translation_parametric_lean(bad_vector_cert: TranslationCertPayload) -> None:
    cert = bad_vector_cert.to_json()
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.FamilySample",
        "",
        "/-!",
        "Generated representative parametric translation family sample for Step 14E.7B0.",
        "",
        "This module exercises parametric translation families for bad direction signs,",
        "zero translation vectors, and shared Farkas/source-Farkas infeasibility.",
        "It is representative, not exhaustive.",
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
    ]
    append_word_definitions(lines, {
        "pair_words": [
            {"rank": bad_vector_cert.rank, "word": bad_vector_cert.word}
        ]
    })
    append_translation_cert(lines, cert)
    append_translation_check_theorem(lines, cert)
    lines.extend([
        f"theorem {bad_vector_cert.name}_coveredCase :",
        "    checkTranslationCoveredCase",
        f"      {{ pairRank := {bad_vector_cert.rank}, signMask := {bad_vector_cert.mask} }}",
        f"      {bad_vector_cert.name} = true := by",
        "  decide",
        "",
        f"theorem {bad_vector_cert.name}_parametricFailure :",
        "    checkTranslationParametricFailureMatches",
        "      TranslationFamilyFailure.badTranslationVector",
        f"      {bad_vector_cert.name} = true := by",
        "  rfl",
        "",
        "theorem translationFamilyFarkas000_parametricCoveredCase :",
        "    checkTranslationCoveredCase { pairRank := 0, signMask := 1 }",
        "      translationFamilyFarkas000 = true := by",
        "  decide",
        "",
        "theorem translationFamilyFarkas001_parametricCoveredCase :",
        "    checkTranslationCoveredCase { pairRank := 0, signMask := 2 }",
        "      translationFamilyFarkas001 = true := by",
        "  decide",
        "",
        "theorem translationFamilyBadDirection000_parametricCoveredCase :",
        "    checkTranslationCoveredCase { pairRank := 0, signMask := 4 }",
        "      translationFamilyBadDirection000 = true := by",
        "  decide",
        "",
        "theorem translationFamilyBadDirection001_parametricCoveredCase :",
        "    checkTranslationCoveredCase { pairRank := 0, signMask := 5 }",
        "      translationFamilyBadDirection001 = true := by",
        "  decide",
        "",
        "def sampleFarkasParametricBox : TranslationCaseBox where",
        "  startRank := 0",
        "  endRank := 1",
        "  startMask := 1",
        "  endMask := 3",
        "",
        "def sampleFarkasParametricCertForCase : Nat -> Nat -> TranslationCert",
        "  | 0, 1 => translationFamilyFarkas000",
        "  | 0, 2 => translationFamilyFarkas001",
        "  | _, _ => translationFamilyFarkas000",
        "",
        "def sampleFarkasParametricFamily : TranslationParametricFamily where",
        "  name := \"sampleFarkasParametricFamily\"",
        "  failure := TranslationFamilyFailure.farkas",
        "  box := sampleFarkasParametricBox",
        "  certForCase := sampleFarkasParametricCertForCase",
        "  certForCase_sound := by",
        "    intro r mask hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    rcases mask with ⟨maskVal, hmaskLt⟩",
        "    simp [TranslationCaseBox.Contains, sampleFarkasParametricBox] at hcontains",
        "    have hRank : rank = 0 := by omega",
        "    have hMask : maskVal = 1 ∨ maskVal = 2 := by omega",
        "    subst rank",
        "    rcases hMask with rfl | rfl",
        "    · simpa [sampleFarkasParametricCertForCase,",
        "        checkTranslationParametricFailureMatches] using",
        "        And.intro translationFamilyFarkas000_parametricCoveredCase",
        "          (And.intro translationFamilyFarkas000_check",
        "            translationFamilyFarkas000_familyFailure)",
        "    · simpa [sampleFarkasParametricCertForCase,",
        "        checkTranslationParametricFailureMatches] using",
        "        And.intro translationFamilyFarkas001_parametricCoveredCase",
        "          (And.intro translationFamilyFarkas001_check",
        "            translationFamilyFarkas001_familyFailure)",
        "",
        "theorem sampleFarkasParametricFamily_check :",
        "    checkTranslationParametricFamily sampleFarkasParametricFamily = true := by",
        "  norm_num [checkTranslationParametricFamily, sampleFarkasParametricFamily,",
        "    sampleFarkasParametricBox, checkTranslationCaseBox,",
        "    numPairWords, numSignMasks]",
        "",
        "def sampleBadDirectionParametricBox : TranslationCaseBox where",
        "  startRank := 0",
        "  endRank := 1",
        "  startMask := 4",
        "  endMask := 6",
        "",
        "def sampleBadDirectionParametricCertForCase : Nat -> Nat -> TranslationCert",
        "  | 0, 4 => translationFamilyBadDirection000",
        "  | 0, 5 => translationFamilyBadDirection001",
        "  | _, _ => translationFamilyBadDirection000",
        "",
        "def sampleBadDirectionParametricFamily : TranslationParametricFamily where",
        "  name := \"sampleBadDirectionParametricFamily\"",
        "  failure := TranslationFamilyFailure.badDirectionSign",
        "  box := sampleBadDirectionParametricBox",
        "  certForCase := sampleBadDirectionParametricCertForCase",
        "  certForCase_sound := by",
        "    intro r mask hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    rcases mask with ⟨maskVal, hmaskLt⟩",
        "    simp [TranslationCaseBox.Contains, sampleBadDirectionParametricBox] at hcontains",
        "    have hRank : rank = 0 := by omega",
        "    have hMask : maskVal = 4 ∨ maskVal = 5 := by omega",
        "    subst rank",
        "    rcases hMask with rfl | rfl",
        "    · simpa [sampleBadDirectionParametricCertForCase,",
        "        checkTranslationParametricFailureMatches] using",
        "        And.intro translationFamilyBadDirection000_parametricCoveredCase",
        "          (And.intro translationFamilyBadDirection000_check",
        "            translationFamilyBadDirection000_familyFailure)",
        "    · simpa [sampleBadDirectionParametricCertForCase,",
        "        checkTranslationParametricFailureMatches] using",
        "        And.intro translationFamilyBadDirection001_parametricCoveredCase",
        "          (And.intro translationFamilyBadDirection001_check",
        "            translationFamilyBadDirection001_familyFailure)",
        "",
        "theorem sampleBadDirectionParametricFamily_check :",
        "    checkTranslationParametricFamily sampleBadDirectionParametricFamily = true := by",
        "  norm_num [checkTranslationParametricFamily, sampleBadDirectionParametricFamily,",
        "    sampleBadDirectionParametricBox, checkTranslationCaseBox,",
        "    numPairWords, numSignMasks]",
        "",
        "def sampleBadVectorParametricBox : TranslationCaseBox where",
        f"  startRank := {bad_vector_cert.rank}",
        f"  endRank := {bad_vector_cert.rank + 1}",
        f"  startMask := {bad_vector_cert.mask}",
        f"  endMask := {bad_vector_cert.mask + 1}",
        "",
        "def sampleBadVectorParametricCertForCase : Nat -> Nat -> TranslationCert",
        f"  | {bad_vector_cert.rank}, {bad_vector_cert.mask} => {bad_vector_cert.name}",
        f"  | _, _ => {bad_vector_cert.name}",
        "",
        "def sampleBadVectorParametricFamily : TranslationParametricFamily where",
        "  name := \"sampleBadVectorParametricFamily\"",
        "  failure := TranslationFamilyFailure.badTranslationVector",
        "  box := sampleBadVectorParametricBox",
        "  certForCase := sampleBadVectorParametricCertForCase",
        "  certForCase_sound := by",
        "    intro r mask hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    rcases mask with ⟨maskVal, hmaskLt⟩",
        "    simp [TranslationCaseBox.Contains, sampleBadVectorParametricBox] at hcontains",
        f"    have hRank : rank = {bad_vector_cert.rank} := by omega",
        f"    have hMask : maskVal = {bad_vector_cert.mask} := by omega",
        "    subst rank",
        "    subst maskVal",
        "    simpa [sampleBadVectorParametricCertForCase,",
        "      checkTranslationParametricFailureMatches] using",
        f"      And.intro {bad_vector_cert.name}_coveredCase",
        f"        (And.intro {bad_vector_cert.name}_check",
        f"          {bad_vector_cert.name}_parametricFailure)",
        "",
        "theorem sampleBadVectorParametricFamily_check :",
        "    checkTranslationParametricFamily sampleBadVectorParametricFamily = true := by",
        "  norm_num [checkTranslationParametricFamily, sampleBadVectorParametricFamily,",
        "    sampleBadVectorParametricBox, checkTranslationCaseBox,",
        "    numPairWords, numSignMasks]",
        "",
        "def sampleParametricCoverage : TranslationParametricCoverage where",
        "  families :=",
        "    [sampleFarkasParametricFamily,",
        "      sampleBadDirectionParametricFamily,",
        "      sampleBadVectorParametricFamily]",
        "",
        "theorem sampleParametricCoverage_check :",
        "    checkTranslationParametricCoverage sampleParametricCoverage = true := by",
        "  unfold checkTranslationParametricCoverage sampleParametricCoverage",
        "  simp [sampleFarkasParametricFamily_check,",
        "    sampleBadDirectionParametricFamily_check,",
        "    sampleBadVectorParametricFamily_check]",
        "",
        "theorem sampleParametricCoverage_sound",
        "    {r : Fin numPairWords} {mask : SignMask}",
        "    (hcontains : sampleParametricCoverage.ContainsTranslationChoice r mask) :",
        "    exists cert : TranslationCert,",
        "      checkTranslationCoveredCase",
        "          { pairRank := r.val, signMask := mask.val } cert = true /\\",
        "        checkTranslationCert cert = true :=",
        "  checkTranslationParametricCoverage_choice_sound",
        "    sampleParametricCoverage_check hcontains",
        "",
        "noncomputable def checkParametricSamples : Bool :=",
        "  checkTranslationParametricCoverage sampleParametricCoverage",
        "",
        "theorem checkParametricSamples_true :",
        "    checkParametricSamples = true := by",
        "  unfold checkParametricSamples",
        "  exact sampleParametricCoverage_check",
        "",
        "#check checkTranslationParametricFamily",
        "#check checkTranslationParametricFamily_sound",
        "#check exhaustiveTranslationBadDirectionFamily_sound",
        "#check exhaustiveTranslationBadVectorFamily_sound",
        "#check Cuboctahedron.Generated.Translation.sampleParametricCoverage_sound",
        "",
        "end Cuboctahedron.Generated.Translation",
        "",
    ])
    TRANSLATION_PARAMETRIC_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_PARAMETRIC_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_nonidentity_partition_lean() -> None:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.ParametricSample",
        "",
        "/-!",
        "Generated exhaustive compressed-family partition witness for",
        "Step 14E.7B2A.",
        "",
        "This module instantiates the public partition-witness API with exact",
        "classifier predicates over `unrankPairWord`. The full exhaustive",
        "fallback remains gated until Step 14E.7B emits residual certificates.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity",
        "",
        "noncomputable def exhaustiveFamilyPartition : NonIdFamilyPartition where",
        "  CoversBadDirection := fun r =>",
        "    nonIdEarlyFamilyClassOfRank r =",
        "      NonIdFamilyClass.badDirectionSign",
        "  CoversBadPairBalance := fun r =>",
        "    nonIdEarlyFamilyClassOfRank r =",
        "      NonIdFamilyClass.badPairBalance",
        "  badDirection_sound := by",
        "    intro r hclass",
        "    exact nonIdEarlyFamilyClassOfRank_badDirection_sound hclass",
        "  badPairBalance_sound := by",
        "    intro r hclass",
        "    exact nonIdEarlyFamilyClassOfRank_badPairBalance_sound hclass",
        "",
        "noncomputable def sampleFamilyPartition : NonIdFamilyPartition :=",
        "  exhaustiveFamilyPartition",
        "",
        "theorem exhaustiveBadDirectionPartition_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : exhaustiveFamilyPartition.CoversBadDirection r) :",
        "    NonIdBadDirectionFamilyCovers r :=",
        "  exhaustiveFamilyPartition.badDirection_sound hcontains",
        "",
        "theorem exhaustiveBadPairBalancePartition_sound",
        "    {r : Fin numPairWords}",
        "    (hcontains : exhaustiveFamilyPartition.CoversBadPairBalance r) :",
        "    NonIdBadPairBalanceFamilyCovers r :=",
        "  exhaustiveFamilyPartition.badPairBalance_sound hcontains",
        "",
        "#check exhaustiveNonIdBadDirectionFamily_partition",
        "#check exhaustiveNonIdBadPairBalanceFamily_partition",
        "#check exhaustiveBadDirectionPartition_sound",
        "#check exhaustiveBadPairBalancePartition_sound",
        "",
        "end Cuboctahedron.Generated.NonIdentity",
        "",
    ]
    NONIDENTITY_PARTITION_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_PARTITION_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_translation_partition_lean() -> None:
    lines = [
        "import Cuboctahedron.Generated.Translation.ParametricSample",
        "",
        "/-!",
        "Generated exhaustive compressed-family partition witness for",
        "Step 14E.7B2A.",
        "",
        "This module instantiates the public partition-witness API with exact",
        "classifier predicates over `unrankPairWord` and `SignMask`. The full",
        "exhaustive fallback remains gated until Step 14E.7B emits Farkas",
        "certificates.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation",
        "",
        "noncomputable def exhaustiveFamilyPartition : TranslationFamilyPartition where",
        "  CoversBadDirection := fun r mask =>",
        "    translationEarlyFamilyClassOfChoice r mask =",
        "      TranslationFamilyClass.badDirectionSign",
        "  CoversBadVector := fun r mask =>",
        "    translationEarlyFamilyClassOfChoice r mask =",
        "      TranslationFamilyClass.badTranslationVector",
        "  badDirection_sound := by",
        "    intro r mask hclass",
        "    exact translationEarlyFamilyClassOfChoice_badDirection_sound hclass",
        "  badVector_sound := by",
        "    intro r mask hclass",
        "    exact translationEarlyFamilyClassOfChoice_badVector_sound hclass",
        "",
        "noncomputable def sampleFamilyPartition : TranslationFamilyPartition :=",
        "  exhaustiveFamilyPartition",
        "",
        "theorem exhaustiveBadDirectionPartition_sound",
        "    {r : Fin numPairWords} {mask : SignMask}",
        "    (hcontains : exhaustiveFamilyPartition.CoversBadDirection r mask) :",
        "    TranslationBadDirectionFamilyCovers r mask :=",
        "  exhaustiveFamilyPartition.badDirection_sound hcontains",
        "",
        "theorem exhaustiveBadVectorPartition_sound",
        "    {r : Fin numPairWords} {mask : SignMask}",
        "    (hcontains : exhaustiveFamilyPartition.CoversBadVector r mask) :",
        "    TranslationBadVectorFamilyCovers r mask :=",
        "  exhaustiveFamilyPartition.badVector_sound hcontains",
        "",
        "#check exhaustiveTranslationBadDirectionFamily_partition",
        "#check exhaustiveTranslationBadVectorFamily_partition",
        "#check exhaustiveBadDirectionPartition_sound",
        "#check exhaustiveBadVectorPartition_sound",
        "",
        "end Cuboctahedron.Generated.Translation",
        "",
    ]
    TRANSLATION_PARTITION_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_PARTITION_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def build_parametric_family_checkers_payload() -> dict:
    prefix = load_json_artifact(
        PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
        "prefix-parametric-compression",
    )
    required_semantic_api = [
        "checkNonIdParametricFamily",
        "checkNonIdParametricFamily_sound",
        "exhaustiveNonIdBadDirectionFamily_sound",
        "exhaustiveNonIdBadPairBalanceFamily_sound",
        "checkTranslationParametricFamily",
        "checkTranslationParametricFamily_sound",
        "exhaustiveTranslationBadDirectionFamily_sound",
        "exhaustiveTranslationBadVectorFamily_sound",
    ]
    required_partition_api = [
        "exhaustiveNonIdBadDirectionFamily_partition",
        "exhaustiveNonIdBadPairBalanceFamily_partition",
        "exhaustiveTranslationBadDirectionFamily_partition",
        "exhaustiveTranslationBadVectorFamily_partition",
    ]
    bad_vector_rank = 12_510_049
    bad_vector_mask = 37
    bad_vector_cert = build_translation_family_cert(
        bad_vector_rank,
        bad_vector_mask,
        "translationParametricBadVector000",
        "badTranslationVector",
    )
    if bad_vector_cert.b != vec((0, 0, 0)):
        raise ValueError("selected badTranslationVector sample is not zero")
    write_nonidentity_parametric_lean()
    write_translation_parametric_lean(bad_vector_cert)
    write_nonidentity_partition_lean()
    write_translation_partition_lean()
    write_all_generated()
    payload = {
        "schema_version": 1,
        "mode": "parametric-family-checkers",
        "complete": True,
        "checker_layer_complete": True,
        "exhaustive_coverage_complete": False,
        "source": str(PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT)),
        "prefix_parametric_ready": prefix.get("decision", {}).get("ready_for_14E7") is True,
        "required_api": required_semantic_api,
        "generated_lean": {
            "nonidentity": path_status(NONIDENTITY_PARAMETRIC_LEAN_PATH),
            "translation": path_status(TRANSLATION_PARAMETRIC_LEAN_PATH),
            "nonidentity_partition": path_status(NONIDENTITY_PARTITION_LEAN_PATH),
            "translation_partition": path_status(TRANSLATION_PARTITION_LEAN_PATH),
            "all_generated": path_status(ALL_GENERATED_PATH),
        },
        "family_partition_witnesses": {
            "complete": True,
            "exhaustive_partition_complete": True,
            "required_api": required_partition_api,
            "source_counts": {
                "nonidentity": prefix["nonidentity"]["failure_counts"],
                "translation": prefix["translation"]["failure_counts"],
            },
            "generated_lean": {
                "nonidentity": path_status(NONIDENTITY_PARTITION_LEAN_PATH),
                "translation": path_status(TRANSLATION_PARTITION_LEAN_PATH),
            },
            "coverage_basis": (
                "Lean classifier predicates over unrankPairWord and SignMask "
                "derive the public family-cover predicates. Full fallback "
                "coverage remains gated until Step 14E.7B emits residual and "
                "Farkas evidence."
            ),
            "classification_samples": {
                "nonidentity": [
                    {"rank": 13, "expected": "badDirectionSign"},
                    {"rank": 102, "expected": "badPairBalance"},
                    {"rank": 12, "expected": "needsAxisSolveOrSimulation"},
                ],
                "translation": [
                    {"rank": 0, "mask": 4, "expected": "badDirectionSign"},
                    {
                        "rank": bad_vector_rank,
                        "mask": bad_vector_mask,
                        "expected": "badTranslationVector",
                    },
                ],
            },
        },
        "nonidentity": {
            "families": [
                {
                    "name": "sampleBadDirectionParametricFamily",
                    "failure": "badDirectionSign",
                    "rank_interval": [13, 16],
                    "sample_ranks": [13, 14, 15],
                },
                {
                    "name": "sampleBadPairBalanceParametricFamily",
                    "failure": "badPairBalance",
                    "rank_interval": [102, 103],
                    "sample_ranks": [102],
                },
            ],
            "profile_failures": prefix["nonidentity"]["parametric_families"],
        },
        "translation": {
            "families": [
                {
                    "name": "sampleFarkasParametricFamily",
                    "failure": "farkas",
                    "case_box": {"rank": [0, 1], "mask": [1, 3]},
                    "sample_cases": [
                        {"rank": 0, "mask": 1},
                        {"rank": 0, "mask": 2},
                    ],
                },
                {
                    "name": "sampleBadDirectionParametricFamily",
                    "failure": "badDirectionSign",
                    "case_box": {"rank": [0, 1], "mask": [4, 6]},
                    "sample_cases": [
                        {"rank": 0, "mask": 4},
                        {"rank": 0, "mask": 5},
                    ],
                },
                {
                    "name": "sampleBadVectorParametricFamily",
                    "failure": "badTranslationVector",
                    "case_box": {
                        "rank": [bad_vector_rank, bad_vector_rank + 1],
                        "mask": [bad_vector_mask, bad_vector_mask + 1],
                    },
                    "sample_cases": [
                        {"rank": bad_vector_rank, "mask": bad_vector_mask}
                    ],
                    "sample_word": bad_vector_cert.word,
                    "sample_seq": bad_vector_cert.seq,
                    "sample_translation_vector": vec_to_json(bad_vector_cert.b),
                },
            ],
            "profile_failures": prefix["translation"]["parametric_families"],
            "shared_farkas_shapes": prefix["translation"]["shared_farkas_shapes"],
        },
        "notes": [
            "Generated samples prove the parametric checker API and representative family witnesses.",
            "The family partition theorem names are compiled and exported through classifier-backed witness modules.",
            "The high-volume early-failure partition is complete; full fallback coverage remains gated until Step 14E.7B emits residual/Farkas evidence.",
            "This artifact does not claim complete exhaustive Lean coverage.",
        ],
    }
    return payload


def write_parametric_family_checkers_json(payload: dict) -> None:
    PARAMETRIC_FAMILY_CHECKERS_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    PARAMETRIC_FAMILY_CHECKERS_JSON_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


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
    aggregate = None
    if AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.exists():
        aggregate = load_json_artifact(
            AGGREGATE_COMPRESSION_PROFILE_JSON_PATH,
            "aggregate-compression-profile",
        )
        if not aggregate.get("complete", False):
            aggregate = None
    prefix_parametric = None
    if PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.exists():
        prefix_parametric = load_json_artifact(
            PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
            "prefix-parametric-compression",
        )
        if not prefix_parametric.get("complete", False):
            prefix_parametric = None

    estimates = profile["size_estimates"]
    exact_summary = estimates.get("exact_state_group_summary", {})
    nonid_exact = exact_summary.get("nonidentity", {})
    translation_exact = exact_summary.get("translation", {})
    if prefix_parametric is not None:
        current_estimated_bytes = int(
            prefix_parametric["size_ladder"]["estimated_lean_bytes"]
        )
        canonical_cert_estimate = int(
            prefix_parametric["size_ladder"]["final_cert_estimate"]
        )
    elif aggregate is not None:
        current_estimated_bytes = int(aggregate["size_ladder"]["estimated_lean_bytes"])
        canonical_cert_estimate = int(
            aggregate["size_ladder"]["canonical_representative_estimate"]
        )
    else:
        current_estimated_bytes = int(exhaustive["estimate"]["estimated_lean_bytes"])
        canonical_cert_estimate = int(exhaustive["estimate"]["canonical_cert_estimate"])
    thresholds = [
        threshold_record("1GiB", GIB, current_estimated_bytes),
        threshold_record("500MiB", 500 * MIB, current_estimated_bytes),
        threshold_record("100MiB", 100 * MIB, current_estimated_bytes),
    ]

    nonid_hist_available = aggregate is not None or int(nonid_exact.get("pathSensitiveUnbucketed", 0)) == 0
    translation_hist_available = aggregate is not None or int(translation_exact.get("pathSensitiveUnbucketed", 0)) == 0
    shared_farkas_groups = (
        int(aggregate["translation"]["farkas_shape_histogram"]["distinct"])
        if aggregate is not None
        else int(estimates.get("shared_farkas_groups", 0))
    )
    sample_nonid = family_sample_summary(nonidentity_family, "covered_ranks")
    sample_translation = family_sample_summary(translation_family, "covered_cases")
    if aggregate is not None:
        translation_sharing = {
            "sample_normalized_constraint_systems":
                int(aggregate["translation"]["constraint_system_histogram"]["distinct"]),
            "sample_normalized_farkas_shapes":
                int(aggregate["translation"]["farkas_shape_histogram"]["distinct"]),
            "full_constraint_histogram_available": True,
            "full_farkas_shape_histogram_available": True,
        }
    else:
        translation_sharing = translation_sample_sharing_summary(translation_family)

    full_histograms_available = (
        nonid_hist_available
        and translation_hist_available
        and translation_sharing["full_constraint_histogram_available"]
        and translation_sharing["full_farkas_shape_histogram_available"]
    )
    if prefix_parametric is not None:
        status = prefix_parametric["decision"]["status"]
        ready_for_14e7 = bool(prefix_parametric["decision"]["ready_for_14E7"])
        recommendation = prefix_parametric["decision"]["recommendation"]
    elif aggregate is not None:
        status = aggregate["decision"]["status"]
        ready_for_14e7 = bool(aggregate["decision"]["ready_for_14E7"])
        recommendation = aggregate["decision"]["recommendation"]
    elif full_histograms_available and thresholds[0]["fits"]:
        status = "ready_for_14E7"
        ready_for_14e7 = True
        recommendation = "proceed_to_concrete_exhaustive_coverage_witness"
    elif not full_histograms_available:
        status = "blocked_needs_full_compression_histograms"
        ready_for_14e7 = False
        recommendation = (
            "add_full_aggregate_compression_profiler_for_nonidentity_failure_families_"
            "and_translation_constraint_farkas_shapes"
        )
    else:
        status = "blocked_exceeds_size_budget"
        ready_for_14e7 = False
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
            "aggregate_compression_profile": path_status(AGGREGATE_COMPRESSION_PROFILE_JSON_PATH),
            "prefix_parametric_compression": path_status(
                PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH
            ),
        },
        "canonical_counts": canonical["canonical_counts"],
        "nonidentity": {
            "raw_cases": counts["nonidentity_words"],
            "compressed_linear_groups": int(
                estimates.get("compressed_nonidentity_linear_groups", 0)
            ),
            "full_failure_family_histogram_available": nonid_hist_available,
            "path_sensitive_unbucketed": int(
                0 if aggregate is not None else nonid_exact.get("pathSensitiveUnbucketed", 0)
            ),
            "aggregate_shape_count": (
                int(aggregate["nonidentity"]["shape_histogram"]["distinct"])
                if aggregate is not None
                else 0
            ),
            "sample_family_summary": sample_nonid,
        },
        "translation": {
            "raw_cases": counts["translation_sign_assignments"],
            "shared_farkas_groups": shared_farkas_groups,
            "full_constraint_histogram_available": translation_hist_available,
            "path_sensitive_unbucketed": int(
                0 if aggregate is not None else translation_exact.get("pathSensitiveUnbucketed", 0)
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
        "prefix_parametric": (
            {
                "available": True,
                "source": str(
                    PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT)
                ),
                "final_cert_estimate": int(
                    prefix_parametric["size_ladder"]["final_cert_estimate"]
                ),
                "estimated_lean_bytes": int(
                    prefix_parametric["size_ladder"]["estimated_lean_bytes"]
                ),
                "nonidentity_residual_singletons": int(
                    prefix_parametric["size_ladder"][
                        "nonidentity_residual_singleton_estimate"
                    ]
                ),
                "translation_shared_farkas": int(
                    prefix_parametric["size_ladder"][
                        "translation_shared_farkas_estimate"
                    ]
                ),
            }
            if prefix_parametric is not None
            else {"available": False}
        ),
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
            "source": (
                str(PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT))
                if prefix_parametric is not None
                else
                str(AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.relative_to(REPO_ROOT))
                if aggregate is not None
                else "compression-audit-local"
            ),
        },
    }


def write_compression_audit_json(payload: dict, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def encode_uvarint(value: int) -> bytes:
    if value < 0:
        raise ValueError("varint cannot encode negative values")
    out = bytearray()
    while value >= 0x80:
        out.append((value & 0x7F) | 0x80)
        value >>= 7
    out.append(value)
    return bytes(out)


def compact_section_table_blob(
    *,
    pilot_limit: int,
    nonidentity_ranks: list[int],
    translation_cases: list[dict],
    bundle_kind: int = 1,
) -> bytes:
    sections: list[tuple[int, bytes]] = []
    sections.append((1, encode_uvarint(pilot_limit)))
    nonid_payload = bytearray(encode_uvarint(len(nonidentity_ranks)))
    for rank in nonidentity_ranks:
        nonid_payload.extend(encode_uvarint(rank))
    sections.append((2, bytes(nonid_payload)))
    translation_payload = bytearray(encode_uvarint(len(translation_cases)))
    for case in translation_cases:
        translation_payload.extend(encode_uvarint(int(case["pair_rank"])))
        translation_payload.extend(encode_uvarint(int(case["sign_mask"])))
    sections.append((3, bytes(translation_payload)))

    header = bytearray(b"COCB")
    header.append(1)
    header.append(bundle_kind)
    header.extend(encode_uvarint(len(sections)))
    for section_id, payload in sections:
        header.extend(encode_uvarint(section_id))
        header.extend(encode_uvarint(len(payload)))
    for _section_id, payload in sections:
        header.extend(payload)
    return bytes(header)


def compact_blob_text(blob: bytes) -> str:
    return base64.b64encode(blob).decode("ascii")


def compact_blob_sha256(blob: bytes) -> str:
    return hashlib.sha256(blob).hexdigest()


def compact_sample_cases() -> tuple[list[int], list[dict]]:
    return [1], [{"pair_rank": 0, "sign_mask": 0}]


def compact_pilot_cases(limit: int) -> tuple[list[int], list[dict]]:
    nonidentity_ranks: list[int] = []
    translation_cases: list[dict] = []
    terminal_count = 0
    rank = 0
    identity = mat_id()
    while terminal_count < limit:
        word = pair_word_at_rank(rank)
        if total_linear(word) == identity:
            for mask in range(64):
                if terminal_count >= limit:
                    break
                translation_cases.append({"pair_rank": rank, "sign_mask": mask})
                terminal_count += 1
        else:
            nonidentity_ranks.append(rank)
            terminal_count += 1
        rank += 1
    return nonidentity_ranks, translation_cases


def write_compact_pilot_lean(blob_path: Path) -> None:
    relative_parts = ['".."', '".."', '"certs"', f'"{blob_path.name}"']
    include_path = "/".join(relative_parts)
    COMPACT_PILOT_LEAN_PATH.write_text(
        "import Cuboctahedron.Generated.NonIdentity.Chunk0000\n"
        "import Cuboctahedron.Generated.Translation.Chunk0000\n"
        "import Cuboctahedron.Search.CertificateChecker\n\n"
        "/-!\n"
        "Generated compact certificate pilot wrapper for Step 14E.6D.\n"
        "This wrapper includes and decodes the tiny sample blob, then checks a\n"
        "semantic sample bundle built from existing generated sample chunks.  The\n"
        "100k compact pilot is independently decoded and benchmarked by the\n"
        "external checker; it is not an exhaustive coverage witness.\n"
        "-/\n\n"
        "namespace Cuboctahedron.Generated\n\n"
        f"def compactPilotBlob : String := include_str {include_path}\n\n"
        "def compactPilotDecoded : Except DecodeError CertBundle :=\n"
        "  decodeCertBlob compactPilotBlob\n\n"
        "noncomputable def compactPilotBundle : CertBundle :=\n"
        "  { kind := BundleKind.pilot\n"
        "    schemaVersion := 1\n"
        "    pilotLimit := 2\n"
        "    nonidentityRanks := #[1]\n"
        "    translationCases := #[{ pairRank := 0, signMask := 0 }]\n"
        "    sampleNonidentityRanks := #[1]\n"
        "    sampleTranslationCases := #[{ pairRank := 0, signMask := 0 }]\n"
        "    sampleNonidentityCerts := NonIdentity.Chunk0000.certs\n"
        "    sampleTranslationCerts := Translation.Chunk0000.certs }\n\n"
        "noncomputable def compactPilotCheck : Bool :=\n"
        "  checkPilotCertBundle compactPilotBundle\n\n"
        "theorem compactPilotCheck_true : compactPilotCheck = true := by\n"
        "  have hNonId :\n"
        "      checkNonIdCoveredRankList [1]\n"
        "        NonIdentity.Chunk0000.certs.toList = true := by\n"
        "    simp [NonIdentity.Chunk0000.certs, NonIdentity.Chunk0000.chunk,\n"
        "      SmallSample.nonIdCerts, checkNonIdCoveredRankList,\n"
        "      NonIdentity.Chunk0000.nonIdBadDirection000_coveredRank,\n"
        "      SmallSample.nonIdBadDirection000_check]\n"
        "  have hTranslation :\n"
        "      checkTranslationCoveredCaseList\n"
        "        [{ pairRank := 0, signMask := 0 }]\n"
        "        Translation.Chunk0000.certs.toList = true := by\n"
        "    have hCovered :\n"
        "        checkTranslationCoveredCase { pairRank := 0, signMask := 0 }\n"
        "          SmallSample.translationBadDirection000 = true := by\n"
        "      simpa [Translation.Chunk0000.coveredCase000] using\n"
        "        Translation.Chunk0000.translationBadDirection000_coveredCase\n"
        "    simp [Translation.Chunk0000.certs, Translation.Chunk0000.chunk,\n"
        "      SmallSample.translationCerts, checkTranslationCoveredCaseList,\n"
        "      hCovered,\n"
        "      SmallSample.translationBadDirection000_check]\n"
        "  simp [compactPilotCheck, checkPilotCertBundle, compactPilotBundle,\n"
        "    hNonId, hTranslation]\n\n"
        "def compactPilotCoverage : PilotGeneratedCoverage compactPilotBundle :=\n"
        "  checkPilotCertBundle_sound compactPilotCheck_true\n",
        encoding="utf-8",
    )


def compact_payload(
    *,
    mode: str,
    limit: int,
    blob_path: Path,
    nonidentity_ranks: list[int],
    translation_cases: list[dict],
) -> dict:
    blob = compact_section_table_blob(
        pilot_limit=len(nonidentity_ranks) + len(translation_cases),
        nonidentity_ranks=nonidentity_ranks,
        translation_cases=translation_cases,
    )
    blob_text = compact_blob_text(blob)
    blob_path.parent.mkdir(parents=True, exist_ok=True)
    blob_path.write_text(blob_text, encoding="ascii")
    generated_lean_equivalent_bytes = max(1, limit) * 512
    compact_total_bytes = len(blob_text) + 4096
    size_ratio = generated_lean_equivalent_bytes / compact_total_bytes
    selected_backend = "generated_lean_fallback"
    failure_reasons = [
        "compact_pilot_does_not_semantically_reconstruct_every_terminal_certificate",
        "full_bundle_checker_not_enabled_until_step_14E7",
    ]
    if mode == "compact-cert-sample":
        selected_backend = "sample_only"
        failure_reasons = ["sample_mode_is_not_a_backend_selection"]
    return {
        "schema_version": 1,
        "mode": mode,
        "complete": True,
        "proof_complete": False,
        "bundle_kind": "pilot",
        "pilot_limit": len(nonidentity_ranks) + len(translation_cases),
        "coverage_counts": {
            "nonidentity_terminals": len(nonidentity_ranks),
            "translation_terminals": len(translation_cases),
            "total_terminals": len(nonidentity_ranks) + len(translation_cases),
        },
        "blob": {
            "path": str(blob_path.relative_to(REPO_ROOT)),
            "bytes": len(blob_text),
            "raw_bytes": len(blob),
            "sha256": compact_blob_sha256(blob),
            "encoding": "base64",
            "magic": "COCB",
            "schema_version": 1,
        },
        "pilot_slice": {
            "first_nonidentity_ranks": nonidentity_ranks[:10],
            "first_translation_cases": translation_cases[:10],
        },
        "backend_evaluation": {
            "generated_lean_equivalent_bytes": generated_lean_equivalent_bytes,
            "compact_source_plus_blob_bytes": compact_total_bytes,
            "size_ratio": size_ratio,
            "trusted_lean_check": mode == "compact-cert-sample",
            "uses_native_decide": False,
            "selected_backend": selected_backend,
            "failure_reasons": failure_reasons,
        },
    }


def build_compact_cert_sample_payload() -> dict:
    nonidentity_ranks, translation_cases = compact_sample_cases()
    payload = compact_payload(
        mode="compact-cert-sample",
        limit=len(nonidentity_ranks) + len(translation_cases),
        blob_path=COMPACT_CERT_SAMPLE_BLOB_PATH,
        nonidentity_ranks=nonidentity_ranks,
        translation_cases=translation_cases,
    )
    write_compact_pilot_lean(COMPACT_CERT_SAMPLE_BLOB_PATH)
    return payload


def build_compact_cert_pilot_payload(limit: int) -> dict:
    if limit < 0:
        raise ValueError("--limit must be nonnegative")
    nonidentity_ranks, translation_cases = compact_pilot_cases(limit)
    return compact_payload(
        mode="compact-cert-pilot",
        limit=limit,
        blob_path=COMPACT_CERT_PILOT_BLOB_PATH,
        nonidentity_ranks=nonidentity_ranks,
        translation_cases=translation_cases,
    )


def write_compact_json(payload: dict, path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n",
                    encoding="utf-8")


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
            "aggregate-compression-profile",
            "prefix-parametric-compression",
            "parametric-family-checkers",
            "residual-nonidentity-templates",
            "compact-residual-certificates",
            "packed-residual-certificates",
            "proof-carrying-structured-literals",
            "compact-cert-sample",
            "compact-cert-pilot",
        ],
        help="generation mode",
    )
    parser.add_argument(
        "--profile-limit",
        type=int,
        help="development-only limit for profile-exhaustive-states",
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=100_000,
        help="case limit for compact-cert-pilot",
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
        "--aggregate-profile-output",
        type=Path,
        default=AGGREGATE_COMPRESSION_PROFILE_JSON_PATH,
        help="output path for aggregate-compression-profile JSON",
    )
    parser.add_argument(
        "--prefix-parametric-output",
        type=Path,
        default=PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
        help="output path for prefix-parametric-compression JSON",
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
        "--full-emission-jobs",
        type=int,
        default=0,
        help=(
            "parallel worker count for approved exhaustive fallback emission; "
            "0 uses the detected CPU count"
        ),
    )
    parser.add_argument(
        "--full-emission-prefix-depth",
        type=int,
        default=3,
        help="valid pair-word prefix depth used to split parallel emission shards",
    )
    parser.add_argument(
        "--full-emission-target-chunk-bytes",
        type=int,
        default=DEFAULT_FULL_EMISSION_TARGET_CHUNK_BYTES,
        help=(
            "target encoded bytes per generated packed fallback chunk; "
            "lower values reduce Lean peak memory at the cost of more chunks"
        ),
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
            "exhaustive-real-certs/compression-audit/"
            "aggregate-compression-profile/prefix-parametric-compression/"
            "parametric-family-checkers/"
            "residual-nonidentity-templates/"
            "proof-carrying-structured-literals/"
            "compact-cert-sample/compact-cert-pilot"
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
        global FULL_EMISSION_TARGET_CHUNK_BYTES
        if args.generated_data_budget_gib < 0:
            parser.error("--generated-data-budget-gib must be nonnegative")
        if args.required_free_gib < 0:
            parser.error("--required-free-gib must be nonnegative")
        if args.full_emission_target_chunk_bytes < 4096:
            parser.error("--full-emission-target-chunk-bytes must be at least 4096")
        FULL_EMISSION_TARGET_CHUNK_BYTES = args.full_emission_target_chunk_bytes
        full_emission_jobs = (
            max(1, os.cpu_count() or 1)
            if args.full_emission_jobs == 0
            else args.full_emission_jobs
        )
        if full_emission_jobs < 1:
            parser.error("--full-emission-jobs must be positive or 0 for auto")
        if not 0 <= args.full_emission_prefix_depth <= 13:
            parser.error("--full-emission-prefix-depth must be between 0 and 13")
        payload = build_exhaustive_real_certs_summary(
            profile_input=args.profile_input,
            generated_data_budget_gib=args.generated_data_budget_gib,
            required_free_gib=args.required_free_gib,
            approve_large_exhaustive=args.approve_large_exhaustive,
            allow_flat_exhaustive=args.allow_flat_exhaustive,
            full_emission_jobs=full_emission_jobs,
            full_emission_prefix_depth=args.full_emission_prefix_depth,
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
    if mode == "residual-nonidentity-templates":
        if args.profile_limit is not None and args.profile_limit < 0:
            parser.error("--profile-limit must be nonnegative")
        payload = build_residual_nonidentity_templates_payload(
            limit=args.profile_limit
        )
        write_residual_nonidentity_templates_lean(payload)
        write_residual_nonidentity_templates_json(payload)
        write_all_generated()
        print("generated residual nonidentity proof templates")
        print(
            "residual cases: "
            f"{payload['residual_singleton_cases']:,}"
        )
        print(
            "template certs: "
            f"{len(payload['certs'])}"
        )
        print(f"json: {RESIDUAL_NONIDENTITY_TEMPLATES_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {NONIDENTITY_RESIDUAL_TEMPLATES_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "compact-residual-certificates":
        payload = build_compact_residual_certificates_payload()
        write_compact_residual_certificates_json(payload)
        write_all_generated()
        projection = payload["projection"]
        print("generated compact residual nonidentity certificate pilot")
        print(f"pilot certs: {projection['pilot_cert_count']}")
        print(
            "projected residual source: "
            f"{projection['projected_residual_source_gib']:.2f} GiB"
        )
        print(f"size safe: {projection['size_safe']}")
        print(f"json: {COMPACT_RESIDUAL_CERTIFICATES_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {NONIDENTITY_RESIDUAL_COMPACT_PILOT_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "packed-residual-certificates":
        payload = build_packed_residual_certificates_payload()
        write_packed_residual_certificates_json(payload)
        write_all_generated()
        projection = payload["projection"]
        print("generated packed residual nonidentity certificate pilot")
        print(f"pilot certs: {projection['pilot_cert_count']}")
        print(
            "projected residual source: "
            f"{projection['projected_residual_source_gib']:.2f} GiB"
        )
        print(f"size safe: {projection['size_safe']}")
        print(f"json: {PACKED_RESIDUAL_CERTIFICATES_JSON_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {NONIDENTITY_RESIDUAL_PACKED_PILOT_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "proof-carrying-structured-literals":
        payload = build_proof_carrying_structured_literals_payload()
        write_proof_carrying_structured_literals_json(payload)
        write_all_generated()
        projection = payload["projection"]
        print("generated proof-carrying structured-literal smoke backend")
        print(
            "projected proof-carrying source: "
            f"{projection['projected_total_source_gib']:.2f} GiB"
        )
        print(f"size safe: {projection['size_safe']}")
        print(
            "json: "
            f"{PROOF_CARRYING_STRUCTURED_LITERALS_JSON_PATH.relative_to(REPO_ROOT)}"
        )
        print(
            "nonidentity lean: "
            f"{NONIDENTITY_RESIDUAL_PROOF_CARRYING_SMOKE_LEAN_PATH.relative_to(REPO_ROOT)}"
        )
        print(
            "translation lean: "
            f"{TRANSLATION_FARKAS_PROOF_CARRYING_SMOKE_LEAN_PATH.relative_to(REPO_ROOT)}"
        )
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
    if mode == "aggregate-compression-profile":
        if args.profile_limit is not None and args.profile_limit < 0:
            parser.error("--profile-limit must be nonnegative")
        payload = exact_profile.build_aggregate_compression_profile_payload(
            limit=args.profile_limit
        )
        exact_profile.write_aggregate_compression_profile_payload(
            payload,
            args.aggregate_profile_output,
        )
        exact_profile.print_aggregate_compression_summary(payload)
        print(f"json: {args.aggregate_profile_output}")
        return
    if mode == "prefix-parametric-compression":
        payload = build_prefix_parametric_compression_payload()
        write_prefix_parametric_compression_json(
            payload,
            args.prefix_parametric_output,
        )
        print("generated prefix/parametric compression plan")
        print(
            "final certificate estimate: "
            f"{payload['size_ladder']['final_cert_estimate']:,}"
        )
        print(
            "estimated Lean source: "
            f"{payload['size_ladder']['estimated_lean_gib']:.2f} GiB"
        )
        for threshold in payload["size_ladder"]["thresholds"]:
            verdict = "fits" if threshold["fits"] else "does not fit"
            print(f"{threshold['name']}: {verdict}")
        print(f"decision: {payload['decision']['status']}")
        print(f"recommendation: {payload['decision']['recommendation']}")
        print(f"json: {args.prefix_parametric_output}")
        return
    if mode == "parametric-family-checkers":
        payload = build_parametric_family_checkers_payload()
        write_parametric_family_checkers_json(payload)
        print("generated parametric family checker witnesses")
        print(
            "nonidentity families: "
            f"{len(payload['nonidentity']['families'])}"
        )
        print(
            "translation families: "
            f"{len(payload['translation']['families'])}"
        )
        print(f"json: {PARAMETRIC_FAMILY_CHECKERS_JSON_PATH}")
        print(f"lean: {NONIDENTITY_PARAMETRIC_LEAN_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {TRANSLATION_PARAMETRIC_LEAN_PATH.relative_to(REPO_ROOT)}")
        return
    if mode == "compact-cert-sample":
        payload = build_compact_cert_sample_payload()
        write_compact_json(payload, COMPACT_CERT_SAMPLE_JSON_PATH)
        print("generated compact certificate sample")
        print(f"terminals: {payload['coverage_counts']['total_terminals']:,}")
        print(f"blob bytes: {payload['blob']['bytes']:,}")
        print(f"json: {COMPACT_CERT_SAMPLE_JSON_PATH}")
        return
    if mode == "compact-cert-pilot":
        if args.limit < 0:
            parser.error("--limit must be nonnegative")
        payload = build_compact_cert_pilot_payload(args.limit)
        write_compact_json(payload, COMPACT_CERT_PILOT_JSON_PATH)
        print("generated compact certificate pilot")
        print(f"terminals: {payload['coverage_counts']['total_terminals']:,}")
        print(f"blob bytes: {payload['blob']['bytes']:,}")
        print(
            "selected backend: "
            f"{payload['backend_evaluation']['selected_backend']}"
        )
        print(f"json: {COMPACT_CERT_PILOT_JSON_PATH}")
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
