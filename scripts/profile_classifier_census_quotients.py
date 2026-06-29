#!/usr/bin/env python3
"""Profile coarser quotient surfaces for classifier census families.

This diagnostic is not proof.  It reads checkpointed source-index/state
classifier census reports and asks how many groups remain if concrete family
keys are quotiented by coarser metadata such as source skeletons or row
properties.  The goal is to decide whether the next Lean surface should move
above concrete source indices.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path
from typing import Any


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9ej_classifier_census_quotients.json"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def digest(payload: Any) -> str:
    raw = json.dumps(payload, sort_keys=True, separators=(",", ":")).encode()
    return hashlib.sha256(raw).hexdigest()


def checkpoint_paths(report: dict[str, Any]) -> list[Path]:
    checkpoint_dir = Path(str(report["checkpoint_dir"]))
    paths: list[Path] = []
    for start, end in report["ranges"]:
        path = checkpoint_dir / f"window_{int(start):09d}_{int(end):09d}.json"
        if not path.exists():
            raise FileNotFoundError(f"missing checkpoint {path}")
        paths.append(path)
    return paths


def load_families(reports: list[Path]) -> list[dict[str, Any]]:
    families: dict[str, dict[str, Any]] = {}
    for report_path in reports:
        report = read_json(report_path)
        for checkpoint in checkpoint_paths(report):
            payload = read_json(checkpoint)
            for family in payload["families"]:
                key = str(family["key"])
                current = families.get(key)
                if current is None:
                    current = dict(family)
                    current["case_count"] = 0
                    families[key] = current
                current["case_count"] += int(family["case_count"])
    return list(families.values())


def quotient_payload(family: dict[str, Any], surface: str) -> Any:
    template = family["template_id"]
    source_indices = family["source_indices"]
    source_skeletons = family["source_skeletons"]
    row_property = family["row_property_key"]
    if surface == "concrete":
        return {"key": family["key"]}
    if surface == "template_source_indices_row":
        return {
            "template": template,
            "source_indices": source_indices,
            "row_property": row_property,
        }
    if surface == "template_source_skeletons_row":
        return {
            "template": template,
            "source_skeletons": source_skeletons,
            "row_property": row_property,
        }
    if surface == "template_source_kinds_row":
        kinds = []
        for raw in source_skeletons:
            skeleton = json.loads(raw)
            kinds.append(skeleton.get("kind"))
        return {
            "template": template,
            "source_kinds": kinds,
            "row_property": row_property,
        }
    if surface == "template_row":
        return {"template": template, "row_property": row_property}
    if surface == "row":
        return {"row_property": row_property}
    if surface == "template":
        return {"template": template}
    raise ValueError(f"unknown surface {surface!r}")


def summarize_surface(
    families: list[dict[str, Any]],
    *,
    surface: str,
    top_limit: int,
) -> dict[str, Any]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    payloads: dict[str, Any] = {}
    for family in families:
        payload = quotient_payload(family, surface)
        key = digest(payload)
        grouped[key].append(family)
        payloads.setdefault(key, payload)

    rows = []
    for key, group in grouped.items():
        case_count = sum(int(family["case_count"]) for family in group)
        concrete_count = len(group)
        rows.append({
            "key": key,
            "case_count": case_count,
            "concrete_family_count": concrete_count,
            "payload": payloads[key],
            "sample_concrete_families": [
                {
                    "key": family["key"],
                    "case_count": family["case_count"],
                    "template_id": family["template_id"],
                    "source_indices": family["source_indices"],
                }
                for family in sorted(
                    group,
                    key=lambda item: (-int(item["case_count"]), str(item["key"])),
                )[:3]
            ],
        })
    rows.sort(key=lambda item: (-int(item["case_count"]), str(item["key"])))
    multi = [row for row in rows if int(row["concrete_family_count"]) > 1]
    return {
        "surface": surface,
        "quotient_group_count": len(rows),
        "concrete_family_count": len(families),
        "case_count": sum(int(family["case_count"]) for family in families),
        "multi_concrete_group_count": len(multi),
        "multi_concrete_case_count": sum(int(row["case_count"]) for row in multi),
        "largest_group_cases": rows[0]["case_count"] if rows else 0,
        "largest_group_concrete_families": rows[0]["concrete_family_count"] if rows else 0,
        "top_groups": rows[:top_limit],
    }


def summarize(*, reports: list[Path], surfaces: list[str], top_limit: int) -> dict[str, Any]:
    families = load_families(reports)
    return {
        "schema_version": 1,
        "mode": "source_index_state_classifier_quotient_profile",
        "phase": "6Z.6K.8AP.16DU.9EJ",
        "trusted_as_proof": False,
        "reports": [str(path) for path in reports],
        "concrete_family_count": len(families),
        "case_count": sum(int(family["case_count"]) for family in families),
        "surfaces": [
            summarize_surface(families, surface=surface, top_limit=top_limit)
            for surface in surfaces
        ],
        "decision": {
            "status": "diagnostic-only",
            "notes": [
                "coarser quotient counts are not proof of soundness",
                "low group counts identify theorem surfaces worth formalizing",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9EJ Classifier Quotient Profile",
        "",
        "This diagnostic is not trusted as proof. It groups checkpointed",
        "source-index/state classifier families under coarser quotient surfaces",
        "to decide whether the next Lean surface should move above concrete",
        "source indices.",
        "",
        f"- Reports: `{len(payload['reports'])}`",
        f"- Concrete families: `{payload['concrete_family_count']}`",
        f"- Cases: `{payload['case_count']}`",
        "",
        "## Surfaces",
        "",
        (
            "| Surface | Groups | Concrete families | Multi-family groups | "
            "Multi-family cases | Largest cases | Largest concrete families |"
        ),
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for surface in payload["surfaces"]:
        lines.append(
            f"| `{surface['surface']}` | {surface['quotient_group_count']} | "
            f"{surface['concrete_family_count']} | "
            f"{surface['multi_concrete_group_count']} | "
            f"{surface['multi_concrete_case_count']} | "
            f"{surface['largest_group_cases']} | "
            f"{surface['largest_group_concrete_families']} |"
        )
    lines.extend(["", "## Top Groups By Surface", ""])
    for surface in payload["surfaces"]:
        lines.extend([
            f"### `{surface['surface']}`",
            "",
            "| Cases | Concrete families | Payload |",
            "| ---: | ---: | --- |",
        ])
        for group in surface["top_groups"]:
            compact_payload = json.dumps(group["payload"], sort_keys=True)
            lines.append(
                f"| {group['case_count']} | {group['concrete_family_count']} | "
                f"`{compact_payload}` |"
            )
        lines.append("")
    lines.extend(["## Notes", ""])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, action="append", required=True)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=None)
    parser.add_argument("--top-limit", type=int, default=8)
    parser.add_argument(
        "--surface",
        action="append",
        default=None,
        help="surface to profile; may be repeated",
    )
    args = parser.parse_args()
    surfaces = args.surface or [
        "concrete",
        "template_source_indices_row",
        "template_source_skeletons_row",
        "template_source_kinds_row",
        "template_row",
        "row",
        "template",
    ]
    payload = summarize(reports=args.input, surfaces=surfaces, top_limit=args.top_limit)
    write_json(args.json, payload)
    md_path = args.md if args.md is not None else args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "concrete_family_count": payload["concrete_family_count"],
        "case_count": payload["case_count"],
        "surfaces": {
            surface["surface"]: surface["quotient_group_count"]
            for surface in payload["surfaces"]
        },
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
