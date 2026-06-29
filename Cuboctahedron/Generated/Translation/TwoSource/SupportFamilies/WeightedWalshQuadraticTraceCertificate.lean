import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadratic

/-!
Trace-based weighted Walsh quadratic certificates.

DU.9BN rejected direct unfolding of `weightedDirectWalshQuadraticAtRank` at a
concrete rank, even for one coefficient field.  This module defines the
smaller proof target for generated leaves: provide compact affine-Walsh normal
records, a proof-carrying translation-vector trace, and one coefficient
equality against those compact records.

The generic theorem below then connects the generated quadratic to
`weightedDirectWalshDotAtRank` without replaying the full recurrence inside
the obstruction leaf.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

def weightedQuadraticFromAffineData
    (normal : WordIndex -> WalshAffineVec3)
    (vector : WalshAffineVec3)
    (weights : DenominatorCube.InternalImpactWeights) : WalshQuadratic :=
  let q1 := WalshAffineVec3.dot (normal ⟨0, by decide⟩) vector
  let q2 := WalshAffineVec3.dot (normal ⟨1, by decide⟩) vector
  let q3 := WalshAffineVec3.dot (normal ⟨2, by decide⟩) vector
  let q4 := WalshAffineVec3.dot (normal ⟨3, by decide⟩) vector
  let q5 := WalshAffineVec3.dot (normal ⟨4, by decide⟩) vector
  let q6 := WalshAffineVec3.dot (normal ⟨5, by decide⟩) vector
  let q7 := WalshAffineVec3.dot (normal ⟨6, by decide⟩) vector
  let q8 := WalshAffineVec3.dot (normal ⟨7, by decide⟩) vector
  let q9 := WalshAffineVec3.dot (normal ⟨8, by decide⟩) vector
  let q10 := WalshAffineVec3.dot (normal ⟨9, by decide⟩) vector
  let q11 := WalshAffineVec3.dot (normal ⟨10, by decide⟩) vector
  let q12 := WalshAffineVec3.dot (normal ⟨11, by decide⟩) vector
  let q13 := WalshAffineVec3.dot (normal ⟨12, by decide⟩) vector
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

def weightedQuadraticFromDotData
    (dotPoly : WordIndex -> WalshQuadratic)
    (weights : DenominatorCube.InternalImpactWeights) : WalshQuadratic :=
  let q1 := dotPoly ⟨0, by decide⟩
  let q2 := dotPoly ⟨1, by decide⟩
  let q3 := dotPoly ⟨2, by decide⟩
  let q4 := dotPoly ⟨3, by decide⟩
  let q5 := dotPoly ⟨4, by decide⟩
  let q6 := dotPoly ⟨5, by decide⟩
  let q7 := dotPoly ⟨6, by decide⟩
  let q8 := dotPoly ⟨7, by decide⟩
  let q9 := dotPoly ⟨8, by decide⟩
  let q10 := dotPoly ⟨9, by decide⟩
  let q11 := dotPoly ⟨10, by decide⟩
  let q12 := dotPoly ⟨11, by decide⟩
  let q13 := dotPoly ⟨12, by decide⟩
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

theorem weightedQuadraticFromDotData_c
    (dotPoly : WordIndex -> WalshQuadratic)
    (weights : DenominatorCube.InternalImpactWeights) :
    (weightedQuadraticFromDotData dotPoly weights).c =
      weights.w1 * (dotPoly ⟨0, by decide⟩).c +
        weights.w2 * (dotPoly ⟨1, by decide⟩).c +
        weights.w3 * (dotPoly ⟨2, by decide⟩).c +
        weights.w4 * (dotPoly ⟨3, by decide⟩).c +
        weights.w5 * (dotPoly ⟨4, by decide⟩).c +
        weights.w6 * (dotPoly ⟨5, by decide⟩).c +
        weights.w7 * (dotPoly ⟨6, by decide⟩).c +
        weights.w8 * (dotPoly ⟨7, by decide⟩).c +
        weights.w9 * (dotPoly ⟨8, by decide⟩).c +
        weights.w10 * (dotPoly ⟨9, by decide⟩).c +
        weights.w11 * (dotPoly ⟨10, by decide⟩).c +
        weights.w12 * (dotPoly ⟨11, by decide⟩).c +
        weights.w13 * (dotPoly ⟨12, by decide⟩).c := by
  unfold weightedQuadraticFromDotData
  simp [WalshQuadratic.add, WalshQuadratic.scale]
  ring

def weightedQuadraticFromDotDataCoeff
    (field : WalshQuadratic -> Rat)
    (dotPoly : WordIndex -> WalshQuadratic)
    (weights : DenominatorCube.InternalImpactWeights) : Rat :=
  weights.w1 * field (dotPoly ⟨0, by decide⟩) +
    weights.w2 * field (dotPoly ⟨1, by decide⟩) +
    weights.w3 * field (dotPoly ⟨2, by decide⟩) +
    weights.w4 * field (dotPoly ⟨3, by decide⟩) +
    weights.w5 * field (dotPoly ⟨4, by decide⟩) +
    weights.w6 * field (dotPoly ⟨5, by decide⟩) +
    weights.w7 * field (dotPoly ⟨6, by decide⟩) +
    weights.w8 * field (dotPoly ⟨7, by decide⟩) +
    weights.w9 * field (dotPoly ⟨8, by decide⟩) +
    weights.w10 * field (dotPoly ⟨9, by decide⟩) +
    weights.w11 * field (dotPoly ⟨10, by decide⟩) +
    weights.w12 * field (dotPoly ⟨11, by decide⟩) +
    weights.w13 * field (dotPoly ⟨12, by decide⟩)

def weightedQuadraticFromDotDataCoeffs
    (dotPoly : WordIndex -> WalshQuadratic)
    (weights : DenominatorCube.InternalImpactWeights) : WalshQuadratic where
  c := weightedQuadraticFromDotDataCoeff (fun q => q.c) dotPoly weights
  y := weightedQuadraticFromDotDataCoeff (fun q => q.y) dotPoly weights
  z := weightedQuadraticFromDotDataCoeff (fun q => q.z) dotPoly weights
  d111 := weightedQuadraticFromDotDataCoeff (fun q => q.d111) dotPoly weights
  d11m := weightedQuadraticFromDotDataCoeff (fun q => q.d11m) dotPoly weights
  d1m1 := weightedQuadraticFromDotDataCoeff (fun q => q.d1m1) dotPoly weights
  dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.dm11) dotPoly weights
  yz := weightedQuadraticFromDotDataCoeff (fun q => q.yz) dotPoly weights
  y_d111 := weightedQuadraticFromDotDataCoeff (fun q => q.y_d111) dotPoly weights
  y_d11m := weightedQuadraticFromDotDataCoeff (fun q => q.y_d11m) dotPoly weights
  y_d1m1 := weightedQuadraticFromDotDataCoeff (fun q => q.y_d1m1) dotPoly weights
  y_dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.y_dm11) dotPoly weights
  z_d111 := weightedQuadraticFromDotDataCoeff (fun q => q.z_d111) dotPoly weights
  z_d11m := weightedQuadraticFromDotDataCoeff (fun q => q.z_d11m) dotPoly weights
  z_d1m1 := weightedQuadraticFromDotDataCoeff (fun q => q.z_d1m1) dotPoly weights
  z_dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.z_dm11) dotPoly weights
  d111_d11m := weightedQuadraticFromDotDataCoeff (fun q => q.d111_d11m) dotPoly weights
  d111_d1m1 := weightedQuadraticFromDotDataCoeff (fun q => q.d111_d1m1) dotPoly weights
  d111_dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.d111_dm11) dotPoly weights
  d11m_d1m1 := weightedQuadraticFromDotDataCoeff (fun q => q.d11m_d1m1) dotPoly weights
  d11m_dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.d11m_dm11) dotPoly weights
  d1m1_dm11 := weightedQuadraticFromDotDataCoeff (fun q => q.d1m1_dm11) dotPoly weights

theorem weightedQuadraticFromDotData_eq_coeffs
    (dotPoly : WordIndex -> WalshQuadratic)
    (weights : DenominatorCube.InternalImpactWeights) :
    weightedQuadraticFromDotData dotPoly weights =
      weightedQuadraticFromDotDataCoeffs dotPoly weights := by
  unfold weightedQuadraticFromDotData weightedQuadraticFromDotDataCoeffs
    weightedQuadraticFromDotDataCoeff
  simp [WalshQuadratic.add, WalshQuadratic.scale]
  repeat' constructor <;> ring_nf
  all_goals simp

theorem weightedQuadraticFromAffineData_eq_fromDotData
    {normal : WordIndex -> WalshAffineVec3}
    {vector : WalshAffineVec3}
    {dotPoly : WordIndex -> WalshQuadratic}
    {weights : DenominatorCube.InternalImpactWeights}
    (hDot : forall i : WordIndex,
      WalshAffineVec3.dot (normal i) vector = dotPoly i) :
    weightedQuadraticFromAffineData normal vector weights =
      weightedQuadraticFromDotData dotPoly weights := by
  unfold weightedQuadraticFromAffineData weightedQuadraticFromDotData
  rw [hDot ⟨0, by decide⟩, hDot ⟨1, by decide⟩,
    hDot ⟨2, by decide⟩, hDot ⟨3, by decide⟩,
    hDot ⟨4, by decide⟩, hDot ⟨5, by decide⟩,
    hDot ⟨6, by decide⟩, hDot ⟨7, by decide⟩,
    hDot ⟨8, by decide⟩, hDot ⟨9, by decide⟩,
    hDot ⟨10, by decide⟩, hDot ⟨11, by decide⟩,
    hDot ⟨12, by decide⟩]

theorem weightedQuadraticFromAffineData_eq_direct
    {w : PairWord}
    {normal : WordIndex -> WalshAffineVec3}
    {vector : WalshAffineVec3}
    {weights : DenominatorCube.InternalImpactWeights}
    (hNormal : forall i : WordIndex, normal i = impactNormalWalshAt w i)
    (hVector : vector = translationVectorWalshOfChoice w) :
    weightedQuadraticFromAffineData normal vector weights =
      weightedDirectWalshQuadraticAtWord w weights := by
  have hNormalFun :
      normal = fun i : WordIndex => impactNormalWalshAt w i := by
    funext i
    exact hNormal i
  rw [hNormalFun, hVector]
  rfl

end ImpactSubcube
end PositiveSurvivorClassifier

namespace DenominatorCube

open PositiveSurvivorClassifier.ImpactSubcube

structure WeightedWalshQuadraticTraceCertificate
    (r : Fin numPairWords)
    (weights : InternalImpactWeights)
    (poly : WalshQuadratic) where
  word : PairWord
  rank_word : unrankPairWord r = word
  vector : WalshAffineVec3
  vector_trace : TranslationWalshVectorTrace word vector
  normal : WordIndex -> WalshAffineVec3
  normal_eq : forall i : WordIndex, normal i = impactNormalWalshAt word i
  poly_eq : weightedQuadraticFromAffineData normal vector weights = poly

theorem WeightedWalshQuadraticTraceCertificate.quadratic_eq
    {r : Fin numPairWords}
    {weights : InternalImpactWeights}
    {poly : WalshQuadratic}
    (cert : WeightedWalshQuadraticTraceCertificate r weights poly) :
    weightedDirectWalshQuadraticAtRank r weights = poly := by
  have hVector := cert.vector_trace.final_eq_translationVectorWalsh
  unfold weightedDirectWalshQuadraticAtRank
  rw [cert.rank_word]
  exact (weightedQuadraticFromAffineData_eq_direct
    cert.normal_eq hVector).symm.trans cert.poly_eq

theorem WeightedWalshQuadraticTraceCertificate.coeffEval_eq_weightedDirect
    {r : Fin numPairWords}
    {weights : InternalImpactWeights}
    {poly : WalshQuadratic}
    (cert : WeightedWalshQuadraticTraceCertificate r weights poly)
    (mask : SignMask) :
    poly.coeffEval mask = weightedDirectWalshDotAtRank r mask weights := by
  rw [← cert.quadratic_eq]
  exact weightedDirectWalshQuadraticAtRank_coeffEval r mask weights

theorem WeightedWalshQuadraticTraceCertificate.weightedDirect_nonpos_of_coeffEval_nonpos
    {r : Fin numPairWords}
    {weights : InternalImpactWeights}
    {poly : WalshQuadratic}
    (cert : WeightedWalshQuadraticTraceCertificate r weights poly)
    {mask : SignMask}
    (hpoly : poly.coeffEval mask <= 0) :
    weightedDirectWalshDotAtRank r mask weights <= 0 := by
  have hcoeff := cert.coeffEval_eq_weightedDirect mask
  rw [hcoeff] at hpoly
  exact hpoly

theorem WeightedWalshQuadraticTraceCertificate.weightedDirect_nonpos_of_scaled_intEval_nonpos
    {r : Fin numPairWords}
    {weights : InternalImpactWeights}
    {q : ScaledWalshQuadratic}
    (cert : WeightedWalshQuadraticTraceCertificate r weights q.toQuadratic)
    (hscale : 0 < q.scale)
    {mask : SignMask}
    (hint : q.intEval mask <= 0) :
    weightedDirectWalshDotAtRank r mask weights <= 0 :=
  cert.weightedDirect_nonpos_of_coeffEval_nonpos
    (q.coeffEval_nonpos_of_intEval_nonpos hscale hint)

theorem weightedWalshQuadraticTraceCertificate_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
