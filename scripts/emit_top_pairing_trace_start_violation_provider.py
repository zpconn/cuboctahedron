#!/usr/bin/env python3
"""Emit a semantic start-violation provider for one accepted trace id.

The generated Lean module proves a trace-level
`TraceStartViolationMarginCert` and exports a semantic bridge theorem:

  topPairingRankFaceLabels rank = acceptedTraceOfId AcceptedTraceId.tNNN ->
    ObjectStartViolationMarginCert rank (scaledMargin rank)

It intentionally does not expose a sampled rank object, sampled path object, or
rank-indexed public certificate.  The exact arithmetic used to construct the
local payload is untrusted; Lean checks the generated facts.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from audit_top_pairing_trace_provider_generation import (  # noqa: E402
    ACCEPTED_GATE,
    classify_trace,
    parse_accepted_traces,
)


REPO_ROOT = Path(__file__).resolve().parents[1]
BASE_DIR = (
    REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "NonIdentity"
    / "Residual"
)
BASE_MODULE = "Cuboctahedron.Generated.NonIdentity.Residual"
DEFAULT_REPORT = (
    REPO_ROOT
    / "scripts"
    / "generated"
    / "top_pairing_trace_start_violation_provider_emit.json"
)


def trace_num(trace_id: str) -> str:
    if not re.fullmatch(r"t\d{3}", trace_id):
        raise ValueError(f"expected trace id like t000, got {trace_id!r}")
    return trace_id[1:]


def camel_trace(trace_id: str) -> str:
    return f"Trace{trace_num(trace_id)}"


def lower_trace(trace_id: str) -> str:
    return f"trace{trace_num(trace_id)}"


def module_stem(trace_id: str) -> str:
    return f"BellmanTopPairing{camel_trace(trace_id)}StartViolationProvider"


def module_name(trace_id: str) -> str:
    return f"{BASE_MODULE}.{module_stem(trace_id)}"


def lean_path(trace_id: str) -> Path:
    return BASE_DIR / f"{module_stem(trace_id)}.lean"


def lean_face_list(faces: list[str]) -> str:
    return "[" + ", ".join(exact.lean_face(face) for face in faces) + "]"


def append_seq_def(lines: list[str], prefix: str, seq: list[str]) -> None:
    lines.append(f"private def {prefix}Seq : Step14 -> Face")
    for index, face in enumerate(seq[:-1]):
        lines.append(f"  | ⟨{index}, _⟩ => {exact.lean_face(face)}")
    lines.append(f"  | _ => {exact.lean_face(seq[-1])}")
    lines.append("")


def append_vector_def(lines: list[str], vector_name: str, seq: list[str]) -> None:
    before = len(lines)
    lines.append(f"private def {vector_name} : Vector Face 14 :=")
    lines.append(exact.lean_face_vector_literal(seq))
    lines.append("")
    exact.append_face_vector_get_theorems(lines, vector_name, seq)
    for index in range(before, len(lines)):
        if lines[index].startswith(f"theorem {vector_name}_"):
            lines[index] = "private " + lines[index]
        elif lines[index].startswith(f"@[simp] theorem {vector_name}_"):
            lines[index] = lines[index].replace("@[simp] theorem", "@[simp] private theorem", 1)


def append_word_def(lines: list[str], word_name: str, word: list[str]) -> None:
    before = len(lines)
    lines.append(f"private def {word_name} : PairWord :=")
    lines.append(exact.lean_pair_word_literal(word))
    lines.append("")
    exact.append_pair_word_get_theorems(lines, word_name, word)
    for index in range(before, len(lines)):
        if lines[index].startswith(f"theorem {word_name}_"):
            lines[index] = "private " + lines[index]
        elif lines[index].startswith(f"@[simp] theorem {word_name}_"):
            lines[index] = lines[index].replace("@[simp] theorem", "@[simp] private theorem", 1)


def word_get_names(word_name: str) -> list[str]:
    return [f"{word_name}_get{index:02d}_num" for index in range(13)]


def vector_get_names(vector_name: str) -> list[str]:
    return [f"{vector_name}_get{index:02d}_num" for index in range(14)]


def append_prefix_linear_theorems(
    lines: list[str], prefix: str, word_name: str, word: list[str]
) -> list[str]:
    names: list[str] = []
    word_simp = ", ".join(word_get_names(word_name))
    for index, matrix in enumerate(exact.prefix_matrices(word)):
        theorem = f"{prefix}PrefixLinear{index:02d}"
        names.append(theorem)
        lines.extend([
            f"private theorem {theorem} :",
            f"    pairPrefixLinearNat {word_name} {index} =",
            f"      {exact.lean_mat3(matrix)} := by",
            f"  norm_num [pairPrefixLinearNat, {word_simp},",
            "    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,",
            "    matSub, scalarMat, outer]",
            "",
        ])
    return names


def append_axis_forces_at_theorems(
    lines: list[str],
    prefix: str,
    word_name: str,
    seq_name: str,
    axis_name: str,
    prefix_linear_names: list[str],
) -> list[str]:
    names: list[str] = []
    for index in range(13):
        theorem = f"{prefix}AxisForcesAt{index:02d}"
        names.append(theorem)
        lines.extend([
            f"private theorem {theorem} (f : Face)",
            f"    (hf : pairOfFace f = {word_name}.get ({index} : WordIndex))",
            "    (hpos : 0 <",
            f"      dot (matVec (pairPrefixLinearNat {word_name} {index})",
            f"        (normalQ f)) {axis_name}) :",
            f"    normalQ ({seq_name} (afterStart ({index} : WordIndex))) =",
            "      normalQ f := by",
            f"  rw [{prefix_linear_names[index]}] at hpos",
            "  cases f <;>",
            f"    simp [{axis_name}, {seq_name}, {word_name}_get{index:02d}_num,",
            "      afterStart, pairOfFace, normalQ, dot, matVec]",
            "      at hf hpos ⊢ <;>",
            "    first | contradiction | linarith | rfl",
            "",
        ])
    return names


def append_path_prefix_aff_theorems(
    lines: list[str], prefix: str, vector_name: str, seq: list[str]
) -> list[str]:
    theorem_names: list[str] = []
    prefixes = exact.path_prefix_affs(seq)
    for index, affine in enumerate(prefixes):
        theorem = f"{prefix}Cert_pathPrefix{index:02d}"
        theorem_names.append(theorem)
        if index == 0:
            lines.extend([
                f"private theorem {theorem} :",
                f"    pathPrefixAffNat (faceVectorSeq {vector_name}) {index} = {exact.lean_aff(affine)} := by",
                f"  simp [{vector_name}, faceVectorSeq, pathPrefixAffNat, affId, matId]",
                "",
            ])
        else:
            lines.extend([
                f"private theorem {theorem} :",
                f"    pathPrefixAffNat (faceVectorSeq {vector_name}) {index} = {exact.lean_aff(affine)} := by",
                f"  simp [pathPrefixAffNat, {theorem_names[index - 1]}, faceVectorSeq,",
                f"    {vector_name}_get{index:02d}_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,",
                "    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,",
                "    matVec, vecAdd, scalarMul]",
                "  norm_num",
                "",
            ])
    return theorem_names


def cert_payload_from_result(result: dict[str, Any], prefix: str) -> dict[str, Any]:
    if result["status"] != "provider_candidate":
        raise ValueError(f"trace {result['trace_id']} is not a provider candidate")
    return {
        "name": f"{prefix}Cert",
        "word": result["word"],
        "axis": result["axis"],
        "kernel_cross_factor": result["kernel_cross_factor"],
        "forced_seq": result["forced_seq"],
        "p0": result["p0"],
        "lambda": result["lambda"],
        "solve_left_inverse": result["solve_left_inverse"],
        "failure": result["failure"],
    }


def build_module(trace_id: str, result: dict[str, Any]) -> str:
    prefix = lower_trace(trace_id)
    accepted = f"AcceptedTraceId.{trace_id}"
    seq = result["forced_seq"]
    labels = result["labels"]
    word = result["word"]
    cert = cert_payload_from_result(result, prefix)
    vector_name = f"{prefix}Vector"
    word_name = f"{prefix}Word"
    axis_name = f"{prefix}Axis"
    kernel_name = f"{prefix}Kernel"
    cert_name = f"{prefix}Cert"

    axis = tuple(Fraction(x) for x in cert["axis"])  # type: ignore[assignment]
    kernel = tuple(
        tuple(Fraction(x) for x in row)
        for row in cert["kernel_cross_factor"]
    )
    p0 = tuple(Fraction(x) for x in cert["p0"])  # type: ignore[assignment]
    lam = Fraction(cert["lambda"])
    solve = tuple(
        tuple(Fraction(x) for x in row)
        for row in cert["solve_left_inverse"]
    )
    total_linear = exact.total_linear(word)
    total_aff = exact.total_aff(seq)
    final_dot = exact.final_axis_dot(word, axis)

    lines: list[str] = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge",
        "",
        "/-!",
        f"Generated trace-level start-violation provider for graph-accepted trace `{trace_id}`.",
        "",
        "This module is semantic-provider evidence: it exports a theorem from",
        "accepted trace-label equality to `ObjectStartViolationMarginCert` and does",
        "not introduce sampled rank/path objects.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        f"namespace {module_name(trace_id)}",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge",
        "",
    ]

    append_seq_def(lines, prefix, seq)
    append_vector_def(lines, vector_name, seq)
    append_word_def(lines, word_name, word)

    lines.extend([
        f"private theorem {prefix}Vector_seq_eq :",
        f"    faceVectorSeq {vector_name} = {prefix}Seq := by",
        "  funext i",
        "  fin_cases i <;> rfl",
        "",
        f"private theorem {prefix}_contribution_labels :",
        f"    faceLabelsInContributionOrder (fun f : Face => f) {prefix}Seq =",
        f"      acceptedTraceOfId {accepted} := by",
        "  decide",
        "",
        f"private theorem {word_name}_eq_pairWordOfSeq :",
        f"    {word_name} = pairWordOfSeq {prefix}Seq := by",
        "  decide",
        "",
        f"private def {axis_name} : Vec3 Rat :=",
        f"  {exact.lean_vec(axis)}",
        "",
        f"private def {kernel_name} : KernelLineWitness :=",
        f"  {{ crossFactor := {exact.lean_mat3(kernel)} }}",
        "",
        f"private def {cert_name} : NonIdCert where",
        f"  word := {word_name}",
        f"  axis := {axis_name}",
        f"  kernel := {kernel_name}",
        f"  forcedSeq := {vector_name}",
        f"  p0 := {exact.lean_vec(p0)}",
        f"  lambda := {exact.lean_rat(lam)}",
        f"  solve := {{ leftInverse := {exact.lean_mat4(solve)} }}",
        "  failure := NonIdFailure.axisMissesStartInterior",
        "",
        f"private theorem {prefix}_word_eq :",
        f"    {cert_name}.word = pairWordOfSeq {prefix}Seq := by",
        f"  exact {word_name}_eq_pairWordOfSeq",
        "",
        f"private theorem {prefix}TotalLinear :",
        f"    totalLinearOfPairWord {word_name} = {exact.lean_mat3(total_linear)} := by",
        "  rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        "  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,",
        "    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "  norm_num",
        "",
        f"private theorem {prefix}_kernel_check :",
        f"    checkKernelLineWitness (totalLinearOfPairWord {cert_name}.word)",
        f"      {cert_name}.axis {cert_name}.kernel = true := by",
        f"  change checkKernelLineWitness (totalLinearOfPairWord {word_name})",
        f"      {axis_name} {kernel_name} = true",
        f"  rw [{prefix}TotalLinear]",
        "  norm_num [",
        f"    {axis_name}, {kernel_name}, checkKernelLineWitness,",
        "    checkVec3NonzeroQ, fixedPart, crossLeftMatrix, matSub, matId,",
        "    matMul, matVec]",
        "",
        f"private theorem {prefix}FinalAxisDot :",
        f"    finalAxisDotQ {word_name} {axis_name} = {exact.lean_rat(final_dot)} := by",
        f"  norm_num [{axis_name}, finalAxisDotQ, pairPrefixLinearNat,",
        f"    {', '.join(word_get_names(word_name))},",
        "    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,",
        "    matSub, scalarMat, outer, matVec]",
        "",
    ])

    prefix_linear_names = append_prefix_linear_theorems(lines, prefix, word_name, word)
    axis_at_names = append_axis_forces_at_theorems(
        lines, prefix, word_name, f"{prefix}Seq", axis_name, prefix_linear_names
    )

    lines.extend([
        f"private theorem {prefix}_axis_forces :",
        f"    AxisForcesForcedSeq {cert_name}.word {cert_name}.axis",
        f"      (faceVectorSeq {cert_name}.forcedSeq) := by",
        f"  change AxisForcesForcedSeq {word_name} {axis_name}",
        f"      (faceVectorSeq {vector_name})",
        f"  rw [{prefix}Vector_seq_eq]",
        "  constructor",
        f"  · unfold StartsXp {prefix}Seq",
        "    decide",
        "  constructor",
        f"  · rw [{word_name}_eq_pairWordOfSeq]",
        f"    exact pairWordOfSeq_matches {prefix}Seq",
        "  constructor",
        f"  · rw [{prefix}FinalAxisDot]",
        "    norm_num",
        "  · intro i f hf hpos",
        "    fin_cases i",
    ])
    for name in axis_at_names:
        lines.append(f"    · exact {name} f hf hpos")
    lines.append("")

    path_prefix_names = append_path_prefix_aff_theorems(lines, prefix, vector_name, seq)

    lines.extend([
        f"private theorem {prefix}Cert_totalAff :",
        f"    totalAff (faceVectorSeq {cert_name}.forcedSeq) = {exact.lean_aff(total_aff)} := by",
        "  rw [totalAff_eq_finalPath]",
        f"  change affCompose (pathPrefixAffNat (faceVectorSeq {vector_name}) 13)",
        f"      (faceReflectionQ (faceVectorSeq {vector_name} 0)) = {exact.lean_aff(total_aff)}",
        f"  rw [{path_prefix_names[13]}]",
        f"  simp [faceVectorSeq, {vector_name}_get00_num,",
        "    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,",
        "    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,",
        "    scalarMul]",
        "  norm_num",
        "",
        f"private theorem {prefix}Cert_axisSolveCheck :",
        "    checkAffineAxisSolveWitness",
        f"      (totalAff (faceVectorSeq {cert_name}.forcedSeq))",
        f"      {cert_name}.axis {cert_name}.p0 {cert_name}.lambda {cert_name}.solve = true := by",
        f"  rw [{prefix}Cert_totalAff]",
        f"  norm_num [{cert_name}, {axis_name}, checkAffineAxisSolveWitness, axisSolveMatrix,",
        "    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]",
        "",
        f"private theorem {prefix}_solve_check :",
        f"    checkAffineAxisSolveWitness (totalAff (faceVectorSeq {cert_name}.forcedSeq))",
        f"      {cert_name}.axis {cert_name}.p0 {cert_name}.lambda {cert_name}.solve = true := by",
        f"  exact {prefix}Cert_axisSolveCheck",
        "",
        f"private theorem {prefix}_badFace_ne_xp :",
        "    Face.ym ≠ Face.xp := by",
        "  decide",
        "",
        f"private theorem {prefix}_badFace_violation :",
        "    offsetR Face.ym <=",
        f"      dot (normalR Face.ym) (vecRatToReal {cert_name}.p0) := by",
        f"  norm_num [{cert_name}, offsetR, normalR, offsetQ, normalQ,",
        "    vecRatToReal, dot]",
        "",
        f"private def {prefix}StartViolationCert (margin : Int) :",
        f"    TraceStartViolationMarginCert {prefix}Seq margin where",
        f"  cert := {cert_name}",
        f"  word_eq := {prefix}_word_eq",
        f"  kernel_check := {prefix}_kernel_check",
        f"  solve_check := {prefix}_solve_check",
        f"  axis_forces := {prefix}_axis_forces",
        "  badFace := Face.ym",
        f"  badFace_ne_xp := {prefix}_badFace_ne_xp",
        f"  badFace_violation := {prefix}_badFace_violation",
        "",
        f"def objectStartViolationMarginCert_of_{prefix}",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (htrace :",
        "      topPairingRankFaceLabels rank =",
        f"        acceptedTraceOfId {accepted}) :",
        "    ObjectStartViolationMarginCert rank (scaledMargin rank) :=",
        "  objectStartViolationMarginCert_of_traceCert",
        f"    ({prefix}StartViolationCert (scaledMargin rank))",
        "    (by",
        f"      rw [{prefix}_contribution_labels]",
        "      exact htrace)",
        f"end {module_name(trace_id)}",
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--trace-id", required=True, help="accepted trace id, e.g. t000")
    parser.add_argument("--accepted-gate", type=Path, default=ACCEPTED_GATE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    traces = parse_accepted_traces(args.accepted_gate)
    if args.trace_id not in traces:
        raise SystemExit(f"unknown trace id {args.trace_id}")
    result = classify_trace(args.trace_id, traces[args.trace_id])
    if result["status"] != "provider_candidate":
        raise SystemExit(
            f"{args.trace_id} is not a provider candidate: "
            f"{result.get('reason', result['status'])}"
        )
    path = lean_path(args.trace_id)
    path.write_text(build_module(args.trace_id, result), encoding="utf-8")

    payload = {
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "trace_id": args.trace_id,
        "module": module_name(args.trace_id),
        "path": str(path),
        "status": result["status"],
        "failure": result["failure"],
        "public_theorem": f"objectStartViolationMarginCert_of_{lower_trace(args.trace_id)}",
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Top-Pairing Trace Start-Violation Provider Emit",
            "",
            f"- trace id: `{args.trace_id}`",
            f"- module: `{module_name(args.trace_id)}`",
            f"- path: `{path}`",
            f"- failure kind: `{result['failure']['kind']}`",
            f"- public theorem: `{payload['public_theorem']}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {path}")


if __name__ == "__main__":
    main()
