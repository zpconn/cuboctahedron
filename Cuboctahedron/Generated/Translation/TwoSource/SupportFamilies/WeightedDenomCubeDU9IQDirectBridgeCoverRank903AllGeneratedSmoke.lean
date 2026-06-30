import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke

/-!
DU9IQ traced direct bridge weighted-cover root `WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke`.

This generated module packages checked direct-bridge nonpositivity
theorems into a theorem-valued `WeightedDenomCubeCover`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

def rank903 : Nat := 903

abbrev cube40 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.cubexx1110

abbrev weights40 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.weights8

abbrev cube41 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.cubex00xx1

abbrev weights41 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.weights1_12

abbrev cube42 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x

abbrev weights42 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.weights7_8

abbrev cube43 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.cubexx1x01

abbrev weights43 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.weights1

abbrev cube44 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.cubexx0x11

abbrev weights44 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.weights8_12

abbrev cube45 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.cubex01x1x

abbrev weights45 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.weights4_8

abbrev cube46 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.cube0xx1x1

abbrev weights46 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.weights2_12

abbrev cube47 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100

abbrev weights47 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.weights7

abbrev cube48 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.cubex000x0

abbrev weights48 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.weights6

abbrev cube49 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.cube11x0x0

abbrev weights49 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.weights2_12

abbrev cube50 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.cubex101x0

abbrev weights50 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.weights4

abbrev cube51 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.cubexx100x

abbrev weights51 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.weights1

inductive BatchFamily where
  | idx40
  | idx41
  | idx42
  | idx43
  | idx44
  | idx45
  | idx46
  | idx47
  | idx48
  | idx49
  | idx50
  | idx51
deriving DecidableEq

def Member : BatchFamily -> SignMask -> Prop
  | BatchFamily.idx40, mask => cube40.Member mask
  | BatchFamily.idx41, mask => cube41.Member mask
  | BatchFamily.idx42, mask => cube42.Member mask
  | BatchFamily.idx43, mask => cube43.Member mask
  | BatchFamily.idx44, mask => cube44.Member mask
  | BatchFamily.idx45, mask => cube45.Member mask
  | BatchFamily.idx46, mask => cube46.Member mask
  | BatchFamily.idx47, mask => cube47.Member mask
  | BatchFamily.idx48, mask => cube48.Member mask
  | BatchFamily.idx49, mask => cube49.Member mask
  | BatchFamily.idx50, mask => cube50.Member mask
  | BatchFamily.idx51, mask => cube51.Member mask

def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube40.Member mask ∧
    ¬ cube41.Member mask ∧
      ¬ cube42.Member mask ∧
        ¬ cube43.Member mask ∧
          ¬ cube44.Member mask ∧
            ¬ cube45.Member mask ∧
              ¬ cube46.Member mask ∧
                ¬ cube47.Member mask ∧
                  ¬ cube48.Member mask ∧
                    ¬ cube49.Member mask ∧
                      ¬ cube50.Member mask ∧
                        ¬ cube51.Member mask

private theorem weights40_nonnegative : weights40.Nonnegative := by
  norm_num [weights40, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.weights8,
    InternalImpactWeights.Nonnegative]

private theorem weights40_positive : weights40.PositiveSome := by
  norm_num [weights40, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.weights8,
    InternalImpactWeights.PositiveSome]

private theorem weights41_nonnegative : weights41.Nonnegative := by
  norm_num [weights41, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.weights1_12,
    InternalImpactWeights.Nonnegative]

private theorem weights41_positive : weights41.PositiveSome := by
  norm_num [weights41, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.weights1_12,
    InternalImpactWeights.PositiveSome]

private theorem weights42_nonnegative : weights42.Nonnegative := by
  norm_num [weights42, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.weights7_8,
    InternalImpactWeights.Nonnegative]

private theorem weights42_positive : weights42.PositiveSome := by
  norm_num [weights42, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.weights7_8,
    InternalImpactWeights.PositiveSome]

private theorem weights43_nonnegative : weights43.Nonnegative := by
  norm_num [weights43, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights43_positive : weights43.PositiveSome := by
  norm_num [weights43, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights44_nonnegative : weights44.Nonnegative := by
  norm_num [weights44, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.weights8_12,
    InternalImpactWeights.Nonnegative]

private theorem weights44_positive : weights44.PositiveSome := by
  norm_num [weights44, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.weights8_12,
    InternalImpactWeights.PositiveSome]

private theorem weights45_nonnegative : weights45.Nonnegative := by
  norm_num [weights45, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.weights4_8,
    InternalImpactWeights.Nonnegative]

private theorem weights45_positive : weights45.PositiveSome := by
  norm_num [weights45, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.weights4_8,
    InternalImpactWeights.PositiveSome]

private theorem weights46_nonnegative : weights46.Nonnegative := by
  norm_num [weights46, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.weights2_12,
    InternalImpactWeights.Nonnegative]

private theorem weights46_positive : weights46.PositiveSome := by
  norm_num [weights46, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.weights2_12,
    InternalImpactWeights.PositiveSome]

private theorem weights47_nonnegative : weights47.Nonnegative := by
  norm_num [weights47, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.weights7,
    InternalImpactWeights.Nonnegative]

private theorem weights47_positive : weights47.PositiveSome := by
  norm_num [weights47, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.weights7,
    InternalImpactWeights.PositiveSome]

private theorem weights48_nonnegative : weights48.Nonnegative := by
  norm_num [weights48, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.weights6,
    InternalImpactWeights.Nonnegative]

private theorem weights48_positive : weights48.PositiveSome := by
  norm_num [weights48, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.weights6,
    InternalImpactWeights.PositiveSome]

private theorem weights49_nonnegative : weights49.Nonnegative := by
  norm_num [weights49, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.weights2_12,
    InternalImpactWeights.Nonnegative]

private theorem weights49_positive : weights49.PositiveSome := by
  norm_num [weights49, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.weights2_12,
    InternalImpactWeights.PositiveSome]

private theorem weights50_nonnegative : weights50.Nonnegative := by
  norm_num [weights50, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.weights4,
    InternalImpactWeights.Nonnegative]

private theorem weights50_positive : weights50.PositiveSome := by
  norm_num [weights50, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.weights4,
    InternalImpactWeights.PositiveSome]

private theorem weights51_nonnegative : weights51.Nonnegative := by
  norm_num [weights51, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights51_positive : weights51.PositiveSome := by
  norm_num [weights51, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private def obstruction : (family : BatchFamily) ->
    WeightedDenomCubeObstruction rank903 (Member family)
  | BatchFamily.idx40 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights40 weights40_nonnegative weights40_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx41 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights41 weights41_nonnegative weights41_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx42 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights42 weights42_nonnegative weights42_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx43 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights43 weights43_nonnegative weights43_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx44 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights44 weights44_nonnegative weights44_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx45 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights45 weights45_nonnegative weights45_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx46 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights46 weights46_nonnegative weights46_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx47 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights47 weights47_nonnegative weights47_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx48 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights48 weights48_nonnegative weights48_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx49 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights49 weights49_nonnegative weights49_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx50 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights50 weights50_nonnegative weights50_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx51 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights51 weights51_nonnegative weights51_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.weightedDenom_nonpos
              hlt hmember)

def weightedBatchCover :
    WeightedDenomCubeCover rank903 OutsideBatchGoodMaskMember where
  Family := BatchFamily
  Member := Member
  obstruction := obstruction
  complete := by
    intro mask hnot
    by_cases h40 : cube40.Member mask
    · exact ⟨BatchFamily.idx40, h40⟩
    by_cases h41 : cube41.Member mask
    · exact ⟨BatchFamily.idx41, h41⟩
    by_cases h42 : cube42.Member mask
    · exact ⟨BatchFamily.idx42, h42⟩
    by_cases h43 : cube43.Member mask
    · exact ⟨BatchFamily.idx43, h43⟩
    by_cases h44 : cube44.Member mask
    · exact ⟨BatchFamily.idx44, h44⟩
    by_cases h45 : cube45.Member mask
    · exact ⟨BatchFamily.idx45, h45⟩
    by_cases h46 : cube46.Member mask
    · exact ⟨BatchFamily.idx46, h46⟩
    by_cases h47 : cube47.Member mask
    · exact ⟨BatchFamily.idx47, h47⟩
    by_cases h48 : cube48.Member mask
    · exact ⟨BatchFamily.idx48, h48⟩
    by_cases h49 : cube49.Member mask
    · exact ⟨BatchFamily.idx49, h49⟩
    by_cases h50 : cube50.Member mask
    · exact ⟨BatchFamily.idx50, h50⟩
    by_cases h51 : cube51.Member mask
    · exact ⟨BatchFamily.idx51, h51⟩
    exact False.elim (hnot ⟨h40, h41, h42, h43, h44, h45, h46, h47, h48, h49, h50, h51⟩)

theorem goodDirection_outside_weighted_batch
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) mask) :
    OutsideBatchGoodMaskMember mask :=
  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
