#!/usr/bin/env python3
"""Emit a bounded source-index/state membership smoke module.

Phase 6Z.6K.8D selected `source_index_state_row_property` as the next
translation two-source compression surface, but only if Lean can prove the
source agreement and row-property facts from a fact-free source-index/state
descriptor.

This emitter writes a tiny Lean smoke with three representative cases from the
6K.8D profile:

* the largest `eq_eq_pos_var_first` source-index/state family;
* the largest non-`eq_eq_pos_var_first` source-index/state family; and
* a singleton family.

The generated `Applies` predicates contain only descriptor equality over rank
and sign mask.  They do not contain `SourceAgrees`, row predicates, row-shape
facts, or old translation certificates.  The generated local theorems then
prove the source/row facts separately and compose them through
`RowPropertyParametricCovered`.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_symbolic_row_family_smoke import (  # noqa: E402
    TEMPLATE_TO_SYMBOLIC,
    SymbolicCase,
    case_header_lines_for_family,
    classify_choice,
    lean_case_name,
    rows_lines,
    source_agrees_lines,
)
from generate_translation_row_relation_classifier import ClassifiedCase  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8d_source_agreement_theorem_shapes.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8e_source_index_state_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSmoke"
)


@dataclass(frozen=True)
class SelectedCase:
    case_index: int
    family_key: str
    observed_cases: int
    selected_reason: str
    symbolic: SymbolicCase


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def selected_source_index_families(profile: dict[str, Any]) -> list[dict[str, Any]]:
    for surface in profile.get("surfaces", []):
        if surface.get("surface") == "source_index_state_row_property":
            return list(surface.get("selected_families", []))
    raise RuntimeError("profile does not contain source_index_state_row_property")


def family_reason(index: int, family: dict[str, Any]) -> str:
    if index == 0:
        return "largest source-index/state family"
    if family.get("cases") == 1:
        return "singleton source-index/state family"
    return "largest non-eq_eq_pos_var_first source-index/state family"


def collect_cases(profile: dict[str, Any]) -> list[SelectedCase]:
    cases: list[SelectedCase] = []
    for index, family in enumerate(selected_source_index_families(profile)):
        samples = list(family.get("samples", []))
        if not samples:
            raise RuntimeError(f"selected family {family.get('key')} has no samples")
        sample = samples[0]
        rank = int(sample["rank"])
        mask = int(sample["mask"])
        classified = classify_choice(rank, mask)
        if classified is None:
            raise RuntimeError(
                f"sample rank={rank} mask={mask} was not classified as two-source"
            )
        family_key, row_key, case, template_id = classified
        expected_template = str(family["template_id"])
        if template_id != expected_template:
            raise RuntimeError(
                f"template mismatch for selected family {family.get('key')}: "
                f"{template_id} != {expected_template}"
            )
        cases.append(
            SelectedCase(
                case_index=index,
                family_key=str(family["key"]),
                observed_cases=int(family["cases"]),
                selected_reason=family_reason(index, family),
                symbolic=SymbolicCase(
                    index=index,
                    case=case,
                    template_id=template_id,
                    family_key=family_key,
                    row_property_key=row_key,
                ),
            )
        )
    return cases


def constructor_for_template(template_id: str) -> str:
    mapping = {
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
    try:
        return mapping[template_id]
    except KeyError as exc:
        raise ValueError(f"unsupported row-property template {template_id!r}") from exc


def descriptor_lines() -> list[str]:
    return [
        "/--",
        "A deliberately small source-index/state descriptor for bounded smoke.",
        "",
        "`Applies` is fact-free: it stores no `SourceAgrees`, no row-property",
        "predicate, and no old certificate witness.  The support is data used by",
        "the semantic bridge after `Applies` identifies the rank/mask state.",
        "-/",
        "structure SourceIndexStateDescriptor where",
        "  rank : Nat",
        "  mask : SignMask",
        "  support : TwoSourceFarkasSupport",
        "",
        "def SourceIndexStateDescriptor.Applies",
        "    (desc : SourceIndexStateDescriptor) (r : Nat) (mask : SignMask) : Prop :=",
        "  r = desc.rank /\\ mask = desc.mask",
        "",
    ]


def case_descriptor_lines(selected: SelectedCase) -> list[str]:
    cc = selected.symbolic
    name = lean_case_name(cc.index)
    constructor = constructor_for_template(cc.template_id)
    return [
        f"private def {name}_desc : SourceIndexStateDescriptor where",
        f"  rank := {name}_rank.val",
        f"  mask := {name}_mask",
        f"  support := {name}_support",
        "",
        f"private theorem {name}_sourceAgrees_of_applies",
        f"    {{r : Nat}} {{mask : SignMask}}",
        f"    (h : {name}_desc.Applies r mask) :",
        f"    SourceAgrees {name}_desc.support r mask := by",
        "  rcases h with ⟨hr, hmask⟩",
        "  subst r",
        "  subst mask",
        f"  simpa [{name}_desc] using {name}_sourceAgrees",
        "",
        f"private theorem {name}_rows_of_applies",
        f"    {{r : Nat}} {{mask : SignMask}}",
        f"    (h : {name}_desc.Applies r mask) :",
        f"    {TEMPLATE_TO_SYMBOLIC[cc.template_id]['rows']} {name}_desc.support r mask := by",
        "  rcases h with ⟨hr, hmask⟩",
        "  subst r",
        "  subst mask",
        f"  simpa [{name}_desc] using {name}_rows",
        "",
        f"private theorem {name}_covered_of_applies",
        f"    {{r : Nat}} {{mask : SignMask}}",
        f"    (h : {name}_desc.Applies r mask) :",
        f"    RowPropertyParametricCovered r mask := by",
        f"  exact RowPropertyParametricCovered.{constructor}",
        f"    ⟨{name}_desc.support,",
        f"      {name}_sourceAgrees_of_applies h,",
        f"      {name}_rows_of_applies h⟩",
        "",
        f"def {name}_family : RowPropertyMembershipFamily where",
        f"  Applies := {name}_desc.Applies",
        "  covered := by",
        "    intro r mask h",
        f"    exact {name}_covered_of_applies h",
        "",
        f"theorem {name}_killsOn : {name}_family.KillsOn :=",
        f"  {name}_family.killsOn",
        "",
    ]


def module_lines(namespace: str, selected_cases: list[SelectedCase]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "",
        "/-!",
        "Generated source-index/state membership smoke for Phase 6Z.6K.8E.",
        "",
        "This bounded smoke validates the selected source-index/state surface.",
        "`Applies` is intentionally fact-free: it does not contain `SourceAgrees`,",
        "row-property predicates, row-shape facts, or ordinary translation",
        "certificates.  The local generated proofs derive those facts separately",
        "and then compose through `RowPropertyParametricCovered`.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        *descriptor_lines(),
    ]
    for selected in selected_cases:
        cc = selected.symbolic
        name = lean_case_name(cc.index)
        lines.extend(
            [
                f"/-- Source-index/state smoke case: {selected.selected_reason}.",
                f"Family key: `{selected.family_key}`.",
                f"Observed bounded cases: {selected.observed_cases}. -/",
                *case_header_lines_for_family(
                    ClassifiedCase(cc.index, cc.case, cc.template_id),
                    f"{name}_familySupport",
                ),
                *source_agrees_lines(cc),
                *rows_lines(cc),
                *case_descriptor_lines(selected),
            ]
        )
    lines.extend(
        [
            "theorem sourceIndexStateSmoke_builds : True := by",
            "  trivial",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return lines


def summary_payload(
    *,
    profile: dict[str, Any],
    selected_cases: list[SelectedCase],
    out: Path,
    namespace: str,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8E",
        "trusted_as_proof": False,
        "input": str(DEFAULT_INPUT),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": "source-index-state-smoke-emitted",
        "applies_surface": "rank/mask equality from SourceIndexStateDescriptor",
        "applies_contains_source_or_row_facts": False,
        "selected_surface": profile.get("decision", {}).get("chosen_surface"),
        "selected_cases": [
            {
                "case_index": item.case_index,
                "rank": item.symbolic.case.rank,
                "mask": item.symbolic.case.mask,
                "template_id": item.symbolic.template_id,
                "family_key": item.family_key,
                "observed_cases": item.observed_cases,
                "selected_reason": item.selected_reason,
            }
            for item in selected_cases
        ],
    }


def markdown_summary(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8E Source-Index/State Smoke",
        "",
        f"- Decision: `{payload['decision']}`",
        f"- Lean module: `{payload['lean_module']}`",
        f"- Applies surface: `{payload['applies_surface']}`",
        f"- Applies contains source/row facts: `{payload['applies_contains_source_or_row_facts']}`",
        "",
        "| Case | Rank | Mask | Template | Observed cases | Reason |",
        "| ---: | ---: | ---: | --- | ---: | --- |",
    ]
    for item in payload["selected_cases"]:
        lines.append(
            f"| {item['case_index']} | {item['rank']} | {item['mask']} | "
            f"`{item['template_id']}` | {item['observed_cases']} | "
            f"{item['selected_reason']} |"
        )
    lines.extend(
        [
            "",
            "This report is not trusted as proof.  The generated Lean module is the",
            "trusted smoke check.",
            "",
        ]
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.input)
    selected_cases = collect_cases(profile)
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text("\n".join(module_lines(namespace, selected_cases)), encoding="utf-8")
    payload = summary_payload(
        profile=profile,
        selected_cases=selected_cases,
        out=args.out,
        namespace=namespace,
    )
    payload["input"] = str(args.input)
    write_json(args.json, payload)
    write_text(args.md, markdown_summary(payload))
    print(f"wrote {args.out}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
