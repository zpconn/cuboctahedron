import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDirectWalshDenominator

/-!
Weighted Walsh quadratic bridge.

`ImpactSubcubeWalshSymbolic` already proves that the dot product of two affine
Walsh vectors evaluates to the dot product of their evaluations.  Weighted
denominator cubes need the corresponding 13-impact weighted sum.  This module
packages that generic algebra once, so generated leaves can compare compact
coefficient records to a weighted quadratic instead of replaying denominator
recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

def WalshQuadratic.scale (a : Rat) (q : WalshQuadratic) : WalshQuadratic where
  c := a * q.c
  y := a * q.y
  z := a * q.z
  d111 := a * q.d111
  d11m := a * q.d11m
  d1m1 := a * q.d1m1
  dm11 := a * q.dm11
  yz := a * q.yz
  y_d111 := a * q.y_d111
  y_d11m := a * q.y_d11m
  y_d1m1 := a * q.y_d1m1
  y_dm11 := a * q.y_dm11
  z_d111 := a * q.z_d111
  z_d11m := a * q.z_d11m
  z_d1m1 := a * q.z_d1m1
  z_dm11 := a * q.z_dm11
  d111_d11m := a * q.d111_d11m
  d111_d1m1 := a * q.d111_d1m1
  d111_dm11 := a * q.d111_dm11
  d11m_d1m1 := a * q.d11m_d1m1
  d11m_dm11 := a * q.d11m_dm11
  d1m1_dm11 := a * q.d1m1_dm11

theorem WalshQuadratic.scale_coeffEval
    (a : Rat) (q : WalshQuadratic) (mask : SignMask) :
    (WalshQuadratic.scale a q).coeffEval mask =
      a * q.coeffEval mask := by
  simp [WalshQuadratic.scale, WalshQuadratic.coeffEval]
  ring

def directWalshQuadraticAtWord
    (w : PairWord) (i : WordIndex) : WalshQuadratic :=
  WalshAffineVec3.dot
    (impactNormalWalshAt w i)
    (translationVectorWalshOfChoice w)

def weightedDirectWalshQuadraticAtWord
    (w : PairWord)
    (weights : DenominatorCube.InternalImpactWeights) : WalshQuadratic :=
  let q1 := directWalshQuadraticAtWord w ⟨0, by decide⟩
  let q2 := directWalshQuadraticAtWord w ⟨1, by decide⟩
  let q3 := directWalshQuadraticAtWord w ⟨2, by decide⟩
  let q4 := directWalshQuadraticAtWord w ⟨3, by decide⟩
  let q5 := directWalshQuadraticAtWord w ⟨4, by decide⟩
  let q6 := directWalshQuadraticAtWord w ⟨5, by decide⟩
  let q7 := directWalshQuadraticAtWord w ⟨6, by decide⟩
  let q8 := directWalshQuadraticAtWord w ⟨7, by decide⟩
  let q9 := directWalshQuadraticAtWord w ⟨8, by decide⟩
  let q10 := directWalshQuadraticAtWord w ⟨9, by decide⟩
  let q11 := directWalshQuadraticAtWord w ⟨10, by decide⟩
  let q12 := directWalshQuadraticAtWord w ⟨11, by decide⟩
  let q13 := directWalshQuadraticAtWord w ⟨12, by decide⟩
  WalshQuadratic.add
    (WalshQuadratic.add
      (WalshQuadratic.add
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w1 q1)
          (WalshQuadratic.scale weights.w2 q2))
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w3 q3)
          (WalshQuadratic.scale weights.w4 q4)))
      (WalshQuadratic.add
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w5 q5)
          (WalshQuadratic.scale weights.w6 q6))
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w7 q7)
          (WalshQuadratic.scale weights.w8 q8))))
    (WalshQuadratic.add
      (WalshQuadratic.add
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w9 q9)
          (WalshQuadratic.scale weights.w10 q10))
        (WalshQuadratic.add
          (WalshQuadratic.scale weights.w11 q11)
          (WalshQuadratic.scale weights.w12 q12)))
      (WalshQuadratic.scale weights.w13 q13))

theorem weightedDirectWalshQuadraticAtWord_coeffEval
    (w : PairWord) (mask : SignMask)
    (weights : DenominatorCube.InternalImpactWeights) :
    (weightedDirectWalshQuadraticAtWord w weights).coeffEval mask =
      let d1 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨0, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d2 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨1, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d3 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨2, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d4 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨3, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d5 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨4, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d6 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨5, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d7 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨6, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d8 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨7, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d9 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨8, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d10 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨9, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d11 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨10, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d12 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨11, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      let d13 := Cuboctahedron.dot
        ((impactNormalWalshAt w ⟨12, by decide⟩).eval mask)
        ((translationVectorWalshOfChoice w).eval mask)
      weights.w1 * d1 + weights.w2 * d2 + weights.w3 * d3 +
        weights.w4 * d4 + weights.w5 * d5 + weights.w6 * d6 +
          weights.w7 * d7 + weights.w8 * d8 + weights.w9 * d9 +
            weights.w10 * d10 + weights.w11 * d11 + weights.w12 * d12 +
              weights.w13 * d13 := by
  simp [weightedDirectWalshQuadraticAtWord, directWalshQuadraticAtWord,
    WalshQuadratic.add_coeffEval, WalshQuadratic.scale_coeffEval,
    WalshAffineVec3.dot_coeffEval]
  ring

theorem weightedWalshQuadratic_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier

namespace DenominatorCube

open PositiveSurvivorClassifier.ImpactSubcube

def weightedDirectWalshQuadraticAtRank
    (r : Fin numPairWords) (weights : InternalImpactWeights) :
    WalshQuadratic :=
  weightedDirectWalshQuadraticAtWord (unrankPairWord r) weights

theorem weightedDirectWalshQuadraticAtRank_coeffEval
    (r : Fin numPairWords) (mask : SignMask)
    (weights : InternalImpactWeights) :
    (weightedDirectWalshQuadraticAtRank r weights).coeffEval mask =
      weightedDirectWalshDotAtRank r mask weights := by
  simp [weightedDirectWalshQuadraticAtRank,
    weightedDirectWalshQuadraticAtWord_coeffEval,
    weightedDirectWalshDotAtRank, directWalshDotAtRank]

theorem weightedWalshQuadraticDenominator_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
