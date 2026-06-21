import Cuboctahedron.Generated.NonIdentity.Families
import Cuboctahedron.Generated.NonIdentity.ParametricSample

/-!
Smoke checks for the non-identity family coverage API.

These examples intentionally do not contain generated data.  They show the
small theorem shape generated leaves should export once Phase 4 family evidence
is emitted.
-/

namespace Cuboctahedron.Generated.NonIdentity

open Cuboctahedron.Generated.Coverage

private def sampleBadDirectionPhase4Family : NonIdBadDirFamily where
  family := sampleBadDirectionParametricFamily

private theorem sampleBadDirectionPhase4Family_check :
    checkNonIdBadDirFamily sampleBadDirectionPhase4Family = true := by
  unfold checkNonIdBadDirFamily sampleBadDirectionPhase4Family
  change
    (decide
        (sampleBadDirectionParametricFamily.failure =
          NonIdFamilyFailure.badDirectionSign) &&
      checkNonIdParametricFamily sampleBadDirectionParametricFamily) = true
  rw [sampleBadDirectionParametricFamily_check]
  rfl

private theorem sampleBadDirectionPhase4Family_contains :
    CoversInterval
      (FamilyContainsNat sampleBadDirectionPhase4Family.ContainsPairRank)
      13 16 := by
  intro r hlo hhi hlt
  exact ⟨hlo, hhi⟩

theorem sampleBadDirectionPhase4Family_killed :
    CoversInterval NonIdentityRankKilledNat 13 16 :=
  badDir_killed_interval
    sampleBadDirectionPhase4Family_check
    sampleBadDirectionPhase4Family_contains

private def sampleBadPairBalancePhase4Family : NonIdBadBalanceFamily where
  family := sampleBadPairBalanceParametricFamily

private theorem sampleBadPairBalancePhase4Family_check :
    checkNonIdBadBalanceFamily sampleBadPairBalancePhase4Family = true := by
  unfold checkNonIdBadBalanceFamily sampleBadPairBalancePhase4Family
  change
    (decide
        (sampleBadPairBalanceParametricFamily.failure =
          NonIdFamilyFailure.badPairBalance) &&
      checkNonIdParametricFamily sampleBadPairBalanceParametricFamily) = true
  rw [sampleBadPairBalanceParametricFamily_check]
  rfl

private theorem sampleBadPairBalancePhase4Family_contains :
    CoversInterval
      (FamilyContainsNat sampleBadPairBalancePhase4Family.ContainsPairRank)
      102 103 := by
  intro r hlo hhi hlt
  exact ⟨hlo, hhi⟩

theorem sampleBadPairBalancePhase4Family_killed :
    CoversInterval NonIdentityRankKilledNat 102 103 :=
  badBalance_killed_interval
    sampleBadPairBalancePhase4Family_check
    sampleBadPairBalancePhase4Family_contains

private def sampleAxisMissParametricInterval : RankInterval where
  startRank := 104
  endRank := 106

private def sampleAxisMissParametricCertForRank : Nat -> NonIdCert
  | 104 => nonIdFamilyAxisMiss000
  | 105 => nonIdFamilyAxisMiss001
  | _ => nonIdFamilyAxisMiss000

private def sampleAxisMissParametricFamily : NonIdParametricFamily where
  name := "sampleAxisMissParametricFamily"
  failure := NonIdFamilyFailure.axisMissesStartInterior
  interval := sampleAxisMissParametricInterval
  certForRank := sampleAxisMissParametricCertForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, sampleAxisMissParametricInterval]
      at hcontains
    have hRank : rank = 104 ∨ rank = 105 := by omega
    rcases hRank with rfl | rfl
    · simpa [sampleAxisMissParametricCertForRank,
        checkNonIdParametricFailureMatches] using
        And.intro nonIdFamilyAxisMiss000_coveredRank
          (And.intro nonIdFamilyAxisMiss000_check
            nonIdFamilyAxisMiss000_familyFailure)
    · simpa [sampleAxisMissParametricCertForRank,
        checkNonIdParametricFailureMatches] using
        And.intro nonIdFamilyAxisMiss001_coveredRank
          (And.intro nonIdFamilyAxisMiss001_check
            nonIdFamilyAxisMiss001_familyFailure)

private theorem sampleAxisMissParametricFamily_check :
    checkNonIdParametricFamily sampleAxisMissParametricFamily = true := by
  norm_num [checkNonIdParametricFamily, sampleAxisMissParametricFamily,
    sampleAxisMissParametricInterval, checkRankInterval, numPairWords]

private def sampleResidualPhase4Family : NonIdResidualFamily where
  family := sampleAxisMissParametricFamily

private theorem sampleResidualPhase4Family_check :
    checkNonIdResidualFamily sampleResidualPhase4Family = true := by
  unfold checkNonIdResidualFamily sampleResidualPhase4Family
  change
    (checkNonIdResidualFailure sampleAxisMissParametricFamily.failure &&
      checkNonIdParametricFamily sampleAxisMissParametricFamily) = true
  rw [sampleAxisMissParametricFamily_check]
  rfl

private theorem sampleResidualPhase4Family_contains :
    CoversInterval
      (FamilyContainsNat sampleResidualPhase4Family.ContainsPairRank)
      104 106 := by
  intro r hlo hhi hlt
  exact ⟨hlo, hhi⟩

theorem sampleResidualPhase4Family_killed :
    CoversInterval NonIdentityRankKilledNat 104 106 :=
  residual_killed_interval
    sampleResidualPhase4Family_check
    sampleResidualPhase4Family_contains

example {fam : NonIdBadDirFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadDirFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  badDir_killed_interval hcheck hcover

example {fam : NonIdBadBalanceFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadBalanceFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  badBalance_killed_interval hcheck hcover

example {fam : NonIdResidualFamily} {lo hi : Nat}
    (hcheck : checkNonIdResidualFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  residual_killed_interval hcheck hcover

end Cuboctahedron.Generated.NonIdentity
