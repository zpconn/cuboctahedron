#!/usr/bin/env python3
"""Independently check generated Step 14C sample data.

This checker is not trusted by Lean. Its job is to catch generator mistakes
before Lean checks the emitted certificates.
"""

from __future__ import annotations

import argparse
import json
import math
from fractions import Fraction
from pathlib import Path
from typing import Iterable


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"
COVERAGE_JSON_PATH = REPO_ROOT / "scripts" / "generated" / "coverage_manifest.json"

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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--small-sample", action="store_true", help="check deterministic Step 14C sample")
    parser.add_argument("--mode", choices=["small-sample", "coverage-manifest"], help="check mode")
    args = parser.parse_args()
    mode = args.mode or ("small-sample" if args.small_sample else None)
    if mode is None:
        parser.error("use --small-sample or --mode coverage-manifest")
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
