import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke

/-!
Rank-`903` weighted-cover positive-mask bridge `WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke`.

This generated bounded bridge turns the outside-batch predicate from a
checked traced weighted-denominator cover into the explicit positive
mask predicate used by the source-row signature catalog.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube40,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube41,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube42,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube43,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube44,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube45,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube46,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube47,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube48,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube49,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube50,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank903AllGeneratedSmoke.cube51,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke.cubexx1110,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke.cubex00xx1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke.cubexx1x01,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke.cubexx0x11,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke.cubex01x1x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke.cube0xx1x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.cubex000x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.cube11x0x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke.cubex101x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.cubexx100x,
            SignBit.toPairId,
            maskBitForPair]))

def rank903PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 25 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

theorem rank903PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank903PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank903PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h40, h41, h42, h43, h44, h45, h46, h47, h48, h49, h50, h51⟩
  · exact h48 (by cube_mem)
  · exact h48 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h51 (by cube_mem)
  · exact h51 (by cube_mem)
  · exact h51 (by cube_mem)
  · exact h49 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h47 (by cube_mem)
  · exact h48 (by cube_mem)
  · exact h48 (by cube_mem)
  · exact h49 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h49 (by cube_mem)
  · exact h50 (by cube_mem)
  · exact h50 (by cube_mem)
  · exact h40 (by cube_mem)
  · exact h40 (by cube_mem)
  · exact h40 (by cube_mem)
  · exact h40 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h42 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h43 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h44 (by cube_mem)
  · exact h44 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h41 (by cube_mem)
  · exact h44 (by cube_mem)
  · exact h44 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h45 (by cube_mem)
  · exact h46 (by cube_mem)

theorem goodDirection_rank903PositiveMaskMember
    {mask : SignMask} (hlt : 903 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨903, hlt⟩ : Fin numPairWords) mask) :
    rank903PositiveMaskMember mask :=
  rank903PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
