import Cuboctahedron.Generated.NonIdentity.FamilySample
import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated family-interval evidence.

This root is intentionally not a singleton public interval shard. It exposes a
bounded `FamilyIntervalEvidence` value for ranks [13,16) using the checked
non-identity family template `bad_direction_sample`.
-/

namespace Cuboctahedron.Generated.FamilyIntervalShard.Shard000000013_000000016

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

private def familyInterval : RankInterval where
  startRank := 13
  endRank := 16

private def certForRank : Nat -> NonIdCert
  | 13 => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection000
  | 14 => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection001
  | 15 => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection002
  | _ => Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection000

private def family : NonIdParametricFamily where
  name := "bad_direction_sample"
  failure := NonIdFamilyFailure.badDirectionSign
  interval := familyInterval
  certForRank := certForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains
    have hRank : rank = 13 ∨ rank = 14 ∨ rank = 15 := by omega
    rcases hRank with rfl | rfl | rfl
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection000_coveredRank
          (And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection000_check
            Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection000_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection001_coveredRank
          (And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection001_check
            Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection001_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection002_coveredRank
          (And.intro Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection002_check
            Cuboctahedron.Generated.NonIdentity.nonIdFamilyBadDirection002_familyFailure)

private theorem family_check :
    checkNonIdParametricFamily family = true := by
  norm_num [checkNonIdParametricFamily, family, familyInterval,
    checkRankInterval, numPairWords]

private theorem family_contains
    {r : Nat} {hlt : r < numPairWords}
    (hlo : 13 <= r) (hhi : r < 16) :
    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by
  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,
    RankInterval.ContainsPairRank] using And.intro hlo hhi

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 13 16 := by
  intro r hlo hhi hlt _hclass _hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  rcases checkNonIdParametricFamily_sound family_check hcontains with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 13 16 := by
  intro r hlo hhi hlt _mask _hclass hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  exact False.elim
    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)

def nonidentityWitness :
    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval
      nonIdentityClassifier 13 16 where
  residual := nonidentity_residual_interval

def translationWitness :
    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval
      translationClassifier 13 16 where
  farkas := translation_farkas_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence 13 16 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentityWitness
  translation := translationWitness

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat 13 16 :=
  coverage.nonidentity_killed

theorem translation_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat 13 16 :=
  coverage.translation_killed

end Cuboctahedron.Generated.FamilyIntervalShard.Shard000000013_000000016
