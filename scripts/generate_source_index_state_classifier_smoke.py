#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8K GoodDirection-only classifier smoke.

The generated Lean module contains no concrete rank/mask examples.  It packages
selected source-index/state descriptors as a reflected classifier surface and
proves that each classifier branch yields `TranslationGoodCaseKilled`.
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

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    family_summary,
    write_json,
    write_text,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    merge_families,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du2_source_index_state_classifier_profile.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateClassifierDU3Smoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9d_classifier_catalog_bridge_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateClassifierDU3Smoke"
)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def ctor_name(index: int) -> str:
    return f"fam{index:03d}"


def select_families(families: list[Any], family_count: int) -> list[Any]:
    if family_count < 0:
        raise ValueError("--family-count must be nonnegative")
    if family_count > len(families):
        raise ValueError(
            f"--family-count {family_count} exceeds collected family count {len(families)}"
        )
    return families[:family_count]


def collect_profile_families(
    profile: dict[str, Any],
    *,
    jobs: int,
    source_key_surface: str,
) -> tuple[list[Any], dict[str, int], list[list[int]]]:
    if "ranges" in profile:
        ranges = [[int(start), int(end)] for start, end in profile["ranges"]]
        if not ranges:
            raise ValueError("profile ranges must be nonempty")
        parts = []
        for start, end in ranges:
            if end < start:
                raise ValueError(f"profile range [{start}, {end}) is invalid")
            parts.append(
                collect_families_maybe_parallel(
                    rank_start=start,
                    limit=end - start,
                    jobs=jobs,
                    source_key_surface=source_key_surface,
                )
            )
        families, counts = merge_families(parts)
        return families, counts, ranges

    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    if rank_end < rank_start:
        raise ValueError("profile rank_end is before rank_start")
    families, counts = collect_families_maybe_parallel(
        rank_start=rank_start,
        limit=rank_end - rank_start,
        jobs=jobs,
        source_key_surface=source_key_surface,
    )
    return families, counts, [[rank_start, rank_end]]


def descriptor_lines(index: int, family: Any) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    public_support_lines = [
        line.replace("private def", "def", 1)
        for line in support_lines(name, first.case.first_source, first.case.second_source)
    ]
    return [
        f"/-- Classifier smoke family `{family.key}`.",
        f"Observed bounded GoodDirection cases: {family.count}. -/",
        *public_support_lines,
        f"def {name}_desc : SourceIndexStateFamilyDescriptor where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
    ]


def classifier_lines(selected: list[Any]) -> list[str]:
    lines = ["inductive ClassifierApplies : Nat -> SignMask -> Prop"]
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.append(
            f"  | {ctor} {{r : Nat}} {{mask : SignMask}} "
            f"(h : {name}_desc.Applies r mask) : ClassifierApplies r mask"
        )
    lines.extend([
        "",
        "/-- Public key index for the generated classifier families. -/",
        "inductive ClassifierKey",
    ])
    for index, _family in enumerate(selected):
        lines.append(f"  | k{index:03d}")
    lines.extend([
        "deriving DecidableEq, Repr",
        "",
        "def ClassifierKey.toSourceIndexStateKey :",
        "    ClassifierKey -> SourceIndexStateKey",
    ])
    for index, family in enumerate(selected):
        key_ctor = f"k{index:03d}"
        name = family_name(index)
        template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
        lines.extend([
            f"  | .{key_ctor} => {{",
            f"      firstIndex := {family.source_indices[0]}",
            f"      secondIndex := {family.source_indices[1]}",
            f"      support := {name}_support",
            f"      template := SourceIndexTemplate.{template_ctor} }}",
        ])
    lines.extend([
        "",
        "def ClassifierKey.toFin :",
        f"    ClassifierKey -> Fin {len(selected)}",
    ])
    for index, _family in enumerate(selected):
        lines.append(f"  | .k{index:03d} => ⟨{index}, by decide⟩")
    lines.extend([
        "",
        "/-- Finite catalog view of the generated classifier keys.",
        "",
        "This is the preferred input shape for generated source/row membership",
        "chunks: the generated proof can target the generic",
        "`SourceRowFactsGoodCatalogOnRange` or",
        "`SourceRowPredicateGoodCatalogOnRange` APIs, then erase the concrete",
        "catalog immediately through the small theorems below. -/",
        f"def classifierSourceIndexKeyAt (i : Fin {len(selected)}) : SourceIndexStateKey :=",
    ])
    indent = "  "
    for index, _family in enumerate(selected):
        lines.append(
            f"{indent}if i.val = {index} then "
            f"ClassifierKey.k{index:03d}.toSourceIndexStateKey else"
        )
    lines.append(f"{indent}ClassifierKey.k000.toSourceIndexStateKey")
    lines.extend([
        "",
        "theorem classifierSourceIndexKeyAt_toFin (key : ClassifierKey) :",
        "    classifierSourceIndexKeyAt key.toFin = key.toSourceIndexStateKey := by",
        "  cases key <;> rfl",
        "",
        "def ClassifierKey.Matches",
        "    (key : ClassifierKey) (r : Nat) (mask : SignMask) : Prop :=",
        "  key.toSourceIndexStateKey.Matches r mask",
        "",
        "theorem classifierApplies_of_key_matches",
        "    {key : ClassifierKey} {r : Nat} {mask : SignMask}",
        "    (h : key.Matches r mask) :",
        "    ClassifierApplies r mask := by",
        "  cases key with",
    ])
    for index, _family in enumerate(selected):
        ctor = ctor_name(index)
        key_ctor = f"k{index:03d}"
        name = family_name(index)
        lines.extend([
            f"  | {key_ctor} =>",
            f"      exact ClassifierApplies.{ctor} (by",
            f"        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,",
            f"          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,",
            f"          {name}_desc] using h)",
        ])
    lines.extend([
        "",
        "theorem ClassifierKey.matches_of_source_row",
        "    {key : ClassifierKey} {r : Nat} {mask : SignMask}",
        "    (hsource :",
        "      SourceIndexStateSourceFacts key.toSourceIndexStateKey r mask)",
        "    (hrows : SourceIndexStateRowFacts key.toSourceIndexStateKey r mask) :",
        "    key.Matches r mask :=",
        "  SourceIndexStateKey.matches_of_source_row hsource hrows",
        "",
        "",
        "def classifierFamily : RowPropertyMembershipFamily where",
        "  Applies := ClassifierApplies",
        "  covered := by",
        "    intro r mask h",
        "    cases h with",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"    | {ctor} h =>",
            f"        exact {name}_desc.covered_of_applies h",
        ])
    lines.extend([
        "",
        "theorem classifierKillsOn : classifierFamily.KillsOn :=",
        "  classifierFamily.killsOn",
        "",
        "/-- Decidable classifier membership for the generated descriptor family. -/",
        "instance instDecidableClassifierApplies (r : Nat) (mask : SignMask) :",
        "    Decidable (ClassifierApplies r mask) := by",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        hname = f"h{index:03d}"
        lines.extend([
            f"  by_cases {hname} : {name}_desc.Applies r mask",
            f"  · exact isTrue (ClassifierApplies.{ctor} {hname})",
        ])
    lines.extend([
        "  · exact isFalse (by",
        "      intro h",
        "      cases h with",
    ])
    for index, _family in enumerate(selected):
        ctor = ctor_name(index)
        hname = f"h{index:03d}"
        lines.extend([
            f"      | {ctor} h => exact {hname} h",
        ])
    lines.extend([
        "    )",
        "",
        "/-- Boolean classifier surface for AP16DU membership-completeness emitters. -/",
        "def classifierAppliesBool (r : Nat) (mask : SignMask) : Bool :=",
        "  decide (ClassifierApplies r mask)",
        "",
        "theorem classifierApplies_of_bool",
        "    {r : Nat} {mask : SignMask}",
        "    (h : classifierAppliesBool r mask = true) :",
        "    ClassifierApplies r mask := by",
        "  simpa [classifierAppliesBool] using of_decide_eq_true h",
        "",
        "theorem classifierAppliesBool_eq_true_of_applies",
        "    {r : Nat} {mask : SignMask}",
        "    (h : ClassifierApplies r mask) :",
        "    classifierAppliesBool r mask = true := by",
        "  simpa [classifierAppliesBool] using decide_eq_true h",
        "",
        "/-- AP16DU bridge target for this bounded classifier surface. -/",
        "abbrev classifierCompletenessOnIdentityRange : Prop :=",
        "  RowPropertyMembershipCoverageOnIdentityRange classifierFamily 0 5000",
        "",
        "theorem classifierCompletenessOnIdentityRange_of_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                classifierAppliesBool rank mask = true) :",
        "    classifierCompletenessOnIdentityRange := by",
        "  intro rank hlt mask hlo hhi hM hgood",
        "  exact classifierApplies_of_bool",
        "    (hcomplete hlt hlo hhi hM",
        "      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))",
        "",
        "theorem classifierCompletenessOnIdentityRange_of_prop",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                ClassifierApplies rank mask) :",
        "    classifierCompletenessOnIdentityRange :=",
        "  classifierCompletenessOnIdentityRange_of_bool (fun hlt hlo hhi hM hgood =>",
        "    classifierAppliesBool_eq_true_of_applies",
        "      (hcomplete hlt hlo hhi hM hgood))",
        "",
        "theorem classifierCompletenessOnIdentityRange_of_key",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey, key.Matches rank mask) :",
        "    classifierCompletenessOnIdentityRange :=",
        "  classifierCompletenessOnIdentityRange_of_prop (fun hlt hlo hhi hM hgood =>",
        "    let ⟨key, hkey⟩ := hcomplete hlt hlo hhi hM hgood",
        "    classifierApplies_of_key_matches hkey)",
        "",
        "theorem classifierCompletenessOnIdentityRange_of_key_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    classifierCompletenessOnIdentityRange :=",
        "  classifierCompletenessOnIdentityRange_of_key (fun hlt hlo hhi hM hgood =>",
        "    let ⟨key, hsource, hrows⟩ := hcomplete hlt hlo hhi hM hgood",
        "    ⟨key, key.matches_of_source_row hsource hrows⟩)",
        "",
        "theorem classifierAllGoodCoverage",
        "    (hcomplete : classifierCompletenessOnIdentityRange) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 := by",
        "  intro rank hlo hhi hlt mask hM",
        "  exact classifierFamily.identityRangeKills",
        "    hcomplete rank hlt mask hlo hhi hM",
        "",
        "theorem classifierAllGoodCoverage_of_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                classifierAppliesBool rank mask = true) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  classifierAllGoodCoverage",
        "    (classifierCompletenessOnIdentityRange_of_bool hcomplete)",
        "",
        "theorem classifierAllGoodCoverage_of_key",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey, key.Matches rank mask) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  classifierAllGoodCoverage",
        "    (classifierCompletenessOnIdentityRange_of_key hcomplete)",
        "",
        "theorem classifierAllGoodCoverage_of_key_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  classifierAllGoodCoverage",
        "    (classifierCompletenessOnIdentityRange_of_key_source_row hcomplete)",
        "",
        "theorem classifierAllGoodCoverage_of_sourceIndexFactsCatalog",
        "    (hcomplete :",
        "      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage hcomplete",
        "",
        "theorem classifierAllGoodCoverage_of_sourceIndexPredicateCatalog",
        "    (hcomplete :",
        "      SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  SourceRowPredicateGoodCatalogOnRange.to_allGoodCoverage hcomplete",
        "",
        "theorem classifierTemplateLanguageCoverage_of_sourceIndexFactsCatalog",
        "    (hcomplete :",
        "      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    TemplateLanguageCoverageOnIdentityRange 0 5000 :=",
        "  TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsCatalog hcomplete",
        "",
        "theorem classifierTemplateLanguageCoverage_of_sourceIndexPredicateCatalog",
        "    (hcomplete :",
        "      SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    TemplateLanguageCoverageOnIdentityRange 0 5000 :=",
        "  TemplateLanguageCoverageOnIdentityRange.of_sourceRowPredicateCatalog hcomplete",
        "",
        "theorem classifierAllGoodCoverage_via_template_of_sourceIndexFactsCatalog",
        "    (hcomplete :",
        "      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  TemplateLanguageCoverageOnIdentityRange.to_allGoodCoverage",
        "    (classifierTemplateLanguageCoverage_of_sourceIndexFactsCatalog hcomplete)",
        "",
        "theorem sourceIndexFactsCatalog_of_classifierKey_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 := by",
        "  intro rank mask hlt hlo hhi hM hgood",
        "  rcases hcomplete hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩",
        "  have hlookup := classifierSourceIndexKeyAt_toFin key",
        "  exact ⟨key.toFin, by simpa [hlookup] using hsource,",
        "    by simpa [hlookup] using hrows⟩",
        "",
        "theorem sourceIndexFactsCatalog_of_classifierKey_source_row_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 :=",
        "  sourceIndexFactsCatalog_of_classifierKey_source_row",
        "    (fun hlt hlo hhi hM hgood =>",
        "      hcomplete hlt hlo hhi hM",
        "        (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))",
        "",
        "theorem classifierDescriptorCoverage_of_sourceIndexFactsCatalog",
        "    (hcomplete :",
        "      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=",
        "  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage",
        "    (SourceRowFactsGoodCatalogOnRange.to_bridge hcomplete)",
        "",
        "theorem classifierDescriptorCoverage_of_key_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=",
        "  classifierDescriptorCoverage_of_sourceIndexFactsCatalog",
        "    (sourceIndexFactsCatalog_of_classifierKey_source_row hcomplete)",
        "",
        "theorem classifierTemplateLanguageCoverage_of_key_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    TemplateLanguageCoverageOnIdentityRange 0 5000 :=",
        "  classifierTemplateLanguageCoverage_of_sourceIndexFactsCatalog",
        "    (sourceIndexFactsCatalog_of_classifierKey_source_row hcomplete)",
        "",
        "theorem classifierDescriptorBoolCoverage_of_key_source_row_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    SourceIndexStateDescriptorBoolCoverageOnRange 0 5000 := by",
        "  apply SourceIndexStateDescriptorBoolCoverageOnRange.of_sourceRowFacts",
        "  intro rank mask hlt hlo hhi hM hgoodBool",
        "  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩",
        "  exact ⟨key.toSourceIndexStateKey, hsource, hrows⟩",
        "",
        "theorem classifierSourceRowFactsBridge_of_key_source_row_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    SourceRowFactsGoodBridgeOnRange 0 5000 :=",
        "  SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge",
        "    (classifierDescriptorBoolCoverage_of_key_source_row_bool hcomplete)",
        "",
        "theorem classifierAllGoodCoverage_of_key_source_row_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourceFacts",
        "                    key.toSourceIndexStateKey rank mask /\\",
        "                    SourceIndexStateRowFacts",
        "                      key.toSourceIndexStateKey rank mask) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage",
        "    (classifierDescriptorBoolCoverage_of_key_source_row_bool hcomplete)",
        "",
        "theorem sourceIndexPredicateCatalog_of_classifierKey_source_row",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 := by",
        "  intro rank mask hlt hlo hhi hM hgood",
        "  rcases hcomplete hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩",
        "  have hlookup := classifierSourceIndexKeyAt_toFin key",
        "  exact ⟨key.toFin, by simpa [hlookup] using hsource,",
        "    by simpa [hlookup] using hrows⟩",
        "",
        "theorem sourceIndexPredicateCatalog_of_classifierKey_source_row_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 :=",
        "  sourceIndexPredicateCatalog_of_classifierKey_source_row",
        "    (fun hlt hlo hhi hM hgood =>",
        "      hcomplete hlt hlo hhi hM",
        "        (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))",
        "",
        "theorem classifierDescriptorCoverage_of_sourceIndexPredicateCatalog",
        "    (hcomplete :",
        "      SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=",
        "  SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage",
        "    (SourceRowPredicateGoodCatalogOnRange.to_bridge hcomplete)",
        "",
        "theorem classifierDescriptorCoverage_of_key_source_predicate",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=",
        "  classifierDescriptorCoverage_of_sourceIndexPredicateCatalog",
        "    (sourceIndexPredicateCatalog_of_classifierKey_source_row hcomplete)",
        "",
        "theorem classifierDescriptorBoolCoverage_of_key_source_predicate_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    SourceIndexStateDescriptorBoolCoverageOnRange 0 5000 := by",
        "  apply SourceIndexStateDescriptorBoolCoverageOnRange.of_sourcePredicateRows",
        "  intro rank mask hlt hlo hhi hM hgoodBool",
        "  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩",
        "  exact ⟨key.toSourceIndexStateKey, hsource, hrows⟩",
        "",
        "theorem classifierSourceRowFactsBridge_of_key_source_predicate_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    SourceRowFactsGoodBridgeOnRange 0 5000 :=",
        "  SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge",
        "    (classifierDescriptorBoolCoverage_of_key_source_predicate_bool hcomplete)",
        "",
        "theorem classifierAllGoodCoverage_of_key_source_predicate_bool",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        0 <= rank ->",
        "          rank < 5000 ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->",
        "                exists key : ClassifierKey,",
        "                  SourceIndexStateSourcePredicate",
        "                    key.toSourceIndexStateKey.firstIndex",
        "                    key.toSourceIndexStateKey.secondIndex",
        "                    key.toSourceIndexStateKey.support rank mask /\\",
        "                    key.toSourceIndexStateKey.template.Rows",
        "                      key.toSourceIndexStateKey.support rank mask) :",
        "    AllTranslationGoodCoverageOnRange 0 5000 :=",
        "  SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage",
        "    (classifierDescriptorBoolCoverage_of_key_source_predicate_bool hcomplete)",
        "",
    ])
    for index, family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"theorem {name}_goodKilled",
            "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
            f"    (h : {name}_desc.Applies r mask) :",
            "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=",
            f"  classifierKillsOn r hlt mask (ClassifierApplies.{ctor} h)",
            "",
        ])
    return lines


def module_lines(namespace: str, selected: list[Any], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage",
        "",
        "/-!",
        "Generated GoodDirection-only source-index/state classifier smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded replay proof.  It packages selected descriptor states as a",
        f"semantic classifier surface for Phase {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage",
        "",
        "set_option linter.unusedVariables false",
        "set_option maxRecDepth 10000",
        "",
    ]
    for index, family in enumerate(selected):
        lines.extend(descriptor_lines(index, family))
    lines.extend(classifier_lines(selected))
    lines.extend([
        "theorem sourceIndexStateClassifierSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    if len(payload["collection_ranges"]) == 1:
        selection_scope = f"`[{payload['rank_start']}, {payload['rank_end']})`"
    else:
        selection_scope = f"`{payload['collection_ranges']}`"
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Classifier Smoke",
        "",
        "This generated smoke is not global coverage. It packages selected",
        "source-index/state descriptors into a GoodDirection-only classifier",
        "without concrete rank/mask replay.",
        "",
        f"- Selected families: `{payload['selected_family_count']}`",
        f"- Selection scope: {selection_scope}",
        f"- Source key surface: `{payload['source_key_surface']}`",
        f"- Jobs used for collection: `{payload['jobs']}`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
        "## Selected Families",
        "",
        "| Cases | Template | Source indices |",
        "| ---: | --- | --- |",
    ]
    for family in payload["selected_families"]:
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def build_payload(
    *,
    profile: dict[str, Any],
    selected: list[Any],
    out: Path,
    namespace: str,
    family_count: int,
    phase: str,
    collected_family_count: int,
    collection_ranges: list[list[int]],
    collection_counts: dict[str, int],
    source_key_surface: str,
    jobs: int,
) -> dict[str, Any]:
    selected_cases = sum(family.count for family in selected)
    rank_start = min(start for start, _end in collection_ranges)
    rank_end = max(end for _start, end in collection_ranges)
    return {
        "schema_version": 1,
        "phase": phase,
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_end,
        "collection_ranges": collection_ranges,
        "collection_counts": collection_counts,
        "source_key_surface": source_key_surface,
        "jobs": jobs,
        "requested_family_count": family_count,
        "collected_family_count": collected_family_count,
        "selected_family_count": len(selected),
        "selected_case_count": selected_cases,
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "classifier-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "no bounded replay proof is emitted",
                "the module is a semantic classifier smoke, not global coverage",
            ],
        },
        "selected_families": [family_summary(family) for family in selected],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--family-count", type=int, default=5)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--source-key-surface", default="kind_impact")
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8K")
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.profile_json)
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    families, counts, ranges = collect_profile_families(
        profile,
        jobs=args.jobs,
        source_key_surface=args.source_key_surface,
    )
    expected_count = int(profile.get(
        "source_index_state_family_count",
        profile.get("family_count", len(families)),
    ))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    selected = select_families(families, args.family_count)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, selected, phase=args.phase)))
    payload = build_payload(
        profile=profile,
        selected=selected,
        out=args.out,
        namespace=namespace,
        family_count=args.family_count,
        phase=args.phase,
        collected_family_count=len(families),
        collection_ranges=ranges,
        collection_counts=counts,
        source_key_surface=args.source_key_surface,
        jobs=args.jobs,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "collected_family_count": payload["collected_family_count"],
        "selected_family_count": payload["selected_family_count"],
        "selected_case_count": payload["selected_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
