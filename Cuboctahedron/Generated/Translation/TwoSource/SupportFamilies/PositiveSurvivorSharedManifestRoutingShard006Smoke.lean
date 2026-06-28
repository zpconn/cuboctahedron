import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard006Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard006Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard006Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `2075`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 22 \/
    mask.val = 25 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 31 \/
    mask.val = 54 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c006
  | 8 => .c006
  | 9 => .c006
  | 13 => .c003
  | 22 => .c005
  | 25 => .c004
  | 28 => .c001
  | 29 => .c004
  | 31 => .c000
  | 54 => .c005
  | 63 => .c002
  | _ => .c006

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 2075 mask

private theorem sig_000_mask_04_signatureFacts :
    sig_000SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c006 2075 ⟨4, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c006 2075 ⟨8, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c006 2075 ⟨9, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c003 2075 ⟨13, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c005 2075 ⟨22, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_25_signatureFacts :
    sig_000SignatureFacts ⟨25, by decide⟩ := by
  change CandidateFacts .c004 2075 ⟨25, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_28_signatureFacts :
    sig_000SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c001 2075 ⟨28, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c004 2075 ⟨29, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c000 2075 ⟨31, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_54_signatureFacts :
    sig_000SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c005 2075 ⟨54, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c002 2075 ⟨63, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨4, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_04_signatureFacts
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
            have hmask : mask = ⟨22, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_22_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨25, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              exact sig_000_mask_25_signatureFacts
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
                    have hmask : mask = ⟨31, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    exact sig_000_mask_31_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨54, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_54_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 2075 < numPairWords),
        goodDirectionAtRankBool ⟨2075, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 2075 2076 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    2075 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 2075 < numPairWords),
        goodDirectionAtRankBool ⟨2075, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 2075 2076 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard006Smoke
