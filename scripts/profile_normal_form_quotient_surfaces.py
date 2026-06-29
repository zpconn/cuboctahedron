#!/usr/bin/env python3
"""Profile source/row normal-form quotient surfaces.

This diagnostic is not proof.  It reads checkpointed source-index/state
classifier reports, reconstructs one real representative case per concrete
family, and compares candidate theorem surfaces that add row-normal-form and
source-normal-form data above the source-skeleton quotient.

The purpose is to decide whether the next Lean surface should use:

* source skeletons only;
* source skeletons plus integer/scaled row forms;
* source skeletons plus exact row shapes;
* concrete source support plus row forms; or
* a coarser row-form-only surface.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_symbolic_row_extraction_families import classify_choice  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9en_normal_form_quotients.json"
)

DEFAULT_SURFACES = [
    "concrete",
    "template_source_indices_row",
    "template_source_skeletons_row",
    "template_source_skeletons_integer_scaled",
    "template_source_skeletons_exact_row_shape",
    "template_support_integer_scaled",
    "template_support_exact_row_shape",
    "template_integer_scaled",
    "template_exact_row_shape",
    "integer_scaled",
    "exact_row_shape",
    "template",
]


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


def representative_result(family: dict[str, Any]) -> dict[str, Any]:
    samples = family.get("samples") or []
    if not samples:
        raise ValueError(f"family {family['key']} has no samples")
    sample = samples[0]
    result = classify_choice(int(sample["rank"]), int(sample["mask"]))
    if result is None or result.get("status") != "covered":
        raise RuntimeError(
            f"representative {sample} for family {family['key']} is not covered"
        )
    if str(result["template_id"]) != str(family["template_id"]):
        raise RuntimeError(f"template mismatch for family {family['key']}")
    if str(result["row_property_key"]) != str(family["row_property_key"]):
        raise RuntimeError(f"row-property mismatch for family {family['key']}")
    return result


def support_signature(result: dict[str, Any]) -> str:
    return json.dumps(result["raw"]["sources"], sort_keys=True, separators=(",", ":"))


def row_tuple(result: dict[str, Any], key: str) -> Any:
    sample = result["sample"]
    if key == "integer_scaled":
        return sample["integer_scaled"]
    if key == "exact_row_shape":
        return {
            "shape": result["exact_row_shape_key"],
            "first_line": sample["first_line"],
            "second_line": sample["second_line"],
            "multipliers": sample["multipliers"],
        }
    raise ValueError(key)


def family_record(family: dict[str, Any]) -> dict[str, Any]:
    result = representative_result(family)
    source_indices = [int(x) for x in family["source_indices"]]
    return {
        "family_key": str(family["key"]),
        "case_count": int(family["case_count"]),
        "template": str(family["template_id"]),
        "source_indices": source_indices,
        "source_skeletons": list(family["source_skeletons"]),
        "row_property": str(family["row_property_key"]),
        "support": support_signature(result),
        "integer_scaled": row_tuple(result, "integer_scaled"),
        "integer_scaled_key": str(result["integer_scaled_key"]),
        "exact_row_shape": row_tuple(result, "exact_row_shape"),
        "exact_row_shape_key": str(result["exact_row_shape_key"]),
        "source_agreement_key": str(result["source_agreement_key"]),
        "sample": family["samples"][0],
    }


def surface_payload(record: dict[str, Any], surface: str) -> Any:
    template = record["template"]
    if surface == "concrete":
        return {"family": record["family_key"]}
    if surface == "template_source_indices_row":
        return {
            "template": template,
            "source_indices": record["source_indices"],
            "row_property": record["row_property"],
        }
    if surface == "template_source_skeletons_row":
        return {
            "template": template,
            "source_skeletons": record["source_skeletons"],
            "row_property": record["row_property"],
        }
    if surface == "template_source_skeletons_integer_scaled":
        return {
            "template": template,
            "source_skeletons": record["source_skeletons"],
            "integer_scaled": record["integer_scaled"],
        }
    if surface == "template_source_skeletons_exact_row_shape":
        return {
            "template": template,
            "source_skeletons": record["source_skeletons"],
            "exact_row_shape": record["exact_row_shape"],
        }
    if surface == "template_support_integer_scaled":
        return {
            "template": template,
            "support": record["support"],
            "integer_scaled": record["integer_scaled"],
        }
    if surface == "template_support_exact_row_shape":
        return {
            "template": template,
            "support": record["support"],
            "exact_row_shape": record["exact_row_shape"],
        }
    if surface == "template_integer_scaled":
        return {"template": template, "integer_scaled": record["integer_scaled"]}
    if surface == "template_exact_row_shape":
        return {"template": template, "exact_row_shape": record["exact_row_shape"]}
    if surface == "integer_scaled":
        return {"integer_scaled": record["integer_scaled"]}
    if surface == "exact_row_shape":
        return {"exact_row_shape": record["exact_row_shape"]}
    if surface == "template":
        return {"template": template}
    raise ValueError(f"unknown surface {surface!r}")


def summarize_surface(records: list[dict[str, Any]], surface: str, top_limit: int) -> dict[str, Any]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    payloads: dict[str, Any] = {}
    for record in records:
        payload = surface_payload(record, surface)
        key = digest(payload)
        grouped[key].append(record)
        payloads.setdefault(key, payload)

    rows = []
    for key, group in grouped.items():
        cases = sum(int(record["case_count"]) for record in group)
        templates = sorted({record["template"] for record in group})
        source_skeletons = {
            json.dumps(record["source_skeletons"], sort_keys=True)
            for record in group
        }
        supports = {record["support"] for record in group}
        integer_scaled = {record["integer_scaled_key"] for record in group}
        exact_row_shapes = {record["exact_row_shape_key"] for record in group}
        rows.append({
            "key": key,
            "case_count": cases,
            "concrete_family_count": len(group),
            "template_count": len(templates),
            "source_skeleton_count": len(source_skeletons),
            "support_count": len(supports),
            "integer_scaled_count": len(integer_scaled),
            "exact_row_shape_count": len(exact_row_shapes),
            "payload": payloads[key],
            "sample_families": [
                {
                    "family_key": record["family_key"],
                    "case_count": record["case_count"],
                    "source_indices": record["source_indices"],
                    "sample": record["sample"],
                }
                for record in sorted(
                    group,
                    key=lambda item: (-int(item["case_count"]), item["family_key"]),
                )[:4]
            ],
        })
    rows.sort(key=lambda item: (-int(item["case_count"]), str(item["key"])))
    multi = [row for row in rows if int(row["concrete_family_count"]) > 1]
    return {
        "surface": surface,
        "group_count": len(rows),
        "case_count": sum(int(record["case_count"]) for record in records),
        "concrete_family_count": len(records),
        "multi_family_group_count": len(multi),
        "multi_family_case_count": sum(int(row["case_count"]) for row in multi),
        "largest_group_cases": rows[0]["case_count"] if rows else 0,
        "largest_group_concrete_families": rows[0]["concrete_family_count"] if rows else 0,
        "groups_with_multiple_supports": sum(
            1 for row in rows if int(row["support_count"]) > 1
        ),
        "groups_with_multiple_integer_scaled": sum(
            1 for row in rows if int(row["integer_scaled_count"]) > 1
        ),
        "groups_with_multiple_exact_row_shapes": sum(
            1 for row in rows if int(row["exact_row_shape_count"]) > 1
        ),
        "top_groups": rows[:top_limit],
    }


def summarize(reports: list[Path], surfaces: list[str], top_limit: int) -> dict[str, Any]:
    families = load_families(reports)
    records = [family_record(family) for family in families]
    return {
        "schema_version": 1,
        "mode": "normal_form_quotient_surface_profile",
        "phase": "6Z.6K.8AP.16DU.9EN",
        "trusted_as_proof": False,
        "reports": [str(path) for path in reports],
        "concrete_family_count": len(records),
        "case_count": sum(int(record["case_count"]) for record in records),
        "surfaces": [
            summarize_surface(records, surface=surface, top_limit=top_limit)
            for surface in surfaces
        ],
        "decision": {
            "status": "diagnostic-only",
            "notes": [
                "low group counts are only theorem-surface candidates",
                "surfaces carrying exact supports are expected to be too concrete",
                "the preferred production surface should minimize group count without hiding multiple semantic obligations in one proof",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9EN Normal-Form Quotient Surfaces",
        "",
        "This diagnostic is not trusted as proof. It compares candidate",
        "source/row normal-form quotient surfaces using one reconstructed",
        "representative case per concrete source-index/state family.",
        "",
        f"- Reports: `{len(payload['reports'])}`",
        f"- Concrete families: `{payload['concrete_family_count']}`",
        f"- Cases: `{payload['case_count']}`",
        "",
        "## Surfaces",
        "",
        (
            "| Surface | Groups | Multi-family groups | Multi-family cases | "
            "Largest cases | Largest concrete families | Multi-support groups | "
            "Multi-int-row groups | Multi-exact-row groups |"
        ),
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for surface in payload["surfaces"]:
        lines.append(
            f"| `{surface['surface']}` | {surface['group_count']} | "
            f"{surface['multi_family_group_count']} | "
            f"{surface['multi_family_case_count']} | "
            f"{surface['largest_group_cases']} | "
            f"{surface['largest_group_concrete_families']} | "
            f"{surface['groups_with_multiple_supports']} | "
            f"{surface['groups_with_multiple_integer_scaled']} | "
            f"{surface['groups_with_multiple_exact_row_shapes']} |"
        )
    lines.extend(["", "## Top Groups", ""])
    for surface in payload["surfaces"]:
        lines.extend([
            f"### `{surface['surface']}`",
            "",
            "| Cases | Concrete families | Payload |",
            "| ---: | ---: | --- |",
        ])
        for group in surface["top_groups"]:
            compact = json.dumps(group["payload"], sort_keys=True)
            if len(compact) > 500:
                compact = compact[:497] + "..."
            lines.append(
                f"| {group['case_count']} | {group['concrete_family_count']} | "
                f"`{compact}` |"
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
    parser.add_argument("--surface", action="append", default=None)
    args = parser.parse_args()
    surfaces = args.surface or DEFAULT_SURFACES
    payload = summarize(args.input, surfaces, args.top_limit)
    write_json(args.json, payload)
    md_path = args.md or args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "phase": payload["phase"],
        "families": payload["concrete_family_count"],
        "cases": payload["case_count"],
        "surfaces": {
            surface["surface"]: surface["group_count"]
            for surface in payload["surfaces"]
        },
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
