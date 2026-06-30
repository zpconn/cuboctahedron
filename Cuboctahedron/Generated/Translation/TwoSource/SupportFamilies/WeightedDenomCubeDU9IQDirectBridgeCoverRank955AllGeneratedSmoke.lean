import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke

/-!
DU9IQ traced direct bridge weighted-cover root `WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke`.

This generated module packages checked direct-bridge nonpositivity
theorems into a theorem-valued `WeightedDenomCubeCover`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0

def rank955 : Nat := 955

abbrev cube78 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.cubexxx000

abbrev weights78 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.weights1

abbrev cube79 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.cubex001x0

abbrev weights79 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.weights9

abbrev cube80 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.cube1xx0x0

abbrev weights80 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.weights1_2

abbrev cube81 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.cubexx100x

abbrev weights81 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.weights1

abbrev cube82 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.cubexxx101

abbrev weights82 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.weights7

abbrev cube83 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.cubexx0011

abbrev weights83 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.weights6

abbrev cube84 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.cube1xx011

abbrev weights84 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.weights6

abbrev cube85 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.cubex101xx

abbrev weights85 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.weights4

abbrev cube86 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.cubex01x1x

abbrev weights86 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.weights4_8

abbrev cube87 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.cube0x11x1

abbrev weights87 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.weights2

abbrev cube88 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.cubex111x0

abbrev weights88 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.weights6_9

abbrev cube89 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.cubexx0x01

abbrev weights89 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.weights7

abbrev cube90 : MaskSubcube :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.cubexx1x00

abbrev weights90 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.weights1

inductive BatchFamily where
  | idx78
  | idx79
  | idx80
  | idx81
  | idx82
  | idx83
  | idx84
  | idx85
  | idx86
  | idx87
  | idx88
  | idx89
  | idx90
deriving DecidableEq

def Member : BatchFamily -> SignMask -> Prop
  | BatchFamily.idx78, mask => cube78.Member mask
  | BatchFamily.idx79, mask => cube79.Member mask
  | BatchFamily.idx80, mask => cube80.Member mask
  | BatchFamily.idx81, mask => cube81.Member mask
  | BatchFamily.idx82, mask => cube82.Member mask
  | BatchFamily.idx83, mask => cube83.Member mask
  | BatchFamily.idx84, mask => cube84.Member mask
  | BatchFamily.idx85, mask => cube85.Member mask
  | BatchFamily.idx86, mask => cube86.Member mask
  | BatchFamily.idx87, mask => cube87.Member mask
  | BatchFamily.idx88, mask => cube88.Member mask
  | BatchFamily.idx89, mask => cube89.Member mask
  | BatchFamily.idx90, mask => cube90.Member mask

def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=
  ¬ cube78.Member mask ∧
    ¬ cube79.Member mask ∧
      ¬ cube80.Member mask ∧
        ¬ cube81.Member mask ∧
          ¬ cube82.Member mask ∧
            ¬ cube83.Member mask ∧
              ¬ cube84.Member mask ∧
                ¬ cube85.Member mask ∧
                  ¬ cube86.Member mask ∧
                    ¬ cube87.Member mask ∧
                      ¬ cube88.Member mask ∧
                        ¬ cube89.Member mask ∧
                          ¬ cube90.Member mask

private theorem weights78_nonnegative : weights78.Nonnegative := by
  norm_num [weights78, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights78_positive : weights78.PositiveSome := by
  norm_num [weights78, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights79_nonnegative : weights79.Nonnegative := by
  norm_num [weights79, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.weights9,
    InternalImpactWeights.Nonnegative]

private theorem weights79_positive : weights79.PositiveSome := by
  norm_num [weights79, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.weights9,
    InternalImpactWeights.PositiveSome]

private theorem weights80_nonnegative : weights80.Nonnegative := by
  norm_num [weights80, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.weights1_2,
    InternalImpactWeights.Nonnegative]

private theorem weights80_positive : weights80.PositiveSome := by
  norm_num [weights80, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.weights1_2,
    InternalImpactWeights.PositiveSome]

private theorem weights81_nonnegative : weights81.Nonnegative := by
  norm_num [weights81, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights81_positive : weights81.PositiveSome := by
  norm_num [weights81, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private theorem weights82_nonnegative : weights82.Nonnegative := by
  norm_num [weights82, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.weights7,
    InternalImpactWeights.Nonnegative]

private theorem weights82_positive : weights82.PositiveSome := by
  norm_num [weights82, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.weights7,
    InternalImpactWeights.PositiveSome]

private theorem weights83_nonnegative : weights83.Nonnegative := by
  norm_num [weights83, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.weights6,
    InternalImpactWeights.Nonnegative]

private theorem weights83_positive : weights83.PositiveSome := by
  norm_num [weights83, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.weights6,
    InternalImpactWeights.PositiveSome]

private theorem weights84_nonnegative : weights84.Nonnegative := by
  norm_num [weights84, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.weights6,
    InternalImpactWeights.Nonnegative]

private theorem weights84_positive : weights84.PositiveSome := by
  norm_num [weights84, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.weights6,
    InternalImpactWeights.PositiveSome]

private theorem weights85_nonnegative : weights85.Nonnegative := by
  norm_num [weights85, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.weights4,
    InternalImpactWeights.Nonnegative]

private theorem weights85_positive : weights85.PositiveSome := by
  norm_num [weights85, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.weights4,
    InternalImpactWeights.PositiveSome]

private theorem weights86_nonnegative : weights86.Nonnegative := by
  norm_num [weights86, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.weights4_8,
    InternalImpactWeights.Nonnegative]

private theorem weights86_positive : weights86.PositiveSome := by
  norm_num [weights86, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.weights4_8,
    InternalImpactWeights.PositiveSome]

private theorem weights87_nonnegative : weights87.Nonnegative := by
  norm_num [weights87, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.weights2,
    InternalImpactWeights.Nonnegative]

private theorem weights87_positive : weights87.PositiveSome := by
  norm_num [weights87, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.weights2,
    InternalImpactWeights.PositiveSome]

private theorem weights88_nonnegative : weights88.Nonnegative := by
  norm_num [weights88, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.weights6_9,
    InternalImpactWeights.Nonnegative]

private theorem weights88_positive : weights88.PositiveSome := by
  norm_num [weights88, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.weights6_9,
    InternalImpactWeights.PositiveSome]

private theorem weights89_nonnegative : weights89.Nonnegative := by
  norm_num [weights89, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.weights7,
    InternalImpactWeights.Nonnegative]

private theorem weights89_positive : weights89.PositiveSome := by
  norm_num [weights89, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.weights7,
    InternalImpactWeights.PositiveSome]

private theorem weights90_nonnegative : weights90.Nonnegative := by
  norm_num [weights90, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.weights1,
    InternalImpactWeights.Nonnegative]

private theorem weights90_positive : weights90.PositiveSome := by
  norm_num [weights90, WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.weights1,
    InternalImpactWeights.PositiveSome]

private def obstruction : (family : BatchFamily) ->
    WeightedDenomCubeObstruction rank955 (Member family)
  | BatchFamily.idx78 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights78 weights78_nonnegative weights78_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx79 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights79 weights79_nonnegative weights79_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx80 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights80 weights80_nonnegative weights80_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx81 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights81 weights81_nonnegative weights81_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx82 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights82 weights82_nonnegative weights82_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx83 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights83 weights83_nonnegative weights83_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx84 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights84 weights84_nonnegative weights84_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx85 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights85 weights85_nonnegative weights85_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx86 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights86 weights86_nonnegative weights86_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx87 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights87 weights87_nonnegative weights87_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx88 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights88 weights88_nonnegative weights88_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx89 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights89 weights89_nonnegative weights89_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.weightedDenom_nonpos
              hlt hmember)
  | BatchFamily.idx90 =>
      WeightedDenomCubeObstruction.ofNonnegative
        weights90 weights90_nonnegative weights90_positive
        (by
          intro mask hlt hmember
          exact
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.weightedDenom_nonpos
              hlt hmember)

def weightedBatchCover :
    WeightedDenomCubeCover rank955 OutsideBatchGoodMaskMember where
  Family := BatchFamily
  Member := Member
  obstruction := obstruction
  complete := by
    intro mask hnot
    by_cases h78 : cube78.Member mask
    · exact ⟨BatchFamily.idx78, h78⟩
    by_cases h79 : cube79.Member mask
    · exact ⟨BatchFamily.idx79, h79⟩
    by_cases h80 : cube80.Member mask
    · exact ⟨BatchFamily.idx80, h80⟩
    by_cases h81 : cube81.Member mask
    · exact ⟨BatchFamily.idx81, h81⟩
    by_cases h82 : cube82.Member mask
    · exact ⟨BatchFamily.idx82, h82⟩
    by_cases h83 : cube83.Member mask
    · exact ⟨BatchFamily.idx83, h83⟩
    by_cases h84 : cube84.Member mask
    · exact ⟨BatchFamily.idx84, h84⟩
    by_cases h85 : cube85.Member mask
    · exact ⟨BatchFamily.idx85, h85⟩
    by_cases h86 : cube86.Member mask
    · exact ⟨BatchFamily.idx86, h86⟩
    by_cases h87 : cube87.Member mask
    · exact ⟨BatchFamily.idx87, h87⟩
    by_cases h88 : cube88.Member mask
    · exact ⟨BatchFamily.idx88, h88⟩
    by_cases h89 : cube89.Member mask
    · exact ⟨BatchFamily.idx89, h89⟩
    by_cases h90 : cube90.Member mask
    · exact ⟨BatchFamily.idx90, h90⟩
    exact False.elim (hnot ⟨h78, h79, h80, h81, h82, h83, h84, h85, h86, h87, h88, h89, h90⟩)

theorem goodDirection_outside_weighted_batch
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank955, hlt⟩ : Fin numPairWords) mask) :
    OutsideBatchGoodMaskMember mask :=
  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
