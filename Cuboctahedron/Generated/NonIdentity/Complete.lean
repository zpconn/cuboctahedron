import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Generated.NonIdentity.FamilyPartition
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.All

/-!
Assembly layer for generated non-identity coverage.

The early non-identity families are already exposed through
`FamilyPartition`.  The residual partition already provides checked
certificates once `residualPartitionCoversRank r = true` is known.  This module
assembles those pieces behind a single theorem that is conditional on the one
remaining generated bridge: residual-class ranks must be shown to be covered by
the residual partition.
-/

namespace Cuboctahedron.Generated.NonIdentity

abbrev ResidualBridge : Prop :=
  forall {r : Fin numPairWords},
    nonIdEarlyFamilyClassOfRank r = NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
        Residual.Partition.residualPartitionCoversRank r = true

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
      have hcover :
          Residual.Partition.residualPartitionCoversRank r = true :=
        residualBridge hclass hM
      exact Residual.Partition.residualPartitionCoversRank_sound hcover

theorem complete_no_feasible_of_residual_bridge
    (residualBridge : ResidualBridge)
    (r : Fin numPairWords) :
    Coverage.NonIdentityRankKilled r :=
  Coverage.NonIdentityRankCertified.killed
    (complete_of_residual_bridge residualBridge r)

end Cuboctahedron.Generated.NonIdentity
