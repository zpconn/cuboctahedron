import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated-facing adapters for non-identity family coverage.

Generated leaves should keep heavy family data private and export small
`CoversInterval` theorems.  The theorems here convert a checked family plus an
interval-membership fact into semantic rank certification and elimination.
-/

namespace Cuboctahedron.Generated.NonIdentity

open Cuboctahedron.Generated.Coverage

def FamilyContainsNat
    (contains : Fin numPairWords -> Prop) (r : Nat) : Prop :=
  forall hlt : r < numPairWords, contains ⟨r, hlt⟩

theorem badDir_certified_interval
    {fam : NonIdBadDirFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadDirFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankCertifiedNat lo hi := by
  intro r hlo hhi hlt hM
  exact checkNonIdBadDirFamily_sound hcheck (hcover r hlo hhi hlt)

theorem badBalance_certified_interval
    {fam : NonIdBadBalanceFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadBalanceFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankCertifiedNat lo hi := by
  intro r hlo hhi hlt hM
  exact checkNonIdBadBalanceFamily_sound hcheck (hcover r hlo hhi hlt)

theorem residual_certified_interval
    {fam : NonIdResidualFamily} {lo hi : Nat}
    (hcheck : checkNonIdResidualFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankCertifiedNat lo hi := by
  intro r hlo hhi hlt hM
  exact checkNonIdResidualFamily_sound hcheck (hcover r hlo hhi hlt)

theorem certified_interval_killed
    {lo hi : Nat}
    (hcert :
      CoversInterval NonIdentityRankCertifiedNat lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  CoversInterval.mono
    (fun _r h => NonIdentityRankCertifiedNat.killed h) hcert

theorem badDir_killed_interval
    {fam : NonIdBadDirFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadDirFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  certified_interval_killed
    (badDir_certified_interval hcheck hcover)

theorem badBalance_killed_interval
    {fam : NonIdBadBalanceFamily} {lo hi : Nat}
    (hcheck : checkNonIdBadBalanceFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  certified_interval_killed
    (badBalance_certified_interval hcheck hcover)

theorem residual_killed_interval
    {fam : NonIdResidualFamily} {lo hi : Nat}
    (hcheck : checkNonIdResidualFamily fam = true)
    (hcover :
      CoversInterval
        (FamilyContainsNat fam.ContainsPairRank) lo hi) :
    CoversInterval NonIdentityRankKilledNat lo hi :=
  certified_interval_killed
    (residual_certified_interval hcheck hcover)

end Cuboctahedron.Generated.NonIdentity
