import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DenominatorCube
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh

/-!
DU.9IQ weighted denominator-cube API smoke.

The accepted DU.9IQ exact-cover profile found that rank `896` has a support-2
weighted cube

```text
pattern 1**0*0, support [2,6], weights [1,1]
```

covering eight non-survivor masks.  This file does not prove the arithmetic
nonpositivity of that cube.  Instead, it checks the erased Lean surface that the
future generated arithmetic leaf must target: once a local bound supplies
`weightedDenomAtRank <= 0` on the cube, the reusable denominator-cube API
turns it into a `GoodDirectionAtRank` contradiction and therefore a positive
survivor membership premise.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQObstructionAPISmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0

private def rank896 : Nat := 896

private def cube1xx0x0 : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.dm11 => some false
    | _ => none

private def weights2_6 : DenominatorCube.InternalImpactWeights where
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
  norm_num [weights2_6, DenominatorCube.InternalImpactWeights.Nonnegative]

private theorem weights2_6_positive :
    weights2_6.PositiveSome := by
  norm_num [weights2_6, DenominatorCube.InternalImpactWeights.PositiveSome]

private def OutsideCubeGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube1xx0x0.Member mask

private def singleCubeObstruction
    (hNonpos :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube1xx0x0.Member mask ->
          DenominatorCube.weightedDenomAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 <= 0) :
    DenominatorCube.WeightedDenomCubeObstruction
      rank896 cube1xx0x0.Member :=
  DenominatorCube.WeightedDenomCubeObstruction.ofNonnegative
    weights2_6 weights2_6_nonnegative weights2_6_positive hNonpos

private inductive OneCubeFamily
  | cube
deriving DecidableEq

private def singleCubeCover
    (hNonpos :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube1xx0x0.Member mask ->
          DenominatorCube.weightedDenomAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 <= 0) :
    DenominatorCube.WeightedDenomCubeCover
      rank896 OutsideCubeGoodMaskMember where
  Family := OneCubeFamily
  Member
    | OneCubeFamily.cube, mask => cube1xx0x0.Member mask
  obstruction
    | OneCubeFamily.cube => singleCubeObstruction hNonpos
  complete := by
    intro mask hnot
    by_cases hmember : cube1xx0x0.Member mask
    · exact ⟨OneCubeFamily.cube, hmember⟩
    · exact False.elim (hnot hmember)

theorem goodDirection_excludes_cube
    (hNonpos :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube1xx0x0.Member mask ->
          DenominatorCube.weightedDenomAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 <= 0)
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank896, hlt⟩ : Fin numPairWords) mask) :
    OutsideCubeGoodMaskMember mask :=
  (singleCubeCover hNonpos).goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQObstructionAPISmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQObstructionAPISmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
