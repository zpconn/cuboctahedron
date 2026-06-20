import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.Translation.Complete

/-!
Public target for generated translation Farkas coverage.

Generated shared-shape Farkas modules should prove interval coverage for
`FarkasRankCertified`.  The adapter below turns such interval evidence into the
semantic bridge consumed by `Translation.Complete`, without exporting raw
certificate tables or invoking packed blob checkers.
-/

namespace Cuboctahedron.Generated.Translation.Coverage

def FarkasRankCertified (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    forall mask : SignMask,
      translationEarlyFamilyClassOfChoice ⟨r, hlt⟩ mask =
          TranslationFamilyClass.needsFarkas ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
            (matId : Mat3 Rat) ->
          exists cert : TranslationCert,
            cert.word = unrankPairWord ⟨r, hlt⟩ /\
              cert.signMask = mask /\
                checkTranslationCert cert = true

theorem farkasBridge_of_interval
    (h :
      Cuboctahedron.Generated.Coverage.CoversInterval
        FarkasRankCertified 0 numPairWords) :
    Cuboctahedron.Generated.Translation.FarkasBridge := by
  intro r mask hclass hM
  exact h r.val (Nat.zero_le r.val) r.isLt r.isLt mask hclass hM

end Cuboctahedron.Generated.Translation.Coverage
