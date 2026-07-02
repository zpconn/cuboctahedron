import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

/-!
Graph-only suffix smoke for graph-accepted top-pairing traces on the split-10M graph.

This generated smoke proves that the current 37 graph-accepted terminal
traces can be represented as graph branch-table suffix evidence over
the same split-10M Bellman graph family used by the accepted eval/margin
gate.  It is trace-class bounded smoke, not final production coverage.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

inductive GraphBranchTableSuffixOk (rank : Fin numPairWords) :
    State -> List Face -> Prop
  | nil (graph : State) : GraphBranchTableSuffixOk rank graph []
  | graph {graph : State} {face : Face} {rest : List Face}
      (hbranch : StrengthenedBranchTable graph face BranchKind.graph)
      (hrest :
        ∀ graphNext gain,
          graphSmokeNext graph (smokeLabelOfFace face) =
            some (graphNext, gain) ->
          GraphBranchTableSuffixOk rank graphNext rest) :
      GraphBranchTableSuffixOk rank graph (face :: rest)

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
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0903_s0856_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1018_s0947_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0115_s0091_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_001
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_001 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_001
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0903_s0856_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1018_s0947_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0116_s0091_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_002
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_002 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_002
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0903_s0856_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1018_s0947_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0116_s0091_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_003
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_003 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_003
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0901_s0856_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0993_s0928_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0073_s0067_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_004
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_004 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_004
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0901_s0856_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0993_s0928_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0072_s0067_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_005
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_005 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_005
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0901_s0856_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0992_s0928_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0043_s0042_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_006
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_006 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_006
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0902_s0856_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1010_s0942_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0043_s0042_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_007
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_007 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_007
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0902_s0856_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1011_s0942_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0090_s0076_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_008
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_008 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_008
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0802_s0779_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0902_s0856_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1011_s0942_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0089_s0076_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_009
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_009 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_009
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0801_s0779_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0893_s0851_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0998_s0931_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0092_s0077_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_010
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_010 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_010
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0719_s0716_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0801_s0779_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0893_s0851_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0998_s0931_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0091_s0077_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_011
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_011 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_011
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0718_s0716_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0799_s0777_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0887_s0845_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0999_s0932_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0094_s0078_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_012
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_012 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_012
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0651_s0667_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0718_s0716_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0799_s0777_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0887_s0845_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0999_s0932_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0093_s0078_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_013
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_013 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_013
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0650_s0667_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0715_s0714_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0789_s0769_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0888_s0846_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1000_s0933_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0096_s0079_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_014
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_014 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_014
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0596_s0635_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0650_s0667_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0715_s0714_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0789_s0769_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0888_s0846_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1000_s0933_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0095_s0079_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_015
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_015 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_015
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0595_s0635_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0645_s0664_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0703_s0704_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0790_s0770_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0889_s0847_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1001_s0934_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0098_s0080_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_016
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_016 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_016
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0561_s0618_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0595_s0635_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0645_s0664_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0703_s0704_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0790_s0770_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0889_s0847_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1001_s0934_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0097_s0080_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_017
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_017 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_017
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0541_s0610_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0560_s0618_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0589_s0631_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0635_s0657_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0704_s0705_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0791_s0771_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0890_s0848_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1002_s0935_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0099_s0081_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_018
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_018 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_018
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0698_s0699_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0782_s0762_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0881_s0839_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0997_s0930_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0077_s0069_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_019
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_019 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_019
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0698_s0699_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0782_s0762_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0881_s0839_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0997_s0930_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0076_s0069_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_020
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_020 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_020
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0698_s0699_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0782_s0762_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0881_s0839_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0996_s0930_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0045_s0044_zm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_021
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_021 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_021
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0698_s0699_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0782_s0762_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0880_s0839_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0969_s0912_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0028_s0027_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_022
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_022 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_022
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0698_s0699_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0781_s0762_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0863_s0829_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0952_s0895_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0029_s0028_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_023
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_023 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_023
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0631_s0654_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0697_s0699_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0770_s0755_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0843_s0809_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0953_s0896_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0030_s0029_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_024
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_024 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_024
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0582_s0627_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0630_s0654_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0682_s0689_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0752_s0737_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0844_s0810_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0954_s0897_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0031_s0030_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_025
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_025 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_025
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0581_s0627_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0621_s0648_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0678_s0685_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0757_s0742_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0851_s0817_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0961_s0904_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0049_s0048_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_026
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_026 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_026
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0553_s0615_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0581_s0627_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0620_s0648_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0675_s0682_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0753_s0738_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0846_s0812_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0956_s0899_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0033_s0032_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_027
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_027 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_027
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0552_s0615_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0578_s0625_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0623_s0650_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0686_s0693_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0764_s0749_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0865_s0831_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0977_s0920_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0059_s0058_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_028
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_028 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_028
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0539_s0610_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0552_s0615_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0577_s0625_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0617_s0646_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0676_s0683_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0755_s0740_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0848_s0814_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0958_s0901_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0035_s0034_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_029
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_029 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_029
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0556_s0616_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0590_s0632_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0643_s0662_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0714_s0713_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0800_s0778_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0894_s0852_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1016_s0945_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0105_s0085_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_030
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_030 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_030
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0556_s0616_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0590_s0632_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0643_s0662_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0714_s0713_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0800_s0778_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0894_s0852_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1016_s0945_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0105_s0085_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_031
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_031 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_031
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0556_s0616_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0590_s0632_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0643_s0662_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0714_s0713_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0800_s0778_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0894_s0852_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1015_s0945_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0058_s0057_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_032
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_032 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_032
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0554_s0616_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0578_s0625_tmmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0623_s0650_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0686_s0693_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0764_s0749_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0865_s0831_tmpp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0977_s0920_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0059_s0058_tmpm
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_033
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_033 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_033
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0554_s0616_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0577_s0625_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0617_s0646_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0676_s0683_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0755_s0740_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0848_s0814_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0958_s0901_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0035_s0034_tppp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_034
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_034 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_034
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0555_s0616_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0584_s0628_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0636_s0658_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0705_s0706_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0792_s0772_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0892_s0850_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1003_s0936_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0103_s0083_tmmp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_035
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_035 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_035
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0555_s0616_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0584_s0628_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0636_s0658_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0705_s0706_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0792_s0772_tppp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0892_s0850_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_1003_s0936_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0102_s0083_yp
    (by rfl) ?_
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

private theorem graphBranchTableSuffixOk_trace_036
    {rank : Fin numPairWords} :
    GraphBranchTableSuffixOk rank rootState acceptedFaceTrace_036 := by
  change GraphBranchTableSuffixOk rank (0 : State) acceptedFaceTrace_036
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0000_s0000_xm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0533_s0608_ym
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0540_s0610_zm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0555_s0616_zp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0583_s0628_yp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0617_s0646_tmmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0676_s0683_tpmm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0755_s0740_tppm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0848_s0814_tpmp
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0958_s0901_tmpm
    (by rfl) ?_
  refine graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0035_s0034_tppp
    (by rfl) ?_
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

theorem graphAcceptedBranchSuffixSplit10MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke
