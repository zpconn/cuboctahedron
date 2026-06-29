import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16DO thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662RoutingSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662CandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000662`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 5 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 20 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 62 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 5 => .c004
  | 13 => .c005
  | 16 => .c008
  | 18 => .c008
  | 20 => .c004
  | 28 => .c000
  | 29 => .c002
  | 30 => .c006
  | 31 => .c003
  | 45 => .c008
  | 62 => .c007
  | 63 => .c001
  | _ => .c004

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000662 mask

private theorem sig_000_mask_05_signatureFacts :
    sig_000SignatureFacts ⟨5, by decide⟩ := by
  change CandidateFacts .c004 6000662 ⟨5, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c005 6000662 ⟨13, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_16_signatureFacts :
    sig_000SignatureFacts ⟨16, by decide⟩ := by
  change CandidateFacts .c008 6000662 ⟨16, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_18_signatureFacts :
    sig_000SignatureFacts ⟨18, by decide⟩ := by
  change CandidateFacts .c008 6000662 ⟨18, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_20_signatureFacts :
    sig_000SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c004 6000662 ⟨20, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_28_signatureFacts :
    sig_000SignatureFacts ⟨28, by decide⟩ := by
  change CandidateFacts .c000 6000662 ⟨28, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c002 6000662 ⟨29, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_30_signatureFacts :
    sig_000SignatureFacts ⟨30, by decide⟩ := by
  change CandidateFacts .c006 6000662 ⟨30, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c003 6000662 ⟨31, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c008 6000662 ⟨45, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_62_signatureFacts :
    sig_000SignatureFacts ⟨62, by decide⟩ := by
  change CandidateFacts .c007 6000662 ⟨62, by decide⟩
  exact case_000010_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c001 6000662 ⟨63, by decide⟩
  exact case_000011_candidateFacts

private theorem sig_000AllPositiveMaskFacts
    {mask : SignMask}
    (h : sig_000GoodMaskMember mask) :
    sig_000SignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = ⟨5, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    exact sig_000_mask_05_signatureFacts
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
            have hmask : mask = ⟨20, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            exact sig_000_mask_20_signatureFacts
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
                        have hmask : mask = ⟨62, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_000_mask_62_signatureFacts
                      ·
                        have hmask : mask = ⟨63, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        exact sig_000_mask_63_signatureFacts

private def sig_000Classifier
    (hmask :
      forall {mask : SignMask} (hlt : 6000662 < numPairWords),
        goodDirectionAtRankBool ⟨6000662, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000662 6000663 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000662 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000662 < numPairWords),
        goodDirectionAtRankBool ⟨6000662, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000662 6000663 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662RoutingSmoke
