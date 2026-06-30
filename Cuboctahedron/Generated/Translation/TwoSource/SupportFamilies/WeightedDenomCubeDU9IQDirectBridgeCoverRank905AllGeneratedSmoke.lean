import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke

/-!
DU9IQ traced direct bridge weighted-cover root `WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke`.

This generated module packages checked direct-bridge nonpositivity
theorems into a theorem-valued `WeightedDenomCubeCover`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

def rank905 : Nat := 905

abbrev cube52 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.cubex0001x

abbrev weights52 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.weights6

abbrev cube53 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.cube1x0x10

abbrev weights53 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.weights2

abbrev cube54 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.cubex101xx

abbrev weights54 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.weights4

abbrev cube55 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.cube0x11x0

abbrev weights55 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.weights6_8

abbrev cube56 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.cubexx1x01

abbrev weights56 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.weights1

abbrev cube57 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.cubex0111x

abbrev weights57 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.weights8

abbrev cube58 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.cube0xx1x1

abbrev weights58 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.weights2

abbrev cube59 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.cubexxx00x

abbrev weights59 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.weights1

abbrev cube60 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.cube111xx0

abbrev weights60 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.weights2_11

abbrev cube61 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.cubexx0100

abbrev weights61 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.weights7

abbrev cube62 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.cubexx0011

abbrev weights62 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.weights6_11

abbrev cube63 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.cubex010xx

abbrev weights63 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.weights4

abbrev cube64 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.cubex01x00

abbrev weights64 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.weights1_8

inductive BatchFamily where
  | idx52
  | idx53
  | idx54
  | idx55
  | idx56
  | idx57
  | idx58
  | idx59
  | idx60
  | idx61
  | idx62
  | idx63
  | idx64
deriving DecidableEq

def Member : BatchFamily -> SignMask -> Prop
  | BatchFamily.idx52, mask => cube52.Member mask
  | BatchFamily.idx53, mask => cube53.Member mask
  | BatchFamily.idx54, mask => cube54.Member mask
  | BatchFamily.idx55, mask => cube55.Member mask
  | BatchFamily.idx56, mask => cube56.Member mask
  | BatchFamily.idx57, mask => cube57.Member mask
  | BatchFamily.idx58, mask => cube58.Member mask
  | BatchFamily.idx59, mask => cube59.Member mask
  | BatchFamily.idx60, mask => cube60.Member mask
  | BatchFamily.idx61, mask => cube61.Member mask
  | BatchFamily.idx62, mask => cube62.Member mask
  | BatchFamily.idx63, mask => cube63.Member mask
  | BatchFamily.idx64, mask => cube64.Member mask

def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube52.Member mask ∧
    ¬ cube53.Member mask ∧
      ¬ cube54.Member mask ∧
        ¬ cube55.Member mask ∧
          ¬ cube56.Member mask ∧
            ¬ cube57.Member mask ∧
              ¬ cube58.Member mask ∧
                ¬ cube59.Member mask ∧
                  ¬ cube60.Member mask ∧
                    ¬ cube61.Member mask ∧
                      ¬ cube62.Member mask ∧
                        ¬ cube63.Member mask ∧
                          ¬ cube64.Member mask

private theorem weights52_nonnegative : weights52.Nonnegative := by
  norm_num [weights52, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.weights6,
    InternalImpactWeights.Nonnegative]

private theorem weights52_positive : weights52.PositiveSome := by
  norm_num [weights52, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.weights6,
    InternalImpactWeights.PositiveSome]

private theorem weights53_nonnegative : weights53.Nonnegative := by
  norm_num [weights53, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.weights2,
    InternalImpactWeights.Nonnegative]

private theorem weights53_positive : weights53.PositiveSome := by
  norm_num [weights53, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.weights2,
    InternalImpactWeights.PositiveSome]

private theorem weights54_nonnegative : weights54.Nonnegative := by
  norm_num [weights54, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.weights4,
    InternalImpactWeights.Nonnegative]

private theorem weights54_positive : weights54.PositiveSome := by
  norm_num [weights54, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.weights4,
    InternalImpactWeights.PositiveSome]

private theorem weights55_nonnegative : weights55.Nonnegative := by
  norm_num [weights55, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.weights6_8,
    InternalImpactWeights.Nonnegative]

private theorem weights55_positive : weights55.PositiveSome := by
  norm_num [weights55, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.weights6_8,
    InternalImpactWeights.PositiveSome]

private theorem weights56_nonnegative : weights56.Nonnegative := by
  norm_num [weights56, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights56_positive : weights56.PositiveSome := by
  norm_num [weights56, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights57_nonnegative : weights57.Nonnegative := by
  norm_num [weights57, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.weights8,
    InternalImpactWeights.Nonnegative]

private theorem weights57_positive : weights57.PositiveSome := by
  norm_num [weights57, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.weights8,
    InternalImpactWeights.PositiveSome]

private theorem weights58_nonnegative : weights58.Nonnegative := by
  norm_num [weights58, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.weights2,
    InternalImpactWeights.Nonnegative]

private theorem weights58_positive : weights58.PositiveSome := by
  norm_num [weights58, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.weights2,
    InternalImpactWeights.PositiveSome]

private theorem weights59_nonnegative : weights59.Nonnegative := by
  norm_num [weights59, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights59_positive : weights59.PositiveSome := by
  norm_num [weights59, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights60_nonnegative : weights60.Nonnegative := by
  norm_num [weights60, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.weights2_11,
    InternalImpactWeights.Nonnegative]

private theorem weights60_positive : weights60.PositiveSome := by
  norm_num [weights60, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.weights2_11,
    InternalImpactWeights.PositiveSome]

private theorem weights61_nonnegative : weights61.Nonnegative := by
  norm_num [weights61, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.weights7,
    InternalImpactWeights.Nonnegative]

private theorem weights61_positive : weights61.PositiveSome := by
  norm_num [weights61, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.weights7,
    InternalImpactWeights.PositiveSome]

private theorem weights62_nonnegative : weights62.Nonnegative := by
  norm_num [weights62, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.weights6_11,
    InternalImpactWeights.Nonnegative]

private theorem weights62_positive : weights62.PositiveSome := by
  norm_num [weights62, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.weights6_11,
    InternalImpactWeights.PositiveSome]

private theorem weights63_nonnegative : weights63.Nonnegative := by
  norm_num [weights63, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.weights4,
    InternalImpactWeights.Nonnegative]

private theorem weights63_positive : weights63.PositiveSome := by
  norm_num [weights63, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.weights4,
    InternalImpactWeights.PositiveSome]

private theorem weights64_nonnegative : weights64.Nonnegative := by
  norm_num [weights64, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.weights1_8,
    InternalImpactWeights.Nonnegative]

private theorem weights64_positive : weights64.PositiveSome := by
  norm_num [weights64, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.weights1_8,
    InternalImpactWeights.PositiveSome]

private def obstruction : (family : BatchFamily) ->
    WeightedDenomCubeObstruction rank905 (Member family)
  | BatchFamily.idx52 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights52 weights52_nonnegative weights52_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx53 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights53 weights53_nonnegative weights53_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx54 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights54 weights54_nonnegative weights54_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx55 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights55 weights55_nonnegative weights55_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx56 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights56 weights56_nonnegative weights56_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx57 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights57 weights57_nonnegative weights57_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx58 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights58 weights58_nonnegative weights58_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx59 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights59 weights59_nonnegative weights59_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx60 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights60 weights60_nonnegative weights60_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx61 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights61 weights61_nonnegative weights61_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx62 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights62 weights62_nonnegative weights62_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx63 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights63 weights63_nonnegative weights63_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx64 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights64 weights64_nonnegative weights64_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.weightedDenom_nonpos
              hlt hmember)

def weightedBatchCover :
    WeightedDenomCubeCover rank905 OutsideBatchGoodMaskMember where
  Family := BatchFamily
  Member := Member
  obstruction := obstruction
  complete := by
    intro mask hnot
    by_cases h52 : cube52.Member mask
    · exact ⟨BatchFamily.idx52, h52⟩
    by_cases h53 : cube53.Member mask
    · exact ⟨BatchFamily.idx53, h53⟩
    by_cases h54 : cube54.Member mask
    · exact ⟨BatchFamily.idx54, h54⟩
    by_cases h55 : cube55.Member mask
    · exact ⟨BatchFamily.idx55, h55⟩
    by_cases h56 : cube56.Member mask
    · exact ⟨BatchFamily.idx56, h56⟩
    by_cases h57 : cube57.Member mask
    · exact ⟨BatchFamily.idx57, h57⟩
    by_cases h58 : cube58.Member mask
    · exact ⟨BatchFamily.idx58, h58⟩
    by_cases h59 : cube59.Member mask
    · exact ⟨BatchFamily.idx59, h59⟩
    by_cases h60 : cube60.Member mask
    · exact ⟨BatchFamily.idx60, h60⟩
    by_cases h61 : cube61.Member mask
    · exact ⟨BatchFamily.idx61, h61⟩
    by_cases h62 : cube62.Member mask
    · exact ⟨BatchFamily.idx62, h62⟩
    by_cases h63 : cube63.Member mask
    · exact ⟨BatchFamily.idx63, h63⟩
    by_cases h64 : cube64.Member mask
    · exact ⟨BatchFamily.idx64, h64⟩
    exact False.elim (hnot ⟨h52, h53, h54, h55, h56, h57, h58, h59, h60, h61, h62, h63, h64⟩)

theorem goodDirection_outside_weighted_batch
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank905, hlt⟩ : Fin numPairWords) mask) :
    OutsideBatchGoodMaskMember mask :=
  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
