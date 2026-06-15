#!/usr/bin/env python3
"""Generate exact small-sample certificate data for the cuboctahedron project.

This script is intentionally untrusted.  It uses exact rational arithmetic and
emits data that Lean or the independent checker can verify.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Iterable


REPO_ROOT = Path(__file__).resolve().parents[1]
JSON_PATH = REPO_ROOT / "scripts" / "generated" / "small_sample.json"
LEAN_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "SmallSample.lean"
NONIDENTITY_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Chunk0000.lean"
)
TRANSLATION_CHUNK_PATH = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Chunk0000.lean"
)
ALL_GENERATED_PATH = REPO_ROOT / "Cuboctahedron" / "Generated" / "AllGenerated.lean"

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

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]


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


def reflection_delta(pair_id: str) -> Vec:
    n = vec(NORMALS[pair_id])
    return vec_scale(Fraction(2) * OFFSETS[pair_id] / dot(n, n), n)


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


def is_identity(m: Mat) -> bool:
    return m == mat_id()


def rat_to_json(x: Fraction) -> str:
    if x.denominator == 1:
        return str(x.numerator)
    return f"{x.numerator}/{x.denominator}"


def mat_to_json(m: Mat) -> list[list[str]]:
    return [[rat_to_json(x) for x in row] for row in m]


def vec_to_json(v: Vec) -> list[str]:
    return [rat_to_json(x) for x in v]


def lean_rat(x: Fraction) -> str:
    if x.denominator == 1:
        return str(x.numerator)
    if x.numerator < 0:
        return f"({x.numerator}/{x.denominator})"
    return f"({x.numerator}/{x.denominator})"


def lean_vec(v: Vec) -> str:
    return "{ x := " + lean_rat(v[0]) + ", y := " + lean_rat(v[1]) + ", z := " + lean_rat(v[2]) + " }"


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
    return {pair_id: word.count(pair_id) for pair_id in PAIR_IDS} == PAIR_COUNTS


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


@dataclass(frozen=True)
class WordRecord:
    sample_index: int
    word: list[str]
    linear: Mat

    @property
    def identity(self) -> bool:
        return is_identity(self.linear)

    def to_json(self) -> dict:
        return {
            "sample_index": self.sample_index,
            "word": self.word,
            "valid": valid_pair_word(self.word),
            "linear": {
                "identity": self.identity,
                "matrix": mat_to_json(self.linear),
            },
        }


def build_payload(sample_size: int) -> dict:
    words = [
        WordRecord(i + 1, word, total_linear(word))
        for i, word in enumerate(enumerate_pair_words(sample_size))
    ]
    nonidentity_records = []
    for chunk_rank, record in enumerate(record for record in words if not record.identity):
        nonidentity_records.append({
            "rank": record.sample_index - 1,
            "chunk_rank": chunk_rank,
            "sample_index": record.sample_index,
            "word": record.word,
            "kind": "nonidentity_linear",
            "lean_smoke_certificate": "TranslationFailure.badTranslationVector",
        })
    translation_records = []
    translation_rank = 0
    for record in words:
        if record.identity:
            for mask in range(64):
                b, seq = translation_vector(record.word, mask)
                translation_records.append({
                    "rank": record.sample_index - 1,
                    "assignment_rank": translation_rank,
                    "sample_index": record.sample_index,
                    "mask": mask,
                    "seq": seq,
                    "b": vec_to_json(b),
                    "has_farkas_certificate": False,
                })
                translation_rank += 1
    return {
        "schema_version": 1,
        "mode": "small-sample",
        "expected_sanity_counts": {
            "pair_words": EXPECTED_PAIR_WORDS,
            "identity_linear_words": EXPECTED_IDENTITY_WORDS,
            "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
        },
        "pair_words": [record.to_json() for record in words],
        "nonidentity_records": nonidentity_records,
        "translation_records": translation_records,
        "chunks": {
            "nonidentity": {
                "name": "NonIdentity.Chunk0000",
                "startRank": 0,
                "endRank": len(nonidentity_records),
                "expectedItems": len(nonidentity_records),
                "records": nonidentity_records,
            },
            "translation": {
                "name": "Translation.Chunk0000",
                "startRank": 0,
                "endRank": len(translation_records),
                "expectedItems": len(translation_records),
                "records": translation_records,
            },
        },
        "summary": {
            "pair_words_sampled": len(words),
            "identity_linear_sampled": sum(1 for record in words if record.identity),
            "nonidentity_linear_sampled": sum(1 for record in words if not record.identity),
            "translation_sign_assignments_sampled": len(translation_records),
        },
    }


def lean_pair_word_name(index: int) -> str:
    return f"word{index:03d}"


def lean_seq_name(index: int) -> str:
    return f"seq{index:03d}"


def lean_cert_name(index: int) -> str:
    return f"translationCert{index:03d}"


def lean_nonidentity_theorem_name(index: int) -> str:
    return f"word{index:03d}_totalLinear_ne_id"


def lean_identity_theorem_name(index: int) -> str:
    return f"word{index:03d}_totalLinear_id"


def lean_valid_theorem_name(index: int) -> str:
    return f"word{index:03d}_valid"


def lean_chunk_nonidentity_cert_name(index: int) -> str:
    return f"cert{index:03d}"


def lean_translation_seq_name(index: int) -> str:
    return f"choiceSeq{index:03d}"


def lean_translation_choice_cert_name(index: int) -> str:
    return f"choiceCert{index:03d}"


def lean_seq_face(word: list[str], index: int) -> str:
    if index == 0:
        return "Face.xp"
    return f"Face.{FACE_PLUS[word[index - 1]]}"


def append_seq_definition(lines: list[str], index: int, word: list[str]) -> None:
    lines.append(f"def {lean_seq_name(index)} (i : Step14) : Face :=")
    lines.append("  match i.val with")
    for step in range(13):
        lines.append(f"  | {step} => {lean_seq_face(word, step)}")
    lines.append(f"  | _ => {lean_seq_face(word, 13)}")
    lines.append("")
    lines.append(f"def {lean_pair_word_name(index)} : PairWord :=")
    lines.append(f"  pairWordOfSeq {lean_seq_name(index)}")
    lines.append("")


def append_valid_theorem(lines: list[str], index: int) -> None:
    word_name = lean_pair_word_name(index)
    lines.extend([
        f"theorem {lean_valid_theorem_name(index)} : ValidPairWord {word_name} := by",
        f"  unfold {word_name} pairWordOfSeq ValidPairWord pairCount",
        "  decide",
        "",
    ])


def append_identity_theorems(lines: list[str], index: int) -> None:
    seq_name = lean_seq_name(index)
    word_name = lean_pair_word_name(index)
    theorem_name = lean_identity_theorem_name(index)
    lines.extend([
        f"theorem {seq_name}_starts : StartsXp {seq_name} := by",
        "  rfl",
        "",
        f"theorem {theorem_name} :",
        f"    totalLinearOfPairWord {word_name} = (matId : Mat3 Rat) := by",
        f"  have hBridge : totalLinear {seq_name} = totalLinearOfPairWord {word_name} :=",
        f"    totalLinear_eq_totalLinearOfPairWord {seq_name}_starts",
        f"      (pairWordOfSeq_matches {seq_name})",
        "  rw [\u2190 hBridge]",
        "  apply Mat3.ext <;>",
        f"    norm_num [totalLinear, totalAff, composeFaceList, totalOrder, {seq_name},",
        "      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, scalarMat, outer,",
        "      matId, dot, affCompose, matMul, matVec, vecAdd, affId]",
        "",
    ])


def append_nonidentity_theorems(lines: list[str], index: int) -> None:
    seq_name = lean_seq_name(index)
    word_name = lean_pair_word_name(index)
    theorem_name = lean_nonidentity_theorem_name(index)
    lines.extend([
        f"theorem {seq_name}_starts : StartsXp {seq_name} := by",
        "  rfl",
        "",
        f"theorem {seq_name}_totalLinear_ne_id :",
        f"    totalLinear {seq_name} \u2260 (matId : Mat3 Rat) := by",
        "  intro h",
        "  have hx := congrArg Mat3.m00 h",
        f"  norm_num [totalLinear, totalAff, composeFaceList, totalOrder, {seq_name},",
        "    faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, scalarMat, outer,",
        "    matId, dot, affCompose, matMul, matVec, vecAdd, affId] at hx",
        "",
        f"theorem {theorem_name} :",
        f"    totalLinearOfPairWord {word_name} \u2260 (matId : Mat3 Rat) := by",
        "  intro hWord",
        f"  have hBridge : totalLinear {seq_name} = totalLinearOfPairWord {word_name} :=",
        f"    totalLinear_eq_totalLinearOfPairWord {seq_name}_starts",
        f"      (pairWordOfSeq_matches {seq_name})",
        f"  exact {seq_name}_totalLinear_ne_id (by rw [hBridge, hWord])",
        "",
    ])


def write_lean(payload: dict) -> None:
    records = payload["pair_words"]
    nonidentity_records = payload["nonidentity_records"]
    lines: list[str] = [
        "import Cuboctahedron.Search.Certificates",
        "",
        "/-!",
        "Small exact generated sample for Step 12.",
        "",
        "This file is generated by `scripts/generate_exact_certificates.py --small-sample`.",
        "It is not an exhaustive certificate chunk.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.SmallSample",
        "",
        "set_option maxHeartbeats 800000",
        "",
    ]
    for index, record in enumerate(records):
        append_seq_definition(lines, index, record["word"])
    for index, _record in enumerate(records):
        append_valid_theorem(lines, index)
    nonidentity_word_indexes = [record["sample_index"] - 1 for record in nonidentity_records]
    identity_word_indexes = [
        record["sample_index"] - 1
        for record in records
        if record["linear"]["identity"]
    ]
    for word_index in identity_word_indexes:
        append_identity_theorems(lines, word_index)
    for word_index in nonidentity_word_indexes:
        append_nonidentity_theorems(lines, word_index)
    word_names = ", ".join(lean_pair_word_name(i) for i in range(len(records)))
    lines.extend([
        "def samplePairWords : Array PairWord :=",
        f"  #[{word_names}]",
        "",
    ])
    for cert_index, record in enumerate(nonidentity_records):
        word_index = record["sample_index"] - 1
        lines.extend([
            f"def {lean_cert_name(cert_index)} : TranslationCert where",
            f"  word := {lean_pair_word_name(word_index)}",
            "  signMask := \u27e80, by decide\u27e9",
            "  b := { x := 0, y := 0, z := 0 }",
            "  failure := TranslationFailure.badTranslationVector",
            "",
        ])
    cert_names = ", ".join(lean_cert_name(i) for i in range(len(nonidentity_records)))
    lines.extend([
        "def translationCerts : Array TranslationCert :=",
        f"  #[{cert_names}]",
        "",
        "def nonIdCerts : Array NonIdCert :=",
        "  #[]",
        "",
        "example : samplePairWords.size = 7 := by",
        "  decide",
        "",
        f"example : translationCerts.size = {len(nonidentity_records)} := by",
        "  decide",
        "",
        "example : checkTranslationCerts translationCerts = true := by",
        "  simp [checkTranslationCerts, translationCerts, checkTranslationCert,",
        "    " + ", ".join(lean_cert_name(i) for i in range(len(nonidentity_records))) + ",",
        "    " + ", ".join(lean_nonidentity_theorem_name(i) for i in nonidentity_word_indexes) + "]",
        "",
        "example : checkNonIdCerts nonIdCerts = true := by",
        "  simp [checkNonIdCerts, nonIdCerts]",
        "",
        "end Cuboctahedron.Generated.SmallSample",
        "",
    ])
    LEAN_PATH.parent.mkdir(parents=True, exist_ok=True)
    LEAN_PATH.write_text("\n".join(lines), encoding="utf-8")


def append_chunk_meta(lines: list[str], chunk: dict) -> None:
    lines.extend([
        "def chunkMeta : GeneratedChunkMeta where",
        f"  name := \"{chunk['name']}\"",
        f"  startRank := {chunk['startRank']}",
        f"  endRank := {chunk['endRank']}",
        f"  expectedItems := {chunk['expectedItems']}",
        "",
    ])


def write_nonidentity_chunk(payload: dict) -> None:
    chunk = payload["chunks"]["nonidentity"]
    records = chunk["records"]
    lines: list[str] = [
        "import Cuboctahedron.Generated.SmallSample",
        "",
        "/-!",
        "Generated non-identity sample chunk for Step 13.",
        "",
        "This is a small exact chunk scaffold, not the exhaustive final search.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "",
        "set_option maxHeartbeats 800000",
        "",
        "open Cuboctahedron.Generated.SmallSample",
        "",
    ]
    append_chunk_meta(lines, chunk)
    for cert_index, record in enumerate(records):
        sample_index = record["sample_index"] - 1
        cert_name = lean_chunk_nonidentity_cert_name(cert_index)
        lines.extend([
            f"def {cert_name} : NonIdentityLinearCert where",
            f"  rank := {record['rank']}",
            f"  word := {lean_pair_word_name(sample_index)}",
            "",
            f"theorem {cert_name}_check :",
            f"    checkNonIdentityLinearCert {cert_name} = true := by",
            f"  simp [checkNonIdentityLinearCert, {cert_name},",
            f"    {lean_valid_theorem_name(sample_index)},",
            f"    {lean_nonidentity_theorem_name(sample_index)}]",
            "",
        ])
    cert_names = [lean_chunk_nonidentity_cert_name(i) for i in range(len(records))]
    lines.extend([
        "def certs : Array NonIdentityLinearCert :=",
        f"  #[{', '.join(cert_names)}]",
        "",
        "theorem certs_check : checkNonIdentityChunk chunkMeta certs = true := by",
        "  simp [checkNonIdentityChunk, checkChunkMeta, chunkMeta,",
        "    checkNonIdentityLinearCerts, certs,",
        "    " + ", ".join(f"{name}_check" for name in cert_names) + "]",
        "",
        "end Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "",
    ])
    NONIDENTITY_CHUNK_PATH.parent.mkdir(parents=True, exist_ok=True)
    NONIDENTITY_CHUNK_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_translation_chunk(payload: dict) -> None:
    chunk = payload["chunks"]["translation"]
    records = chunk["records"]
    lines: list[str] = [
        "import Cuboctahedron.Generated.SmallSample",
        "",
        "/-!",
        "Generated translation-choice sample chunk for Step 13.",
        "",
        "This is a small exact chunk scaffold, not the exhaustive final search.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.Chunk0000",
        "",
        "set_option maxHeartbeats 800000",
        "set_option maxRecDepth 10000",
        "",
        "open Cuboctahedron.Generated.SmallSample",
        "",
    ]
    append_chunk_meta(lines, chunk)
    for cert_index, record in enumerate(records):
        sample_index = record["sample_index"] - 1
        mask = record["mask"]
        seq_name = lean_translation_seq_name(cert_index)
        cert_name = lean_translation_choice_cert_name(cert_index)
        lines.extend([
            f"def {seq_name} : Vector Face 14 :=",
            f"  Vector.ofFn (translationChoiceSeq {lean_pair_word_name(sample_index)} "
            f"\u27e8{mask}, by decide\u27e9)",
            "",
            f"def {cert_name} : TranslationChoiceCert where",
            f"  rank := {record['rank']}",
            f"  word := {lean_pair_word_name(sample_index)}",
            f"  signMask := \u27e8{mask}, by decide\u27e9",
            f"  seq := {seq_name}",
            f"  b := translationVectorOfChoice {lean_pair_word_name(sample_index)} "
            f"\u27e8{mask}, by decide\u27e9",
            "",
            f"theorem {cert_name}_check :",
            f"    checkTranslationChoiceCert {cert_name} = true := by",
            f"  simp [checkTranslationChoiceCert, {cert_name}, {seq_name},",
            f"    {lean_valid_theorem_name(sample_index)},",
            f"    {lean_identity_theorem_name(sample_index)},",
            "    TranslationSeqMatches]",
            "",
        ])
    cert_names = [lean_translation_choice_cert_name(i) for i in range(len(records))]
    lines.extend([
        "def certs : Array TranslationChoiceCert :=",
        f"  #[{', '.join(cert_names)}]",
        "",
        "theorem certs_check : checkTranslationChunk chunkMeta certs = true := by",
        "  simp [checkTranslationChunk, checkChunkMeta, chunkMeta,",
        "    checkTranslationChoiceCerts, certs,",
        "    " + ", ".join(f"{name}_check" for name in cert_names) + "]",
        "",
        "end Cuboctahedron.Generated.Translation.Chunk0000",
        "",
    ])
    TRANSLATION_CHUNK_PATH.parent.mkdir(parents=True, exist_ok=True)
    TRANSLATION_CHUNK_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_all_generated() -> None:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Chunk0000",
        "import Cuboctahedron.Generated.Translation.Chunk0000",
        "",
        "/-!",
        "Aggregate import for generated sample chunks and their rankability coverage.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated",
        "",
        "noncomputable def allGeneratedCheck : Bool :=",
        "  checkGeneratedChunks NonIdentity.Chunk0000.chunkMeta",
        "    NonIdentity.Chunk0000.certs",
        "    Translation.Chunk0000.chunkMeta",
        "    Translation.Chunk0000.certs",
        "",
        "theorem allGeneratedCheck_true : allGeneratedCheck = true := by",
        "  unfold allGeneratedCheck checkGeneratedChunks",
        "  rw [NonIdentity.Chunk0000.certs_check, Translation.Chunk0000.certs_check]",
        "  rfl",
        "",
        "theorem sampleGeneratedCoverage :",
        "    GeneratedCoverage NonIdentity.Chunk0000.certs",
        "      Translation.Chunk0000.certs :=",
        "  generatedCoverage_of_checked_chunks",
        "    NonIdentity.Chunk0000.certs_check",
        "    Translation.Chunk0000.certs_check",
        "",
        "theorem allGeneratedCoverage :",
        "    GeneratedCoverage NonIdentity.Chunk0000.certs",
        "      Translation.Chunk0000.certs :=",
        "  sampleGeneratedCoverage",
        "",
        "theorem exhaustiveGeneratedCoverage :",
        "    ExhaustiveGeneratedCoverage :=",
        "  exhaustiveGeneratedCoverage_by_construction",
        "",
        "end Cuboctahedron.Generated",
        "",
    ]
    ALL_GENERATED_PATH.parent.mkdir(parents=True, exist_ok=True)
    ALL_GENERATED_PATH.write_text("\n".join(lines), encoding="utf-8")


def write_json(payload: dict) -> None:
    JSON_PATH.parent.mkdir(parents=True, exist_ok=True)
    JSON_PATH.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--small-sample", action="store_true", help="generate the deterministic Step 12 sample")
    args = parser.parse_args()
    if not args.small_sample:
        parser.error("only --small-sample is implemented in Step 12")
    payload = build_payload(sample_size=7)
    write_json(payload)
    write_lean(payload)
    write_nonidentity_chunk(payload)
    write_translation_chunk(payload)
    write_all_generated()
    print(
        "generated small sample: "
        f"{payload['summary']['pair_words_sampled']} pair words, "
        f"{payload['summary']['identity_linear_sampled']} identity, "
        f"{payload['summary']['nonidentity_linear_sampled']} nonidentity, "
        f"{payload['summary']['translation_sign_assignments_sampled']} translation sign assignments"
    )
    print(f"json: {JSON_PATH.relative_to(REPO_ROOT)}")
    print(f"lean: {LEAN_PATH.relative_to(REPO_ROOT)}")
    print(f"nonidentity chunk: {NONIDENTITY_CHUNK_PATH.relative_to(REPO_ROOT)}")
    print(f"translation chunk: {TRANSLATION_CHUNK_PATH.relative_to(REPO_ROOT)}")
    print(f"all generated: {ALL_GENERATED_PATH.relative_to(REPO_ROOT)}")


if __name__ == "__main__":
    main()
