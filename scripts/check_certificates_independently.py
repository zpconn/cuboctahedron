#!/usr/bin/env python3
"""Independently check generated Step 12 sample data.

This checker is still untrusted by the theorem.  Its job is to catch generator
bugs before Lean sees generated data.
"""

from __future__ import annotations

import argparse
import json
from fractions import Fraction
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"

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


def parse_rat(text: str) -> Fraction:
    return Fraction(text)


def vec(values):
    x, y, z = values
    return (Fraction(x), Fraction(y), Fraction(z))


def identity_matrix():
    return (
        (Fraction(1), Fraction(0), Fraction(0)),
        (Fraction(0), Fraction(1), Fraction(0)),
        (Fraction(0), Fraction(0), Fraction(1)),
    )


def matrix_from_json(value):
    return tuple(tuple(parse_rat(entry) for entry in row) for row in value)


def vector_from_json(value):
    return tuple(parse_rat(entry) for entry in value)


def dot(a, b):
    return sum(x * y for x, y in zip(a, b))


def mat_mul(a, b):
    return tuple(
        tuple(sum(a[i][k] * b[k][j] for k in range(3)) for j in range(3))
        for i in range(3)
    )


def mat_vec(a, v):
    return tuple(sum(a[i][k] * v[k] for k in range(3)) for i in range(3))


def vec_add(a, b):
    return (a[0] + b[0], a[1] + b[1], a[2] + b[2])


def vec_scale(c, v):
    return (c * v[0], c * v[1], c * v[2])


def reflection_matrix(n):
    nn = dot(n, n)
    return tuple(
        tuple((Fraction(1) if i == j else Fraction(0)) - Fraction(2) * n[i] * n[j] / nn
              for j in range(3))
        for i in range(3)
    )


def reflection_delta(pair_id):
    n = vec(NORMALS[pair_id])
    return vec_scale(Fraction(2) * OFFSETS[pair_id] / dot(n, n), n)


RPAIR = {pair_id: reflection_matrix(vec(normal)) for pair_id, normal in NORMALS.items()}
DCAN = {pair_id: reflection_delta(pair_id) for pair_id in PAIR_IDS}


def valid_pair_word(word):
    return len(word) == 13 and {pair_id: word.count(pair_id) for pair_id in PAIR_IDS} == PAIR_COUNTS


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


def require(condition, message):
    if not condition:
        raise SystemExit(f"check failed: {message}")


def check_payload(payload):
    require(payload.get("schema_version") == 1, "schema version")
    require(payload.get("mode") == "small-sample", "mode")
    sanity = payload["expected_sanity_counts"]
    require(sanity["pair_words"] == EXPECTED_PAIR_WORDS, "pair-word sanity count")
    require(sanity["identity_linear_words"] == EXPECTED_IDENTITY_WORDS, "identity sanity count")
    require(
        sanity["translation_sign_assignments"] == EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        "translation sign-assignment sanity count",
    )

    words_by_index = {}
    identity_count = 0
    nonidentity_count = 0
    for record in payload["pair_words"]:
        index = record["sample_index"]
        word = record["word"]
        require(valid_pair_word(word), f"valid pair word {index}")
        require(record["valid"] is True, f"valid flag {index}")
        computed = total_linear(word)
        require(matrix_from_json(record["linear"]["matrix"]) == computed, f"linear matrix {index}")
        identity = computed == identity_matrix()
        require(record["linear"]["identity"] is identity, f"identity flag {index}")
        if identity:
            identity_count += 1
        else:
            nonidentity_count += 1
        words_by_index[index] = word

    nonidentity_records = payload["nonidentity_records"]
    require(len(nonidentity_records) == nonidentity_count, "nonidentity record count")
    for expected_chunk_rank, record in enumerate(nonidentity_records):
        require(record["chunk_rank"] == expected_chunk_rank, f"nonidentity chunk rank {expected_chunk_rank}")
        index = record["sample_index"]
        require(record["rank"] == index - 1, f"nonidentity global rank {index}")
        word = record["word"]
        require(word == words_by_index[index], f"nonidentity word echo {index}")
        require(total_linear(word) != identity_matrix(), f"nonidentity classification {index}")
        require(
            record["lean_smoke_certificate"] == "TranslationFailure.badTranslationVector",
            f"nonidentity lean smoke certificate {index}",
        )

    translation_records = payload["translation_records"]
    require(len(translation_records) == identity_count * 64, "translation record count")
    for expected_assignment_rank, record in enumerate(translation_records):
        require(
            record["assignment_rank"] == expected_assignment_rank,
            f"translation assignment rank {expected_assignment_rank}",
        )
        index = record["sample_index"]
        require(record["rank"] == index - 1, f"translation global rank {index}")
        word = words_by_index[index]
        require(total_linear(word) == identity_matrix(), f"translation identity word {index}")
        mask = record["mask"]
        require(0 <= mask < 64, f"translation mask {index}/{mask}")
        b, seq = translation_vector(word, mask)
        require(vector_from_json(record["b"]) == b, f"translation vector {index}/{mask}")
        require(record["seq"] == seq, f"translation sequence {index}/{mask}")
        require(record["has_farkas_certificate"] is False, f"farkas flag {index}/{mask}")

    chunks = payload["chunks"]
    nonidentity_chunk = chunks["nonidentity"]
    require(nonidentity_chunk["name"] == "NonIdentity.Chunk0000", "nonidentity chunk name")
    require(nonidentity_chunk["startRank"] == 0, "nonidentity chunk start")
    require(nonidentity_chunk["endRank"] == len(nonidentity_records), "nonidentity chunk end")
    require(nonidentity_chunk["expectedItems"] == len(nonidentity_records), "nonidentity chunk items")
    require(nonidentity_chunk["records"] == nonidentity_records, "nonidentity chunk records")

    translation_chunk = chunks["translation"]
    require(translation_chunk["name"] == "Translation.Chunk0000", "translation chunk name")
    require(translation_chunk["startRank"] == 0, "translation chunk start")
    require(translation_chunk["endRank"] == len(translation_records), "translation chunk end")
    require(translation_chunk["expectedItems"] == len(translation_records), "translation chunk items")
    require(translation_chunk["records"] == translation_records, "translation chunk records")

    summary = payload["summary"]
    require(summary["pair_words_sampled"] == len(payload["pair_words"]), "summary pair words")
    require(summary["identity_linear_sampled"] == identity_count, "summary identity")
    require(summary["nonidentity_linear_sampled"] == nonidentity_count, "summary nonidentity")
    require(
        summary["translation_sign_assignments_sampled"] == len(translation_records),
        "summary translation assignments",
    )
    return {
        "pair_words_sampled": len(payload["pair_words"]),
        "identity_linear_sampled": identity_count,
        "nonidentity_linear_sampled": nonidentity_count,
        "translation_sign_assignments_sampled": len(translation_records),
        "nonidentity_chunk_items": nonidentity_chunk["expectedItems"],
        "translation_chunk_items": translation_chunk["expectedItems"],
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--small-sample", action="store_true", help="check the deterministic Step 12 sample")
    args = parser.parse_args()
    if not args.small_sample:
        parser.error("only --small-sample is implemented in Step 12")
    payload = json.loads(JSON_PATH.read_text(encoding="utf-8"))
    summary = check_payload(payload)
    print("independent check passed")
    print(f"sample pair words: {summary['pair_words_sampled']}")
    print(f"sample identity linear words: {summary['identity_linear_sampled']}")
    print(f"sample nonidentity linear words: {summary['nonidentity_linear_sampled']}")
    print(f"sample translation sign assignments: {summary['translation_sign_assignments_sampled']}")
    print(f"nonidentity chunk items: {summary['nonidentity_chunk_items']}")
    print(f"translation chunk items: {summary['translation_chunk_items']}")
    print(f"sanity pair words: {EXPECTED_PAIR_WORDS}")
    print(f"sanity identity linear words: {EXPECTED_IDENTITY_WORDS}")
    print(f"sanity translation sign assignments: {EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}")


if __name__ == "__main__":
    main()
