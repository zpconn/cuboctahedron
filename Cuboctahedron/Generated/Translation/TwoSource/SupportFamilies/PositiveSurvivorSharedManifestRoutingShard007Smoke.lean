import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard007Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard007Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard007Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `2441`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
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

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 9 => .c001
  | 13 => .c002
  | 18 => .c001
  | 22 => .c004
  | 24 => .c001
  | 29 => .c005
  | 30 => .c005
  | 31 => .c000
  | 39 => .c006
  | 45 => .c003
  | 54 => .c003
  | _ => .c001

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 2441 mask

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c001 2441 ⟨9, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c002 2441 ⟨13, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_18_signatureFacts :
    sig_000SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c001 2441 ⟨18, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c004 2441 ⟨22, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_24_signatureFacts :
    sig_000SignatureFacts ⟨24, by decide⟩ := by
  change CandidateFacts .c001 2441 ⟨24, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c005 2441 ⟨29, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c005 2441 ⟨30, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c000 2441 ⟨31, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_39_signatureFacts :
    sig_000SignatureFacts ⟨39, by decide⟩ := by
  change CandidateFacts .c006 2441 ⟨39, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c003 2441 ⟨45, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_54_signatureFacts :
    sig_000SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c003 2441 ⟨54, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
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
                    have hmask : mask = ⟨39, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    exact sig_000_mask_39_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨45, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_45_signatureFacts
                    ·
                      have hmask : mask = ⟨54, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_54_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 2441 < numPairWords),
        goodDirectionAtRankBool ⟨2441, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 2441 2442 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    2441 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 2441 < numPairWords),
        goodDirectionAtRankBool ⟨2441, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 2441 2442 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard007Smoke
