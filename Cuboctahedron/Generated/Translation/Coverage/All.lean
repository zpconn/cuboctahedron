import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.Coverage.ComputableClassifiers
import Cuboctahedron.Generated.Translation.Complete

/-!
Public target for generated translation Farkas coverage.

Generated shared-shape Farkas modules should prove interval coverage for either
the legacy Farkas predicate or a concrete computable classifier.  The preferred
new path is `FarkasRankCertifiedBy classifier`, avoiding the old Prop-level
classifier and packed blob membership reduction.
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

def FarkasRankCertifiedBy
    (classifier :
      Cuboctahedron.Generated.Coverage.TranslationComputableClassifier)
    (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    forall mask : SignMask,
      classifier.classOfChoice ⟨r, hlt⟩ mask =
          TranslationFamilyClass.needsFarkas ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
            (matId : Mat3 Rat) ->
          exists cert : TranslationCert,
            cert.word = unrankPairWord ⟨r, hlt⟩ /\
              cert.signMask = mask /\
                checkTranslationCert cert = true

theorem farkasBridge_of_interval_by
    (classifier :
      Cuboctahedron.Generated.Coverage.TranslationComputableClassifier)
    (h :
      Cuboctahedron.Generated.Coverage.CoversInterval
        (FarkasRankCertifiedBy classifier) 0 numPairWords) :
    classifier.FarkasBridge := by
  intro r mask hclass hM
  exact h r.val (Nat.zero_le r.val) r.isLt r.isLt mask hclass hM

end Cuboctahedron.Generated.Translation.Coverage
