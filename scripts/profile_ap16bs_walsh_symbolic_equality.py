#!/usr/bin/env python3
"""Profile the AP.16BS symbolic Walsh denominator-equality target.

AP16BR can build a `WalshImpactSubcubeCover` only after each selected subcube
proves

    impactDenomAtRank rank mask impact = poly.eval mask.

The replay route proves that equality separately for each concrete mask in a
subcube.  This profiler measures the better production target: prove one
symbolic equality theorem per selected internal impact, then reuse it for every
subcube that selected the same impact.

This emits diagnostic planning data only; it is not proof evidence.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16bl_impact_subcube_smoke import (  # noqa: E402
    DEFAULT_COVER,
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    denom_cases_for_cover,
    selected_subcubes,
)
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
    select_signature_containing_rank_mask,
)
from profile_ap16bi_denominator_sign_forms import (  # noqa: E402
    VAR_NAMES,
    fraction_to_text,
)
from profile_ap16bj_walsh_subcube_cover import compute_walsh_forms  # noqa: E402


DEFAULT_OUTPUT = Path(
    "scripts/generated/phase6z6k8ap16bs_walsh_symbolic_equality_profile.json"
)


def degree_histogram(coeffs: dict[tuple[int, ...], Fraction]) -> dict[str, int]:
    hist: Counter[int] = Counter()
    for subset, coeff in coeffs.items():
        if coeff:
            hist[len(subset)] += 1
    return {str(degree): count for degree, count in sorted(hist.items())}


def term_summary(coeffs: dict[tuple[int, ...], Fraction]) -> dict[str, Any]:
    nonzero = [(subset, coeff) for subset, coeff in coeffs.items() if coeff]
    return {
        "term_count": len(nonzero),
        "max_degree": max((len(subset) for subset, _coeff in nonzero), default=0),
        "degree_histogram": degree_histogram(coeffs),
        "terms": [
            {
                "bits": [VAR_NAMES[index] for index in subset],
                "coeff": fraction_to_text(coeff),
            }
            for subset, coeff in sorted(nonzero, key=lambda item: (len(item[0]), item[0]))
        ],
    }


def profile(profile_path: Path, cover_path: Path, rank: int, mask: int) -> dict[str, Any]:
    source_profile = json.loads(profile_path.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(source_profile, rank, mask)
    good_masks = sorted(int(mask_value) for mask_value in signature["good_masks"])
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(
        rank, good_masks
    )
    subcubes = selected_subcubes(cover_path)
    denom_cases = denom_cases_for_cover(rank, good_masks, subcubes)
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)

    selected_by_impact: dict[int, list[dict[str, Any]]] = defaultdict(list)
    selected_mask_pairs = 0
    selected_masks_union: set[int] = set()
    for index, subcube in enumerate(subcubes):
        impact = int(subcube["impact"])
        masks = sorted(int(value) for value in subcube["masks"])
        selected_mask_pairs += len(masks)
        selected_masks_union.update(masks)
        selected_by_impact[impact].append({
            "index": index,
            "label": subcube["label"],
            "mask_count": len(masks),
            "masks": masks,
        })

    selected_impacts = sorted(selected_by_impact)
    selected_terms = {
        str(impact): term_summary(forms[impact - 1])
        for impact in selected_impacts
    }
    all_internal_terms = {
        str(impact): term_summary(forms[impact - 1])
        for impact in range(1, 14)
    }

    return {
        "phase": "Phase 6Z.6K.8AP.16BS",
        "rank": rank,
        "anchor_mask": mask,
        "positive_masks": good_masks,
        "selected_subcubes": len(subcubes),
        "selected_impacts": selected_impacts,
        "selected_impact_count": len(selected_impacts),
        "walsh_validated": not failures,
        "walsh_validation_failures": failures[:10],
        "replay_obligations": {
            "unique_masks_requiring_rank_denom_facts": len(denom_cases),
            "subcube_mask_impact_equalities": selected_mask_pairs,
            "unique_covered_bad_masks": len(selected_masks_union),
        },
        "symbolic_obligations": {
            "selected_impact_equality_theorems": len(selected_impacts),
            "all_internal_impact_equality_theorems": 13,
            "suggested_target": (
                "prove one theorem per selected impact: forall mask, "
                "impactDenomAtRank rank mask impact = selectedWalshPoly impact mask"
            ),
        },
        "selected_by_impact": {
            str(impact): selected_by_impact[impact]
            for impact in selected_impacts
        },
        "selected_terms": selected_terms,
        "all_internal_terms": all_internal_terms,
        "trusted_as_proof": False,
    }


def write_markdown(data: dict[str, Any], path: Path) -> None:
    replay = data["replay_obligations"]
    symbolic = data["symbolic_obligations"]
    lines = [
        "# Phase 6Z.6K.8AP.16BS Walsh Symbolic Equality Profile",
        "",
        "This is diagnostic planning data only, not proof evidence.",
        "",
        f"- rank: `{data['rank']}`",
        f"- selected subcubes: `{data['selected_subcubes']}`",
        f"- selected impacts: `{data['selected_impacts']}`",
        f"- Walsh validation failures: `{len(data['walsh_validation_failures'])}`",
        "",
        "## Obligation Comparison",
        "",
        "| route | obligations | count |",
        "| --- | --- | ---: |",
        "| replay | unique masks needing rank denominator facts | "
        f"{replay['unique_masks_requiring_rank_denom_facts']} |",
        "| replay | subcube mask/impact equality facts | "
        f"{replay['subcube_mask_impact_equalities']} |",
        "| symbolic | selected-impact equality theorems | "
        f"{symbolic['selected_impact_equality_theorems']} |",
        "| symbolic | all-internal-impact equality theorems | "
        f"{symbolic['all_internal_impact_equality_theorems']} |",
        "",
        "## Selected Impacts",
        "",
        "| impact | subcubes | total masks | terms | max degree | degree histogram |",
        "| ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for impact_text, subcubes in data["selected_by_impact"].items():
        summary = data["selected_terms"][impact_text]
        total_masks = sum(item["mask_count"] for item in subcubes)
        hist = ", ".join(
            f"{degree}:{count}"
            for degree, count in summary["degree_histogram"].items()
        )
        lines.append(
            f"| {impact_text} | {len(subcubes)} | {total_masks} | "
            f"{summary['term_count']} | {summary['max_degree']} | {hist} |"
        )
    lines.extend([
        "",
        "Decision: the production equality bridge should not replay concrete masks.",
        "For this rank, the replay path needs dozens of heavy denominator facts,",
        "while the symbolic route needs one equality theorem per selected impact.",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--cover", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    data = profile(args.profile, args.cover, args.rank, args.mask)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2), encoding="utf-8")
    write_markdown(data, args.output.with_suffix(".md"))
    print(
        f"wrote {args.output}; selected_impacts={data['selected_impact_count']} "
        f"replay_masks={data['replay_obligations']['unique_masks_requiring_rank_denom_facts']}"
    )


if __name__ == "__main__":
    main()
