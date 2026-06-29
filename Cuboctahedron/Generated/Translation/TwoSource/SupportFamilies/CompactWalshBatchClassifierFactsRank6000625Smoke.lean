import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625CandidateFactsSmoke

/-!
Generated AP16DO compact-Walsh classifier facts smoke for rank `6000625`.

This module is bounded smoke evidence.  It uses rank-local source/row
candidate facts, not the larger shared top-5 candidate-facts bundle.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000625Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000625CandidateFactsSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def rank6000625CandidateOfNat : Nat -> GeneratedCandidate
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

private def rank6000625CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  rank6000625CandidateOfNat mask.val

private def rank6000625Facts (mask : SignMask) : Prop :=
  CandidateFacts (rank6000625CandidateOfMask mask) 6000625 mask

private theorem rank6000625AllPositiveMaskFacts
    {mask : SignMask}
    (h : rank6000625GoodMaskMember mask) :
    rank6000625Facts mask := by
  change mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 20 \/
    mask.val = 22 \/
    mask.val = 29 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63 at h
  rcases h with h | h
  ·
    have hmask : mask = ⟨8, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    change CandidateFacts .c005 6000625 ⟨8, by decide⟩
    exact case_000000_candidateFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨9, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      change CandidateFacts .c004 6000625 ⟨9, by decide⟩
      exact case_000001_candidateFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨13, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        change CandidateFacts .c006 6000625 ⟨13, by decide⟩
        exact case_000002_candidateFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨20, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          change CandidateFacts .c004 6000625 ⟨20, by decide⟩
          exact case_000003_candidateFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨22, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c002 6000625 ⟨22, by decide⟩
            exact case_000004_candidateFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨29, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              change CandidateFacts .c006 6000625 ⟨29, by decide⟩
              exact case_000005_candidateFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨31, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                change CandidateFacts .c000 6000625 ⟨31, by decide⟩
                exact case_000006_candidateFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨45, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  change CandidateFacts .c005 6000625 ⟨45, by decide⟩
                  exact case_000007_candidateFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨47, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    change CandidateFacts .c001 6000625 ⟨47, by decide⟩
                    exact case_000008_candidateFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨55, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      change CandidateFacts .c003 6000625 ⟨55, by decide⟩
                      exact case_000009_candidateFacts
                    ·
                      have hmask : mask = ⟨63, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      change CandidateFacts .c000 6000625 ⟨63, by decide⟩
                      exact case_000010_candidateFacts

theorem rank6000625AllGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000625 (6000625 + 1) :=
  rank6000625AllGoodCoverageOfFacts
    GeneratedCandidate
    rank6000625CandidateOfMask
    rank6000625Facts
    generatedSpec
    generatedRowProducer
    generatedKey
    (by intro mask; cases rank6000625CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000625CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000625CandidateOfMask mask <;> rfl)
    rank6000625AllPositiveMaskFacts
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem compactWalshBatchClassifierFactsRank6000625Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000625Smoke
