#!/usr/bin/env python3
"""Emit a tiny DU.9K selector-coordinate catalog slice.

This is a proof-producing smoke for the selector-coordinate bridge.  It keeps
the range deliberately tiny (`[0,1)` by default): the point is to verify that a
generated coordinate selector plus source/row facts can prove facts for all
positive survivor masks in the slice, without replaying bad-direction evidence.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_bounded_coverage import (  # noqa: E402
    RankMask,
    WindowData,
    collect_window,
    descriptor_lines,
)
from generate_source_index_state_nonenum_smoke import collect_families, write_json, write_text  # noqa: E402
from generate_symbolic_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
    lean_case_name,
    rows_lines,
)
from generate_translation_row_relation_classifier import ClassifiedCase  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateSelectorDU9KSlice.lean"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9k_selector_catalog_slice.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSelectorDU9KSlice"
)
SELECTOR_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSelectorDU9HSmoke"
)
CLASSIFIER_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateClassifierDU3Smoke"
)


def key_ctor(index: int) -> str:
    return f"k{index:03d}"


def family_def_name(index: int) -> str:
    return f"fam_{index:03d}"


def global_family_indices() -> dict[str, int]:
    families, _counts = collect_families(rank_start=0, limit=5000)
    return {family.key: index for index, family in enumerate(families)}


def selector_coord_lines(data: WindowData, global_index_by_key: dict[str, int]) -> list[str]:
    covered_by_mask: dict[int, int] = {}
    for key, (family_index, _member) in data.covered.items():
        family = data.families[family_index]
        covered_by_mask[key.mask] = global_index_by_key[family.key]

    lines = [
        "/-- Tiny generated coordinate selector for the measured DU.9K slice.",
        "",
        "It is intentionally only specified on the smoke range; outside the range",
        "and on not-GoodDirection masks it returns a harmless default. -/",
        "def selectorCoordAt (rank : Nat) (mask : SignMask) : SelectorCoordinate :=",
        f"  if rank = {data.rank_start} then",
    ]
    for mask in sorted(covered_by_mask):
        key_index = covered_by_mask[mask]
        lines.append(
            f"    if mask.val = {mask} then "
            f"selectorCoordinateOfKey ClassifierKey.{key_ctor(key_index)} else"
        )
    lines.extend([
        "    selectorCoordinateOfKey ClassifierKey.k000",
        "  else",
        "    selectorCoordinateOfKey ClassifierKey.k000",
        "",
    ])
    return lines


def applies_lines(family_index: int, member: Any) -> list[str]:
    cc = member.symbolic
    name = lean_case_name(cc.index)
    fam = family_def_name(family_index)
    return [
        *case_header_lines_for_family(
            ClassifiedCase(cc.index, cc.case, cc.template_id),
            f"{name}_boundedSupport",
        ),
        *rows_lines(cc),
        *source_matches_lines_for_slice(family_index, member),
        f"private theorem {name}_applies :",
        f"    {fam}_desc.Applies {name}_rank.val {name}_mask := by",
        "  exact ⟨",
        f"    {name}_sourceMatches,",
        f"    by simpa [SourceIndexTemplate.Rows, {fam}_desc, {fam}_support, {name}_support] using {name}_rows",
        "  ⟩",
        "",
    ]


def source_matches_lines_for_slice(family_index: int, member: Any) -> list[str]:
    # Import locally to keep this script's dependency surface explicit above.
    from generate_source_index_state_nonenum_smoke import source_match_lines

    return source_match_lines(family_index, member)


def source_facts_expr(case_name: str, family_index: int, key_index: int) -> list[str]:
    fam = family_def_name(family_index)
    return [
        "    { firstSource := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [ClassifierKey.toSourceIndexStateKey, {fam}_desc] using hs.1",
        "      secondSource := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [ClassifierKey.toSourceIndexStateKey, {fam}_desc] using hs.2.1",
        "      sourceChecks := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [ClassifierKey.toSourceIndexStateKey, {fam}_desc] using hs.2.2",
        "    }",
    ]


def selector_lookup_lines(
    family_index: int,
    member: Any,
    global_index_by_key: dict[str, int],
    family_key: str,
) -> list[str]:
    cc = member.symbolic
    name = lean_case_name(cc.index)
    key_index = global_index_by_key[family_key]
    key = f"ClassifierKey.{key_ctor(key_index)}"
    return [
        f"private theorem {name}_selectorLookup :",
        f"    keyOfSelectorCoordinate? (selectorCoordinateOfKey {key}) =",
        f"      some {key} :=",
        f"  keyOfSelectorCoordinate?_selectorCoordinateOfKey {key}",
        "",
    ]


def positive_survivor_theorem_lines(data: WindowData) -> list[str]:
    rank = data.rank_start
    if data.limit != 1:
        raise ValueError("this smoke currently expects a one-rank slice")
    masks = sorted(key.mask for key in data.covered)
    lines = [
        "/-- Positive GoodDirection survivor masks represented in this tiny slice. -/",
        "inductive SelectorPositiveMask : SignMask -> Prop",
    ]
    for mask in masks:
        lines.append(
            f"  | m{mask:02d} : SelectorPositiveMask "
            f"(⟨{mask}, by decide⟩ : SignMask)"
        )
    lines.extend([
        "",
        "/--",
        "Every positive survivor mask in the tiny slice recovers a classifier",
        "key from the DU.9K selector coordinate.",
        "",
        "This deliberately avoids the not-GoodDirection masks; the failed full",
        "catalog smoke showed that replaying those bad-mask witnesses in this",
        "file crosses the memory guard.",
        "-/",
        "theorem selectorPositiveLookup",
        "    {mask : SignMask} (hmask : SelectorPositiveMask mask) :",
        f"    ∃ key : ClassifierKey,",
        f"      keyOfSelectorCoordinate? (selectorCoordAt {rank} mask) = some key := by",
        "  cases hmask with",
    ])
    for mask in masks:
        key = RankMask(rank, mask)
        _family_index, member = data.covered[key]
        name = lean_case_name(member.symbolic.index)
        lines.append(f"  | m{mask:02d} =>")
        lines.append(f"      exact ⟨_, by simpa [selectorCoordAt] using {name}_selectorLookup⟩")
    lines.extend([
        "",
        "theorem selectorCatalogSlice_builds : True := by",
        "  trivial",
        "",
    ])
    return lines


def module_lines(namespace: str, data: WindowData, global_index_by_key: dict[str, int]) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke",
        "",
        "/-!",
        "Generated DU.9K selector-coordinate positive-survivor slice.",
        "",
        "This is a tiny proof-producing smoke: it proves selector-coordinate",
        "local source/row facts and selector lookup for positive GoodDirection",
        "survivor masks in `[0,1)`, while keeping broad generated coverage out",
        "of this file.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        f"open {CLASSIFIER_NAMESPACE}",
        f"open {SELECTOR_NAMESPACE}",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    lines.extend(selector_coord_lines(data, global_index_by_key))
    for index, family in enumerate(data.families):
        lines.extend(descriptor_lines(index, family))
    for key in sorted(data.covered, key=lambda item: item.mask):
        family_index, member = data.covered[key]
        lines.extend(applies_lines(family_index, member))
        lines.extend(
            selector_lookup_lines(
                family_index,
                member,
                global_index_by_key,
                data.families[family_index].key,
            )
        )
    lines.extend(positive_survivor_theorem_lines(data))
    lines.extend([
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    return "\n".join([
        "# Phase 6Z.6K.8AP.16DU.9K selector positive-survivor slice",
        "",
        "Tiny proof-producing smoke for the DU.9K selector-coordinate bridge.",
        "",
        f"- Range: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- GoodDirection survivors: `{payload['counts']['good_direction_survivors']}`",
        f"- Emitted positive survivors: `{payload['emitted_positive_survivors']}`",
        f"- Not-GoodDirection masks: `{payload['counts']['not_good_direction_masks']}`",
        f"- Local families: `{payload['local_family_count']}`",
        f"- Global classifier keys touched: `{payload['global_key_count']}`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
        "The module proves:",
        "",
        "```lean",
        "inductive SelectorPositiveMask : SignMask -> Prop",
        "",
        "theorem selectorPositiveLookup",
        "  {mask : SignMask} (hmask : SelectorPositiveMask mask) :",
        "  ∃ key : ClassifierKey,",
        "    keyOfSelectorCoordinate? (selectorCoordAt 0 mask) = some key",
        "```",
        "",
        "This is not production coverage. A full catalog attempt on the same",
        "slice replayed 48 bad-direction masks and was killed by the memory",
        "guard at 7.88 GiB RSS; an all-positive-survivor version was also",
        "killed under the same guard. A one-survivor public source/row-fact",
        "attempt then failed because global classifier keys point to private",
        "support definitions while the slice rebuilt local copies. The",
        "production path needs a shared public source/row producer bridge or",
        "support exposure before selector-coordinate leaves can erase to the",
        "finite public catalog.",
        "",
    ])


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument(
        "--max-survivors",
        type=int,
        default=1,
        help="maximum positive survivor masks to emit in this smoke",
    )
    args = parser.parse_args()

    if args.limit != 1:
        raise SystemExit("DU.9K slice smoke currently supports --limit 1 only")

    namespace = validate_module_namespace(args.namespace)
    data = collect_window(rank_start=args.rank_start, limit=args.limit)
    if not data.covered:
        raise SystemExit("selected slice has no GoodDirection covered cases")
    total_positive_survivors = len(data.covered)
    if args.max_survivors <= 0:
        raise SystemExit("--max-survivors must be positive")
    selected_covered = dict(
        sorted(data.covered.items(), key=lambda item: item[0].mask)[: args.max_survivors]
    )
    data.covered = selected_covered
    global_index_by_key = global_family_indices()
    missing = [family.key for family in data.families if family.key not in global_index_by_key]
    if missing:
        raise RuntimeError(f"slice families missing from global catalog: {missing[:3]}")

    write_text(args.out, "\n".join(module_lines(namespace, data, global_index_by_key)))

    touched = {
        global_index_by_key[data.families[family_index].key]
        for family_index, _member in data.covered.values()
    }
    payload: dict[str, Any] = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9K.selector_positive_slice",
        "trusted_as_proof": False,
        "rank_start": args.rank_start,
        "rank_end": args.rank_start + args.limit,
        "counts": data.counts,
        "total_positive_survivors": total_positive_survivors,
        "emitted_positive_survivors": len(data.covered),
        "local_family_count": len(data.families),
        "global_key_count": len(touched),
        "global_keys_touched": sorted(touched),
        "lean_module": str(args.out),
        "namespace": namespace,
        "decision": {
            "status": "selector-positive-slice-emitted",
            "notes": [
                "This is a tiny proof-producing smoke, not production coverage.",
                "It exercises selector-coordinate key recovery on a capped positive-survivor subset.",
                "A full catalog smoke with bad-direction replay is recorded separately as memory-rejected.",
                "An all-positive-survivor smoke for rank 0 was also memory-rejected under the same guard.",
                "A one-survivor public source/row-fact smoke exposed a private-support mismatch.",
                "The final route still needs a compact production coordinate emitter plus a public shared source/row producer bridge.",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "range": [payload["rank_start"], payload["rank_end"]],
        "good_direction_survivors": data.counts["good_direction_survivors"],
        "emitted_positive_survivors": payload["emitted_positive_survivors"],
        "not_good_direction_masks": data.counts["not_good_direction_masks"],
        "local_family_count": payload["local_family_count"],
        "global_key_count": payload["global_key_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
