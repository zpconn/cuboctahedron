import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625CandidateFactsSmoke

/-!
Generated 6Z.6K.8AP.16DO thin signature-routing smoke.

This module imports shared candidate facts and proves small
per-signature all-Good coverage theorems by routing GoodDirection masks
to those facts. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625RoutingSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625CandidateFactsSmoke

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

/-- AP.16W signature `0` at anchor rank `6000625`. -/
private def sig_000GoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 20 \/
    mask.val = 22 \/
    mask.val = 29 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63

private def sig_000CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c005
  | 9 => .c004
  | 13 => .c006
  | 20 => .c004
  | 22 => .c002
  | 29 => .c006
  | 31 => .c000
  | 45 => .c005
  | 47 => .c001
  | 55 => .c003
  | 63 => .c000
  | _ => .c005

private def sig_000CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  sig_000CandidateOfNat mask.val

private def sig_000SignatureFacts (mask : SignMask) : Prop :=
  CandidateFacts (sig_000CandidateOfMask mask) 6000625 mask

private theorem sig_000_mask_08_signatureFacts :
    sig_000SignatureFacts ⟨8, by decide⟩ := by
  change CandidateFacts .c005 6000625 ⟨8, by decide⟩
  exact case_000000_candidateFacts

private theorem sig_000_mask_09_signatureFacts :
    sig_000SignatureFacts ⟨9, by decide⟩ := by
  change CandidateFacts .c004 6000625 ⟨9, by decide⟩
  exact case_000001_candidateFacts

private theorem sig_000_mask_13_signatureFacts :
    sig_000SignatureFacts ⟨13, by decide⟩ := by
  change CandidateFacts .c006 6000625 ⟨13, by decide⟩
  exact case_000002_candidateFacts

private theorem sig_000_mask_20_signatureFacts :
    sig_000SignatureFacts ⟨20, by decide⟩ := by
  change CandidateFacts .c004 6000625 ⟨20, by decide⟩
  exact case_000003_candidateFacts

private theorem sig_000_mask_22_signatureFacts :
    sig_000SignatureFacts ⟨22, by decide⟩ := by
  change CandidateFacts .c002 6000625 ⟨22, by decide⟩
  exact case_000004_candidateFacts

private theorem sig_000_mask_29_signatureFacts :
    sig_000SignatureFacts ⟨29, by decide⟩ := by
  change CandidateFacts .c006 6000625 ⟨29, by decide⟩
  exact case_000005_candidateFacts

private theorem sig_000_mask_31_signatureFacts :
    sig_000SignatureFacts ⟨31, by decide⟩ := by
  change CandidateFacts .c000 6000625 ⟨31, by decide⟩
  exact case_000006_candidateFacts

private theorem sig_000_mask_45_signatureFacts :
    sig_000SignatureFacts ⟨45, by decide⟩ := by
  change CandidateFacts .c005 6000625 ⟨45, by decide⟩
  exact case_000007_candidateFacts

private theorem sig_000_mask_47_signatureFacts :
    sig_000SignatureFacts ⟨47, by decide⟩ := by
  change CandidateFacts .c001 6000625 ⟨47, by decide⟩
  exact case_000008_candidateFacts

private theorem sig_000_mask_55_signatureFacts :
    sig_000SignatureFacts ⟨55, by decide⟩ := by
  change CandidateFacts .c003 6000625 ⟨55, by decide⟩
  exact case_000009_candidateFacts

private theorem sig_000_mask_63_signatureFacts :
    sig_000SignatureFacts ⟨63, by decide⟩ := by
  change CandidateFacts .c000 6000625 ⟨63, by decide⟩
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
        have hmask : mask = ⟨13, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        exact sig_000_mask_13_signatureFacts
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
      forall {mask : SignMask} (hlt : 6000625 < numPairWords),
        goodDirectionAtRankBool ⟨6000625, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 6000625 6000626 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000625 GeneratedCandidate sig_000CandidateOfMask
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
      forall {mask : SignMask} (hlt : 6000625 < numPairWords),
        goodDirectionAtRankBool ⟨6000625, hlt⟩ mask = true ->
          sig_000GoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 6000625 6000626 :=
  (sig_000Classifier hmask).to_allGoodCoverage

theorem sharedRoutingSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625RoutingSmoke
