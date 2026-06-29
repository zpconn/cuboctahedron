import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16DN thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480RoutingSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480CandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000480`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 14 \/
    mask.val = 17 \/
    mask.val = 23 \/
    mask.val = 31 \/
    mask.val = 46 \/
    mask.val = 62

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 14 => .c003
  | 17 => .c004
  | 23 => .c002
  | 31 => .c000
  | 46 => .c001
  | 62 => .c000
  | _ => .c003

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000480 mask

private theorem sig_000_mask_14_signatureFacts :
    sig_000SignatureFacts ⟨14, by decide⟩ := by
  change CandidateFacts .c003 6000480 ⟨14, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_17_signatureFacts :
    sig_000SignatureFacts ⟨17, by decide⟩ := by
  change CandidateFacts .c004 6000480 ⟨17, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_23_signatureFacts :
    sig_000SignatureFacts ⟨23, by decide⟩ := by
  change CandidateFacts .c002 6000480 ⟨23, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c000 6000480 ⟨31, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_46_signatureFacts :
    sig_000SignatureFacts ⟨46, by decide⟩ := by
  change CandidateFacts .c001 6000480 ⟨46, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_62_signatureFacts :
    sig_000SignatureFacts ⟨62, by decide⟩ := by
  change CandidateFacts .c000 6000480 ⟨62, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨14, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_14_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨17, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_17_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨23, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_000_mask_23_signatureFacts
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
            have hmask : mask = ⟨46, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_46_signatureFacts
          ·
            have hmask : mask = ⟨62, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_62_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000480 < numPairWords),
        goodDirectionAtRankBool ⟨6000480, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000480 6000481 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000480 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000480 < numPairWords),
        goodDirectionAtRankBool ⟨6000480, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000480 6000481 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480RoutingSmoke
