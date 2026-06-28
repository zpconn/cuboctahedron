import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard004Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard004Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard004Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `724`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 15 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 57 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 15 => .c006
  | 16 => .c004
  | 22 => .c000
  | 24 => .c004
  | 29 => .c001
  | 30 => .c000
  | 31 => .c006
  | 45 => .c005
  | 47 => .c005
  | 57 => .c002
  | 63 => .c003
  | _ => .c006

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 724 mask

private theorem sig_000_mask_15_signatureFacts :
    sig_000SignatureFacts ⟨15, by decide⟩ := by
  change CandidateFacts .c006 724 ⟨15, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c004 724 ⟨16, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c000 724 ⟨22, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_24_signatureFacts :
    sig_000SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c004 724 ⟨24, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c001 724 ⟨29, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c000 724 ⟨30, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c006 724 ⟨31, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c005 724 ⟨45, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c005 724 ⟨47, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_57_signatureFacts :
    sig_000SignatureFacts ⟨57, by decide⟩ := by
  change CandidateFacts .c002 724 ⟨57, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c003 724 ⟨63, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨15, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_15_signatureFacts
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
          have hmask : mask = ⟨24, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_24_signatureFacts
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
                      have hmask : mask = ⟨57, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_57_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 724 < numPairWords),
        goodDirectionAtRankBool ⟨724, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 724 725 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    724 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 724 < numPairWords),
        goodDirectionAtRankBool ⟨724, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 724 725 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard004Smoke
