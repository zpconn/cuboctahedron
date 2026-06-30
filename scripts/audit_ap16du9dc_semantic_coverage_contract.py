#!/usr/bin/env python3
"""Audit the AP16DU semantic coverage contract.

This diagnostic is intentionally proof-neutral: it does not certify any
geometry.  It records which Lean surfaces already exist for the
GoodDirection-only positive-survivor route and which premise still has to be
produced by generated proof evidence.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/phase6z6k8ap16du9dc_semantic_coverage_contract.json"
OUT_MD = ROOT / "scripts/generated/phase6z6k8ap16du9dc_semantic_coverage_contract.md"


FILES = {
    "source_position_producer_language": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguage.lean",
    "positive_survivor_membership_smoke": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorMembershipSmoke.lean",
    "positive_survivor_membership_generated_smoke": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorMembershipGeneratedSmoke.lean",
    "positive_survivor_signature_membership_generated_smoke": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorSignatureMembershipGeneratedSmoke.lean",
    "positive_survivor_template_domain_union_smoke": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorTemplateDomainUnionSmoke.lean",
    "source_index_state_classifier_du3": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean",
    "source_index_state_descriptor_language": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguage.lean",
    "template_language": ROOT
    / "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/TemplateLanguage.lean",
}


CHECKS = {
    "source_position_coverage_exists": (
        "source_position_producer_language",
        "def SourcePositionRowProducerGoodCoverageOnRange",
    ),
    "source_position_to_all_good_exists": (
        "source_position_producer_language",
        "theorem SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage",
    ),
    "source_position_language_to_template_member_bridge_exists": (
        "source_position_producer_language",
        "theorem SourcePositionRowProducerGoodLanguageOnRange.to_templateMemberBridge",
    ),
    "source_position_coverage_to_template_member_bridge_exists": (
        "source_position_producer_language",
        "theorem SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge",
    ),
    "source_position_single_candidate_domain_adapter_exists": (
        "source_position_producer_language",
        "theorem SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidateDomain",
    ),
    "source_position_candidate_union_domain_adapter_exists": (
        "source_position_producer_language",
        "theorem SourcePositionRowProducerGoodCoverageOnRange.of_candidateUnionDomain",
    ),
    "positive_single_candidate_classifier_exists": (
        "positive_survivor_membership_smoke",
        "theorem allGoodCoverage_of_positiveSingleCandidateClassifier",
    ),
    "generated_smoke_hclass_is_hypothesis": (
        "positive_survivor_membership_generated_smoke",
        "(hclass :",
    ),
    "generated_smoke_template_member_bridge_exists": (
        "positive_survivor_membership_generated_smoke",
        "theorem generatedGroupTemplateMemberBridge",
    ),
    "generated_smoke_template_coverage_exists": (
        "positive_survivor_membership_generated_smoke",
        "theorem generatedGroupTemplateCoverage",
    ),
    "generated_smoke_candidate_domain_exists": (
        "positive_survivor_membership_generated_smoke",
        "private def generatedCandidateTemplateDomain",
    ),
    "generated_smoke_candidate_domain_member_bridge_exists": (
        "positive_survivor_membership_generated_smoke",
        "private theorem generatedCandidateTemplateDomainMemberBridge",
    ),
    "generated_smoke_template_member_bridge_via_domain_exists": (
        "positive_survivor_membership_generated_smoke",
        "theorem generatedGroupTemplateMemberBridgeViaDomain",
    ),
    "signature_smoke_template_member_bridge_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "theorem generatedSingletonSignatureTemplateMemberBridge",
    ),
    "signature_smoke_semantic_template_member_bridge_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "theorem generatedSingletonSignatureSemanticTemplateMemberBridge",
    ),
    "signature_smoke_template_domain_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "private def generatedSignatureTemplateDomain",
    ),
    "signature_smoke_template_domain_member_bridge_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "private theorem generatedSignatureTemplateDomainMemberBridge",
    ),
    "signature_smoke_template_member_bridge_via_domain_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "theorem generatedSingletonSignatureSemanticTemplateMemberBridgeViaDomain",
    ),
    "signature_smoke_candidate_union_domain_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "private def generatedSignatureCandidateUnionDomain",
    ),
    "signature_smoke_candidate_union_domain_member_bridge_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "private theorem generatedSignatureCandidateUnionDomainMemberBridge",
    ),
    "signature_smoke_template_bridge_via_candidate_union_exists": (
        "positive_survivor_signature_membership_generated_smoke",
        "theorem generatedSingletonSignatureSemanticTemplateMemberBridgeViaCandidateUnion",
    ),
    "domain_union_smoke_exists": (
        "positive_survivor_template_domain_union_smoke",
        "private def generatedUnionTemplateDomain",
    ),
    "domain_union_smoke_member_bridge_exists": (
        "positive_survivor_template_domain_union_smoke",
        "private theorem generatedUnionTemplateDomainMemberBridge",
    ),
    "domain_union_smoke_template_bridge_exists": (
        "positive_survivor_template_domain_union_smoke",
        "theorem generatedUnionTemplateMemberBridgeViaDomain",
    ),
    "domain_union_smoke_source_position_coverage_exists": (
        "positive_survivor_template_domain_union_smoke",
        "theorem generatedUnionSourcePositionCoverageViaDomain",
    ),
    "domain_union_smoke_all_good_via_source_position_exists": (
        "positive_survivor_template_domain_union_smoke",
        "theorem generatedUnionAllGoodCoverageViaSourcePosition",
    ),
    "du3_prop_first_source_row_adapter_exists": (
        "source_index_state_classifier_du3",
        "theorem sourceIndexFactsCatalog_of_classifierKey_source_row",
    ),
    "descriptor_to_all_good_exists": (
        "source_index_state_descriptor_language",
        "theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage",
    ),
    "template_member_bridge_exists": (
        "template_language",
        "abbrev TemplateLanguageMemberBridgeOnRange",
    ),
    "template_member_bridge_to_coverage_exists": (
        "template_language",
        "theorem TemplateLanguageMemberBridgeOnRange.to_coverage",
    ),
    "template_domain_bridge_exists": (
        "template_language",
        "abbrev TemplateLanguageMemberBridgeOnDomain",
    ),
    "template_domain_to_range_exists": (
        "template_language",
        "theorem TemplateLanguageMemberBridgeOnDomain.to_range",
    ),
    "du3_domain_bridge_smoke_exists": (
        "source_index_state_classifier_du3",
        "theorem classifierSourceRowDomainMemberBridge",
    ),
}


def contains(path: Path, needle: str) -> bool:
    return needle in path.read_text()


def main() -> None:
    results = {}
    for name, (file_key, needle) in CHECKS.items():
        path = FILES[file_key]
        results[name] = {
            "file": str(path.relative_to(ROOT)),
            "needle": needle,
            "present": contains(path, needle),
        }

    all_present = all(item["present"] for item in results.values())

    conclusion = {
        "status": "contract-present-generator-obligation-open"
        if all_present
        else "contract-surface-missing",
        "accepted_production_target": (
            "TemplateLanguageMemberBridgeOnRange lo hi, preferably obtained "
            "from TemplateLanguageMemberBridgeOnDomain for a compressed "
            "state/algebraic domain"
        ),
        "missing_generated_obligation": (
            "For each nonempty range/family, prove that every identity-linear "
            "GoodDirection survivor belongs to a compressed semantic domain, "
            "and prove TemplateLanguageMemberBridgeOnDomain for that domain, "
            "without finite selector catalogs, classifierAppliesBool, "
            "compact-Walsh membership imports, or rank-local Boolean reduction."
        ),
        "rejected_surfaces": [
            "classifierAppliesBool membership proved by decide",
            "goodDirectionAtRankBool -> classifierAppliesBool singleton reduction",
            "rank-family-map membership tables",
            "compact-Walsh membership roots as the production bridge",
            "finite source-index/selector catalogs as the production coordinate",
        ],
    }

    payload = {
        "checks": results,
        "all_required_surfaces_present": all_present,
        "conclusion": conclusion,
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DC Semantic Coverage Contract Audit",
        "",
        "This diagnostic records the current Lean theorem surface for the",
        "GoodDirection-only positive-survivor route.  It is not proof evidence;",
        "it is a contract for the next proof-producing generator.",
        "",
        "## Checks",
        "",
        "| Check | Present | File |",
        "| --- | ---: | --- |",
    ]
    for name, item in results.items():
        lines.append(
            f"| `{name}` | `{str(item['present']).lower()}` | `{item['file']}` |"
        )

    lines.extend(
        [
            "",
            "## Conclusion",
            "",
            f"Status: `{conclusion['status']}`.",
            "",
            "Accepted production target:",
            "",
            f"> {conclusion['accepted_production_target']}",
            "",
            "Missing generated obligation:",
            "",
            f"> {conclusion['missing_generated_obligation']}",
            "",
            "Rejected surfaces:",
            "",
        ]
    )
    for item in conclusion["rejected_surfaces"]:
        lines.append(f"- {item}")

    OUT_MD.write_text("\n".join(lines) + "\n")

    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
