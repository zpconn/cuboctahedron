#!/usr/bin/env python3
"""Emit survivor-only descriptor coverage for a bounded rank window.

This generalizes the rank-0 DU.9DF smoke without adding bad-direction or
nonidentity local proof blocks.  The generated theorem assumes a separate
survivor-language membership premise:

  identity-linear + GoodDirectionAtRank + rank in [lo,hi) -> WindowSurvivor rank mask

and proves only that each `WindowSurvivor` constructor maps to a broad
`SourceIndexStateFamilyDescriptor`.
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

import generate_exact_certificates as exact  # noqa: E402
from generate_rank0_semantic_hcomplete_smoke import descriptor_lines  # noqa: E402
from generate_source_index_state_nonenum_smoke import family_name  # noqa: E402
from generate_symbolic_row_family_smoke import (  # noqa: E402
    SymbolicCase,
    classify_choice as symbolic_classify_choice,
    lean_case_name,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice as profile_classify_choice,
)


DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SemanticSurvivorOnlyWindow000000000_000000003Smoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9dg_window_survivor_only_descriptor.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SemanticSurvivorOnlyWindow000000000_000000003Smoke"
)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def ctor_name(rank: int, mask: int) -> str:
    return f"r{rank:09d}_m{mask:02d}"


def collect_good(rank_start: int, limit: int) -> tuple[list[dict[str, Any]], dict[str, int]]:
    good: list[dict[str, Any]] = []
    counts = {
        "pair_words_scanned": 0,
        "identity_words": 0,
        "nonidentity_words": 0,
        "good_direction_survivors": 0,
        "bad_direction_masks": 0,
        "unsupported": 0,
    }
    next_index = 0
    for rank in range(rank_start, rank_start + limit):
        counts["pair_words_scanned"] += 1
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            profile = profile_classify_choice(rank, mask)
            if profile is None:
                raise RuntimeError(f"rank {rank}/mask {mask} unexpectedly nonidentity")
            if profile["status"] == "not_good_direction":
                counts["bad_direction_masks"] += 1
                continue
            if profile["status"] != "covered":
                counts["unsupported"] += 1
                continue

            symbolic_result = symbolic_classify_choice(rank, mask)
            if symbolic_result is None:
                raise RuntimeError(f"symbolic classifier failed for rank {rank}/mask {mask}")
            _family_key, row_key, case, template_id = symbolic_result
            indices = list(profile["sample"]["source_agreement"]["indices"])
            symbolic = SymbolicCase(next_index, case, template_id, str(profile["template_source"]), row_key)
            good.append({
                "rank": rank,
                "mask": mask,
                "template_id": template_id,
                "source_indices": indices,
                "case_name": lean_case_name(next_index),
                "family_name": family_name(next_index),
                "ctor": ctor_name(rank, mask),
                "symbolic": symbolic,
            })
            counts["good_direction_survivors"] += 1
            next_index += 1
    if counts["unsupported"] != 0:
        raise RuntimeError(f"unsupported GoodDirection cases: {counts['unsupported']}")
    return good, counts


def module_lines(namespace: str, rank_start: int, limit: int) -> tuple[list[str], dict[str, Any]]:
    rank_end = rank_start + limit
    good, counts = collect_good(rank_start, limit)
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "",
        "/-!",
        "Generated survivor-only descriptor window smoke for Phase 6Z.6K.8AP.16DU.9DG.",
        "",
        "The theorem assumes GoodDirection survivor-language membership and proves",
        "the descriptor/apply side only.  There are no bad-direction or",
        "nonidentity local proof blocks in this file.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        f"/-- Exact survivor language for the diagnostic rank window `[{rank_start},{rank_end})`. -/",
        "inductive WindowSurvivor : Nat -> SignMask -> Prop",
    ]
    for item in good:
        lines.append(
            f"  | {item['ctor']} : WindowSurvivor {item['rank']} (⟨{item['mask']}, by decide⟩ : SignMask)"
        )
    lines.append("")

    for index, item in enumerate(good):
        lines.extend(descriptor_lines(index, item["symbolic"], item["source_indices"]))

    lines.extend([
        "/-- Descriptor coverage from survivor-language membership for the bounded window. -/",
        "theorem windowDescriptorGoodCoverage_of_survivor",
        "    (hsurvivor :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        f"        {rank_start} <= rank ->",
        f"        rank < {rank_end} ->",
        "          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "              (matId : Mat3 Rat) ->",
        "            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "              WindowSurvivor rank mask) :",
        f"    SourceIndexStateDescriptorGoodCoverageOnRange {rank_start} {rank_end} := by",
        "  intro rank mask hlt hlo hhi hM hgood",
        "  have hsurv : WindowSurvivor rank mask :=",
        "    hsurvivor hlt hlo hhi hM hgood",
        "  cases hsurv with",
    ])
    for item in good:
        lines.extend([
            f"  | {item['ctor']} =>",
            f"      exact ⟨{item['family_name']}_desc, by simpa [{item['case_name']}_rank, {item['case_name']}_mask] using {item['case_name']}_applies⟩",
        ])
    lines.extend([
        "",
        "theorem windowAllGoodCoverage_of_survivor",
        "    (hsurvivor :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        f"        {rank_start} <= rank ->",
        f"        rank < {rank_end} ->",
        "          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "              (matId : Mat3 Rat) ->",
        "            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "              WindowSurvivor rank mask) :",
        f"    AllTranslationGoodCoverageOnRange {rank_start} {rank_end} :=",
        "  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage",
        "    (windowDescriptorGoodCoverage_of_survivor hsurvivor)",
        "",
        "theorem semanticSurvivorOnlyWindowSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])

    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9DG",
        "trusted_as_proof": False,
        "rank_range": [rank_start, rank_end],
        "counts": counts,
        "good": [
            {key: value for key, value in item.items() if key != "symbolic"}
            for item in good
        ],
        "decision": {
            "status": "emitted-window-survivor-only-descriptor-smoke",
            "notes": [
                "diagnostic only",
                "descriptor side only",
                "survivor membership premise explicit",
                "contains no bad-direction or nonidentity local proof blocks",
            ],
        },
    }
    return lines, payload


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DG Window Survivor-Only Descriptor Smoke",
        "",
        "This diagnostic proves the descriptor/apply side for a bounded rank",
        "window from an explicit survivor-language premise.",
        "",
        f"- Range: `{payload['rank_range']}`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- Nonidentity words: `{counts['nonidentity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Bad-direction masks proved locally: `0`",
        f"- Decision: `{payload['decision']['status']}`",
        "",
        "| Rank | Mask | Template | Source indices |",
        "| ---: | ---: | --- | --- |",
    ]
    for item in payload["good"]:
        lines.append(
            f"| {item['rank']} | {item['mask']} | `{item['template_id']}` | `{item['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=3)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    lines, payload = module_lines(args.namespace, args.rank_start, args.limit)
    write_text(args.out, "\n".join(lines))
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(f"wrote {args.out}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
