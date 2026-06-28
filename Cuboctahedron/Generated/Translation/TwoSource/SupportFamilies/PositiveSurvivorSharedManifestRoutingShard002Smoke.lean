import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard002Smoke

/-!
Generated AP.16Z.1 thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard002Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestCandidateFactsShard002Smoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `1937`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 39 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c004
  | 8 => .c001
  | 13 => .c002
  | 16 => .c001
  | 22 => .c003
  | 39 => .c001
  | 45 => .c002
  | 47 => .c001
  | 54 => .c003
  | 55 => .c001
  | 63 => .c000
  | _ => .c004

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 1937 mask

private theorem sig_000_mask_04_signatureFacts :
    sig_000SignatureFacts ⟨4, by decide⟩ := by
  change CandidateFacts .c004 1937 ⟨4, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c001 1937 ⟨8, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c002 1937 ⟨13, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c001 1937 ⟨16, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨22, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_39_signatureFacts :
    sig_000SignatureFacts ⟨39, by decide⟩ := by
  change CandidateFacts .c001 1937 ⟨39, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c002 1937 ⟨45, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c001 1937 ⟨47, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_54_signatureFacts :
    sig_000SignatureFacts ⟨54, by decide⟩ := by
  change CandidateFacts .c003 1937 ⟨54, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c001 1937 ⟨55, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c000 1937 ⟨63, by decide⟩
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
      forall {mask : SignMask} (hlt : 1937 < numPairWords),
        goodDirectionAtRankBool ⟨1937, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 1937 1938 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    1937 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 1937 < numPairWords),
        goodDirectionAtRankBool ⟨1937, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 1937 1938 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedManifestRoutingShard002Smoke
