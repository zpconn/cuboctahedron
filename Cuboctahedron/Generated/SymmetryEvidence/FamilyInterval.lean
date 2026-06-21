import Cuboctahedron.Generated.NonIdentity.Coverage.All
import Cuboctahedron.Generated.Translation.Coverage.All

/-!
Semantic interval adapters for the symmetry evidence backend.

The high-volume generated files should not export raw certificate literals or
large data structures.  Their public surface should be a small theorem saying
that a bounded rank interval has the residual/Farkas witnesses needed by the
existing public coverage classifiers.

This module converts those bounded witness intervals into bounded semantic
elimination intervals.  It does not assume any generated fact: the generated
leaf still has to prove the witness interval it passes in.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence

structure NonIdentityWitnessInterval
    (classifier : Cuboctahedron.Generated.Coverage.NonIdComputableClassifier) (lo hi : Nat) where
  residual :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        classifier) lo hi

structure TranslationWitnessInterval
    (classifier : Cuboctahedron.Generated.Coverage.TranslationComputableClassifier) (lo hi : Nat) where
  farkas :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        classifier) lo hi

def TranslationRankKilledNat (r : Nat) : Prop :=
  forall mask : SignMask, Cuboctahedron.Generated.Coverage.TranslationCaseKilledNat r mask

namespace NonIdentityWitnessInterval

theorem certified
    {classifier : Cuboctahedron.Generated.Coverage.NonIdComputableClassifier} {lo hi : Nat}
    (interval : NonIdentityWitnessInterval classifier lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankCertifiedNat lo hi := by
  intro r hlo hhi hlt hM
  let rank : Fin numPairWords := ⟨r, hlt⟩
  cases hclass : classifier.classOfRank rank with
  | badDirectionSign =>
      exact classifier.badDirection_exists_cert hclass
  | badPairBalance =>
      exact classifier.badPairBalance_exists_cert hclass
  | residual =>
      exact interval.residual r hlo hhi hlt hclass hM

theorem killed
    {classifier : Cuboctahedron.Generated.Coverage.NonIdComputableClassifier} {lo hi : Nat}
    (interval : NonIdentityWitnessInterval classifier lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi :=
  Cuboctahedron.Generated.Coverage.CoversInterval.mono
    (fun _r hcert => Cuboctahedron.Generated.Coverage.NonIdentityRankCertifiedNat.killed hcert)
    interval.certified

end NonIdentityWitnessInterval

namespace TranslationWitnessInterval

theorem certified
    {classifier : Cuboctahedron.Generated.Coverage.TranslationComputableClassifier} {lo hi : Nat}
    (interval : TranslationWitnessInterval classifier lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (fun r => forall mask : SignMask,
        Cuboctahedron.Generated.Coverage.TranslationCaseCertifiedNat r mask) lo hi := by
  intro r hlo hhi mask hlt hM
  let rank : Fin numPairWords := ⟨r, hlt⟩
  cases hclass : classifier.classOfChoice rank mask with
  | badDirectionSign =>
      exact classifier.badDirection_exists_cert hclass
  | badTranslationVector =>
      exact classifier.badVector_exists_cert hclass
  | needsFarkas =>
      exact interval.farkas r hlo hhi hlt mask hclass hM

theorem killed
    {classifier : Cuboctahedron.Generated.Coverage.TranslationComputableClassifier} {lo hi : Nat}
    (interval : TranslationWitnessInterval classifier lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval TranslationRankKilledNat lo hi := by
  intro r hlo hhi mask
  exact Cuboctahedron.Generated.Coverage.TranslationCaseCertifiedNat.killed
    (interval.certified r hlo hhi mask)

end TranslationWitnessInterval

structure FamilyIntervalEvidence (lo hi : Nat) where
  nonidentityClassifier : Cuboctahedron.Generated.Coverage.NonIdComputableClassifier
  translationClassifier : Cuboctahedron.Generated.Coverage.TranslationComputableClassifier
  nonidentity :
    NonIdentityWitnessInterval nonidentityClassifier lo hi
  translation :
    TranslationWitnessInterval translationClassifier lo hi

namespace FamilyIntervalEvidence

theorem nonidentity_killed
    {lo hi : Nat} (evidence : FamilyIntervalEvidence lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi :=
  evidence.nonidentity.killed

theorem translation_killed
    {lo hi : Nat} (evidence : FamilyIntervalEvidence lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval TranslationRankKilledNat lo hi :=
  evidence.translation.killed

end FamilyIntervalEvidence

end Cuboctahedron.Generated.SymmetryEvidence
