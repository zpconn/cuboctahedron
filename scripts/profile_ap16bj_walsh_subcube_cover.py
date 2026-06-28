#!/usr/bin/env python3
"""AP.16BJ exact Walsh subcube-cover profiler.

AP.16BI showed that the internal impact denominators are quadratic
pseudo-Boolean forms in the six final translation mask bits.  This profiler
enumerates all 3^6 Boolean subcubes, keeps the subcubes that:

* contain no GoodDirection survivor masks;
* are nonempty; and
* have at least one internal denominator whose exact Walsh form is
  nonpositive on the entire subcube.

It then greedily covers the bad-mask complement.  This is diagnostic data only,
but a successful small cover is the right next Lean target: each generated
family can be a real Boolean cube, not an enumerated list of masks.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import asdict, dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import check_certificates_independently as exact  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    eval_walsh,
    fraction_to_text,
    walsh_coefficients,
)


DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16bj_walsh_subcube_cover.json"
)


@dataclass(frozen=True)
class KilledSubcube:
    label: str
    masks: list[int]
    impact: int
    max_value: str
    fixed_bits: dict[str, int]


def label_masks(label: str) -> list[int]:
    masks = []
    for mask in range(64):
        ok = True
        for j, char in enumerate(label):
            if char == "*":
                continue
            if ((mask >> j) & 1) != int(char):
                ok = False
                break
        if ok:
            masks.append(mask)
    return masks


def all_labels() -> list[str]:
    labels = [""]
    for _ in range(6):
        labels = [prefix + char for prefix in labels for char in "01*"]
    return labels


def fixed_bits(label: str) -> dict[str, int]:
    result: dict[str, int] = {}
    for j, char in enumerate(label):
        if char == "0":
            result[VAR_NAMES[j]] = -1
        elif char == "1":
            result[VAR_NAMES[j]] = 1
    return result


def compute_walsh_forms(rank: int, good_masks: list[int], bad_masks: dict[int, Any]):
    denom_values: list[list[Fraction]] = [[Fraction(0) for _ in range(64)]
                                          for _ in range(13)]
    word = bad_masks[next(iter(bad_masks))].word
    for mask_value in range(64):
        if mask_value in bad_masks:
            seq = bad_masks[mask_value].seq
            b = bad_masks[mask_value].b
        else:
            b, seq = exact.translation_vector(word, mask_value)
        for impact in range(1, 14):
            denom_values[impact - 1][mask_value] = exact.impact_denom(
                seq, b, impact
            )
    forms = [walsh_coefficients(values) for values in denom_values]
    failures = []
    for impact, coeffs in enumerate(forms, start=1):
        for mask_value in range(64):
            actual = eval_walsh(coeffs, mask_value)
            expected = denom_values[impact - 1][mask_value]
            if actual != expected:
                failures.append({
                    "impact": impact,
                    "mask": mask_value,
                    "expected": fraction_to_text(expected),
                    "actual": fraction_to_text(actual),
                })
                break
    return forms, failures


def profile(profile_path: Path, rank: int, mask: int) -> dict[str, Any]:
    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = sorted(int(mask_value) for mask_value in signature["good_masks"])
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    good_set = set(good_masks)
    bad_set = set(range(64)) - good_set
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)
    candidates: list[KilledSubcube] = []
    for label in all_labels():
        masks = label_masks(label)
        if not masks:
            continue
        if good_set.intersection(masks):
            continue
        best_impact: int | None = None
        best_max: Fraction | None = None
        for impact, coeffs in enumerate(forms, start=1):
            max_value = max(eval_walsh(coeffs, cube_mask) for cube_mask in masks)
            if max_value <= 0 and (best_max is None or max_value < best_max):
                best_impact = impact
                best_max = max_value
        if best_impact is not None and best_max is not None:
            candidates.append(KilledSubcube(
                label=label,
                masks=masks,
                impact=best_impact,
                max_value=fraction_to_text(best_max),
                fixed_bits=fixed_bits(label),
            ))
    uncovered = set(bad_set)
    selected: list[KilledSubcube] = []
    # Prefer broad cubes, then fewer fixed bits, then sharper max.
    while uncovered:
        best = None
        best_cover: set[int] = set()
        for candidate in candidates:
            cover = uncovered.intersection(candidate.masks)
            if not cover:
                continue
            if best is None:
                best = candidate
                best_cover = cover
                continue
            best_fixed = 6 - best.label.count("*")
            cand_fixed = 6 - candidate.label.count("*")
            if (
                len(cover), -cand_fixed, -len(candidate.masks)
            ) > (
                len(best_cover), -best_fixed, -len(best.masks)
            ):
                best = candidate
                best_cover = cover
        if best is None:
            break
        selected.append(best)
        uncovered -= best_cover
    return {
        "phase": "Phase 6Z.6K.8AP.16BJ",
        "rank": rank,
        "anchor_mask": mask,
        "good_masks": good_masks,
        "bad_mask_count": len(bad_set),
        "walsh_validated": not failures,
        "walsh_validation_failures": failures[:10],
        "candidate_count": len(candidates),
        "selected_count": len(selected),
        "uncovered_count": len(uncovered),
        "uncovered_masks": sorted(uncovered),
        "selected": [asdict(candidate) for candidate in selected],
        "trusted_as_proof": False,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16BJ Walsh Subcube Cover",
        "",
        "This is diagnostic data only, not proof data.",
        "",
        f"- rank: `{data['rank']}`",
        f"- bad masks: `{data['bad_mask_count']}`",
        f"- Walsh forms validated: `{data['walsh_validated']}`",
        f"- killed subcube candidates: `{data['candidate_count']}`",
        f"- selected subcubes: `{data['selected_count']}`",
        f"- uncovered masks: `{data['uncovered_count']}`",
        "",
        "| label | masks | impact | max value | fixed bits |",
        "| --- | ---: | ---: | ---: | --- |",
    ]
    for candidate in data["selected"]:
        fixed = ", ".join(
            f"{name}={value}" for name, value in candidate["fixed_bits"].items()
        )
        lines.append(
            f"| `{candidate['label']}` | {len(candidate['masks'])} | "
            f"{candidate['impact']} | `{candidate['max_value']}` | {fixed} |"
        )
    if data["uncovered_masks"]:
        lines.extend([
            "",
            "Uncovered masks:",
            "",
            "```text",
            ", ".join(str(mask) for mask in data["uncovered_masks"]),
            "```",
        ])
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    data = profile(args.profile, args.rank, args.mask)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; selected={data['selected_count']} "
        f"uncovered={data['uncovered_count']}"
    )


if __name__ == "__main__":
    main()
