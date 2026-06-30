import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke

/-!
Rank-`955` weighted-cover positive-mask bridge `WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke`.

This generated bounded bridge turns the outside-batch predicate from a
checked traced weighted-denominator cover into the explicit positive
mask predicate used by the source-row signature catalog.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube78,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube79,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube80,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube81,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube82,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube83,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube84,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube85,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube86,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube87,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube88,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube89,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank955AllGeneratedSmoke.cube90,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx78Smoke.cubexxx000,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx79Smoke.cubex001x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke.cube1xx0x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx81Smoke.cubexx100x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke.cubexxx101,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx83Smoke.cubexx0011,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx84Smoke.cube1xx011,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx85Smoke.cubex101xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx86Smoke.cubex01x1x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx87Smoke.cube0x11x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke.cubex111x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx89Smoke.cubexx0x01,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx90Smoke.cubexx1x00,
            SignBit.toPairId,
            maskBitForPair]))

def rank955PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 54 \/
    mask.val = 56 \/
    mask.val = 57 \/
    mask.val = 63

theorem rank955PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank955PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank955PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h78, h79, h80, h81, h82, h83, h84, h85, h86, h87, h88, h89, h90⟩
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h78 (by cube_mem)
  · exact h79 (by cube_mem)
  · exact h79 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h90 (by cube_mem)
  · exact h90 (by cube_mem)
  · exact h88 (by cube_mem)
  · exact h88 (by cube_mem)
  · exact h80 (by cube_mem)
  · exact h80 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h80 (by cube_mem)
  · exact h80 (by cube_mem)
  · exact h79 (by cube_mem)
  · exact h79 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h88 (by cube_mem)
  · exact h88 (by cube_mem)
  · exact h89 (by cube_mem)
  · exact h89 (by cube_mem)
  · exact h89 (by cube_mem)
  · exact h89 (by cube_mem)
  · exact h81 (by cube_mem)
  · exact h81 (by cube_mem)
  · exact h81 (by cube_mem)
  · exact h81 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h82 (by cube_mem)
  · exact h83 (by cube_mem)
  · exact h83 (by cube_mem)
  · exact h83 (by cube_mem)
  · exact h83 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h84 (by cube_mem)
  · exact h84 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h85 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h86 (by cube_mem)
  · exact h87 (by cube_mem)

theorem goodDirection_rank955PositiveMaskMember
    {mask : SignMask} (hlt : 955 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨955, hlt⟩ : Fin numPairWords) mask) :
    rank955PositiveMaskMember mask :=
  rank955PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
