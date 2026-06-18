import Cuboctahedron.Generated.NonIdentity.FamilySample

/-!
Generated representative parametric non-identity family sample for Step 14E.7B0.

The parametric layer covers rank intervals by a checked certificate-producing
function. This module exercises the high-volume non-identity families selected
by the prefix/parametric compression profile; it is representative, not
exhaustive.
-/

namespace Cuboctahedron.Generated.NonIdentity

set_option maxHeartbeats 1200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

def sampleBadDirectionParametricInterval : RankInterval where
  startRank := 13
  endRank := 16

def sampleBadDirectionParametricCertForRank : Nat -> NonIdCert
  | 13 => nonIdFamilyBadDirection000
  | 14 => nonIdFamilyBadDirection001
  | 15 => nonIdFamilyBadDirection002
  | _ => nonIdFamilyBadDirection000

def sampleBadDirectionParametricFamily : NonIdParametricFamily where
  name := "sampleBadDirectionParametricFamily"
  failure := NonIdFamilyFailure.badDirectionSign
  interval := sampleBadDirectionParametricInterval
  certForRank := sampleBadDirectionParametricCertForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, sampleBadDirectionParametricInterval] at hcontains
    have hRank : rank = 13 ∨ rank = 14 ∨ rank = 15 := by omega
    rcases hRank with rfl | rfl | rfl
    · simpa [sampleBadDirectionParametricCertForRank,
        checkNonIdParametricFailureMatches] using
        And.intro nonIdFamilyBadDirection000_coveredRank
          (And.intro nonIdFamilyBadDirection000_check
            nonIdFamilyBadDirection000_familyFailure)
    · simpa [sampleBadDirectionParametricCertForRank,
        checkNonIdParametricFailureMatches] using
        And.intro nonIdFamilyBadDirection001_coveredRank
          (And.intro nonIdFamilyBadDirection001_check
            nonIdFamilyBadDirection001_familyFailure)
    · simpa [sampleBadDirectionParametricCertForRank,
        checkNonIdParametricFailureMatches] using
        And.intro nonIdFamilyBadDirection002_coveredRank
          (And.intro nonIdFamilyBadDirection002_check
            nonIdFamilyBadDirection002_familyFailure)

theorem sampleBadDirectionParametricFamily_check :
    checkNonIdParametricFamily sampleBadDirectionParametricFamily = true := by
  norm_num [checkNonIdParametricFamily, sampleBadDirectionParametricFamily,
    sampleBadDirectionParametricInterval, checkRankInterval, numPairWords]

theorem sampleBadDirectionParametricFamily_sound
    {r : Fin numPairWords}
    (hcontains : sampleBadDirectionParametricFamily.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdParametricFamily_sound
    sampleBadDirectionParametricFamily_check hcontains

def sampleBadPairBalanceParametricInterval : RankInterval where
  startRank := 102
  endRank := 103

def sampleBadPairBalanceParametricCertForRank : Nat -> NonIdCert
  | 102 => nonIdFamilyBadPairBalance000
  | _ => nonIdFamilyBadPairBalance000

def sampleBadPairBalanceParametricFamily : NonIdParametricFamily where
  name := "sampleBadPairBalanceParametricFamily"
  failure := NonIdFamilyFailure.badPairBalance
  interval := sampleBadPairBalanceParametricInterval
  certForRank := sampleBadPairBalanceParametricCertForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, sampleBadPairBalanceParametricInterval] at hcontains
    have hRank : rank = 102 := by omega
    subst rank
    simpa [sampleBadPairBalanceParametricCertForRank,
      checkNonIdParametricFailureMatches] using
      And.intro nonIdFamilyBadPairBalance000_coveredRank
        (And.intro nonIdFamilyBadPairBalance000_check
          nonIdFamilyBadPairBalance000_familyFailure)

theorem sampleBadPairBalanceParametricFamily_check :
    checkNonIdParametricFamily sampleBadPairBalanceParametricFamily = true := by
  norm_num [checkNonIdParametricFamily, sampleBadPairBalanceParametricFamily,
    sampleBadPairBalanceParametricInterval, checkRankInterval, numPairWords]

theorem sampleBadPairBalanceParametricFamily_sound
    {r : Fin numPairWords}
    (hcontains : sampleBadPairBalanceParametricFamily.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdParametricFamily_sound
    sampleBadPairBalanceParametricFamily_check hcontains

def sampleParametricCoverage : NonIdParametricCoverage where
  families :=
    [sampleBadDirectionParametricFamily,
      sampleBadPairBalanceParametricFamily]

theorem sampleParametricCoverage_check :
    checkNonIdParametricCoverage sampleParametricCoverage = true := by
  unfold checkNonIdParametricCoverage sampleParametricCoverage
  simp [sampleBadDirectionParametricFamily_check,
    sampleBadPairBalanceParametricFamily_check]

theorem sampleParametricCoverage_sound
    {r : Fin numPairWords}
    (hcontains : sampleParametricCoverage.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdParametricCoverage_pairRank_sound
    sampleParametricCoverage_check hcontains

noncomputable def checkParametricSamples : Bool :=
  checkNonIdParametricCoverage sampleParametricCoverage

theorem checkParametricSamples_true :
    checkParametricSamples = true := by
  unfold checkParametricSamples
  exact sampleParametricCoverage_check

#check checkNonIdParametricFamily
#check checkNonIdParametricFamily_sound
#check Cuboctahedron.Generated.NonIdentity.sampleParametricCoverage_sound

end Cuboctahedron.Generated.NonIdentity
