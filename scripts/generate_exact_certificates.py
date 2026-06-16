#!/usr/bin/env python3
"""Generate exact small-sample certificate data for the cuboctahedron project.

This script is intentionally untrusted. It uses exact rational arithmetic and
emits data that Lean and the independent checker verify.
"""

from __future__ import annotations

import argparse
import json
import math
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Iterable

import exact_profile


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"
COVERAGE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_manifest.json"
CANONICAL_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_symmetry_sample.json"
LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "SmallSample.lean"
CANONICAL_LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "CanonicalSample.lean"
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


def total_aff(seq: list[str]) -> Aff:
    result = aff_id()
    for index in list(range(1, 14)) + [0]:
        result = aff_compose(result, face_reflection(seq[index]))
    return result


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


def lean_mat4_id() -> str:
    return "mat4Id"


def lean_pair_id(pair_id: str) -> str:
    return f"PairId.{pair_id}"


def lean_face(face: str) -> str:
    return f"Face.{face}"


def lean_pair_word_literal(word: list[str]) -> str:
    return "  ⟨#[" + ", ".join(lean_pair_id(pair_id) for pair_id in word) + "], by decide⟩"


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

    def to_json(self) -> dict:
        return {
            "name": self.name,
            "rank": self.rank,
            "word": self.word,
            "axis": vec_to_json(self.axis),
            "kernel_cross_factor": mat_to_json(self.kernel_cross_factor),
            "forced_seq": self.forced_seq,
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
    lines.append(f"def {forced} : Vector Face 14 :=")
    lines.append(lean_face_vector_literal(cert["forced_seq"]))
    lines.append("")
    append_face_vector_get_theorems(lines, forced, cert["forced_seq"])
    lines.append(f"def {name} : NonIdCert where")
    lines.append(f"  word := {word_name(cert['rank'])}")
    lines.append(f"  axis := {lean_vec(axis)}")
    lines.append(f"  kernel := {{ crossFactor := {lean_mat3(kernel)} }}")
    lines.append(f"  forcedSeq := {forced}")
    lines.append("  p0 := { x := 0, y := 0, z := 0 }")
    lines.append("  lambda := 0")
    lines.append(f"  solve := {{ leftInverse := {lean_mat4_id()} }}")
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        lines.append(f"  failure := NonIdFailure.badDirectionSign ⟨{failure['index']}, by decide⟩")
    elif failure["kind"] == "badPairBalance":
        lines.append("  failure := NonIdFailure.badPairBalance")
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
    else:
        raise ValueError(f"unsupported translation failure: {failure['kind']}")
    lines.append("")


def append_nonid_check_theorem(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    failure = cert["failure"]
    if failure["kind"] != "badDirectionSign":
        raise ValueError(f"unsupported nonidentity proof template: {failure['kind']}")
    idx = failure["index"]
    word = word_name(cert["rank"])
    lines.extend([
        f"theorem {name}_check : checkNonIdCert {name} = true := by",
        f"  apply checkNonIdCert_badDirectionSign {name} ⟨{idx}, by decide⟩",
        "  · rfl",
        f"  · unfold {name} {word} ValidPairWord pairCount",
        "    decide",
        "  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"    simp [{name}, pairLinearProductRight, pairLinearSuffixNat, reflM,",
        "      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "    norm_num",
        "  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"    simp [{name}, checkKernelLineWitness, checkVec3NonzeroQ,",
        "      pairLinearProductRight, pairLinearSuffixNat, reflM, canonicalNormalQ,",
        "      matSub, matId, scalarMat, outer, dot, matMul, matVec, fixedPart,",
        "      crossLeftMatrix]",
        "    norm_num",
        "  · intro f hf",
        f"    cases f <;> simp [{name}, pairOfFace, pairPrefixLinearNat,",
        "      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,",
        "      scalarMat, outer, matVec] at hf ⊢",
        "",
    ])


def append_translation_check_theorem(lines: list[str], cert: dict) -> None:
    name = cert["name"]
    failure = cert["failure"]
    if failure["kind"] != "badDirectionSign":
        raise ValueError(f"unsupported translation proof template: {failure['kind']}")
    impact = failure["impact"]
    word = word_name(cert["rank"])
    lines.extend([
        f"theorem {name}_check : checkTranslationCert {name} = true := by",
        f"  apply checkTranslationCert_badDirectionSign {name} ⟨{impact}, by decide⟩",
        "  · rfl",
        f"  · unfold {name} {word} ValidPairWord pairCount",
        "    decide",
        "  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"    simp [{name}, pairLinearProductRight, pairLinearSuffixNat, reflM,",
        "      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "    norm_num",
        "  · intro i",
        f"    fin_cases i <;> simp [{name}, translationChoiceSeq, signedPositiveAt,",
        "      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]",
        "  · apply Vec3.ext <;> norm_num [",
        f"      {name}, TranslationCert.seqFun, faceVectorSeq, totalAff,",
        "      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,",
        "      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,",
        "      dot, matMul, matVec, vecAdd, scalarMul]",
        "  · decide",
        "  · decide",
        "  · norm_num [",
        f"      {name}, TranslationCert.seqFun, faceVectorSeq, impactDenom,",
        "      impactPlaneNormalQ, copiedNormalQ, preImpactNormalQ,",
        "      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,",
        "      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId,",
        "      affId, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul]",
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


def write_all_generated() -> None:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "import Cuboctahedron.Generated.Translation.Chunk0000",
        "import Cuboctahedron.Generated.CanonicalSample",
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
        "theorem nonidentity_transport_check :",
        "    checkCanonicalNonIdTransport nonidentityTransport = true := by",
        "  simp [checkCanonicalNonIdTransport, nonidentityTransport, sampleSym,",
        f"    {raw_nonid['name']}_check,",
        "    Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check]",
        "  decide",
        "",
        "theorem nonidentity_transport_raw_check :",
        f"    checkNonIdCert {raw_nonid['name']} = true :=",
        "  canonical_nonidentity_failure_transport nonidentityTransport",
        "    nonidentity_transport_check",
        "",
        "def translationTransport : CanonicalTranslationTransport where",
        "  sym := sampleSym",
        "  canonical := Cuboctahedron.Generated.SmallSample.translationBadDirection000",
        f"  raw := {raw_translation['name']}",
        "",
        "theorem translation_transport_check :",
        "    checkCanonicalTranslationTransport translationTransport = true := by",
        "  simp [checkCanonicalTranslationTransport, translationTransport, sampleSym,",
        f"    {raw_translation['name']}_check,",
        "    Cuboctahedron.Generated.SmallSample.translationBadDirection000_check]",
        "  refine And.intro ?left0 ?failure",
        "  · refine And.intro ?left1 ?vec",
        "    · refine And.intro ?left2 ?seq",
        "      · exact And.intro (by decide) (by decide)",
        "      · decide",
        "    · norm_num [",
        f"        {raw_translation['name']},",
        "        Cuboctahedron.Generated.SmallSample.translationBadDirection000, symVecQ, negIf]",
        "  · decide",
        "",
        "theorem translation_transport_raw_check :",
        f"    checkTranslationCert {raw_translation['name']} = true :=",
        "  canonical_translation_failure_transport translationTransport",
        "    translation_transport_check",
        "",
        "#check canonical_nonidentity_failure_transport",
        "#check canonical_translation_failure_transport",
        "#check nonidentity_transport_check",
        "#check translation_transport_check",
        "",
        "end Cuboctahedron.Generated.CanonicalSample",
        "",
    ])
    CANONICAL_LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    CANONICAL_LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


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
    args = parser.parse_args()
    mode = args.mode or ("small-sample" if args.small_sample else None)
    if mode is None:
        parser.error(
            "use --small-sample or --mode coverage-manifest/"
            "profile-exhaustive-states/canonical-symmetry-sample"
        )
    if mode == "profile-exhaustive-states":
        if args.profile_limit is not None and args.profile_limit < 0:
            parser.error("--profile-limit must be nonnegative")
        payload = exact_profile.build_profile_payload(limit=args.profile_limit)
        exact_profile.write_profile_payload(payload, args.profile_output)
        exact_profile.print_profile_summary(payload)
        print(f"json: {args.profile_output}")
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
