import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank896AllSmoke

/-!
Rank-896 weighted-cover positive-mask audit.

This bounded audit checks that the all-14 traced weighted cubes leave exactly
the known positive mask values for rank `896`.  It is not the production
membership strategy; production should consume semantic cube/family predicates
or generated source-row facts directly.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open WeightedDenomCubeDU9IQDirectBridgeCoverRank896AllSmoke

set_option maxHeartbeats 0

syntax "cube_mem" : tactic
macro_rules
  | `(tactic| cube_mem) =>
      `(tactic|
        (intro bit
         cases bit <;>
          simp [cube00, cube01, cube02, cube03, cube04, cube05, cube06, cube07,
            cube08, cube09, cube10, cube11, cube12, cube13,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke.cubexx00x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke.cube1xx0x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke.cube0x1x0x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke.cubexx01x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke.cubex0xx11,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke.cube0x0x00,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx06Smoke.cubex101x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx07Smoke.cube1xx00x,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx08Smoke.cube0xx1x1,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx09Smoke.cube1x0x10,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx10Smoke.cube1xx111,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx11Smoke.cube11xx00,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx12Smoke.cubex010x0,
            WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx13Smoke.cube10111x,
            SignBit.toPairId, maskBitForPair]))

def rank896PositiveMaskMember (mask : SignMask) : Prop :=
  mask.val = 9 \/
    mask.val = 13 \/
      mask.val = 16 \/
        mask.val = 18 \/
          mask.val = 22 \/
            mask.val = 24 \/
              mask.val = 28 \/
                mask.val = 30 \/
                  mask.val = 31 \/
                    mask.val = 45 \/
                      mask.val = 47 \/
                        mask.val = 54 \/
                          mask.val = 55

theorem rank896PositiveMaskMember_of_outsideBatchGoodMaskMember
    {mask : SignMask} (h : OutsideBatchGoodMaskMember mask) :
    rank896PositiveMaskMember mask := by
  fin_cases mask
  all_goals
    unfold OutsideBatchGoodMaskMember at h
    try simp [rank896PositiveMaskMember]
  all_goals
    exfalso
    rcases h with
      ⟨h00, h01, h02, h03, h04, h05, h06, h07, h08, h09, h10, h11,
        h12, h13⟩
  · exact h05 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h05 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h05 (by cube_mem)
  · exact h05 (by cube_mem)
  · exact h06 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h11 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h12 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h01 (by cube_mem)
  · exact h09 (by cube_mem)
  · exact h06 (by cube_mem)
  · exact h06 (by cube_mem)
  · exact h13 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h07 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h07 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h02 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h00 (by cube_mem)
  · exact h04 (by cube_mem)
  · exact h04 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h03 (by cube_mem)
  · exact h04 (by cube_mem)
  · exact h04 (by cube_mem)
  · exact h08 (by cube_mem)
  · exact h10 (by cube_mem)

theorem goodDirection_rank896PositiveMaskMember
    {mask : SignMask} (hlt : 896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords) mask) :
    rank896PositiveMaskMember mask :=
  rank896PositiveMaskMember_of_outsideBatchGoodMaskMember
    (goodDirection_outside_weighted_batch hlt hgood)

theorem weightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke_builds :
    True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
