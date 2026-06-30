import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke

/-!
Rank-`899` weighted-cover positive-mask bridge `WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke`.

This generated bounded bridge turns the outside-batch predicate from a
checked traced weighted-denominator cover into the explicit positive
mask predicate used by the source-row signature catalog.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube28,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube29,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube30,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube31,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube32,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube33,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube34,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube35,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube36,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube37,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube38,
            WeightedDenomCubeDU9IQDirectBridgeCoverRank899AllGeneratedSmoke.cube39,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke.cubexx000x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke.cube1x0x1x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke.cube0x1x0x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke.cube0x0xx1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke.cubex010xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke.cubex101xx,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke.cube1xx00x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke.cube0xx1x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke.cubexx0x01,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke.cube1xx0x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke.cubex1xx00,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke.cubex0xx11,
            SignBit.toPairId,
            maskBitForPair]))

def rank899PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 63

theorem rank899PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank899PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank899PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h28, h29, h30, h31, h32, h33, h34, h35, h36, h37, h38, h39⟩
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h34 (by cube_mem)
  · exact h33 (by cube_mem)
  · exact h33 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h38 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h37 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h33 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h28 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h34 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h36 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h33 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h30 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h32 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h31 (by cube_mem)
  · exact h29 (by cube_mem)
  · exact h35 (by cube_mem)
  · exact h39 (by cube_mem)
  · exact h35 (by cube_mem)

theorem goodDirection_rank899PositiveMaskMember
    {mask : SignMask} (hlt : 899 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨899, hlt⟩ : Fin numPairWords) mask) :
    rank899PositiveMaskMember mask :=
  rank899PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
