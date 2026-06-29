import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16DO thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720RoutingSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720CandidateFactsSmoke

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
  | 8 => .c002
  | 16 => .c003
  | 30 => .c000
  | 47 => .c003
  | 55 => .c001
  | 63 => .c000
  | _ => .c002

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000720 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c002 6000720 ⟨8, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c003 6000720 ⟨16, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c000 6000720 ⟨30, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c003 6000720 ⟨47, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c001 6000720 ⟨55, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c000 6000720 ⟨63, by decide⟩
  exact case_000005_candidateFacts

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

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720RoutingSmoke
