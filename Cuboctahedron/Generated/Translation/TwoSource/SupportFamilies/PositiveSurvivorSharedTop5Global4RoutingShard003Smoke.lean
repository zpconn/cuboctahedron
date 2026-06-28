import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16AQ thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4RoutingShard003Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4CandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000717`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
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

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
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
  | 62 => .c011
  | 63 => .c001
  | _ => .c006

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000717 mask

private theorem sig_000_mask_05_signatureFacts :
    sig_000SignatureFacts ⟨5, by decide⟩ := by
  change CandidateFacts .c006 6000717 ⟨5, by decide⟩
  exact case_000048_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c007 6000717 ⟨13, by decide⟩
  exact case_000049_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c015 6000717 ⟨16, by decide⟩
  exact case_000050_candidateFacts

private theorem sig_000_mask_18_signatureFacts :
    sig_000SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c015 6000717 ⟨18, by decide⟩
  exact case_000051_candidateFacts

private theorem sig_000_mask_20_signatureFacts :
    sig_000SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c006 6000717 ⟨20, by decide⟩
  exact case_000052_candidateFacts

private theorem sig_000_mask_28_signatureFacts :
    sig_000SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c000 6000717 ⟨28, by decide⟩
  exact case_000053_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c003 6000717 ⟨29, by decide⟩
  exact case_000054_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c008 6000717 ⟨30, by decide⟩
  exact case_000055_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c004 6000717 ⟨31, by decide⟩
  exact case_000056_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c015 6000717 ⟨45, by decide⟩
  exact case_000057_candidateFacts

private theorem sig_000_mask_62_signatureFacts :
    sig_000SignatureFacts ⟨62, by decide⟩ := by
  change CandidateFacts .c011 6000717 ⟨62, by decide⟩
  exact case_000058_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c001 6000717 ⟨63, by decide⟩
  exact case_000059_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨5, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_05_signatureFacts
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
        have hmask : mask = ⟨16, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_000_mask_16_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨18, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_18_signatureFacts
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
              have hmask : mask = ⟨28, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_000_mask_28_signatureFacts
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
                      have hmask : mask = ⟨45, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_45_signatureFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = ⟨62, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_000_mask_62_signatureFacts
                      ·
                        have hmask : mask = ⟨63, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000717 < numPairWords),
        goodDirectionAtRankBool ⟨6000717, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000717 6000718 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000717 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000717 < numPairWords),
        goodDirectionAtRankBool ⟨6000717, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000717 6000718 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4RoutingShard003Smoke
