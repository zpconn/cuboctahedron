#!/usr/bin/env python3
"""Independently check generated Step 14C sample data.

This checker is not trusted by Lean. Its job is to catch generator mistakes
before Lean checks the emitted certificates.
"""

from __future__ import annotations

import argparse
import base64
import hashlib
import json
import math
from functools import lru_cache
from fractions import Fraction
from pathlib import Path
from typing import Iterable

import exact_profile


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"
COVERAGE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_manifest.json"
CANONICAL_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_symmetry_sample.json"
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
AGGREGATE_COMPRESSION_PROFILE_JSON_PATH = exact_profile.AGGREGATE_PROFILE_JSON_PATH
PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH = exact_profile.PREFIX_PARAMETRIC_JSON_PATH
CANONICAL_ORBIT_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_orbit_coverage.json"
CPP_CANONICAL_ORBIT_SOURCE_PATH = REPO_ROOT / "scripts" / "canonical_orbit_coverage.cpp"
CPP_CANONICAL_ORBIT_BINARY_PATH = Path("/tmp") / "cuboctahedron_canonical_orbit_coverage"
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
MIB = 1024 ** 2
GIB = 1024 ** 3

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

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]
Aff = tuple[Mat, Vec]
Vec4 = tuple[Fraction, Fraction, Fraction, Fraction]
Mat4 = tuple[tuple[Fraction, Fraction, Fraction, Fraction], ...]


def require(condition, message):
    if not condition:
        raise SystemExit(f"check failed: {message}")


def parse_rat(text: str) -> Fraction:
    return Fraction(text)


def vec(values: Iterable[int | Fraction]) -> Vec:
    x, y, z = values
    return (Fraction(x), Fraction(y), Fraction(z))


def vector_from_json(value) -> Vec:
    return tuple(parse_rat(entry) for entry in value)  # type: ignore[return-value]


def matrix_from_json(value) -> Mat:
    return tuple(tuple(parse_rat(entry) for entry in row) for row in value)


def matrix4_from_json(value) -> Mat4:
    return tuple(tuple(parse_rat(entry) for entry in row) for row in value)  # type: ignore[return-value]


def identity_matrix() -> Mat:
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
    return identity_matrix(), vec((0, 0, 0))


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


def valid_pair_word(word):
    return len(word) == 13 and {pair_id: word.count(pair_id) for pair_id in PAIR_IDS} == PAIR_COUNTS


def multinomial_count(counts):
    total = sum(counts.values())
    denominator = 1
    for pair_id in PAIR_IDS:
        denominator *= math.factorial(counts[pair_id])
    return math.factorial(total) // denominator


def lex_rank_pair_word(word):
    require(valid_pair_word(word), "lex-rank valid word")
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


def total_linear(word):
    pref = identity_matrix()
    for pair_id in word:
        pref = mat_mul(pref, RPAIR[pair_id])
    return mat_mul(pref, RPAIR["x"])


def prefix_matrices(word):
    pref = [identity_matrix()]
    for pair_id in word:
        pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
    return pref


def path_prefix_matrices(seq):
    pref = [identity_matrix()]
    for index in range(1, 14):
        pref.append(mat_mul(pref[-1], face_reflection(seq[index])[0]))
    return pref


def path_prefix_affs(seq):
    pref = [aff_id()]
    for index in range(1, 14):
        pref.append(aff_compose(pref[-1], face_reflection(seq[index])))
    return pref


def total_aff(seq):
    result = aff_id()
    for index in list(range(1, 14)) + [0]:
        result = aff_compose(result, face_reflection(seq[index]))
    return result


def mat4_identity() -> Mat4:
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


def axis_solve_matrix(a: Aff, axis: Vec) -> Mat4:
    matrix, _offset = a
    ident = identity_matrix()
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


def sign_assignment(word, mask):
    positions = {pair_id: [] for pair_id in PAIR_IDS}
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


def translation_vector(word, mask):
    signs = sign_assignment(word, mask)
    pref = prefix_matrices(word)
    bpref = [vec((0, 0, 0))]
    seq = ["xp"]
    for index, pair_id in enumerate(word):
        delta = vec_scale(Fraction(signs[index]), mat_vec(pref[index], DCAN[pair_id]))
        bpref.append(vec_add(bpref[-1], delta))
        seq.append(FACE_PLUS[pair_id] if signs[index] > 0 else FACE_MINUS[pair_id])
    b = vec_add(bpref[-1], mat_vec(pref[-1], DCAN["x"]))
    return b, seq


def lin2_const(value):
    return (value, Fraction(0), Fraction(0))


def lin2_y():
    return (Fraction(0), Fraction(1), Fraction(0))


def lin2_z():
    return (Fraction(0), Fraction(0), Fraction(1))


def lin2_add(lhs, rhs):
    return (lhs[0] + rhs[0], lhs[1] + rhs[1], lhs[2] + rhs[2])


def lin2_scale(scale, value):
    return (scale * value[0], scale * value[1], scale * value[2])


def lin2_dot_vec3(n, p):
    return lin2_add(
        lin2_add(lin2_scale(n[0], p[0]), lin2_scale(n[1], p[1])),
        lin2_scale(n[2], p[2]),
    )


def strict_lt_constraint(lhs, rhs):
    return (lhs[1] - rhs[1], lhs[2] - rhs[2], rhs[0] - lhs[0])


def translation_impact_time_lin(seq, b, impact):
    if impact == 0:
        return lin2_const(Fraction(0))
    if impact == 14:
        return lin2_const(Fraction(1))
    prefixes = path_prefix_affs(seq)
    normal_value, offset = impact_plane_normal_offset(seq, prefixes, impact)
    den = dot(normal_value, b)
    require(den != 0, f"translation impact denominator nonzero {impact}")
    return (
        (offset - normal_value[0]) / den,
        -normal_value[1] / den,
        -normal_value[2] / den,
    )


def translation_line_point_lin(b, t):
    return (
        lin2_add(lin2_const(Fraction(1)), lin2_scale(b[0], t)),
        lin2_add(lin2_y(), lin2_scale(b[1], t)),
        lin2_add(lin2_z(), lin2_scale(b[2], t)),
    )


def translation_constraints_py(seq, b):
    constraints = [
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
                strict_lt_constraint(lin2_dot_vec3(copied, point), lin2_const(offset))
            )
    return constraints


def weighted_sum_constraints(constraints, terms):
    a = b = c = Fraction(0)
    for index, multiplier in terms:
        line = constraints[index]
        a += multiplier * line[0]
        b += multiplier * line[1]
        c += multiplier * line[2]
    return a, b, c


def normalize_farkas_terms(terms):
    combined = {}
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
    content = 0
    for _index, multiplier in normalized:
        value = abs(multiplier.numerator * (denominators_lcm // multiplier.denominator))
        content = math.gcd(content, value)
    if content == 0:
        return normalized
    content_q = Fraction(content, denominators_lcm)
    return [(index, multiplier / content_q) for index, multiplier in normalized]


def parse_farkas_terms(terms):
    return normalize_farkas_terms([
        (term["index"], parse_rat(term["multiplier"]))
        for term in terms
    ])


def check_farkas_py(constraints, terms):
    if not terms or not any(multiplier > 0 for _index, multiplier in terms):
        return False
    if any(index < 0 or index >= len(constraints) or multiplier < 0
           for index, multiplier in terms):
        return False
    total = weighted_sum_constraints(constraints, terms)
    return total[0] == 0 and total[1] == 0 and total[2] <= 0


def rat_to_json(value):
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def strict_line_to_json(line):
    return [rat_to_json(line[0]), rat_to_json(line[1]), rat_to_json(line[2])]


def normalize_strict_line(line):
    den = 1
    for value in line:
        den = math.lcm(den, value.denominator)
    ints = [value.numerator * (den // value.denominator) for value in line]
    content = 0
    for value in ints:
        content = math.gcd(content, abs(value))
    if content == 0:
        return line
    return tuple(Fraction(value, content) for value in ints)


def normalized_constraint_system(constraints):
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


def normalized_farkas_terms_for_system(terms, system):
    mapped = [
        (system["originalToNormalized"][index], multiplier)
        for index, multiplier in terms
    ]
    return [
        {"index": index, "multiplier": rat_to_json(multiplier)}
        for index, multiplier in normalize_farkas_terms(mapped)
    ]


def fixed_part(m):
    ident = identity_matrix()
    return tuple(tuple(m[i][j] - ident[i][j] for j in range(3)) for i in range(3))


def cross_left(axis):
    x, y, z = axis
    return (
        (Fraction(0), -z, y),
        (z, Fraction(0), -x),
        (-y, x, Fraction(0)),
    )


def check_kernel_line_witness(word, axis, cross_factor):
    matrix = total_linear(word)
    return (
        axis != vec((0, 0, 0))
        and mat_vec(matrix, axis) == axis
        and mat_mul(cross_factor, fixed_part(matrix)) == cross_left(axis)
    )


def pair_of_face(face):
    if face in ("xp", "xm"):
        return "x"
    if face in ("yp", "ym"):
        return "y"
    if face in ("zp", "zm"):
        return "z"
    if face in ("tppp", "tmmm"):
        return "d111"
    if face in ("tppm", "tmmp"):
        return "d11m"
    if face in ("tpmp", "tmpm"):
        return "d1m1"
    if face in ("tmpp", "tpmm"):
        return "dm11"
    raise ValueError(face)


def normal(face):
    return vec(FACE_NORMALS[face])


def face_of_pair_sign(pair_id, positive):
    return FACE_PLUS[pair_id] if positive else FACE_MINUS[pair_id]


def axis_forces_sequence(word, axis, seq):
    if seq[0] != "xp":
        return False
    if [pair_of_face(face) for face in seq[1:]] != word:
        return False
    pref = prefix_matrices(word)
    final_dot = dot(mat_vec(pref[13], normal("xp")), axis)
    if final_dot <= 0:
        return False
    for index, pair_id in enumerate(word):
        for positive in (False, True):
            face = face_of_pair_sign(pair_id, positive)
            value = dot(mat_vec(pref[index], normal(face)), axis)
            if value > 0 and normal(seq[index + 1]) != normal(face):
                return False
    return True


def impact_denom(seq, b, impact):
    face = seq[impact] if impact < 14 else seq[0]
    prefix_index = max(impact - 1, 0)
    if prefix_index > 13:
        prefix_index = 13
    prefix = path_prefix_matrices(seq)[prefix_index]
    return dot(mat_vec(prefix, normal(face)), b)


def impact_face(seq, impact):
    return seq[impact] if impact < 14 else seq[0]


def pre_impact_aff(prefixes, impact):
    prefix_index = max(impact - 1, 0)
    if prefix_index > 13:
        prefix_index = 13
    return prefixes[prefix_index]


def copied_normal_offset(seq, prefixes, impact, face):
    matrix, offset = pre_impact_aff(prefixes, impact)
    copied = mat_vec(matrix, normal(face))
    return copied, FACE_OFFSETS[face] + dot(copied, offset)


def impact_plane_normal_offset(seq, prefixes, impact):
    return copied_normal_offset(seq, prefixes, impact, impact_face(seq, impact))


def xp_start_interior(p):
    x, y, z = p
    return (
        x == 1
        and y + z < 1
        and y - z < 1
        and -y + z < 1
        and -y - z < 1
    )


def candidate_w(seq, p0):
    return vec_sub(aff_apply(total_aff(seq), p0), p0)


def candidate_line_point(p0, w, t):
    return vec_add(p0, vec_scale(t, w))


def candidate_impact_time(seq, prefixes, p0, w, impact):
    if impact == 0:
        return Fraction(0)
    if impact == 14:
        return Fraction(1)
    normal_value, offset = impact_plane_normal_offset(seq, prefixes, impact)
    denom = dot(normal_value, w)
    require(denom != 0, f"candidate denominator impact {impact}")
    return (offset - dot(normal_value, p0)) / denom


def candidate_ordering_fails(seq, p0, w, step):
    prefixes = path_prefix_affs(seq)
    return (
        candidate_impact_time(seq, prefixes, p0, w, step + 1)
        <= candidate_impact_time(seq, prefixes, p0, w, step)
    )


def candidate_hit_interior_fails(seq, p0, w, impact, bad_face):
    prefixes = path_prefix_affs(seq)
    hit = impact_face(seq, impact)
    if bad_face == hit:
        return False
    t = candidate_impact_time(seq, prefixes, p0, w, impact)
    point = candidate_line_point(p0, w, t)
    copied, offset = copied_normal_offset(seq, prefixes, impact, bad_face)
    return offset <= dot(copied, point)


def check_affine_axis_solve(seq, axis, p0, lam, left_inverse):
    affine = total_aff(seq)
    matrix = axis_solve_matrix(affine, axis)
    return (
        mat4_mul(left_inverse, matrix) == mat4_identity()
        and mat4_vec(matrix, axis_solve_vector(p0, lam)) == axis_solve_rhs(affine)
    )


def positive_sign_of_face(face):
    return FACE_PLUS[pair_of_face(face)] == face


def sym_vec(sym, v):
    x, y, z = v
    if sym["swapYZ"]:
        y, z = z, y
    if sym["negY"]:
        y = -y
    if sym["negZ"]:
        z = -z
    return (x, y, z)


def started_sym_key(sym):
    return (sym["swapYZ"], sym["negY"], sym["negZ"])


def started_sym_from_key(key):
    swap_yz, neg_y, neg_z = key
    return {"swapYZ": swap_yz, "negY": neg_y, "negZ": neg_z}


FACE_BY_NORMAL = {vec(normal_value): face for face, normal_value in FACE_NORMALS.items()}


def sym_face(sym, face):
    return FACE_BY_NORMAL[sym_vec(sym, normal(face))]


def sym_pair(sym, pair_id):
    return pair_of_face(sym_face(sym, FACE_PLUS[pair_id]))


@lru_cache(maxsize=None)
def sym_pair_cached(sym_key_value, pair_id):
    return sym_pair(started_sym_from_key(sym_key_value), pair_id)


@lru_cache(maxsize=None)
def sym_word_tuple(sym_key_value, word_tuple):
    return tuple(sym_pair_cached(sym_key_value, pair_id) for pair_id in word_tuple)


def sym_word(sym, word):
    return list(sym_word_tuple(started_sym_key(sym), tuple(word)))


def sym_seq(sym, seq):
    return [sym_face(sym, face) for face in seq]


def mask_from_word_seq(word, seq):
    mask = 0
    for pair_index, pair_id in enumerate(PAIR_IDS[1:]):
        first = word.index(pair_id)
        if positive_sign_of_face(seq[first + 1]):
            mask |= 1 << pair_index
    return mask


def mask_bit_for_pair(mask, pair_id):
    if pair_id == "x":
        return False
    return ((mask >> (PAIR_IDS.index(pair_id) - 1)) & 1) == 1


def translation_choice_seq(word, mask):
    seen = {pair_id: 0 for pair_id in PAIR_IDS}
    seq = ["xp"]
    for pair_id in word:
        if pair_id == "x":
            positive = False
        else:
            first_positive = mask_bit_for_pair(mask, pair_id)
            positive = first_positive if seen[pair_id] == 0 else not first_positive
        seq.append(face_of_pair_sign(pair_id, positive))
        seen[pair_id] += 1
    return seq


@lru_cache(maxsize=None)
def transported_translation_mask_cached(sym_key_value, word_tuple, mask):
    sym = started_sym_from_key(sym_key_value)
    word = list(word_tuple)
    seq = translation_choice_seq(word, mask)
    raw_word = list(sym_word_tuple(sym_key_value, word_tuple))
    raw_seq = sym_seq(sym, seq)
    return mask_from_word_seq(raw_word, raw_seq)


def transported_translation_mask(sym, word, mask):
    return transported_translation_mask_cached(started_sym_key(sym), tuple(word), mask)


def check_coverage_payload(coverage):
    require(coverage["coverageKind"] == "contiguous-rank-intervals", "coverage kind")
    require(coverage["pairWordCount"] == EXPECTED_PAIR_WORDS, "coverage pair-word count")
    require(coverage["signMaskCount"] == 64, "coverage sign-mask count")
    require(coverage["chunkSize"] == COVERAGE_CHUNK_SIZE, "coverage chunk size")
    chunks = coverage["chunks"]
    require(chunks, "coverage chunks nonempty")
    expected_start = 0
    for index, chunk in enumerate(chunks):
        require(chunk["startRank"] == expected_start, f"coverage chunk {index} start")
        require(chunk["startRank"] < chunk["endRank"], f"coverage chunk {index} nonempty")
        require(
            chunk["expectedItems"] == chunk["endRank"] - chunk["startRank"],
            f"coverage chunk {index} item count",
        )
        expected_start = chunk["endRank"]
    require(expected_start == EXPECTED_PAIR_WORDS, "coverage final rank")
    return {
        "coverage_pair_words": coverage["pairWordCount"],
        "coverage_sign_masks": coverage["signMaskCount"],
        "coverage_chunks": len(chunks),
    }


def check_payload(payload):
    require(payload.get("schema_version") == 2, "schema version")
    require(payload.get("mode") == "small-sample-real-certs", "mode")
    sanity = payload["expected_sanity_counts"]
    require(sanity["pair_words"] == EXPECTED_PAIR_WORDS, "pair-word sanity count")
    require(sanity["identity_linear_words"] == EXPECTED_IDENTITY_WORDS, "identity sanity count")
    require(
        sanity["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        "translation sign-assignment sanity count",
    )
    coverage_summary = check_coverage_payload(payload["coverage"])

    words_by_rank = {}
    for record in payload["pair_words"]:
        rank = record["rank"]
        word = record["word"]
        require(valid_pair_word(word), f"valid pair word {rank}")
        require(lex_rank_pair_word(word) == rank, f"lex rank {rank}")
        words_by_rank[rank] = word

    for cert in payload["nonidentity_certs"]:
        rank = cert["rank"]
        word = cert["word"]
        require(word == words_by_rank[rank], f"nonidentity word echo {rank}")
        check_nonid_cert_record(cert)

    for cert in payload["translation_certs"]:
        rank = cert["rank"]
        mask = cert["mask"]
        word = cert["word"]
        require(word == words_by_rank[rank], f"translation word echo {rank}/{mask}")
        require(total_linear(word) == identity_matrix(), f"translation identity {rank}/{mask}")
        require(0 <= mask < 64, f"translation mask {rank}/{mask}")
        b, seq = translation_vector(word, mask)
        require(vector_from_json(cert["b"]) == b, f"translation vector {rank}/{mask}")
        require(cert["seq"] == seq, f"translation sequence {rank}/{mask}")
        require(total_aff(seq)[1] == b, f"total affine translation {rank}/{mask}")
        failure = cert["failure"]
        if failure["kind"] == "badDirectionSign":
            impact = failure["impact"]
            require(impact not in (0, 14), f"bad translation impact {rank}/{mask}")
            require(impact_denom(seq, b, impact) <= 0, f"bad translation denominator {rank}/{mask}")
        elif failure["kind"] == "badTranslationVector":
            require(b == vec((0, 0, 0)), f"zero translation vector {rank}/{mask}")
        elif failure["kind"] == "farkas":
            terms = parse_farkas_terms(failure["terms"])
            require(
                check_farkas_py(translation_constraints_py(seq, b), terms),
                f"translation Farkas {rank}/{mask}",
            )
        else:
            raise SystemExit(f"check failed: unsupported translation failure {failure['kind']}")

    chunks = payload["chunks"]
    nonidentity_chunk = chunks["nonidentity"]
    require(nonidentity_chunk["name"] == "NonIdentity.Chunk0000", "nonidentity chunk name")
    require(
        nonidentity_chunk["covered_ranks"] == [cert["rank"] for cert in payload["nonidentity_certs"]],
        "nonidentity covered ranks",
    )
    require(
        nonidentity_chunk["cert_names"] == [cert["name"] for cert in payload["nonidentity_certs"]],
        "nonidentity cert names",
    )

    translation_chunk = chunks["translation"]
    require(translation_chunk["name"] == "Translation.Chunk0000", "translation chunk name")
    require(
        translation_chunk["covered_cases"] == [
            {"pair_rank": cert["rank"], "sign_mask": cert["mask"]}
            for cert in payload["translation_certs"]
        ],
        "translation covered cases",
    )
    require(
        translation_chunk["cert_names"] == [cert["name"] for cert in payload["translation_certs"]],
        "translation cert names",
    )

    summary = payload["summary"]
    require(summary["pair_words_sampled"] == len(payload["pair_words"]), "summary pair words")
    require(summary["nonidentity_certs"] == len(payload["nonidentity_certs"]), "summary nonidentity")
    require(summary["translation_certs"] == len(payload["translation_certs"]), "summary translation")
    return {
        "pair_words_sampled": len(payload["pair_words"]),
        "nonidentity_certs": len(payload["nonidentity_certs"]),
        "translation_certs": len(payload["translation_certs"]),
        **coverage_summary,
    }


def check_coverage_file(payload):
    require(payload.get("schema_version") == 1, "coverage schema version")
    require(payload.get("mode") == "coverage-manifest", "coverage mode")
    return check_coverage_payload(payload["coverage"])


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


@lru_cache(maxsize=None)
def canonical_pair_transform_key(word_tuple):
    best = STARTED_SYMS[0]
    best_key = tuple(
        PAIR_IDS.index(pair_id)
        for pair_id in sym_word_tuple(started_sym_key(best), word_tuple)
    )
    for candidate in STARTED_SYMS:
        candidate_key = tuple(
            PAIR_IDS.index(pair_id)
            for pair_id in sym_word_tuple(started_sym_key(candidate), word_tuple)
        )
        if candidate_key <= best_key:
            best = candidate
            best_key = candidate_key
    return started_sym_key(best)


@lru_cache(maxsize=None)
def canonical_word_tuple(word_tuple):
    return sym_word_tuple(canonical_pair_transform_key(word_tuple), word_tuple)


def canonical_word(word):
    return list(canonical_word_tuple(tuple(word)))


@lru_cache(maxsize=None)
def canonical_translation_transform_key(word_tuple, mask):
    best = STARTED_SYMS[0]
    best_word = sym_word_tuple(started_sym_key(best), word_tuple)
    best_key = (
        tuple(PAIR_IDS.index(pair_id) for pair_id in best_word),
        transported_translation_mask_cached(started_sym_key(best), word_tuple, mask),
    )
    for candidate in STARTED_SYMS:
        candidate_key_value = started_sym_key(candidate)
        candidate_word = sym_word_tuple(candidate_key_value, word_tuple)
        candidate_key = (
            tuple(PAIR_IDS.index(pair_id) for pair_id in candidate_word),
            transported_translation_mask_cached(candidate_key_value, word_tuple, mask),
        )
        if candidate_key <= best_key:
            best = candidate
            best_key = candidate_key
    return started_sym_key(best)


@lru_cache(maxsize=None)
def canonical_translation_choice_cached(word_tuple, mask):
    sym_key_value = canonical_translation_transform_key(word_tuple, mask)
    return (
        sym_word_tuple(sym_key_value, word_tuple),
        transported_translation_mask_cached(sym_key_value, word_tuple, mask),
    )


def canonical_translation_choice(word, mask):
    raw_word, raw_mask = canonical_translation_choice_cached(tuple(word), mask)
    return list(raw_word), raw_mask


def started_sym_id(sym):
    return STARTED_SYMS.index(sym)


def started_sym_inverse(sym):
    for candidate in STARTED_SYMS:
        if all(sym_pair(candidate, sym_pair(sym, pair_id)) == pair_id
               for pair_id in PAIR_IDS):
            return candidate
    raise ValueError(f"no inverse for started symmetry {sym}")


def sym_action_key(sym):
    return tuple(sym_pair(sym, pair_id) for pair_id in PAIR_IDS)


def compose_sym(left, right):
    target = tuple(sym_pair(left, sym_pair(right, pair_id)) for pair_id in PAIR_IDS)
    for candidate in STARTED_SYMS:
        if sym_action_key(candidate) == target:
            return candidate
    raise SystemExit(f"check failed: started symmetry composition missing {target}")


def check_started_symmetry_group():
    identity = {"swapYZ": False, "negY": False, "negZ": False}
    action_keys = {sym_action_key(sym) for sym in STARTED_SYMS}
    require(len(action_keys) == len(STARTED_SYMS), "started symmetry actions are distinct")
    require(identity in STARTED_SYMS, "started symmetry identity present")
    for sym in STARTED_SYMS:
        require(sym_face(sym, "xp") == "xp", f"started symmetry fixes xp {sym}")
        require(sym_pair(sym, "x") == "x", f"started symmetry fixes x pair {sym}")
        require(compose_sym(identity, sym) == sym, f"left identity {sym}")
        require(compose_sym(sym, identity) == sym, f"right identity {sym}")
        has_inverse = any(
            compose_sym(sym, candidate) == identity
            and compose_sym(candidate, sym) == identity
            for candidate in STARTED_SYMS
        )
        require(has_inverse, f"started symmetry inverse {sym}")
    for left in STARTED_SYMS:
        for right in STARTED_SYMS:
            _ = compose_sym(left, right)


def orbit_words(word):
    return [sym_word(sym, word) for sym in STARTED_SYMS]


def check_word_orbit_canonical(word, rank):
    require(valid_pair_word(word), f"canonical orbit valid word {rank}")
    canonical = canonical_word(word)
    require(canonical == min(orbit_words(word)), f"canonical word minimum {rank}")
    for sym in STARTED_SYMS:
        raw = sym_word(sym, word)
        require(valid_pair_word(raw), f"transported valid word {rank}")
        require(canonical_word(raw) == canonical, f"word orbit representative {rank} {sym}")
    return canonical


def check_translation_orbit_canonical(word, mask, rank):
    canonical = canonical_translation_choice(word, mask)
    candidates = [
        (sym_word(sym, word), transported_translation_mask(sym, word, mask))
        for sym in STARTED_SYMS
    ]
    require(canonical == min(candidates), f"canonical translation minimum {rank}:{mask}")
    for raw_word, raw_mask in candidates:
        require(
            canonical_translation_choice(raw_word, raw_mask) == canonical,
            f"translation orbit representative {rank}:{mask}",
        )
    return canonical


def check_canonical_orbit_coverage(limit):
    check_started_symmetry_group()
    pair_words = 0
    identity_words = 0
    translation_cases = 0
    canonical_words = set()
    canonical_translation_cases = set()
    for rank, word, pref in exact_profile.enumerate_pair_word_states(limit):
        pair_words += 1
        canonical_words.add(tuple(check_word_orbit_canonical(word, rank)))
        if mat_mul(pref[-1], RPAIR["x"]) == identity_matrix():
            identity_words += 1
            for mask in range(64):
                translation_cases += 1
                canonical_word_value, canonical_mask_value = (
                    check_translation_orbit_canonical(word, mask, rank)
                )
                canonical_translation_cases.add(
                    (tuple(canonical_word_value), canonical_mask_value)
                )
    if limit is None:
        require(pair_words == EXPECTED_PAIR_WORDS, "canonical full pair-word count")
        require(identity_words == EXPECTED_IDENTITY_WORDS, "canonical full identity count")
        require(
            translation_cases == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            "canonical full translation sign assignment count",
        )
    else:
        require(pair_words <= limit, "canonical limited pair-word count")
    return {
        "pair_words": pair_words,
        "identity_words": identity_words,
        "translation_cases": translation_cases,
        "canonical_word_classes": len(canonical_words),
        "canonical_translation_classes": len(canonical_translation_cases),
        "complete": limit is None,
    }


def ensure_cpp_canonical_orbit_helper():
    needs_build = (
        not CPP_CANONICAL_ORBIT_BINARY_PATH.exists()
        or CPP_CANONICAL_ORBIT_BINARY_PATH.stat().st_mtime
        < CPP_CANONICAL_ORBIT_SOURCE_PATH.stat().st_mtime
    )
    if needs_build:
        import subprocess

        cmd = [
            "g++",
            "-std=c++20",
            "-O3",
            "-DNDEBUG",
            str(CPP_CANONICAL_ORBIT_SOURCE_PATH),
            "-o",
            str(CPP_CANONICAL_ORBIT_BINARY_PATH),
        ]
        subprocess.run(cmd, cwd=REPO_ROOT, check=True)
    return CPP_CANONICAL_ORBIT_BINARY_PATH


def run_cpp_canonical_orbit_coverage(limit):
    import subprocess

    binary = ensure_cpp_canonical_orbit_helper()
    cmd = [str(binary)]
    if limit is not None:
        cmd.extend(["--limit", str(limit)])
    result = subprocess.run(
        cmd,
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return json.loads(result.stdout)


def check_canonical_orbit_payload(payload):
    require(payload.get("schema_version") == 1, "canonical orbit schema version")
    require(payload.get("mode") == "canonical-orbit-coverage", "canonical orbit mode")
    sanity = payload["expected_sanity_counts"]
    require(sanity["pair_words"] == EXPECTED_PAIR_WORDS, "canonical expected pair words")
    require(
        sanity["identity_linear_words"] == EXPECTED_IDENTITY_WORDS,
        "canonical expected identity words",
    )
    require(
        sanity["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        "canonical expected translation choices",
    )
    group = payload["symmetry_group_checks"]
    require(group["started_symmetries"] == len(STARTED_SYMS), "canonical symmetry count")
    require(group["xp_pair_fixed"] is True, "canonical symmetries fix x pair")
    require(group["actions_distinct"] is True, "canonical symmetry actions distinct")
    require(
        group["closed_under_composition"] is True,
        "canonical symmetry actions closed",
    )
    require(
        group["canonical_rule"] == "lexicographic_minimum_over_started_symmetry_group",
        "canonical representative rule",
    )
    policy = payload.get("transform_policy")
    require(isinstance(policy, dict), "canonical orbit transform policy")
    require(policy.get("proof_reducing_transforms") == ["started_symmetry"],
            "canonical orbit proof transforms")
    require(policy.get("grouping_only_transforms") == ["reversal"],
            "canonical orbit grouping transforms")
    require(policy.get("reversal_proof_transport_enabled") is False,
            "canonical orbit reversal policy")
    require(
        policy.get("canonical_rule") ==
        "lexicographic_minimum_over_started_symmetry_group",
        "canonical orbit policy rule",
    )
    require(policy.get("combined_exact_manifest_step") == "14E.2A",
            "canonical orbit combined manifest step")
    actual = payload["actual_counts"]
    canonical = payload["canonical_counts"]
    require(actual["pair_words"] >= 0, "canonical nonnegative pair words")
    require(actual["identity_linear_words"] >= 0, "canonical nonnegative identity words")
    require(
        actual["translation_sign_assignments"] >= 0,
        "canonical nonnegative translation choices",
    )
    require(canonical["pair_word_classes"] >= 0, "canonical nonnegative word classes")
    require(
        canonical["translation_choice_classes"] >= 0,
        "canonical nonnegative translation classes",
    )
    require(1 <= canonical["max_pair_word_orbit"] <= 8, "canonical word orbit bound")
    if actual["translation_sign_assignments"] == 0:
        require(
            canonical["max_translation_choice_orbit"] == 0,
            "canonical zero translation orbit bound",
        )
    else:
        require(
            1 <= canonical["max_translation_choice_orbit"] <= 8,
            "canonical translation orbit bound",
        )
    if payload.get("complete", False):
        require(actual["pair_words"] == EXPECTED_PAIR_WORDS, "canonical full pair words")
        require(
            actual["identity_linear_words"] == EXPECTED_IDENTITY_WORDS,
            "canonical full identity words",
        )
        require(
            actual["translation_sign_assignments"]
            == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            "canonical full translation choices",
        )
    return {
        "pair_words": actual["pair_words"],
        "identity_words": actual["identity_linear_words"],
        "translation_cases": actual["translation_sign_assignments"],
        "canonical_word_classes": canonical["pair_word_classes"],
        "canonical_translation_classes": canonical["translation_choice_classes"],
        "complete": payload.get("complete", False),
    }


def check_canonical_coverage_manifest(payload):
    require(payload.get("schema_version") == 1, "canonical coverage schema version")
    require(
        payload.get("mode") == "canonical-coverage-manifest",
        "canonical coverage mode",
    )
    require(
        payload.get("coverage_kind") ==
        "functional-started-symmetry-canonicalization",
        "canonical coverage kind",
    )

    canonical_orbit = json.loads(CANONICAL_ORBIT_JSON_PATH.read_text(encoding="utf-8"))
    orbit_summary = check_canonical_orbit_payload(canonical_orbit)

    policy = payload.get("transform_policy")
    require(isinstance(policy, dict), "canonical coverage transform policy")
    require(policy == canonical_orbit["transform_policy"],
            "canonical coverage policy matches orbit summary")
    require(policy.get("proof_reducing_transforms") == ["started_symmetry"],
            "canonical coverage proof transforms")
    require(policy.get("grouping_only_transforms") == ["reversal"],
            "canonical coverage grouping transforms")
    require(policy.get("reversal_proof_transport_enabled") is False,
            "canonical coverage reversal disabled")

    raw = payload["raw_counts"]
    canonical = payload["canonical_counts"]
    require(raw["pair_words"] == EXPECTED_PAIR_WORDS, "canonical raw pair words")
    require(raw["identity_linear_words"] == EXPECTED_IDENTITY_WORDS,
            "canonical raw identity words")
    require(
        raw["translation_sign_assignments"] ==
        EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        "canonical raw translation choices",
    )
    require(raw["pair_words"] == orbit_summary["pair_words"],
            "canonical raw pair words match orbit")
    require(raw["identity_linear_words"] == orbit_summary["identity_words"],
            "canonical raw identity words match orbit")
    require(raw["translation_sign_assignments"] == orbit_summary["translation_cases"],
            "canonical raw translation choices match orbit")
    require(canonical["pair_word_classes"] == orbit_summary["canonical_word_classes"],
            "canonical pair classes match orbit")
    require(
        canonical["translation_choice_classes"] ==
        orbit_summary["canonical_translation_classes"],
        "canonical translation classes match orbit",
    )
    require(canonical["max_pair_word_orbit"] == 8, "canonical pair orbit max")
    require(canonical["max_translation_choice_orbit"] == 8,
            "canonical translation orbit max")

    transform_ids = payload["transform_ids"]
    require(len(transform_ids) == len(STARTED_SYMS), "canonical transform id count")
    for expected_id, record in enumerate(transform_ids):
        require(record["id"] == expected_id, f"canonical transform id {expected_id}")
        require(record["sym"] == STARTED_SYMS[expected_id],
                f"canonical transform sym {expected_id}")
    proof_reducing_transform_ids = payload.get("proof_reducing_transform_ids")
    require(
        proof_reducing_transform_ids == list(range(len(STARTED_SYMS))),
        "canonical proof-reducing transform ids",
    )
    require(
        proof_reducing_transform_ids == [record["id"] for record in transform_ids],
        "canonical proof-reducing ids match transform table",
    )

    rank_coverage = payload["rank_coverage"]
    expected_chunk_count = math.ceil(EXPECTED_PAIR_WORDS / COVERAGE_CHUNK_SIZE)
    require(rank_coverage["coverageKind"] == "contiguous-rank-intervals",
            "canonical rank coverage kind")
    require(rank_coverage["pairWordCount"] == EXPECTED_PAIR_WORDS,
            "canonical rank coverage pair count")
    require(rank_coverage["signMaskCount"] == 64,
            "canonical rank coverage sign masks")
    require(rank_coverage["chunkSize"] == COVERAGE_CHUNK_SIZE,
            "canonical rank coverage chunk size")
    require(rank_coverage["chunkCount"] == expected_chunk_count,
            "canonical rank coverage chunk count")
    require(rank_coverage["firstChunk"] == {
        "startRank": 0,
        "endRank": COVERAGE_CHUNK_SIZE,
        "expectedItems": COVERAGE_CHUNK_SIZE,
    }, "canonical rank coverage first chunk")
    last_start = (expected_chunk_count - 1) * COVERAGE_CHUNK_SIZE
    require(rank_coverage["lastChunk"] == {
        "startRank": last_start,
        "endRank": EXPECTED_PAIR_WORDS,
        "expectedItems": EXPECTED_PAIR_WORDS - last_start,
    }, "canonical rank coverage last chunk")

    smoke = check_canonical_orbit_coverage(10_000)
    require(smoke["pair_words"] == 10_000, "canonical coverage smoke pair words")
    require(smoke["canonical_word_classes"] <= canonical["pair_word_classes"],
            "canonical coverage smoke pair classes")
    require(
        smoke["canonical_translation_classes"] <=
        canonical["translation_choice_classes"],
        "canonical coverage smoke translation classes",
    )

    return {
        **orbit_summary,
        "pair_compression_ratio":
            raw["pair_words"] / canonical["pair_word_classes"],
        "translation_compression_ratio":
            raw["translation_sign_assignments"] /
            canonical["translation_choice_classes"],
    }


def check_nonid_cert_record(cert):
    word = cert["word"]
    require(valid_pair_word(word), f"valid nonidentity cert {cert['name']}")
    require(total_linear(word) != identity_matrix(), f"nonidentity matrix {cert['name']}")
    axis = vector_from_json(cert["axis"])
    cross_factor = matrix_from_json(cert["kernel_cross_factor"])
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        require(check_kernel_line_witness(word, axis, cross_factor), f"kernel {cert['name']}")
        index = failure["index"]
        require(0 <= index < 13, f"bad direction index {cert['name']}")
        pref = prefix_matrices(word)
        require(dot(mat_vec(pref[index], vec(NORMALS[word[index]])), axis) == 0,
                f"bad direction zero {cert['name']}")
    elif failure["kind"] == "badPairBalance":
        require(check_kernel_line_witness(word, axis, cross_factor), f"kernel {cert['name']}")
        seq = cert["forced_seq"]
        require(axis_forces_sequence(word, axis, seq), f"forced sequence {cert['name']}")
        require(len(set(seq)) != 14, f"bad pair balance {cert['name']}")
    elif failure["kind"] == "noFixedAxis":
        left_inverse = matrix_from_json(failure["left_inverse"])
        require(mat_mul(left_inverse, fixed_part(total_linear(word))) == identity_matrix(),
                f"no fixed axis left inverse {cert['name']}")
    elif failure["kind"] in {
        "axisMissesStartInterior",
        "badFirstHit",
        "badHitInterior",
    }:
        require(check_kernel_line_witness(word, axis, cross_factor), f"kernel {cert['name']}")
        seq = cert["forced_seq"]
        p0 = vector_from_json(cert["p0"])
        lam = parse_rat(cert["lambda"])
        solve = matrix4_from_json(cert["solve_left_inverse"])
        require(axis_forces_sequence(word, axis, seq), f"forced sequence {cert['name']}")
        require(check_affine_axis_solve(seq, axis, p0, lam, solve),
                f"axis solve {cert['name']}")
        if failure["kind"] == "axisMissesStartInterior":
            require(not xp_start_interior(p0), f"axis miss start interior {cert['name']}")
        else:
            require(xp_start_interior(p0), f"candidate start interior {cert['name']}")
            w = candidate_w(seq, p0)
            if failure["kind"] == "badFirstHit":
                step = failure["step"]
                require(0 <= step < 14, f"bad first-hit step {cert['name']}")
                require(candidate_ordering_fails(seq, p0, w, step),
                        f"bad first-hit ordering {cert['name']}")
            else:
                impact = failure["impact"]
                bad_face = failure["badFace"]
                require(0 <= impact < 15, f"bad hit impact {cert['name']}")
                require(bad_face in FACE_NORMALS, f"bad hit face {cert['name']}")
                require(candidate_hit_interior_fails(seq, p0, w, impact, bad_face),
                        f"bad hit interior {cert['name']}")
    else:
        raise SystemExit(f"check failed: unsupported nonidentity failure {failure['kind']}")


def check_translation_cert_record(cert):
    word = cert["word"]
    mask = cert["mask"]
    require(valid_pair_word(word), f"valid translation cert {cert['name']}")
    require(total_linear(word) == identity_matrix(), f"translation identity {cert['name']}")
    b, seq = translation_vector(word, mask)
    require(vector_from_json(cert["b"]) == b, f"translation vector {cert['name']}")
    require(cert["seq"] == seq, f"translation seq {cert['name']}")
    require(total_aff(seq)[1] == b, f"translation total affine {cert['name']}")
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        impact = failure["impact"]
        require(impact not in (0, 14), f"bad direction impact {cert['name']}")
        require(impact_denom(seq, b, impact) <= 0, f"bad direction denominator {cert['name']}")
    elif failure["kind"] == "badTranslationVector":
        require(b == vec((0, 0, 0)), f"bad translation vector {cert['name']}")
    elif failure["kind"] == "farkas":
        terms = parse_farkas_terms(failure["terms"])
        require(
            check_farkas_py(translation_constraints_py(seq, b), terms),
            f"translation Farkas certificate {cert['name']}",
        )
    else:
        raise SystemExit(f"check failed: unsupported translation failure {failure['kind']}")


def check_canonical_file(payload):
    require(payload.get("schema_version") == 1, "canonical schema version")
    require(payload.get("mode") == "canonical-symmetry-sample", "canonical mode")
    sym = payload["symmetry"]
    require(sym in STARTED_SYMS, "sample symmetry is started symmetry")
    policy = payload.get("transform_policy")
    require(isinstance(policy, dict), "canonical transform policy")
    require(policy.get("proof_reducing_transforms") == ["started_symmetry"],
            "proof-reducing transforms")
    require(policy.get("grouping_only_transforms") == ["reversal"],
            "grouping-only transforms")
    require(policy.get("reversal_proof_transport_enabled") is False,
            "reversal remains grouping-only")
    require(
        policy.get("canonical_rule") ==
        "lexicographic_minimum_over_started_symmetry_group",
        "canonical symmetry rule",
    )
    require(policy.get("combined_exact_manifest_step") == "14E.2A",
            "combined manifest step")

    words_by_rank = {}
    for record in payload["pair_words"]:
        rank = record["rank"]
        word = record["word"]
        require(valid_pair_word(word), f"canonical valid word {rank}")
        require(lex_rank_pair_word(word) == rank, f"canonical lex rank {rank}")
        words_by_rank[rank] = word

    nonid = payload["nonidentity"]
    canonical_nonid = nonid["canonical"]
    raw_nonid = nonid["raw"]
    check_nonid_cert_record(canonical_nonid)
    check_nonid_cert_record(raw_nonid)
    require(raw_nonid["word"] == sym_word(sym, canonical_nonid["word"]),
            "nonidentity transported word")
    require(vector_from_json(raw_nonid["axis"]) ==
            sym_vec(sym, vector_from_json(canonical_nonid["axis"])),
            "nonidentity transported axis")
    require(raw_nonid["forced_seq"] == sym_seq(sym, canonical_nonid["forced_seq"]),
            "nonidentity transported forced sequence")
    require(raw_nonid["failure"] == canonical_nonid["failure"],
            "nonidentity transported failure")
    require(canonical_word(canonical_nonid["word"]) ==
            min(sym_word(s, canonical_nonid["word"]) for s in STARTED_SYMS),
            "nonidentity canonical deterministic")

    translation = payload["translation"]
    canonical_translation = translation["canonical"]
    raw_translation = translation["raw"]
    check_translation_cert_record(canonical_translation)
    check_translation_cert_record(raw_translation)
    require(raw_translation["word"] == sym_word(sym, canonical_translation["word"]),
            "translation transported word")
    require(raw_translation["seq"] == sym_seq(sym, canonical_translation["seq"]),
            "translation transported sequence")
    require(raw_translation["mask"] == transported_translation_mask(
        sym, canonical_translation["word"], canonical_translation["mask"]),
        "translation transported mask")
    require(vector_from_json(raw_translation["b"]) ==
            sym_vec(sym, vector_from_json(canonical_translation["b"])),
            "translation transported vector")
    require(raw_translation["failure"] == canonical_translation["failure"],
            "translation transported failure")
    require(canonical_translation_choice(
        canonical_translation["word"], canonical_translation["mask"]) ==
        min((sym_word(s, canonical_translation["word"]),
             transported_translation_mask(
                 s, canonical_translation["word"], canonical_translation["mask"]))
            for s in STARTED_SYMS),
        "translation canonical deterministic")
    return payload["summary"]


def check_pair_coverage_record(record):
    raw_rank = record["raw_rank"]
    raw_word = record["raw_word"]
    require(valid_pair_word(raw_word), f"coverage valid raw word {raw_rank}")
    require(lex_rank_pair_word(raw_word) == raw_rank,
            f"coverage raw rank {raw_rank}")
    transform = started_sym_from_key(canonical_pair_transform_key(tuple(raw_word)))
    inverse = started_sym_inverse(transform)
    canonical = canonical_word(raw_word)
    require(record["canonical_word"] == canonical,
            f"coverage canonical word {raw_rank}")
    require(record["canonical_rank"] == lex_rank_pair_word(canonical),
            f"coverage canonical rank {raw_rank}")
    require(record["raw_to_canonical_transform_id"] == started_sym_id(transform),
            f"coverage raw-to-canonical id {raw_rank}")
    require(record["raw_to_canonical_transform"] == transform,
            f"coverage raw-to-canonical transform {raw_rank}")
    require(record["canonical_to_raw_transform_id"] == started_sym_id(inverse),
            f"coverage canonical-to-raw id {raw_rank}")
    require(record["canonical_to_raw_transform"] == inverse,
            f"coverage canonical-to-raw transform {raw_rank}")
    return record


def check_translation_coverage_record(record):
    raw_rank = record["raw_rank"]
    raw_word = record["raw_word"]
    raw_mask = record["raw_mask"]
    require(valid_pair_word(raw_word),
            f"translation coverage valid raw word {raw_rank}:{raw_mask}")
    require(lex_rank_pair_word(raw_word) == raw_rank,
            f"translation coverage raw rank {raw_rank}:{raw_mask}")
    require(0 <= raw_mask < 64,
            f"translation coverage raw mask {raw_rank}:{raw_mask}")
    transform = started_sym_from_key(
        canonical_translation_transform_key(tuple(raw_word), raw_mask)
    )
    inverse = started_sym_inverse(transform)
    canonical_word_value, canonical_mask = canonical_translation_choice(
        raw_word, raw_mask
    )
    require(record["canonical_word"] == canonical_word_value,
            f"translation coverage canonical word {raw_rank}:{raw_mask}")
    require(record["canonical_mask"] == canonical_mask,
            f"translation coverage canonical mask {raw_rank}:{raw_mask}")
    require(
        record["canonical_rank"] == lex_rank_pair_word(canonical_word_value),
        f"translation coverage canonical rank {raw_rank}:{raw_mask}",
    )
    require(
        record["raw_to_canonical_transform_id"] == started_sym_id(transform),
        f"translation coverage raw-to-canonical id {raw_rank}:{raw_mask}",
    )
    require(
        record["raw_to_canonical_transform"] == transform,
        f"translation coverage raw-to-canonical transform {raw_rank}:{raw_mask}",
    )
    require(
        record["canonical_to_raw_transform_id"] == started_sym_id(inverse),
        f"translation coverage canonical-to-raw id {raw_rank}:{raw_mask}",
    )
    require(
        record["canonical_to_raw_transform"] == inverse,
        f"translation coverage canonical-to-raw transform {raw_rank}:{raw_mask}",
    )
    return record


def check_coverage_tree_file(payload):
    require(payload.get("schema_version") == 1, "coverage tree schema version")
    require(payload.get("mode") == "coverage-tree-sample", "coverage tree mode")

    canonical_payload = json.loads(CANONICAL_JSON_PATH.read_text(encoding="utf-8"))
    canonical_summary = check_canonical_file(canonical_payload)
    raw_nonid = canonical_payload["nonidentity"]["raw"]
    raw_translation = canonical_payload["translation"]["raw"]

    nonid_trees = payload["nonidentity_trees"]
    require(len(nonid_trees) == 2, "coverage tree nonidentity count")
    raw_nonid_tree = nonid_trees[0]
    raw_nonid_coverage = check_pair_coverage_record(raw_nonid_tree["coverage"])
    require(raw_nonid_tree["name"] == "nonIdRawTree",
            "coverage tree raw nonidentity name")
    require(raw_nonid_tree["leaf"] == "raw",
            "coverage tree raw nonidentity leaf kind")
    require(raw_nonid_tree["cert"] == "SmallSample.nonIdBadDirection000",
            "coverage tree raw nonidentity cert")
    require(raw_nonid_coverage["raw_rank"] == 1,
            "coverage tree raw nonidentity raw rank")
    require(raw_nonid_coverage["canonical_rank"] == 1,
            "coverage tree raw nonidentity canonical rank")

    transported_nonid_tree = nonid_trees[1]
    transported_nonid_coverage = check_pair_coverage_record(
        transported_nonid_tree["coverage"]
    )
    require(transported_nonid_tree["name"] == "nonIdTransportTree",
            "coverage tree transported nonidentity name")
    require(transported_nonid_tree["leaf"] == "transported",
            "coverage tree transported nonidentity leaf kind")
    require(
        transported_nonid_tree["canonical_cert"]
        == f"SmallSample.{canonical_payload['nonidentity']['canonical']['name']}",
        "coverage tree transported nonidentity canonical cert",
    )
    require(transported_nonid_tree["transport"] == "CanonicalSample.nonidentityTransport",
            "coverage tree transported nonidentity transport")
    require(transported_nonid_tree["raw_cert"] == f"CanonicalSample.{raw_nonid['name']}",
            "coverage tree transported nonidentity raw cert")
    require(transported_nonid_coverage["raw_rank"] == raw_nonid["rank"],
            "coverage tree transported nonidentity raw rank")
    require(
        transported_nonid_coverage["raw_word"] == raw_nonid["word"],
        "coverage tree transported nonidentity raw word",
    )
    require(
        transported_nonid_coverage["canonical_rank"]
        == canonical_payload["nonidentity"]["canonical"]["rank"],
        "coverage tree transported nonidentity canonical rank",
    )

    translation_trees = payload["translation_trees"]
    require(len(translation_trees) == 2, "coverage tree translation count")
    raw_translation_tree = translation_trees[0]
    raw_translation_coverage = check_translation_coverage_record(
        raw_translation_tree["coverage"]
    )
    require(raw_translation_tree["name"] == "translationRawTree",
            "coverage tree raw translation name")
    require(raw_translation_tree["leaf"] == "raw",
            "coverage tree raw translation leaf kind")
    require(raw_translation_tree["cert"] == "SmallSample.translationBadDirection000",
            "coverage tree raw translation cert")
    require(raw_translation_coverage["raw_rank"] == 0,
            "coverage tree raw translation raw rank")
    require(raw_translation_coverage["raw_mask"] == 0,
            "coverage tree raw translation raw mask")
    require(raw_translation_coverage["canonical_rank"] == 0,
            "coverage tree raw translation canonical rank")
    require(raw_translation_coverage["canonical_mask"] == 0,
            "coverage tree raw translation canonical mask")

    transported_translation_tree = translation_trees[1]
    transported_translation_coverage = check_translation_coverage_record(
        transported_translation_tree["coverage"]
    )
    require(transported_translation_tree["name"] == "translationTransportTree",
            "coverage tree transported translation name")
    require(transported_translation_tree["leaf"] == "transported",
            "coverage tree transported translation leaf kind")
    require(
        transported_translation_tree["canonical_cert"]
        == f"SmallSample.{canonical_payload['translation']['canonical']['name']}",
        "coverage tree transported translation canonical cert",
    )
    require(transported_translation_tree["transport"] == "CanonicalSample.translationTransport",
            "coverage tree transported translation transport")
    require(
        transported_translation_tree["raw_cert"]
        == f"CanonicalSample.{raw_translation['name']}",
        "coverage tree transported translation raw cert",
    )
    require(transported_translation_coverage["raw_rank"] == raw_translation["rank"],
            "coverage tree transported translation raw rank")
    require(transported_translation_coverage["raw_mask"] == raw_translation["mask"],
            "coverage tree transported translation raw mask")
    require(
        transported_translation_coverage["raw_word"] == raw_translation["word"],
        "coverage tree transported translation raw word",
    )
    require(
        transported_translation_coverage["canonical_rank"]
        == canonical_payload["translation"]["canonical"]["rank"],
        "coverage tree transported translation canonical rank",
    )
    require(
        transported_translation_coverage["canonical_mask"]
        == canonical_payload["translation"]["canonical"]["mask"],
        "coverage tree transported translation canonical mask",
    )

    return {
        "nonidentity_trees": len(nonid_trees),
        "translation_trees": len(translation_trees),
        "canonical_pair_words": canonical_summary["canonical_pair_words"],
        "transported_nonidentity_rank": transported_nonid_coverage["raw_rank"],
        "transported_nonidentity_canonical_rank":
            transported_nonid_coverage["canonical_rank"],
        "transported_translation_rank": transported_translation_coverage["raw_rank"],
        "transported_translation_mask": transported_translation_coverage["raw_mask"],
        "transported_translation_canonical_rank":
            transported_translation_coverage["canonical_rank"],
        "transported_translation_canonical_mask":
            transported_translation_coverage["canonical_mask"],
    }


def nonid_failure_matches_family(family_kind, cert):
    failure_kind = cert["failure"]["kind"]
    if family_kind == "badDirectionSign":
        return failure_kind == "badDirectionSign"
    if family_kind == "badPairBalance":
        return failure_kind == "badPairBalance"
    if family_kind == "noFixedAxis":
        return failure_kind == "noFixedAxis"
    if family_kind == "axisMissesStartInterior":
        return failure_kind == "axisMissesStartInterior"
    if family_kind == "badFirstHit":
        return failure_kind == "badFirstHit"
    if family_kind == "badHitInterior":
        return failure_kind == "badHitInterior"
    return False


NONID_FAMILY_FAILURE_KINDS = {
    "noFixedAxis",
    "badDirectionSign",
    "badPairBalance",
    "axisMissesStartInterior",
    "badFirstHit",
    "badHitInterior",
}


def canonical_json(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"))


def normalized_state_id(prefix, key):
    digest = hashlib.sha256(canonical_json(key).encode("utf-8")).hexdigest()
    return f"{prefix}:{digest[:24]}"


def nonid_cert_state_key(cert):
    return {
        "word": cert["word"],
        "axis": cert["axis"],
        "kernel_cross_factor": cert["kernel_cross_factor"],
        "forced_seq": cert["forced_seq"],
        "p0": cert["p0"],
        "lambda": cert["lambda"],
        "solve_left_inverse": cert["solve_left_inverse"],
        "failure": cert["failure"],
    }


TRANSLATION_FAMILY_FAILURE_KINDS = {
    "badTranslationVector",
    "badDirectionSign",
    "farkas",
}


def translation_failure_matches_family(family_kind, cert):
    failure_kind = cert["failure"]["kind"]
    if family_kind == "badTranslationVector":
        return failure_kind == "badTranslationVector"
    if family_kind == "badDirectionSign":
        return failure_kind == "badDirectionSign"
    if family_kind == "farkas":
        return failure_kind == "farkas"
    return False


def translation_cert_state_key(cert):
    return {
        "word": cert["word"],
        "mask": cert["mask"],
        "seq": cert["seq"],
        "b": cert["b"],
        "failure": cert["failure"],
    }


def check_nonidentity_family_file(payload):
    require(payload.get("schema_version") == 2, "nonidentity family schema version")
    require(payload.get("mode") == "nonidentity-family-sample", "nonidentity family mode")

    words_by_rank = {}
    for record in payload["pair_words"]:
        rank = record["rank"]
        word = record["word"]
        require(0 <= rank < EXPECTED_PAIR_WORDS, f"family pair rank bounds {rank}")
        require(valid_pair_word(word), f"family valid word {rank}")
        require(lex_rank_pair_word(word) == rank, f"family lex rank {rank}")
        require(rank not in words_by_rank, f"family duplicate pair word rank {rank}")
        words_by_rank[rank] = word

    covered_once = {}
    canonical_covered_once = {}
    family_summaries = []
    present_failure_kinds = set()
    multi_rank_family_seen = False
    for family in payload["families"]:
        start_rank = family["startRank"]
        end_rank = family["endRank"]
        require(0 <= start_rank < end_rank <= EXPECTED_PAIR_WORDS,
                f"family interval bounds {family['name']}")
        family_kind = family["failure_kind"]
        require(
            family_kind in NONID_FAMILY_FAILURE_KINDS,
            f"family supported failure kind {family['name']}",
        )
        present_failure_kinds.add(family_kind)
        prefix = family["prefix"]
        require(
            isinstance(prefix, list) and all(pair_id in PAIR_IDS for pair_id in prefix),
            f"family valid prefix {family['name']}",
        )
        expected_canonical_ranks = list(range(start_rank, end_rank))
        coverages = [
            check_pair_coverage_record(record) for record in family["coverages"]
        ]
        if len(coverages) > 1:
            multi_rank_family_seen = True
        require(
            [coverage["canonical_rank"] for coverage in coverages]
            == expected_canonical_ranks,
            f"family contiguous canonical ranks {family['name']}",
        )
        require(
            family["coveredRanks"] == [coverage["raw_rank"] for coverage in coverages],
            f"family raw coverage echoes {family['name']}",
        )
        require(len(family["certs"]) == len(expected_canonical_ranks),
                f"family cert count {family['name']}")
        require(len(family["cert_names"]) == len(expected_canonical_ranks),
                f"family cert name count {family['name']}")
        require(len(family["memberStateIds"]) == len(expected_canonical_ranks),
                f"family state-id count {family['name']}")
        require(len(family["memberStateKeys"]) == len(expected_canonical_ranks),
                f"family state-key count {family['name']}")
        expected_member_keys = [
            nonid_cert_state_key(cert) for cert in family["certs"]
        ]
        expected_member_ids = [
            normalized_state_id("nonid-member", key)
            for key in expected_member_keys
        ]
        require(
            family["memberStateKeys"] == expected_member_keys,
            f"family member state keys {family['name']}",
        )
        require(
            family["memberStateIds"] == expected_member_ids,
            f"family member state ids {family['name']}",
        )
        expected_family_state_key = {
            "failure_kind": family_kind,
            "prefix": prefix,
            "canonical_rank_interval": [start_rank, end_rank],
            "member_state_ids": expected_member_ids,
            "member_state_keys": expected_member_keys,
        }
        require(
            family["normalizedStateKey"] == expected_family_state_key,
            f"family normalized state key {family['name']}",
        )
        require(
            family["normalizedStateId"]
            == normalized_state_id("nonid-family", expected_family_state_key),
            f"family normalized state id {family['name']}",
        )
        for coverage, cert_name, cert in zip(
            coverages, family["cert_names"], family["certs"], strict=True
        ):
            rank = coverage["raw_rank"]
            canonical_rank = coverage["canonical_rank"]
            require(
                coverage["canonical_word"][:len(prefix)] == prefix,
                f"family canonical prefix {family['name']} {canonical_rank}",
            )
            require(rank not in covered_once, f"family duplicate coverage rank {rank}")
            require(
                canonical_rank not in canonical_covered_once,
                f"family duplicate canonical coverage rank {canonical_rank}",
            )
            require(cert["name"] == cert_name, f"family cert name echo {rank}")
            require(cert["rank"] == rank, f"family cert rank echo {rank}")
            require(words_by_rank.get(rank) == cert["word"], f"family word echo {rank}")
            require(coverage["raw_word"] == cert["word"],
                    f"family coverage word echo {rank}")
            require(
                nonid_failure_matches_family(family_kind, cert),
                f"family failure kind {rank}",
            )
            check_nonid_cert_record(cert)
            covered_once[rank] = family["name"]
            canonical_covered_once[canonical_rank] = family["name"]
        family_summaries.append({
            "name": family["name"],
            "start": start_rank,
            "end": end_rank,
            "covered": len(expected_canonical_ranks),
        })

    required_canonical_ranks = {
        rank
        for family in payload["families"]
        for rank in range(family["startRank"], family["endRank"])
    }
    require(
        set(canonical_covered_once) == required_canonical_ranks,
        "family exact-once canonical coverage",
    )
    summary = payload["summary"]
    require(summary["families"] == len(payload["families"]), "family summary count")
    require(summary["covered_ranks"] == len(covered_once), "family summary coverage")
    require(
        set(summary["supported_failure_kinds"]) == NONID_FAMILY_FAILURE_KINDS,
        "family supported failure summary",
    )
    require(
        set(summary["present_failure_kinds"]) == present_failure_kinds,
        "family present failure summary",
    )
    accounting = payload["failure_kind_accounting"]
    absent_records = accounting["absent"]
    absent_failure_kinds = {record["failure_kind"] for record in absent_records}
    require(
        set(accounting["present"]) == present_failure_kinds,
        "family accounting present set",
    )
    require(
        absent_failure_kinds <= NONID_FAMILY_FAILURE_KINDS,
        "family accounting absent set supported",
    )
    require(
        set(accounting["accounted_for"]) == NONID_FAMILY_FAILURE_KINDS,
        "family accounting all failure kinds",
    )
    require(
        present_failure_kinds | absent_failure_kinds == NONID_FAMILY_FAILURE_KINDS,
        "family present-or-absent failure coverage",
    )
    require(multi_rank_family_seen, "family nontrivial multi-rank leaf")
    return {
        "families": len(payload["families"]),
        "covered_ranks": len(covered_once),
        "present_failure_kinds": sorted(present_failure_kinds),
        "absent_failure_kinds": sorted(absent_failure_kinds),
        "intervals": family_summaries,
    }


def check_translation_family_file(payload):
    require(payload.get("schema_version") == 1, "translation family schema version")
    require(payload.get("mode") == "translation-family-sample", "translation family mode")

    words_by_rank = {}
    for record in payload["pair_words"]:
        rank = record["rank"]
        word = record["word"]
        require(0 <= rank < EXPECTED_PAIR_WORDS, f"translation family rank bounds {rank}")
        require(valid_pair_word(word), f"translation family valid word {rank}")
        require(lex_rank_pair_word(word) == rank, f"translation family lex rank {rank}")
        require(rank not in words_by_rank, f"translation family duplicate word rank {rank}")
        words_by_rank[rank] = word

    covered_once = {}
    canonical_leaf_once = {}
    present_failure_kinds = set()
    multi_member_family_seen = False
    shared_farkas_seen = False
    family_summaries = []

    for family in payload["families"]:
        family_kind = family["failure_kind"]
        require(
            family_kind in TRANSLATION_FAMILY_FAILURE_KINDS,
            f"translation family supported failure {family['name']}",
        )
        present_failure_kinds.add(family_kind)
        coverages = [
            check_translation_coverage_record(record)
            for record in family["coverages"]
        ]
        certs = family["certs"]
        require(len(certs) == len(coverages), f"translation family cert count {family['name']}")
        require(len(family["cert_names"]) == len(certs),
                f"translation family cert-name count {family['name']}")
        if len(certs) > 1:
            multi_member_family_seen = True

        expected_member_keys = [translation_cert_state_key(cert) for cert in certs]
        expected_member_ids = [
            normalized_state_id("translation-member", key)
            for key in expected_member_keys
        ]
        require(
            family["memberStateKeys"] == expected_member_keys,
            f"translation family member state keys {family['name']}",
        )
        require(
            family["memberStateIds"] == expected_member_ids,
            f"translation family member state ids {family['name']}",
        )

        expected_state_key = {
            "failure_kind": family_kind,
            "coverages": [
                {
                    "raw_rank": coverage["raw_rank"],
                    "raw_mask": coverage["raw_mask"],
                    "canonical_rank": coverage["canonical_rank"],
                    "canonical_mask": coverage["canonical_mask"],
                }
                for coverage in coverages
            ],
            "member_state_ids": expected_member_ids,
            "member_state_keys": expected_member_keys,
        }

        if family_kind == "farkas":
            shared_farkas = []
            for cert in certs:
                b, seq = translation_vector(cert["word"], cert["mask"])
                constraints = translation_constraints_py(seq, b)
                system = normalized_constraint_system(constraints)
                terms = parse_farkas_terms(cert["failure"]["terms"])
                require(check_farkas_py(constraints, terms),
                        f"translation family Farkas check {cert['name']}")
                shared_farkas.append({
                    "case": {"rank": cert["rank"], "mask": cert["mask"]},
                    "normalizedConstraintSystem": system,
                    "normalizedFarkasTerms": normalized_farkas_terms_for_system(terms, system),
                    "originalFarkasTerms": cert["failure"]["terms"],
                })
            require(family["normalizedStateKey"]["sharedFarkas"] == shared_farkas,
                    f"translation family shared Farkas {family['name']}")
            expected_state_key["sharedFarkas"] = shared_farkas
            if len(shared_farkas) > 1:
                shared_farkas_seen = True

        require(
            family["normalizedStateKey"] == expected_state_key,
            f"translation family normalized state key {family['name']}",
        )
        require(
            family["normalizedStateId"]
            == normalized_state_id("translation-family", expected_state_key),
            f"translation family normalized state id {family['name']}",
        )

        for coverage, cert_name, cert in zip(coverages, family["cert_names"], certs, strict=True):
            raw_case = (coverage["raw_rank"], coverage["raw_mask"])
            canonical_case = (coverage["canonical_rank"], coverage["canonical_mask"])
            require(raw_case not in covered_once,
                    f"translation family duplicate raw case {raw_case}")
            require(cert["name"] == cert_name,
                    f"translation family cert name echo {raw_case}")
            require(cert["rank"] == coverage["raw_rank"],
                    f"translation family cert rank echo {raw_case}")
            require(cert["mask"] == coverage["raw_mask"],
                    f"translation family cert mask echo {raw_case}")
            require(words_by_rank.get(cert["rank"]) == cert["word"],
                    f"translation family word echo {raw_case}")
            require(coverage["raw_word"] == cert["word"],
                    f"translation family coverage word echo {raw_case}")
            require(translation_failure_matches_family(family_kind, cert),
                    f"translation family failure kind {raw_case}")
            check_translation_cert_record(cert)
            covered_once[raw_case] = family["name"]
            canonical_leaf_once.setdefault(canonical_case, set()).add(family["name"])

        family_summaries.append({
            "name": family["name"],
            "failure": family_kind,
            "covered": len(certs),
        })

    require(multi_member_family_seen, "translation family nontrivial leaf")
    require(shared_farkas_seen, "translation family shared Farkas group")
    for canonical_case, leaves in canonical_leaf_once.items():
        require(len(leaves) == 1, f"translation canonical case leaf count {canonical_case}")

    summary = payload["summary"]
    require(summary["families"] == len(payload["families"]), "translation family summary count")
    require(summary["covered_cases"] == len(covered_once), "translation family summary coverage")
    require(
        set(summary["supported_failure_kinds"]) == TRANSLATION_FAMILY_FAILURE_KINDS,
        "translation family supported summary",
    )
    require(
        set(summary["present_failure_kinds"]) == present_failure_kinds,
        "translation family present summary",
    )
    accounting = payload["failure_kind_accounting"]
    absent_failure_kinds = {record["failure_kind"] for record in accounting["absent"]}
    require(set(accounting["present"]) == present_failure_kinds,
            "translation family accounting present")
    require(absent_failure_kinds <= TRANSLATION_FAMILY_FAILURE_KINDS,
            "translation family accounting absent supported")
    require(set(accounting["accounted_for"]) == TRANSLATION_FAMILY_FAILURE_KINDS,
            "translation family accounting all kinds")
    require(present_failure_kinds | absent_failure_kinds == TRANSLATION_FAMILY_FAILURE_KINDS,
            "translation family present-or-absent coverage")

    return {
        "families": len(payload["families"]),
        "covered_cases": len(covered_once),
        "present_failure_kinds": sorted(present_failure_kinds),
        "absent_failure_kinds": sorted(absent_failure_kinds),
        "intervals": family_summaries,
    }


def check_exhaustive_real_certs_summary(payload):
    require(payload.get("schema_version") == 1, "exhaustive schema version")
    require(payload.get("mode") == "exhaustive-real-certs", "exhaustive mode")
    require(payload.get("summary_kind") == "gated-estimate", "exhaustive summary kind")
    require(payload.get("complete") is False, "gated summary must not claim completeness")

    profile = exact_profile.load_profile_payload(exact_profile.PROFILE_JSON_PATH)
    counts = exact_profile.check_profile_payload(profile)
    require(profile.get("complete") is True, "exhaustive profile complete")
    options = profile.get("options", {})
    require(options.get("with_symmetry") is True, "exhaustive profile symmetry")
    require(options.get("with_reversal") is True, "exhaustive profile reversal")
    require(options.get("exact_state_groups") is True, "exhaustive profile exact groups")

    coverage_payload = json.loads(COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
    check_coverage_file(coverage_payload)
    canonical_payload = json.loads(CANONICAL_COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
    check_canonical_coverage_manifest(canonical_payload)
    coverage_tree_payload = json.loads(COVERAGE_TREE_JSON_PATH.read_text(encoding="utf-8"))
    check_coverage_tree_file(coverage_tree_payload)
    nonidentity_family_payload = json.loads(NONIDENTITY_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
    nonidentity_summary = check_nonidentity_family_file(nonidentity_family_payload)
    translation_family_payload = json.loads(TRANSLATION_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
    translation_summary = check_translation_family_file(translation_family_payload)

    actual = payload["actual_counts"]
    require(actual == {
        "pair_words": counts["pair_words"],
        "identity_linear_words": counts["identity_linear_words"],
        "nonidentity_words": counts["nonidentity_words"],
        "translation_sign_assignments": counts["translation_sign_assignments"],
    }, "exhaustive actual counts")

    estimate = payload["estimate"]
    profile_estimates = profile["size_estimates"]
    require(
        estimate["flat_total_certs"] == profile_estimates["flat_total_certs"],
        "exhaustive flat total estimate",
    )
    require(
        estimate["canonical_cert_estimate"] ==
        profile_estimates["canonical_cert_estimate"],
        "exhaustive canonical cert estimate",
    )
    require(
        estimate["estimated_lean_bytes"] ==
        profile_estimates["estimated_lean_bytes"],
        "exhaustive Lean byte estimate",
    )
    require(estimate["estimated_lean_bytes"] > 0, "positive Lean byte estimate")

    budget = payload["budget"]
    require(budget["generated_data_budget_bytes"] >= 0, "exhaustive budget nonnegative")
    require(budget["required_free_bytes"] >= 0, "exhaustive required free nonnegative")
    require(budget["free_bytes"] >= 0, "exhaustive free bytes nonnegative")

    flat = payload["flat_fallback"]
    require(flat["used"] is False, "flat fallback not used")
    if not flat["allowed"]:
        require(
            flat["status"] == "disabled_without_allow_flat_exhaustive",
            "flat fallback disabled status",
        )

    emission = payload["full_emission"]
    require(emission["performed"] is False, "full emission must be gated")
    require(emission["large_emission_ready"] is False, "large emission not ready")
    require(
        emission["status"] in {
            "refused_budget_exceeded",
            "refused_prerequisite_or_space_check",
            "ready_but_approval_required",
            "approved_but_full_emitter_not_implemented",
        },
        "known exhaustive emission status",
    )
    if emission["status"] == "refused_budget_exceeded":
        require(
            estimate["estimated_lean_bytes"] >
            budget["generated_data_budget_bytes"],
            "budget exceeded status matches estimate",
        )
        require(
            "estimated_lean_bytes_exceeds_budget" in emission["refusal_reasons"],
            "budget refusal reason",
        )
    require(
        "Cuboctahedron/Generated/NonIdentity/" in payload["expected_full_generation_paths"],
        "expected nonidentity generation path",
    )
    require(
        "Cuboctahedron/Generated/Translation/" in payload["expected_full_generation_paths"],
        "expected translation generation path",
    )
    return {
        "status": emission["status"],
        "estimated_lean_bytes": estimate["estimated_lean_bytes"],
        "canonical_cert_estimate": estimate["canonical_cert_estimate"],
        "nonidentity_family_count": nonidentity_summary["families"],
        "translation_family_count": translation_summary["families"],
    }


def distinct_family_state_ids(payload):
    return len({family["normalizedStateId"] for family in payload["families"]})


def translation_sample_sharing_counts(payload):
    constraint_systems = set()
    farkas_shapes = set()
    for family in payload["families"]:
        shared_items = family.get("normalizedStateKey", {}).get("sharedFarkas")
        if not shared_items:
            continue
        if isinstance(shared_items, dict):
            shared_items = [shared_items]
        for shared in shared_items:
            if "normalizedConstraintSystem" in shared:
                constraint_systems.add(canonical_json(shared["normalizedConstraintSystem"]))
            if "normalizedFarkasTerms" in shared:
                farkas_shapes.add(canonical_json(shared["normalizedFarkasTerms"]))
    return {
        "sample_normalized_constraint_systems": len(constraint_systems),
        "sample_normalized_farkas_shapes": len(farkas_shapes),
        "full_constraint_histogram_available": False,
        "full_farkas_shape_histogram_available": False,
    }


def check_thresholds(thresholds, estimated_bytes):
    expected = [
        {"name": "1GiB", "limit_bytes": GIB},
        {"name": "500MiB", "limit_bytes": 500 * MIB},
        {"name": "100MiB", "limit_bytes": 100 * MIB},
    ]
    require(len(thresholds) == len(expected), "compression threshold count")
    for actual, base in zip(thresholds, expected, strict=True):
        require(actual["name"] == base["name"], f"compression threshold name {base['name']}")
        require(
            actual["limit_bytes"] == base["limit_bytes"],
            f"compression threshold limit {base['name']}",
        )
        require(
            actual["fits"] is (estimated_bytes <= base["limit_bytes"]),
            f"compression threshold fit {base['name']}",
        )


def check_compression_audit(payload):
    require(payload.get("schema_version") == 1, "compression audit schema version")
    require(payload.get("mode") == "compression-audit", "compression audit mode")
    require(payload.get("complete") is True, "compression audit complete")
    require(payload.get("proof_complete") is False, "compression audit not proof complete")

    profile = exact_profile.load_profile_payload(exact_profile.PROFILE_JSON_PATH)
    counts = exact_profile.check_profile_payload(profile)
    exact_summary = profile["size_estimates"].get("exact_state_group_summary", {})
    profile_estimates = profile["size_estimates"]
    nonid_exact = exact_summary.get("nonidentity", {})
    translation_exact = exact_summary.get("translation", {})

    coverage_payload = json.loads(COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
    check_coverage_file(coverage_payload)
    canonical_payload = json.loads(CANONICAL_COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
    check_canonical_coverage_manifest(canonical_payload)
    coverage_tree_payload = json.loads(COVERAGE_TREE_JSON_PATH.read_text(encoding="utf-8"))
    coverage_tree_summary = check_coverage_tree_file(coverage_tree_payload)
    nonidentity_family_payload = json.loads(NONIDENTITY_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
    nonidentity_summary = check_nonidentity_family_file(nonidentity_family_payload)
    translation_family_payload = json.loads(TRANSLATION_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
    translation_summary = check_translation_family_file(translation_family_payload)
    exhaustive_payload = json.loads(EXHAUSTIVE_REAL_CERTS_JSON_PATH.read_text(encoding="utf-8"))
    check_exhaustive_real_certs_summary(exhaustive_payload)
    aggregate_payload = None
    if AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.exists():
        aggregate_payload = json.loads(
            AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.read_text(encoding="utf-8")
        )
        if aggregate_payload.get("complete") is True:
            check_aggregate_compression_profile(aggregate_payload)
        else:
            aggregate_payload = None
    prefix_parametric_payload = None
    if PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.exists():
        prefix_parametric_payload = json.loads(
            PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.read_text(encoding="utf-8")
        )
        if prefix_parametric_payload.get("complete") is True:
            check_prefix_parametric_compression(prefix_parametric_payload)
        else:
            prefix_parametric_payload = None

    require(payload["actual_counts"] == {
        "pair_words": counts["pair_words"],
        "identity_linear_words": counts["identity_linear_words"],
        "nonidentity_words": counts["nonidentity_words"],
        "translation_sign_assignments": counts["translation_sign_assignments"],
    }, "compression audit actual counts")
    require(
        payload["canonical_counts"] == canonical_payload["canonical_counts"],
        "compression audit canonical counts",
    )

    prerequisite_keys = {
        "profile",
        "coverage_manifest",
        "canonical_coverage_manifest",
        "coverage_tree_sample",
        "nonidentity_family_sample",
        "translation_family_sample",
        "exhaustive_real_certs_summary",
        "aggregate_compression_profile",
        "prefix_parametric_compression",
    }
    require(set(payload["prerequisites"]) == prerequisite_keys,
            "compression audit prerequisite keys")
    for key, status in payload["prerequisites"].items():
        if key == "aggregate_compression_profile" and aggregate_payload is None:
            require(status["exists"] is False or status["bytes"] == 0,
                    "compression audit absent aggregate prerequisite")
        elif key == "prefix_parametric_compression" and prefix_parametric_payload is None:
            require(status["exists"] is False or status["bytes"] == 0,
                    "compression audit absent prefix-parametric prerequisite")
        else:
            require(status["exists"] is True, f"compression audit prerequisite exists {key}")
            require(status["bytes"] > 0, f"compression audit prerequisite bytes {key}")

    nonidentity = payload["nonidentity"]
    require(nonidentity["raw_cases"] == counts["nonidentity_words"],
            "compression audit nonidentity raw cases")
    require(
        nonidentity["compressed_linear_groups"]
        == int(profile_estimates.get("compressed_nonidentity_linear_groups", 0)),
        "compression audit nonidentity linear groups",
    )
    expected_nonid_unbucketed = (
        0 if aggregate_payload is not None
        else int(nonid_exact.get("pathSensitiveUnbucketed", 0))
    )
    require(
        nonidentity["path_sensitive_unbucketed"] == expected_nonid_unbucketed,
        "compression audit nonidentity unbucketed",
    )
    require(
        nonidentity["full_failure_family_histogram_available"]
        is (aggregate_payload is not None or expected_nonid_unbucketed == 0),
        "compression audit nonidentity histogram availability",
    )
    expected_aggregate_shapes = (
        aggregate_payload["nonidentity"]["shape_histogram"]["distinct"]
        if aggregate_payload is not None
        else 0
    )
    require(
        nonidentity["aggregate_shape_count"] == expected_aggregate_shapes,
        "compression audit aggregate nonidentity shapes",
    )
    sample_nonid = nonidentity["sample_family_summary"]
    require(sample_nonid["family_count"] == nonidentity_summary["families"],
            "compression audit nonidentity sample families")
    require(sample_nonid["covered_ranks"] == nonidentity_summary["covered_ranks"],
            "compression audit nonidentity sample covered ranks")
    require(sample_nonid["present_failure_kinds"] == nonidentity_summary["present_failure_kinds"],
            "compression audit nonidentity present kinds")
    require(sample_nonid["absent_failure_kinds"] == nonidentity_summary["absent_failure_kinds"],
            "compression audit nonidentity absent kinds")
    require(
        sample_nonid["distinct_normalized_state_ids"]
        == distinct_family_state_ids(nonidentity_family_payload),
        "compression audit nonidentity state ids",
    )
    require(sample_nonid["is_sample_only"] is True,
            "compression audit nonidentity sample marker")

    translation = payload["translation"]
    require(translation["raw_cases"] == counts["translation_sign_assignments"],
            "compression audit translation raw cases")
    expected_shared_farkas = (
        aggregate_payload["translation"]["farkas_shape_histogram"]["distinct"]
        if aggregate_payload is not None
        else int(profile_estimates.get("shared_farkas_groups", 0))
    )
    require(translation["shared_farkas_groups"] == expected_shared_farkas,
            "compression audit shared Farkas groups")
    expected_translation_unbucketed = (
        0 if aggregate_payload is not None
        else int(translation_exact.get("pathSensitiveUnbucketed", 0))
    )
    require(
        translation["path_sensitive_unbucketed"] == expected_translation_unbucketed,
        "compression audit translation unbucketed",
    )
    require(
        translation["full_constraint_histogram_available"]
        is (aggregate_payload is not None or expected_translation_unbucketed == 0),
        "compression audit translation histogram availability",
    )
    sample_translation = translation["sample_family_summary"]
    require(sample_translation["family_count"] == translation_summary["families"],
            "compression audit translation sample families")
    require(sample_translation["covered_cases"] == translation_summary["covered_cases"],
            "compression audit translation sample covered cases")
    require(
        sample_translation["present_failure_kinds"]
        == translation_summary["present_failure_kinds"],
        "compression audit translation present kinds",
    )
    require(
        sample_translation["absent_failure_kinds"]
        == translation_summary["absent_failure_kinds"],
        "compression audit translation absent kinds",
    )
    require(
        sample_translation["distinct_normalized_state_ids"]
        == distinct_family_state_ids(translation_family_payload),
        "compression audit translation state ids",
    )
    require(sample_translation["is_sample_only"] is True,
            "compression audit translation sample marker")
    if aggregate_payload is None:
        expected_sharing = translation_sample_sharing_counts(translation_family_payload)
    else:
        expected_sharing = {
            "sample_normalized_constraint_systems":
                aggregate_payload["translation"]["constraint_system_histogram"]["distinct"],
            "sample_normalized_farkas_shapes":
                aggregate_payload["translation"]["farkas_shape_histogram"]["distinct"],
            "full_constraint_histogram_available": True,
            "full_farkas_shape_histogram_available": True,
        }
    require(translation["sample_sharing"] == expected_sharing,
            "compression audit translation sample sharing")

    prefix_tree = payload["prefix_tree"]
    require(prefix_tree["sample_nonidentity_nodes"] == coverage_tree_summary["nonidentity_trees"],
            "compression audit sample nonidentity tree nodes")
    require(prefix_tree["sample_translation_nodes"] == coverage_tree_summary["translation_trees"],
            "compression audit sample translation tree nodes")
    require(prefix_tree["full_leaf_estimate"] == profile_estimates["prefix_tree_leaf_estimate"],
            "compression audit prefix leaf estimate")

    size_ladder = payload["size_ladder"]
    if prefix_parametric_payload is not None:
        estimated_bytes = prefix_parametric_payload["size_ladder"]["estimated_lean_bytes"]
        canonical_estimate = prefix_parametric_payload["size_ladder"]["final_cert_estimate"]
    elif aggregate_payload is None:
        estimated_bytes = exhaustive_payload["estimate"]["estimated_lean_bytes"]
        canonical_estimate = exhaustive_payload["estimate"]["canonical_cert_estimate"]
    else:
        estimated_bytes = aggregate_payload["size_ladder"]["estimated_lean_bytes"]
        canonical_estimate = aggregate_payload["size_ladder"]["canonical_representative_estimate"]
    require(size_ladder["flat_total_certs"] == profile_estimates["flat_total_certs"],
            "compression audit flat cert count")
    require(size_ladder["canonical_cert_estimate"] == canonical_estimate,
            "compression audit canonical cert estimate")
    require(size_ladder["current_estimated_lean_bytes"] == estimated_bytes,
            "compression audit estimated Lean bytes")
    require(abs(size_ladder["current_estimated_lean_gib"] - estimated_bytes / GIB) < 1e-12,
            "compression audit estimated Lean GiB")
    require(
        prefix_tree["full_reduction_proven"]
        is (profile_estimates["prefix_tree_leaf_estimate"] < canonical_estimate),
        "compression audit prefix reduction proven",
    )
    prefix_parametric = payload["prefix_parametric"]
    if prefix_parametric_payload is None:
        require(prefix_parametric == {"available": False},
                "compression audit absent prefix-parametric summary")
    else:
        require(prefix_parametric["available"] is True,
                "compression audit prefix-parametric available")
        require(
            prefix_parametric["source"]
            == str(PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT)),
            "compression audit prefix-parametric source",
        )
        require(
            prefix_parametric["final_cert_estimate"]
            == prefix_parametric_payload["size_ladder"]["final_cert_estimate"],
            "compression audit prefix-parametric final estimate",
        )
        require(
            prefix_parametric["estimated_lean_bytes"]
            == prefix_parametric_payload["size_ladder"]["estimated_lean_bytes"],
            "compression audit prefix-parametric bytes",
        )
        require(
            prefix_parametric["nonidentity_residual_singletons"]
            == prefix_parametric_payload["size_ladder"][
                "nonidentity_residual_singleton_estimate"
            ],
            "compression audit prefix-parametric nonidentity residual",
        )
        require(
            prefix_parametric["translation_shared_farkas"]
            == prefix_parametric_payload["size_ladder"][
                "translation_shared_farkas_estimate"
            ],
            "compression audit prefix-parametric translation Farkas",
        )
    check_thresholds(size_ladder["thresholds"], estimated_bytes)

    full_histograms_available = (
        nonidentity["full_failure_family_histogram_available"]
        and translation["full_constraint_histogram_available"]
        and translation["sample_sharing"]["full_constraint_histogram_available"]
        and translation["sample_sharing"]["full_farkas_shape_histogram_available"]
    )
    fits_1gib = size_ladder["thresholds"][0]["fits"]
    decision = payload["decision"]
    if prefix_parametric_payload is not None:
        require(decision["status"] == prefix_parametric_payload["decision"]["status"],
                "compression audit prefix-parametric status")
        require(
            decision["ready_for_14E7"]
            is prefix_parametric_payload["decision"]["ready_for_14E7"],
            "compression audit prefix-parametric ready decision",
        )
        require(
            decision["recommendation"]
            == prefix_parametric_payload["decision"]["recommendation"],
            "compression audit prefix-parametric recommendation",
        )
        require(
            decision["source"]
            == str(PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH.relative_to(REPO_ROOT)),
            "compression audit prefix-parametric source",
        )
    elif aggregate_payload is not None:
        require(decision["status"] == aggregate_payload["decision"]["status"],
                "compression audit aggregate status")
        require(
            decision["ready_for_14E7"] is aggregate_payload["decision"]["ready_for_14E7"],
            "compression audit aggregate ready decision",
        )
        require(
            decision["recommendation"] == aggregate_payload["decision"]["recommendation"],
            "compression audit aggregate recommendation",
        )
        require(
            decision["source"] == str(AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.relative_to(REPO_ROOT)),
            "compression audit aggregate source",
        )
    elif decision["ready_for_14E7"]:
        require(full_histograms_available and fits_1gib, "compression audit ready decision")
        require(decision["status"] == "ready_for_14E7",
                "compression audit ready status")
        require(
            decision["recommendation"] == "proceed_to_concrete_exhaustive_coverage_witness",
            "compression audit ready recommendation",
        )
    elif not full_histograms_available:
        require(
            decision["status"] == "blocked_needs_full_compression_histograms",
            "compression audit histogram-blocked status",
        )
        require(
            decision["recommendation"]
            == "add_full_aggregate_compression_profiler_for_nonidentity_failure_families_"
               "and_translation_constraint_farkas_shapes",
            "compression audit histogram-blocked recommendation",
        )
    else:
        require(not fits_1gib, "compression audit budget blocked condition")
        require(decision["status"] == "blocked_exceeds_size_budget",
                "compression audit budget-blocked status")
        require(
            decision["recommendation"] == "add_deeper_prefix_or_family_compression_before_14E7",
            "compression audit budget-blocked recommendation",
        )

    return {
        "status": decision["status"],
        "ready_for_14E7": decision["ready_for_14E7"],
        "estimated_lean_bytes": estimated_bytes,
        "fits_1GiB": fits_1gib,
        "fits_500MiB": size_ladder["thresholds"][1]["fits"],
        "fits_100MiB": size_ladder["thresholds"][2]["fits"],
        "recommendation": decision["recommendation"],
    }


def check_group_samples(groups, *, case_name):
    for group in groups:
        details = group["details"]
        require(details["case"] == case_name, f"{case_name} group case")
        require(details["failure"] == group["key"].split("failure=", 1)[1],
                f"{case_name} group key/failure")
        for sample in group["samples"]:
            rank = sample["rank"]
            word = sample["word"]
            require(valid_pair_word(word), f"{case_name} sample valid word")
            require(lex_rank_pair_word(word) == rank, f"{case_name} sample rank")
            if case_name == "nonidentity":
                require(
                    exact_profile.recompute_nonidentity_failure(rank, word)
                    == details["failure"],
                    f"aggregate nonidentity sample failure {rank}",
                )
            else:
                mask = sample["mask"]
                require(0 <= mask < 64, f"aggregate translation sample mask {rank}/{mask}")
                require(
                    exact_profile.recompute_translation_failure(rank, word, mask)
                    == details["failure"],
                    f"aggregate translation sample failure {rank}/{mask}",
                )


def check_aggregate_compression_profile(payload):
    require(payload.get("schema_version") == 1, "aggregate schema version")
    require(payload.get("mode") == "aggregate-compression-profile", "aggregate mode")
    require(payload.get("backend") == "compiled-exact-cpp-aggregate", "aggregate backend")
    require(isinstance(payload.get("complete"), bool), "aggregate complete flag")
    options = payload["options"]
    require(options.get("with_symmetry") is True, "aggregate symmetry option")
    require(options.get("with_reversal") is True, "aggregate reversal option")
    require(options.get("reversal_proof_transport_enabled") is False,
            "aggregate reversal grouping-only")

    counts = payload["actual_counts"]
    require(counts["pair_words"] >= 0, "aggregate nonnegative pair words")
    require(counts["identity_linear_words"] >= 0, "aggregate nonnegative identity words")
    require(counts["nonidentity_words"] >= 0, "aggregate nonnegative nonidentity words")
    require(
        counts["identity_linear_words"] + counts["nonidentity_words"]
        == counts["pair_words"],
        "aggregate identity/nonidentity partition",
    )
    require(
        counts["translation_sign_assignments"] == counts["identity_linear_words"] * 64,
        "aggregate translation assignment count",
    )
    if payload["complete"]:
        require(counts["pair_words"] == EXPECTED_PAIR_WORDS, "aggregate complete pair words")
        require(counts["identity_linear_words"] == EXPECTED_IDENTITY_WORDS,
                "aggregate complete identity words")
        require(
            counts["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            "aggregate complete translation assignments",
        )

    canonical = payload["canonical_counts"]
    require(canonical["pair_word_classes"] >= 0, "aggregate canonical pair count")
    require(canonical["translation_choice_classes"] >= 0,
            "aggregate canonical translation count")
    require(0 <= canonical["max_pair_word_orbit"] <= 16,
            "aggregate canonical pair orbit bound")
    require(0 <= canonical["max_translation_choice_orbit"] <= 16,
            "aggregate canonical translation orbit bound")

    nonidentity = payload["nonidentity"]
    nonid_failure_counts = nonidentity["failure_counts"]
    require(sum(nonid_failure_counts.values()) == counts["nonidentity_words"],
            "aggregate nonidentity failure sum")
    require(nonidentity["shape_histogram"]["total_cases"] == counts["nonidentity_words"],
            "aggregate nonidentity shape total")
    require(nonidentity["shape_histogram"]["distinct"] >= 0,
            "aggregate nonidentity shape distinct")

    translation = payload["translation"]
    translation_failure_counts = translation["failure_counts"]
    require(sum(translation_failure_counts.values()) == counts["translation_sign_assignments"],
            "aggregate translation failure sum")
    needs_farkas = translation_failure_counts.get("needsFarkas", 0)
    require(translation["constraint_cases"] == needs_farkas,
            "aggregate constraint cases")
    require(translation["constraint_system_histogram"]["total_cases"] == needs_farkas,
            "aggregate constraint histogram total")
    require(
        translation["farkas_shape_histogram"]["total_cases"]
        + translation["unresolved_farkas_cases"] == needs_farkas,
        "aggregate Farkas/resolved partition",
    )
    require(
        translation["unresolved_constraint_systems"]["total_cases"]
        == translation["unresolved_farkas_cases"],
        "aggregate unresolved system total",
    )
    require(0 <= translation["bad_translation_shape_count"] <=
            translation_failure_counts.get("badTranslationVector", 0) +
            translation_failure_counts.get("badDirectionSign", 0),
            "aggregate bad translation shape count")
    bad_translation_histogram = translation.get("bad_translation_shape_histogram")
    if bad_translation_histogram is not None:
        require(
            bad_translation_histogram["distinct"] == translation["bad_translation_shape_count"],
            "aggregate bad translation histogram distinct",
        )
        require(
            bad_translation_histogram["total_cases"]
            == translation_failure_counts.get("badTranslationVector", 0)
            + translation_failure_counts.get("badDirectionSign", 0),
            "aggregate bad translation histogram total",
        )

    size = payload["size_ladder"]
    flat_total = counts["nonidentity_words"] + counts["translation_sign_assignments"]
    canonical_estimate = canonical["pair_word_classes"] + canonical["translation_choice_classes"]
    constraint_estimate = (
        nonidentity["shape_histogram"]["distinct"]
        + translation["bad_translation_shape_count"]
        + translation["constraint_system_histogram"]["distinct"]
    )
    farkas_estimate = constraint_estimate + translation["farkas_shape_histogram"]["distinct"]
    final_estimate = min(canonical_estimate, farkas_estimate)
    require(size["flat_total_certs"] == flat_total, "aggregate flat total")
    require(size["canonical_representative_estimate"] == canonical_estimate,
            "aggregate canonical estimate")
    require(size["constraint_family_estimate"] == constraint_estimate,
            "aggregate constraint estimate")
    require(size["farkas_family_estimate"] == farkas_estimate,
            "aggregate Farkas estimate")
    require(size["final_cert_estimate"] == final_estimate, "aggregate final estimate")
    require(size["bytes_per_certificate_proxy"] == 512, "aggregate byte proxy")
    estimated_bytes = final_estimate * size["bytes_per_certificate_proxy"]
    require(size["estimated_lean_bytes"] == estimated_bytes, "aggregate byte estimate")
    check_thresholds(size["thresholds"], estimated_bytes)

    check_group_samples(payload["nonidentity_groups"], case_name="nonidentity")
    check_group_samples(payload["translation_groups"], case_name="translation")

    unresolved = translation["unresolved_farkas_cases"] != 0
    fits_1gib = size["thresholds"][0]["fits"]
    decision = payload["decision"]
    require(decision["ready_for_14E7"] is ((not unresolved) and fits_1gib),
            "aggregate ready decision")
    if unresolved:
        require(decision["status"] == "blocked_needs_deeper_compression",
                "aggregate unresolved status")
        require(
            decision["recommendation"]
            == "extend_sparse_farkas_or_add_exact_lp_dual_certificate_search",
            "aggregate unresolved recommendation",
        )
    elif not fits_1gib:
        require(decision["status"] == "blocked_exceeds_budget",
                "aggregate budget status")
        require(
            decision["recommendation"]
            == "add_prefix_or_parametric_family_certificates_before_14E7",
            "aggregate budget recommendation",
        )
    else:
        require(decision["status"] == "ready_for_14E7", "aggregate ready status")
        require(
            decision["recommendation"]
            == "update_exhaustive_real_cert_generator_to_emit_family_witnesses",
            "aggregate ready recommendation",
        )

    return {
        "complete": payload["complete"],
        "status": decision["status"],
        "ready_for_14E7": decision["ready_for_14E7"],
        "nonidentity_shapes": nonidentity["shape_histogram"]["distinct"],
        "constraint_systems": translation["constraint_system_histogram"]["distinct"],
        "farkas_shapes": translation["farkas_shape_histogram"]["distinct"],
        "estimated_lean_bytes": estimated_bytes,
    }


def check_prefix_parametric_compression(payload):
    require(payload.get("schema_version") == 1, "prefix-parametric schema version")
    require(payload.get("mode") == "prefix-parametric-compression",
            "prefix-parametric mode")
    require(payload.get("complete") is True, "prefix-parametric complete")
    require(payload.get("proof_complete") is False,
            "prefix-parametric not proof complete")
    require(
        payload.get("source")
        == str(AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.relative_to(REPO_ROOT)),
        "prefix-parametric aggregate source",
    )

    aggregate_payload = json.loads(
        AGGREGATE_COMPRESSION_PROFILE_JSON_PATH.read_text(encoding="utf-8")
    )
    aggregate_summary = check_aggregate_compression_profile(aggregate_payload)
    require(aggregate_summary["complete"] is True,
            "prefix-parametric aggregate complete")
    require(payload["actual_counts"] == aggregate_payload["actual_counts"],
            "prefix-parametric actual counts")
    require(payload["canonical_counts"] == aggregate_payload["canonical_counts"],
            "prefix-parametric canonical counts")
    require(payload["aggregate_decision"] == aggregate_payload["decision"],
            "prefix-parametric aggregate decision echo")

    nonidentity = payload["nonidentity"]
    aggregate_nonid = aggregate_payload["nonidentity"]
    nonid_failures = nonidentity["failure_counts"]
    require(nonid_failures == aggregate_nonid["failure_counts"],
            "prefix-parametric nonidentity failure echo")
    require(
        sum(nonid_failures.values())
        == payload["actual_counts"]["nonidentity_words"],
        "prefix-parametric nonidentity failure sum",
    )
    nonid_families = nonidentity["parametric_families"]
    expected_nonid_family_failures = {
        failure for failure in ("badDirectionSign", "badPairBalance", "noFixedAxis")
        if nonid_failures.get(failure, 0) > 0
    }
    require(
        {family["failure"] for family in nonid_families}
        == expected_nonid_family_failures,
        "prefix-parametric nonidentity family failures",
    )
    for family in nonid_families:
        require(family["raw_cases"] == nonid_failures[family["failure"]],
                f"prefix-parametric nonidentity family raw {family['name']}")
        require(family["estimated_certificates"] == 1,
                f"prefix-parametric nonidentity family estimate {family['name']}")
        require(family["certificate_kind"].startswith("prefix_"),
                f"prefix-parametric nonidentity family kind {family['name']}")
    require(nonidentity["residual_singleton_failure"] == "needsAxisSolveOrSimulation",
            "prefix-parametric nonidentity residual kind")
    require(
        nonidentity["residual_singleton_cases"]
        == nonid_failures.get("needsAxisSolveOrSimulation", 0),
        "prefix-parametric nonidentity residual cases",
    )
    require(
        nonidentity["raw_cases_covered"]
        == sum(family["raw_cases"] for family in nonid_families)
        + nonidentity["residual_singleton_cases"],
        "prefix-parametric nonidentity covered partition",
    )

    translation = payload["translation"]
    aggregate_translation = aggregate_payload["translation"]
    translation_failures = translation["failure_counts"]
    require(translation_failures == aggregate_translation["failure_counts"],
            "prefix-parametric translation failure echo")
    require(
        sum(translation_failures.values())
        == payload["actual_counts"]["translation_sign_assignments"],
        "prefix-parametric translation failure sum",
    )
    translation_families = translation["parametric_families"]
    expected_translation_family_failures = {
        failure for failure in ("badDirectionSign", "badTranslationVector")
        if translation_failures.get(failure, 0) > 0
    }
    require(
        {family["failure"] for family in translation_families}
        == expected_translation_family_failures,
        "prefix-parametric translation family failures",
    )
    for family in translation_families:
        require(family["raw_cases"] == translation_failures[family["failure"]],
                f"prefix-parametric translation family raw {family['name']}")
        require(family["estimated_certificates"] == 1,
                f"prefix-parametric translation family estimate {family['name']}")
        require(family["certificate_kind"].startswith("prefix_"),
                f"prefix-parametric translation family kind {family['name']}")
    require(translation["shared_farkas_cases"] == translation_failures.get("needsFarkas", 0),
            "prefix-parametric shared Farkas cases")
    require(
        translation["shared_farkas_shapes"]
        == aggregate_translation["farkas_shape_histogram"]["distinct"],
        "prefix-parametric shared Farkas shapes",
    )
    require(
        translation["unresolved_farkas_cases"]
        == aggregate_translation["unresolved_farkas_cases"],
        "prefix-parametric unresolved Farkas cases",
    )
    require(
        translation["raw_cases_covered"]
        == sum(family["raw_cases"] for family in translation_families)
        + translation["shared_farkas_cases"],
        "prefix-parametric translation covered partition",
    )

    size = payload["size_ladder"]
    nonid_family_estimate = sum(
        family["estimated_certificates"] for family in nonid_families
    )
    translation_family_estimate = sum(
        family["estimated_certificates"] for family in translation_families
    )
    final_estimate = (
        nonid_family_estimate
        + nonidentity["residual_singleton_cases"]
        + translation_family_estimate
        + translation["shared_farkas_shapes"]
    )
    require(size["bytes_per_certificate_proxy"] == 512,
            "prefix-parametric byte proxy")
    require(size["flat_total_certs"] == aggregate_payload["size_ladder"]["flat_total_certs"],
            "prefix-parametric flat total")
    require(
        size["aggregate_final_cert_estimate"]
        == aggregate_payload["size_ladder"]["final_cert_estimate"],
        "prefix-parametric aggregate estimate",
    )
    require(size["nonidentity_parametric_family_estimate"] == nonid_family_estimate,
            "prefix-parametric nonidentity estimate")
    require(
        size["nonidentity_residual_singleton_estimate"]
        == nonidentity["residual_singleton_cases"],
        "prefix-parametric nonidentity residual estimate",
    )
    require(size["translation_parametric_family_estimate"] == translation_family_estimate,
            "prefix-parametric translation estimate")
    require(size["translation_shared_farkas_estimate"] == translation["shared_farkas_shapes"],
            "prefix-parametric Farkas estimate")
    require(size["final_cert_estimate"] == final_estimate,
            "prefix-parametric final estimate")
    estimated_bytes = final_estimate * size["bytes_per_certificate_proxy"]
    require(size["estimated_lean_bytes"] == estimated_bytes,
            "prefix-parametric byte estimate")
    require(abs(size["estimated_lean_gib"] - estimated_bytes / GIB) < 1e-12,
            "prefix-parametric GiB estimate")
    check_thresholds(size["thresholds"], estimated_bytes)

    decision = payload["decision"]
    ready = translation["unresolved_farkas_cases"] == 0 and size["thresholds"][0]["fits"]
    require(decision["ready_for_14E7"] is ready,
            "prefix-parametric ready decision")
    if ready:
        require(decision["status"] == "ready_for_14E7",
                "prefix-parametric ready status")
        require(
            decision["recommendation"]
            == "proceed_to_concrete_exhaustive_coverage_witness_with_parametric_families",
            "prefix-parametric ready recommendation",
        )
    else:
        require(decision["status"] == "blocked_exceeds_budget",
                "prefix-parametric blocked status")
        require(
            decision["recommendation"]
            == "add_deeper_prefix_or_parametric_family_compression_before_14E7",
            "prefix-parametric blocked recommendation",
        )

    return {
        "status": decision["status"],
        "ready_for_14E7": decision["ready_for_14E7"],
        "final_cert_estimate": final_estimate,
        "estimated_lean_bytes": estimated_bytes,
        "fits_1GiB": size["thresholds"][0]["fits"],
        "fits_500MiB": size["thresholds"][1]["fits"],
        "fits_100MiB": size["thresholds"][2]["fits"],
        "nonidentity_residual_singletons": nonidentity["residual_singleton_cases"],
        "translation_shared_farkas": translation["shared_farkas_shapes"],
    }


def encode_uvarint(value: int) -> bytes:
    if value < 0:
        raise ValueError("varint cannot encode negative values")
    out = bytearray()
    while value >= 0x80:
        out.append((value & 0x7F) | 0x80)
        value >>= 7
    out.append(value)
    return bytes(out)


def read_uvarint(data: bytes, offset: int) -> tuple[int, int]:
    value = 0
    shift = 0
    for _ in range(10):
        if offset >= len(data):
            raise ValueError("malformed varint")
        byte = data[offset]
        offset += 1
        value += (byte & 0x7F) << shift
        if byte < 0x80:
            return value, offset
        shift += 7
    raise ValueError("malformed varint")


def build_compact_blob(
    *,
    pilot_limit: int,
    nonidentity_ranks: list[int],
    translation_cases: list[dict],
    kind: int = 1,
) -> bytes:
    sections: list[tuple[int, bytes]] = []
    sections.append((1, encode_uvarint(pilot_limit)))
    nonid = bytearray(encode_uvarint(len(nonidentity_ranks)))
    for rank in nonidentity_ranks:
        nonid.extend(encode_uvarint(rank))
    sections.append((2, bytes(nonid)))
    translation = bytearray(encode_uvarint(len(translation_cases)))
    for case in translation_cases:
        translation.extend(encode_uvarint(int(case["pair_rank"])))
        translation.extend(encode_uvarint(int(case["sign_mask"])))
    sections.append((3, bytes(translation)))
    blob = bytearray(b"COCB")
    blob.append(1)
    blob.append(kind)
    blob.extend(encode_uvarint(len(sections)))
    for section_id, payload in sections:
        blob.extend(encode_uvarint(section_id))
        blob.extend(encode_uvarint(len(payload)))
    for _section_id, payload in sections:
        blob.extend(payload)
    return bytes(blob)


def decode_compact_blob_text(text: str) -> dict:
    data = base64.b64decode(text, validate=True)
    if len(data) < 7 or data[:4] != b"COCB":
        raise ValueError("bad magic")
    if data[4] != 1:
        raise ValueError("bad version")
    if data[5] not in {1, 2}:
        raise ValueError("bad bundle kind")
    kind = "pilot" if data[5] == 1 else "full"
    section_count, offset = read_uvarint(data, 6)
    headers: list[tuple[int, int]] = []
    seen: set[int] = set()
    for _ in range(section_count):
        section_id, offset = read_uvarint(data, offset)
        length, offset = read_uvarint(data, offset)
        if section_id in seen:
            raise ValueError("duplicate section")
        seen.add(section_id)
        headers.append((section_id, length))
    sections: dict[int, bytes] = {}
    for section_id, length in headers:
        end = offset + length
        if end > len(data):
            raise ValueError("truncated section")
        sections[section_id] = data[offset:end]
        offset = end
    if offset != len(data):
        raise ValueError("trailing input")
    for required in (1, 2, 3):
        if required not in sections:
            raise ValueError("missing section")

    pilot_limit, meta_offset = read_uvarint(sections[1], 0)
    if meta_offset != len(sections[1]):
        raise ValueError("metadata trailing input")

    nonidentity_count, nonid_offset = read_uvarint(sections[2], 0)
    nonidentity_ranks = []
    for _ in range(nonidentity_count):
        rank, nonid_offset = read_uvarint(sections[2], nonid_offset)
        nonidentity_ranks.append(rank)
    if nonid_offset != len(sections[2]):
        raise ValueError("nonidentity trailing input")

    translation_count, trans_offset = read_uvarint(sections[3], 0)
    translation_cases = []
    for _ in range(translation_count):
        rank, trans_offset = read_uvarint(sections[3], trans_offset)
        mask, trans_offset = read_uvarint(sections[3], trans_offset)
        translation_cases.append({"pair_rank": rank, "sign_mask": mask})
    if trans_offset != len(sections[3]):
        raise ValueError("translation trailing input")

    if pilot_limit != len(nonidentity_ranks) + len(translation_cases):
        raise ValueError("pilot count mismatch")
    return {
        "kind": kind,
        "pilot_limit": pilot_limit,
        "nonidentity_ranks": nonidentity_ranks,
        "translation_cases": translation_cases,
        "raw_bytes": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
    }


def require_decode_fails(name: str, blob: bytes) -> None:
    text = base64.b64encode(blob).decode("ascii")
    try:
        decode_compact_blob_text(text)
    except Exception:
        return
    raise SystemExit(f"compact malformed test unexpectedly decoded: {name}")


def check_compact_malformed_tests() -> int:
    good = build_compact_blob(
        pilot_limit=2,
        nonidentity_ranks=[1],
        translation_cases=[{"pair_rank": 0, "sign_mask": 0}],
    )
    bad_magic = bytearray(good)
    bad_magic[0] = 0
    require_decode_fails("bad magic", bytes(bad_magic))
    bad_version = bytearray(good)
    bad_version[4] = 2
    require_decode_fails("bad version", bytes(bad_version))
    bad_kind = bytearray(good)
    bad_kind[5] = 99
    require_decode_fails("bad kind", bytes(bad_kind))
    require_decode_fails("truncated section", good[:-1])
    duplicate = bytearray(b"COCB")
    duplicate.extend([1, 1])
    duplicate.extend(encode_uvarint(2))
    duplicate.extend(encode_uvarint(1))
    duplicate.extend(encode_uvarint(1))
    duplicate.extend(encode_uvarint(1))
    duplicate.extend(encode_uvarint(1))
    duplicate.extend(encode_uvarint(0))
    duplicate.extend(encode_uvarint(0))
    require_decode_fails("duplicate section", bytes(duplicate))
    return 5


def check_compact_cert_payload(payload: dict, expected_mode: str) -> dict:
    require(payload.get("schema_version") == 1, "compact schema version")
    require(payload.get("mode") == expected_mode, "compact mode")
    require(payload.get("complete") is True, "compact complete")
    require(payload.get("proof_complete") is False, "compact not proof complete")
    require(payload.get("bundle_kind") == "pilot", "compact pilot bundle")
    blob_info = payload["blob"]
    require(blob_info["encoding"] == "base64", "compact encoding")
    blob_path = REPO_ROOT / blob_info["path"]
    text = blob_path.read_text(encoding="ascii")
    decoded = decode_compact_blob_text(text)
    require(decoded["kind"] == "pilot", "decoded compact kind")
    require(decoded["pilot_limit"] == payload["pilot_limit"],
            "decoded compact limit")
    require(decoded["raw_bytes"] == blob_info["raw_bytes"],
            "decoded raw bytes")
    require(decoded["sha256"] == blob_info["sha256"],
            "decoded sha256")
    counts = payload["coverage_counts"]
    require(counts["nonidentity_terminals"] == len(decoded["nonidentity_ranks"]),
            "compact nonidentity count")
    require(counts["translation_terminals"] == len(decoded["translation_cases"]),
            "compact translation count")
    require(counts["total_terminals"] == decoded["pilot_limit"],
            "compact total count")
    require(
        payload["pilot_slice"]["first_nonidentity_ranks"]
        == decoded["nonidentity_ranks"][:10],
        "compact nonidentity slice",
    )
    require(
        payload["pilot_slice"]["first_translation_cases"]
        == decoded["translation_cases"][:10],
        "compact translation slice",
    )
    backend = payload["backend_evaluation"]
    require(backend["uses_native_decide"] is False,
            "compact backend no native_decide")
    require(backend["compact_source_plus_blob_bytes"] > 0,
            "compact bytes positive")
    if expected_mode == "compact-cert-pilot":
        require(
            backend["selected_backend"] == "generated_lean_fallback",
            "pilot fallback backend",
        )
        require(
            "compact_pilot_does_not_semantically_reconstruct_every_terminal_certificate"
            in backend["failure_reasons"],
            "pilot semantic fallback reason",
        )
    malformed = check_compact_malformed_tests()
    return {
        "pilot_limit": decoded["pilot_limit"],
        "nonidentity_terminals": len(decoded["nonidentity_ranks"]),
        "translation_terminals": len(decoded["translation_cases"]),
        "blob_bytes": blob_info["bytes"],
        "selected_backend": backend["selected_backend"],
        "malformed_tests": malformed,
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--small-sample", action="store_true", help="check deterministic Step 14C sample")
    parser.add_argument(
        "--mode",
        choices=[
            "small-sample",
            "coverage-manifest",
            "profile-exhaustive-states",
            "canonical-symmetry-sample",
            "coverage-tree-sample",
            "nonidentity-family-sample",
            "translation-family-sample",
            "exhaustive-real-certs",
            "compression-audit",
            "aggregate-compression-profile",
            "prefix-parametric-compression",
            "compact-cert-sample",
            "compact-cert-pilot",
            "canonical-coverage-manifest",
            "canonical-orbit-coverage",
            "canonical-orbit-coverage-manifest",
        ],
        help="check mode",
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="optional pair-word limit for canonical-orbit-coverage",
    )
    parser.add_argument(
        "--profile-input",
        type=Path,
        default=exact_profile.PROFILE_JSON_PATH,
        help="input path for profile-exhaustive-states JSON",
    )
    parser.add_argument(
        "--compression-audit-input",
        type=Path,
        default=COMPRESSION_AUDIT_JSON_PATH,
        help="input path for compression-audit JSON",
    )
    parser.add_argument(
        "--aggregate-profile-input",
        type=Path,
        default=AGGREGATE_COMPRESSION_PROFILE_JSON_PATH,
        help="input path for aggregate-compression-profile JSON",
    )
    parser.add_argument(
        "--prefix-parametric-input",
        type=Path,
        default=PREFIX_PARAMETRIC_COMPRESSION_JSON_PATH,
        help="input path for prefix-parametric-compression JSON",
    )
    parser.add_argument(
        "--with-symmetry",
        action="store_true",
        help="require started-symmetry summaries in profile-exhaustive-states",
    )
    parser.add_argument(
        "--with-reversal",
        action="store_true",
        help="require grouping-only reversal summaries in profile-exhaustive-states",
    )
    parser.add_argument(
        "--exact-state-groups",
        action="store_true",
        help="require exact state-group summaries in profile-exhaustive-states",
    )
    args = parser.parse_args()
    mode = args.mode or ("small-sample" if args.small_sample else None)
    if mode is None:
        parser.error(
            "use --small-sample or --mode coverage-manifest/"
            "profile-exhaustive-states/canonical-symmetry-sample/"
            "coverage-tree-sample/nonidentity-family-sample/"
            "translation-family-sample/"
            "exhaustive-real-certs/compression-audit/"
            "aggregate-compression-profile/"
            "prefix-parametric-compression/"
            "compact-cert-sample/compact-cert-pilot/"
            "canonical-coverage-manifest/canonical-orbit-coverage/"
            "canonical-orbit-coverage-manifest"
        )
    if mode == "profile-exhaustive-states":
        payload = exact_profile.load_profile_payload(args.profile_input)
        options = payload.get("options", {})
        if args.with_symmetry:
            require(options.get("with_symmetry") is True, "profile was not generated with --with-symmetry")
        if args.with_reversal:
            require(options.get("with_reversal") is True, "profile was not generated with --with-reversal")
        if args.exact_state_groups:
            require(options.get("exact_state_groups") is True,
                    "profile was not generated with --exact-state-groups")
        counts = exact_profile.check_profile_payload(payload)
        exact_profile.print_profile_summary(payload, prefix="independent profile check passed")
        if payload.get("complete", False):
            print("known sanity counts verified")
        else:
            print(f"partial profile pair words checked: {counts['pair_words']:,}")
        return
    if mode == "canonical-symmetry-sample":
        payload = json.loads(CANONICAL_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_canonical_file(payload)
        print("independent canonical symmetry sample check passed")
        print(f"canonical pair words: {summary['canonical_pair_words']}")
        print(f"nonidentity transport cases: {summary['nonidentity_transport_cases']}")
        print(f"translation transport cases: {summary['translation_transport_cases']}")
        return
    if mode == "coverage-tree-sample":
        payload = json.loads(COVERAGE_TREE_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_coverage_tree_file(payload)
        print("independent coverage tree sample check passed")
        print(f"nonidentity trees: {summary['nonidentity_trees']}")
        print(f"translation trees: {summary['translation_trees']}")
        print(
            "transported nonidentity rank: "
            f"{summary['transported_nonidentity_rank']}"
        )
        print(
            "transported translation case: "
            f"{summary['transported_translation_rank']}/"
            f"{summary['transported_translation_mask']}"
        )
        return
    if mode == "nonidentity-family-sample":
        payload = json.loads(NONIDENTITY_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_nonidentity_family_file(payload)
        print("independent nonidentity family sample check passed")
        print(f"families: {summary['families']}")
        print(f"covered ranks: {summary['covered_ranks']}")
        for interval in summary["intervals"]:
            print(
                "family interval: "
                f"{interval['name']} [{interval['start']}, {interval['end']})"
            )
        return
    if mode == "translation-family-sample":
        payload = json.loads(TRANSLATION_FAMILY_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_translation_family_file(payload)
        print("independent translation family sample check passed")
        print(f"families: {summary['families']}")
        print(f"covered cases: {summary['covered_cases']}")
        for interval in summary["intervals"]:
            print(
                "translation family: "
                f"{interval['name']} {interval['failure']} "
                f"covered {interval['covered']}"
            )
        return
    if mode == "exhaustive-real-certs":
        payload = json.loads(EXHAUSTIVE_REAL_CERTS_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_exhaustive_real_certs_summary(payload)
        print("independent exhaustive real-certs gate check passed")
        print(f"status: {summary['status']}")
        print(f"canonical cert estimate: {summary['canonical_cert_estimate']:,}")
        print(f"estimated Lean bytes: {summary['estimated_lean_bytes']:,}")
        return
    if mode == "compression-audit":
        payload = json.loads(args.compression_audit_input.read_text(encoding="utf-8"))
        summary = check_compression_audit(payload)
        print("independent compression audit check passed")
        print(f"status: {summary['status']}")
        print(f"ready for 14E.7: {summary['ready_for_14E7']}")
        print(f"estimated Lean bytes: {summary['estimated_lean_bytes']:,}")
        print(f"fits under 1GiB: {summary['fits_1GiB']}")
        print(f"fits under 500MiB: {summary['fits_500MiB']}")
        print(f"fits under 100MiB: {summary['fits_100MiB']}")
        print(f"recommendation: {summary['recommendation']}")
        return
    if mode == "aggregate-compression-profile":
        payload = json.loads(args.aggregate_profile_input.read_text(encoding="utf-8"))
        summary = check_aggregate_compression_profile(payload)
        prefix = (
            "independent aggregate compression profile check passed"
            if summary["complete"]
            else "independent bounded aggregate compression profile check passed"
        )
        print(prefix)
        print(f"status: {summary['status']}")
        print(f"ready for 14E.7: {summary['ready_for_14E7']}")
        print(f"nonidentity shapes: {summary['nonidentity_shapes']:,}")
        print(f"translation constraint systems: {summary['constraint_systems']:,}")
        print(f"translation Farkas shapes: {summary['farkas_shapes']:,}")
        print(f"estimated Lean bytes: {summary['estimated_lean_bytes']:,}")
        return
    if mode == "prefix-parametric-compression":
        payload = json.loads(args.prefix_parametric_input.read_text(encoding="utf-8"))
        summary = check_prefix_parametric_compression(payload)
        print("independent prefix/parametric compression check passed")
        print(f"status: {summary['status']}")
        print(f"ready for 14E.7: {summary['ready_for_14E7']}")
        print(f"final cert estimate: {summary['final_cert_estimate']:,}")
        print(f"estimated Lean bytes: {summary['estimated_lean_bytes']:,}")
        print(f"fits under 1GiB: {summary['fits_1GiB']}")
        print(f"fits under 500MiB: {summary['fits_500MiB']}")
        print(f"fits under 100MiB: {summary['fits_100MiB']}")
        print(
            "nonidentity residual singletons: "
            f"{summary['nonidentity_residual_singletons']:,}"
        )
        print(f"translation shared Farkas: {summary['translation_shared_farkas']:,}")
        return
    if mode == "compact-cert-sample":
        payload = json.loads(COMPACT_CERT_SAMPLE_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_compact_cert_payload(payload, "compact-cert-sample")
        print("independent compact certificate sample check passed")
        print(f"terminals: {summary['pilot_limit']:,}")
        print(f"blob bytes: {summary['blob_bytes']:,}")
        print(f"malformed tests: {summary['malformed_tests']}")
        return
    if mode == "compact-cert-pilot":
        payload = json.loads(COMPACT_CERT_PILOT_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_compact_cert_payload(payload, "compact-cert-pilot")
        if args.limit is not None:
            require(summary["pilot_limit"] == args.limit,
                    "compact pilot limit matches --limit")
        print("independent compact certificate pilot check passed")
        print(f"terminals: {summary['pilot_limit']:,}")
        print(f"nonidentity terminals: {summary['nonidentity_terminals']:,}")
        print(f"translation terminals: {summary['translation_terminals']:,}")
        print(f"selected backend: {summary['selected_backend']}")
        print(f"malformed tests: {summary['malformed_tests']}")
        return
    if mode == "canonical-orbit-coverage":
        payload = run_cpp_canonical_orbit_coverage(args.limit)
        summary = check_canonical_orbit_payload(payload)
        if args.limit is None:
            CANONICAL_ORBIT_JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
            CANONICAL_ORBIT_JSON_PATH.write_text(
                json.dumps(payload, indent=2, sort_keys=True) + "\n",
                encoding="utf-8",
            )
        prefix = (
            "independent canonical orbit coverage check passed"
            if summary["complete"]
            else "independent limited canonical orbit coverage check passed"
        )
        print(prefix)
        print(f"pair-words checked: {summary['pair_words']:,}")
        print(f"identity words checked: {summary['identity_words']:,}")
        print(f"translation choices checked: {summary['translation_cases']:,}")
        print(f"canonical word classes seen: {summary['canonical_word_classes']:,}")
        print(
            "canonical translation classes seen: "
            f"{summary['canonical_translation_classes']:,}"
        )
        return
    if mode == "canonical-orbit-coverage-manifest":
        payload = json.loads(CANONICAL_ORBIT_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_canonical_orbit_payload(payload)
        print("independent canonical orbit coverage manifest check passed")
        print(f"pair-words checked: {summary['pair_words']:,}")
        print(f"identity words checked: {summary['identity_words']:,}")
        print(f"translation choices checked: {summary['translation_cases']:,}")
        print(f"canonical word classes: {summary['canonical_word_classes']:,}")
        print(
            "canonical translation classes: "
            f"{summary['canonical_translation_classes']:,}"
        )
        return
    if mode == "canonical-coverage-manifest":
        payload = json.loads(CANONICAL_COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_canonical_coverage_manifest(payload)
        print("independent canonical coverage manifest check passed")
        print(f"pair-words covered: {summary['pair_words']:,}")
        print(f"identity words covered: {summary['identity_words']:,}")
        print(f"translation choices covered: {summary['translation_cases']:,}")
        print(f"canonical pair ids: {summary['canonical_word_classes']:,}")
        print(
            "canonical translation ids: "
            f"{summary['canonical_translation_classes']:,}"
        )
        print(
            "pair compression ratio: "
            f"{summary['pair_compression_ratio']:.2f}x"
        )
        print(
            "translation compression ratio: "
            f"{summary['translation_compression_ratio']:.2f}x"
        )
        return
    if mode == "coverage-manifest":
        payload = json.loads(COVERAGE_JSON_PATH.read_text(encoding="utf-8"))
        summary = check_coverage_file(payload)
        print("independent coverage manifest check passed")
        print(f"coverage pair words: {summary['coverage_pair_words']}")
        print(f"coverage sign masks: {summary['coverage_sign_masks']}")
        print(f"coverage chunks: {summary['coverage_chunks']}")
        print(f"sanity identity linear words: {EXPECTED_IDENTITY_WORDS}")
        print(f"sanity translation sign assignments: {EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}")
        return
    payload = json.loads(JSON_PATH.read_text(encoding="utf-8"))
    summary = check_payload(payload)
    print("independent check passed")
    print(f"sample pair words: {summary['pair_words_sampled']}")
    print(f"nonidentity certs: {summary['nonidentity_certs']}")
    print(f"translation certs: {summary['translation_certs']}")
    print(f"coverage pair words: {summary['coverage_pair_words']}")
    print(f"coverage sign masks: {summary['coverage_sign_masks']}")
    print(f"coverage chunks: {summary['coverage_chunks']}")
    print(f"sanity pair words: {EXPECTED_PAIR_WORDS}")
    print(f"sanity identity linear words: {EXPECTED_IDENTITY_WORDS}")
    print(f"sanity translation sign assignments: {EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}")


if __name__ == "__main__":
    main()
