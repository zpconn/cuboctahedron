#!/usr/bin/env python3
"""Emit a bounded non-enumerative source-index/state smoke.

Phase 6Z.6K.8G selected `source_index_state` as the only bounded predicate that
was source-stable, row-property-stable, fact-free, and member-list-free.  This
generator emits the next Lean smoke: broad `SourceIndexStateFamilyDescriptor`
families whose `Applies` predicate recomputes source-index and row-template
conditions instead of enumerating rank/mask members.

The generated Lean is a bounded diagnostic, not production coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_smoke import constructor_for_template  # noqa: E402
from generate_symbolic_row_family_smoke import (  # noqa: E402
    SymbolicCase,
    case_header_lines_for_family,
    classify_choice as lean_classify_choice,
    lean_case_name,
    rows_lines,
)
from generate_translation_row_relation_classifier import ClassifiedCase  # noqa: E402
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_source_agreement_theorem_shapes import (  # noqa: E402
    source_index_state_payload,
    surface_key,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice as profile_classify_choice,
)


DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateNonEnumSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8h_source_index_state_nonenum_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateNonEnumSmoke"
)

TEMPLATE_TO_SOURCE_INDEX = {
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
class Member:
    symbolic: SymbolicCase


@dataclass
class Family:
    key: str
    template_id: str
    source_indices: tuple[int, int]
    source_skeletons: tuple[str, str]
    row_property_key: str
    members: list[Member] = field(default_factory=list)

    @property
    def count(self) -> int:
        return len(self.members)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def skeleton_strings(payload: dict[str, Any]) -> tuple[str, str]:
    sources = tuple(json.dumps(item, sort_keys=True) for item in payload["sources"])
    if len(sources) != 2:
        raise ValueError(f"expected two source skeletons, got {len(sources)}")
    return sources  # type: ignore[return-value]


def collect_families(*, rank_start: int, limit: int) -> tuple[list[Family], dict[str, int]]:
    counts: Counter[str] = Counter({
        "pair_words_scanned": 0,
        "nonidentity_words_skipped": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "not_good_direction_masks": 0,
        "good_direction_survivors": 0,
        "covered_cases": 0,
        "non_two_source_cases": 0,
        "uncovered_cases": 0,
    })
    families: dict[str, Family] = {}
    next_case_index = 0

    for rank in range(rank_start, rank_start + limit):
        counts["pair_words_scanned"] += 1
        probe = profile_classify_choice(rank, 0)
        if probe is None:
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            result = profile_classify_choice(rank, mask)
            if result is None:
                raise RuntimeError("identity rank unexpectedly classified as nonidentity")
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
                raise RuntimeError(f"Lean classifier failed rank={rank} mask={mask}")
            _template_source_key, row_key, case, template_id = classified
            if template_id != result["template_id"]:
                raise RuntimeError(
                    f"template mismatch rank={rank} mask={mask}: "
                    f"{template_id} != {result['template_id']}"
                )
            if template_id not in TEMPLATE_TO_SOURCE_INDEX:
                raise ValueError(f"unsupported template {template_id!r}")

            key = surface_key("source_index_state_row_property", result)
            payload = source_index_state_payload(result)
            indices = tuple(int(i) for i in payload["indices"])
            if len(indices) != 2:
                raise ValueError(f"expected two source indices, got {indices!r}")
            family = families.get(key)
            if family is None:
                family = Family(
                    key=key,
                    template_id=template_id,
                    source_indices=(indices[0], indices[1]),
                    source_skeletons=skeleton_strings(payload),
                    row_property_key=str(result["row_property_key"]),
                )
                families[key] = family
            family.members.append(
                Member(
                    symbolic=SymbolicCase(
                        index=next_case_index,
                        case=case,
                        template_id=template_id,
                        family_key=key,
                        row_property_key=row_key,
                    )
                )
            )
            next_case_index += 1

    return (
        sorted(families.values(), key=lambda item: (-item.count, item.template_id, item.key)),
        dict(counts),
    )


def select_smoke_families(families: list[Family]) -> list[Family]:
    if not families:
        return []
    selected: dict[str, Family] = {}
    largest = max(families, key=lambda item: (item.count, item.key))
    selected[largest.key] = largest
    non_first = [item for item in families if item.template_id != "eq_eq_pos_var_first"]
    if non_first:
        item = max(non_first, key=lambda family: (family.count, family.key))
        selected[item.key] = item
    return sorted(selected.values(), key=lambda item: (-item.count, item.key))


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def source_match_lines(family_index: int, member: Member) -> list[str]:
    name = lean_case_name(member.symbolic.index)
    fam = family_name(family_index)
    return [
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_sourceMatches :",
        f"    {fam}_desc.SourceMatches {name}_rank.val {name}_mask := by",
        "  intro hlt",
        "  have hrank :",
        f"      (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        "  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
        "  have hfirstIndex :",
        f"      listGet? (translationConstraintSources {name}_seq)",
        f"          {fam}_desc.firstIndex = some {fam}_support.first := by",
        f"    decide",
        "  have hsecondIndex :",
        f"      listGet? (translationConstraintSources {name}_seq)",
        f"          {fam}_desc.secondIndex = some {fam}_support.second := by",
        f"    decide",
        "  have hchecks :",
        f"      SourceChecks {fam}_support {name}_rank.val hlt {name}_mask := by",
        f"    simp [SourceChecks, hseq, {fam}_support,",
        f"      checkTranslationConstraintSource, {name}_seq, impactFace]",
        "  exact ⟨",
        f"    by simpa [{fam}_desc, hseq] using hfirstIndex,",
        f"    by simpa [{fam}_desc, hseq] using hsecondIndex,",
        f"    by simpa [{fam}_desc] using hchecks",
        "  ⟩",
        "",
    ]


def sample_lines(family_index: int, member: Member) -> list[str]:
    cc = member.symbolic
    name = lean_case_name(cc.index)
    fam = family_name(family_index)
    return [
        *case_header_lines_for_family(
            ClassifiedCase(cc.index, cc.case, cc.template_id),
            f"{name}_nonEnumSupport",
        ),
        *rows_lines(cc),
        *source_match_lines(family_index, member),
        f"private theorem {name}_applies :",
        f"    {fam}_desc.Applies {name}_rank.val {name}_mask := by",
        "  exact ⟨",
        f"    {name}_sourceMatches,",
        f"    by simpa [SourceIndexTemplate.Rows, {fam}_desc, {fam}_support, {name}_support] using {name}_rows",
        "  ⟩",
        "",
        f"theorem {name}_goodKilled :",
        f"    TranslationGoodCaseKilled {name}_rank {name}_mask :=",
        f"  {fam}_family.killsOn {name}_rank.val {name}_rank.isLt",
        f"    {name}_mask {name}_applies",
        "",
    ]


def family_lines(index: int, family: Family, *, samples_per_family: int) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    lines = [
        f"/-- Non-enumerative source-index/state smoke `{family.key}`.",
        f"Observed bounded cases: {family.count}. Sampled cases: "
        f"{min(family.count, samples_per_family)}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_desc : SourceIndexStateFamilyDescriptor where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        f"def {name}_family : RowPropertyMembershipFamily where",
        f"  Applies := {name}_desc.Applies",
        "  covered := by",
        "    intro r mask h",
        f"    exact {name}_desc.covered_of_applies h",
        "",
        f"theorem {name}_killsOn : {name}_family.KillsOn :=",
        f"  {name}_family.killsOn",
        "",
    ]
    for member in family.members[:samples_per_family]:
        lines.extend(sample_lines(index, member))
    return lines


def module_lines(
    namespace: str,
    selected: list[Family],
    *,
    samples_per_family: int,
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated bounded non-enumerative source-index/state smoke for Phase 6Z.6K.8H.",
        "",
        "`Applies` is a broad source-index/state predicate.  It is not an",
        "inductive member list and does not carry exact rows, translation vectors,",
        "or Farkas multipliers as membership data.",
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
        lines.extend(family_lines(index, family, samples_per_family=samples_per_family))
    lines.extend([
        "theorem sourceIndexStateNonEnumSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
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
    samples_per_family: int,
    families: list[Family],
    selected: list[Family],
    counts: dict[str, int],
    emitted: bool,
    out: Path,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8H",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "samples_per_family": samples_per_family,
        "counts": counts,
        "all_family_count": len(families),
        "largest_family_cases": families[0].count if families else 0,
        "selected_family_count": len(selected),
        "selected_sample_count": sum(
            min(family.count, samples_per_family) for family in selected
        ),
        "lean_module_emitted": emitted,
        "lean_module": str(out),
        "decision": {
            "status": "nonenum-smoke-emitted" if emitted else "dry-run-only",
            "notes": [
                "Applies is source-index/state based, not an inductive rank/mask member predicate",
                "sample cases only demonstrate the broad predicate on bounded representatives",
                "generated Lean is bounded diagnostic smoke, not production coverage",
            ],
        },
        "selected_families": [family_summary(family) for family in selected],
        "top_families": [family_summary(family) for family in families[:12]],
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Phase 6Z.6K.8H Source-Index/State Non-Enumerative Smoke",
        "",
        "This diagnostic is not trusted as proof.  It emits a bounded Lean smoke",
        "whose family `Applies` predicates are broad source-index/state checks,",
        "not inductive rank/mask member lists.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Source-index/state families: `{payload['all_family_count']}`",
        f"- Selected families: `{payload['selected_family_count']}`",
        f"- Selected sample cases: `{payload['selected_sample_count']}`",
        "",
        "## Selected Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ]
    for family in payload["selected_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family["sample_members"][:5]
        )
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--samples-per-family", type=int, default=2)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--emit-smoke", action="store_true")
    args = parser.parse_args()

    validate_module_namespace(args.namespace)
    families, counts = collect_families(rank_start=args.rank_start, limit=args.limit)
    selected = select_smoke_families(families)
    emitted = bool(args.emit_smoke and not args.dry_run)
    if emitted:
        write_text(
            args.out,
            "\n".join(
                module_lines(
                    args.namespace,
                    selected,
                    samples_per_family=args.samples_per_family,
                )
            ),
        )

    payload = build_payload(
        rank_start=args.rank_start,
        limit=args.limit,
        samples_per_family=args.samples_per_family,
        families=families,
        selected=selected,
        counts=counts,
        emitted=emitted,
        out=args.out,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")
    if emitted:
        print(f"wrote {args.out}")


if __name__ == "__main__":
    main()
