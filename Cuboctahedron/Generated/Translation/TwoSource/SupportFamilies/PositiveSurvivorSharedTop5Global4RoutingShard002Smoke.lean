import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16AQ thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4RoutingShard002Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4CandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000720`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 16 \/
    mask.val = 30 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c014
  | 16 => .c015
  | 30 => .c003
  | 47 => .c015
  | 55 => .c013
  | 63 => .c003
  | _ => .c014

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000720 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c014 6000720 ⟨8, by decide⟩
  exact case_000030_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c015 6000720 ⟨16, by decide⟩
  exact case_000031_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c003 6000720 ⟨30, by decide⟩
  exact case_000032_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c015 6000720 ⟨47, by decide⟩
  exact case_000033_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c013 6000720 ⟨55, by decide⟩
  exact case_000034_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c003 6000720 ⟨63, by decide⟩
  exact case_000035_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨8, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_08_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨16, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_16_signatureFacts
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
          have hmask : mask = ⟨47, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_47_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨55, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_55_signatureFacts
          ·
            have hmask : mask = ⟨63, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000720 < numPairWords),
        goodDirectionAtRankBool ⟨6000720, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000720 6000721 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000720 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000720 < numPairWords),
        goodDirectionAtRankBool ⟨6000720, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000720 6000721 :=
  (sig_000Classifier hmask).to_allGoodCoverage

/-- AP.16W signature `1` at anchor rank `6000662`. -/
private def sig_001GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 5 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 20 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 62 \/
    mask.val = 63

private def sig_001CandidateOfNat : Nat -> GeneratedCandidate
  | 5 => .c006
  | 13 => .c007
  | 16 => .c015
  | 18 => .c015
  | 20 => .c006
  | 28 => .c000
  | 29 => .c003
  | 30 => .c008
  | 31 => .c004
  | 45 => .c015
  | 62 => .c013
  | 63 => .c001
  | _ => .c006

private def sig_001CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_001CandidateOfNat mask.val

private def sig_001SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_001CandidateOfMask mask) 6000662 mask

private theorem sig_001_mask_05_signatureFacts :
    sig_001SignatureFacts ⟨5, by decide⟩ := by
  change CandidateFacts .c006 6000662 ⟨5, by decide⟩
  exact case_000036_candidateFacts

private theorem sig_001_mask_13_signatureFacts :
    sig_001SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c007 6000662 ⟨13, by decide⟩
  exact case_000037_candidateFacts

private theorem sig_001_mask_16_signatureFacts :
    sig_001SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c015 6000662 ⟨16, by decide⟩
  exact case_000038_candidateFacts

private theorem sig_001_mask_18_signatureFacts :
    sig_001SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c015 6000662 ⟨18, by decide⟩
  exact case_000039_candidateFacts

private theorem sig_001_mask_20_signatureFacts :
    sig_001SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c006 6000662 ⟨20, by decide⟩
  exact case_000040_candidateFacts

private theorem sig_001_mask_28_signatureFacts :
    sig_001SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c000 6000662 ⟨28, by decide⟩
  exact case_000041_candidateFacts

private theorem sig_001_mask_29_signatureFacts :
    sig_001SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c003 6000662 ⟨29, by decide⟩
  exact case_000042_candidateFacts

private theorem sig_001_mask_30_signatureFacts :
    sig_001SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c008 6000662 ⟨30, by decide⟩
  exact case_000043_candidateFacts

private theorem sig_001_mask_31_signatureFacts :
    sig_001SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c004 6000662 ⟨31, by decide⟩
  exact case_000044_candidateFacts

private theorem sig_001_mask_45_signatureFacts :
    sig_001SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c015 6000662 ⟨45, by decide⟩
  exact case_000045_candidateFacts

private theorem sig_001_mask_62_signatureFacts :
    sig_001SignatureFacts ⟨62, by decide⟩ := by
  change CandidateFacts .c013 6000662 ⟨62, by decide⟩
  exact case_000046_candidateFacts

private theorem sig_001_mask_63_signatureFacts :
    sig_001SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c001 6000662 ⟨63, by decide⟩
  exact case_000047_candidateFacts

private theorem sig_001AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_001GoodMaskMember mask) :
    sig_001SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨5, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_001_mask_05_signatureFacts
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
        have hmask : mask = ⟨16, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_001_mask_16_signatureFacts
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
            have hmask : mask = ⟨20, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_001_mask_20_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨28, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_001_mask_28_signatureFacts
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
                      have hmask : mask = ⟨45, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_001_mask_45_signatureFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = ⟨62, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_001_mask_62_signatureFacts
                      ·
                        have hmask : mask = ⟨63, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_001_mask_63_signatureFacts

private def sig_001Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000662 < numPairWords),
        goodDirectionAtRankBool ⟨6000662, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000662 6000663 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000662 GeneratedCandidate sig_001CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000662 < numPairWords),
        goodDirectionAtRankBool ⟨6000662, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000662 6000663 :=
  (sig_001Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4RoutingShard002Smoke
