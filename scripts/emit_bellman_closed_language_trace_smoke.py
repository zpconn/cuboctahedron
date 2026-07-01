#!/usr/bin/env python3
"""Emit a tiny generated-style Bellman closed-language trace smoke.

This is diagnostic generated evidence for the current top-pairing Bellman
language surface.  It deliberately emits constructor-chain proofs over a
literal contribution-order label list, not rank/unrank reductions.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import json
from pathlib import Path
from typing import Any


DEFAULT_FACES = [
    "xm",
    "ym",
    "yp",
    "zm",
    "zp",
    "tmmm",
    "tpmm",
    "tppm",
    "tpmp",
    "tmpm",
    "tppp",
    "tmpp",
    "tmmp",
    "xp",
]

SQUARE_FACES = {"xp", "xm", "yp", "ym", "zp", "zm"}

ALLOWED_FACES_AT_STEP = {
    0: ["xm"],
    1: ["ym"],
    2: ["tmpm", "yp", "zm"],
    3: ["tmmm", "tmpp", "tppm", "yp", "zm", "zp"],
    4: ["tmmp", "tmpm", "tpmm", "tppp", "yp", "zm", "zp"],
    5: ["tmmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    6: ["tmmm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    7: ["tmmp", "tmpm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    8: ["tmmm", "tmmp", "tmpp", "tpmm", "tpmp", "tppp", "yp", "zm", "zp"],
    9: ["tmmm", "tmpm", "tmpp", "tpmp", "tppm", "yp", "zm", "zp"],
    10: ["tmmp", "tmpm", "tppp", "yp", "zm"],
    11: ["tmmm", "tmpp", "yp", "zm", "zp"],
    12: ["tmmp", "yp", "zp"],
    13: ["xp"],
}

ALLOWED_SQUARE_FACES_AT_GAP = {
    0: ["xm", "ym", "yp", "zm", "zp"],
    1: ["zm", "zp"],
    2: ["zm", "zp"],
    3: ["zm", "zp"],
    4: ["zm", "zp"],
    5: ["zm", "zp"],
    6: ["yp", "zm", "zp"],
    7: ["zm", "zp"],
    8: ["xp", "yp", "zm", "zp"],
}

VALID_FACES = set(DEFAULT_FACES)

NORMALS = {
    "xp": (Fraction(1), Fraction(0), Fraction(0)),
    "xm": (Fraction(-1), Fraction(0), Fraction(0)),
    "yp": (Fraction(0), Fraction(1), Fraction(0)),
    "ym": (Fraction(0), Fraction(-1), Fraction(0)),
    "zp": (Fraction(0), Fraction(0), Fraction(1)),
    "zm": (Fraction(0), Fraction(0), Fraction(-1)),
    "tmmm": (Fraction(-1), Fraction(-1), Fraction(-1)),
    "tmmp": (Fraction(-1), Fraction(-1), Fraction(1)),
    "tmpm": (Fraction(-1), Fraction(1), Fraction(-1)),
    "tmpp": (Fraction(-1), Fraction(1), Fraction(1)),
    "tpmm": (Fraction(1), Fraction(-1), Fraction(-1)),
    "tpmp": (Fraction(1), Fraction(-1), Fraction(1)),
    "tppm": (Fraction(1), Fraction(1), Fraction(-1)),
    "tppp": (Fraction(1), Fraction(1), Fraction(1)),
}

TOP_PAIRING_AXIS = (Fraction(-1), Fraction(-1), Fraction(-3))
IDENTITY_MAT = (
    (Fraction(1), Fraction(0), Fraction(0)),
    (Fraction(0), Fraction(1), Fraction(0)),
    (Fraction(0), Fraction(0), Fraction(1)),
)


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def mat_name(index: int) -> str:
    return f"m{index:02d}"


def rat_name(index: int) -> str:
    return f"v{index:02d}"


def lean_rat(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    if value.numerator < 0:
        return f"({value.numerator}/{value.denominator})"
    return f"({value.numerator}/{value.denominator})"


def lean_mat3(mat: tuple[tuple[Fraction, Fraction, Fraction], ...]) -> str:
    return (
        "{ "
        f"m00 := {lean_rat(mat[0][0])}, "
        f"m01 := {lean_rat(mat[0][1])}, "
        f"m02 := {lean_rat(mat[0][2])}, "
        f"m10 := {lean_rat(mat[1][0])}, "
        f"m11 := {lean_rat(mat[1][1])}, "
        f"m12 := {lean_rat(mat[1][2])}, "
        f"m20 := {lean_rat(mat[2][0])}, "
        f"m21 := {lean_rat(mat[2][1])}, "
        f"m22 := {lean_rat(mat[2][2])} "
        "}"
    )


def vec_dot(a: tuple[Fraction, Fraction, Fraction], b: tuple[Fraction, Fraction, Fraction]) -> Fraction:
    return sum((x * y for x, y in zip(a, b)), Fraction(0))


def mat_vec(
    mat: tuple[tuple[Fraction, Fraction, Fraction], ...],
    vec: tuple[Fraction, Fraction, Fraction],
) -> tuple[Fraction, Fraction, Fraction]:
    return tuple(vec_dot(row, vec) for row in mat)  # type: ignore[return-value]


def mat_mul(
    left: tuple[tuple[Fraction, Fraction, Fraction], ...],
    right: tuple[tuple[Fraction, Fraction, Fraction], ...],
) -> tuple[tuple[Fraction, Fraction, Fraction], ...]:
    cols = tuple(tuple(right[row][col] for row in range(3)) for col in range(3))
    return tuple(tuple(vec_dot(row, col) for col in cols) for row in left)


def reflection_matrix(face: str) -> tuple[tuple[Fraction, Fraction, Fraction], ...]:
    normal = NORMALS[face]
    norm_sq = vec_dot(normal, normal)
    rows: list[tuple[Fraction, Fraction, Fraction]] = []
    for i in range(3):
        row: list[Fraction] = []
        for j in range(3):
            entry = Fraction(1 if i == j else 0) - Fraction(2) * normal[i] * normal[j] / norm_sq
            row.append(entry)
        rows.append(tuple(row))  # type: ignore[arg-type]
    return tuple(rows)


def local_axis_data(
    faces: list[str],
) -> tuple[list[tuple[tuple[Fraction, Fraction, Fraction], ...]], list[Fraction]]:
    current = IDENTITY_MAT
    prefix_mats: list[tuple[tuple[Fraction, Fraction, Fraction], ...]] = []
    dot_values: list[Fraction] = []
    for face in faces:
        dot_values.append(vec_dot(mat_vec(current, NORMALS[face]), TOP_PAIRING_AXIS))
        current = mat_mul(current, reflection_matrix(face))
        prefix_mats.append(current)
    return prefix_mats, dot_values


def label_key_face(label: Any) -> str:
    if not isinstance(label, dict):
        raise ValueError(f"label entry is not an object: {label!r}")
    key = label.get("key")
    if not isinstance(key, str):
        raise ValueError(f"label entry has no string key: {label!r}")
    for part in key.split("|"):
        if part.startswith("face="):
            face = part.removeprefix("face=")
            if face not in VALID_FACES:
                raise ValueError(f"unknown face {face!r} in label key {key!r}")
            return face
    raise ValueError(f"label key does not contain a face component: {key!r}")


def load_faces_from_graph(path: Path, path_object_index: int) -> tuple[list[str], dict[str, Any]]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    graph = payload.get("graph")
    if not isinstance(graph, dict):
        raise ValueError(f"{path} does not contain a graph object")
    labels = graph.get("labels")
    if not isinstance(labels, list):
        raise ValueError(f"{path} graph does not contain a labels list")
    path_objects = graph.get("path_objects")
    if not isinstance(path_objects, list):
        raise ValueError(f"{path} graph does not contain a path_objects list")
    if path_object_index < 0 or path_object_index >= len(path_objects):
        raise ValueError(
            f"path object index {path_object_index} is outside "
            f"0..{len(path_objects) - 1}"
        )
    path_object = path_objects[path_object_index]
    if not isinstance(path_object, dict):
        raise ValueError(f"path object is not an object: {path_object!r}")
    label_indices = path_object.get("label_indices")
    if not isinstance(label_indices, list):
        raise ValueError("path object does not contain a label_indices list")
    faces: list[str] = []
    for raw_index in label_indices:
        index = int(raw_index)
        if index < 0 or index >= len(labels):
            raise ValueError(f"label index {index} is outside 0..{len(labels) - 1}")
        faces.append(label_key_face(labels[index]))
    source = {
        "graph_json": str(path),
        "path_object_index": path_object_index,
        "rank": path_object.get("rank"),
        "label_indices": label_indices,
        "edge_indices": path_object.get("edge_indices"),
        "final": path_object.get("final"),
        "margin_scaled": path_object.get("margin_scaled"),
    }
    return faces, source


def validate_faces(faces: list[str]) -> None:
    if len(faces) != 14:
        raise ValueError(f"expected 14 contribution labels, got {len(faces)}")
    for step, face in enumerate(faces):
        allowed = ALLOWED_FACES_AT_STEP.get(step, [])
        if face not in allowed:
            raise ValueError(
                f"face {face!r} is not allowed at step {step}; allowed={allowed!r}"
            )
    gap = 0
    for face in faces:
        if face in SQUARE_FACES:
            allowed = ALLOWED_SQUARE_FACES_AT_GAP.get(gap, [])
            if face not in allowed:
                raise ValueError(
                    f"square face {face!r} is not allowed at gap {gap}; "
                    f"allowed={allowed!r}"
                )
        else:
            gap += 1


def emit_schedule_trace(name: str, faces: list[str]) -> list[str]:
    lines = [
        f"private theorem {name}ScheduleTrace :",
        f"    TopPairingStepScheduleFrom 0 {name}ContributionLabels := by",
        f"  unfold {name}ContributionLabels",
    ]
    for _idx, _face in enumerate(faces):
        lines.extend(
            [
                "  apply topPairingStepScheduleFrom_cons",
                "  · simp [topPairingAllowedFacesAtStep]",
            ]
        )
    lines.append("  exact topPairingStepScheduleFrom_nil")
    return lines


def emit_square_gap_trace(name: str, faces: list[str]) -> list[str]:
    lines = [
        f"private theorem {name}SquareGapTrace :",
        f"    TopPairingSquareGapFrom 0 {name}ContributionLabels := by",
        f"  unfold {name}ContributionLabels",
    ]
    for face in faces:
        if face in SQUARE_FACES:
            lines.extend(
                [
                    "  apply topPairingSquareGapFrom_cons_square",
                    "  · rfl",
                    "  · simp [topPairingAllowedSquareFacesAtGap]",
                ]
            )
        else:
            lines.extend(
                [
                    "  apply topPairingSquareGapFrom_cons_tri",
                    "  · rfl",
                ]
            )
    lines.append("  exact topPairingSquareGapFrom_nil")
    return lines


def emit_local_axis_signature(name: str, faces: list[str]) -> list[str]:
    lines = [
        f"private theorem {name}LocalAxisTraceOfGeneratedStates",
        "    {"
        + " ".join(mat_name(index) for index in range(1, 15))
        + " : Mat3 Rat}",
        "    {"
        + " ".join(rat_name(index) for index in range(14))
        + " : Rat}",
    ]
    for index, face in enumerate(faces):
        current = "(matId : Mat3 Rat)" if index == 0 else mat_name(index)
        nxt = mat_name(index + 1)
        value = rat_name(index)
        lines.extend(
            [
                f"    (hdot{index:02d} :",
                f"      dot (matVec {current} (normalQ {face_ctor(face)}))",
                f"        topPairingLocalAxis = {value})",
                f"    (hpos{index:02d} : 0 < {value})",
                f"    (hnext{index:02d} :",
                f"      {nxt} = matMul {current} (reflM (normalQ {face_ctor(face)})))",
            ]
        )
    lines.extend(
        [
            f"    : TopPairingLocalAxisFrom (matId : Mat3 Rat) {name}ContributionLabels := by",
            f"  unfold {name}ContributionLabels",
        ]
    )
    for index, _face in enumerate(faces):
        lines.extend(
            [
                "  apply topPairingLocalAxisFrom_cons_next",
                f"  · exact topPairingLocalAxisAllows_of_dot_eq hdot{index:02d} hpos{index:02d}",
                f"  · exact hnext{index:02d}",
            ]
        )
    lines.append("  exact topPairingLocalAxisFrom_nil")
    return lines


def emit_concrete_local_axis(name: str, faces: list[str]) -> list[str]:
    prefix_mats, dot_values = local_axis_data(faces)
    lines: list[str] = []
    for index, mat in enumerate(prefix_mats, start=1):
        lines.extend(
            [
                f"private def {name}M{index:02d} : Mat3 Rat :=",
                f"  {lean_mat3(mat)}",
                "",
            ]
        )
    for index, value in enumerate(dot_values):
        lines.extend(
            [
                f"private def {name}V{index:02d} : Rat :=",
                f"  {lean_rat(value)}",
                "",
            ]
        )
    for index, face in enumerate(faces):
        current = "(matId : Mat3 Rat)" if index == 0 else f"{name}M{index:02d}"
        nxt = f"{name}M{index + 1:02d}"
        value = f"{name}V{index:02d}"
        lines.extend(
            [
                f"private theorem {name}Hdot{index:02d} :",
                f"    dot (matVec {current} (normalQ {face_ctor(face)}))",
                f"      topPairingLocalAxis = {value} := by",
                f"  norm_num [{value}, {current if index != 0 else 'matId'}, "
                "topPairingLocalAxis, normalQ, matVec, dot]",
                "",
                f"private theorem {name}Hpos{index:02d} :",
                f"    0 < {value} := by",
                f"  norm_num [{value}]",
                "",
                f"private theorem {name}Hnext{index:02d} :",
                f"    {nxt} = matMul {current} (reflM (normalQ {face_ctor(face)})) := by",
                f"  norm_num [{nxt}, {current if index != 0 else 'matId'}, normalQ, "
                "matId, matMul, reflM, dot, matSub, scalarMat, outer]",
                "",
            ]
        )
    args: list[str] = []
    for index in range(len(faces)):
        args.extend(
            [
                f"{name}Hdot{index:02d}",
                f"{name}Hpos{index:02d}",
                f"{name}Hnext{index:02d}",
            ]
        )
    lines.extend(
        [
            f"private theorem {name}LocalAxisTraceConcrete :",
            f"    TopPairingLocalAxisFrom (matId : Mat3 Rat) {name}ContributionLabels :=",
            f"  {name}LocalAxisTraceOfGeneratedStates",
        ]
    )
    for arg in args:
        lines.append(f"    {arg}")
    lines.append("")
    return lines


def emit_module(
    namespace: str,
    name: str,
    faces: list[str],
    *,
    concrete_local_axis: bool,
) -> list[str]:
    labels = ", ".join(face_ctor(face) for face in faces)
    lines = [
        "import Cuboctahedron.Search.BellmanTopPairingLanguage",
        "",
        "/-!",
        "Generated-style closed-language trace smoke for the top-pairing",
        "Bellman route.  This file is emitted by",
        "`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids",
        "rank/unrank reductions.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "",
        f"private def {name}ContributionLabels : List Face :=",
        f"  [{labels}]",
        "",
        f"private theorem {name}ContributionLabels_length :",
        f"    {name}ContributionLabels.length = 14 := by",
        "  rfl",
        "",
    ]
    lines.extend(emit_schedule_trace(name, faces))
    lines.extend(
        [
            "",
            f"private theorem {name}ScheduleLabels :",
            f"    TopPairingStepScheduleLabels {name}ContributionLabels :=",
            "  topPairingStepScheduleLabels_ofFrom",
            f"    {name}ContributionLabels_length {name}ScheduleTrace",
            "",
        ]
    )
    lines.extend(emit_square_gap_trace(name, faces))
    lines.extend(
        [
            "",
            f"private theorem {name}SquareGapLabels :",
            f"    TopPairingSquareGapLabels {name}ContributionLabels :=",
            f"  topPairingSquareGapLabels_ofFrom {name}SquareGapTrace",
            "",
        ]
    )
    lines.extend(emit_local_axis_signature(name, faces))
    if concrete_local_axis:
        lines.extend([""])
        lines.extend(emit_concrete_local_axis(name, faces))
    lines.extend(
        [
            "",
            f"theorem {name}ClosedLanguageOfPositiveTemplateTrace",
            "    {rank : Fin numPairWords} {badFace : Face}",
            "    {template : Step14 -> Face}",
            "    (template_matches :",
            "      PairWordMatchesSeq (unrankPairWord rank) template)",
            "    (template_start :",
            "      template 0 = Face.xp)",
            "    (template_positive :",
            "      forall i : Step14, positiveSignOfFace (template i) = true)",
            "    (template_labels :",
            "      faceLabelsInContributionOrder (fun f => f) template =",
            f"        {name}ContributionLabels)",
            "    (cancellation :",
            "      TopPairingLanguageAtRank rank)",
            "    (localAxisTrace :",
            f"      TopPairingLocalAxisFrom (matId : Mat3 Rat) {name}ContributionLabels)",
            "    (canonicalBadFace :",
            "      TopPairingCanonicalBadFaceCompatible badFace) :",
            "    TopPairingClosedLanguageAtRank rank badFace :=",
            "  TopPairingClosedLanguageAtRank.ofComponents",
            "    cancellation",
            "    (by",
            "      rw [faceLabelsInContributionOrder_eq_of_positive_template",
            "        template_matches template_start template_positive template_labels]",
            f"      exact {name}ScheduleLabels)",
            "    (by",
            "      rw [faceLabelsInContributionOrder_eq_of_positive_template",
            "        template_matches template_start template_positive template_labels]",
            f"      exact {name}SquareGapLabels)",
            "    (by",
            "      rw [faceLabelsInContributionOrder_eq_of_positive_template",
            "        template_matches template_start template_positive template_labels]",
            f"      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)",
            "    canonicalBadFace",
            "",
            f"theorem {name}ClosedLanguageOfLabelTrace",
            "    {rank : Fin numPairWords} {badFace : Face}",
            "    (labels_eq :",
            "      faceLabelsInContributionOrder (fun f => f)",
            "        (canonicalSeqOfPairWord (unrankPairWord rank)) =",
            f"        {name}ContributionLabels)",
            "    (cancellation :",
            "      TopPairingLanguageAtRank rank)",
            "    (localAxisTrace :",
            f"      TopPairingLocalAxisFrom (matId : Mat3 Rat) {name}ContributionLabels)",
            "    (canonicalBadFace :",
            "      TopPairingCanonicalBadFaceCompatible badFace) :",
            "    TopPairingClosedLanguageAtRank rank badFace :=",
            "  TopPairingClosedLanguageAtRank.ofComponents",
            "    cancellation",
            "    (by",
            "      rw [labels_eq]",
            f"      exact {name}ScheduleLabels)",
            "    (by",
            "      rw [labels_eq]",
            f"      exact {name}SquareGapLabels)",
            "    (by",
            "      rw [labels_eq]",
            f"      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)",
            "    canonicalBadFace",
            "",
        ]
    )
    if concrete_local_axis:
        lines.extend(
            [
                f"theorem {name}ClosedLanguageOfPositiveTemplateConcreteLocalAxis",
                "    {rank : Fin numPairWords} {badFace : Face}",
                "    {template : Step14 -> Face}",
                "    (template_matches :",
                "      PairWordMatchesSeq (unrankPairWord rank) template)",
                "    (template_start :",
                "      template 0 = Face.xp)",
                "    (template_positive :",
                "      forall i : Step14, positiveSignOfFace (template i) = true)",
                "    (template_labels :",
                "      faceLabelsInContributionOrder (fun f => f) template =",
                f"        {name}ContributionLabels)",
                "    (cancellation :",
                "      TopPairingLanguageAtRank rank)",
                "    (canonicalBadFace :",
                "      TopPairingCanonicalBadFaceCompatible badFace) :",
                "    TopPairingClosedLanguageAtRank rank badFace :=",
                f"  {name}ClosedLanguageOfPositiveTemplateTrace",
                "    template_matches",
                "    template_start",
                "    template_positive",
                "    template_labels",
                "    cancellation",
                f"    {name}LocalAxisTraceConcrete",
                "    canonicalBadFace",
                "",
                f"theorem {name}ClosedLanguageOfLabelTraceConcreteLocalAxis",
                "    {rank : Fin numPairWords} {badFace : Face}",
                "    (labels_eq :",
                "      faceLabelsInContributionOrder (fun f => f)",
                "        (canonicalSeqOfPairWord (unrankPairWord rank)) =",
                f"        {name}ContributionLabels)",
                "    (cancellation :",
                "      TopPairingLanguageAtRank rank)",
                "    (canonicalBadFace :",
                "      TopPairingCanonicalBadFaceCompatible badFace) :",
                "    TopPairingClosedLanguageAtRank rank badFace :=",
                f"  {name}ClosedLanguageOfLabelTrace",
                "    labels_eq",
                "    cancellation",
                f"    {name}LocalAxisTraceConcrete",
                "    canonicalBadFace",
                "",
            ]
        )
    lines.extend(
        [
            f"theorem {name}GeneratedTraceSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return lines


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--namespace",
        default=(
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingClosedLanguageGeneratedTraceSmoke"
        ),
    )
    parser.add_argument("--name", default="generated")
    parser.add_argument("--report", type=Path)
    parser.add_argument(
        "--graph-json",
        type=Path,
        help="Optional cached Bellman graph JSON supplying a sampled path object.",
    )
    parser.add_argument(
        "--path-object-index",
        type=int,
        default=0,
        help="Path object index to read when --graph-json is provided.",
    )
    parser.add_argument(
        "--concrete-local-axis",
        action="store_true",
        help="Emit literal prefix matrices/dot values and a concrete local-axis trace theorem.",
    )
    args = parser.parse_args()

    source: dict[str, Any] = {"kind": "built-in-default"}
    faces = list(DEFAULT_FACES)
    if args.graph_json is not None:
        faces, source = load_faces_from_graph(args.graph_json, args.path_object_index)
        source["kind"] = "bellman-graph-path-object"
    validate_faces(faces)

    lines = emit_module(
        args.namespace,
        args.name,
        faces,
        concrete_local_axis=args.concrete_local_axis,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("\n".join(lines))

    if args.report is not None:
        payload = {
            "mode": "bellman-closed-language-trace-smoke",
            "output": str(args.output),
            "namespace": args.namespace,
            "name": args.name,
            "source": source,
            "faces": faces,
            "face_count": len(faces),
            "concrete_local_axis": args.concrete_local_axis,
            "proof_strategy": (
                "literal schedule/square-gap traces plus explicit local-axis "
                "state/dot facts and a positive-template label bridge"
            ),
        }
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(payload, indent=2) + "\n")


if __name__ == "__main__":
    main()
