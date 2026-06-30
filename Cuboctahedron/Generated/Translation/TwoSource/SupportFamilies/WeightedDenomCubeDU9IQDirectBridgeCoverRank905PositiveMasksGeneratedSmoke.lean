import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke

/-!
Rank-`905` weighted-cover positive-mask bridge `WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke`.

This generated bounded bridge turns the outside-batch predicate from a
checked traced weighted-denominator cover into the explicit positive
mask predicate used by the source-row signature catalog.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube52,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube53,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube54,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube55,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube56,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube57,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube58,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube59,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube60,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube61,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube62,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube63,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank905AllGeneratedSmoke.cube64,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx52Smoke.cubex0001x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx53Smoke.cube1x0x10,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx54Smoke.cubex101xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx55Smoke.cube0x11x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx56Smoke.cubexx1x01,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke.cubex0111x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke.cube0xx1x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx59Smoke.cubexxx00x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx60Smoke.cube111xx0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx61Smoke.cubexx0100,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke.cubexx0011,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx63Smoke.cubex010xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx64Smoke.cubex01x00,
            SignBit.toPairId,
            maskBitForPair]))

def rank905PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 41 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 57 \/
    mask.val = 63

theorem rank905PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank905PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank905PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h52, h53, h54, h55, h56, h57, h58, h59, h60, h61, h62, h63, h64⟩
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h61 (by cube_mem)
  · exact h61 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h55 (by cube_mem)
  · exact h64 (by cube_mem)
  · exact h55 (by cube_mem)
  · exact h60 (by cube_mem)
  · exact h52 (by cube_mem)
  · exact h52 (by cube_mem)
  · exact h53 (by cube_mem)
  · exact h63 (by cube_mem)
  · exact h63 (by cube_mem)
  · exact h60 (by cube_mem)
  · exact h53 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h53 (by cube_mem)
  · exact h55 (by cube_mem)
  · exact h57 (by cube_mem)
  · exact h55 (by cube_mem)
  · exact h60 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h59 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h58 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h56 (by cube_mem)
  · exact h52 (by cube_mem)
  · exact h52 (by cube_mem)
  · exact h62 (by cube_mem)
  · exact h62 (by cube_mem)
  · exact h63 (by cube_mem)
  · exact h63 (by cube_mem)
  · exact h58 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h54 (by cube_mem)
  · exact h57 (by cube_mem)
  · exact h57 (by cube_mem)
  · exact h58 (by cube_mem)

theorem goodDirection_rank905PositiveMaskMember
    {mask : SignMask} (hlt : 905 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨905, hlt⟩ : Fin numPairWords) mask) :
    rank905PositiveMaskMember mask :=
  rank905PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
