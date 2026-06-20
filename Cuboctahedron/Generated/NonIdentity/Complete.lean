import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Generated.NonIdentity.FamilyPartition

/-!
Assembly layer for generated non-identity coverage.

The early non-identity families are exposed through `FamilyPartition`.  This
module assembles those pieces behind a single theorem that is conditional on the
remaining generated bridge: residual-class ranks must provide semantic checked
certificate witnesses.  The bridge is deliberately not a Boolean packed-data
checker, so this public layer does not import the old high-memory residual
partition backend.
-/

namespace Cuboctahedron.Generated.NonIdentity

abbrev ResidualBridge : Prop :=
  forall {r : Fin numPairWords},
    nonIdEarlyFamilyClassOfRank r = NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord r /\
            checkNonIdCert cert = true

theorem complete_of_residual_bridge
    (residualBridge : ResidualBridge)
    (r : Fin numPairWords)
    (hM : totalLinearOfPairWord (unrankPairWord r) ≠
      (matId : Mat3 Rat)) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  classical
  cases hclass : nonIdEarlyFamilyClassOfRank r with
  | badDirectionSign =>
      have hcontains :
          exhaustiveFamilyPartition.CoversBadDirection r := by
        simp [exhaustiveFamilyPartition, hclass]
      exact exhaustiveNonIdBadDirectionFamily_sound
        (exhaustiveBadDirectionPartition_sound hcontains)
  | badPairBalance =>
      have hcontains :
          exhaustiveFamilyPartition.CoversBadPairBalance r := by
        simp [exhaustiveFamilyPartition, hclass]
      exact exhaustiveNonIdBadPairBalanceFamily_sound
        (exhaustiveBadPairBalancePartition_sound hcontains)
  | residual =>
      exact residualBridge hclass hM

theorem complete_no_feasible_of_residual_bridge
    (residualBridge : ResidualBridge)
    (r : Fin numPairWords) :
    Coverage.NonIdentityRankKilled r :=
  Coverage.NonIdentityRankCertified.killed
    (complete_of_residual_bridge residualBridge r)

end Cuboctahedron.Generated.NonIdentity
