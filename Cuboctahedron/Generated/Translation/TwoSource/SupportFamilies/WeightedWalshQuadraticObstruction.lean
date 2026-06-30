import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDirectWalshDenominator
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic

/-!
Weighted Walsh quadratic obstructions.

`DenominatorCube.WeightedDenomCubeCover` is the erased cover surface for the
DU9IQ hmask gap.  This module provides the next producer-facing layer: a
generated leaf may prove a weighted direct Walsh denominator is represented by
a compact quadratic coefficient record, and then use a subcube upper bound for
that record.  The theorem here turns those two local facts into the reusable
weighted denominator-cube obstruction.

This module contains no generated data, no mask enumeration, and no rank-local
Boolean reduction.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace DenominatorCube

open PositiveSurvivorClassifier.ImpactSubcube

structure WeightedWalshQuadraticObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  weights : InternalImpactWeights
  nonnegative : weights.Nonnegative
  positive_some : weights.PositiveSome
  cube : MaskSubcube
  member_cube :
    forall {mask : SignMask}, Member mask -> cube.Member mask
  poly : WalshQuadratic
  upper : WalshQuadraticSubcubeUpperBound cube poly
  direct_eq :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        weightedDirectWalshDotAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask weights =
            poly.coeffEval mask

theorem WeightedWalshQuadraticObstruction.nonpos
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WeightedWalshQuadraticObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    weightedDenomAtRank
      (⟨rank, hlt⟩ : Fin numPairWords) mask obstruction.weights <= 0 := by
  rw [weightedDenomAtRank_eq_weightedDirectWalshDotAtRank]
  rw [obstruction.direct_eq hlt hmember]
  exact obstruction.upper.coeffEval_nonpos (obstruction.member_cube hmember)

def WeightedWalshQuadraticObstruction.toWeightedDenomCubeObstruction
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WeightedWalshQuadraticObstruction rank Member) :
    WeightedDenomCubeObstruction rank Member :=
  WeightedDenomCubeObstruction.ofNonnegative
    obstruction.weights
    obstruction.nonnegative
    obstruction.positive_some
    (by
      intro mask hlt hmember
      exact obstruction.nonpos hlt hmember)

/--
Variant for generated leaves that prove polynomial nonpositivity by a sharper
local argument than independent term upper bounds.  This is useful when fixed
subcube bits create cancellations before the remaining free-bit bound is
applied.
-/
structure WeightedWalshQuadraticNonposObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  weights : InternalImpactWeights
  nonnegative : weights.Nonnegative
  positive_some : weights.PositiveSome
  poly : WalshQuadratic
  direct_eq :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        weightedDirectWalshDotAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask weights =
            poly.coeffEval mask
  poly_nonpos :
    forall {mask : SignMask},
      Member mask ->
        poly.coeffEval mask <= 0

theorem WeightedWalshQuadraticNonposObstruction.nonpos
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WeightedWalshQuadraticNonposObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    weightedDenomAtRank
      (⟨rank, hlt⟩ : Fin numPairWords) mask obstruction.weights <= 0 := by
  rw [weightedDenomAtRank_eq_weightedDirectWalshDotAtRank]
  rw [obstruction.direct_eq hlt hmember]
  exact obstruction.poly_nonpos hmember

def WeightedWalshQuadraticNonposObstruction.toWeightedDenomCubeObstruction
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WeightedWalshQuadraticNonposObstruction rank Member) :
    WeightedDenomCubeObstruction rank Member :=
  WeightedDenomCubeObstruction.ofNonnegative
    obstruction.weights
    obstruction.nonnegative
    obstruction.positive_some
    (by
      intro mask hlt hmember
      exact obstruction.nonpos hlt hmember)

theorem weightedWalshQuadraticObstruction_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
