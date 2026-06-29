#!/usr/bin/env python3
"""Emit a DU.9H selector-coordinate Lean smoke.

The generated module is small infrastructure, not global coverage.  It exposes
the deterministic selector coordinate found by
`audit_ap16du9h_source_index_state_selector.py`:

    template + source indices + row-property digest

for the existing public `ClassifierKey` catalog.  The next proof-producing
step can target this coordinate instead of trying to decide full source/row
facts or replay concrete rank/mask cases.
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

from generate_source_index_state_classifier_smoke import family_name  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    collect_families,
)
from generate_translation_two_source_evidence import validate_module_namespace  # noqa: E402


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16du2_source_index_state_classifier_profile.json")
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateSelectorDU9HSmoke.lean"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9h_selector_coordinate_smoke.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSelectorDU9HSmoke"
)
CLASSIFIER_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateClassifierDU3Smoke"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def digest_ctor(index: int) -> str:
    return f"d{index:03d}"


def key_ctor(index: int) -> str:
    return f"k{index:03d}"


def module_lines(namespace: str, families: list[Any]) -> list[str]:
    row_property_keys = sorted({family.row_property_key for family in families})
    row_property_to_index = {key: index for index, key in enumerate(row_property_keys)}

    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke",
        "",
        "/-!",
        "Generated DU.9H selector-coordinate smoke.",
        "",
        "This module exposes the deterministic coordinate identified by the",
        "DU.9H audit: template + source indices + row-property digest.  It does",
        "not prove bounded classifier completeness by itself.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        f"open {CLASSIFIER_NAMESPACE}",
        "",
        "set_option linter.unusedVariables false",
        "",
        "/-- Opaque names for the row-property digests observed in the bounded DU.9 catalog. -/",
        "inductive RowPropertyDigest",
    ]
    for index, _key in enumerate(row_property_keys):
        lines.append(f"  | {digest_ctor(index)}")
    lines.extend([
        "deriving DecidableEq, Repr",
        "",
        "/-- The source selector coordinate that determines a bounded DU.9 classifier key. -/",
        "structure SelectorCoordinate where",
        "  template : SourceIndexTemplate",
        "  firstIndex : Nat",
        "  secondIndex : Nat",
        "  rowProperty : RowPropertyDigest",
        "deriving DecidableEq, Repr",
        "",
        "def rowPropertyDigestOfKey : ClassifierKey -> RowPropertyDigest",
    ])
    for index, family in enumerate(families):
        lines.append(
            f"  | .{key_ctor(index)} => .{digest_ctor(row_property_to_index[family.row_property_key])}"
        )
    lines.extend([
        "",
        "def selectorCoordinateOfKey (key : ClassifierKey) : SelectorCoordinate :=",
        "  let sourceKey := key.toSourceIndexStateKey",
        "  { template := sourceKey.template",
        "    firstIndex := sourceKey.firstIndex",
        "    secondIndex := sourceKey.secondIndex",
        "    rowProperty := rowPropertyDigestOfKey key }",
        "",
        f"def selectorCoordinateAt (i : Fin {len(families)}) : SelectorCoordinate :=",
    ])
    for index, _family in enumerate(families):
        lines.append(
            f"  if i.val = {index} then selectorCoordinateOfKey ClassifierKey.{key_ctor(index)} else"
        )
    lines.append("  selectorCoordinateOfKey ClassifierKey.k000")
    lines.extend([
        "",
        "theorem selectorCoordinateAt_toFin (key : ClassifierKey) :",
        "    selectorCoordinateAt key.toFin = selectorCoordinateOfKey key := by",
        "  cases key <;> rfl",
        "",
        "/-- Lightweight generated lookup by DU.9H selector coordinate. -/",
        "def keyOfSelectorCoordinate? (coord : SelectorCoordinate) : Option ClassifierKey :=",
    ])
    for index, _family in enumerate(families):
        lines.append(
            f"  if coord = selectorCoordinateOfKey ClassifierKey.{key_ctor(index)} then "
            f"some ClassifierKey.{key_ctor(index)} else"
        )
    lines.extend([
        "  none",
        "",
        "/-- The selector lookup recognizes every generated classifier key.",
        "",
        "This is intentionally weaker than a full pairwise injectivity theorem: the",
        "all-pairs proof expands to 15,625 cases and timed out under the guarded",
        "smoke.  The lookup theorem is the proof-usable direction needed by",
        "future generated selector witnesses. -/",
        "theorem keyOfSelectorCoordinate?_selectorCoordinateOfKey",
        "    (key : ClassifierKey) :",
        "    keyOfSelectorCoordinate? (selectorCoordinateOfKey key) = some key := by",
        "  cases key <;> rfl",
        "",
        "/-- Smoke theorem: every generated classifier key has a public selector coordinate. -/",
        "theorem selectorCoordinateSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9H selector-coordinate smoke",
        "",
        "This generated Lean module is not global coverage. It exposes the",
        "deterministic DU.9H selector coordinate for the bounded classifier",
        "catalog.",
        "",
        f"- Classifier families: `{payload['family_count']}`",
        f"- Row-property digests: `{payload['row_property_digest_count']}`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
        "## Coordinate",
        "",
        "`template + firstIndex + secondIndex + rowPropertyDigest`",
        "",
        "## Lean Surface",
        "",
        "- `selectorCoordinateAt_toFin` relates finite catalog indices to keys.",
        "- `keyOfSelectorCoordinate?` is a lightweight generated lookup.",
        "- `keyOfSelectorCoordinate?_selectorCoordinateOfKey` recognizes every",
        "  generated classifier key without a 125-by-125 injectivity proof.",
        "",
        "The next theorem should prove this coordinate from identity-linear",
        "`GoodDirectionAtRank`, then use the coordinate to recover a public",
        "catalog key and theorem-valued source/row facts.",
        "",
    ]
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.profile_json)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    families, _counts = collect_families(rank_start=rank_start, limit=rank_end - rank_start)
    expected_count = int(profile.get("source_index_state_family_count", len(families)))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, families)))

    row_property_keys = sorted({family.row_property_key for family in families})
    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9H.selector",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_end,
        "family_count": len(families),
        "row_property_digest_count": len(row_property_keys),
        "lean_module": str(args.out),
        "namespace": namespace,
        "decision": {
            "status": "selector-coordinate-smoke-emitted",
            "notes": [
                "This is infrastructure only, not bounded classifier completeness.",
                "No concrete rank/mask examples are emitted.",
                "No row/source arithmetic is reduced in the generated theorem surface.",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "family_count": payload["family_count"],
        "row_property_digest_count": payload["row_property_digest_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
