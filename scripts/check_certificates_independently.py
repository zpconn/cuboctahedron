#!/usr/bin/env python3
"""Independently check generated Step 14C sample data.

This checker is not trusted by Lean. Its job is to catch generator mistakes
before Lean checks the emitted certificates.
"""

from __future__ import annotations

import argparse
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
COVERAGE_TREE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_tree_sample.json"
CANONICAL_ORBIT_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "canonical_orbit_coverage.json"
CPP_CANONICAL_ORBIT_SOURCE_PATH = REPO_ROOT / "scripts" / "canonical_orbit_coverage.cpp"
CPP_CANONICAL_ORBIT_BINARY_PATH = Path("/tmp") / "cuboctahedron_canonical_orbit_coverage"

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

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]
Aff = tuple[Mat, Vec]


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


def total_aff(seq):
    result = aff_id()
    for index in list(range(1, 14)) + [0]:
        result = aff_compose(result, face_reflection(seq[index]))
    return result


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
        require(total_linear(word) != identity_matrix(), f"nonidentity matrix {rank}")
        axis = vector_from_json(cert["axis"])
        cross_factor = matrix_from_json(cert["kernel_cross_factor"])
        require(check_kernel_line_witness(word, axis, cross_factor), f"kernel line {cert['name']}")
        failure = cert["failure"]
        if failure["kind"] == "badDirectionSign":
            index = failure["index"]
            require(0 <= index < 13, f"bad direction index {cert['name']}")
            pref = prefix_matrices(word)
            require(
                dot(mat_vec(pref[index], vec(NORMALS[word[index]])), axis) == 0,
                f"bad direction zero {cert['name']}",
            )
        elif failure["kind"] == "badPairBalance":
            seq = cert["forced_seq"]
            require(axis_forces_sequence(word, axis, seq), f"forced sequence {cert['name']}")
            require(len(set(seq)) != 14, f"non-omni forced sequence {cert['name']}")
        else:
            raise SystemExit(f"check failed: unsupported nonidentity failure {failure['kind']}")

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
def canonical_word_tuple(word_tuple):
    return min(sym_word_tuple(started_sym_key(sym), word_tuple) for sym in STARTED_SYMS)


def canonical_word(word):
    return list(canonical_word_tuple(tuple(word)))


@lru_cache(maxsize=None)
def canonical_translation_choice_cached(word_tuple, mask):
    candidates = []
    for sym in STARTED_SYMS:
        raw_word = sym_word_tuple(started_sym_key(sym), word_tuple)
        raw_mask = transported_translation_mask_cached(
            started_sym_key(sym), word_tuple, mask
        )
        candidates.append((raw_word, raw_mask))
    return min(candidates)


def canonical_translation_choice(word, mask):
    raw_word, raw_mask = canonical_translation_choice_cached(tuple(word), mask)
    return list(raw_word), raw_mask


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


def check_nonid_cert_record(cert):
    word = cert["word"]
    require(valid_pair_word(word), f"valid nonidentity cert {cert['name']}")
    require(total_linear(word) != identity_matrix(), f"nonidentity matrix {cert['name']}")
    axis = vector_from_json(cert["axis"])
    cross_factor = matrix_from_json(cert["kernel_cross_factor"])
    require(check_kernel_line_witness(word, axis, cross_factor), f"kernel {cert['name']}")
    failure = cert["failure"]
    if failure["kind"] == "badDirectionSign":
        index = failure["index"]
        require(0 <= index < 13, f"bad direction index {cert['name']}")
        pref = prefix_matrices(word)
        require(dot(mat_vec(pref[index], vec(NORMALS[word[index]])), axis) == 0,
                f"bad direction zero {cert['name']}")
    elif failure["kind"] == "badPairBalance":
        seq = cert["forced_seq"]
        require(axis_forces_sequence(word, axis, seq), f"forced sequence {cert['name']}")
        require(len(set(seq)) != 14, f"bad pair balance {cert['name']}")
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
    else:
        raise SystemExit(f"check failed: unsupported translation failure {failure['kind']}")


def check_canonical_file(payload):
    require(payload.get("schema_version") == 1, "canonical schema version")
    require(payload.get("mode") == "canonical-symmetry-sample", "canonical mode")
    sym = payload["symmetry"]
    require(sym in STARTED_SYMS, "sample symmetry is started symmetry")

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


def check_coverage_tree_file(payload):
    require(payload.get("schema_version") == 1, "coverage tree schema version")
    require(payload.get("mode") == "coverage-tree-sample", "coverage tree mode")

    canonical_payload = json.loads(CANONICAL_JSON_PATH.read_text(encoding="utf-8"))
    canonical_summary = check_canonical_file(canonical_payload)
    raw_nonid = canonical_payload["nonidentity"]["raw"]
    raw_translation = canonical_payload["translation"]["raw"]

    nonid_trees = payload["nonidentity_trees"]
    require(len(nonid_trees) == 2, "coverage tree nonidentity count")
    require(nonid_trees[0] == {
        "name": "nonIdRawTree",
        "rank": 1,
        "leaf": "raw",
        "cert": "SmallSample.nonIdBadDirection000",
    }, "coverage tree raw nonidentity leaf")
    require(0 <= nonid_trees[0]["rank"] < EXPECTED_PAIR_WORDS,
            "coverage tree raw nonidentity rank bounds")
    require(nonid_trees[1] == {
        "name": "nonIdTransportTree",
        "rank": raw_nonid["rank"],
        "leaf": "transported",
        "transport": "CanonicalSample.nonidentityTransport",
        "raw_cert": f"CanonicalSample.{raw_nonid['name']}",
    }, "coverage tree transported nonidentity leaf")
    require(0 <= nonid_trees[1]["rank"] < EXPECTED_PAIR_WORDS,
            "coverage tree transported nonidentity rank bounds")

    translation_trees = payload["translation_trees"]
    require(len(translation_trees) == 2, "coverage tree translation count")
    require(translation_trees[0] == {
        "name": "translationRawTree",
        "rank": 0,
        "mask": 0,
        "leaf": "raw",
        "cert": "SmallSample.translationBadDirection000",
    }, "coverage tree raw translation leaf")
    require(0 <= translation_trees[0]["rank"] < EXPECTED_PAIR_WORDS,
            "coverage tree raw translation rank bounds")
    require(0 <= translation_trees[0]["mask"] < 64,
            "coverage tree raw translation mask bounds")
    require(translation_trees[1] == {
        "name": "translationTransportTree",
        "rank": raw_translation["rank"],
        "mask": raw_translation["mask"],
        "leaf": "transported",
        "transport": "CanonicalSample.translationTransport",
        "raw_cert": f"CanonicalSample.{raw_translation['name']}",
    }, "coverage tree transported translation leaf")
    require(0 <= translation_trees[1]["rank"] < EXPECTED_PAIR_WORDS,
            "coverage tree transported translation rank bounds")
    require(0 <= translation_trees[1]["mask"] < 64,
            "coverage tree transported translation mask bounds")

    return {
        "nonidentity_trees": len(nonid_trees),
        "translation_trees": len(translation_trees),
        "canonical_pair_words": canonical_summary["canonical_pair_words"],
        "transported_nonidentity_rank": raw_nonid["rank"],
        "transported_translation_rank": raw_translation["rank"],
        "transported_translation_mask": raw_translation["mask"],
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
    args = parser.parse_args()
    mode = args.mode or ("small-sample" if args.small_sample else None)
    if mode is None:
        parser.error(
            "use --small-sample or --mode coverage-manifest/"
            "profile-exhaustive-states/canonical-symmetry-sample/"
            "coverage-tree-sample/canonical-orbit-coverage/"
            "canonical-orbit-coverage-manifest"
        )
    if mode == "profile-exhaustive-states":
        payload = exact_profile.load_profile_payload(args.profile_input)
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
