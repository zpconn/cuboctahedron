import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720CandidateFactsSmoke

/-!
Generated AP16DO compact-Walsh classifier facts smoke for rank `6000720`.

This module is bounded smoke evidence.  It uses rank-local source/row
candidate facts, not the larger shared top-5 candidate-facts bundle.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000720Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000720CandidateFactsSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def rank6000720CandidateOfNat : Nat -> GeneratedCandidate
  | 8 => .c002
  | 16 => .c003
  | 30 => .c000
  | 47 => .c003
  | 55 => .c001
  | 63 => .c000
  | _ => .c002

private def rank6000720CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  rank6000720CandidateOfNat mask.val

private def rank6000720Facts (mask : SignMask) : Prop :=
  CandidateFacts (rank6000720CandidateOfMask mask) 6000720 mask

private theorem rank6000720AllPositiveMaskFacts
    {mask : SignMask}
    (h : rank6000720GoodMaskMember mask) :
    rank6000720Facts mask := by
  change mask.val = 8 \/
    mask.val = 16 \/
    mask.val = 30 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63 at h
  rcases h with h | h
  ·
    have hmask : mask = ⟨8, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    change CandidateFacts .c002 6000720 ⟨8, by decide⟩
    exact case_000000_candidateFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨16, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      change CandidateFacts .c003 6000720 ⟨16, by decide⟩
      exact case_000001_candidateFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨30, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        change CandidateFacts .c000 6000720 ⟨30, by decide⟩
        exact case_000002_candidateFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨47, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          change CandidateFacts .c003 6000720 ⟨47, by decide⟩
          exact case_000003_candidateFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨55, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c001 6000720 ⟨55, by decide⟩
            exact case_000004_candidateFacts
          ·
            have hmask : mask = ⟨63, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c000 6000720 ⟨63, by decide⟩
            exact case_000005_candidateFacts

theorem rank6000720AllGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000720 (6000720 + 1) :=
  rank6000720AllGoodCoverageOfFacts
    GeneratedCandidate
    rank6000720CandidateOfMask
    rank6000720Facts
    generatedSpec
    generatedRowProducer
    generatedKey
    (by intro mask; cases rank6000720CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000720CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000720CandidateOfMask mask <;> rfl)
    rank6000720AllPositiveMaskFacts
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem compactWalshBatchClassifierFactsRank6000720Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000720Smoke
