#!/usr/bin/env python3
"""Audit whether accepted traces can produce semantic Bellman providers.

This is diagnostic only.  It reuses exact arithmetic helper routines from the
archived certificate generator to answer a small question: for each of the 37
graph-accepted top-pairing traces, can we reconstruct the started forced
sequence and build the same kind of nonidentity axis/start-violation payload
used by the semantic trace028 provider?

The script does not emit Lean proof files, does not enumerate ranks, and is not
trusted as proof.  Any generated provider still has to be checked by Lean.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter
from fractions import Fraction
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402


REPO_ROOT = Path(__file__).resolve().parents[1]
ACCEPTED_GATE = (
    REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "NonIdentity"
    / "Residual"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
DEFAULT_JSON = (
    REPO_ROOT
    / "scripts"
    / "generated"
    / "top_pairing_trace_provider_generation_audit.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def parse_accepted_traces(path: Path) -> dict[str, list[str]]:
    text = path.read_text(encoding="utf-8")
    pattern = re.compile(
        r"def acceptedFaceTrace_(\d{3}) : List Face :=\s*\n\s*\[(.*?)\]",
        re.DOTALL,
    )
    traces: dict[str, list[str]] = {}
    for match in pattern.finditer(text):
        trace_id = f"t{match.group(1)}"
        faces = re.findall(r"Face\.([A-Za-z0-9_]+)", match.group(2))
        traces[trace_id] = faces
    return traces


def rat_json(value: Fraction) -> str:
    return str(value)


def vec_json(vec: exact.Vec) -> list[str]:
    return [rat_json(Fraction(value)) for value in vec]


def trace_labels_to_forced_seq(labels: list[str]) -> list[str]:
    if len(labels) != 14:
        raise ValueError(f"expected 14 contribution labels, got {len(labels)}")
    if labels[-1] != "xp":
        raise ValueError(f"expected contribution labels to end at xp, got {labels[-1]}")
    return [labels[-1], *labels[:-1]]


def classify_trace(trace_id: str, labels: list[str]) -> dict[str, Any]:
    try:
        seq = trace_labels_to_forced_seq(labels)
        word = [exact.pair_of_face(face) for face in seq[1:]]
        if not exact.valid_pair_word(word):
            return {
                "trace_id": trace_id,
                "status": "unsupported",
                "reason": "invalid_pair_word",
                "labels": labels,
                "forced_seq": seq,
                "word": word,
            }

        matrix = exact.total_linear(word)
        if exact.is_identity(matrix):
            return {
                "trace_id": trace_id,
                "status": "unsupported",
                "reason": "identity_linear_part",
                "labels": labels,
                "forced_seq": seq,
                "word": word,
            }

        axis = exact.oriented_fixed_axis(word, matrix)
        if exact.final_axis_dot(word, axis) <= 0:
            return {
                "trace_id": trace_id,
                "status": "unsupported",
                "reason": "axis_orientation_failed",
                "labels": labels,
                "forced_seq": seq,
                "word": word,
                "axis": vec_json(axis),
            }

        forced_seq = exact.forced_sequence_from_axis(word, axis)
        if forced_seq != seq:
            return {
                "trace_id": trace_id,
                "status": "unsupported",
                "reason": "forced_sequence_mismatch",
                "labels": labels,
                "forced_seq": seq,
                "axis_forced_seq": forced_seq,
                "word": word,
                "axis": vec_json(axis),
            }

        affine = exact.total_aff(forced_seq)
        p0, lam, solve_left_inverse = exact.solve_axis_intersection(affine, axis)
        if not exact.xp_start_interior(p0):
            failure: dict[str, Any] = {"kind": "axisMissesStartInterior"}
        else:
            w = exact.candidate_w(forced_seq, p0)
            bad_step = exact.first_bad_candidate_ordering(forced_seq, p0, w)
            if bad_step is not None:
                failure = {"kind": "badFirstHit", "step": bad_step}
            else:
                bad_interior = exact.first_bad_candidate_interior(forced_seq, p0, w)
                if bad_interior is None:
                    return {
                        "trace_id": trace_id,
                        "status": "unsupported",
                        "reason": "no_supported_candidate_failure",
                        "labels": labels,
                        "forced_seq": seq,
                        "word": word,
                        "axis": vec_json(axis),
                        "p0": vec_json(p0),
                        "lambda": rat_json(lam),
                    }
                impact, bad_face = bad_interior
                failure = {
                    "kind": "badHitInterior",
                    "impact": impact,
                    "badFace": bad_face,
                }

        kernel = exact.kernel_line_cross_factor(matrix, axis)
        return {
            "trace_id": trace_id,
            "status": "provider_candidate",
            "labels": labels,
            "forced_seq": seq,
            "word": word,
            "axis": vec_json(axis),
            "kernel_cross_factor": [
                [rat_json(Fraction(entry)) for entry in row] for row in kernel
            ],
            "p0": vec_json(p0),
            "lambda": rat_json(lam),
            "solve_left_inverse": [
                [rat_json(Fraction(entry)) for entry in row]
                for row in solve_left_inverse
            ],
            "failure": failure,
        }
    except Exception as exc:  # noqa: BLE001 - diagnostic script records exact reason.
        return {
            "trace_id": trace_id,
            "status": "error",
            "reason": type(exc).__name__,
            "message": str(exc),
            "labels": labels,
        }


def write_markdown(path: Path, payload: dict[str, Any]) -> None:
    by_status = payload["summary"]["by_status"]
    by_reason = payload["summary"]["by_reason"]
    by_failure = payload["summary"]["by_failure"]
    lines = [
        "# Top-Pairing Trace Provider Generation Audit",
        "",
        "Diagnostic only; not trusted as proof.",
        "",
        "## Summary",
        "",
        f"- accepted traces: `{payload['summary']['accepted_traces']}`",
        f"- provider candidates: `{payload['summary']['provider_candidates']}`",
        "",
        "### Status Counts",
        "",
    ]
    for key, count in sorted(by_status.items()):
        lines.append(f"- `{key}`: `{count}`")
    lines.extend(["", "### Unsupported/Error Reasons", ""])
    if by_reason:
        for key, count in sorted(by_reason.items()):
            lines.append(f"- `{key}`: `{count}`")
    else:
        lines.append("- none")
    lines.extend(["", "### Provider Failure Kinds", ""])
    if by_failure:
        for key, count in sorted(by_failure.items()):
            lines.append(f"- `{key}`: `{count}`")
    else:
        lines.append("- none")
    lines.extend(["", "## Provider Candidate Trace IDs", ""])
    candidates = [
        result["trace_id"]
        for result in payload["results"]
        if result["status"] == "provider_candidate"
    ]
    lines.append(", ".join(f"`{trace_id}`" for trace_id in candidates) or "none")
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--accepted-gate", type=Path, default=ACCEPTED_GATE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    traces = parse_accepted_traces(args.accepted_gate)
    results = [
        classify_trace(trace_id, labels)
        for trace_id, labels in sorted(traces.items())
    ]

    status_counts = Counter(result["status"] for result in results)
    reason_counts = Counter(
        result.get("reason", "")
        for result in results
        if result["status"] != "provider_candidate"
    )
    if "" in reason_counts:
        del reason_counts[""]
    failure_counts = Counter(
        result.get("failure", {}).get("kind", "")
        for result in results
        if result["status"] == "provider_candidate"
    )
    if "" in failure_counts:
        del failure_counts[""]

    payload = {
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "accepted_gate": str(args.accepted_gate),
        "summary": {
            "accepted_traces": len(traces),
            "provider_candidates": status_counts.get("provider_candidate", 0),
            "by_status": dict(status_counts),
            "by_reason": dict(reason_counts),
            "by_failure": dict(failure_counts),
        },
        "results": results,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(args.markdown, payload)
    print(
        "provider candidates: "
        f"{payload['summary']['provider_candidates']}/{payload['summary']['accepted_traces']}"
    )


if __name__ == "__main__":
    main()
