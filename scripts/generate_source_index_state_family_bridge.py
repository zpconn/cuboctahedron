#!/usr/bin/env python3
"""Emit a bounded source-index/state family-bridge smoke.

Phase 6Z.6K.8F advances the 6K.8E singleton smoke by profiling every bounded
`source_index_state_row_property` family in `[0,1000)` and emitting a small
multi-member Lean smoke for representative families.

The generated `Applies` predicates are still fact-free: an inductive
membership constructor identifies a bounded rank/mask member, and all
`SourceAgrees`/row-property facts are proved outside `Applies`.

This is not production coverage.  It is a viability test for the family bridge
surface and deliberately caps emitted members to avoid becoming a large
rank/mask table.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_smoke import constructor_for_template  # noqa: E402
from generate_symbolic_row_family_smoke import (  # noqa: E402
    TEMPLATE_TO_SYMBOLIC,
    SymbolicCase,
    case_header_lines_for_family,
    classify_choice as lean_classify_choice,
    lean_case_name,
    rows_lines,
    source_agrees_lines,
)
from generate_translation_row_relation_classifier import ClassifiedCase  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402
from profile_source_agreement_theorem_shapes import (  # noqa: E402
    source_index_state_payload,
    surface_key,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice as profile_classify_choice,
)


DEFAULT_INPUT = Path(
    "scripts/generated/phase6z6k8d_source_agreement_theorem_shapes.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateFamilySmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8f_source_index_state_family_bridge.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateFamilySmoke"
)


@dataclass(frozen=True)
class Member:
    symbolic: SymbolicCase
    source_index_key: str


@dataclass
class Family:
    key: str
    template_id: str
    source_indices: tuple[int, ...]
    source_skeletons: tuple[str, ...]
    row_property_key: str
    members: list[Member] = field(default_factory=list)

    @property
    def count(self) -> int:
        return len(self.members)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def skeleton_strings(payload: dict[str, Any]) -> tuple[str, ...]:
    return tuple(json.dumps(item, sort_keys=True) for item in payload["sources"])


def collect_families(
    *, rank_start: int, limit: int
) -> tuple[list[Family], dict[str, int], dict[str, Any]]:
    counts: Counter[str] = Counter(
        {
            "pair_words_scanned": 0,
            "nonidentity_words_skipped": 0,
            "identity_words": 0,
            "translation_sign_assignments": 0,
            "not_good_direction_masks": 0,
            "good_direction_survivors": 0,
            "covered_cases": 0,
            "non_two_source_cases": 0,
            "uncovered_cases": 0,
        }
    )
    by_key: dict[str, Family] = {}
    next_case_index = 0

    for rank in range(rank_start, rank_start + limit):
        counts["pair_words_scanned"] += 1
        word_result = profile_classify_choice(rank, 0)
        if word_result is None:
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            result = profile_classify_choice(rank, mask)
            if result is None:
                raise RuntimeError("identity word unexpectedly classified as nonidentity")
            status = result["status"]
            if status == "not_good_direction":
                counts["not_good_direction_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            if status == "non_two_source":
                counts["non_two_source_cases"] += 1
                continue
            if status == "uncovered":
                counts["uncovered_cases"] += 1
                continue
            if status != "covered":
                raise RuntimeError(f"unknown status {status!r}")
            counts["covered_cases"] += 1

            classified = lean_classify_choice(rank, mask)
            if classified is None:
                raise RuntimeError(
                    f"Lean classifier failed for covered case rank={rank} mask={mask}"
                )
            _template_source_key, row_key, case, template_id = classified
            if template_id != result["template_id"]:
                raise RuntimeError(
                    f"template mismatch rank={rank} mask={mask}: "
                    f"{template_id} != {result['template_id']}"
                )
            key = surface_key("source_index_state_row_property", result)
            payload = source_index_state_payload(result)
            family = by_key.get(key)
            if family is None:
                family = Family(
                    key=key,
                    template_id=template_id,
                    source_indices=tuple(int(i) for i in payload["indices"]),
                    source_skeletons=skeleton_strings(payload),
                    row_property_key=str(result["row_property_key"]),
                )
                by_key[key] = family
            family.members.append(
                Member(
                    symbolic=SymbolicCase(
                        index=next_case_index,
                        case=case,
                        template_id=template_id,
                        family_key=key,
                        row_property_key=row_key,
                    ),
                    source_index_key=key,
                )
            )
            next_case_index += 1

    families = sorted(
        by_key.values(),
        key=lambda family: (-family.count, family.template_id, family.key),
    )
    metadata = {
        "template_counts": dict(Counter(family.template_id for family in families)),
        "largest_family_cases": families[0].count if families else 0,
        "families": len(families),
    }
    return families, dict(counts), metadata


def select_smoke_families(families: list[Family]) -> list[Family]:
    selected: dict[str, Family] = {}
    if not families:
        return []
    largest = max(families, key=lambda family: (family.count, family.key))
    selected[largest.key] = largest

    non_first = [
        family
        for family in families
        if family.template_id != "eq_eq_pos_var_first"
    ]
    if non_first:
        family = max(non_first, key=lambda item: (item.count, item.key))
        selected[family.key] = family

    small_non_singleton = [
        family
        for family in families
        if family.count > 1 and family.key not in selected
    ]
    if small_non_singleton:
        family = min(small_non_singleton, key=lambda item: (item.count, item.key))
        selected[family.key] = family
    else:
        remaining = [family for family in families if family.key not in selected]
        if remaining:
            family = min(remaining, key=lambda item: (item.count, item.key))
            selected[family.key] = family

    return sorted(selected.values(), key=lambda family: (-family.count, family.key))


def case_descriptor_lines(member: Member) -> list[str]:
    cc = member.symbolic
    name = lean_case_name(cc.index)
    constructor = constructor_for_template(cc.template_id)
    rows_pred = TEMPLATE_TO_SYMBOLIC[cc.template_id]["rows"]
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
        f"    {rows_pred} {name}_desc.support r mask := by",
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
        f"private theorem {name}_covered :",
        f"    RowPropertyParametricCovered {name}_rank.val {name}_mask := by",
        f"  exact {name}_covered_of_applies ⟨rfl, rfl⟩",
        "",
    ]


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def family_lines(index: int, family: Family, members: list[Member]) -> list[str]:
    name = family_name(index)
    lines: list[str] = [
        f"/-- Source-index/state family smoke `{family.key}`.",
        f"Observed bounded cases: {family.count}. Emitted members: {len(members)}. -/",
    ]
    for member in members:
        cc = member.symbolic
        case_name = lean_case_name(cc.index)
        lines.extend(
            [
                *case_header_lines_for_family(
                    ClassifiedCase(cc.index, cc.case, cc.template_id),
                    f"{case_name}_familySupport",
                ),
                *source_agrees_lines(cc),
                *rows_lines(cc),
                *case_descriptor_lines(member),
            ]
        )

    lines.append(f"inductive {name}_applies : Nat -> SignMask -> Prop")
    for member_index, member in enumerate(members):
        case_name = lean_case_name(member.symbolic.index)
        lines.append(
            f"  | member_{member_index:03d} : "
            f"{name}_applies {case_name}_rank.val {case_name}_mask"
        )
    lines.extend(
        [
            "",
            f"def {name}_family : RowPropertyMembershipFamily where",
            f"  Applies := {name}_applies",
            "  covered := by",
            "    intro r mask h",
            "    cases h with",
        ]
    )
    for member_index, member in enumerate(members):
        case_name = lean_case_name(member.symbolic.index)
        lines.extend(
            [
                f"    | member_{member_index:03d} =>",
                f"        exact {case_name}_covered",
            ]
        )
    lines.extend(
        [
            "",
            f"theorem {name}_killsOn : {name}_family.KillsOn :=",
            f"  {name}_family.killsOn",
            "",
        ]
    )
    return lines


def module_lines(
    namespace: str,
    selected: list[Family],
    *,
    members_per_family: int,
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated bounded source-index/state family bridge smoke for Phase 6Z.6K.8F.",
        "",
        "This module tests multi-member fact-free membership predicates.  It is",
        "not production coverage and deliberately caps emitted members per",
        "family to avoid becoming a rank/mask table.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for index, family in enumerate(selected):
        lines.extend(
            family_lines(index, family, family.members[:members_per_family])
        )
    lines.extend(
        [
            "theorem sourceIndexStateFamilySmoke_builds : True := by",
            "  trivial",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return lines


def family_summary(family: Family) -> dict[str, Any]:
    return {
        "key": family.key,
        "template_id": family.template_id,
        "cases": family.count,
        "source_indices": list(family.source_indices),
        "source_skeletons": list(family.source_skeletons),
        "row_property_key": family.row_property_key,
        "sample_members": [
            {
                "rank": member.symbolic.case.rank,
                "mask": member.symbolic.case.mask,
            }
            for member in family.members[:5]
        ],
    }


def build_payload(
    *,
    rank_start: int,
    limit: int,
    family_gate: int,
    emit_member_gate: int,
    members_per_family: int,
    families: list[Family],
    selected: list[Family],
    counts: dict[str, int],
    metadata: dict[str, Any],
    emitted: bool,
    out: Path,
) -> dict[str, Any]:
    full_selected_members = sum(family.count for family in selected)
    emitted_members = sum(min(family.count, members_per_family) for family in selected)
    reduced = full_selected_members > emit_member_gate
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8F",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "family_gate": family_gate,
        "emit_member_gate": emit_member_gate,
        "members_per_family": members_per_family,
        "counts": counts,
        "metadata": metadata,
        "all_family_count": len(families),
        "largest_family_cases": metadata.get("largest_family_cases", 0),
        "selected_family_count": len(selected),
        "selected_full_member_count": full_selected_members,
        "selected_emitted_member_count": emitted_members,
        "emission_reduced_by_gate": reduced,
        "lean_module_emitted": emitted,
        "lean_module": str(out),
        "decision": {
            "status": "source-index-state-family-smoke-emitted" if emitted else "dry-run-only",
            "notes": [
                "Applies is an inductive rank/mask member predicate with no source or row facts",
                "generated Lean is bounded diagnostic smoke, not production coverage",
            ],
        },
        "selected_families": [family_summary(family) for family in selected],
        "top_families": [family_summary(family) for family in families[:12]],
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Phase 6Z.6K.8F Source-Index/State Family Bridge",
        "",
        "This diagnostic is not trusted as proof.  The generated Lean smoke is",
        "the trusted check for the selected bounded members.",
        "",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Source-index/state families: `{payload['all_family_count']}`",
        f"- Largest family cases: `{payload['largest_family_cases']}`",
        f"- Selected families: `{payload['selected_family_count']}`",
        f"- Selected full members: `{payload['selected_full_member_count']}`",
        f"- Selected emitted members: `{payload['selected_emitted_member_count']}`",
        f"- Emission reduced by gate: `{payload['emission_reduced_by_gate']}`",
        f"- Lean module emitted: `{payload['lean_module_emitted']}`",
        "",
        "## Selected Families",
        "",
        "| Cases | Template | Emitted sample members |",
        "| ---: | --- | --- |",
    ]
    for family in payload["selected_families"]:
        samples = ", ".join(
            f"r{item['rank']}/m{item['mask']}"
            for item in family["sample_members"][: payload["members_per_family"]]
        )
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | {samples} |"
        )
    lines.extend(
        [
            "",
            "## Top Families",
            "",
            "| Cases | Template | Key |",
            "| ---: | --- | --- |",
        ]
    )
    for family in payload["top_families"]:
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | `{family['key']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--family-gate", type=int, default=200)
    parser.add_argument("--emit-member-gate", type=int, default=250)
    parser.add_argument("--members-per-family", type=int, default=2)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--emit-smoke", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    validate_module_namespace(args.namespace)
    # Keep the profile path as an explicit input dependency for reproducible
    # diagnostics.  The emitter rescans rather than trusting the profile counts.
    if not args.input.exists():
        raise FileNotFoundError(args.input)
    read_json(args.input)
    families, counts, metadata = collect_families(
        rank_start=args.rank_start,
        limit=args.limit,
    )
    selected = select_smoke_families(families)
    full_selected = sum(family.count for family in selected)
    members_per_family = args.members_per_family
    if full_selected > args.emit_member_gate:
        members_per_family = min(members_per_family, 2)
    emit = args.emit_smoke and not args.dry_run
    if emit:
        args.out.parent.mkdir(parents=True, exist_ok=True)
        args.out.write_text(
            "\n".join(
                module_lines(
                    args.namespace,
                    selected,
                    members_per_family=members_per_family,
                )
            ),
            encoding="utf-8",
        )
    payload = build_payload(
        rank_start=args.rank_start,
        limit=args.limit,
        family_gate=args.family_gate,
        emit_member_gate=args.emit_member_gate,
        members_per_family=members_per_family,
        families=families,
        selected=selected,
        counts=counts,
        metadata=metadata,
        emitted=emit,
        out=args.out,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    if emit:
        print(f"wrote {args.out}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
