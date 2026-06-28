import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16AP thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalRoutingShard000Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000745`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c010
  | 13 => .c005
  | 16 => .c011
  | 22 => .c000
  | 28 => .c004
  | 29 => .c002
  | 30 => .c007
  | 31 => .c002
  | 45 => .c011
  | 47 => .c011
  | 54 => .c001
  | 55 => .c009
  | 63 => .c002
  | _ => .c010

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000745 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c010 6000745 ⟨8, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c005 6000745 ⟨13, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c011 6000745 ⟨16, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c000 6000745 ⟨22, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_28_signatureFacts :
    sig_000SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c004 6000745 ⟨28, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c002 6000745 ⟨29, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c007 6000745 ⟨30, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c002 6000745 ⟨31, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c011 6000745 ⟨45, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c011 6000745 ⟨47, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_54_signatureFacts :
    sig_000SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c001 6000745 ⟨54, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c009 6000745 ⟨55, by decide⟩
  exact case_000011_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c002 6000745 ⟨63, by decide⟩
  exact case_000012_candidateFacts

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
          have hmask : mask = ⟨22, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_22_signatureFacts
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
                      have hmask : mask = ⟨47, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_47_signatureFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = ⟨54, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_000_mask_54_signatureFacts
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
      forall {mask : SignMask} (hlt : 6000745 < numPairWords),
        goodDirectionAtRankBool ⟨6000745, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000745 6000746 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000745 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000745 < numPairWords),
        goodDirectionAtRankBool ⟨6000745, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000745 6000746 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalRoutingShard000Smoke
