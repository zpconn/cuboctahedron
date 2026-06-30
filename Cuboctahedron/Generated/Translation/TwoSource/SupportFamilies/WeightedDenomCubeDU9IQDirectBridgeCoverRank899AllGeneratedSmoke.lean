import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke

/-!
DU9IQ traced direct bridge weighted-cover root `WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke`.

This generated module packages checked direct-bridge nonpositivity
theorems into a theorem-valued `WeightedDenomCubeCover`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

def rank899 : Nat := 899

abbrev cube28 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.cubexx000x

abbrev weights28 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.weights1

abbrev cube29 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.cube1x0x1x

abbrev weights29 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.weights2_12

abbrev cube30 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.cube0x1x0x

abbrev weights30 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.weights2_10

abbrev cube31 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.cube0x0xx1

abbrev weights31 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.weights1_8

abbrev cube32 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.cubex010xx

abbrev weights32 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.weights4_6

abbrev cube33 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.cubex101xx

abbrev weights33 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.weights4_12

abbrev cube34 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.cube1xx00x

abbrev weights34 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.weights1_6

abbrev cube35 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.cube0xx1x1

abbrev weights35 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.weights2_8

abbrev cube36 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.cubexx0x01

abbrev weights36 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.weights1

abbrev cube37 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.cube1xx0x0

abbrev weights37 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.weights2_6

abbrev cube38 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.cubex1xx00

abbrev weights38 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.weights4_10

abbrev cube39 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.cubex0xx11

abbrev weights39 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.weights4_8

inductive BatchFamily where
  | idx28
  | idx29
  | idx30
  | idx31
  | idx32
  | idx33
  | idx34
  | idx35
  | idx36
  | idx37
  | idx38
  | idx39
deriving DecidableEq

def Member : BatchFamily -> SignMask -> Prop
  | BatchFamily.idx28, mask => cube28.Member mask
  | BatchFamily.idx29, mask => cube29.Member mask
  | BatchFamily.idx30, mask => cube30.Member mask
  | BatchFamily.idx31, mask => cube31.Member mask
  | BatchFamily.idx32, mask => cube32.Member mask
  | BatchFamily.idx33, mask => cube33.Member mask
  | BatchFamily.idx34, mask => cube34.Member mask
  | BatchFamily.idx35, mask => cube35.Member mask
  | BatchFamily.idx36, mask => cube36.Member mask
  | BatchFamily.idx37, mask => cube37.Member mask
  | BatchFamily.idx38, mask => cube38.Member mask
  | BatchFamily.idx39, mask => cube39.Member mask

def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube28.Member mask ∧
    ¬ cube29.Member mask ∧
      ¬ cube30.Member mask ∧
        ¬ cube31.Member mask ∧
          ¬ cube32.Member mask ∧
            ¬ cube33.Member mask ∧
              ¬ cube34.Member mask ∧
                ¬ cube35.Member mask ∧
                  ¬ cube36.Member mask ∧
                    ¬ cube37.Member mask ∧
                      ¬ cube38.Member mask ∧
                        ¬ cube39.Member mask

private theorem weights28_nonnegative : weights28.Nonnegative := by
  norm_num [weights28, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights28_positive : weights28.PositiveSome := by
  norm_num [weights28, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights29_nonnegative : weights29.Nonnegative := by
  norm_num [weights29, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.weights2_12,
    InternalImpactWeights.Nonnegative]

private theorem weights29_positive : weights29.PositiveSome := by
  norm_num [weights29, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.weights2_12,
    InternalImpactWeights.PositiveSome]

private theorem weights30_nonnegative : weights30.Nonnegative := by
  norm_num [weights30, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.weights2_10,
    InternalImpactWeights.Nonnegative]

private theorem weights30_positive : weights30.PositiveSome := by
  norm_num [weights30, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.weights2_10,
    InternalImpactWeights.PositiveSome]

private theorem weights31_nonnegative : weights31.Nonnegative := by
  norm_num [weights31, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.weights1_8,
    InternalImpactWeights.Nonnegative]

private theorem weights31_positive : weights31.PositiveSome := by
  norm_num [weights31, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.weights1_8,
    InternalImpactWeights.PositiveSome]

private theorem weights32_nonnegative : weights32.Nonnegative := by
  norm_num [weights32, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.weights4_6,
    InternalImpactWeights.Nonnegative]

private theorem weights32_positive : weights32.PositiveSome := by
  norm_num [weights32, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.weights4_6,
    InternalImpactWeights.PositiveSome]

private theorem weights33_nonnegative : weights33.Nonnegative := by
  norm_num [weights33, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.weights4_12,
    InternalImpactWeights.Nonnegative]

private theorem weights33_positive : weights33.PositiveSome := by
  norm_num [weights33, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.weights4_12,
    InternalImpactWeights.PositiveSome]

private theorem weights34_nonnegative : weights34.Nonnegative := by
  norm_num [weights34, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.weights1_6,
    InternalImpactWeights.Nonnegative]

private theorem weights34_positive : weights34.PositiveSome := by
  norm_num [weights34, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.weights1_6,
    InternalImpactWeights.PositiveSome]

private theorem weights35_nonnegative : weights35.Nonnegative := by
  norm_num [weights35, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.weights2_8,
    InternalImpactWeights.Nonnegative]

private theorem weights35_positive : weights35.PositiveSome := by
  norm_num [weights35, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.weights2_8,
    InternalImpactWeights.PositiveSome]

private theorem weights36_nonnegative : weights36.Nonnegative := by
  norm_num [weights36, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights36_positive : weights36.PositiveSome := by
  norm_num [weights36, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights37_nonnegative : weights37.Nonnegative := by
  norm_num [weights37, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.weights2_6,
    InternalImpactWeights.Nonnegative]

private theorem weights37_positive : weights37.PositiveSome := by
  norm_num [weights37, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.weights2_6,
    InternalImpactWeights.PositiveSome]

private theorem weights38_nonnegative : weights38.Nonnegative := by
  norm_num [weights38, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.weights4_10,
    InternalImpactWeights.Nonnegative]

private theorem weights38_positive : weights38.PositiveSome := by
  norm_num [weights38, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.weights4_10,
    InternalImpactWeights.PositiveSome]

private theorem weights39_nonnegative : weights39.Nonnegative := by
  norm_num [weights39, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.weights4_8,
    InternalImpactWeights.Nonnegative]

private theorem weights39_positive : weights39.PositiveSome := by
  norm_num [weights39, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.weights4_8,
    InternalImpactWeights.PositiveSome]

private def obstruction : (family : BatchFamily) ->
    WeightedDenomCubeObstruction rank899 (Member family)
  | BatchFamily.idx28 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights28 weights28_nonnegative weights28_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx29 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights29 weights29_nonnegative weights29_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx30 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights30 weights30_nonnegative weights30_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx31 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights31 weights31_nonnegative weights31_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx32 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights32 weights32_nonnegative weights32_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx33 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights33 weights33_nonnegative weights33_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx34 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights34 weights34_nonnegative weights34_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx35 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights35 weights35_nonnegative weights35_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx36 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights36 weights36_nonnegative weights36_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx37 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights37 weights37_nonnegative weights37_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx38 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights38 weights38_nonnegative weights38_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx39 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights39 weights39_nonnegative weights39_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.weightedDenom_nonpos
              hlt hmember)

def weightedBatchCover :
    WeightedDenomCubeCover rank899 OutsideBatchGoodMaskMember where
  Family := BatchFamily
  Member := Member
  obstruction := obstruction
  complete := by
    intro mask hnot
    by_cases h28 : cube28.Member mask
    · exact ⟨BatchFamily.idx28, h28⟩
    by_cases h29 : cube29.Member mask
    · exact ⟨BatchFamily.idx29, h29⟩
    by_cases h30 : cube30.Member mask
    · exact ⟨BatchFamily.idx30, h30⟩
    by_cases h31 : cube31.Member mask
    · exact ⟨BatchFamily.idx31, h31⟩
    by_cases h32 : cube32.Member mask
    · exact ⟨BatchFamily.idx32, h32⟩
    by_cases h33 : cube33.Member mask
    · exact ⟨BatchFamily.idx33, h33⟩
    by_cases h34 : cube34.Member mask
    · exact ⟨BatchFamily.idx34, h34⟩
    by_cases h35 : cube35.Member mask
    · exact ⟨BatchFamily.idx35, h35⟩
    by_cases h36 : cube36.Member mask
    · exact ⟨BatchFamily.idx36, h36⟩
    by_cases h37 : cube37.Member mask
    · exact ⟨BatchFamily.idx37, h37⟩
    by_cases h38 : cube38.Member mask
    · exact ⟨BatchFamily.idx38, h38⟩
    by_cases h39 : cube39.Member mask
    · exact ⟨BatchFamily.idx39, h39⟩
    exact False.elim (hnot ⟨h28, h29, h30, h31, h32, h33, h34, h35, h36, h37, h38, h39⟩)

theorem goodDirection_outside_weighted_batch
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank899, hlt⟩ : Fin numPairWords) mask) :
    OutsideBatchGoodMaskMember mask :=
  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
