import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector

/-!
Small trace surface for generated Walsh impact normals.

Generated weighted-denominator leaves currently prove facts of the form

`generatedNormal i = impactNormalWalshAt generatedWord i`

by unfolding `impactNormalWalshAt`, `pairPrefixLinearNat`, and the reflection
matrices in one local proof.  This module separates the generic statement from
the generated arithmetic.  A generated leaf can provide prefix matrices and
compact normal records, prove those smaller facts locally, and then use
`ImpactNormalWalshTrace.normal_eq_impactNormalWalshAt` as the semantic bridge.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

def impactNormalWalshFromPrefix
    (w : PairWord) (i : WordIndex) (prefixM : Mat3 Rat) :
    WalshAffineVec3 :=
  WalshAffineVec3.smulConst (signedCoeffWalshAt w i)
    (matVec prefixM (canonicalNormalQ (w.get i)))

theorem impactNormalWalshFromPrefix_eq_impactNormalWalshAt
    {w : PairWord} {i : WordIndex} {prefixM : Mat3 Rat}
    (hPrefix : prefixM = pairPrefixLinearNat w i.val) :
    impactNormalWalshFromPrefix w i prefixM = impactNormalWalshAt w i := by
  subst prefixM
  rfl

/--
Proof-carrying generated normal data for one impact.

The generated obligations are intentionally split:

* `prefix_eq` proves the compact prefix matrix is the exact prefix linear part;
* `normal_eq_from_prefix` proves the compact normal record was built from that
  matrix and the signed pair normal.

The final theorem below then packages the fact expected by existing trace
certificates.
-/
structure ImpactNormalWalshTrace
    (w : PairWord) (i : WordIndex) (normal : WalshAffineVec3) where
  prefixM : Mat3 Rat
  prefix_eq : prefixM = pairPrefixLinearNat w i.val
  normal_eq_from_prefix :
    normal = impactNormalWalshFromPrefix w i prefixM

theorem ImpactNormalWalshTrace.normal_eq_impactNormalWalshAt
    {w : PairWord} {i : WordIndex} {normal : WalshAffineVec3}
    (trace : ImpactNormalWalshTrace w i normal) :
    normal = impactNormalWalshAt w i := by
  exact trace.normal_eq_from_prefix.trans
    (impactNormalWalshFromPrefix_eq_impactNormalWalshAt trace.prefix_eq)

/--
Vector-valued version used by `WeightedWalshQuadraticTraceCertificate`.
-/
structure ImpactNormalWalshVectorTrace
    (w : PairWord) (normal : WordIndex -> WalshAffineVec3) where
  prefixM : WordIndex -> Mat3 Rat
  prefix_eq :
    forall i : WordIndex, prefixM i = pairPrefixLinearNat w i.val
  normal_eq_from_prefix :
    forall i : WordIndex,
      normal i = impactNormalWalshFromPrefix w i (prefixM i)

theorem ImpactNormalWalshVectorTrace.normal_eq_impactNormalWalshAt
    {w : PairWord} {normal : WordIndex -> WalshAffineVec3}
    (trace : ImpactNormalWalshVectorTrace w normal) :
    forall i : WordIndex, normal i = impactNormalWalshAt w i := by
  intro i
  exact (trace.normal_eq_from_prefix i).trans
    (impactNormalWalshFromPrefix_eq_impactNormalWalshAt (trace.prefix_eq i))

theorem impactNormalWalshTrace_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
