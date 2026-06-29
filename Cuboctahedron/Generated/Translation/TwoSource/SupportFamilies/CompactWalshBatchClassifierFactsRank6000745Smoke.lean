import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000745CandidateFactsSmoke

/-!
Generated AP16DO compact-Walsh classifier facts smoke for rank `6000745`.

This module is bounded smoke evidence.  It uses rank-local source/row
candidate facts, not the larger shared top-5 candidate-facts bundle.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000745Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000745CandidateFactsSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def rank6000745CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c007
  | 13 => .c004
  | 16 => .c008
  | 22 => .c000
  | 28 => .c003
  | 29 => .c002
  | 30 => .c005
  | 31 => .c002
  | 45 => .c008
  | 47 => .c008
  | 54 => .c001
  | 55 => .c006
  | 63 => .c002
  | _ => .c007

private def rank6000745CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  rank6000745CandidateOfNat mask.val

private def rank6000745Facts (mask : SignMask) : Prop :=
  CandidateFacts (rank6000745CandidateOfMask mask) 6000745 mask

private theorem rank6000745AllPositiveMaskFacts
    {mask : SignMask}
    (h : rank6000745GoodMaskMember mask) :
    rank6000745Facts mask := by
  change mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63 at h
  rcases h with h | h
  ·
    have hmask : mask = ⟨8, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    change CandidateFacts .c007 6000745 ⟨8, by decide⟩
    exact case_000000_candidateFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨13, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      change CandidateFacts .c004 6000745 ⟨13, by decide⟩
      exact case_000001_candidateFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨16, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        change CandidateFacts .c008 6000745 ⟨16, by decide⟩
        exact case_000002_candidateFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨22, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          change CandidateFacts .c000 6000745 ⟨22, by decide⟩
          exact case_000003_candidateFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨28, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c003 6000745 ⟨28, by decide⟩
            exact case_000004_candidateFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨29, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              change CandidateFacts .c002 6000745 ⟨29, by decide⟩
              exact case_000005_candidateFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨30, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                change CandidateFacts .c005 6000745 ⟨30, by decide⟩
                exact case_000006_candidateFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨31, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  change CandidateFacts .c002 6000745 ⟨31, by decide⟩
                  exact case_000007_candidateFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨45, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    change CandidateFacts .c008 6000745 ⟨45, by decide⟩
                    exact case_000008_candidateFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨47, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      change CandidateFacts .c008 6000745 ⟨47, by decide⟩
                      exact case_000009_candidateFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = ⟨54, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        change CandidateFacts .c001 6000745 ⟨54, by decide⟩
                        exact case_000010_candidateFacts
                      ·
                        rcases h with h | h
                        ·
                          have hmask : mask = ⟨55, by decide⟩ := by
                            ext
                            simpa using h
                          rw [hmask]
                          change CandidateFacts .c006 6000745 ⟨55, by decide⟩
                          exact case_000011_candidateFacts
                        ·
                          have hmask : mask = ⟨63, by decide⟩ := by
                            ext
                            simpa using h
                          rw [hmask]
                          change CandidateFacts .c002 6000745 ⟨63, by decide⟩
                          exact case_000012_candidateFacts

theorem rank6000745AllGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000745 (6000745 + 1) :=
  rank6000745AllGoodCoverageOfFacts
    GeneratedCandidate
    rank6000745CandidateOfMask
    rank6000745Facts
    generatedSpec
    generatedRowProducer
    generatedKey
    (by intro mask; cases rank6000745CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000745CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000745CandidateOfMask mask <;> rfl)
    rank6000745AllPositiveMaskFacts
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem compactWalshBatchClassifierFactsRank6000745Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000745Smoke
