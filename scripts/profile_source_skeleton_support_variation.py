#!/usr/bin/env python3
"""Profile support and row-shape variation inside source-skeleton quotients.

This diagnostic is not proof.  It reads checkpointed source-index/state family
reports, recovers one real representative case for each concrete family, and
then measures what still varies after quotienting by
`template + source skeletons + row property`.

The preceding 9EK diagnostic showed that source skeletons collapse many
concrete source-index families.  This script asks the next question: does a
source-skeleton group still contain many concrete supports, source-agreement
signatures, or row-normal forms?
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
    "scripts/generated/phase6z6k8ap16du9em_source_skeleton_support_variation.json"
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


def skeleton_payload(family: dict[str, Any]) -> dict[str, Any]:
    return {
        "template": family["template_id"],
        "source_skeletons": family["source_skeletons"],
        "row_property": family["row_property_key"],
    }


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
    indices = result["sample"]["source_agreement"]["indices"]
    if [int(indices[0]), int(indices[1])] != [int(x) for x in family["source_indices"]]:
        raise RuntimeError(f"source-index mismatch for family {family['key']}")
    return result


def support_signature(result: dict[str, Any]) -> str:
    return json.dumps(result["raw"]["sources"], sort_keys=True, separators=(",", ":"))


def summarize_group(key: str, payload: Any, rows: list[dict[str, Any]]) -> dict[str, Any]:
    cases = sum(int(row["case_count"]) for row in rows)
    source_indices = Counter(row["source_indices"] for row in rows)
    supports = Counter(row["support_signature"] for row in rows)
    source_agreements = Counter(row["source_agreement_key"] for row in rows)
    integer_scaled = Counter(row["integer_scaled_key"] for row in rows)
    exact_row_shapes = Counter(row["exact_row_shape_key"] for row in rows)

    def top(counter: Counter[str], limit: int = 6) -> list[dict[str, Any]]:
        return [
            {"key": value, "family_count": count}
            for value, count in counter.most_common(limit)
        ]

    return {
        "key": key,
        "payload": payload,
        "case_count": cases,
        "concrete_family_count": len(rows),
        "source_index_pair_count": len(source_indices),
        "support_signature_count": len(supports),
        "source_agreement_key_count": len(source_agreements),
        "integer_scaled_key_count": len(integer_scaled),
        "exact_row_shape_key_count": len(exact_row_shapes),
        "top_support_signatures": top(supports),
        "top_source_agreement_keys": top(source_agreements),
        "top_integer_scaled_keys": top(integer_scaled),
        "top_exact_row_shape_keys": top(exact_row_shapes),
        "sample_families": [
            {
                "family_key": row["family_key"],
                "case_count": row["case_count"],
                "source_indices": list(row["source_indices"]),
                "sample": row["sample"],
                "support_signature": row["support_signature"],
                "exact_row_shape_key": row["exact_row_shape_key"],
            }
            for row in sorted(
                rows,
                key=lambda item: (-int(item["case_count"]), str(item["family_key"])),
            )[:4]
        ],
    }


def summarize(reports: list[Path], top_limit: int) -> dict[str, Any]:
    families = load_families(reports)
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    payloads: dict[str, Any] = {}
    representative_failures: list[str] = []
    for family in families:
        payload = skeleton_payload(family)
        group_key = digest(payload)
        payloads.setdefault(group_key, payload)
        try:
            result = representative_result(family)
        except Exception as exc:  # diagnostic report should capture failures
            representative_failures.append(f"{family['key']}: {exc}")
            continue
        grouped[group_key].append({
            "family_key": str(family["key"]),
            "case_count": int(family["case_count"]),
            "source_indices": tuple(int(x) for x in family["source_indices"]),
            "sample": family["samples"][0],
            "support_signature": support_signature(result),
            "source_agreement_key": str(result["source_agreement_key"]),
            "integer_scaled_key": str(result["integer_scaled_key"]),
            "exact_row_shape_key": str(result["exact_row_shape_key"]),
        })

    group_rows = [
        summarize_group(key, payloads[key], rows)
        for key, rows in grouped.items()
    ]
    group_rows.sort(
        key=lambda item: (
            -int(item["case_count"]),
            -int(item["support_signature_count"]),
            str(item["key"]),
        )
    )

    def count_if(field: str) -> int:
        return sum(1 for row in group_rows if int(row[field]) > 1)

    by_support_count = Counter(
        int(row["support_signature_count"]) for row in group_rows
    )
    by_row_shape_count = Counter(
        int(row["exact_row_shape_key_count"]) for row in group_rows
    )
    return {
        "schema_version": 1,
        "mode": "source_skeleton_support_variation_profile",
        "phase": "6Z.6K.8AP.16DU.9EM",
        "trusted_as_proof": False,
        "reports": [str(path) for path in reports],
        "concrete_family_count": len(families),
        "represented_family_count": sum(len(rows) for rows in grouped.values()),
        "case_count": sum(int(family["case_count"]) for family in families),
        "skeleton_group_count": len(group_rows),
        "representative_failure_count": len(representative_failures),
        "representative_failures": representative_failures[:12],
        "groups_with_multiple_supports": count_if("support_signature_count"),
        "groups_with_multiple_source_agreements": count_if("source_agreement_key_count"),
        "groups_with_multiple_integer_scaled_rows": count_if("integer_scaled_key_count"),
        "groups_with_multiple_exact_row_shapes": count_if("exact_row_shape_key_count"),
        "max_supports_per_group": max(
            (int(row["support_signature_count"]) for row in group_rows),
            default=0,
        ),
        "max_exact_row_shapes_per_group": max(
            (int(row["exact_row_shape_key_count"]) for row in group_rows),
            default=0,
        ),
        "groups_by_support_signature_count": [
            {"support_signature_count": count, "group_count": group_count}
            for count, group_count in sorted(by_support_count.items())
        ],
        "groups_by_exact_row_shape_count": [
            {"exact_row_shape_key_count": count, "group_count": group_count}
            for count, group_count in sorted(by_row_shape_count.items())
        ],
        "top_support_variable_groups": [
            row for row in group_rows if int(row["support_signature_count"]) > 1
        ][:top_limit],
        "top_row_shape_variable_groups": [
            row for row in group_rows if int(row["exact_row_shape_key_count"]) > 1
        ][:top_limit],
        "top_groups": group_rows[:top_limit],
        "decision": {
            "status": "diagnostic-only",
            "notes": [
                "representative support variation is sampled from one case per concrete family",
                "if support or row-shape variation remains high, SourceSkeletonStateKey.support is still too concrete for production",
                "the next theorem surface may need source skeleton plus row-normal-form facts instead of concrete support",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9EM Source-Skeleton Support Variation",
        "",
        "This diagnostic is not trusted as proof. It recovers one real",
        "representative case per concrete family and measures support/row-shape",
        "variation inside source-skeleton quotient groups.",
        "",
        f"- Reports: `{len(payload['reports'])}`",
        f"- Concrete families: `{payload['concrete_family_count']}`",
        f"- Represented families: `{payload['represented_family_count']}`",
        f"- Skeleton groups: `{payload['skeleton_group_count']}`",
        f"- Groups with multiple supports: `{payload['groups_with_multiple_supports']}`",
        f"- Groups with multiple exact row shapes: `{payload['groups_with_multiple_exact_row_shapes']}`",
        f"- Max supports per group: `{payload['max_supports_per_group']}`",
        f"- Max exact row shapes per group: `{payload['max_exact_row_shapes_per_group']}`",
        "",
        "## Support Variation Distribution",
        "",
        "| Support signatures per group | Groups |",
        "| ---: | ---: |",
    ]
    for row in payload["groups_by_support_signature_count"]:
        lines.append(f"| {row['support_signature_count']} | {row['group_count']} |")
    lines.extend([
        "",
        "## Exact Row-Shape Variation Distribution",
        "",
        "| Exact row shapes per group | Groups |",
        "| ---: | ---: |",
    ])
    for row in payload["groups_by_exact_row_shape_count"]:
        lines.append(f"| {row['exact_row_shape_key_count']} | {row['group_count']} |")
    lines.extend([
        "",
        "## Largest Support-Variable Groups",
        "",
        "| Cases | Supports | Row shapes | Template | Source skeletons | Sample supports |",
        "| ---: | ---: | ---: | --- | --- | --- |",
    ])
    for group in payload["top_support_variable_groups"]:
        samples = "; ".join(
            item["support_signature"] for item in group["sample_families"][:3]
        )
        skeletons = json.dumps(group["payload"]["source_skeletons"], sort_keys=True)
        lines.append(
            f"| {group['case_count']} | {group['support_signature_count']} | "
            f"{group['exact_row_shape_key_count']} | "
            f"`{group['payload']['template']}` | `{skeletons}` | `{samples}` |"
        )
    lines.extend([
        "",
        "## Interpretation",
        "",
        "If many source-skeleton groups still have multiple concrete supports or",
        "multiple exact row shapes, the production theorem should not keep",
        "`support : TwoSourceFarkasSupport` as a generated key.  It should instead",
        "prove coverage from source-skeleton facts plus row-normal-form facts.",
        "",
        "## Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, action="append", required=True)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=None)
    parser.add_argument("--top-limit", type=int, default=12)
    args = parser.parse_args()

    payload = summarize(args.input, args.top_limit)
    write_json(args.json, payload)
    md_path = args.md or args.json.with_suffix(".md")
    write_text(md_path, markdown(payload))
    print(json.dumps({
        "phase": payload["phase"],
        "groups": payload["skeleton_group_count"],
        "multiple_supports": payload["groups_with_multiple_supports"],
        "multiple_row_shapes": payload["groups_with_multiple_exact_row_shapes"],
        "max_supports": payload["max_supports_per_group"],
        "max_row_shapes": payload["max_exact_row_shapes_per_group"],
        "json": str(args.json),
        "md": str(md_path),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
