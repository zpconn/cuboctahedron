import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsShard001Smoke

/-!
Generated AP.16Y.2 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingShard001Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsShard001Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `11`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
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

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c003
  | 9 => .c003
  | 16 => .c003
  | 18 => .c003
  | 22 => .c000
  | 24 => .c003
  | 28 => .c001
  | 30 => .c000
  | 54 => .c002
  | 61 => .c001
  | 63 => .c000
  | _ => .c003

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 11 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c003 11 ⟨8, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c003 11 ⟨9, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c003 11 ⟨16, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_18_signatureFacts :
    sig_000SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c003 11 ⟨18, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c000 11 ⟨22, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_24_signatureFacts :
    sig_000SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c003 11 ⟨24, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_28_signatureFacts :
    sig_000SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c001 11 ⟨28, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c000 11 ⟨30, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_54_signatureFacts :
    sig_000SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c002 11 ⟨54, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_61_signatureFacts :
    sig_000SignatureFacts ⟨61, by decide⟩ := by
  change CandidateFacts .c001 11 ⟨61, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c000 11 ⟨63, by decide⟩
  exact case_000010_candidateFacts

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
            have hmask : mask = ⟨22, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_22_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨24, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_000_mask_24_signatureFacts
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
                  have hmask : mask = ⟨30, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_000_mask_30_signatureFacts
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
                      have hmask : mask = ⟨61, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_61_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 11 < numPairWords),
        goodDirectionAtRankBool ⟨11, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 11 12 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    11 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 11 < numPairWords),
        goodDirectionAtRankBool ⟨11, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 11 12 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRoutingShard001Smoke
