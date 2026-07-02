import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

/-!
Generated graph-state-indexed depth-11 suffix smoke for top-pairing Bellman.

This bounded diagnostic module proves graph branch-table suffix evidence
for the observed depth-11 `(semantic class, graph state, suffix)`
obligations from the split-10M graph-accepted trace artifact.  It is not
a final closed-language membership theorem and it does not prove final
margin producers.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

def depth11GraphStateSuffixObligationCount : Nat := 32
def depth11GraphStateSuffixProviderCount : Nat := 30

theorem depth11GraphStateSuffixCount_audit :
    depth11GraphStateSuffixObligationCount = 32 /\
      depth11GraphStateSuffixProviderCount = 30 := by
  decide

inductive Depth11Class034State0197Suffix : List Face -> Prop
  | trace_000 : Depth11Class034State0197Suffix [Face.zm, Face.zp, Face.xp]

inductive Depth11Class034State0198Suffix : List Face -> Prop
  | trace_003 : Depth11Class034State0198Suffix [Face.zm, Face.zp, Face.xp]

inductive Depth11Class034State0201Suffix : List Face -> Prop
  | trace_018 : Depth11Class034State0201Suffix [Face.zm, Face.zp, Face.xp]

inductive Depth11Class035State0227Suffix : List Face -> Prop
  | trace_001 : Depth11Class035State0227Suffix [Face.yp, Face.zp, Face.xp]
  | trace_002 : Depth11Class035State0227Suffix [Face.zp, Face.yp, Face.xp]

inductive Depth11Class035State0228Suffix : List Face -> Prop
  | trace_029 : Depth11Class035State0228Suffix [Face.yp, Face.zp, Face.xp]
  | trace_030 : Depth11Class035State0228Suffix [Face.zp, Face.yp, Face.xp]

inductive Depth11Class036State0172Suffix : List Face -> Prop
  | trace_004 : Depth11Class036State0172Suffix [Face.zp, Face.tmmp, Face.xp]

inductive Depth11Class036State0174Suffix : List Face -> Prop
  | trace_019 : Depth11Class036State0174Suffix [Face.zp, Face.tmmp, Face.xp]

inductive Depth11Class036State0175Suffix : List Face -> Prop
  | trace_025 : Depth11Class036State0175Suffix [Face.zp, Face.tmmp, Face.xp]

inductive Depth11Class037State0142Suffix : List Face -> Prop
  | trace_005 : Depth11Class037State0142Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0143Suffix : List Face -> Prop
  | trace_010 : Depth11Class037State0143Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0144Suffix : List Face -> Prop
  | trace_012 : Depth11Class037State0144Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0145Suffix : List Face -> Prop
  | trace_014 : Depth11Class037State0145Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0146Suffix : List Face -> Prop
  | trace_016 : Depth11Class037State0146Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0147Suffix : List Face -> Prop
  | trace_017 : Depth11Class037State0147Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0154Suffix : List Face -> Prop
  | trace_021 : Depth11Class037State0154Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0155Suffix : List Face -> Prop
  | trace_020 : Depth11Class037State0155Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0156Suffix : List Face -> Prop
  | trace_022 : Depth11Class037State0156Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0157Suffix : List Face -> Prop
  | trace_023 : Depth11Class037State0157Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0158Suffix : List Face -> Prop
  | trace_024 : Depth11Class037State0158Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0160Suffix : List Face -> Prop
  | trace_026 : Depth11Class037State0160Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0161Suffix : List Face -> Prop
  | trace_035 : Depth11Class037State0161Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class037State0163Suffix : List Face -> Prop
  | trace_028 : Depth11Class037State0163Suffix [Face.tmpp, Face.tmmp, Face.xp]

inductive Depth11Class038State0207Suffix : List Face -> Prop
  | trace_007 : Depth11Class038State0207Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class038State0208Suffix : List Face -> Prop
  | trace_009 : Depth11Class038State0208Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class038State0209Suffix : List Face -> Prop
  | trace_011 : Depth11Class038State0209Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class038State0210Suffix : List Face -> Prop
  | trace_013 : Depth11Class038State0210Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class038State0211Suffix : List Face -> Prop
  | trace_015 : Depth11Class038State0211Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class038State0213Suffix : List Face -> Prop
  | trace_034 : Depth11Class038State0213Suffix [Face.tmpp, Face.yp, Face.xp]

inductive Depth11Class039State0185Suffix : List Face -> Prop
  | trace_031 : Depth11Class039State0185Suffix [Face.tmmm, Face.zp, Face.xp]

inductive Depth11Class039State0186Suffix : List Face -> Prop
  | trace_027 : Depth11Class039State0186Suffix [Face.tmmm, Face.zp, Face.xp]

private theorem graphBranchTableSuffixOk_cons
    {rank : Fin numPairWords} {graph graphNext : State}
    {face : Face} {rest : List Face} {gain : Int}
    (hbranch : StrengthenedBranchTable graph face BranchKind.graph)
    (hnext :
      graphSmokeNext graph (smokeLabelOfFace face) =
        some (graphNext, gain))
    (hrest : GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank graph (face :: rest) := by
  refine GraphBranchTableSuffixOk.graph hbranch ?_
  intro graphNext' gain' hgraph
  rw [hnext] at hgraph
  cases hgraph
  exact hrest

theorem graphBranchTableSuffixOk_class034_state0197
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class034State0197Suffix rest) :
    GraphBranchTableSuffixOk rank (197 : State) rest := by
  cases hclass with
  | trace_000 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0230_s0197_zm
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0373_s0332_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0483_s0442_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class034_state0198
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class034State0198Suffix rest) :
    GraphBranchTableSuffixOk rank (198 : State) rest := by
  cases hclass with
  | trace_003 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0231_s0198_zm
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0374_s0333_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0484_s0443_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class034_state0201
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class034State0201Suffix rest) :
    GraphBranchTableSuffixOk rank (201 : State) rest := by
  cases hclass with
  | trace_018 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0234_s0201_zm
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0377_s0336_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0515_s0474_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class035_state0227
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class035State0227Suffix rest) :
    GraphBranchTableSuffixOk rank (227 : State) rest := by
  cases hclass with
  | trace_001 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0264_s0227_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0373_s0332_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0483_s0442_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _
  | trace_002 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0265_s0227_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0397_s0356_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0483_s0442_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class035_state0228
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class035State0228Suffix rest) :
    GraphBranchTableSuffixOk rank (228 : State) rest := by
  cases hclass with
  | trace_029 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0266_s0228_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0381_s0340_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0526_s0485_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _
  | trace_030 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0267_s0228_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0404_s0363_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0526_s0485_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class036_state0172
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class036State0172Suffix rest) :
    GraphBranchTableSuffixOk rank (172 : State) rest := by
  cases hclass with
  | trace_004 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0205_s0172_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0328_s0287_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0485_s0444_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class036_state0174
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class036State0174Suffix rest) :
    GraphBranchTableSuffixOk rank (174 : State) rest := by
  cases hclass with
  | trace_019 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0207_s0174_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0343_s0302_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0516_s0475_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class036_state0175
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class036State0175Suffix rest) :
    GraphBranchTableSuffixOk rank (175 : State) rest := by
  cases hclass with
  | trace_025 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0208_s0175_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0348_s0307_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0521_s0480_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0142
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0142Suffix rest) :
    GraphBranchTableSuffixOk rank (142 : State) rest := by
  cases hclass with
  | trace_005 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0175_s0142_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0327_s0286_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0482_s0441_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0143
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0143Suffix rest) :
    GraphBranchTableSuffixOk rank (143 : State) rest := by
  cases hclass with
  | trace_010 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0176_s0143_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0329_s0288_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0487_s0446_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0144
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0144Suffix rest) :
    GraphBranchTableSuffixOk rank (144 : State) rest := by
  cases hclass with
  | trace_012 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0177_s0144_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0330_s0289_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0489_s0448_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0145
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0145Suffix rest) :
    GraphBranchTableSuffixOk rank (145 : State) rest := by
  cases hclass with
  | trace_014 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0178_s0145_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0331_s0290_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0491_s0450_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0146
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0146Suffix rest) :
    GraphBranchTableSuffixOk rank (146 : State) rest := by
  cases hclass with
  | trace_016 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0179_s0146_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0332_s0291_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0493_s0452_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0147
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0147Suffix rest) :
    GraphBranchTableSuffixOk rank (147 : State) rest := by
  cases hclass with
  | trace_017 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0180_s0147_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0333_s0292_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0494_s0453_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0154
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0154Suffix rest) :
    GraphBranchTableSuffixOk rank (154 : State) rest := by
  cases hclass with
  | trace_021 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0187_s0154_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0341_s0300_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0512_s0471_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0155
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0155Suffix rest) :
    GraphBranchTableSuffixOk rank (155 : State) rest := by
  cases hclass with
  | trace_020 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0188_s0155_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0342_s0301_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0514_s0473_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0156
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0156Suffix rest) :
    GraphBranchTableSuffixOk rank (156 : State) rest := by
  cases hclass with
  | trace_022 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0189_s0156_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0344_s0303_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0517_s0476_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0157
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0157Suffix rest) :
    GraphBranchTableSuffixOk rank (157 : State) rest := by
  cases hclass with
  | trace_023 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0190_s0157_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0345_s0304_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0518_s0477_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0158
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0158Suffix rest) :
    GraphBranchTableSuffixOk rank (158 : State) rest := by
  cases hclass with
  | trace_024 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0191_s0158_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0346_s0305_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0519_s0478_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0160
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0160Suffix rest) :
    GraphBranchTableSuffixOk rank (160 : State) rest := by
  cases hclass with
  | trace_026 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0193_s0160_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0349_s0308_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0522_s0481_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0161
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0161Suffix rest) :
    GraphBranchTableSuffixOk rank (161 : State) rest := by
  cases hclass with
  | trace_035 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0194_s0161_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0350_s0309_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0529_s0488_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class037_state0163
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class037State0163Suffix rest) :
    GraphBranchTableSuffixOk rank (163 : State) rest := by
  cases hclass with
  | trace_028 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0196_s0163_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0352_s0311_tmmp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0532_s0491_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0207
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0207Suffix rest) :
    GraphBranchTableSuffixOk rank (207 : State) rest := by
  cases hclass with
  | trace_007 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0240_s0207_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0396_s0355_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0481_s0440_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0208
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0208Suffix rest) :
    GraphBranchTableSuffixOk rank (208 : State) rest := by
  cases hclass with
  | trace_009 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0241_s0208_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0398_s0357_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0486_s0445_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0209
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0209Suffix rest) :
    GraphBranchTableSuffixOk rank (209 : State) rest := by
  cases hclass with
  | trace_011 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0242_s0209_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0399_s0358_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0488_s0447_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0210
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0210Suffix rest) :
    GraphBranchTableSuffixOk rank (210 : State) rest := by
  cases hclass with
  | trace_013 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0243_s0210_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0400_s0359_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0490_s0449_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0211
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0211Suffix rest) :
    GraphBranchTableSuffixOk rank (211 : State) rest := by
  cases hclass with
  | trace_015 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0244_s0211_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0401_s0360_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0492_s0451_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class038_state0213
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class038State0213Suffix rest) :
    GraphBranchTableSuffixOk rank (213 : State) rest := by
  cases hclass with
  | trace_034 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0246_s0213_tmpp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0405_s0364_yp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0528_s0487_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class039_state0185
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class039State0185Suffix rest) :
    GraphBranchTableSuffixOk rank (185 : State) rest := by
  cases hclass with
  | trace_031 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0218_s0185_tmmm
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0380_s0339_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0525_s0484_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_class039_state0186
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Depth11Class039State0186Suffix rest) :
    GraphBranchTableSuffixOk rank (186 : State) rest := by
  cases hclass with
  | trace_027 =>
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0219_s0186_tmmm
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0382_s0341_zp
        (by rfl) ?_
      refine graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0527_s0486_xp
        (by rfl) ?_
      exact GraphBranchTableSuffixOk.nil _

theorem depth11GraphStateSuffixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke
