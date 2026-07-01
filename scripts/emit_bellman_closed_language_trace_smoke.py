#!/usr/bin/env python3
"""Emit a tiny generated-style Bellman closed-language trace smoke.

This is diagnostic generated evidence for the current top-pairing Bellman
language surface.  It deliberately emits constructor-chain proofs over a
literal contribution-order label list, not rank/unrank reductions.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path


FACES = [
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


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def mat_name(index: int) -> str:
    return f"m{index:02d}"


def rat_name(index: int) -> str:
    return f"v{index:02d}"


def emit_schedule_trace(name: str) -> list[str]:
    lines = [
        f"private theorem {name}ScheduleTrace :",
        f"    TopPairingStepScheduleFrom 0 {name}ContributionLabels := by",
        f"  unfold {name}ContributionLabels",
    ]
    for _idx, _face in enumerate(FACES):
        lines.extend(
            [
                "  apply topPairingStepScheduleFrom_cons",
                "  · simp [topPairingAllowedFacesAtStep]",
            ]
        )
    lines.append("  exact topPairingStepScheduleFrom_nil")
    return lines


def emit_square_gap_trace(name: str) -> list[str]:
    lines = [
        f"private theorem {name}SquareGapTrace :",
        f"    TopPairingSquareGapFrom 0 {name}ContributionLabels := by",
        f"  unfold {name}ContributionLabels",
    ]
    for face in FACES:
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


def emit_local_axis_signature(name: str) -> list[str]:
    lines = [
        f"private theorem {name}LocalAxisTraceOfGeneratedStates",
        "    {"
        + " ".join(mat_name(index) for index in range(1, 15))
        + " : Mat3 Rat}",
        "    {"
        + " ".join(rat_name(index) for index in range(14))
        + " : Rat}",
    ]
    for index, face in enumerate(FACES):
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
    for index, _face in enumerate(FACES):
        lines.extend(
            [
                "  apply topPairingLocalAxisFrom_cons_next",
                f"  · exact topPairingLocalAxisAllows_of_dot_eq hdot{index:02d} hpos{index:02d}",
                f"  · exact hnext{index:02d}",
            ]
        )
    lines.append("  exact topPairingLocalAxisFrom_nil")
    return lines


def emit_module(namespace: str, name: str) -> list[str]:
    labels = ", ".join(face_ctor(face) for face in FACES)
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
    lines.extend(emit_schedule_trace(name))
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
    lines.extend(emit_square_gap_trace(name))
    lines.extend(
        [
            "",
            f"private theorem {name}SquareGapLabels :",
            f"    TopPairingSquareGapLabels {name}ContributionLabels :=",
            f"  topPairingSquareGapLabels_ofFrom {name}SquareGapTrace",
            "",
        ]
    )
    lines.extend(emit_local_axis_signature(name))
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
    args = parser.parse_args()

    lines = emit_module(args.namespace, args.name)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("\n".join(lines))

    if args.report is not None:
        payload = {
            "mode": "bellman-closed-language-trace-smoke",
            "output": str(args.output),
            "namespace": args.namespace,
            "name": args.name,
            "faces": FACES,
            "face_count": len(FACES),
            "proof_strategy": (
                "literal schedule/square-gap traces plus explicit local-axis "
                "state/dot facts and a positive-template label bridge"
            ),
        }
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(payload, indent=2) + "\n")


if __name__ == "__main__":
    main()
