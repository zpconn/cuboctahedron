#!/usr/bin/env python3
"""Profile the DU.9DA membership-compression surface.

This diagnostic is not proof evidence.  It reuses the existing exact bounded
source-index/state collector and asks how the remaining theorem

    identity-linear + GoodDirection -> source-index/state classifier applies

could be factored without concrete rank/mask replay.

The output deliberately separates three proof surfaces:

* concrete GoodDirection survivor replay;
* per-rank survivor/family maps;
* semantic source-index/state family keys.

The goal is to decide whether the next Lean emitter should target a small
family/signature theorem, or whether another semantic coordinate is needed
before emitting proof leaves.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_bounded_coverage import (  # noqa: E402
    RankMask,
    collect_window,
)
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    write_json,
    write_text,
)
from profile_symbolic_row_extraction_families import digest_payload  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9da_membership_compression_surface.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def mask_bitset(masks: list[int]) -> str:
    value = 0
    for mask in masks:
        value |= 1 << mask
    return f"0x{value:016x}"


def family_descriptor_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
        "sourceSkeletons": list(family.source_skeletons),
        "rowProperty": family.row_property_key,
    }


def family_coordinate_payload(family: Family, coordinate: str) -> dict[str, Any]:
    if coordinate == "descriptor":
        return family_descriptor_payload(family)
    if coordinate == "template_source_indices_row_property":
        return {
            "template": family.template_id,
            "sourceIndices": list(family.source_indices),
            "rowProperty": family.row_property_key,
        }
    if coordinate == "template_source_indices":
        return {
            "template": family.template_id,
            "sourceIndices": list(family.source_indices),
        }
    if coordinate == "template":
        return {"template": family.template_id}
    raise ValueError(f"unknown coordinate {coordinate!r}")


def family_coordinate_key(family: Family, coordinate: str) -> str:
    return digest_payload(family_coordinate_payload(family, coordinate))


def rank_good_members(
    *,
    identity_ranks: set[int],
    covered: dict[RankMask, tuple[int, Any]],
) -> dict[int, list[tuple[int, int]]]:
    by_rank: dict[int, list[tuple[int, int]]] = {rank: [] for rank in identity_ranks}
    for key, (family_index, _member) in covered.items():
        by_rank.setdefault(key.rank, []).append((key.mask, family_index))
    for entries in by_rank.values():
        entries.sort()
    return dict(sorted(by_rank.items()))


def signature_for_rank(entries: list[tuple[int, int]], families: list[Family]) -> str:
    payload = [
        {
            "mask": mask,
            "family": families[family_index].key,
        }
        for mask, family_index in entries
    ]
    return digest_payload({"goodFamilyMap": payload})


def coordinate_signature_for_rank(
    entries: list[tuple[int, int]],
    families: list[Family],
    coordinate: str,
) -> str:
    payload = [
        {
            "mask": mask,
            "coordinate": family_coordinate_key(families[family_index], coordinate),
        }
        for mask, family_index in entries
    ]
    return digest_payload({"coordinate": coordinate, "goodCoordinateMap": payload})


def histogram(values: list[int]) -> dict[str, int]:
    return {str(key): count for key, count in sorted(Counter(values).items())}


def top_counter(counter: Counter[str], *, limit: int) -> list[dict[str, Any]]:
    return [
        {"key": key, "count": count}
        for key, count in counter.most_common(limit)
    ]


def top_rank_signature_examples(
    buckets: dict[str, list[int]],
    *,
    limit: int,
    examples_per_bucket: int,
) -> list[dict[str, Any]]:
    rows = []
    for key, ranks in sorted(
        buckets.items(), key=lambda item: (-len(item[1]), item[0])
    )[:limit]:
        rows.append(
            {
                "key": key,
                "rank_count": len(ranks),
                "sample_ranks": ranks[:examples_per_bucket],
            }
        )
    return rows


def analyze(
    *,
    rank_start: int,
    limit: int,
    top_limit: int,
) -> dict[str, Any]:
    data = collect_window(rank_start=rank_start, limit=limit)
    by_rank = rank_good_members(identity_ranks=data.identity_ranks, covered=data.covered)

    good_mask_bitset_counter: Counter[str] = Counter()
    family_map_counter: Counter[str] = Counter()
    coordinate_map_counters: dict[str, Counter[str]] = {
        "descriptor": Counter(),
        "template_source_indices_row_property": Counter(),
        "template_source_indices": Counter(),
        "template": Counter(),
    }
    family_key_counter: Counter[str] = Counter()
    family_template_counter: Counter[str] = Counter()
    good_masks_per_identity_rank: list[int] = []
    families_per_identity_rank: list[int] = []
    rank_signature_buckets: dict[str, list[int]] = defaultdict(list)
    coordinate_signature_buckets: dict[str, dict[str, list[int]]] = {
        name: defaultdict(list) for name in coordinate_map_counters
    }

    for family in data.families:
        family_template_counter[family.template_id] += family.count

    for rank, entries in by_rank.items():
        masks = [mask for mask, _family_index in entries]
        family_indices = [family_index for _mask, family_index in entries]
        family_keys = [data.families[index].key for index in family_indices]
        for key in family_keys:
            family_key_counter[key] += 1

        bitset = mask_bitset(masks)
        good_mask_bitset_counter[bitset] += 1
        good_masks_per_identity_rank.append(len(masks))
        families_per_identity_rank.append(len(set(family_keys)))

        rank_sig = signature_for_rank(entries, data.families)
        family_map_counter[rank_sig] += 1
        rank_signature_buckets[rank_sig].append(rank)

        for coordinate in coordinate_map_counters:
            coord_sig = coordinate_signature_for_rank(entries, data.families, coordinate)
            coordinate_map_counters[coordinate][coord_sig] += 1
            coordinate_signature_buckets[coordinate][coord_sig].append(rank)

    coordinate_reports = []
    for coordinate, counter in coordinate_map_counters.items():
        coordinate_reports.append(
            {
                "coordinate": coordinate,
                "unique_rank_maps": len(counter),
                "largest_rank_class": max(counter.values(), default=0),
                "top_rank_maps": top_counter(counter, limit=top_limit),
                "top_examples": top_rank_signature_examples(
                    coordinate_signature_buckets[coordinate],
                    limit=min(top_limit, 6),
                    examples_per_bucket=8,
                ),
            }
        )

    concrete_good = len(data.covered)
    identity_ranks = len(data.identity_ranks)
    semantic_family_count = len(data.families)
    unique_family_maps = len(family_map_counter)

    if concrete_good == 0:
        status = "empty-window"
        next_step = "Pick a nonempty identity-linear window before emitting Lean."
    elif unique_family_maps >= concrete_good * 0.75:
        status = "reject-rank-map-membership"
        next_step = (
            "Do not emit per-rank family-map membership.  Add a stronger semantic "
            "selector-coordinate theorem or source-state language proof."
        )
    elif semantic_family_count <= 200 and unique_family_maps <= identity_ranks:
        status = "family-surface-promising"
        next_step = (
            "Generate a small bounded membership smoke that proves the descriptor "
            "coordinate from identity-linear plus GoodDirection for selected "
            "families, then measure Lean build cost."
        )
    else:
        status = "needs-coordinate-refinement"
        next_step = (
            "Use the coordinate reports to choose a smaller semantic selector "
            "target before emitting proof-carrying membership leaves."
        )

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9DA",
        "trusted_as_proof": False,
        "mode": "membership_compression_surface_profile",
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "counts": data.counts,
        "identity_rank_count": identity_ranks,
        "nonidentity_rank_count": len(data.nonidentity),
        "good_direction_survivors": concrete_good,
        "not_good_direction_masks": len(data.bad_masks),
        "source_index_state_family_count": semantic_family_count,
        "good_masks_per_identity_rank_histogram": histogram(good_masks_per_identity_rank),
        "families_per_identity_rank_histogram": histogram(families_per_identity_rank),
        "unique_good_mask_bitsets": len(good_mask_bitset_counter),
        "unique_rank_family_maps": unique_family_maps,
        "largest_rank_family_map_class": max(family_map_counter.values(), default=0),
        "coordinate_reports": coordinate_reports,
        "top_good_mask_bitsets": top_counter(good_mask_bitset_counter, limit=top_limit),
        "top_rank_family_maps": top_counter(family_map_counter, limit=top_limit),
        "top_rank_family_map_examples": top_rank_signature_examples(
            rank_signature_buckets,
            limit=min(top_limit, 6),
            examples_per_bucket=8,
        ),
        "top_family_keys": top_counter(family_key_counter, limit=top_limit),
        "cases_by_template": dict(sorted(family_template_counter.items())),
        "decision": {
            "status": status,
            "next_step": next_step,
            "notes": [
                "This emits no Lean and is not proof evidence.",
                "Concrete GoodDirection survivor replay remains the baseline to avoid.",
                "Rank-map signatures are diagnostic only; production proof should prefer semantic descriptor/source-state theorems.",
                "A small family count is useful only if Lean can prove membership without listing each concrete member.",
            ],
        },
    }


def markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DA Membership Compression Surface",
        "",
        "This profile is planning telemetry only. It emits no Lean and is not",
        "trusted as proof evidence.",
        "",
        f"- Status: `{report['decision']['status']}`",
        f"- Range: `[{report['rank_start']}, {report['rank_end']})`",
        f"- Identity ranks: `{report['identity_rank_count']}`",
        f"- Nonidentity ranks: `{report['nonidentity_rank_count']}`",
        f"- GoodDirection survivors: `{report['good_direction_survivors']}`",
        f"- Not-GoodDirection masks: `{report['not_good_direction_masks']}`",
        f"- Source-index/state families: `{report['source_index_state_family_count']}`",
        f"- Unique GoodDirection mask bitsets: `{report['unique_good_mask_bitsets']}`",
        f"- Unique rank -> family maps: `{report['unique_rank_family_maps']}`",
        f"- Largest rank-family-map class: `{report['largest_rank_family_map_class']}`",
        "",
        "## Histograms",
        "",
        "### Good Masks Per Identity Rank",
        "",
        "| Good masks | Identity ranks |",
        "| ---: | ---: |",
    ]
    for key, value in report["good_masks_per_identity_rank_histogram"].items():
        lines.append(f"| {key} | {value} |")
    lines.extend([
        "",
        "### Families Per Identity Rank",
        "",
        "| Families | Identity ranks |",
        "| ---: | ---: |",
    ])
    for key, value in report["families_per_identity_rank_histogram"].items():
        lines.append(f"| {key} | {value} |")
    lines.extend([
        "",
        "## Coordinate Rank-Map Compression",
        "",
        "| Coordinate | Unique rank maps | Largest class |",
        "| --- | ---: | ---: |",
    ])
    for row in report["coordinate_reports"]:
        lines.append(
            f"| `{row['coordinate']}` | {row['unique_rank_maps']} | "
            f"{row['largest_rank_class']} |"
        )
    lines.extend([
        "",
        "## Cases By Template",
        "",
        "| Template | GoodDirection cases |",
        "| --- | ---: |",
    ])
    for key, value in report["cases_by_template"].items():
        lines.append(f"| `{key}` | {value} |")
    lines.extend([
        "",
        "## Top Good Mask Bitsets",
        "",
        "| Bitset | Identity ranks |",
        "| --- | ---: |",
    ])
    for row in report["top_good_mask_bitsets"]:
        lines.append(f"| `{row['key']}` | {row['count']} |")
    lines.extend([
        "",
        "## Top Rank-Family Map Examples",
        "",
        "| Signature | Rank count | Sample ranks |",
        "| --- | ---: | --- |",
    ])
    for row in report["top_rank_family_map_examples"]:
        sample = ", ".join(str(rank) for rank in row["sample_ranks"])
        lines.append(f"| `{row['key']}` | {row['rank_count']} | {sample} |")
    lines.extend([
        "",
        "## Decision",
        "",
        report["decision"]["next_step"],
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=5000)
    parser.add_argument("--top-limit", type=int, default=12)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise SystemExit("--rank-start must be nonnegative")
    if args.limit <= 0:
        raise SystemExit("--limit must be positive")
    if args.top_limit < 0:
        raise SystemExit("--top-limit must be nonnegative")

    report = analyze(
        rank_start=args.rank_start,
        limit=args.limit,
        top_limit=args.top_limit,
    )
    write_json(args.json, report)
    write_text(args.md, markdown(report))
    print(json.dumps(report["decision"], indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
