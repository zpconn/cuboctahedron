import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard005Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard005Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard005Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `100800`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 11 \/
    mask.val = 14 \/
    mask.val = 15 \/
    mask.val = 20 \/
    mask.val = 22 \/
    mask.val = 31 \/
    mask.val = 43 \/
    mask.val = 47 \/
    mask.val = 59 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c007
  | 11 => .c003
  | 14 => .c000
  | 15 => .c003
  | 20 => .c007
  | 22 => .c006
  | 31 => .c005
  | 43 => .c002
  | 47 => .c001
  | 59 => .c002
  | 63 => .c004
  | _ => .c007

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 100800 mask

private theorem sig_000_mask_04_signatureFacts :
    sig_000SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c007 100800 ⟨4, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_11_signatureFacts :
    sig_000SignatureFacts ⟨11, by decide⟩ := by
  change CandidateFacts .c003 100800 ⟨11, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_14_signatureFacts :
    sig_000SignatureFacts ⟨14, by decide⟩ := by
  change CandidateFacts .c000 100800 ⟨14, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_15_signatureFacts :
    sig_000SignatureFacts ⟨15, by decide⟩ := by
  change CandidateFacts .c003 100800 ⟨15, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_20_signatureFacts :
    sig_000SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c007 100800 ⟨20, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c006 100800 ⟨22, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c005 100800 ⟨31, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_43_signatureFacts :
    sig_000SignatureFacts ⟨43, by decide⟩ := by
  change CandidateFacts .c002 100800 ⟨43, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c001 100800 ⟨47, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_59_signatureFacts :
    sig_000SignatureFacts ⟨59, by decide⟩ := by
  change CandidateFacts .c002 100800 ⟨59, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c004 100800 ⟨63, by decide⟩
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
      have hmask : mask = ⟨11, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      exact sig_000_mask_11_signatureFacts
    ·
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
          have hmask : mask = ⟨15, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          exact sig_000_mask_15_signatureFacts
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
                have hmask : mask = ⟨31, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                exact sig_000_mask_31_signatureFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨43, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  exact sig_000_mask_43_signatureFacts
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
                      have hmask : mask = ⟨59, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_59_signatureFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 100800 < numPairWords),
        goodDirectionAtRankBool ⟨100800, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 100800 100801 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    100800 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 100800 < numPairWords),
        goodDirectionAtRankBool ⟨100800, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 100800 100801 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard005Smoke
