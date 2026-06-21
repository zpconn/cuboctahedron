import Cuboctahedron.Generated.Coverage.Interval

/-!
Generated symmetry evidence core.

This file is produced by scripts/generate_symmetry_evidence.py in
bounded Phase 7 pilot mode.  It is architectural coverage evidence
only: it does not prove semantic elimination of billiard cases.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence

def BoundedRankPlanned (limit : Nat) (r : Nat) : Prop :=
  r < limit

def NonIdentityPilotCovered (limit : Nat) (r : Nat) : Prop :=
  BoundedRankPlanned limit r

def TranslationPilotCovered (limit : Nat) (r : Nat) : Prop :=
  BoundedRankPlanned limit r

theorem covers_bounded
    {lo hi limit : Nat} (hhi : hi <= limit) :
    Coverage.CoversInterval (BoundedRankPlanned limit) lo hi := by
  intro r _hlo hhiRank
  exact Nat.lt_of_lt_of_le hhiRank hhi

theorem covers_nonidentity_bounded
    {lo hi limit : Nat} (hhi : hi <= limit) :
    Coverage.CoversInterval (NonIdentityPilotCovered limit) lo hi := by
  exact covers_bounded hhi

theorem covers_translation_bounded
    {lo hi limit : Nat} (hhi : hi <= limit) :
    Coverage.CoversInterval (TranslationPilotCovered limit) lo hi := by
  exact covers_bounded hhi

end Cuboctahedron.Generated.SymmetryEvidence
