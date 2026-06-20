import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.Coverage.ComputableClassifiers
import Cuboctahedron.Generated.NonIdentity.Complete

/-!
Public target for generated non-identity residual coverage.

Generated chunk/group modules should prove `CoversInterval` theorems for either
legacy residual predicates or a concrete computable classifier.  The preferred
new path is `ResidualRankCertifiedBy classifier`, because it avoids the old
Prop-level early-family classifier and can be fed by generated Boolean family
membership evidence.
-/

namespace Cuboctahedron.Generated.NonIdentity.Coverage

def ResidualRankCertified (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ =
        NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord ⟨r, hlt⟩ /\
            checkNonIdCert cert = true

theorem residualBridge_of_interval
    (h :
      Cuboctahedron.Generated.Coverage.CoversInterval
        ResidualRankCertified 0 numPairWords) :
    Cuboctahedron.Generated.NonIdentity.ResidualBridge := by
  intro r hclass hM
  exact h r.val (Nat.zero_le r.val) r.isLt r.isLt hclass hM

def ResidualRankCertifiedBy
    (classifier :
      Cuboctahedron.Generated.Coverage.NonIdComputableClassifier)
    (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    classifier.classOfRank ⟨r, hlt⟩ =
        NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord ⟨r, hlt⟩ /\
            checkNonIdCert cert = true

theorem residualBridge_of_interval_by
    (classifier :
      Cuboctahedron.Generated.Coverage.NonIdComputableClassifier)
    (h :
      Cuboctahedron.Generated.Coverage.CoversInterval
        (ResidualRankCertifiedBy classifier) 0 numPairWords) :
    classifier.ResidualBridge := by
  intro r hclass hM
  exact h r.val (Nat.zero_le r.val) r.isLt r.isLt hclass hM

end Cuboctahedron.Generated.NonIdentity.Coverage
