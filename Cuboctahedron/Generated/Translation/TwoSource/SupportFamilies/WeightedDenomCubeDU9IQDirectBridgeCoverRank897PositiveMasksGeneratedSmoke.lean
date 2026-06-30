import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke

/-!
Rank-`897` weighted-cover positive-mask bridge `WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke`.

This generated bounded bridge turns the outside-batch predicate from a
checked traced weighted-denominator cover into the explicit positive
mask predicate used by the source-row signature catalog.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube14,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube15,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube16,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube17,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube18,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube19,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube20,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube21,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube22,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube23,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube24,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube25,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube26,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank897AllSmoke.cube27,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx14Smoke.cubexxx001,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx15Smoke.cube1x0x1x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx16Smoke.cube0xx1x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx17Smoke.cubexxx000,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx18Smoke.cubex010xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx19Smoke.cube1x010x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx20Smoke.cubex1x100,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx21Smoke.cube0x0xx1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx22Smoke.cube1xx0x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx23Smoke.cube0x110x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx24Smoke.cube0x10x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx25Smoke.cube0101xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx26Smoke.cubex0x111,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx27Smoke.cube001x10,
            SignBit.toPairId,
            maskBitForPair]))

def rank897PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 24 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

theorem rank897PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank897PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank897PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27⟩
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h17 (by cube_mem)
  · exact h19 (by cube_mem)
  · exact h20 (by cube_mem)
  · exact h19 (by cube_mem)
  · exact h23 (by cube_mem)
  · exact h20 (by cube_mem)
  · exact h20 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h18 (by cube_mem)
  · exact h18 (by cube_mem)
  · exact h24 (by cube_mem)
  · exact h22 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h25 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h27 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h14 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h19 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h19 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h21 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h21 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h18 (by cube_mem)
  · exact h18 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h15 (by cube_mem)
  · exact h16 (by cube_mem)
  · exact h26 (by cube_mem)
  · exact h16 (by cube_mem)

theorem goodDirection_rank897PositiveMaskMember
    {mask : SignMask} (hlt : 897 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨897, hlt⟩ : Fin numPairWords) mask) :
    rank897PositiveMaskMember mask :=
  rank897PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
