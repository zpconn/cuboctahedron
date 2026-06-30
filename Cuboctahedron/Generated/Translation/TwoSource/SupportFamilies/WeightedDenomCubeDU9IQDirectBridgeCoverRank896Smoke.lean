import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke

/-!
DU9IQ traced direct bridge cover smoke.

The individual direct-bridge leaves prove real weighted-denominator
nonpositivity theorems.  This file checks the next erased interface: a shallow
cover can turn those theorem surfaces into a `BadMaskCover`-style conclusion
for masks outside the selected weighted cubes.

This is still a bounded smoke, not full rank-`896` hmask coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank896Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

def rank896 : Nat := 896

abbrev cube00 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.cubexx00x1

abbrev cube01 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.cube1xx0x0

abbrev cube02 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.cube0x1x0x

abbrev cube03 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.cubexx01x1

abbrev cube04 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.cubex0xx11

abbrev cube05 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.cube0x0x00

abbrev weights00 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.weights1

abbrev weights01 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.weights2_6

abbrev weights02 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.weights2_11

abbrev weights03 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.weights8_10

abbrev weights04 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.weights4_8

abbrev weights05 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.weights11

inductive BatchFamily where
  | idx00
  | idx01
  | idx02
  | idx03
  | idx04
  | idx05
deriving DecidableEq

def Member : BatchFamily -> SignMask -> Prop
  | BatchFamily.idx00, mask => cube00.Member mask
  | BatchFamily.idx01, mask => cube01.Member mask
  | BatchFamily.idx02, mask => cube02.Member mask
  | BatchFamily.idx03, mask => cube03.Member mask
  | BatchFamily.idx04, mask => cube04.Member mask
  | BatchFamily.idx05, mask => cube05.Member mask

def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube00.Member mask ∧
    ¬ cube01.Member mask ∧
      ¬ cube02.Member mask ∧
        ¬ cube03.Member mask ∧
          ¬ cube04.Member mask ∧
            ¬ cube05.Member mask

private theorem weights00_nonnegative : weights00.Nonnegative := by
  norm_num [weights00, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights00_positive : weights00.PositiveSome := by
  norm_num [weights00, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights01_nonnegative : weights01.Nonnegative := by
  norm_num [weights01, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.weights2_6,
    InternalImpactWeights.Nonnegative]

private theorem weights01_positive : weights01.PositiveSome := by
  norm_num [weights01, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.weights2_6,
    InternalImpactWeights.PositiveSome]

private theorem weights02_nonnegative : weights02.Nonnegative := by
  norm_num [weights02, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.weights2_11,
    InternalImpactWeights.Nonnegative]

private theorem weights02_positive : weights02.PositiveSome := by
  norm_num [weights02, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.weights2_11,
    InternalImpactWeights.PositiveSome]

private theorem weights03_nonnegative : weights03.Nonnegative := by
  norm_num [weights03, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.weights8_10,
    InternalImpactWeights.Nonnegative]

private theorem weights03_positive : weights03.PositiveSome := by
  norm_num [weights03, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.weights8_10,
    InternalImpactWeights.PositiveSome]

private theorem weights04_nonnegative : weights04.Nonnegative := by
  norm_num [weights04, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.weights4_8,
    InternalImpactWeights.Nonnegative]

private theorem weights04_positive : weights04.PositiveSome := by
  norm_num [weights04, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.weights4_8,
    InternalImpactWeights.PositiveSome]

private theorem weights05_nonnegative : weights05.Nonnegative := by
  norm_num [weights05, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.weights11,
    InternalImpactWeights.Nonnegative]

private theorem weights05_positive : weights05.PositiveSome := by
  norm_num [weights05, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.weights11,
    InternalImpactWeights.PositiveSome]

private def obstruction : (family : BatchFamily) ->
    WeightedDenomCubeObstruction rank896 (Member family)
  | BatchFamily.idx00 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights00 weights00_nonnegative weights00_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx01 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights01 weights01_nonnegative weights01_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx02 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights02 weights02_nonnegative weights02_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx03 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights03 weights03_nonnegative weights03_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx04 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights04 weights04_nonnegative weights04_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx05 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights05 weights05_nonnegative weights05_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.weightedDenom_nonpos
              hlt hmember)

def weightedBatchCover :
    WeightedDenomCubeCover rank896 OutsideBatchGoodMaskMember where
  Family := BatchFamily
  Member := Member
  obstruction := obstruction
  complete := by
    intro mask hnot
    by_cases h00 : cube00.Member mask
    · exact ⟨BatchFamily.idx00, h00⟩
    by_cases h01 : cube01.Member mask
    · exact ⟨BatchFamily.idx01, h01⟩
    by_cases h02 : cube02.Member mask
    · exact ⟨BatchFamily.idx02, h02⟩
    by_cases h03 : cube03.Member mask
    · exact ⟨BatchFamily.idx03, h03⟩
    by_cases h04 : cube04.Member mask
    · exact ⟨BatchFamily.idx04, h04⟩
    by_cases h05 : cube05.Member mask
    · exact ⟨BatchFamily.idx05, h05⟩
    exact False.elim (hnot ⟨h00, h01, h02, h03, h04, h05⟩)

theorem goodDirection_outside_weighted_batch
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank896, hlt⟩ : Fin numPairWords) mask) :
    OutsideBatchGoodMaskMember mask :=
  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank896Smoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank896Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
