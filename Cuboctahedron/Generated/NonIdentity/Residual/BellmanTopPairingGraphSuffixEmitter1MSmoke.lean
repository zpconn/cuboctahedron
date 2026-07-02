import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke

/-!
Graph-suffix emitter smoke for the strengthened 1M top-pairing Bellman graph.

The accepted branch-table suffix bridge can consume a graph-indexed suffix
object and convert it to the heavier semantic evaluator suffix.  This module
checks the next generated-object shape directly over graph states: after the
Lean-proved `xm, ym` root prefix, emit `GraphBranchTableSuffixOk` evidence
from graph ids and finite branch-table constructors, without calling the old
full semantic `faceEvalNext` branch theorems.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSuffixEmitter1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke

theorem graphBranchTableSuffixOk_s0144_branch_of_frontier
    {rank : Fin numPairWords} {face : Face} {rest : List Face}
    (hface : face = Face.tmmm ∨ face = Face.zm)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (144 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (144 : State) (face :: rest) := by
  rcases hface with rfl | rfl
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_129_s0144_tmmm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_128_s0144_zm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph

theorem graphBranchTableSuffixOk_s0145_branch_of_frontier
    {rank : Fin numPairWords} {face : Face} {rest : List Face}
    (hface : face = Face.tmpp ∨ face = Face.yp ∨ face = Face.zp)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (145 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (145 : State) (face :: rest) := by
  rcases hface with rfl | rfl | rfl
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_132_s0145_tmpp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_130_s0145_yp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_131_s0145_zp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph

theorem graphBranchTableSuffixOk_s0146_branch_of_frontier
    {rank : Fin numPairWords} {face : Face} {rest : List Face}
    (hface : face = Face.tppm ∨ face = Face.zm)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (146 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (146 : State) (face :: rest) := by
  rcases hface with rfl | rfl
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_134_s0146_tppm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_133_s0146_zm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph

theorem graphBranchTableSuffixOk_s0143_depth2_of_frontier
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hfrontier :
      (face₀ = Face.tmpm ∧ (face₁ = Face.tppm ∨ face₁ = Face.zm)) ∨
      (face₀ = Face.yp ∧ (face₁ = Face.tmmm ∨ face₁ = Face.zm)) ∨
      (face₀ = Face.zm ∧
        (face₁ = Face.tmpp ∨ face₁ = Face.yp ∨ face₁ = Face.zp)))
    (hsuffix :
      ∀ graph₁ gain₁ graph₂ gain₂,
        graphSmokeNext (143 : State) (smokeLabelOfFace face₀) =
          some (graph₁, gain₁) ->
        graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
          some (graph₂, gain₂) ->
        GraphBranchTableSuffixOk rank graph₂ rest) :
    GraphBranchTableSuffixOk rank (143 : State) (face₀ :: face₁ :: rest) := by
  rcases hfrontier with htmpm | hyp | hzm
  · rcases htmpm with ⟨rfl, hface₁⟩
    refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_127_s0143_tmpm ?_
    intro graph₁ gain₁ hgraph₁
    change graphSmokeNext_s0143 (smokeLabelOfFace Face.tmpm) =
      some (graph₁, gain₁) at hgraph₁
    simp [graphSmokeNext_s0143, smokeLabelOfFace] at hgraph₁
    rcases hgraph₁ with ⟨rfl, rfl⟩
    exact graphBranchTableSuffixOk_s0146_branch_of_frontier hface₁
      (fun graph₂ gain₂ hgraph₂ =>
        hsuffix (146 : State) (-124 : Int) graph₂ gain₂ rfl hgraph₂)
  · rcases hyp with ⟨rfl, hface₁⟩
    refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_125_s0143_yp ?_
    intro graph₁ gain₁ hgraph₁
    change graphSmokeNext_s0143 (smokeLabelOfFace Face.yp) =
      some (graph₁, gain₁) at hgraph₁
    simp [graphSmokeNext_s0143, smokeLabelOfFace] at hgraph₁
    rcases hgraph₁ with ⟨rfl, rfl⟩
    exact graphBranchTableSuffixOk_s0144_branch_of_frontier hface₁
      (fun graph₂ gain₂ hgraph₂ =>
        hsuffix (144 : State) (-73 : Int) graph₂ gain₂ rfl hgraph₂)
  · rcases hzm with ⟨rfl, hface₁⟩
    refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_126_s0143_zm ?_
    intro graph₁ gain₁ hgraph₁
    change graphSmokeNext_s0143 (smokeLabelOfFace Face.zm) =
      some (graph₁, gain₁) at hgraph₁
    simp [graphSmokeNext_s0143, smokeLabelOfFace] at hgraph₁
    rcases hgraph₁ with ⟨rfl, rfl⟩
    exact graphBranchTableSuffixOk_s0145_branch_of_frontier hface₁
      (fun graph₂ gain₂ hgraph₂ =>
        hsuffix (145 : State) (-10 : Int) graph₂ gain₂ rfl hgraph₂)

theorem graphSuffixEmitter1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSuffixEmitter1MSmoke
