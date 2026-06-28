import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsShard000Smoke

/-!
Generated AP.16Y.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingShard000Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsShard000Smoke

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
  | 4 => .c010
  | 6 => .c010
  | 11 => .c007
  | 22 => .c003
  | 30 => .c008
  | 31 => .c008
  | 59 => .c004
  | 63 => .c006
  | _ => .c010

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 100805 mask

private theorem sig_000_mask_04_signatureFacts :
    sig_000SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c010 100805 ⟨4, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_06_signatureFacts :
    sig_000SignatureFacts ⟨6, by decide⟩ := by
  change CandidateFacts .c010 100805 ⟨6, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_11_signatureFacts :
    sig_000SignatureFacts ⟨11, by decide⟩ := by
  change CandidateFacts .c007 100805 ⟨11, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c003 100805 ⟨22, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c008 100805 ⟨30, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c008 100805 ⟨31, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_59_signatureFacts :
    sig_000SignatureFacts ⟨59, by decide⟩ := by
  change CandidateFacts .c004 100805 ⟨59, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c006 100805 ⟨63, by decide⟩
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
  | 9 => .c010
  | 13 => .c002
  | 18 => .c010
  | 22 => .c000
  | 24 => .c010
  | 29 => .c001
  | 30 => .c001
  | 31 => .c000
  | 39 => .c005
  | 45 => .c004
  | 54 => .c009
  | _ => .c010

private def sig_001CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_001CandidateOfNat mask.val

private def sig_001SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_001CandidateOfMask mask) 129 mask

private theorem sig_001_mask_09_signatureFacts :
    sig_001SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c010 129 ⟨9, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_001_mask_13_signatureFacts :
    sig_001SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c002 129 ⟨13, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_001_mask_18_signatureFacts :
    sig_001SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c010 129 ⟨18, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_001_mask_22_signatureFacts :
    sig_001SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c000 129 ⟨22, by decide⟩
  exact case_000011_candidateFacts

private theorem sig_001_mask_24_signatureFacts :
    sig_001SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c010 129 ⟨24, by decide⟩
  exact case_000012_candidateFacts

private theorem sig_001_mask_29_signatureFacts :
    sig_001SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c001 129 ⟨29, by decide⟩
  exact case_000013_candidateFacts

private theorem sig_001_mask_30_signatureFacts :
    sig_001SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c001 129 ⟨30, by decide⟩
  exact case_000014_candidateFacts

private theorem sig_001_mask_31_signatureFacts :
    sig_001SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c000 129 ⟨31, by decide⟩
  exact case_000015_candidateFacts

private theorem sig_001_mask_39_signatureFacts :
    sig_001SignatureFacts ⟨39, by decide⟩ := by
  change CandidateFacts .c005 129 ⟨39, by decide⟩
  exact case_000016_candidateFacts

private theorem sig_001_mask_45_signatureFacts :
    sig_001SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c004 129 ⟨45, by decide⟩
  exact case_000017_candidateFacts

private theorem sig_001_mask_54_signatureFacts :
    sig_001SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c009 129 ⟨54, by decide⟩
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

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingShard000Smoke
