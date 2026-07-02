import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

/-!
Generated bridge from graph-accepted terminal traces to the depth-11
graph-state suffix producer socket.

This is not final closed-language coverage.  It proves that the existing
`GraphAcceptedTraceLabels` semantic terminal predicate can feed the
new `Split10MDepth11GraphPathProducer` socket, without sampled ranks,
selected prefix ids, exact affine RHS keys, or exact Bellman path ids.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedDepth11ProducerBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket

def graphAcceptedDepth11ProducerTraceCount : Nat := 37

theorem graphAcceptedDepth11ProducerTraceCount_audit :
    graphAcceptedDepth11ProducerTraceCount = 37 := by
  decide

private theorem split10MDepth11GraphPathProducer_trace_000
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_000] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp], [Face.zm, Face.zp, Face.xp], (197 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0903_s0856_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.tmmp) =
        some ((947 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1018_s0947_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (947 : State) (smokeLabelOfFace Face.tmpp) =
        some ((91 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0115_s0091_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (91 : State) (smokeLabelOfFace Face.yp) =
        some ((197 : State), (103 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class034_state0197 Depth11Class034State0197Suffix.trace_000

private theorem split10MDepth11GraphPathProducer_trace_001
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_001) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_001] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm], [Face.yp, Face.zp, Face.xp], (227 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0903_s0856_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.tmmp) =
        some ((947 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1018_s0947_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (947 : State) (smokeLabelOfFace Face.tmpp) =
        some ((91 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0116_s0091_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (91 : State) (smokeLabelOfFace Face.zm) =
        some ((227 : State), (-10 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class035_state0227 Depth11Class035State0227Suffix.trace_001

private theorem split10MDepth11GraphPathProducer_trace_002
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_002) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_002] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm], [Face.zp, Face.yp, Face.xp], (227 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0903_s0856_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.tmmp) =
        some ((947 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1018_s0947_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (947 : State) (smokeLabelOfFace Face.tmpp) =
        some ((91 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0116_s0091_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (91 : State) (smokeLabelOfFace Face.zm) =
        some ((227 : State), (-10 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class035_state0227 Depth11Class035State0227Suffix.trace_002

private theorem split10MDepth11GraphPathProducer_trace_003
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_003) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_003] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp], [Face.zm, Face.zp, Face.xp], (198 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0901_s0856_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.yp) =
        some ((928 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0993_s0928_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (928 : State) (smokeLabelOfFace Face.tmpp) =
        some ((67 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0073_s0067_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (67 : State) (smokeLabelOfFace Face.tmmp) =
        some ((198 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class034_state0198 Depth11Class034State0198Suffix.trace_003

private theorem split10MDepth11GraphPathProducer_trace_004
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_004) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_004] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.zm], [Face.zp, Face.tmmp, Face.xp], (172 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0901_s0856_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.yp) =
        some ((928 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0993_s0928_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (928 : State) (smokeLabelOfFace Face.tmpp) =
        some ((67 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0072_s0067_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (67 : State) (smokeLabelOfFace Face.zm) =
        some ((172 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class036_state0172 Depth11Class036State0172Suffix.trace_004

private theorem split10MDepth11GraphPathProducer_trace_005
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_005) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_005] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.zp, Face.zm], [Face.tmpp, Face.tmmp, Face.xp], (142 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0901_s0856_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.yp) =
        some ((928 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0992_s0928_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (928 : State) (smokeLabelOfFace Face.zp) =
        some ((42 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0043_s0042_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (42 : State) (smokeLabelOfFace Face.zm) =
        some ((142 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0142 Depth11Class037State0142Suffix.trace_005

private theorem split10MDepth11GraphPathProducer_trace_006
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_006) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_006] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.yp, Face.zm], [Face.tmpp, Face.tmmp, Face.xp], (142 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0902_s0856_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.zp) =
        some ((942 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1010_s0942_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (942 : State) (smokeLabelOfFace Face.yp) =
        some ((42 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0043_s0042_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (42 : State) (smokeLabelOfFace Face.zm) =
        some ((142 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0142 Depth11Class037State0142Suffix.trace_005

private theorem split10MDepth11GraphPathProducer_trace_007
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_007) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_007] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (207 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0902_s0856_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.zp) =
        some ((942 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1011_s0942_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (942 : State) (smokeLabelOfFace Face.zm) =
        some ((76 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0090_s0076_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (76 : State) (smokeLabelOfFace Face.tmmp) =
        some ((207 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0207 Depth11Class038State0207Suffix.trace_007

private theorem split10MDepth11GraphPathProducer_trace_008
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_008) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_008] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (142 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0802_s0779_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
        some ((856 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0902_s0856_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (856 : State) (smokeLabelOfFace Face.zp) =
        some ((942 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1011_s0942_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (942 : State) (smokeLabelOfFace Face.zm) =
        some ((76 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0089_s0076_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (76 : State) (smokeLabelOfFace Face.yp) =
        some ((142 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0142 Depth11Class037State0142Suffix.trace_005

private theorem split10MDepth11GraphPathProducer_trace_009
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_009) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_009] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (208 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0801_s0779_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.zp) =
        some ((851 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0893_s0851_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (851 : State) (smokeLabelOfFace Face.zm) =
        some ((931 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0998_s0931_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (931 : State) (smokeLabelOfFace Face.tpmp) =
        some ((77 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0092_s0077_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (77 : State) (smokeLabelOfFace Face.tmmp) =
        some ((208 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0208 Depth11Class038State0208Suffix.trace_009

private theorem split10MDepth11GraphPathProducer_trace_010
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_010) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_010] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (143 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0719_s0716_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
        some ((779 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0801_s0779_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (779 : State) (smokeLabelOfFace Face.zp) =
        some ((851 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0893_s0851_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (851 : State) (smokeLabelOfFace Face.zm) =
        some ((931 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0998_s0931_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (931 : State) (smokeLabelOfFace Face.tpmp) =
        some ((77 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0091_s0077_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (77 : State) (smokeLabelOfFace Face.yp) =
        some ((143 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0143 Depth11Class037State0143Suffix.trace_010

private theorem split10MDepth11GraphPathProducer_trace_011
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_011) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_011] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (209 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0718_s0716_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.zp) =
        some ((777 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0799_s0777_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (777 : State) (smokeLabelOfFace Face.zm) =
        some ((845 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0887_s0845_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (845 : State) (smokeLabelOfFace Face.tmmm) =
        some ((932 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0999_s0932_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (932 : State) (smokeLabelOfFace Face.tpmp) =
        some ((78 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0094_s0078_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (78 : State) (smokeLabelOfFace Face.tmmp) =
        some ((209 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0209 Depth11Class038State0209Suffix.trace_011

private theorem split10MDepth11GraphPathProducer_trace_012
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_012) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_012] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (144 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0651_s0667_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
        some ((716 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0718_s0716_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (716 : State) (smokeLabelOfFace Face.zp) =
        some ((777 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0799_s0777_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (777 : State) (smokeLabelOfFace Face.zm) =
        some ((845 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0887_s0845_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (845 : State) (smokeLabelOfFace Face.tmmm) =
        some ((932 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0999_s0932_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (932 : State) (smokeLabelOfFace Face.tpmp) =
        some ((78 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0093_s0078_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (78 : State) (smokeLabelOfFace Face.yp) =
        some ((144 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0144 Depth11Class037State0144Suffix.trace_012

private theorem split10MDepth11GraphPathProducer_trace_013
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_013) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_013] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (210 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0650_s0667_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.zp) =
        some ((714 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0715_s0714_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (714 : State) (smokeLabelOfFace Face.zm) =
        some ((769 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0789_s0769_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (769 : State) (smokeLabelOfFace Face.tppp) =
        some ((846 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0888_s0846_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (846 : State) (smokeLabelOfFace Face.tmmm) =
        some ((933 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1000_s0933_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (933 : State) (smokeLabelOfFace Face.tpmp) =
        some ((79 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0096_s0079_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (79 : State) (smokeLabelOfFace Face.tmmp) =
        some ((210 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0210 Depth11Class038State0210Suffix.trace_013

private theorem split10MDepth11GraphPathProducer_trace_014
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_014) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_014] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (145 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0596_s0635_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
        some ((667 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0650_s0667_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (667 : State) (smokeLabelOfFace Face.zp) =
        some ((714 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0715_s0714_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (714 : State) (smokeLabelOfFace Face.zm) =
        some ((769 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0789_s0769_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (769 : State) (smokeLabelOfFace Face.tppp) =
        some ((846 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0888_s0846_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (846 : State) (smokeLabelOfFace Face.tmmm) =
        some ((933 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1000_s0933_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (933 : State) (smokeLabelOfFace Face.tpmp) =
        some ((79 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0095_s0079_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (79 : State) (smokeLabelOfFace Face.yp) =
        some ((145 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0145 Depth11Class037State0145Suffix.trace_014

private theorem split10MDepth11GraphPathProducer_trace_015
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_015) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_015] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (211 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0595_s0635_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.zp) =
        some ((664 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0645_s0664_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (664 : State) (smokeLabelOfFace Face.zm) =
        some ((704 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0703_s0704_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (704 : State) (smokeLabelOfFace Face.tpmm) =
        some ((770 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0790_s0770_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (770 : State) (smokeLabelOfFace Face.tppp) =
        some ((847 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0889_s0847_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (847 : State) (smokeLabelOfFace Face.tmmm) =
        some ((934 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1001_s0934_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (934 : State) (smokeLabelOfFace Face.tpmp) =
        some ((80 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0098_s0080_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (80 : State) (smokeLabelOfFace Face.tmmp) =
        some ((211 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0211 Depth11Class038State0211Suffix.trace_015

private theorem split10MDepth11GraphPathProducer_trace_016
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_016) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_016] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (146 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0595_s0635_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (635 : State) (smokeLabelOfFace Face.zp) =
        some ((664 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0645_s0664_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (664 : State) (smokeLabelOfFace Face.zm) =
        some ((704 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0703_s0704_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (704 : State) (smokeLabelOfFace Face.tpmm) =
        some ((770 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0790_s0770_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (770 : State) (smokeLabelOfFace Face.tppp) =
        some ((847 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0889_s0847_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (847 : State) (smokeLabelOfFace Face.tmmm) =
        some ((934 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1001_s0934_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (934 : State) (smokeLabelOfFace Face.tpmp) =
        some ((80 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0097_s0080_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (80 : State) (smokeLabelOfFace Face.yp) =
        some ((146 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0146 Depth11Class037State0146Suffix.trace_016

private theorem split10MDepth11GraphPathProducer_trace_017
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_017) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_017] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (618 : State) (smokeLabelOfFace Face.zm) =
      some ((631 : State), (114 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (147 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0589_s0631_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (631 : State) (smokeLabelOfFace Face.zp) =
        some ((657 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0635_s0657_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (657 : State) (smokeLabelOfFace Face.tppm) =
        some ((705 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0704_s0705_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (705 : State) (smokeLabelOfFace Face.tpmm) =
        some ((771 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0791_s0771_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (771 : State) (smokeLabelOfFace Face.tppp) =
        some ((848 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0890_s0848_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (848 : State) (smokeLabelOfFace Face.tmmm) =
        some ((935 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1002_s0935_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (935 : State) (smokeLabelOfFace Face.tpmp) =
        some ((81 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0099_s0081_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (81 : State) (smokeLabelOfFace Face.yp) =
        some ((147 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0147 Depth11Class037State0147Suffix.trace_017

private theorem split10MDepth11GraphPathProducer_trace_018
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_018) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_018] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp], [Face.zm, Face.zp, Face.xp], (201 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0698_s0699_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
        some ((762 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0782_s0762_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (762 : State) (smokeLabelOfFace Face.tmpm) =
        some ((839 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0881_s0839_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (839 : State) (smokeLabelOfFace Face.tppp) =
        some ((930 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0997_s0930_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (930 : State) (smokeLabelOfFace Face.tmpp) =
        some ((69 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0077_s0069_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (69 : State) (smokeLabelOfFace Face.tmmp) =
        some ((201 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class034_state0201 Depth11Class034State0201Suffix.trace_018

private theorem split10MDepth11GraphPathProducer_trace_019
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_019) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_019] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.zm], [Face.zp, Face.tmmp, Face.xp], (174 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0698_s0699_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
        some ((762 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0782_s0762_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (762 : State) (smokeLabelOfFace Face.tmpm) =
        some ((839 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0881_s0839_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (839 : State) (smokeLabelOfFace Face.tppp) =
        some ((930 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0997_s0930_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (930 : State) (smokeLabelOfFace Face.tmpp) =
        some ((69 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0076_s0069_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (69 : State) (smokeLabelOfFace Face.zm) =
        some ((174 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class036_state0174 Depth11Class036State0174Suffix.trace_019

private theorem split10MDepth11GraphPathProducer_trace_020
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_020) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_020] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.zp, Face.zm], [Face.tmpp, Face.tmmp, Face.xp], (155 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0698_s0699_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
        some ((762 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0782_s0762_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (762 : State) (smokeLabelOfFace Face.tmpm) =
        some ((839 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0881_s0839_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (839 : State) (smokeLabelOfFace Face.tppp) =
        some ((930 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0996_s0930_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (930 : State) (smokeLabelOfFace Face.zp) =
        some ((44 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0045_s0044_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (44 : State) (smokeLabelOfFace Face.zm) =
        some ((155 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0155 Depth11Class037State0155Suffix.trace_020

private theorem split10MDepth11GraphPathProducer_trace_021
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_021) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_021] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.zp, Face.zm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (154 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0698_s0699_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
        some ((762 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0782_s0762_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (762 : State) (smokeLabelOfFace Face.tmpm) =
        some ((839 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0880_s0839_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (839 : State) (smokeLabelOfFace Face.zp) =
        some ((912 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0969_s0912_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (912 : State) (smokeLabelOfFace Face.zm) =
        some ((27 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0028_s0027_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (27 : State) (smokeLabelOfFace Face.tppp) =
        some ((154 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0154 Depth11Class037State0154Suffix.trace_021

private theorem split10MDepth11GraphPathProducer_trace_022
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_022) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_022] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.zm, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (156 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0698_s0699_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
        some ((762 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0781_s0762_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (762 : State) (smokeLabelOfFace Face.zp) =
        some ((829 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0863_s0829_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (829 : State) (smokeLabelOfFace Face.zm) =
        some ((895 : State), (90 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0952_s0895_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (895 : State) (smokeLabelOfFace Face.tmpm) =
        some ((28 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0029_s0028_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (28 : State) (smokeLabelOfFace Face.tppp) =
        some ((156 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0156 Depth11Class037State0156Suffix.trace_022

private theorem split10MDepth11GraphPathProducer_trace_023
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_023) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_023] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.tppm, Face.zp, Face.zm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (157 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0631_s0654_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
        some ((699 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0697_s0699_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (699 : State) (smokeLabelOfFace Face.zp) =
        some ((755 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0770_s0755_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (755 : State) (smokeLabelOfFace Face.zm) =
        some ((809 : State), (-54 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0843_s0809_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (809 : State) (smokeLabelOfFace Face.tpmp) =
        some ((896 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0953_s0896_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (896 : State) (smokeLabelOfFace Face.tmpm) =
        some ((29 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0030_s0029_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (29 : State) (smokeLabelOfFace Face.tppp) =
        some ((157 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0157 Depth11Class037State0157Suffix.trace_023

private theorem split10MDepth11GraphPathProducer_trace_024
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_024) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_024] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tpmm, Face.zp, Face.zm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (158 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0582_s0627_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
        some ((654 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0630_s0654_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (654 : State) (smokeLabelOfFace Face.zp) =
        some ((689 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0682_s0689_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (689 : State) (smokeLabelOfFace Face.zm) =
        some ((737 : State), (-18 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0752_s0737_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (737 : State) (smokeLabelOfFace Face.tppm) =
        some ((810 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0844_s0810_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (810 : State) (smokeLabelOfFace Face.tpmp) =
        some ((897 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0954_s0897_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (897 : State) (smokeLabelOfFace Face.tmpm) =
        some ((30 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0031_s0030_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (30 : State) (smokeLabelOfFace Face.tppp) =
        some ((158 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0158 Depth11Class037State0158Suffix.trace_024

private theorem split10MDepth11GraphPathProducer_trace_025
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_025) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_025] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zm, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm], [Face.zp, Face.tmmp, Face.xp], (175 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0581_s0627_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.zm) =
        some ((648 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0621_s0648_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (648 : State) (smokeLabelOfFace Face.tpmp) =
        some ((685 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0678_s0685_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (685 : State) (smokeLabelOfFace Face.tppp) =
        some ((742 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0757_s0742_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (742 : State) (smokeLabelOfFace Face.tpmm) =
        some ((817 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0851_s0817_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (817 : State) (smokeLabelOfFace Face.tmpp) =
        some ((904 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0961_s0904_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (904 : State) (smokeLabelOfFace Face.tppm) =
        some ((48 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0049_s0048_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (48 : State) (smokeLabelOfFace Face.tmpm) =
        some ((175 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class036_state0175 Depth11Class036State0175Suffix.trace_025

private theorem split10MDepth11GraphPathProducer_trace_026
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_026) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_026] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zm, Face.zp, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (160 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0581_s0627_zm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (627 : State) (smokeLabelOfFace Face.zm) =
        some ((648 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0620_s0648_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (648 : State) (smokeLabelOfFace Face.zp) =
        some ((682 : State), (114 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0675_s0682_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (682 : State) (smokeLabelOfFace Face.tpmm) =
        some ((738 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0753_s0738_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (738 : State) (smokeLabelOfFace Face.tppm) =
        some ((812 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0846_s0812_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (812 : State) (smokeLabelOfFace Face.tpmp) =
        some ((899 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0956_s0899_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (899 : State) (smokeLabelOfFace Face.tmpm) =
        some ((32 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0033_s0032_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (32 : State) (smokeLabelOfFace Face.tppp) =
        some ((160 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0160 Depth11Class037State0160Suffix.trace_026

private theorem split10MDepth11GraphPathProducer_trace_027
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_027) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_027] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.zm) =
      some ((625 : State), (-10 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm], [Face.tmmm, Face.zp, Face.xp], (186 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0578_s0625_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (625 : State) (smokeLabelOfFace Face.tmmp) =
        some ((650 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0623_s0650_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (650 : State) (smokeLabelOfFace Face.tpmp) =
        some ((693 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0686_s0693_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (693 : State) (smokeLabelOfFace Face.tppp) =
        some ((749 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0764_s0749_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (749 : State) (smokeLabelOfFace Face.tpmm) =
        some ((831 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0865_s0831_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (831 : State) (smokeLabelOfFace Face.tmpp) =
        some ((920 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0977_s0920_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (920 : State) (smokeLabelOfFace Face.tppm) =
        some ((58 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0059_s0058_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (58 : State) (smokeLabelOfFace Face.tmpm) =
        some ((186 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class039_state0186 Depth11Class039State0186Suffix.trace_027

private theorem split10MDepth11GraphPathProducer_trace_028
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_028) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_028] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (615 : State) (smokeLabelOfFace Face.zm) =
      some ((625 : State), (-10 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (163 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0577_s0625_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (625 : State) (smokeLabelOfFace Face.zp) =
        some ((646 : State), (-10 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0617_s0646_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (646 : State) (smokeLabelOfFace Face.tmmm) =
        some ((683 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0676_s0683_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (683 : State) (smokeLabelOfFace Face.tpmm) =
        some ((740 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0755_s0740_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (740 : State) (smokeLabelOfFace Face.tppm) =
        some ((814 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0848_s0814_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (814 : State) (smokeLabelOfFace Face.tpmp) =
        some ((901 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0958_s0901_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (901 : State) (smokeLabelOfFace Face.tmpm) =
        some ((34 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0035_s0034_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (34 : State) (smokeLabelOfFace Face.tppp) =
        some ((163 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0163 Depth11Class037State0163Suffix.trace_028

private theorem split10MDepth11GraphPathProducer_trace_029
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_029) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_029] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.tmpp) =
      some ((632 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm], [Face.yp, Face.zp, Face.xp], (228 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0590_s0632_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (632 : State) (smokeLabelOfFace Face.tppp) =
        some ((662 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0643_s0662_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (662 : State) (smokeLabelOfFace Face.tpmp) =
        some ((713 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0714_s0713_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (713 : State) (smokeLabelOfFace Face.tppm) =
        some ((778 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0800_s0778_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (778 : State) (smokeLabelOfFace Face.tmmp) =
        some ((852 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0894_s0852_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (852 : State) (smokeLabelOfFace Face.tpmm) =
        some ((945 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1016_s0945_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (945 : State) (smokeLabelOfFace Face.tmmm) =
        some ((85 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0105_s0085_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (85 : State) (smokeLabelOfFace Face.tmpm) =
        some ((228 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class035_state0228 Depth11Class035State0228Suffix.trace_029

private theorem split10MDepth11GraphPathProducer_trace_030
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_030) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_030] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.tmpp) =
      some ((632 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm], [Face.zp, Face.yp, Face.xp], (228 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0590_s0632_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (632 : State) (smokeLabelOfFace Face.tppp) =
        some ((662 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0643_s0662_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (662 : State) (smokeLabelOfFace Face.tpmp) =
        some ((713 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0714_s0713_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (713 : State) (smokeLabelOfFace Face.tppm) =
        some ((778 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0800_s0778_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (778 : State) (smokeLabelOfFace Face.tmmp) =
        some ((852 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0894_s0852_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (852 : State) (smokeLabelOfFace Face.tpmm) =
        some ((945 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1016_s0945_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (945 : State) (smokeLabelOfFace Face.tmmm) =
        some ((85 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0105_s0085_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (85 : State) (smokeLabelOfFace Face.tmpm) =
        some ((228 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class035_state0228 Depth11Class035State0228Suffix.trace_030

private theorem split10MDepth11GraphPathProducer_trace_031
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_031) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_031] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.tmpp) =
      some ((632 : State), (-124 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.yp, Face.tmpm], [Face.tmmm, Face.zp, Face.xp], (185 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0590_s0632_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (632 : State) (smokeLabelOfFace Face.tppp) =
        some ((662 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0643_s0662_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (662 : State) (smokeLabelOfFace Face.tpmp) =
        some ((713 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0714_s0713_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (713 : State) (smokeLabelOfFace Face.tppm) =
        some ((778 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0800_s0778_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (778 : State) (smokeLabelOfFace Face.tmmp) =
        some ((852 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0894_s0852_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (852 : State) (smokeLabelOfFace Face.tpmm) =
        some ((945 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1015_s0945_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (945 : State) (smokeLabelOfFace Face.yp) =
        some ((57 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0058_s0057_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (57 : State) (smokeLabelOfFace Face.tmpm) =
        some ((185 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class039_state0185 Depth11Class039State0185Suffix.trace_031

private theorem split10MDepth11GraphPathProducer_trace_032
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_032) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_032] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.yp) =
      some ((625 : State), (-73 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm], [Face.tmmm, Face.zp, Face.xp], (186 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0578_s0625_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (625 : State) (smokeLabelOfFace Face.tmmp) =
        some ((650 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0623_s0650_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (650 : State) (smokeLabelOfFace Face.tpmp) =
        some ((693 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0686_s0693_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (693 : State) (smokeLabelOfFace Face.tppp) =
        some ((749 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0764_s0749_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (749 : State) (smokeLabelOfFace Face.tpmm) =
        some ((831 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0865_s0831_tmpp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (831 : State) (smokeLabelOfFace Face.tmpp) =
        some ((920 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0977_s0920_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (920 : State) (smokeLabelOfFace Face.tppm) =
        some ((58 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0059_s0058_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (58 : State) (smokeLabelOfFace Face.tmpm) =
        some ((186 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class039_state0186 Depth11Class039State0186Suffix.trace_027

private theorem split10MDepth11GraphPathProducer_trace_033
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_033) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_033] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.yp) =
      some ((625 : State), (-73 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (163 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0577_s0625_zp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (625 : State) (smokeLabelOfFace Face.zp) =
        some ((646 : State), (-10 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0617_s0646_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (646 : State) (smokeLabelOfFace Face.tmmm) =
        some ((683 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0676_s0683_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (683 : State) (smokeLabelOfFace Face.tpmm) =
        some ((740 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0755_s0740_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (740 : State) (smokeLabelOfFace Face.tppm) =
        some ((814 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0848_s0814_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (814 : State) (smokeLabelOfFace Face.tpmp) =
        some ((901 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0958_s0901_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (901 : State) (smokeLabelOfFace Face.tmpm) =
        some ((34 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0035_s0034_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (34 : State) (smokeLabelOfFace Face.tppp) =
        some ((163 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0163 Depth11Class037State0163Suffix.trace_028

private theorem split10MDepth11GraphPathProducer_trace_034
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_034) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_034] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.zp) =
      some ((628 : State), (-10 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp], [Face.tmpp, Face.yp, Face.xp], (213 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0584_s0628_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (628 : State) (smokeLabelOfFace Face.tmpm) =
        some ((658 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0636_s0658_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (658 : State) (smokeLabelOfFace Face.tppm) =
        some ((706 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0705_s0706_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (706 : State) (smokeLabelOfFace Face.tpmm) =
        some ((772 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0792_s0772_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (772 : State) (smokeLabelOfFace Face.tppp) =
        some ((850 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0892_s0850_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (850 : State) (smokeLabelOfFace Face.tmmm) =
        some ((936 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1003_s0936_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (936 : State) (smokeLabelOfFace Face.tpmp) =
        some ((83 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0103_s0083_tmmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (83 : State) (smokeLabelOfFace Face.tmmp) =
        some ((213 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class038_state0213 Depth11Class038State0213Suffix.trace_034

private theorem split10MDepth11GraphPathProducer_trace_035
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_035) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_035] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.zp) =
      some ((628 : State), (-10 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp], [Face.tmpp, Face.tmmp, Face.xp], (161 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0584_s0628_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (628 : State) (smokeLabelOfFace Face.tmpm) =
        some ((658 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0636_s0658_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (658 : State) (smokeLabelOfFace Face.tppm) =
        some ((706 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0705_s0706_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (706 : State) (smokeLabelOfFace Face.tpmm) =
        some ((772 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0792_s0772_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (772 : State) (smokeLabelOfFace Face.tppp) =
        some ((850 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0892_s0850_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (850 : State) (smokeLabelOfFace Face.tmmm) =
        some ((936 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_1003_s0936_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (936 : State) (smokeLabelOfFace Face.tpmp) =
        some ((83 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0102_s0083_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (83 : State) (smokeLabelOfFace Face.yp) =
        some ((161 : State), (-117 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0161 Depth11Class037State0161Suffix.trace_035

private theorem split10MDepth11GraphPathProducer_trace_036
    {rank : Fin numPairWords}
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_036) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels _hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rw [htrace] at hlabels
  cases face₀ <;> cases face₁ <;>
    simp [acceptedFaceTrace_036] at hlabels
  rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) by rfl] at hgraph₁
  cases hgraph₁
  rw [show graphSmokeNext (616 : State) (smokeLabelOfFace Face.zp) =
      some ((628 : State), (-10 : Int)) by rfl] at hgraph₂
  cases hgraph₂
  refine ⟨[Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp], [Face.tmpp, Face.tmmp, Face.xp], (163 : State), ?_, ?_, ?_⟩
  · simpa using hlabels.symm
  ·
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0583_s0628_yp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (628 : State) (smokeLabelOfFace Face.yp) =
        some ((646 : State), (-73 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0617_s0646_tmmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (646 : State) (smokeLabelOfFace Face.tmmm) =
        some ((683 : State), (-124 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0676_s0683_tpmm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (683 : State) (smokeLabelOfFace Face.tpmm) =
        some ((740 : State), (96 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0755_s0740_tppm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (740 : State) (smokeLabelOfFace Face.tppm) =
        some ((814 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0848_s0814_tpmp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (814 : State) (smokeLabelOfFace Face.tpmp) =
        some ((901 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0958_s0901_tmpm ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (901 : State) (smokeLabelOfFace Face.tmpm) =
        some ((34 : State), (-144 : Int)) by rfl] at hnext
    cases hnext
    refine GraphPathTo.graph
      StrengthenedBranchTable.graph_0035_s0034_tppp ?_
    intro graphNext gain hnext
    rw [show graphSmokeNext (34 : State) (smokeLabelOfFace Face.tppp) =
        some ((163 : State), (-36 : Int)) by rfl] at hnext
    cases hnext
    exact GraphPathTo.nil _
  ·
    exact Depth11ObservedGraphStateSuffixOk.class037_state0163 Depth11Class037State0163Suffix.trace_028

theorem split10MDepth11GraphPathProducer_of_graphAcceptedTraceLabels
    {rank : Fin numPairWords}
    (haccepted : GraphAcceptedTraceLabels (topPairingRankFaceLabels rank)) :
    Split10MDepth11GraphPathProducer rank := by
  unfold GraphAcceptedTraceLabels at haccepted
  rcases haccepted with h000 | h001 | h002 | h003 | h004 | h005 | h006 | h007 | h008 | h009 | h010 | h011 | h012 | h013 | h014 | h015 | h016 | h017 | h018 | h019 | h020 | h021 | h022 | h023 | h024 | h025 | h026 | h027 | h028 | h029 | h030 | h031 | h032 | h033 | h034 | h035 | h036
  · exact split10MDepth11GraphPathProducer_trace_000 h000
  · exact split10MDepth11GraphPathProducer_trace_001 h001
  · exact split10MDepth11GraphPathProducer_trace_002 h002
  · exact split10MDepth11GraphPathProducer_trace_003 h003
  · exact split10MDepth11GraphPathProducer_trace_004 h004
  · exact split10MDepth11GraphPathProducer_trace_005 h005
  · exact split10MDepth11GraphPathProducer_trace_006 h006
  · exact split10MDepth11GraphPathProducer_trace_007 h007
  · exact split10MDepth11GraphPathProducer_trace_008 h008
  · exact split10MDepth11GraphPathProducer_trace_009 h009
  · exact split10MDepth11GraphPathProducer_trace_010 h010
  · exact split10MDepth11GraphPathProducer_trace_011 h011
  · exact split10MDepth11GraphPathProducer_trace_012 h012
  · exact split10MDepth11GraphPathProducer_trace_013 h013
  · exact split10MDepth11GraphPathProducer_trace_014 h014
  · exact split10MDepth11GraphPathProducer_trace_015 h015
  · exact split10MDepth11GraphPathProducer_trace_016 h016
  · exact split10MDepth11GraphPathProducer_trace_017 h017
  · exact split10MDepth11GraphPathProducer_trace_018 h018
  · exact split10MDepth11GraphPathProducer_trace_019 h019
  · exact split10MDepth11GraphPathProducer_trace_020 h020
  · exact split10MDepth11GraphPathProducer_trace_021 h021
  · exact split10MDepth11GraphPathProducer_trace_022 h022
  · exact split10MDepth11GraphPathProducer_trace_023 h023
  · exact split10MDepth11GraphPathProducer_trace_024 h024
  · exact split10MDepth11GraphPathProducer_trace_025 h025
  · exact split10MDepth11GraphPathProducer_trace_026 h026
  · exact split10MDepth11GraphPathProducer_trace_027 h027
  · exact split10MDepth11GraphPathProducer_trace_028 h028
  · exact split10MDepth11GraphPathProducer_trace_029 h029
  · exact split10MDepth11GraphPathProducer_trace_030 h030
  · exact split10MDepth11GraphPathProducer_trace_031 h031
  · exact split10MDepth11GraphPathProducer_trace_032 h032
  · exact split10MDepth11GraphPathProducer_trace_033 h033
  · exact split10MDepth11GraphPathProducer_trace_034 h034
  · exact split10MDepth11GraphPathProducer_trace_035 h035
  · exact split10MDepth11GraphPathProducer_trace_036 h036

theorem graphAcceptedDepth11ProducerBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedDepth11ProducerBridge
