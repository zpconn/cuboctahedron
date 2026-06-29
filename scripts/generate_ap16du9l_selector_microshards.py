#!/usr/bin/env python3
"""Emit bounded DU.9L selector-coordinate positive-survivor micro-shards.

This is proof-producing telemetry, not final coverage.  It exercises the
public-support selector/source-row path across a bounded rank window while
explicitly avoiding bad-direction replay.  The generated leaves prove facts
only for emitted GoodDirection survivor cases:

  theorem selectorPositiveSourceRowFacts
      {rank : Nat} {mask : SignMask}
      (hcase : SelectorPositiveCase rank mask) :
      SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask) rank mask

The final DU.9 completeness theorem still needs a membership theorem from
identity-linear `GoodDirectionAtRank` to this emitted positive-case language.
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

from generate_ap16du9k_selector_catalog_slice import (  # noqa: E402
    CLASSIFIER_NAMESPACE,
    SELECTOR_NAMESPACE,
    applies_lines,
    family_def_name,
    global_family_indices,
    key_ctor,
    selector_lookup_lines,
    source_facts_expr,
)
from generate_source_index_state_bounded_coverage import (  # noqa: E402
    RankMask,
    WindowData,
    collect_window,
    descriptor_lines,
)
from generate_source_index_state_nonenum_smoke import write_json, write_text  # noqa: E402
from generate_symbolic_row_family_smoke import lean_case_name  # noqa: E402
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


DEFAULT_OUT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateSelectorDU9LMicro"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9l_microshards.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSelectorDU9LMicro"
)


def shard_name(index: int) -> str:
    return f"Shard{index:03d}"


def chunked(items: list[RankMask], size: int) -> list[list[RankMask]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def selector_coord_lines(
    cases: list[RankMask],
    data: WindowData,
    global_index_by_key: dict[str, int],
) -> list[str]:
    lines = [
        "/-- Generated coordinate selector for this DU.9L micro-shard.",
        "",
        "It is intentionally specified only on emitted positive survivor cases;",
        "all other inputs return a harmless default. -/",
        "def selectorCoordAt (rank : Nat) (mask : SignMask) : SelectorCoordinate :=",
    ]
    for key in cases:
        family_index, _member = data.covered[key]
        global_index = global_index_by_key[data.families[family_index].key]
        lines.append(
            f"  if rank = {key.rank} ∧ mask.val = {key.mask} then "
            f"selectorCoordinateOfKey ClassifierKey.{key_ctor(global_index)} else"
        )
    lines.extend([
        "  selectorCoordinateOfKey ClassifierKey.k000",
        "",
    ])
    return lines


def positive_case_lines(cases: list[RankMask]) -> list[str]:
    lines = [
        "/-- Positive GoodDirection survivor cases represented in this shard. -/",
        "inductive SelectorPositiveCase : Nat -> SignMask -> Prop",
    ]
    for index, key in enumerate(cases):
        lines.append(
            f"  | c{index:03d} : SelectorPositiveCase {key.rank} "
            f"(⟨{key.mask}, by decide⟩ : SignMask)"
        )
    lines.append("")
    return lines


def positive_lookup_lines(cases: list[RankMask], data: WindowData) -> list[str]:
    lines = [
        "theorem selectorPositiveLookup",
        "    {rank : Nat} {mask : SignMask}",
        "    (hcase : SelectorPositiveCase rank mask) :",
        "    ∃ key : ClassifierKey,",
        "      keyOfSelectorCoordinate? (selectorCoordAt rank mask) = some key := by",
        "  cases hcase with",
    ]
    for index, key in enumerate(cases):
        _family_index, member = data.covered[key]
        name = lean_case_name(member.symbolic.index)
        lines.extend([
            f"  | c{index:03d} =>",
            f"      exact ⟨_, by simpa [selectorCoordAt] using {name}_selectorLookup⟩",
        ])
    lines.extend([
        "",
        "theorem selectorPositiveSourceRowFacts",
        "    {rank : Nat} {mask : SignMask}",
        "    (hcase : SelectorPositiveCase rank mask) :",
        "    SelectorCoordinateSourceRowFacts (selectorCoordAt rank mask)",
        "      rank mask := by",
        "  cases hcase with",
    ])
    for index, key in enumerate(cases):
        _family_index, member = data.covered[key]
        name = lean_case_name(member.symbolic.index)
        lines.extend([
            f"  | c{index:03d} =>",
            f"      simpa [selectorCoordAt, {name}_rank, {name}_mask] using {name}_selectorSourceRowFacts",
        ])
    lines.extend([
        "",
        "theorem shard_builds : True := by",
        "  trivial",
        "",
    ])
    return lines


def shard_lines(
    *,
    namespace: str,
    shard_index: int,
    data: WindowData,
    cases: list[RankMask],
    global_index_by_key: dict[str, int],
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke",
        "",
        "/-!",
        "Generated DU.9L selector-coordinate positive-survivor micro-shard.",
        "",
        "This file is bounded telemetry.  It proves selector lookup and public",
        "source/row facts only for emitted GoodDirection survivor cases.",
        "-/",
        "",
        f"namespace {namespace}.{shard_name(shard_index)}",
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
    lines.extend(selector_coord_lines(cases, data, global_index_by_key))
    for index, family in enumerate(data.families):
        lines.extend(descriptor_lines(index, family))
    for key in cases:
        family_index, member = data.covered[key]
        global_key_index = global_index_by_key[data.families[family_index].key]
        lines.extend(applies_lines(family_index, member))
        lines.extend(source_facts_expr(lean_case_name(member.symbolic.index), family_index, global_key_index))
        lines.extend(
            selector_lookup_lines(
                family_index,
                member,
                global_index_by_key,
                data.families[family_index].key,
            )
        )
    lines.extend(positive_case_lines(cases))
    lines.extend(positive_lookup_lines(cases, data))
    lines.extend([
        f"end {namespace}.{shard_name(shard_index)}",
        "",
    ])
    return lines


def module_name(namespace: str, index: int) -> str:
    return f"{namespace}.{shard_name(index)}"


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} DU.9L Selector Micro-Shards",
        "",
        "This is bounded telemetry, not final coverage.  The generated shards",
        "prove selector lookup and public source/row facts for emitted",
        "GoodDirection survivor cases only.",
        "",
        f"- Range: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- GoodDirection survivors in range: `{payload['total_good_direction_survivors']}`",
        f"- Emitted survivors: `{payload['emitted_survivors']}`",
        f"- Max survivors per shard: `{payload['max_survivors_per_shard']}`",
        f"- Shard count: `{payload['shard_count']}`",
        f"- Local families in collected window: `{payload['local_family_count']}`",
        f"- Global classifier keys touched: `{payload['global_key_count']}`",
        "",
        "## Shards",
        "",
        "| Shard | Cases | Module |",
        "| --- | ---: | --- |",
    ]
    for shard in payload["shards"]:
        lines.append(f"| `{shard['module']}` | {shard['case_count']} | `{shard['path']}` |")
    lines.extend([
        "",
        "Next step: guard-build these leaves serially.  Do not import them through",
        "a broad root until leaf telemetry is known.",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=4)
    parser.add_argument("--max-survivors", type=int, default=32)
    parser.add_argument("--max-survivors-per-shard", type=int, default=16)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8AP.16DU.9M")
    args = parser.parse_args()

    if args.limit <= 0:
        raise SystemExit("--limit must be positive")
    if args.max_survivors <= 0:
        raise SystemExit("--max-survivors must be positive")
    if args.max_survivors_per_shard <= 0:
        raise SystemExit("--max-survivors-per-shard must be positive")

    namespace = validate_module_namespace(args.namespace)
    data = collect_window(rank_start=args.rank_start, limit=args.limit)
    cases = sorted(data.covered, key=lambda item: (item.rank, item.mask))[: args.max_survivors]
    if not cases:
        raise SystemExit("selected window has no GoodDirection covered cases")

    global_index_by_key = global_family_indices()
    missing = [family.key for family in data.families if family.key not in global_index_by_key]
    if missing:
        raise RuntimeError(f"window families missing from global catalog: {missing[:3]}")

    args.out_dir.mkdir(parents=True, exist_ok=True)
    shards_payload: list[dict[str, Any]] = []
    touched_keys: set[int] = set()
    for shard_index, shard_cases in enumerate(chunked(cases, args.max_survivors_per_shard)):
        path = args.out_dir / f"{shard_name(shard_index)}.lean"
        write_text(
            path,
            "\n".join(
                shard_lines(
                    namespace=namespace,
                    shard_index=shard_index,
                    data=data,
                    cases=shard_cases,
                    global_index_by_key=global_index_by_key,
                )
            ),
        )
        for key in shard_cases:
            family_index, _member = data.covered[key]
            touched_keys.add(global_index_by_key[data.families[family_index].key])
        shards_payload.append({
            "index": shard_index,
            "module": module_name(namespace, shard_index),
            "path": str(path),
            "case_count": len(shard_cases),
            "cases": [{"rank": key.rank, "mask": key.mask} for key in shard_cases],
        })

    payload: dict[str, Any] = {
        "schema_version": 1,
        "phase": args.phase,
        "trusted_as_proof": False,
        "rank_start": args.rank_start,
        "rank_end": args.rank_start + args.limit,
        "limit": args.limit,
        "total_good_direction_survivors": len(data.covered),
        "emitted_survivors": len(cases),
        "max_survivors_per_shard": args.max_survivors_per_shard,
        "shard_count": len(shards_payload),
        "local_family_count": len(data.families),
        "global_key_count": len(touched_keys),
        "global_keys_touched": sorted(touched_keys),
        "namespace": namespace,
        "out_dir": str(args.out_dir),
        "shards": shards_payload,
        "decision": {
            "status": "microshards-emitted",
            "notes": [
                "This is bounded telemetry, not final generated coverage.",
                "The generated leaves are GoodDirection-only and do not replay bad-direction masks.",
                "Build leaves serially under the memory guard before composing roots.",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "range": [payload["rank_start"], payload["rank_end"]],
        "total_good_direction_survivors": payload["total_good_direction_survivors"],
        "emitted_survivors": payload["emitted_survivors"],
        "shard_count": payload["shard_count"],
        "out_dir": payload["out_dir"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
