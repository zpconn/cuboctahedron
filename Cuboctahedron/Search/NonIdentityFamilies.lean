import Cuboctahedron.Search.Certificates

/-!
Typed wrappers for non-identity certificate families.

The older `NonIdParametricFamily` API already contains the key trusted bridge:
for every rank in its interval it can produce an ordinary `NonIdCert` checked by
`checkNonIdCert`.  This module gives the high-volume non-identity failure
classes explicit names and checker/soundness theorems without duplicating the
ordinary certificate checker.
-/

namespace Cuboctahedron

structure NonIdBadDirFamily where
  family : NonIdParametricFamily

structure NonIdBadBalanceFamily where
  family : NonIdParametricFamily

structure NonIdResidualFamily where
  family : NonIdParametricFamily

def checkNonIdResidualFailure (failure : NonIdFamilyFailure) : Bool :=
  match failure with
  | NonIdFamilyFailure.badDirectionSign => false
  | NonIdFamilyFailure.badPairBalance => false
  | _ => true

namespace NonIdBadDirFamily

def interval (fam : NonIdBadDirFamily) : RankInterval :=
  fam.family.interval

def ContainsPairRank (fam : NonIdBadDirFamily)
    (r : Fin numPairWords) : Prop :=
  fam.family.ContainsPairRank r

end NonIdBadDirFamily

namespace NonIdBadBalanceFamily

def interval (fam : NonIdBadBalanceFamily) : RankInterval :=
  fam.family.interval

def ContainsPairRank (fam : NonIdBadBalanceFamily)
    (r : Fin numPairWords) : Prop :=
  fam.family.ContainsPairRank r

end NonIdBadBalanceFamily

namespace NonIdResidualFamily

def interval (fam : NonIdResidualFamily) : RankInterval :=
  fam.family.interval

def ContainsPairRank (fam : NonIdResidualFamily)
    (r : Fin numPairWords) : Prop :=
  fam.family.ContainsPairRank r

end NonIdResidualFamily

noncomputable def checkNonIdBadDirFamily
    (fam : NonIdBadDirFamily) : Bool :=
  decide (fam.family.failure = NonIdFamilyFailure.badDirectionSign) &&
    checkNonIdParametricFamily fam.family

noncomputable def checkNonIdBadBalanceFamily
    (fam : NonIdBadBalanceFamily) : Bool :=
  decide (fam.family.failure = NonIdFamilyFailure.badPairBalance) &&
    checkNonIdParametricFamily fam.family

noncomputable def checkNonIdResidualFamily
    (fam : NonIdResidualFamily) : Bool :=
  checkNonIdResidualFailure fam.family.failure &&
    checkNonIdParametricFamily fam.family

theorem checkNonIdBadDirFamily_parts
    {fam : NonIdBadDirFamily}
    (hcheck : checkNonIdBadDirFamily fam = true) :
    fam.family.failure = NonIdFamilyFailure.badDirectionSign /\
      checkNonIdParametricFamily fam.family = true := by
  simpa only [checkNonIdBadDirFamily, Bool.and_eq_true,
    decide_eq_true_eq] using hcheck

theorem checkNonIdBadBalanceFamily_parts
    {fam : NonIdBadBalanceFamily}
    (hcheck : checkNonIdBadBalanceFamily fam = true) :
    fam.family.failure = NonIdFamilyFailure.badPairBalance /\
      checkNonIdParametricFamily fam.family = true := by
  simpa only [checkNonIdBadBalanceFamily, Bool.and_eq_true,
    decide_eq_true_eq] using hcheck

theorem checkNonIdResidualFamily_parametric
    {fam : NonIdResidualFamily}
    (hcheck : checkNonIdResidualFamily fam = true) :
    checkNonIdParametricFamily fam.family = true := by
  have hparts :
      checkNonIdResidualFailure fam.family.failure = true /\
        checkNonIdParametricFamily fam.family = true := by
    simpa only [checkNonIdResidualFamily, Bool.and_eq_true] using hcheck
  exact hparts.2

theorem checkNonIdBadDirFamily_sound
    {fam : NonIdBadDirFamily} {r : Fin numPairWords}
    (hcheck : checkNonIdBadDirFamily fam = true)
    (hcontains : fam.ContainsPairRank r) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  rcases checkNonIdBadDirFamily_parts hcheck with ⟨_hfailure, hfamily⟩
  rcases checkNonIdParametricFamily_sound
      (family := fam.family) hfamily
      (by simpa [NonIdBadDirFamily.ContainsPairRank] using hcontains) with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem checkNonIdBadBalanceFamily_sound
    {fam : NonIdBadBalanceFamily} {r : Fin numPairWords}
    (hcheck : checkNonIdBadBalanceFamily fam = true)
    (hcontains : fam.ContainsPairRank r) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  rcases checkNonIdBadBalanceFamily_parts hcheck with ⟨_hfailure, hfamily⟩
  rcases checkNonIdParametricFamily_sound
      (family := fam.family) hfamily
      (by simpa [NonIdBadBalanceFamily.ContainsPairRank] using hcontains) with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem checkNonIdResidualFamily_sound
    {fam : NonIdResidualFamily} {r : Fin numPairWords}
    (hcheck : checkNonIdResidualFamily fam = true)
    (hcontains : fam.ContainsPairRank r) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  rcases checkNonIdParametricFamily_sound
      (family := fam.family)
      (checkNonIdResidualFamily_parametric hcheck)
      (by simpa [NonIdResidualFamily.ContainsPairRank] using hcontains) with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem checkNonIdBadDirFamily_failure_covers
    {fam : NonIdBadDirFamily} {r : Fin numPairWords}
    (hcheck : checkNonIdBadDirFamily fam = true)
    (hcontains : fam.ContainsPairRank r) :
    NonIdBadDirectionFamilyCovers r := by
  rcases checkNonIdBadDirFamily_parts hcheck with ⟨hfailure, hfamily⟩
  exact Or.inl ⟨fam.family, hfailure, hfamily,
    by simpa [NonIdBadDirFamily.ContainsPairRank] using hcontains⟩

theorem checkNonIdBadBalanceFamily_failure_covers
    {fam : NonIdBadBalanceFamily} {r : Fin numPairWords}
    (hcheck : checkNonIdBadBalanceFamily fam = true)
    (hcontains : fam.ContainsPairRank r) :
    NonIdBadPairBalanceFamilyCovers r := by
  rcases checkNonIdBadBalanceFamily_parts hcheck with ⟨hfailure, hfamily⟩
  exact Or.inl ⟨fam.family, hfailure, hfamily,
    by simpa [NonIdBadBalanceFamily.ContainsPairRank] using hcontains⟩

end Cuboctahedron
