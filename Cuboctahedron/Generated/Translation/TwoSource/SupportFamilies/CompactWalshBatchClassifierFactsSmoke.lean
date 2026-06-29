import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480CandidateFactsSmoke

/-!
AP16DN compact-Walsh classifier facts smoke.

AP16DM left source/row facts explicit.  This module fills those facts for one
bounded AP16DJ signature, rank `6000480`, by reusing the existing shared
candidate facts from the AP16AQ smoke.  The membership premise itself comes
from AP16DL/AP16DM compact Walsh evidence, so this proof does not enumerate
masks that fail `GoodDirectionAtRank`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480CandidateFactsSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def rank6000480CandidateOfNat : Nat -> GeneratedCandidate
  | 14 => .c003
  | 17 => .c004
  | 23 => .c002
  | 31 => .c000
  | 46 => .c001
  | 62 => .c000
  | _ => .c003

private def rank6000480CandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  rank6000480CandidateOfNat mask.val

private def rank6000480Facts (mask : SignMask) : Prop :=
  CandidateFacts (rank6000480CandidateOfMask mask) 6000480 mask

private theorem rank6000480AllPositiveMaskFacts
    {mask : SignMask}
    (h : rank6000480GoodMaskMember mask) :
    rank6000480Facts mask := by
  change mask.val = 14 \/
    mask.val = 17 \/
    mask.val = 23 \/
    mask.val = 31 \/
    mask.val = 46 \/
    mask.val = 62 at h
  rcases h with h | h
  ·
    have hmask : mask = ⟨14, by decide⟩ := by
      ext
      simpa using h
    rw [hmask]
    change CandidateFacts .c003 6000480 ⟨14, by decide⟩
    exact case_000000_candidateFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = ⟨17, by decide⟩ := by
        ext
        simpa using h
      rw [hmask]
      change CandidateFacts .c004 6000480 ⟨17, by decide⟩
      exact case_000001_candidateFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = ⟨23, by decide⟩ := by
          ext
          simpa using h
        rw [hmask]
        change CandidateFacts .c002 6000480 ⟨23, by decide⟩
        exact case_000002_candidateFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = ⟨31, by decide⟩ := by
            ext
            simpa using h
          rw [hmask]
          change CandidateFacts .c000 6000480 ⟨31, by decide⟩
          exact case_000003_candidateFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = ⟨46, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c001 6000480 ⟨46, by decide⟩
            exact case_000004_candidateFacts
          ·
            have hmask : mask = ⟨62, by decide⟩ := by
              ext
              simpa using h
            rw [hmask]
            change CandidateFacts .c000 6000480 ⟨62, by decide⟩
            exact case_000005_candidateFacts

theorem rank6000480AllGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000480 6000481 :=
  rank6000480AllGoodCoverageOfFacts
    GeneratedCandidate
    rank6000480CandidateOfMask
    rank6000480Facts
    generatedSpec
    generatedRowProducer
    generatedKey
    (by intro mask; cases rank6000480CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000480CandidateOfMask mask <;> rfl)
    (by intro mask; cases rank6000480CandidateOfMask mask <;> rfl)
    rank6000480AllPositiveMaskFacts
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

theorem compactWalshBatchClassifierFactsSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsSmoke
