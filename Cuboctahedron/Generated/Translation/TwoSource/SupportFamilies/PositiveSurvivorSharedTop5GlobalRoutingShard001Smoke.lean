import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16AP thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalRoutingShard001Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000625`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 20 \/
    mask.val = 22 \/
    mask.val = 29 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c011
  | 9 => .c010
  | 13 => .c012
  | 20 => .c010
  | 22 => .c006
  | 29 => .c012
  | 31 => .c002
  | 45 => .c011
  | 47 => .c003
  | 55 => .c009
  | 63 => .c002
  | _ => .c011

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000625 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c011 6000625 ⟨8, by decide⟩
  exact case_000013_candidateFacts

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c010 6000625 ⟨9, by decide⟩
  exact case_000014_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c012 6000625 ⟨13, by decide⟩
  exact case_000015_candidateFacts

private theorem sig_000_mask_20_signatureFacts :
    sig_000SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c010 6000625 ⟨20, by decide⟩
  exact case_000016_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c006 6000625 ⟨22, by decide⟩
  exact case_000017_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c012 6000625 ⟨29, by decide⟩
  exact case_000018_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c002 6000625 ⟨31, by decide⟩
  exact case_000019_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c011 6000625 ⟨45, by decide⟩
  exact case_000020_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c003 6000625 ⟨47, by decide⟩
  exact case_000021_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c009 6000625 ⟨55, by decide⟩
  exact case_000022_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c002 6000625 ⟨63, by decide⟩
  exact case_000023_candidateFacts

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
      have hmask : mask = ⟨9, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_09_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨13, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_000_mask_13_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨20, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_20_signatureFacts
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
              have hmask : mask = ⟨29, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_000_mask_29_signatureFacts
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
                  have hmask : mask = ⟨45, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_000_mask_45_signatureFacts
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
      forall {mask : SignMask} (hlt : 6000625 < numPairWords),
        goodDirectionAtRankBool ⟨6000625, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000625 6000626 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000625 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000625 < numPairWords),
        goodDirectionAtRankBool ⟨6000625, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000625 6000626 :=
  (sig_000Classifier hmask).to_allGoodCoverage

/-- AP.16W signature `1` at anchor rank `6000480`. -/
private def sig_001GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 14 \/
    mask.val = 17 \/
    mask.val = 23 \/
    mask.val = 31 \/
    mask.val = 46 \/
    mask.val = 62

private def sig_001CandidateOfNat : Nat -> GeneratedCandidate
  | 14 => .c008
  | 17 => .c011
  | 23 => .c006
  | 31 => .c002
  | 46 => .c005
  | 62 => .c002
  | _ => .c008

private def sig_001CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_001CandidateOfNat mask.val

private def sig_001SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_001CandidateOfMask mask) 6000480 mask

private theorem sig_001_mask_14_signatureFacts :
    sig_001SignatureFacts ⟨14, by decide⟩ := by
  change CandidateFacts .c008 6000480 ⟨14, by decide⟩
  exact case_000024_candidateFacts

private theorem sig_001_mask_17_signatureFacts :
    sig_001SignatureFacts ⟨17, by decide⟩ := by
  change CandidateFacts .c011 6000480 ⟨17, by decide⟩
  exact case_000025_candidateFacts

private theorem sig_001_mask_23_signatureFacts :
    sig_001SignatureFacts ⟨23, by decide⟩ := by
  change CandidateFacts .c006 6000480 ⟨23, by decide⟩
  exact case_000026_candidateFacts

private theorem sig_001_mask_31_signatureFacts :
    sig_001SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c002 6000480 ⟨31, by decide⟩
  exact case_000027_candidateFacts

private theorem sig_001_mask_46_signatureFacts :
    sig_001SignatureFacts ⟨46, by decide⟩ := by
  change CandidateFacts .c005 6000480 ⟨46, by decide⟩
  exact case_000028_candidateFacts

private theorem sig_001_mask_62_signatureFacts :
    sig_001SignatureFacts ⟨62, by decide⟩ := by
  change CandidateFacts .c002 6000480 ⟨62, by decide⟩
  exact case_000029_candidateFacts

private theorem sig_001AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_001GoodMaskMember mask) :
    sig_001SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨14, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_001_mask_14_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨17, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_001_mask_17_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨23, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_001_mask_23_signatureFacts
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
            have hmask : mask = ⟨46, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_001_mask_46_signatureFacts
          ·
            have hmask : mask = ⟨62, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_001_mask_62_signatureFacts

private def sig_001Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000480 < numPairWords),
        goodDirectionAtRankBool ⟨6000480, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000480 6000481 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000480 GeneratedCandidate sig_001CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000480 < numPairWords),
        goodDirectionAtRankBool ⟨6000480, hlt⟩ mask = true ->
          sig_001GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000480 6000481 :=
  (sig_001Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalRoutingShard001Smoke
