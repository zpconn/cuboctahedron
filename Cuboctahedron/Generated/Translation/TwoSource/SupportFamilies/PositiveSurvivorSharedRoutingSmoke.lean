import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsSmoke

/-!
Generated AP.16W thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `100805`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 6 \/
    mask.val = 11 \/
    mask.val = 22 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 59 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c013
  | 6 => .c013
  | 11 => .c010
  | 22 => .c005
  | 30 => .c011
  | 31 => .c011
  | 59 => .c006
  | 63 => .c009
  | _ => .c013

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 100805 mask

private theorem sig_000_mask_04_signatureFacts :
    sig_000SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c013 100805 ⟨4, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_06_signatureFacts :
    sig_000SignatureFacts ⟨6, by decide⟩ := by
  change CandidateFacts .c013 100805 ⟨6, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_11_signatureFacts :
    sig_000SignatureFacts ⟨11, by decide⟩ := by
  change CandidateFacts .c010 100805 ⟨11, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c005 100805 ⟨22, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c011 100805 ⟨30, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c011 100805 ⟨31, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_59_signatureFacts :
    sig_000SignatureFacts ⟨59, by decide⟩ := by
  change CandidateFacts .c006 100805 ⟨59, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c009 100805 ⟨63, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨4, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_04_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨6, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_06_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨11, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_000_mask_11_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨22, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_22_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨30, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_30_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨31, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_000_mask_31_signatureFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨59, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_000_mask_59_signatureFacts
              ·
                have hmask : mask = ⟨63, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 100805 100806 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    100805 GeneratedCandidate sig_000CandidateOfMask
    sig_000GoodMaskMember sig_000SignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases sig_000CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_000CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_000CandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact sig_000AllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem sig_000AllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 100805 100806 :=
  (sig_000Classifier hmask).to_allGoodCoverage

/-- AP.16W signature `1` at anchor rank `129`. -/
private def sig_001GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 39 \/
    mask.val = 45 \/
    mask.val = 54

private def sig_001CandidateOfNat : Nat -> GeneratedCandidate
  | 9 => .c013
  | 13 => .c004
  | 18 => .c013
  | 22 => .c001
  | 24 => .c013
  | 29 => .c002
  | 30 => .c002
  | 31 => .c001
  | 39 => .c007
  | 45 => .c006
  | 54 => .c012
  | _ => .c013

private def sig_001CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_001CandidateOfNat mask.val

private def sig_001SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_001CandidateOfMask mask) 129 mask

private theorem sig_001_mask_09_signatureFacts :
    sig_001SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c013 129 ⟨9, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_001_mask_13_signatureFacts :
    sig_001SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c004 129 ⟨13, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_001_mask_18_signatureFacts :
    sig_001SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c013 129 ⟨18, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_001_mask_22_signatureFacts :
    sig_001SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c001 129 ⟨22, by decide⟩
  exact case_000011_candidateFacts

private theorem sig_001_mask_24_signatureFacts :
    sig_001SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c013 129 ⟨24, by decide⟩
  exact case_000012_candidateFacts

private theorem sig_001_mask_29_signatureFacts :
    sig_001SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c002 129 ⟨29, by decide⟩
  exact case_000013_candidateFacts

private theorem sig_001_mask_30_signatureFacts :
    sig_001SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c002 129 ⟨30, by decide⟩
  exact case_000014_candidateFacts

private theorem sig_001_mask_31_signatureFacts :
    sig_001SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c001 129 ⟨31, by decide⟩
  exact case_000015_candidateFacts

private theorem sig_001_mask_39_signatureFacts :
    sig_001SignatureFacts ⟨39, by decide⟩ := by
  change CandidateFacts .c007 129 ⟨39, by decide⟩
  exact case_000016_candidateFacts

private theorem sig_001_mask_45_signatureFacts :
    sig_001SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c006 129 ⟨45, by decide⟩
  exact case_000017_candidateFacts

private theorem sig_001_mask_54_signatureFacts :
    sig_001SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c012 129 ⟨54, by decide⟩
  exact case_000018_candidateFacts

private theorem sig_001AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_001GoodMaskMember mask) :
    sig_001SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨9, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_001_mask_09_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨13, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_001_mask_13_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨18, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_001_mask_18_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨22, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_001_mask_22_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨24, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_001_mask_24_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨29, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_001_mask_29_signatureFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨30, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_001_mask_30_signatureFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨31, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_001_mask_31_signatureFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨39, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    exact sig_001_mask_39_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨45, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_001_mask_45_signatureFacts
                    ·
                      have hmask : mask = ⟨54, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_001_mask_54_signatureFacts

private def sig_001Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 129 < numPairWords),
        goodDirectionAtRankBool ⟨129, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 129 130 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    129 GeneratedCandidate sig_001CandidateOfMask
    sig_001GoodMaskMember sig_001SignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases sig_001CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_001CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_001CandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact sig_001AllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem sig_001AllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 129 < numPairWords),
        goodDirectionAtRankBool ⟨129, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 129 130 :=
  (sig_001Classifier hmask).to_allGoodCoverage

/-- AP.16W signature `2` at anchor rank `11`. -/
private def sig_002GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 28 \/
    mask.val = 30 \/
    mask.val = 54 \/
    mask.val = 61 \/
    mask.val = 63

private def sig_002CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c013
  | 9 => .c013
  | 16 => .c013
  | 18 => .c013
  | 22 => .c002
  | 24 => .c013
  | 28 => .c008
  | 30 => .c002
  | 54 => .c012
  | 61 => .c008
  | 63 => .c002
  | _ => .c013

private def sig_002CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_002CandidateOfNat mask.val

private def sig_002SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_002CandidateOfMask mask) 11 mask

private theorem sig_002_mask_08_signatureFacts :
    sig_002SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c013 11 ⟨8, by decide⟩
  exact case_000019_candidateFacts

private theorem sig_002_mask_09_signatureFacts :
    sig_002SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c013 11 ⟨9, by decide⟩
  exact case_000020_candidateFacts

private theorem sig_002_mask_16_signatureFacts :
    sig_002SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c013 11 ⟨16, by decide⟩
  exact case_000021_candidateFacts

private theorem sig_002_mask_18_signatureFacts :
    sig_002SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c013 11 ⟨18, by decide⟩
  exact case_000022_candidateFacts

private theorem sig_002_mask_22_signatureFacts :
    sig_002SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c002 11 ⟨22, by decide⟩
  exact case_000023_candidateFacts

private theorem sig_002_mask_24_signatureFacts :
    sig_002SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c013 11 ⟨24, by decide⟩
  exact case_000024_candidateFacts

private theorem sig_002_mask_28_signatureFacts :
    sig_002SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c008 11 ⟨28, by decide⟩
  exact case_000025_candidateFacts

private theorem sig_002_mask_30_signatureFacts :
    sig_002SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c002 11 ⟨30, by decide⟩
  exact case_000026_candidateFacts

private theorem sig_002_mask_54_signatureFacts :
    sig_002SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c012 11 ⟨54, by decide⟩
  exact case_000027_candidateFacts

private theorem sig_002_mask_61_signatureFacts :
    sig_002SignatureFacts ⟨61, by decide⟩ := by
  change CandidateFacts .c008 11 ⟨61, by decide⟩
  exact case_000028_candidateFacts

private theorem sig_002_mask_63_signatureFacts :
    sig_002SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c002 11 ⟨63, by decide⟩
  exact case_000029_candidateFacts

private theorem sig_002AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_002GoodMaskMember mask) :
    sig_002SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨8, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_002_mask_08_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨9, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_002_mask_09_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨16, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_002_mask_16_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨18, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_002_mask_18_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨22, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_002_mask_22_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨24, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_002_mask_24_signatureFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨28, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_002_mask_28_signatureFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨30, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_002_mask_30_signatureFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨54, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    exact sig_002_mask_54_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨61, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_002_mask_61_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_002_mask_63_signatureFacts

private def sig_002Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 11 < numPairWords),
        goodDirectionAtRankBool ⟨11, hlt⟩ mask = true ->
          sig_002GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 11 12 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    11 GeneratedCandidate sig_002CandidateOfMask
    sig_002GoodMaskMember sig_002SignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases sig_002CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_002CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_002CandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact sig_002AllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem sig_002AllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 11 < numPairWords),
        goodDirectionAtRankBool ⟨11, hlt⟩ mask = true ->
          sig_002GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 11 12 :=
  (sig_002Classifier hmask).to_allGoodCoverage

/-- AP.16W signature `3` at anchor rank `1937`. -/
private def sig_003GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 39 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_003CandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c013
  | 8 => .c003
  | 13 => .c006
  | 16 => .c003
  | 22 => .c012
  | 39 => .c003
  | 45 => .c006
  | 47 => .c003
  | 54 => .c012
  | 55 => .c003
  | 63 => .c000
  | _ => .c013

private def sig_003CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_003CandidateOfNat mask.val

private def sig_003SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_003CandidateOfMask mask) 1937 mask

private theorem sig_003_mask_04_signatureFacts :
    sig_003SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c013 1937 ⟨4, by decide⟩
  exact case_000030_candidateFacts

private theorem sig_003_mask_08_signatureFacts :
    sig_003SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨8, by decide⟩
  exact case_000031_candidateFacts

private theorem sig_003_mask_13_signatureFacts :
    sig_003SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c006 1937 ⟨13, by decide⟩
  exact case_000032_candidateFacts

private theorem sig_003_mask_16_signatureFacts :
    sig_003SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨16, by decide⟩
  exact case_000033_candidateFacts

private theorem sig_003_mask_22_signatureFacts :
    sig_003SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c012 1937 ⟨22, by decide⟩
  exact case_000034_candidateFacts

private theorem sig_003_mask_39_signatureFacts :
    sig_003SignatureFacts ⟨39, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨39, by decide⟩
  exact case_000035_candidateFacts

private theorem sig_003_mask_45_signatureFacts :
    sig_003SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c006 1937 ⟨45, by decide⟩
  exact case_000036_candidateFacts

private theorem sig_003_mask_47_signatureFacts :
    sig_003SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨47, by decide⟩
  exact case_000037_candidateFacts

private theorem sig_003_mask_54_signatureFacts :
    sig_003SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c012 1937 ⟨54, by decide⟩
  exact case_000038_candidateFacts

private theorem sig_003_mask_55_signatureFacts :
    sig_003SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨55, by decide⟩
  exact case_000039_candidateFacts

private theorem sig_003_mask_63_signatureFacts :
    sig_003SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c000 1937 ⟨63, by decide⟩
  exact case_000040_candidateFacts

private theorem sig_003AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_003GoodMaskMember mask) :
    sig_003SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨4, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_003_mask_04_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨8, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_003_mask_08_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨13, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_003_mask_13_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨16, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_003_mask_16_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨22, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_003_mask_22_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨39, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_003_mask_39_signatureFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨45, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_003_mask_45_signatureFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨47, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_003_mask_47_signatureFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨54, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    exact sig_003_mask_54_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨55, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_003_mask_55_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_003_mask_63_signatureFacts

private def sig_003Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 1937 < numPairWords),
        goodDirectionAtRankBool ⟨1937, hlt⟩ mask = true ->
          sig_003GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 1937 1938 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    1937 GeneratedCandidate sig_003CandidateOfMask
    sig_003GoodMaskMember sig_003SignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases sig_003CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_003CandidateOfMask mask <;> rfl)
    (by intro mask; cases sig_003CandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact sig_003AllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem sig_003AllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 1937 < numPairWords),
        goodDirectionAtRankBool ⟨1937, hlt⟩ mask = true ->
          sig_003GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 1937 1938 :=
  (sig_003Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingSmoke
