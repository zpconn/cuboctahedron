import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh

/-!
AP.16BN generated-style Walsh bound smoke.

This module uses the actual AP16BJ first selected subcube:

* label `*000**`;
* impact `1`;
* fixed bits `z = -1`, `d111 = -1`, `d11m = -1`;
* exact Walsh coefficients for that impact at rank `100805`.

It proves the Walsh polynomial is nonpositive over the whole subcube via
`WalshSubcubeUpperBound`, without splitting over all masks in the subcube.
It intentionally does not yet connect the polynomial to `impactDenomAtRank`;
that equality bridge is the next production issue.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

private def ap16bjFirstCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | _ => none

private def constMonomial : WalshMonomial :=
  { fst := none, snd := none }

private def bitMonomial (bit : SignBit) : WalshMonomial :=
  { fst := some bit, snd := none }

private def ap16bjFirstPoly : WalshPoly 6 where
  term
    | ⟨0, _⟩ => { coeff := 4, monomial := constMonomial }
    | ⟨1, _⟩ => { coeff := 32/9, monomial := bitMonomial SignBit.z }
    | ⟨2, _⟩ => { coeff := 104/27, monomial := bitMonomial SignBit.d111 }
    | ⟨3, _⟩ => { coeff := 8/9, monomial := bitMonomial SignBit.d11m }
    | ⟨4, _⟩ => { coeff := 40/27, monomial := bitMonomial SignBit.d1m1 }
    | ⟨5, _⟩ => { coeff := -8/3, monomial := bitMonomial SignBit.dm11 }

private def ap16bjFirstBound : Fin 6 -> Rat
  | ⟨0, _⟩ => 4
  | ⟨1, _⟩ => -32/9
  | ⟨2, _⟩ => -104/27
  | ⟨3, _⟩ => -8/9
  | ⟨4, _⟩ => 40/27
  | ⟨5, _⟩ => 8/3

private theorem ap16bjFirstCube_z
    {mask : SignMask} (hmask : ap16bjFirstCube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [ap16bjFirstCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem ap16bjFirstCube_d111
    {mask : SignMask} (hmask : ap16bjFirstCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [ap16bjFirstCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem ap16bjFirstCube_d11m
    {mask : SignMask} (hmask : ap16bjFirstCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [ap16bjFirstCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private def ap16bjFirstUpper :
    WalshSubcubeUpperBound ap16bjFirstCube ap16bjFirstPoly where
  bound := ap16bjFirstBound
  term_le := by
    intro i mask hmask
    fin_cases i
    · norm_num [ap16bjFirstPoly, ap16bjFirstBound, constMonomial,
        WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue]
    · have hz := ap16bjFirstCube_z hmask
      norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
        WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
        SignBit.value, SignBit.toPairId, hz]
    · have h111 := ap16bjFirstCube_d111 hmask
      norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
        WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
        SignBit.value, SignBit.toPairId, h111]
    · have h11m := ap16bjFirstCube_d11m hmask
      norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
        WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
        SignBit.value, SignBit.toPairId, h11m]
    · by_cases hbit : maskBitForPair mask PairId.d1m1
      · norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
          WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
          SignBit.value, SignBit.toPairId, hbit]
      · norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
          WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
          SignBit.value, SignBit.toPairId, hbit]
    · by_cases hbit : maskBitForPair mask PairId.dm11
      · norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
          WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
          SignBit.value, SignBit.toPairId, hbit]
      · norm_num [ap16bjFirstPoly, ap16bjFirstBound, bitMonomial,
          WalshTerm.eval, WalshMonomial.eval, WalshMonomial.factorValue,
          SignBit.value, SignBit.toPairId, hbit]
  total_nonpos := by
    have huniv :
        (Finset.univ : Finset (Fin 6)) =
          {⟨0, by decide⟩, ⟨1, by decide⟩, ⟨2, by decide⟩,
            ⟨3, by decide⟩, ⟨4, by decide⟩, ⟨5, by decide⟩} := by
      ext i
      fin_cases i <;> simp
    rw [huniv]
    norm_num [ap16bjFirstBound]

theorem ap16bjFirstPoly_nonpos
    {mask : SignMask} (hmask : ap16bjFirstCube.Member mask) :
    ap16bjFirstPoly.eval mask <= 0 :=
  ap16bjFirstUpper.eval_nonpos hmask

theorem impactSubcubeWalshGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshGeneratedSmoke
