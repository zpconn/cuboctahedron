import Cuboctahedron.Search.NonIdentityCase
import Cuboctahedron.Search.ShadowNormalForm

/-!
Linear-product bridge for the shadow normal form.

`ShadowNormalForm.lean` is intentionally just the finite shadow scanner.  This
module imports the existing unfolding/nonidentity product definitions and
records the exact product-order bridge used by `totalLinearOfPairWord`.
-/

namespace Cuboctahedron

def pairLinearProductFactors : List PairId -> Mat3 Rat
  | [] => matId
  | p :: ps =>
      matMul (reflM (canonicalNormalQ p)) (pairLinearProductFactors ps)

theorem pairLinearProductFactors_singleton (p : PairId) :
    pairLinearProductFactors [p] = reflM (canonicalNormalQ p) := by
  simp [pairLinearProductFactors, matMul_matId]

theorem totalLinearOfPairWord_eq_pairLinearProductFactors
    (w : PairWord) :
    totalLinearOfPairWord w =
      pairLinearProductFactors (startedPairFactors w) := by
  simp [totalLinearOfPairWord, pairLinearProductRight, pairLinearSuffixNat,
    startedPairFactors, pairLinearProductFactors, List.finRange,
    matMul_matId]

end Cuboctahedron
