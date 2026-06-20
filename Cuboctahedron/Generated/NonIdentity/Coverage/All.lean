import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.NonIdentity.Complete

/-!
Public target for generated non-identity residual coverage.

Future generated chunk/group modules should prove `CoversInterval
ResidualRankCertified ... ...` theorems and compose them here.  This file keeps
the public bridge semantic: it asks for ordinary checked certificate witnesses,
not for a giant Boolean packed-data reduction.
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

end Cuboctahedron.Generated.NonIdentity.Coverage
