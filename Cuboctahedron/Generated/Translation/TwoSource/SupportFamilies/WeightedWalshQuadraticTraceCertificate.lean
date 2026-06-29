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

theorem weightedWalshQuadraticTraceCertificate_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
