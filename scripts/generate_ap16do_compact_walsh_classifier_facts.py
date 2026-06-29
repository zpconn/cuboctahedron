#!/usr/bin/env python3
"""Emit AP16DO compact-Walsh classifier-facts singleton smokes.

AP16DN proved this path manually for rank 6000480.  This generator emits the
same theorem surface for selected top-5 AP16DJ ranks, keeping source/row
candidate facts rank-local so focused Lean builds stay under the smoke memory
cap.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_ap16l_signature_membership_smoke import (  # noqa: E402
    candidate_groups_for_signature,
    mask_member_expr,
)
from generate_ap16w_shared_candidate_routing_smoke import (  # noqa: E402
    NAMESPACE_PREFIX,
    candidate_ctor,
)


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16am_top5_materialized_profile.json")
DEFAULT_OUT_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_RANKS = [6000745, 6000625, 6000480, 6000720, 6000662]


def module_name(rank: int) -> str:
    return f"CompactWalshBatchClassifierFactsRank{rank}Smoke"


def facts_module_name(rank: int) -> str:
    return f"PositiveSurvivorSharedRank{rank}CandidateFactsSmoke"


def signature_for_rank(profile: dict[str, Any], rank: int) -> tuple[int, dict[str, Any]]:
    for index, signature in enumerate(profile.get("positive_survivor_signature_catalog", [])):
        ranks = [int(r) for r in signature.get("ranks", [])]
        if ranks and ranks[0] == rank:
            return index, signature
    raise SystemExit(f"rank {rank} is not an anchor in the positive survivor signature catalog")


def nested_split(
    fact_cases: list[tuple[int, str, str]],
    *,
    index: int,
    indent: str,
    rank: int,
) -> list[str]:
    def handle_case(case_index: int, case_indent: str) -> list[str]:
        mask, case_name, ctor = fact_cases[case_index]
        mask_literal = exact.lean_sign_mask(mask)
        return [
            f"{case_indent}have hmask : mask = {mask_literal} := by",
            f"{case_indent}  ext",
            f"{case_indent}  simpa using h",
            f"{case_indent}rw [hmask]",
            f"{case_indent}change CandidateFacts .{ctor} {rank} {mask_literal}",
            f"{case_indent}exact {case_name}_candidateFacts",
        ]

    if index == len(fact_cases) - 1:
        return handle_case(index, indent)
    return [
        f"{indent}rcases h with h | h",
        f"{indent}·",
        *handle_case(index, indent + "  "),
        f"{indent}·",
        *nested_split(fact_cases, index=index + 1, indent=indent + "  ", rank=rank),
    ]


def emit_rank_module(
    *,
    profile: dict[str, Any],
    rank: int,
    output: Path,
) -> None:
    _sig_index, signature = signature_for_rank(profile, rank)
    groups = sorted(candidate_groups_for_signature(profile, signature), key=lambda group: group["key"])
    key_to_ctor = {group["key"]: candidate_ctor(i) for i, group in enumerate(groups)}
    good_masks = [int(mask) for mask in signature["good_masks"]]
    fact_cases: list[tuple[int, str, str]] = []
    candidate_nat_cases: list[str] = []
    for index, mask in enumerate(good_masks):
        key = signature["mask_candidates"][str(mask)][0]
        ctor = key_to_ctor[key]
        candidate_nat_cases.append(f"  | {mask} => .{ctor}")
        fact_cases.append((mask, f"case_{index:06d}", ctor))
    default_ctor = fact_cases[0][2]
    namespace = f"{NAMESPACE_PREFIX}.{module_name(rank)}"
    facts_namespace = f"{NAMESPACE_PREFIX}.{facts_module_name(rank)}"
    classifier_namespace = f"{NAMESPACE_PREFIX}.CompactWalshBatchClassifierSmoke"
    member_name = f"rank{rank}GoodMaskMember"
    theorem_name = f"rank{rank}AllGoodCoverageOfFacts"
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke",
        f"import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.{facts_module_name(rank)}",
        "",
        "/-!",
        f"Generated AP16DO compact-Walsh classifier facts smoke for rank `{rank}`.",
        "",
        "This module is bounded smoke evidence.  It uses rank-local source/row",
        "candidate facts, not the larger shared top-5 candidate-facts bundle.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        f"open {classifier_namespace}",
        f"open {facts_namespace}",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "",
        f"private def rank{rank}CandidateOfNat : Nat -> GeneratedCandidate",
        *candidate_nat_cases,
        f"  | _ => .{default_ctor}",
        "",
        f"private def rank{rank}CandidateOfMask (mask : SignMask) : GeneratedCandidate :=",
        f"  rank{rank}CandidateOfNat mask.val",
        "",
        f"private def rank{rank}Facts (mask : SignMask) : Prop :=",
        f"  CandidateFacts (rank{rank}CandidateOfMask mask) {rank} mask",
        "",
        f"private theorem rank{rank}AllPositiveMaskFacts",
        "    {mask : SignMask}",
        f"    (h : {member_name} mask) :",
        f"    rank{rank}Facts mask := by",
        f"  change {mask_member_expr(good_masks)} at h",
        *nested_split(fact_cases, index=0, indent="  ", rank=rank),
        "",
        f"theorem rank{rank}AllGoodCoverage :",
        f"    AllTranslationGoodCoverageOnRange {rank} ({rank} + 1) :=",
        f"  {theorem_name}",
        "    GeneratedCandidate",
        f"    rank{rank}CandidateOfMask",
        f"    rank{rank}Facts",
        "    generatedSpec",
        "    generatedRowProducer",
        "    generatedKey",
        f"    (by intro mask; cases rank{rank}CandidateOfMask mask <;> rfl)",
        f"    (by intro mask; cases rank{rank}CandidateOfMask mask <;> rfl)",
        f"    (by intro mask; cases rank{rank}CandidateOfMask mask <;> rfl)",
        f"    rank{rank}AllPositiveMaskFacts",
        "    (by intro mask h; exact h.1)",
        "    (by intro mask h; exact h.2)",
        "",
        f"theorem compactWalshBatchClassifierFactsRank{rank}Smoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ]
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--ranks", type=int, nargs="*", default=DEFAULT_RANKS)
    args = parser.parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    for rank in args.ranks:
        output = args.out_dir / f"{module_name(rank)}.lean"
        emit_rank_module(profile=profile, rank=rank, output=output)
        print(f"wrote {output}")


if __name__ == "__main__":
    main()
