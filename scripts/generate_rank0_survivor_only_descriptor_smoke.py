#!/usr/bin/env python3
"""Emit a rank-0 survivor-only descriptor coverage smoke.

DU.9DE proved full rank-0 semantic hcomplete, but the bad-mask denominator
contradictions were intentionally local and expensive.  This diagnostic splits
that theorem into the intended production shape:

1. a small premise says `GoodDirectionAtRank` implies membership in a survivor
   mask language;
2. generated evidence proves every survivor-mask member maps to a broad
   `SourceIndexStateFamilyDescriptor`.

The emitted Lean module contains no bad-direction denominator proofs and no
compact membership imports.  It is still bounded diagnostic evidence, not final
global coverage.
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
    "SemanticSurvivorOnlyRank0Smoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9df_rank0_survivor_only_descriptor.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SemanticSurvivorOnlyRank0Smoke"
)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def collect_good() -> list[dict[str, Any]]:
    rank = 0
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) != exact.mat_id():
        raise RuntimeError("rank 0 is not identity-linear; smoke assumptions changed")

    good: list[dict[str, Any]] = []
    next_index = 0
    for mask in range(64):
        profile = profile_classify_choice(rank, mask)
        if profile is None:
            raise RuntimeError(f"rank 0/mask {mask} unexpectedly nonidentity")
        if profile["status"] == "not_good_direction":
            continue
        if profile["status"] != "covered":
            raise RuntimeError(f"rank 0/mask {mask} has unsupported status {profile['status']!r}")

        symbolic_result = symbolic_classify_choice(rank, mask)
        if symbolic_result is None:
            raise RuntimeError(f"symbolic classifier failed for rank 0/mask {mask}")
        _family_key, row_key, case, template_id = symbolic_result
        indices = list(profile["sample"]["source_agreement"]["indices"])
        symbolic = SymbolicCase(next_index, case, template_id, str(profile["template_source"]), row_key)
        good.append({
            "mask": mask,
            "template_id": template_id,
            "source_indices": indices,
            "case_name": lean_case_name(next_index),
            "family_name": family_name(next_index),
            "symbolic": symbolic,
        })
        next_index += 1
    return good


def module_lines(namespace: str) -> tuple[list[str], dict[str, Any]]:
    good = collect_good()
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "",
        "/-!",
        "Generated rank-0 survivor-only descriptor smoke for Phase 6Z.6K.8AP.16DU.9DF.",
        "",
        "This file proves the descriptor side of semantic hcomplete from an",
        "explicit survivor-mask premise.  It intentionally contains no",
        "bad-direction denominator proofs.",
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
        "/-- Exact survivor masks for rank 0, as a diagnostic language. -/",
        "inductive Rank0SurvivorMask : SignMask -> Prop",
    ]
    for item in good:
        lines.append(
            f"  | mask_{item['mask']:02d} : Rank0SurvivorMask (⟨{item['mask']}, by decide⟩ : SignMask)"
        )
    lines.append("")

    for index, item in enumerate(good):
        lines.extend(descriptor_lines(index, item["symbolic"], item["source_indices"]))

    lines.extend([
        "/--",
        "Descriptor coverage for `[0,1)` from a survivor-mask membership premise.",
        "",
        "This is the production-shaped half of DU.9DE: generated descriptor",
        "families handle only masks that are already known to satisfy",
        "`GoodDirectionAtRank`.",
        "-/",
        "theorem rank0DescriptorGoodCoverage_of_survivorMask",
        "    (hsurvivor :",
        "      forall {mask : SignMask},",
        "        GoodDirectionAtRank (⟨0, by decide⟩ : Fin numPairWords) mask ->",
        "          Rank0SurvivorMask mask) :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 1 := by",
        "  intro rank mask hlt hlo hhi hM hgood",
        "  have hrank : rank = 0 := by omega",
        "  subst rank",
        "  have hfin :",
        "      (⟨0, hlt⟩ : Fin numPairWords) = (⟨0, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        "  have hsurv : Rank0SurvivorMask mask := by",
        "    exact hsurvivor (by simpa [hfin] using hgood)",
        "  cases hsurv with",
    ])
    for item in good:
        lines.extend([
            f"  | mask_{item['mask']:02d} =>",
            f"      exact ⟨{item['family_name']}_desc, by simpa [{item['case_name']}_rank, {item['case_name']}_mask] using {item['case_name']}_applies⟩",
        ])
    lines.extend([
        "",
        "theorem rank0AllGoodCoverage_of_survivorMask",
        "    (hsurvivor :",
        "      forall {mask : SignMask},",
        "        GoodDirectionAtRank (⟨0, by decide⟩ : Fin numPairWords) mask ->",
        "          Rank0SurvivorMask mask) :",
        "    AllTranslationGoodCoverageOnRange 0 1 :=",
        "  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage",
        "    (rank0DescriptorGoodCoverage_of_survivorMask hsurvivor)",
        "",
        "theorem semanticSurvivorOnlyRank0Smoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])

    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9DF",
        "trusted_as_proof": False,
        "rank_range": [0, 1],
        "good_direction_survivors": len(good),
        "bad_direction_masks_proved": 0,
        "good": [
            {key: value for key, value in item.items() if key != "symbolic"}
            for item in good
        ],
        "decision": {
            "status": "emitted-rank0-survivor-only-descriptor-smoke",
            "notes": [
                "diagnostic only",
                "descriptor side only",
                "leaves GoodDirection-to-survivor-mask membership explicit",
                "contains no bad-direction denominator proofs",
            ],
        },
    }
    return lines, payload


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DF Rank-0 Survivor-Only Descriptor Smoke",
        "",
        "This diagnostic is not trusted as final coverage.  It proves the",
        "descriptor side of semantic hcomplete from an explicit survivor-mask",
        "premise, avoiding all bad-direction denominator proofs.",
        "",
        f"- GoodDirection survivors: `{payload['good_direction_survivors']}`",
        f"- Bad-direction masks proved locally: `{payload['bad_direction_masks_proved']}`",
        f"- Decision: `{payload['decision']['status']}`",
        "",
        "| Mask | Template | Source indices |",
        "| ---: | --- | --- |",
    ]
    for item in payload["good"]:
        lines.append(
            f"| {item['mask']} | `{item['template_id']}` | `{item['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    args = parser.parse_args()

    lines, payload = module_lines(args.namespace)
    write_text(args.out, "\n".join(lines))
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(f"wrote {args.out}")
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")


if __name__ == "__main__":
    main()
