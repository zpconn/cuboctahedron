import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662CandidateFactsSmoke

/-!
Generated AP16DO compact-Walsh classifier facts smoke for rank `6000662`.

This module is bounded smoke evidence.  It uses rank-local source/row
candidate facts, not the larger shared top-5 candidate-facts bundle.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000662Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000662CandidateFactsSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def rank6000662CandidateOfNat : Nat -> GeneratedCandidate
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

private def rank6000662CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  rank6000662CandidateOfNat mask.val

private def rank6000662Facts (mask : SignMask) : Prop :=
  CandidateFacts (rank6000662CandidateOfMask mask) 6000662 mask

private theorem rank6000662AllPositiveMaskFacts
    {mask : SignMask}
    (h : rank6000662GoodMaskMember mask) :
    rank6000662Facts mask := by
  change mask.val = 5 \/
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
    mask.val = 63 at h
  rcases h with h | h
  ·
    have hmask : mask = ⟨5, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    change CandidateFacts .c004 6000662 ⟨5, by decide⟩
    exact case_000000_candidateFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨13, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      change CandidateFacts .c005 6000662 ⟨13, by decide⟩
      exact case_000001_candidateFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨16, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        change CandidateFacts .c008 6000662 ⟨16, by decide⟩
        exact case_000002_candidateFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨18, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          change CandidateFacts .c008 6000662 ⟨18, by decide⟩
          exact case_000003_candidateFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨20, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c004 6000662 ⟨20, by decide⟩
            exact case_000004_candidateFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = ⟨28, by decide⟩ := by
                ext
                simpa using h
              rw [hmask]
              change CandidateFacts .c000 6000662 ⟨28, by decide⟩
              exact case_000005_candidateFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = ⟨29, by decide⟩ := by
                  ext
                  simpa using h
                rw [hmask]
                change CandidateFacts .c002 6000662 ⟨29, by decide⟩
                exact case_000006_candidateFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = ⟨30, by decide⟩ := by
                    ext
                    simpa using h
                  rw [hmask]
                  change CandidateFacts .c006 6000662 ⟨30, by decide⟩
                  exact case_000007_candidateFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = ⟨31, by decide⟩ := by
                      ext
                      simpa using h
                    rw [hmask]
                    change CandidateFacts .c003 6000662 ⟨31, by decide⟩
                    exact case_000008_candidateFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = ⟨45, by decide⟩ := by
                        ext
                        simpa using h
                      rw [hmask]
                      change CandidateFacts .c008 6000662 ⟨45, by decide⟩
                      exact case_000009_candidateFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = ⟨62, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        change CandidateFacts .c007 6000662 ⟨62, by decide⟩
                        exact case_000010_candidateFacts
                      ·
                        have hmask : mask = ⟨63, by decide⟩ := by
                          ext
                          simpa using h
                        rw [hmask]
                        change CandidateFacts .c001 6000662 ⟨63, by decide⟩
                        exact case_000011_candidateFacts

theorem rank6000662AllGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000662 (6000662 + 1) :=
  rank6000662AllGoodCoverageOfFacts
    GeneratedCandidate
    rank6000662CandidateOfMask
    rank6000662Facts
    generatedSpec
    generatedRowProducer
    generatedKey
    (by intro mask; cases rank6000662CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000662CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000662CandidateOfMask mask <;> rfl)
    rank6000662AllPositiveMaskFacts
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem compactWalshBatchClassifierFactsRank6000662Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000662Smoke
