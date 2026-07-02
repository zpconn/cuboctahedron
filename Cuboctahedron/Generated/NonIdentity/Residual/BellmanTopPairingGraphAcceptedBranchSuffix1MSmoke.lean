import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge

/-!
Graph-only suffix smoke for graph-accepted top-pairing traces.

This generated smoke proves that the current 37 graph-accepted terminal
traces can be represented as `GraphBranchTableSuffixOk` evidence over the
strengthened graph branch table.  It is trace-class based, not rank-sampled:
there is no sampled rank/object type and no selected-prefix cover.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge

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

private theorem graphBranchTableSuffixOk_trace_000
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_000 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_000
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_205_s0203_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_228_s0222_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_030_s0022_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_051_s0042_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_081_s0070_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_097_s0086_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_001
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_001 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_001
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_205_s0203_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_228_s0222_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_031_s0022_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_060_s0051_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_081_s0070_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_097_s0086_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_002
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_002 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_002
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_205_s0203_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_228_s0222_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_031_s0022_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_061_s0051_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_088_s0077_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_097_s0086_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_003
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_003 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_003
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_203_s0203_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_215_s0212_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_013_s0012_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_052_s0043_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_082_s0071_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_098_s0087_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_004
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_004 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_004
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_203_s0203_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_215_s0212_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_012_s0012_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_046_s0037_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_065_s0054_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_099_s0088_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_005
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_005 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_005
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_203_s0203_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_214_s0212_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_007_s0007_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_032_s0023_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_064_s0053_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_096_s0085_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_006
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_006 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_006
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_204_s0203_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_224_s0220_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_007_s0007_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_032_s0023_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_064_s0053_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_096_s0085_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_007
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_007 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_007
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_204_s0203_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_225_s0220_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_017_s0014_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_054_s0045_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_087_s0076_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_095_s0084_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_008
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_008 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_008
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_186_s0187_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_204_s0203_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_225_s0220_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_016_s0014_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_032_s0023_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_064_s0053_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_096_s0085_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_009
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_009 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_009
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_185_s0187_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_201_s0201_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_218_s0214_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_019_s0015_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_055_s0046_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_089_s0078_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_100_s0089_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_010
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_010 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_010
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_170_s0173_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_185_s0187_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_201_s0201_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_218_s0214_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_018_s0015_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_033_s0024_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_066_s0055_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_101_s0090_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_011
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_011 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_011
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_169_s0173_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_183_s0185_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_196_s0196_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_219_s0215_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_021_s0016_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_056_s0047_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_090_s0079_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_102_s0091_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_012
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_012 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_012
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_156_s0161_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_169_s0173_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_183_s0185_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_196_s0196_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_219_s0215_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_020_s0016_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_034_s0025_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_067_s0056_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_103_s0092_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_013
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_013 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_013
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_155_s0161_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_167_s0171_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_179_s0181_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_197_s0197_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_220_s0216_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_023_s0017_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_057_s0048_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_091_s0080_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_104_s0093_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_014
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_014 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_014
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_144_s0152_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_155_s0161_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_167_s0171_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_179_s0181_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_197_s0197_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_220_s0216_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_022_s0017_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_035_s0026_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_068_s0057_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_105_s0094_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_015
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_015 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_015
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_143_s0152_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_153_s0159_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_164_s0168_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_180_s0182_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_198_s0198_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_221_s0217_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_025_s0018_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_058_s0049_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_092_s0081_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_106_s0095_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_016
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_016 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_016
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_134_s0146_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_143_s0152_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_153_s0159_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_164_s0168_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_180_s0182_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_198_s0198_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_221_s0217_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_024_s0018_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_036_s0027_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_069_s0058_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_107_s0096_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_017
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_017 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_017
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_127_s0143_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_133_s0146_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_141_s0150_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_151_s0157_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_165_s0169_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_181_s0183_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_199_s0199_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_222_s0218_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_026_s0019_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_037_s0028_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_070_s0059_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_108_s0097_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_018
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_018 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_018
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_163_s0167_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_178_s0180_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_195_s0195_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_217_s0213_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_015_s0013_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_053_s0044_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_083_s0072_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_111_s0100_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_019
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_019 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_019
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_163_s0167_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_178_s0180_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_195_s0195_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_217_s0213_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_014_s0013_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_047_s0038_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_073_s0062_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_112_s0101_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_020
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_020 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_020
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_163_s0167_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_178_s0180_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_195_s0195_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_216_s0213_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_008_s0008_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_039_s0030_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_072_s0061_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_110_s0099_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_021
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_021 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_021
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_163_s0167_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_178_s0180_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_194_s0195_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_211_s0209_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_001_s0001_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_038_s0029_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_071_s0060_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_109_s0098_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_022
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_022 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_022
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_163_s0167_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_177_s0180_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_191_s0192_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_206_s0204_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_002_s0002_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_040_s0031_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_074_s0063_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_113_s0102_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_023
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_023 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_023
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_150_s0156_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_162_s0167_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_174_s0177_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_187_s0188_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_207_s0205_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_003_s0003_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_041_s0032_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_075_s0064_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_114_s0103_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_024
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_024 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_024
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_138_s0148_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_149_s0156_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_159_s0164_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_171_s0174_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_188_s0189_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_208_s0206_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_004_s0004_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_042_s0033_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_076_s0065_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_115_s0104_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_025
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_025 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_025
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_137_s0148_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_147_s0154_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_160_s0165_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_175_s0178_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_192_s0193_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_212_s0210_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_009_s0009_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_048_s0039_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_077_s0066_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_116_s0105_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_026
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_026 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_026
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_129_s0144_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_137_s0148_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_146_s0154_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_157_s0162_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_172_s0175_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_189_s0190_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_209_s0207_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_005_s0005_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_043_s0034_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_078_s0067_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_117_s0106_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_027
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_027 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_027
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_128_s0144_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_136_s0147_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_148_s0155_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_161_s0166_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_176_s0179_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_193_s0194_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_213_s0211_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_011_s0011_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_050_s0041_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_086_s0075_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_120_s0109_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_028
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_028 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_028
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_125_s0143_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_128_s0144_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_135_s0147_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_145_s0153_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_158_s0163_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_173_s0176_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_190_s0191_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_210_s0208_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_006_s0006_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_045_s0036_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_080_s0069_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_123_s0112_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_029
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_029 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_029
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_132_s0145_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_142_s0151_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_154_s0160_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_168_s0172_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_184_s0186_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_202_s0202_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_227_s0221_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_029_s0021_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_062_s0052_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_085_s0074_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_119_s0108_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_030
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_030 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_030
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_132_s0145_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_142_s0151_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_154_s0160_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_168_s0172_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_184_s0186_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_202_s0202_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_227_s0221_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_029_s0021_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_063_s0052_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_093_s0082_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_119_s0108_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_031
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_031 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_031
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_132_s0145_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_142_s0151_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_154_s0160_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_168_s0172_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_184_s0186_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_202_s0202_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_226_s0221_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_010_s0010_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_049_s0040_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_084_s0073_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_118_s0107_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_032
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_032 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_032
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_130_s0145_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_136_s0147_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_148_s0155_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_161_s0166_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_176_s0179_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_193_s0194_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_213_s0211_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_011_s0011_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_050_s0041_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_086_s0075_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_120_s0109_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_033
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_033 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_033
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_130_s0145_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_135_s0147_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_145_s0153_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_158_s0163_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_173_s0176_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_190_s0191_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_210_s0208_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_006_s0006_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_045_s0036_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_080_s0069_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_123_s0112_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_034
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_034 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_034
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_131_s0145_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_140_s0149_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_152_s0158_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_166_s0170_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_182_s0184_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_200_s0200_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_223_s0219_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_028_s0020_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_059_s0050_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_094_s0083_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_121_s0110_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_035
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_035 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_035
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_131_s0145_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_140_s0149_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_152_s0158_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_166_s0170_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_182_s0184_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_200_s0200_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_223_s0219_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_027_s0020_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_044_s0035_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_079_s0068_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_122_s0111_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

private theorem graphBranchTableSuffixOk_trace_036
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_036 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_036
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_124_s0142_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_126_s0143_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_131_s0145_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_139_s0149_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_145_s0153_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_158_s0163_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_173_s0176_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_190_s0191_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_210_s0208_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_006_s0006_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_045_s0036_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_080_s0069_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_123_s0112_xp
    (by rfl) ?_
  exact GraphBranchTableSuffixOk.nil _

theorem graphBranchTableSuffixOk_of_graphAcceptedTraceLabels
    {rank : Fin numPairWords} {labels : List Face}
    (haccepted : GraphAcceptedTraceLabels labels) :
    GraphBranchTableSuffixOk rank rootState labels := by
  unfold GraphAcceptedTraceLabels at haccepted
  rcases haccepted with
    h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 |
    h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 |
    h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 |
    h31 | h32 | h33 | h34 | h35 | h36
  · subst labels
    exact graphBranchTableSuffixOk_trace_000
  · subst labels
    exact graphBranchTableSuffixOk_trace_001
  · subst labels
    exact graphBranchTableSuffixOk_trace_002
  · subst labels
    exact graphBranchTableSuffixOk_trace_003
  · subst labels
    exact graphBranchTableSuffixOk_trace_004
  · subst labels
    exact graphBranchTableSuffixOk_trace_005
  · subst labels
    exact graphBranchTableSuffixOk_trace_006
  · subst labels
    exact graphBranchTableSuffixOk_trace_007
  · subst labels
    exact graphBranchTableSuffixOk_trace_008
  · subst labels
    exact graphBranchTableSuffixOk_trace_009
  · subst labels
    exact graphBranchTableSuffixOk_trace_010
  · subst labels
    exact graphBranchTableSuffixOk_trace_011
  · subst labels
    exact graphBranchTableSuffixOk_trace_012
  · subst labels
    exact graphBranchTableSuffixOk_trace_013
  · subst labels
    exact graphBranchTableSuffixOk_trace_014
  · subst labels
    exact graphBranchTableSuffixOk_trace_015
  · subst labels
    exact graphBranchTableSuffixOk_trace_016
  · subst labels
    exact graphBranchTableSuffixOk_trace_017
  · subst labels
    exact graphBranchTableSuffixOk_trace_018
  · subst labels
    exact graphBranchTableSuffixOk_trace_019
  · subst labels
    exact graphBranchTableSuffixOk_trace_020
  · subst labels
    exact graphBranchTableSuffixOk_trace_021
  · subst labels
    exact graphBranchTableSuffixOk_trace_022
  · subst labels
    exact graphBranchTableSuffixOk_trace_023
  · subst labels
    exact graphBranchTableSuffixOk_trace_024
  · subst labels
    exact graphBranchTableSuffixOk_trace_025
  · subst labels
    exact graphBranchTableSuffixOk_trace_026
  · subst labels
    exact graphBranchTableSuffixOk_trace_027
  · subst labels
    exact graphBranchTableSuffixOk_trace_028
  · subst labels
    exact graphBranchTableSuffixOk_trace_029
  · subst labels
    exact graphBranchTableSuffixOk_trace_030
  · subst labels
    exact graphBranchTableSuffixOk_trace_031
  · subst labels
    exact graphBranchTableSuffixOk_trace_032
  · subst labels
    exact graphBranchTableSuffixOk_trace_033
  · subst labels
    exact graphBranchTableSuffixOk_trace_034
  · subst labels
    exact graphBranchTableSuffixOk_trace_035
  · subst labels
    exact graphBranchTableSuffixOk_trace_036

theorem branchTableSuffixOk_root_of_strengthenedTerminal_fullTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) :=
  branchTableSuffixOk_of_graphBranchTableSuffixOk
    (state := TopPairingTransducerEvalState.start rootState)
    (graphBranchTableSuffixOk_of_graphAcceptedTraceLabels
      (graphAcceptedTraceLabels_of_strengthenedTerminalOk
        hstrengthened hterm))

theorem graphAcceptedBranchSuffix1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke
