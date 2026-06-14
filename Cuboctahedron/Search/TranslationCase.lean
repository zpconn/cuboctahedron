import Cuboctahedron.Geometry.UnfoldingFeasible
import Cuboctahedron.Search.NonIdentityCase

/-!
Identity-linear case API for translation itineraries.
-/

namespace Cuboctahedron

def IsIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w = (matId : Mat3 Rat)

theorem pairword_linear_cases (w : PairWord) :
    IsIdentityLinear w \/ IsNonIdentityLinear w := by
  exact Classical.em (IsIdentityLinear w)

theorem unfolded_feasible_cases
    (seq : Step14 -> Face)
    (h : UnfoldedFeasible seq) :
    totalLinear seq = (matId : Mat3 Rat) \/
      totalLinear seq ≠ (matId : Mat3 Rat) := by
  let _ := h
  exact Classical.em _

abbrev SeqRealizesPairWord (w : PairWord) (seq : Step14 -> Face) : Prop :=
  StartsXp seq /\ PairWordMatchesSeq w seq

example :
    IsIdentityLinear (pairWordOfSeq sampleStartedSeq) \/
      IsNonIdentityLinear (pairWordOfSeq sampleStartedSeq) :=
  pairword_linear_cases (pairWordOfSeq sampleStartedSeq)

#check pairword_linear_cases
#check unfolded_feasible_cases

end Cuboctahedron
