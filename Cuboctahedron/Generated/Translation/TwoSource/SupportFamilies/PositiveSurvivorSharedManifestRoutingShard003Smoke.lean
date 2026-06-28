import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard003Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard003Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard003Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `498`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 0 \/
    mask.val = 7 \/
    mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 47 \/
    mask.val = 55

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 0 => .c004
  | 7 => .c000
  | 8 => .c004
  | 9 => .c004
  | 13 => .c002
  | 16 => .c004
  | 18 => .c004
  | 22 => .c003
  | 24 => .c004
  | 47 => .c001
  | 55 => .c001
  | _ => .c004

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 498 mask

private theorem sig_000_mask_00_signatureFacts :
    sig_000SignatureFacts ⟨0, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨0, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_07_signatureFacts :
    sig_000SignatureFacts ⟨7, by decide⟩ := by
  change CandidateFacts .c000 498 ⟨7, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨8, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨9, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c002 498 ⟨13, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨16, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_18_signatureFacts :
    sig_000SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨18, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c003 498 ⟨22, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_24_signatureFacts :
    sig_000SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c004 498 ⟨24, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c001 498 ⟨47, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c001 498 ⟨55, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨0, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_00_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨7, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_07_signatureFacts
    ·
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
                      have hmask : mask = ⟨47, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_47_signatureFacts
                    ·
                      have hmask : mask = ⟨55, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_55_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 498 < numPairWords),
        goodDirectionAtRankBool ⟨498, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 498 499 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    498 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 498 < numPairWords),
        goodDirectionAtRankBool ⟨498, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 498 499 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard003Smoke
