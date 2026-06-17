"""Exact non-proof profiling for exhaustive cuboctahedron certificate states.

The routines in this file are deliberately untrusted.  They use exact rational
arithmetic and produce profiling JSON that helps choose compressed certificate
formats before any trusted Lean data is generated.
"""

from __future__ import annotations

import json
import math
import subprocess
import sys
from collections.abc import Iterable
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
PROFILE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "profile_exhaustive_states.json"
CANONICAL_ORBIT_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_orbit_coverage.json"
CPP_PROFILE_SOURCE_PATH = REPO_ROOT / "scripts" / "profile_exhaustive_states.cpp"
CPP_PROFILE_BINARY_PATH = Path("/tmp") / "cuboctahedron_profile_exhaustive_states"

EXPECTED_PAIR_WORDS = 97_297_200
EXPECTED_IDENTITY_WORDS = 2_468_088
EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS = 157_957_632

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

STARTED_SYMS = [
    {"swap_yz": False, "neg_y": False, "neg_z": False},
    {"swap_yz": False, "neg_y": False, "neg_z": True},
    {"swap_yz": False, "neg_y": True, "neg_z": False},
    {"swap_yz": False, "neg_y": True, "neg_z": True},
    {"swap_yz": True, "neg_y": False, "neg_z": False},
    {"swap_yz": True, "neg_y": False, "neg_z": True},
    {"swap_yz": True, "neg_y": True, "neg_z": False},
    {"swap_yz": True, "neg_y": True, "neg_z": True},
]

PAIR_NORMAL_LOOKUP = {
    tuple(normal): (pair_id, True) for pair_id, normal in NORMALS.items()
} | {
    tuple(-entry for entry in normal): (pair_id, False)
    for pair_id, normal in NORMALS.items()
}
FACE_TO_PAIR_SIGN = {
    face: (pair_id, True) for pair_id, face in FACE_PLUS.items()
} | {
    face: (pair_id, False) for pair_id, face in FACE_MINUS.items()
}

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]
Aff = tuple[Mat, Vec]
Lin2 = tuple[Fraction, Fraction, Fraction]  # const, yCoeff, zCoeff
StrictLin2 = tuple[Fraction, Fraction, Fraction]  # a, b, c for a*y+b*z<c


def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit(f"profile check failed: {message}")


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
IDENTITY = mat_id()
ZERO_VEC = vec((0, 0, 0))


def total_linear(word: list[str]) -> Mat:
    pref = IDENTITY
    for pair_id in word:
        pref = mat_mul(pref, RPAIR[pair_id])
    return mat_mul(pref, RPAIR["x"])


def prefix_matrices(word: list[str]) -> list[Mat]:
    pref = [IDENTITY]
    for pair_id in word:
        pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
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


def fixed_part(m: Mat) -> Mat:
    return tuple(tuple(m[i][j] - IDENTITY[i][j] for j in range(3)) for i in range(3))


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


def enumerate_pair_word_states(limit: int | None = None):
    """Yield `(rank, word, prefix_matrices)` in lexicographic rank order."""

    rank = 0
    word: list[str] = []
    remaining = dict(PAIR_COUNTS)
    pref = [IDENTITY]

    def rec():
        nonlocal rank
        if limit is not None and rank >= limit:
            return
        if len(word) == 13:
            yield rank, list(word), list(pref)
            rank += 1
            return
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            remaining[pair_id] -= 1
            word.append(pair_id)
            pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
            yield from rec()
            pref.pop()
            word.pop()
            remaining[pair_id] += 1
            if limit is not None and rank >= limit:
                return

    yield from rec()


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


def sym_vec(sym: dict[str, bool], value: tuple[int, int, int]) -> tuple[int, int, int]:
    x, y, z = value
    if sym["swap_yz"]:
        y, z = z, y
    if sym["neg_y"]:
        y = -y
    if sym["neg_z"]:
        z = -z
    return x, y, z


def sym_pair_sign(sym: dict[str, bool], pair_id: str, positive: bool) -> tuple[str, bool]:
    normal = NORMALS[pair_id]
    signed = normal if positive else tuple(-entry for entry in normal)
    return PAIR_NORMAL_LOOKUP[sym_vec(sym, signed)]  # type: ignore[arg-type]


def sym_pair(sym: dict[str, bool], pair_id: str) -> str:
    return sym_pair_sign(sym, pair_id, True)[0]


def sym_word(sym: dict[str, bool], word: list[str]) -> list[str]:
    return [sym_pair(sym, pair_id) for pair_id in word]


def transported_mask(sym: dict[str, bool], word: list[str], mask: int) -> tuple[list[str], int]:
    signs = sign_assignment(word, mask)
    raw_word = sym_word(sym, word)
    raw_seen = {pair_id: 0 for pair_id in PAIR_IDS}
    out = 0
    for index, pair_id in enumerate(word):
        raw_pair, raw_positive = sym_pair_sign(sym, pair_id, signs[index] > 0)
        if raw_pair != raw_word[index]:
            raise ValueError("symmetry word/sign mismatch")
        if raw_pair != "x" and raw_seen[raw_pair] == 0 and raw_positive:
            out |= 1 << (PAIR_IDS.index(raw_pair) - 1)
        raw_seen[raw_pair] += 1
    return raw_word, out


def reverse_word(word: list[str]) -> list[str]:
    return list(reversed(word))


def reverse_translation_choice(word: list[str], mask: int) -> tuple[list[str], int]:
    signs = list(reversed(sign_assignment(word, mask)))
    raw_word = reverse_word(word)
    raw_seen = {pair_id: 0 for pair_id in PAIR_IDS}
    out = 0
    for pair_id, sign in zip(raw_word, signs):
        if pair_id == "x":
            if sign != -1:
                raise ValueError("reversed started translation has positive x face")
        elif raw_seen[pair_id] == 0 and sign > 0:
            out |= 1 << (PAIR_IDS.index(pair_id) - 1)
        raw_seen[pair_id] += 1
    return raw_word, out


def canonical_word_started_symmetry(word: list[str]) -> list[str]:
    return min(sym_word(sym, word) for sym in STARTED_SYMS)


def canonical_word_reversal(word: list[str]) -> list[str]:
    return min(word, reverse_word(word))


def canonical_word_combined(word: list[str], *, with_symmetry: bool, with_reversal: bool) -> list[str]:
    bases = [word]
    if with_reversal:
        bases.append(reverse_word(word))
    syms = STARTED_SYMS if with_symmetry else [STARTED_SYMS[0]]
    return min(sym_word(sym, base) for base in bases for sym in syms)


def canonical_translation_started_symmetry(word: list[str], mask: int) -> tuple[list[str], int]:
    return min(transported_mask(sym, word, mask) for sym in STARTED_SYMS)


def canonical_translation_reversal(word: list[str], mask: int) -> tuple[list[str], int]:
    return min((word, mask), reverse_translation_choice(word, mask))


def canonical_translation_combined(
    word: list[str], mask: int, *, with_symmetry: bool, with_reversal: bool
) -> tuple[list[str], int]:
    bases = [(word, mask)]
    if with_reversal:
        bases.append(reverse_translation_choice(word, mask))
    syms = STARTED_SYMS if with_symmetry else [STARTED_SYMS[0]]
    return min(transported_mask(sym, base_word, base_mask) for base_word, base_mask in bases for sym in syms)


def translation_vector(word: list[str], mask: int, pref: list[Mat] | None = None) -> tuple[Vec, list[str]]:
    signs = sign_assignment(word, mask)
    prefixes = pref if pref is not None else prefix_matrices(word)
    bpref: list[Vec] = [ZERO_VEC]
    seq = ["xp"]
    for index, pair_id in enumerate(word):
        delta = vec_scale(Fraction(signs[index]), mat_vec(prefixes[index], DCAN[pair_id]))
        bpref.append(vec_add(bpref[-1], delta))
        seq.append(FACE_PLUS[pair_id] if signs[index] > 0 else FACE_MINUS[pair_id])
    b = vec_add(bpref[-1], mat_vec(prefixes[-1], DCAN["x"]))
    return b, seq


def impact_face(seq: list[str], impact: int) -> str:
    return seq[impact] if impact < 14 else seq[0]


def pre_impact_aff(prefixes: list[Aff], impact: int) -> Aff:
    index = max(impact - 1, 0)
    if index > 13:
        index = 13
    return prefixes[index]


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


def impact_denom(seq: list[str], b: Vec, impact: int, prefixes: list[Aff] | None = None) -> Fraction:
    aff_prefixes = prefixes if prefixes is not None else path_prefix_affs(seq)
    normal, _offset = impact_plane_normal_offset(seq, aff_prefixes, impact)
    return dot(normal, b)


def lin_const(value: Fraction) -> Lin2:
    return (value, Fraction(0), Fraction(0))


def lin_y() -> Lin2:
    return (Fraction(0), Fraction(1), Fraction(0))


def lin_z() -> Lin2:
    return (Fraction(0), Fraction(0), Fraction(1))


def lin_add(lhs: Lin2, rhs: Lin2) -> Lin2:
    return (lhs[0] + rhs[0], lhs[1] + rhs[1], lhs[2] + rhs[2])


def lin_scale(scale: Fraction, value: Lin2) -> Lin2:
    return (scale * value[0], scale * value[1], scale * value[2])


def lt_constraint(lhs: Lin2, rhs: Lin2) -> StrictLin2:
    return (lhs[1] - rhs[1], lhs[2] - rhs[2], rhs[0] - lhs[0])


def lin_dot_vec3(n: Vec, point: tuple[Lin2, Lin2, Lin2]) -> Lin2:
    return lin_add(lin_add(lin_scale(n[0], point[0]), lin_scale(n[1], point[1])),
                   lin_scale(n[2], point[2]))


def translation_line_point_lin(b: Vec, t: Lin2) -> tuple[Lin2, Lin2, Lin2]:
    return (
        lin_add(lin_const(Fraction(1)), lin_scale(b[0], t)),
        lin_add(lin_y(), lin_scale(b[1], t)),
        lin_add(lin_z(), lin_scale(b[2], t)),
    )


def impact_time_lin(seq: list[str], b: Vec, prefixes: list[Aff], impact: int) -> Lin2:
    if impact == 0:
        return lin_const(Fraction(0))
    if impact == 14:
        return lin_const(Fraction(1))
    n, c = impact_plane_normal_offset(seq, prefixes, impact)
    den = dot(n, b)
    if den == 0:
        raise ZeroDivisionError("impact denominator is zero")
    return ((c - n[0]) / den, -n[1] / den, -n[2] / den)


def translation_constraints(seq: list[str], b: Vec) -> list[StrictLin2]:
    prefixes = path_prefix_affs(seq)
    constraints: list[StrictLin2] = [
        (Fraction(1), Fraction(1), Fraction(1)),
        (Fraction(1), Fraction(-1), Fraction(1)),
        (Fraction(-1), Fraction(1), Fraction(1)),
        (Fraction(-1), Fraction(-1), Fraction(1)),
    ]
    times = [impact_time_lin(seq, b, prefixes, impact) for impact in range(15)]
    for index in range(14):
        constraints.append(lt_constraint(times[index], times[index + 1]))
    for impact in range(1, 15):
        hit = impact_face(seq, impact)
        point = translation_line_point_lin(b, times[impact])
        for face in FACE_ORDER:
            if face == hit:
                continue
            copied, copied_offset = copied_normal_offset(seq, prefixes, impact, face)
            constraints.append(lt_constraint(lin_dot_vec3(copied, point), lin_const(copied_offset)))
    return constraints


def forced_sequence_from_axis(word: list[str], axis: Vec, pref: list[Mat]) -> list[str]:
    seq = ["xp"]
    for index, pair_id in enumerate(word):
        d = dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis)
        if d == 0:
            raise ValueError("axis does not force this pair sign")
        seq.append(FACE_PLUS[pair_id] if d > 0 else FACE_MINUS[pair_id])
    return seq


def final_axis_dot(word: list[str], axis: Vec, pref: list[Mat]) -> Fraction:
    return dot(mat_vec(pref[13], vec(NORMALS["x"])), axis)


def first_axis_zero_index(word: list[str], axis: Vec, pref: list[Mat]) -> int | None:
    for index, pair_id in enumerate(word):
        if dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis) == 0:
            return index
    return None


def rat_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def parse_rat_key(text: str) -> Fraction:
    return Fraction(text)


def vec_key(value: Vec) -> str:
    return ",".join(rat_key(entry) for entry in value)


def parse_vec_key(text: str) -> Vec:
    return tuple(parse_rat_key(entry) for entry in text.split(","))  # type: ignore[return-value]


def mat_key(value: Mat) -> str:
    return ";".join(vec_key(row) for row in value)


def parse_mat_key(text: str) -> Mat:
    return tuple(parse_vec_key(row) for row in text.split(";"))


def strict_key(value: StrictLin2) -> str:
    return vec_key(value)


def normalize_strict_constraint(value: StrictLin2) -> StrictLin2:
    denominators = [entry.denominator for entry in value]
    lcm = 1
    for denominator in denominators:
        lcm = math.lcm(lcm, denominator)
    integers = [entry.numerator * (lcm // entry.denominator) for entry in value]
    content = 0
    for entry in integers:
        content = math.gcd(content, abs(entry))
    if content == 0:
        content = 1
    return tuple(Fraction(entry // content) for entry in integers)  # type: ignore[return-value]


def normalized_constraints_key(constraints: list[StrictLin2]) -> str:
    normalized = sorted({strict_key(normalize_strict_constraint(constraint)) for constraint in constraints})
    return "|".join(normalized)


def constraints_key(constraints: list[StrictLin2]) -> str:
    return "|".join(strict_key(constraint) for constraint in constraints)


def parse_constraints_key(text: str) -> list[StrictLin2]:
    if text == "":
        return []
    return [parse_vec_key(piece) for piece in text.split("|")]  # type: ignore[list-item]


def word_key(word: list[str]) -> str:
    return ",".join(word)


def seq_key(seq: list[str]) -> str:
    return ",".join(seq)


def counts_key(counts: dict[str, int]) -> str:
    return ",".join(f"{pair_id}:{counts[pair_id]}" for pair_id in PAIR_IDS)


def cumulative_prefix_counts_key(word: list[str]) -> str:
    counts = {pair_id: 0 for pair_id in PAIR_IDS}
    parts = [counts_key(counts)]
    for pair_id in word:
        counts[pair_id] += 1
        parts.append(counts_key(counts))
    return "|".join(parts)


def remaining_counts_after(word: list[str], prefix_len: int) -> dict[str, int]:
    remaining = dict(PAIR_COUNTS)
    for pair_id in word[:prefix_len]:
        remaining[pair_id] -= 1
    return remaining


def sign_pattern_key(word: list[str], axis: Vec, pref: list[Mat]) -> str:
    pieces = []
    for index, pair_id in enumerate(word):
        value = dot(mat_vec(pref[index], vec(NORMALS[pair_id])), axis)
        if value > 0:
            pieces.append("+")
        elif value < 0:
            pieces.append("-")
        else:
            pieces.append("0")
    return "".join(pieces)


def denom_pattern_key(seq: list[str], b: Vec, prefixes: list[Aff]) -> str:
    pieces = []
    for impact in range(1, 14):
        value = impact_denom(seq, b, impact, prefixes)
        if value > 0:
            pieces.append("+")
        elif value < 0:
            pieces.append("-")
        else:
            pieces.append("0")
    return "".join(pieces)


def make_key(fields: dict[str, str]) -> str:
    return ";".join(f"{name}={fields[name]}" for name in sorted(fields))


@dataclass
class GroupStore:
    sample_limit: int = 3

    def __post_init__(self) -> None:
        self.counts: dict[str, int] = {}
        self.details: dict[str, dict[str, str]] = {}
        self.samples: dict[str, list[dict]] = {}

    def add(self, details: dict[str, str], sample: dict) -> str:
        key = make_key(details)
        if key not in self.counts:
            self.counts[key] = 0
            self.details[key] = dict(details)
            self.samples[key] = []
        self.counts[key] += 1
        if len(self.samples[key]) < self.sample_limit:
            self.samples[key].append(sample)
        return key

    def total(self) -> int:
        return sum(self.counts.values())

    def export(self) -> list[dict]:
        return [
            {
                "key": key,
                "count": self.counts[key],
                "details": self.details[key],
                "samples": self.samples[key],
            }
            for key in sorted(self.counts)
        ]


class ProfileBuilder:
    def __init__(
        self,
        *,
        sample_limit: int = 32,
        progress_interval: int = 1_000_000,
        with_symmetry: bool = False,
        with_reversal: bool = False,
    ) -> None:
        self.with_symmetry = with_symmetry
        self.with_reversal = with_reversal
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.pair_words = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.translation_sign_assignments = 0
        self.nonidentity_groups = GroupStore()
        self.translation_groups = GroupStore()
        self.samples: list[dict] = []
        self.axis_cache: dict[str, tuple[str, Vec | None]] = {}
        self.constraint_cache: dict[tuple[str, str], str] = {}
        self.symmetry_pair_classes: set[tuple[str, ...]] = set()
        self.reversal_pair_classes: set[tuple[str, ...]] = set()
        self.combined_pair_classes: set[tuple[str, ...]] = set()
        self.symmetry_translation_classes: set[tuple[tuple[str, ...], int]] = set()
        self.reversal_translation_classes: set[tuple[tuple[str, ...], int]] = set()
        self.combined_translation_classes: set[tuple[tuple[str, ...], int]] = set()
        self.max_symmetry_pair_orbit = 0
        self.max_reversal_pair_orbit = 0
        self.max_combined_pair_orbit = 0
        self.max_symmetry_translation_orbit = 0
        self.max_reversal_translation_orbit = 0
        self.max_combined_translation_orbit = 0

    def add_sample(self, sample: dict) -> None:
        if len(self.samples) < self.sample_limit:
            self.samples.append(sample)

    def classify_nonidentity(self, rank: int, word: list[str], pref: list[Mat], matrix: Mat) -> None:
        self.nonidentity_words += 1
        matrix_key = mat_key(matrix)
        if matrix_key not in self.axis_cache:
            try:
                axis = one_dimensional_fixed_axis(matrix)
                self.axis_cache[matrix_key] = ("axis", axis)
            except ValueError:
                self.axis_cache[matrix_key] = ("no_axis", None)
        axis_status, axis_value = self.axis_cache[matrix_key]
        if axis_status == "no_axis" or axis_value is None:
            details = {
                "case": "nonidentity",
                "failure": "noFixedAxis",
                "linear": matrix_key,
                "prefixCounts": cumulative_prefix_counts_key(word),
            }
            self.nonidentity_groups.add(details, {"rank": rank, "word": word})
            return

        axis = axis_value
        final_dot = final_axis_dot(word, axis, pref)
        if final_dot < 0:
            axis = vec_scale(Fraction(-1), axis)
            final_dot = -final_dot
        sign_pattern = sign_pattern_key(word, axis, pref)
        if final_dot == 0:
            details = {
                "case": "nonidentity",
                "failure": "badDirectionSign",
                "linear": matrix_key,
                "axis": vec_key(axis),
                "forcedSigns": sign_pattern,
                "zeroAt": "final",
                "remainingCounts": counts_key(remaining_counts_after(word, 13)),
            }
            self.nonidentity_groups.add(details, {"rank": rank, "word": word})
            return

        zero_index = first_axis_zero_index(word, axis, pref)
        if zero_index is not None:
            details = {
                "case": "nonidentity",
                "failure": "badDirectionSign",
                "linear": matrix_key,
                "axis": vec_key(axis),
                "forcedSigns": sign_pattern,
                "zeroAt": str(zero_index),
                "remainingCounts": counts_key(remaining_counts_after(word, zero_index)),
            }
            self.nonidentity_groups.add(details, {"rank": rank, "word": word})
            return

        forced_seq = forced_sequence_from_axis(word, axis, pref)
        if len(set(forced_seq)) != 14:
            details = {
                "case": "nonidentity",
                "failure": "badPairBalance",
                "linear": matrix_key,
                "axis": vec_key(axis),
                "forcedSigns": sign_pattern,
                "forcedSeq": seq_key(forced_seq),
                "prefixCounts": cumulative_prefix_counts_key(word),
            }
            self.nonidentity_groups.add(details, {"rank": rank, "word": word, "seq": forced_seq})
            return

        details = {
            "case": "nonidentity",
            "failure": "needsAxisSolveOrSimulation",
            "linear": matrix_key,
            "axis": vec_key(axis),
            "forcedSigns": sign_pattern,
            "forcedSeq": seq_key(forced_seq),
            "prefixCounts": cumulative_prefix_counts_key(word),
        }
        self.nonidentity_groups.add(details, {"rank": rank, "word": word, "seq": forced_seq})

    def classify_translation_mask(self, rank: int, word: list[str], pref: list[Mat], mask: int) -> None:
        self.translation_sign_assignments += 1
        if self.with_symmetry or self.with_reversal:
            self.record_translation_canonical_stats(word, mask)
        b, seq = translation_vector(word, mask, pref)
        prefixes = path_prefix_affs(seq)
        pattern = denom_pattern_key(seq, b, prefixes)
        base = {
            "case": "translation",
            "b": vec_key(b),
            "seq": seq_key(seq),
            "denominatorSigns": pattern,
        }
        sample = {"rank": rank, "mask": mask, "word": word, "seq": seq}
        if b == ZERO_VEC:
            details = {**base, "failure": "badTranslationVector", "constraints": ""}
            self.translation_groups.add(details, sample)
            return
        if any(impact_denom(seq, b, impact, prefixes) <= 0 for impact in range(1, 14)):
            details = {**base, "failure": "badDirectionSign", "constraints": ""}
            self.translation_groups.add(details, sample)
            return
        constraint_cache_key = (seq_key(seq), vec_key(b))
        if constraint_cache_key not in self.constraint_cache:
            self.constraint_cache[constraint_cache_key] = normalized_constraints_key(translation_constraints(seq, b))
        details = {
            **base,
            "failure": "needsFarkas",
            "constraints": self.constraint_cache[constraint_cache_key],
        }
        self.translation_groups.add(details, sample)

    def classify_identity(self, rank: int, word: list[str], pref: list[Mat]) -> None:
        self.identity_words += 1
        for mask in range(64):
            self.classify_translation_mask(rank, word, pref, mask)

    def visit_word(self, rank: int, word: list[str], pref: list[Mat]) -> None:
        if rank != self.pair_words:
            raise ValueError(f"non-contiguous rank: expected {self.pair_words}, got {rank}")
        self.pair_words += 1
        if self.progress_interval and self.pair_words % self.progress_interval == 0:
            print(f"profiled {self.pair_words:,} pair words", file=sys.stderr)
        if len(self.samples) < self.sample_limit:
            self.add_sample({
                "rank": rank,
                "word": word,
                "lexRank": lex_rank_pair_word(word),
            })
        if self.with_symmetry or self.with_reversal:
            self.record_pair_word_canonical_stats(word)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.classify_identity(rank, word, pref)
        else:
            self.classify_nonidentity(rank, word, pref, matrix)

    def record_pair_word_canonical_stats(self, word: list[str]) -> None:
        if self.with_symmetry:
            orbit = {tuple(sym_word(sym, word)) for sym in STARTED_SYMS}
            self.symmetry_pair_classes.add(tuple(canonical_word_started_symmetry(word)))
            self.max_symmetry_pair_orbit = max(self.max_symmetry_pair_orbit, len(orbit))
        if self.with_reversal:
            orbit = {tuple(word), tuple(reverse_word(word))}
            self.reversal_pair_classes.add(tuple(canonical_word_reversal(word)))
            self.max_reversal_pair_orbit = max(self.max_reversal_pair_orbit, len(orbit))
        if self.with_symmetry or self.with_reversal:
            bases = [word]
            if self.with_reversal:
                bases.append(reverse_word(word))
            syms = STARTED_SYMS if self.with_symmetry else [STARTED_SYMS[0]]
            orbit = {tuple(sym_word(sym, base)) for base in bases for sym in syms}
            self.combined_pair_classes.add(tuple(canonical_word_combined(
                word, with_symmetry=self.with_symmetry, with_reversal=self.with_reversal)))
            self.max_combined_pair_orbit = max(self.max_combined_pair_orbit, len(orbit))

    def record_translation_canonical_stats(self, word: list[str], mask: int) -> None:
        if self.with_symmetry:
            orbit = {
                (tuple(raw_word), raw_mask)
                for sym in STARTED_SYMS
                for raw_word, raw_mask in [transported_mask(sym, word, mask)]
            }
            canon_word, canon_mask = canonical_translation_started_symmetry(word, mask)
            self.symmetry_translation_classes.add((tuple(canon_word), canon_mask))
            self.max_symmetry_translation_orbit = max(self.max_symmetry_translation_orbit, len(orbit))
        if self.with_reversal:
            reversed_choice = reverse_translation_choice(word, mask)
            orbit = {(tuple(word), mask), (tuple(reversed_choice[0]), reversed_choice[1])}
            canon_word, canon_mask = canonical_translation_reversal(word, mask)
            self.reversal_translation_classes.add((tuple(canon_word), canon_mask))
            self.max_reversal_translation_orbit = max(self.max_reversal_translation_orbit, len(orbit))
        if self.with_symmetry or self.with_reversal:
            bases = [(word, mask)]
            if self.with_reversal:
                bases.append(reverse_translation_choice(word, mask))
            syms = STARTED_SYMS if self.with_symmetry else [STARTED_SYMS[0]]
            orbit = {
                (tuple(raw_word), raw_mask)
                for base_word, base_mask in bases
                for sym in syms
                for raw_word, raw_mask in [transported_mask(sym, base_word, base_mask)]
            }
            canon_word, canon_mask = canonical_translation_combined(
                word, mask, with_symmetry=self.with_symmetry, with_reversal=self.with_reversal)
            self.combined_translation_classes.add((tuple(canon_word), canon_mask))
            self.max_combined_translation_orbit = max(self.max_combined_translation_orbit, len(orbit))

    def size_estimates(self) -> dict:
        flat_nonidentity = self.nonidentity_words
        flat_translation = self.translation_sign_assignments
        nonidentity_group_count = len(self.nonidentity_groups.counts)
        translation_group_count = len(self.translation_groups.counts)
        shared_farkas_groups = sum(
            1
            for details in self.translation_groups.details.values()
            if details.get("failure") == "needsFarkas"
        )
        return {
            "flat_nonidentity_certs": flat_nonidentity,
            "flat_translation_certs": flat_translation,
            "flat_total_certs": flat_nonidentity + flat_translation,
            "prefix_tree_leaf_estimate": nonidentity_group_count + translation_group_count,
            "nonidentity_state_groups": nonidentity_group_count,
            "translation_state_groups": translation_group_count,
            "shared_farkas_groups": shared_farkas_groups,
            "symmetry_classes": "not_formalized_yet",
            "reversal_classes": "not_requested" if not self.with_reversal else {
                "pair_word_classes": len(self.reversal_pair_classes),
                "translation_choice_classes": len(self.reversal_translation_classes),
                "max_pair_word_orbit": self.max_reversal_pair_orbit,
                "max_translation_choice_orbit": self.max_reversal_translation_orbit,
                "proof_transport_enabled": False,
            },
            "combined_symmetry_reversal_classes": (
                "not_requested"
                if not (self.with_symmetry or self.with_reversal)
                else {
                    "pair_word_classes": len(self.combined_pair_classes),
                    "translation_choice_classes": len(self.combined_translation_classes),
                    "max_pair_word_orbit": self.max_combined_pair_orbit,
                    "max_translation_choice_orbit": self.max_combined_translation_orbit,
                    "reversal_proof_transport_enabled": False,
                }
            ),
            "canonical_cert_estimate": (
                len(self.combined_pair_classes) + len(self.combined_translation_classes)
                if self.with_symmetry or self.with_reversal
                else nonidentity_group_count + translation_group_count
            ),
            "estimated_lean_bytes": (
                512 * (
                    len(self.combined_pair_classes) + len(self.combined_translation_classes)
                    if self.with_symmetry or self.with_reversal
                    else nonidentity_group_count + translation_group_count
                )
            ),
            "budget_status": "report_only",
            "note": "Profiler-only estimate; no Lean proof data is emitted.",
        }

    def payload(self, *, complete: bool, limit: int | None) -> dict:
        return {
            "schema_version": 1,
            "mode": "profile-exhaustive-states",
            "options": {
                "with_symmetry": self.with_symmetry,
                "with_reversal": self.with_reversal,
                "reversal_proof_transport_enabled": False,
            },
            "complete": complete,
            "profile_limit": limit,
            "expected_sanity_counts": {
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
            "nonidentity_groups": self.nonidentity_groups.export(),
            "translation_groups": self.translation_groups.export(),
            "size_estimates": self.size_estimates(),
            "samples": self.samples,
        }


def build_profile_payload_python(
    limit: int | None = None,
    progress_interval: int = 1_000_000,
    *,
    with_symmetry: bool = False,
    with_reversal: bool = False,
) -> dict:
    builder = ProfileBuilder(
        progress_interval=progress_interval,
        with_symmetry=with_symmetry,
        with_reversal=with_reversal,
    )
    for rank, word, pref in enumerate_pair_word_states(limit):
        builder.visit_word(rank, word, pref)
    complete = limit is None
    return builder.payload(complete=complete, limit=limit)


def ensure_cpp_profile_helper() -> Path:
    if not CPP_PROFILE_SOURCE_PATH.exists():
        raise FileNotFoundError(CPP_PROFILE_SOURCE_PATH)
    needs_build = (
        not CPP_PROFILE_BINARY_PATH.exists()
        or CPP_PROFILE_BINARY_PATH.stat().st_mtime < CPP_PROFILE_SOURCE_PATH.stat().st_mtime
    )
    if needs_build:
        cmd = [
            "g++",
            "-std=c++20",
            "-O3",
            "-DNDEBUG",
            str(CPP_PROFILE_SOURCE_PATH),
            "-o",
            str(CPP_PROFILE_BINARY_PATH),
        ]
        subprocess.run(cmd, cwd=REPO_ROOT, check=True)
    return CPP_PROFILE_BINARY_PATH


def build_profile_payload_cpp(
    limit: int | None = None,
    *,
    with_symmetry: bool = False,
    with_reversal: bool = False,
    exact_state_groups: bool = False,
) -> dict:
    binary = ensure_cpp_profile_helper()
    cmd = [str(binary)]
    if limit is not None:
        cmd.extend(["--limit", str(limit)])
    if with_symmetry:
        cmd.append("--with-symmetry")
    if with_reversal:
        cmd.append("--with-reversal")
    if exact_state_groups:
        cmd.append("--exact-state-groups")
    result = subprocess.run(
        cmd,
        cwd=REPO_ROOT,
        check=True,
        text=True,
        stdout=subprocess.PIPE,
    )
    return attach_canonical_orbit_summary(json.loads(result.stdout))


def build_profile_payload(
    limit: int | None = None,
    progress_interval: int = 1_000_000,
    *,
    with_symmetry: bool = False,
    with_reversal: bool = False,
    exact_state_groups: bool = False,
) -> dict:
    _ = progress_interval
    return build_profile_payload_cpp(
        limit=limit,
        with_symmetry=with_symmetry,
        with_reversal=with_reversal,
        exact_state_groups=exact_state_groups,
    )


def attach_canonical_orbit_summary(payload: dict) -> dict:
    if not CANONICAL_ORBIT_JSON_PATH.exists():
        return payload
    existing = payload.setdefault("size_estimates", {}).get("symmetry_classes")
    if isinstance(existing, dict) and existing.get("source") == "scripts/profile_exhaustive_states.cpp":
        return payload
    orbit = json.loads(CANONICAL_ORBIT_JSON_PATH.read_text(encoding="utf-8"))
    if orbit.get("schema_version") != 1 or orbit.get("mode") != "canonical-orbit-coverage":
        return payload
    canonical = orbit.get("canonical_counts", {})
    actual = orbit.get("actual_counts", {})
    if orbit.get("complete", False):
        if actual.get("pair_words") != EXPECTED_PAIR_WORDS:
            return payload
        if actual.get("identity_linear_words") != EXPECTED_IDENTITY_WORDS:
            return payload
        if actual.get("translation_sign_assignments") != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            return payload
    payload.setdefault("size_estimates", {})["symmetry_classes"] = {
        "pair_word_classes": canonical.get("pair_word_classes"),
        "translation_choice_classes": canonical.get("translation_choice_classes"),
        "max_pair_word_orbit": canonical.get("max_pair_word_orbit"),
        "max_translation_choice_orbit": canonical.get("max_translation_choice_orbit"),
        "source": str(CANONICAL_ORBIT_JSON_PATH.relative_to(REPO_ROOT)),
    }
    return payload


def write_profile_payload(payload: dict, output_path: Path = PROFILE_JSON_PATH) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_profile_summary(payload: dict, *, prefix: str = "profiled exhaustive states") -> None:
    counts = payload["actual_counts"]
    estimates = payload["size_estimates"]
    print(prefix)
    print(f"pair-words: {counts['pair_words']:,}")
    print(f"identity linear words: {counts['identity_linear_words']:,}")
    print(f"nonidentity words: {counts['nonidentity_words']:,}")
    print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
    print(f"nonidentity state groups: {estimates['nonidentity_state_groups']:,}")
    print(f"translation state groups: {estimates['translation_state_groups']:,}")
    exact_summary = estimates.get("exact_state_group_summary")
    if isinstance(exact_summary, dict) and exact_summary.get("computed") is True:
        nonid_exact = exact_summary["nonidentity"]
        translation_exact = exact_summary["translation"]
        if exact_summary.get("formula_exact") is True:
            print("exact state group mode: formula")
        print(f"exact nonidentity state groups: {nonid_exact['total_groups']:,}")
        print(f"exact translation state groups: {translation_exact['total_groups']:,}")
        if exact_summary.get("formula_exact") is True:
            print("exact Farkas-needed groups: bounded-only in detailed runs")
        else:
            print(f"exact Farkas-needed groups: {translation_exact['needsFarkas']:,}")
    print(f"flat cert estimate: {estimates['flat_total_certs']:,}")
    print(f"prefix-tree leaf estimate: {estimates['prefix_tree_leaf_estimate']:,}")
    print(f"shared Farkas groups: {estimates['shared_farkas_groups']:,}")
    if "canonical_cert_estimate" in estimates:
        print(f"canonical cert estimate: {estimates['canonical_cert_estimate']:,}")
    if "estimated_lean_bytes" in estimates:
        print(f"estimated Lean bytes: {estimates['estimated_lean_bytes']:,}")
    if "compressed_nonidentity_linear_groups" in estimates:
        print(
            "compressed nonidentity linear groups: "
            f"{estimates['compressed_nonidentity_linear_groups']:,}"
        )
    symmetry_classes = estimates["symmetry_classes"]
    if isinstance(symmetry_classes, dict):
        print(
            "symmetry pair-word classes: "
            f"{symmetry_classes['pair_word_classes']:,}"
        )
        print(
            "symmetry translation classes: "
            f"{symmetry_classes['translation_choice_classes']:,}"
        )
        print(
            "symmetry max orbit sizes: "
            f"pair={symmetry_classes['max_pair_word_orbit']}, "
            f"translation={symmetry_classes['max_translation_choice_orbit']}"
        )
    else:
        print(f"symmetry classes: {symmetry_classes}")
    reversal_classes = estimates.get("reversal_classes", "not_requested")
    if isinstance(reversal_classes, dict):
        print(
            "reversal pair-word classes: "
            f"{reversal_classes['pair_word_classes']:,}"
        )
        print(
            "reversal translation classes: "
            f"{reversal_classes['translation_choice_classes']:,}"
        )
        print(
            "reversal max orbit sizes: "
            f"pair={reversal_classes['max_pair_word_orbit']}, "
            f"translation={reversal_classes['max_translation_choice_orbit']}"
        )
    else:
        print(f"reversal classes: {reversal_classes}")
    combined_classes = estimates.get("combined_symmetry_reversal_classes", "not_requested")
    if isinstance(combined_classes, dict):
        if combined_classes.get("exact") is False and combined_classes.get("status"):
            print(f"combined symmetry/reversal status: {combined_classes['status']}")
        print(
            "combined symmetry/reversal pair-word classes: "
            f"{combined_classes['pair_word_classes']:,}"
        )
        print(
            "combined symmetry/reversal translation classes: "
            f"{combined_classes['translation_choice_classes']:,}"
        )
        print(
            "combined symmetry/reversal max orbit sizes: "
            f"pair={combined_classes['max_pair_word_orbit']}, "
            f"translation={combined_classes['max_translation_choice_orbit']}"
        )
    else:
        print(f"combined symmetry/reversal classes: {combined_classes}")
    if not payload.get("complete", False):
        print("profile status: partial development run")


def recompute_nonidentity_group_key(rank: int, word: list[str]) -> str:
    pref = prefix_matrices(word)
    builder = ProfileBuilder(sample_limit=0, progress_interval=0)
    builder.classify_nonidentity(rank, word, pref, mat_mul(pref[-1], RPAIR["x"]))
    require(len(builder.nonidentity_groups.counts) == 1, "sample nonidentity group count")
    return next(iter(builder.nonidentity_groups.counts))


def recompute_nonidentity_failure(rank: int, word: list[str]) -> str:
    key = recompute_nonidentity_group_key(rank, word)
    for part in key.split(";"):
        if part.startswith("failure="):
            return part.split("=", 1)[1]
    raise ValueError(f"missing nonidentity failure in {key}")


def recompute_translation_group_key(rank: int, word: list[str], mask: int) -> str:
    pref = prefix_matrices(word)
    builder = ProfileBuilder(sample_limit=0, progress_interval=0)
    builder.classify_translation_mask(rank, word, pref, mask)
    require(len(builder.translation_groups.counts) == 1, "sample translation group count")
    return next(iter(builder.translation_groups.counts))


def recompute_translation_failure(rank: int, word: list[str], mask: int) -> str:
    key = recompute_translation_group_key(rank, word, mask)
    for part in key.split(";"):
        if part.startswith("failure="):
            return part.split("=", 1)[1]
    raise ValueError(f"missing translation failure in {key}")


def check_profile_payload(payload: dict) -> dict:
    require(payload.get("schema_version") == 1, "schema version")
    require(payload.get("mode") == "profile-exhaustive-states", "mode")
    options = payload.get("options", {})
    require(isinstance(options, dict), "options object")
    with_symmetry = bool(options.get("with_symmetry", False))
    with_reversal = bool(options.get("with_reversal", False))
    exact_state_groups = bool(options.get("exact_state_groups", False))
    if with_reversal:
        require(
            options.get("reversal_proof_transport_enabled") is False,
            "Step 14E.1 reversal is grouping-only",
        )
    sanity = payload["expected_sanity_counts"]
    require(sanity["pair_words"] == EXPECTED_PAIR_WORDS, "expected pair words")
    require(sanity["identity_linear_words"] == EXPECTED_IDENTITY_WORDS, "expected identity words")
    require(
        sanity["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        "expected translation sign assignments",
    )
    counts = payload["actual_counts"]
    require(counts["pair_words"] >= 0, "nonnegative pair words")
    require(counts["identity_linear_words"] >= 0, "nonnegative identity words")
    require(counts["nonidentity_words"] >= 0, "nonnegative nonidentity words")
    require(
        counts["identity_linear_words"] + counts["nonidentity_words"] == counts["pair_words"],
        "identity/nonidentity partition",
    )
    require(
        counts["translation_sign_assignments"] == counts["identity_linear_words"] * 64,
        "translation assignment count",
    )
    if payload.get("complete", False):
        require(counts["pair_words"] == EXPECTED_PAIR_WORDS, "complete pair-word count")
        require(counts["identity_linear_words"] == EXPECTED_IDENTITY_WORDS, "complete identity count")
        require(
            counts["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            "complete translation assignment count",
        )

    nonidentity_sum = sum(group["count"] for group in payload["nonidentity_groups"])
    translation_sum = sum(group["count"] for group in payload["translation_groups"])
    require(nonidentity_sum == counts["nonidentity_words"], "nonidentity group count sum")
    require(translation_sum == counts["translation_sign_assignments"], "translation group count sum")
    estimates = payload["size_estimates"]
    exact_summary = estimates.get("exact_state_group_summary")
    require(isinstance(exact_summary, dict), "exact state group summary object")
    require(exact_summary.get("computed") is exact_state_groups, "exact state group computed flag")
    if exact_state_groups:
        nonid_summary = exact_summary.get("nonidentity")
        translation_summary = exact_summary.get("translation")
        require(isinstance(nonid_summary, dict), "nonidentity exact summary")
        require(isinstance(translation_summary, dict), "translation exact summary")
        formula_exact = exact_summary.get("formula_exact") is True
        nonid_total = (
            nonid_summary["noFixedAxis"]
            + nonid_summary["badDirectionSign"]
            + nonid_summary["badPairBalance"]
            + nonid_summary["needsAxisSolveOrSimulation"]
            + nonid_summary.get("pathSensitiveUnbucketed", 0)
        )
        translation_total = (
            translation_summary["badTranslationVector"]
            + translation_summary["badDirectionSign"]
            + translation_summary["needsFarkas"]
            + translation_summary.get("pathSensitiveUnbucketed", 0)
        )
        require(nonid_total == nonid_summary["total_groups"], "nonidentity exact summary sum")
        require(translation_total == translation_summary["total_groups"], "translation exact summary sum")
        require(estimates["nonidentity_state_groups"] == nonid_total, "nonidentity exact state group estimate")
        require(estimates["translation_state_groups"] == translation_total, "translation exact state group estimate")
        require(nonid_total > 0 or counts["nonidentity_words"] == 0, "nonidentity exact groups nonempty")
        require(translation_total > 0 or counts["translation_sign_assignments"] == 0,
                "translation exact groups nonempty")
        if formula_exact:
            require(nonid_summary.get("pathSensitiveUnbucketed") == counts["nonidentity_words"],
                    "formula nonidentity path-sensitive count")
            require(translation_summary.get("pathSensitiveUnbucketed") ==
                    counts["translation_sign_assignments"],
                    "formula translation path-sensitive count")
            require(isinstance(exact_summary.get("formula_reason"), str), "formula reason")
    if with_symmetry:
        symmetry = estimates.get("symmetry_classes")
        require(isinstance(symmetry, dict), "symmetry class summary")
        require(symmetry["pair_word_classes"] >= 0, "symmetry pair classes nonnegative")
        require(symmetry["translation_choice_classes"] >= 0, "symmetry translation classes nonnegative")
        require(0 <= symmetry["max_pair_word_orbit"] <= 8, "symmetry pair orbit bound")
        require(0 <= symmetry["max_translation_choice_orbit"] <= 8, "symmetry translation orbit bound")
    if with_reversal:
        reversal = estimates.get("reversal_classes")
        require(isinstance(reversal, dict), "reversal class summary")
        require(reversal["proof_transport_enabled"] is False, "reversal transport disabled in profile")
        require(reversal["pair_word_classes"] >= 0, "reversal pair classes nonnegative")
        require(reversal["translation_choice_classes"] >= 0, "reversal translation classes nonnegative")
        require(0 <= reversal["max_pair_word_orbit"] <= 2, "reversal pair orbit bound")
        require(0 <= reversal["max_translation_choice_orbit"] <= 2, "reversal translation orbit bound")
    if with_symmetry or with_reversal:
        combined = estimates.get("combined_symmetry_reversal_classes")
        require(isinstance(combined, dict), "combined class summary")
        require(combined["pair_word_classes"] >= 0, "combined pair classes nonnegative")
        require(combined["translation_choice_classes"] >= 0, "combined translation classes nonnegative")
        require(0 <= combined["max_pair_word_orbit"] <= 16, "combined pair orbit bound")
        require(0 <= combined["max_translation_choice_orbit"] <= 16, "combined translation orbit bound")
        require(estimates.get("canonical_cert_estimate", -1) >= 0, "canonical cert estimate")
        require(estimates.get("estimated_lean_bytes", -1) >= 0, "Lean byte estimate")

    compact_backend = str(payload.get("backend", "")).startswith("compiled-exact-cpp")

    for group in payload["nonidentity_groups"]:
        details = group["details"]
        require(make_key(details) == group["key"], f"nonidentity key {group['key']}")
        if "linear" in details:
            parse_mat_key(details["linear"])
        if "axis" in details:
            parse_vec_key(details["axis"])
        for sample in group["samples"]:
            word = sample["word"]
            rank = sample["rank"]
            require(valid_pair_word(word), f"nonidentity sample valid {rank}")
            require(lex_rank_pair_word(word) == rank, f"nonidentity sample rank {rank}")
            if compact_backend:
                require(recompute_nonidentity_failure(rank, word) == details["failure"],
                        f"nonidentity sample failure {rank}")
            else:
                require(recompute_nonidentity_group_key(rank, word) == group["key"],
                        f"nonidentity sample group {rank}")

    for group in payload["translation_groups"]:
        details = group["details"]
        require(make_key(details) == group["key"], f"translation key {group['key']}")
        if "b" in details:
            parse_vec_key(details["b"])
        if details.get("constraints"):
            parse_constraints_key(details["constraints"])
        for sample in group["samples"]:
            word = sample["word"]
            rank = sample["rank"]
            mask = sample["mask"]
            require(valid_pair_word(word), f"translation sample valid {rank}/{mask}")
            require(lex_rank_pair_word(word) == rank, f"translation sample rank {rank}/{mask}")
            require(0 <= mask < 64, f"translation sample mask {rank}/{mask}")
            if compact_backend:
                require(recompute_translation_failure(rank, word, mask) == details["failure"],
                        f"translation sample failure {rank}/{mask}")
            else:
                require(recompute_translation_group_key(rank, word, mask) == group["key"],
                        f"translation sample group {rank}/{mask}")

    for sample in payload["samples"]:
        word = sample["word"]
        rank = sample["rank"]
        require(valid_pair_word(word), f"top sample valid {rank}")
        require(lex_rank_pair_word(word) == sample["lexRank"] == rank, f"top sample rank {rank}")

    estimates = payload["size_estimates"]
    require(estimates["flat_nonidentity_certs"] == counts["nonidentity_words"], "flat nonidentity")
    require(estimates["flat_translation_certs"] == counts["translation_sign_assignments"],
            "flat translation")
    require(estimates["flat_total_certs"] == counts["nonidentity_words"] +
            counts["translation_sign_assignments"], "flat total")
    if not exact_state_groups:
        require(estimates["nonidentity_state_groups"] == len(payload["nonidentity_groups"]),
                "nonidentity group estimate")
        require(estimates["translation_state_groups"] == len(payload["translation_groups"]),
                "translation group estimate")
    else:
        require(estimates["nonidentity_state_groups"] >= len(payload["nonidentity_groups"]),
                "nonidentity exact group estimate lower bound")
        require(estimates["translation_state_groups"] >= len(payload["translation_groups"]),
                "translation exact group estimate lower bound")
    return counts


def load_profile_payload(input_path: Path = PROFILE_JSON_PATH) -> dict:
    return attach_canonical_orbit_summary(
        json.loads(input_path.read_text(encoding="utf-8"))
    )
