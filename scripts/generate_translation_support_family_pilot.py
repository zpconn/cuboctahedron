#!/usr/bin/env python3
"""Emit a bounded Phase 6Z support-family Lean prototype.

This script is diagnostic code generation, not proof.  It reads the Phase 6Z
support-family report, regenerates exact two-source cases for sampled members
of one support family, and emits a small Lean module proving
`SupportFamilyCheckedOn` for a finite pilot predicate.
"""

from __future__ import annotations

import argparse
import json
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_translation_two_source_evidence import (  # noqa: E402
    TwoSourceCase,
    case_lines,
    find_source_indices,
    validate_module_namespace,
)
from profile_symmetry_compression import (  # noqa: E402
    source_farkas_support_key,
    sorted_source_farkas_terms,
    stable_digest,
    two_source_multipliers_for_lines,
)


DEFAULT_INPUT = Path(
    "scripts/generated/translation_two_source_family_phase6z_000000000_000100000.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Largest.lean"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/translation_support_family_pilot_largest.json"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Largest"
)
DEFAULT_DIGEST = "8fbb8d2e5508a43184d6aa62ade779a7ad03a2f2719f40317c1b5cf0aecf033e"


def load_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def support_digest_for_terms(source_terms: list[dict[str, Any]]) -> str:
    return stable_digest(source_farkas_support_key(source_terms))


def class_payload(data: dict[str, Any], digest: str) -> dict[str, Any]:
    for item in data.get("top_source_support_classes", []):
        if item.get("support_digest") == digest:
            return item
    raise ValueError(f"support digest not present in report: {digest}")


def build_case(rank: int, mask: int, expected_digest: str) -> TwoSourceCase:
    word = exact.pair_word_at_rank(rank)
    if exact.lex_rank_pair_word(word) != rank:
        raise AssertionError(f"rank mismatch for word at rank {rank}")
    needs = exact.translation_needs_farkas(word, mask)
    if needs is None:
        raise AssertionError(f"rank {rank}, mask {mask} is not a GoodDirection survivor")
    b, seq = needs
    cert = exact.build_translation_family_cert(
        rank,
        mask,
        f"phase6ZLargestSupport{rank:09d}_{mask:02d}",
        "farkas",
    ).to_json()
    if cert["seq"] != seq or tuple(Fraction(x) for x in cert["b"]) != b:
        raise AssertionError(f"certificate payload mismatch for rank {rank}, mask {mask}")
    failure = cert["failure"]
    if failure["kind"] != "farkas" or "sourceTerms" not in failure:
        raise AssertionError(f"missing source Farkas terms for rank {rank}, mask {mask}")
    sorted_terms = sorted_source_farkas_terms(failure["sourceTerms"])
    if support_digest_for_terms(sorted_terms) != expected_digest:
        raise AssertionError(f"rank {rank}, mask {mask} is not in support {expected_digest}")
    if len(sorted_terms) != 2:
        raise AssertionError(f"rank {rank}, mask {mask} is not a two-source case")
    _indices, source_constraints = find_source_indices(seq, b, sorted_terms)
    multipliers = two_source_multipliers_for_lines(
        source_constraints[0],
        source_constraints[1],
    )
    if not exact.check_farkas_py(
        source_constraints,
        [(0, multipliers[0]), (1, multipliers[1])],
    ):
        raise AssertionError(f"two-source reconstruction failed for rank {rank}, mask {mask}")
    return TwoSourceCase(
        rank=rank,
        mask=mask,
        word=word,
        seq=seq,
        b=b,
        first_source=sorted_terms[0]["source"],
        second_source=sorted_terms[1]["source"],
        first_line=source_constraints[0],
        second_line=source_constraints[1],
        multipliers=multipliers,
    )


def applies_def_lines(cases: list[TwoSourceCase]) -> list[str]:
    pieces = [
        f"(r = {case.rank} /\\ mask = {exact.lean_sign_mask(case.mask)})"
        for case in cases
    ]
    lines = [
        "def LargestSupportPilotApplies (r : Nat) (mask : SignMask) : Prop :=",
    ]
    if not pieces:
        lines.append("  False")
        return lines
    for index, piece in enumerate(pieces):
        prefix = "  " if index == 0 else "    \\/ "
        lines.append(prefix + piece)
    return lines


def checked_on_theorem_lines(cases: list[TwoSourceCase]) -> list[str]:
    lines = [
        "theorem largestSupportPilot_checkedOn :",
        "    SupportFamilyCheckedOn largestObservedSupport",
        "      LargestSupportPilotApplies := by",
        "  intro r hlt mask happ",
    ]
    if not cases:
        lines.extend([
            "  exact False.elim happ",
            "",
            "theorem largestSupportPilot_killsOn :",
            "    SupportFamilyKillsOn largestObservedSupport",
            "      LargestSupportPilotApplies :=",
            "  SupportFamilyCheckedOn.kills largestSupportPilot_checkedOn",
        ])
        return lines
    rcases = "  rcases happ with " + " | ".join(
        "⟨rfl, rfl⟩" for _ in cases
    )
    lines.append(rcases)
    for index, case in enumerate(cases):
        name = f"case_{index:06d}"
        lines.extend([
            f"  · simpa [largestObservedSupport, {name}_support,",
            f"      {name}_rank, {name}_mask] using",
            f"      {name}_checkedAtRank",
        ])
    lines.extend([
        "",
        "theorem largestSupportPilot_killsOn :",
        "    SupportFamilyKillsOn largestObservedSupport",
        "      LargestSupportPilotApplies :=",
        "  SupportFamilyCheckedOn.kills largestSupportPilot_checkedOn",
    ])
    return lines


def module_lines(
    cases: list[TwoSourceCase],
    *,
    namespace: str,
    report_path: Path,
    support_digest: str,
    source_case_count: int,
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage",
        "",
        "/-!",
        "Bounded Phase 6Z support-family prototype.",
        "",
        "This file is generated by",
        "`scripts/generate_translation_support_family_pilot.py`.",
        "It proves the support-family API shape for sampled members of the",
        "largest `[0,100000)` two-source support family.  It is not full",
        "coverage for the support family.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        f"-- Source report: `{report_path}`",
        f"-- Support digest: `{support_digest}`",
        f"-- Full support-family case count in the report: {source_case_count}",
        f"-- Pilot cases emitted here: {len(cases)}",
        "",
    ]
    for index, case in enumerate(cases):
        lines.extend(case_lines(case, index))
    lines.extend(applies_def_lines(cases))
    lines.append("")
    lines.extend(checked_on_theorem_lines(cases))
    lines.extend([
        "",
        "theorem largestSupportPilot_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def summary_payload(
    *,
    input_path: Path,
    output_path: Path,
    namespace: str,
    support_digest: str,
    support: dict[str, Any],
    cases: list[TwoSourceCase],
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "translation-two-source-support-family-pilot",
        "trusted_as_proof": False,
        "input": str(input_path),
        "output": str(output_path),
        "module_namespace": namespace,
        "support_digest": support_digest,
        "full_support_cases_in_report": int(support.get("cases", 0)),
        "pilot_cases_emitted": len(cases),
        "source_terms": support.get("source_terms", []),
        "computed_multiplier_patterns": support.get(
            "computed_multiplier_patterns", {}
        ),
        "scalar_normalized_multiplier_patterns": support.get(
            "scalar_normalized_multiplier_patterns", {}
        ),
        "normalized_farkas_shapes": support.get("normalized_farkas_shapes", {}),
        "pilot_rank_masks": [
            {"rank": case.rank, "mask": case.mask}
            for case in cases
        ],
        "lean_theorems": [
            "largestSupportPilot_checkedOn",
            "largestSupportPilot_killsOn",
        ],
        "notes": [
            "diagnostic only; Lean checks the generated module",
            "not full coverage for the largest support family",
        ],
    }


def markdown_report(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z Largest Support-Family Pilot",
        "",
        "This report is diagnostic only; Lean checks the generated module.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Full support cases in report | {payload['full_support_cases_in_report']:,} |",
        f"| Pilot cases emitted | {payload['pilot_cases_emitted']:,} |",
        f"| Computed multiplier patterns | {payload['computed_multiplier_patterns'].get('unique', '?')} |",
        f"| Normalized Farkas shapes in support | {payload['normalized_farkas_shapes'].get('unique', '?')} |",
        "",
        f"Support digest: `{payload['support_digest']}`",
        "",
        "Generated Lean theorems:",
        "",
    ]
    for theorem in payload["lean_theorems"]:
        lines.append(f"- `{theorem}`")
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--module-namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--support-digest", default=DEFAULT_DIGEST)
    parser.add_argument("--pilot-cases", type=int, default=16)
    args = parser.parse_args()

    if args.pilot_cases <= 0:
        parser.error("--pilot-cases must be positive")
    namespace = validate_module_namespace(args.module_namespace)
    data = load_json(args.input)
    support = class_payload(data, args.support_digest)
    samples = support.get("samples", [])[: args.pilot_cases]
    cases = [
        build_case(int(sample["rank"]), int(sample["mask"]), args.support_digest)
        for sample in samples
    ]
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        "\n".join(
            module_lines(
                cases,
                namespace=namespace,
                report_path=args.input,
                support_digest=args.support_digest,
                source_case_count=int(support.get("cases", 0)),
            )
        )
    )
    payload = summary_payload(
        input_path=args.input,
        output_path=args.output,
        namespace=namespace,
        support_digest=args.support_digest,
        support=support,
        cases=cases,
    )
    write_json(args.summary, payload)
    markdown_output = args.markdown_output or args.summary.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {args.summary}")
    print(f"wrote {markdown_output}")
    print(f"support digest: {args.support_digest}")
    print(f"full support cases in report: {int(support.get('cases', 0)):,}")
    print(f"pilot cases emitted: {len(cases):,}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
