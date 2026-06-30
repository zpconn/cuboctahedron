import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction

/-!
DU.9IQ reduced weighted-quadratic smoke.

This file checks the next safe producer surface for weighted denominator cubes.
It proves the local polynomial nonpositivity for the accepted rank-`896`
support-`[2,6]` cube using a reduced Walsh-quadratic bound.  The equality from
the rank's weighted direct Walsh denominator to this compact polynomial remains
an explicit premise: production generated leaves must supply that equality by
small coefficient/dot facts, not by unfolding `weightedDirectWalshQuadraticAtRank`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQReducedBoundSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

private def rank896 : Nat := 896

private def cube1xx0x0 : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.dm11 => some false
    | _ => none

private def weights2_6 : InternalImpactWeights where
  w1 := 0
  w2 := 1
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 1
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights2_6_nonnegative :
    weights2_6.Nonnegative := by
  norm_num [weights2_6, InternalImpactWeights.Nonnegative]

private theorem weights2_6_positive :
    weights2_6.PositiveSome := by
  norm_num [weights2_6, InternalImpactWeights.PositiveSome]

/--
The weighted Walsh polynomial for rank `896`, cube pattern `1**0*0`,
support `[2,6]`, weights `[1,1]`, as computed by the exact external profiler.
This file treats the coefficient record as generated data and checks only the
local reduced-bound proof.
-/
private def poly896_2_6 : WalshQuadratic where
  c := 12
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8 / 3
  y_d11m := 20 / 3
  y_d1m1 := -40 / 9
  y_dm11 := 8 / 3
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8 / 3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := -40 / 9
  d11m_dm11 := -8 / 3
  d1m1_dm11 := 0

private def reduced896_2_6 : WalshQuadratic where
  c := -4
  y := 0
  z := 4
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem poly896_2_6_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube1xx0x0.Member mask) :
    poly896_2_6.coeffEval mask = reduced896_2_6.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = true := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.y
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = false := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = false := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd111 : maskBitForPair mask SignBit.d111.toPairId
    all_goals
      by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
      all_goals
        simp [poly896_2_6, reduced896_2_6, WalshQuadratic.coeffEval,
          SignBit.value, hy, hd11m, hdm11, hz, hd111, hd1m1]
        norm_num

private def reducedBound896_2_6 :
    WalshQuadraticReducedAbsBound cube1xx0x0 poly896_2_6 where
  reduced := reduced896_2_6
  eq_on_cube := by
    intro mask hmask
    exact poly896_2_6_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced896_2_6, WalshQuadratic.absBoundSum]

private def cubeBound896_2_6 :
    WalshQuadraticCubeBound cube1xx0x0 poly896_2_6 :=
  WalshQuadraticCubeBound.leaf reducedBound896_2_6

private theorem poly896_2_6_nonpos
    {mask : SignMask} (hmask : cube1xx0x0.Member mask) :
    poly896_2_6.coeffEval mask <= 0 :=
  cubeBound896_2_6.coeffEval_nonpos hmask

def reducedObstruction896_2_6
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube1xx0x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 =
            poly896_2_6.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank896 cube1xx0x0.Member where
  weights := weights2_6
  nonnegative := weights2_6_nonnegative
  positive_some := weights2_6_positive
  poly := poly896_2_6
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly896_2_6_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube1xx0x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 =
            poly896_2_6.coeffEval mask)
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 <= 0 :=
  (reducedObstruction896_2_6 direct_eq).nonpos hlt hmember

theorem weightedDenomCubeDU9IQReducedBoundSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQReducedBoundSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
