import Cuboctahedron.Search.ShadowNormalFormProduct

/-!
Identity classifier for the shadow normal form.

This module assembles the Track 1 pieces:

* valid pair-word counts make the final square parity trivial;
* reduced and unreduced triangular shadows have the same product;
* nonempty reduced triangular shadows have nonidentity triangular product;
* the exact pair-word linear product decomposes into triangular shadow product
  times square parity.
-/

namespace Cuboctahedron

theorem totalLinearOfPairWord_eq_triProduct_reducedShadow_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    totalLinearOfPairWord w =
      triProduct (reducedShadowOfPairWord w) := by
  rw [totalLinearOfPairWord_eq_shadowStateLinearProduct]
  unfold shadowStateLinearProduct
  have hparity :
      (shadowStateOfPairList (startedPairFactors w)).parity = SqParity.id := by
    simpa [finalSquareParityOfPairWord, shadowStateOfPairWord] using
      finalSquareParityOfPairWord_eq_id_of_valid hvalid
  rw [hparity, sqParityLinear_id, matMul_matId]
  have hred :=
    reducedShadow_triProduct_eq_shadow_triProduct (startedPairFactors w)
  simpa [reducedShadowOfPairWord, shadowStateOfPairWord] using hred.symm

theorem totalLinearOfPairWord_ne_identity_of_reducedShadow_nonempty
    {w : PairWord} (hvalid : ValidPairWord w)
    (hne : reducedShadowOfPairWord w ≠ []) :
    totalLinearOfPairWord w ≠ (matId : Mat3 Rat) := by
  intro hId
  have htri : triProduct (reducedShadowOfPairWord w) = (matId : Mat3 Rat) := by
    rw [← totalLinearOfPairWord_eq_triProduct_reducedShadow_of_valid hvalid]
    exact hId
  exact reducedShadowOfPairWord_triProduct_ne_identity_of_nonempty w hne htri

theorem totalLinearOfPairWord_eq_identity_iff_reducedShadow_empty_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    totalLinearOfPairWord w = (matId : Mat3 Rat) ↔
      reducedShadowOfPairWord w = [] := by
  constructor
  · intro hId
    by_contra hne
    exact totalLinearOfPairWord_ne_identity_of_reducedShadow_nonempty
      hvalid hne hId
  · intro hempty
    rw [totalLinearOfPairWord_eq_triProduct_reducedShadow_of_valid hvalid,
      hempty]
    rfl

end Cuboctahedron
