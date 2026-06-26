#!/usr/bin/env python3
"""Emit a bounded source-kind membership smoke for Phase 6Z.6K.8B.

The 6K.8A profiler found that `source_kind_row_property` has only 11 families
on `[0,1000)`.  This emitter tests the Lean interface for that coordinate.  It
does not prove full coverage and it deliberately does not reconstruct concrete
rank/mask rows.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_row_property_membership_signatures import (  # noqa: E402
    key_payload,
    source_kind,
)
from profile_symbolic_row_extraction_families import classify_choice  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8a_row_property_membership_signatures.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceKindMembershipSmoke.lean"
)
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceKindMembershipSmoke"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8b_source_kind_membership_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


TEMPLATE_TO_TAG = {
    "eq_eq_pos_var_first": "eqEqPosVarFirst",
    "eq_eq_pos_var_second": "eqEqPosVarSecond",
    "eq_eq_neg_var_first": "eqEqNegVarFirst",
    "eq_eq_neg_var_second": "eqEqNegVarSecond",
    "opp_1m_var_first": "oppOneMinusVarFirst",
    "opp_1m_var_second": "oppOneMinusVarSecond",
    "opp_m1_var_first": "oppMinusOneVarFirst",
    "opp_m1_var_second": "oppMinusOneVarSecond",
    "axis_a_only": "axisAOnly",
    "axis_b_only": "axisBOnly",
    "exact_two_source_valid": "exactTwoSourceValid",
}


@dataclass(frozen=True)
class SourceKindFamily:
    key: str
    template_id: str
    tag: str
    first_kind: str
    second_kind: str
    row_property_key: str
    cases: int
    sample: dict[str, Any]


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def collect_families(rank_start: int, limit: int) -> list[SourceKindFamily]:
    counts: Counter[str] = Counter()
    metadata: dict[str, dict[str, Any]] = {}

    for rank in range(rank_start, rank_start + limit):
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            continue
        for mask in range(64):
            result = classify_choice(rank, mask)
            if result is None or result["status"] != "covered":
                continue
            sample = result["sample"]
            source_agreement = sample["source_agreement"]
            keys = key_payload(
                template_id=str(result["template_id"]),
                row_property_key=str(result["row_property_key"]),
                source_agreement=source_agreement,
                word=list(word),
                mask=mask,
            )
            key = keys["source_kind_row_property"]
            counts[key] += 1
            if key not in metadata:
                sources = source_agreement["sources"]
                metadata[key] = {
                    "template_id": str(result["template_id"]),
                    "row_property_key": str(result["row_property_key"]),
                    "first_kind": source_kind(sources[0]),
                    "second_kind": source_kind(sources[1]),
                    "sample": sample,
                }

    families: list[SourceKindFamily] = []
    for key, cases in counts.items():
        meta = metadata[key]
        template_id = meta["template_id"]
        if template_id not in TEMPLATE_TO_TAG:
            raise ValueError(f"unsupported template id: {template_id}")
        families.append(
            SourceKindFamily(
                key=key,
                template_id=template_id,
                tag=TEMPLATE_TO_TAG[template_id],
                first_kind=meta["first_kind"],
                second_kind=meta["second_kind"],
                row_property_key=meta["row_property_key"],
                cases=cases,
                sample=meta["sample"],
            )
        )
    return families


def select_families(families: list[SourceKindFamily]) -> list[SourceKindFamily]:
    if not families:
        raise RuntimeError("no source-kind families found")
    selected: dict[str, SourceKindFamily] = {}
    largest = max(families, key=lambda family: (family.cases, family.key))
    selected[largest.key] = largest

    non_first = [
        family
        for family in families
        if family.template_id != "eq_eq_pos_var_first"
    ]
    if non_first:
        family = max(non_first, key=lambda item: (item.cases, item.key))
        selected[family.key] = family

    smallest = min(families, key=lambda family: (family.cases, family.key))
    selected[smallest.key] = smallest

    return sorted(selected.values(), key=lambda family: (-family.cases, family.key))


def lean_kind(kind: str) -> str:
    if kind not in {"xpStart", "ordering", "interior"}:
        raise ValueError(f"unsupported source kind {kind!r}")
    return f"SourceKindTag.{kind}"


def lean_tag(tag: str) -> str:
    return f"RowPropertyTag.{tag}"


def lean_lines(namespace: str, selected: list[SourceKindFamily]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "",
        "/-!",
        "Generated source-kind membership smoke for Phase 6Z.6K.8B.",
        "",
        "This module tests the interface shape only.  It intentionally keeps",
        "`SourceAgrees` and row-property facts inside the witness predicate, so a",
        "successful build is not production coverage.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "inductive SourceKindTag",
        "  | xpStart",
        "  | ordering",
        "  | interior",
        "deriving DecidableEq, Repr",
        "",
        "def SourceKindTag.ofSource : TranslationConstraintSource -> SourceKindTag",
        "  | TranslationConstraintSource.xpStart _ => SourceKindTag.xpStart",
        "  | TranslationConstraintSource.ordering _ => SourceKindTag.ordering",
        "  | TranslationConstraintSource.interior _ _ => SourceKindTag.interior",
        "",
        "def SupportHasKinds",
        "    (support : TwoSourceFarkasSupport)",
        "    (first second : SourceKindTag) : Prop :=",
        "  SourceKindTag.ofSource support.first = first /\\",
        "    SourceKindTag.ofSource support.second = second",
        "",
        "inductive RowPropertyTag",
        "  | eqEqPosVarFirst",
        "  | eqEqPosVarSecond",
        "  | eqEqNegVarFirst",
        "  | eqEqNegVarSecond",
        "  | oppOneMinusVarFirst",
        "  | oppOneMinusVarSecond",
        "  | oppMinusOneVarFirst",
        "  | oppMinusOneVarSecond",
        "  | axisAOnly",
        "  | axisBOnly",
        "  | exactTwoSourceValid",
        "deriving DecidableEq, Repr",
        "",
        "def rowPropertyPredicate",
        "    (tag : RowPropertyTag)",
        "    (support : TwoSourceFarkasSupport)",
        "    (r : Nat) (mask : SignMask) : Prop :=",
        "  match tag with",
        "  | RowPropertyTag.eqEqPosVarFirst =>",
        "      SourceAgrees support r mask /\\ EqEqPosVarFirstRows support r mask",
        "  | RowPropertyTag.eqEqPosVarSecond =>",
        "      SourceAgrees support r mask /\\ EqEqPosVarSecondRows support r mask",
        "  | RowPropertyTag.eqEqNegVarFirst =>",
        "      SourceAgrees support r mask /\\ EqEqNegVarFirstRows support r mask",
        "  | RowPropertyTag.eqEqNegVarSecond =>",
        "      SourceAgrees support r mask /\\ EqEqNegVarSecondRows support r mask",
        "  | RowPropertyTag.oppOneMinusVarFirst =>",
        "      SourceAgrees support r mask /\\ OppOneMinusVarFirstRows support r mask",
        "  | RowPropertyTag.oppOneMinusVarSecond =>",
        "      SourceAgrees support r mask /\\ OppOneMinusVarSecondRows support r mask",
        "  | RowPropertyTag.oppMinusOneVarFirst =>",
        "      SourceAgrees support r mask /\\ OppMinusOneVarFirstRows support r mask",
        "  | RowPropertyTag.oppMinusOneVarSecond =>",
        "      SourceAgrees support r mask /\\ OppMinusOneVarSecondRows support r mask",
        "  | RowPropertyTag.axisAOnly =>",
        "      SourceAgrees support r mask /\\ AxisAOnlyRows support r mask",
        "  | RowPropertyTag.axisBOnly =>",
        "      SourceAgrees support r mask /\\ AxisBOnlyRows support r mask",
        "  | RowPropertyTag.exactTwoSourceValid =>",
        "      SourceAgrees support r mask /\\ ExactTwoSourceValidRows support r mask",
        "",
        "def SourceKindRowPropertyWitness",
        "    (tag : RowPropertyTag) (first second : SourceKindTag)",
        "    (r : Nat) (mask : SignMask) : Prop :=",
        "  exists support : TwoSourceFarkasSupport,",
        "    SupportHasKinds support first second /\\",
        "      rowPropertyPredicate tag support r mask",
        "",
        "theorem sourceKindRowPropertyWitness_covered",
        "    {tag : RowPropertyTag} {first second : SourceKindTag}",
        "    {r : Nat} {mask : SignMask}",
        "    (h : SourceKindRowPropertyWitness tag first second r mask) :",
        "    RowPropertyParametricCovered r mask := by",
        "  rcases h with ⟨support, _hkinds, hprop⟩",
        "  cases tag <;>",
        "    simp [rowPropertyPredicate] at hprop",
        "  · exact RowPropertyParametricCovered.eqEqPosVarFirst ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.eqEqPosVarSecond ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.eqEqNegVarFirst ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.eqEqNegVarSecond ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.oppOneMinusVarFirst ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.oppOneMinusVarSecond ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.oppMinusOneVarFirst ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.oppMinusOneVarSecond ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.axisAOnly ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.axisBOnly ⟨support, hprop⟩",
        "  · exact RowPropertyParametricCovered.exactTwoSourceValid ⟨support, hprop⟩",
        "",
        "def sourceKindRowPropertyFamily",
        "    (tag : RowPropertyTag) (first second : SourceKindTag) :",
        "    RowPropertyMembershipFamily where",
        "  Applies := SourceKindRowPropertyWitness tag first second",
        "  covered := by",
        "    intro r mask h",
        "    exact sourceKindRowPropertyWitness_covered h",
        "",
    ]
    for index, family in enumerate(selected):
        name = f"selected_{index:03d}"
        lines.extend([
            f"/-- Selected source-kind family `{family.key}`.",
            f"Observed cases in bounded scan: {family.cases}.",
            f"Template: `{family.template_id}`. -/",
            f"def {name} : RowPropertyMembershipFamily :=",
            f"  sourceKindRowPropertyFamily {lean_tag(family.tag)}",
            f"    {lean_kind(family.first_kind)} {lean_kind(family.second_kind)}",
            "",
            f"theorem {name}_killsOn : {name}.KillsOn :=",
            f"  {name}.killsOn",
            "",
        ])
    lines.extend([
        "theorem sourceKindMembershipSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8B Source-Kind Membership Smoke",
        "",
        "This generated smoke is not production coverage. It checks whether the",
        "`source_kind_row_property` coordinate has a useful Lean interface.",
        "",
        f"- Decision: `{payload['decision']['status']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Selected families: `{len(payload['selected_families'])}`",
        "",
        "## Selected Families",
        "",
        "| Family key | Cases | Template | Source kinds |",
        "| --- | ---: | --- | --- |",
    ]
    for family in payload["selected_families"]:
        lines.append(
            f"| `{family['key']}` | {family['cases']} | "
            f"`{family['template_id']}` | "
            f"`{family['first_kind']} -> {family['second_kind']}` |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    source = read_json(args.input)
    rank_start = int(source["rank_start"])
    rank_end = int(source["rank_end"])
    namespace = validate_module_namespace(args.namespace)
    families = collect_families(rank_start, rank_end - rank_start)
    selected = select_families(families)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(lean_lines(namespace, selected)), encoding="utf-8")

    payload = {
        "schema_version": 1,
        "mode": "phase6z6k8b_source_kind_membership_smoke",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_end,
        "input": str(args.input),
        "lean_module": namespace,
        "lean_file": str(args.out),
        "selected_families": [
            {
                "key": family.key,
                "cases": family.cases,
                "template_id": family.template_id,
                "row_property_key": family.row_property_key,
                "first_kind": family.first_kind,
                "second_kind": family.second_kind,
            }
            for family in selected
        ],
        "decision": {
            "status": "interface-only-source-kind",
            "notes": [
                "the smoke tests the source-kind family interface",
                "the witness predicate still contains SourceAgrees and row-property facts",
                "do not scale source_kind_row_property until a later phase proves those facts from source kind alone or enriches the coordinate",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(
        "source-kind membership smoke: "
        f"{payload['decision']['status']} with {len(selected)} selected families"
    )


if __name__ == "__main__":
    main()
