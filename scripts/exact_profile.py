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
    def __init__(self, *, sample_limit: int = 32, progress_interval: int = 1_000_000) -> None:
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
            self.constraint_cache[constraint_cache_key] = constraints_key(translation_constraints(seq, b))
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
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.classify_identity(rank, word, pref)
        else:
            self.classify_nonidentity(rank, word, pref, matrix)

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
            "note": "Profiler-only estimate; no Lean proof data is emitted.",
        }

    def payload(self, *, complete: bool, limit: int | None) -> dict:
        return {
            "schema_version": 1,
            "mode": "profile-exhaustive-states",
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


def build_profile_payload_python(limit: int | None = None, progress_interval: int = 1_000_000) -> dict:
    builder = ProfileBuilder(progress_interval=progress_interval)
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


def build_profile_payload_cpp(limit: int | None = None) -> dict:
    binary = ensure_cpp_profile_helper()
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
    return attach_canonical_orbit_summary(json.loads(result.stdout))


def build_profile_payload(limit: int | None = None, progress_interval: int = 1_000_000) -> dict:
    _ = progress_interval
    return build_profile_payload_cpp(limit=limit)


def attach_canonical_orbit_summary(payload: dict) -> dict:
    if not CANONICAL_ORBIT_JSON_PATH.exists():
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
    print(f"nonidentity state groups: {len(payload['nonidentity_groups']):,}")
    print(f"translation state groups: {len(payload['translation_groups']):,}")
    print(f"flat cert estimate: {estimates['flat_total_certs']:,}")
    print(f"prefix-tree leaf estimate: {estimates['prefix_tree_leaf_estimate']:,}")
    print(f"shared Farkas groups: {estimates['shared_farkas_groups']:,}")
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
    require(estimates["nonidentity_state_groups"] == len(payload["nonidentity_groups"]),
            "nonidentity group estimate")
    require(estimates["translation_state_groups"] == len(payload["translation_groups"]),
            "translation group estimate")
    return counts


def load_profile_payload(input_path: Path = PROFILE_JSON_PATH) -> dict:
    return attach_canonical_orbit_summary(
        json.loads(input_path.read_text(encoding="utf-8"))
    )
