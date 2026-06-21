import Cuboctahedron.Generated.NonIdentity.FamilySample
import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated family-interval evidence.

This root is intentionally not a singleton public interval shard. It exposes a
bounded `FamilyIntervalEvidence` value for ranks [159,160) using the checked
non-identity family template `bad_first_hit_sample`.
-/

namespace Cuboctahedron.Generated.FamilyIntervalShard.Shard000000159_000000160

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

private def familyInterval : RankInterval where
  startRank := 159
  endRank := 160

private def certForRank : Nat -> NonIdCert
  | 159 => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadFirstHit000
  | _ => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadFirstHit000

private def family : NonIdParametricFamily where
  name := "bad_first_hit_sample"
  failure := NonIdFamilyFailure.badFirstHit
  interval := familyInterval
  certForRank := certForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains
    have hRank : rank = 159 := by omega
    subst rank
    simpa [certForRank, checkNonIdParametricFailureMatches] using
      And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadFirstHit000_coveredRank
        (And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadFirstHit000_check
          Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadFirstHit000_familyFailure)

private theorem family_check :
    checkNonIdParametricFamily family = true := by
  norm_num [checkNonIdParametricFamily, family, familyInterval,
    checkRankInterval, numPairWords]

private theorem family_contains
    {r : Nat} {hlt : r < numPairWords}
    (hlo : 159 <= r) (hhi : r < 160) :
    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by
  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,
    RankInterval.ContainsPairRank] using And.intro hlo hhi

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 159 160 := by
  intro r hlo hhi hlt _hclass _hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  rcases checkNonIdParametricFamily_sound family_check hcontains with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 159 160 := by
  intro r hlo hhi hlt _mask _hclass hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  exact False.elim
    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)

def nonidentityWitness :
    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval
      nonIdentityClassifier 159 160 where
  residual := nonidentity_residual_interval

def translationWitness :
    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval
      translationClassifier 159 160 where
  farkas := translation_farkas_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence 159 160 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentityWitness
  translation := translationWitness

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat 159 160 :=
  coverage.nonidentity_killed

theorem translation_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat 159 160 :=
  coverage.translation_killed

end Cuboctahedron.Generated.FamilyIntervalShard.Shard000000159_000000160
