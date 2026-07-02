import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

/-!
Generated depth-11 graph-state suffix socket for top-pairing Bellman.

This module is the reusable bridge shape for the next semantic
state-machine producer.  It does not prove that a closed rank reaches a
depth-11 state; instead it states exactly what such a producer must
return: a graph path from the split-10M prefix frontier to a depth-11
graph state, plus one of the checked depth-11 graph-state suffix
predicates.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke

/-- Graph branch-table path with an explicit final graph state. -/
inductive GraphPathTo (rank : Fin numPairWords) :
    State -> List Face -> State -> Prop
  | nil (graph : State) : GraphPathTo rank graph [] graph
  | graph {graph : State} {face : Face} {rest : List Face}
      {final : State}
      (hbranch : StrengthenedBranchTable graph face BranchKind.graph)
      (hrest :
        ∀ graphNext gain,
          graphSmokeNext graph (smokeLabelOfFace face) =
            some (graphNext, gain) ->
          GraphPathTo rank graphNext rest final) :
      GraphPathTo rank graph (face :: rest) final

/-- The checked depth-11 suffix predicates, indexed by graph state. -/
inductive Depth11ObservedGraphStateSuffixOk : State -> List Face -> Prop
  | class034_state0197 {rest : List Face} (h : Depth11Class034State0197Suffix rest) : Depth11ObservedGraphStateSuffixOk (197 : State) rest
  | class034_state0198 {rest : List Face} (h : Depth11Class034State0198Suffix rest) : Depth11ObservedGraphStateSuffixOk (198 : State) rest
  | class034_state0201 {rest : List Face} (h : Depth11Class034State0201Suffix rest) : Depth11ObservedGraphStateSuffixOk (201 : State) rest
  | class035_state0227 {rest : List Face} (h : Depth11Class035State0227Suffix rest) : Depth11ObservedGraphStateSuffixOk (227 : State) rest
  | class035_state0228 {rest : List Face} (h : Depth11Class035State0228Suffix rest) : Depth11ObservedGraphStateSuffixOk (228 : State) rest
  | class036_state0172 {rest : List Face} (h : Depth11Class036State0172Suffix rest) : Depth11ObservedGraphStateSuffixOk (172 : State) rest
  | class036_state0174 {rest : List Face} (h : Depth11Class036State0174Suffix rest) : Depth11ObservedGraphStateSuffixOk (174 : State) rest
  | class036_state0175 {rest : List Face} (h : Depth11Class036State0175Suffix rest) : Depth11ObservedGraphStateSuffixOk (175 : State) rest
  | class037_state0142 {rest : List Face} (h : Depth11Class037State0142Suffix rest) : Depth11ObservedGraphStateSuffixOk (142 : State) rest
  | class037_state0143 {rest : List Face} (h : Depth11Class037State0143Suffix rest) : Depth11ObservedGraphStateSuffixOk (143 : State) rest
  | class037_state0144 {rest : List Face} (h : Depth11Class037State0144Suffix rest) : Depth11ObservedGraphStateSuffixOk (144 : State) rest
  | class037_state0145 {rest : List Face} (h : Depth11Class037State0145Suffix rest) : Depth11ObservedGraphStateSuffixOk (145 : State) rest
  | class037_state0146 {rest : List Face} (h : Depth11Class037State0146Suffix rest) : Depth11ObservedGraphStateSuffixOk (146 : State) rest
  | class037_state0147 {rest : List Face} (h : Depth11Class037State0147Suffix rest) : Depth11ObservedGraphStateSuffixOk (147 : State) rest
  | class037_state0154 {rest : List Face} (h : Depth11Class037State0154Suffix rest) : Depth11ObservedGraphStateSuffixOk (154 : State) rest
  | class037_state0155 {rest : List Face} (h : Depth11Class037State0155Suffix rest) : Depth11ObservedGraphStateSuffixOk (155 : State) rest
  | class037_state0156 {rest : List Face} (h : Depth11Class037State0156Suffix rest) : Depth11ObservedGraphStateSuffixOk (156 : State) rest
  | class037_state0157 {rest : List Face} (h : Depth11Class037State0157Suffix rest) : Depth11ObservedGraphStateSuffixOk (157 : State) rest
  | class037_state0158 {rest : List Face} (h : Depth11Class037State0158Suffix rest) : Depth11ObservedGraphStateSuffixOk (158 : State) rest
  | class037_state0160 {rest : List Face} (h : Depth11Class037State0160Suffix rest) : Depth11ObservedGraphStateSuffixOk (160 : State) rest
  | class037_state0161 {rest : List Face} (h : Depth11Class037State0161Suffix rest) : Depth11ObservedGraphStateSuffixOk (161 : State) rest
  | class037_state0163 {rest : List Face} (h : Depth11Class037State0163Suffix rest) : Depth11ObservedGraphStateSuffixOk (163 : State) rest
  | class038_state0207 {rest : List Face} (h : Depth11Class038State0207Suffix rest) : Depth11ObservedGraphStateSuffixOk (207 : State) rest
  | class038_state0208 {rest : List Face} (h : Depth11Class038State0208Suffix rest) : Depth11ObservedGraphStateSuffixOk (208 : State) rest
  | class038_state0209 {rest : List Face} (h : Depth11Class038State0209Suffix rest) : Depth11ObservedGraphStateSuffixOk (209 : State) rest
  | class038_state0210 {rest : List Face} (h : Depth11Class038State0210Suffix rest) : Depth11ObservedGraphStateSuffixOk (210 : State) rest
  | class038_state0211 {rest : List Face} (h : Depth11Class038State0211Suffix rest) : Depth11ObservedGraphStateSuffixOk (211 : State) rest
  | class038_state0213 {rest : List Face} (h : Depth11Class038State0213Suffix rest) : Depth11ObservedGraphStateSuffixOk (213 : State) rest
  | class039_state0185 {rest : List Face} (h : Depth11Class039State0185Suffix rest) : Depth11ObservedGraphStateSuffixOk (185 : State) rest
  | class039_state0186 {rest : List Face} (h : Depth11Class039State0186Suffix rest) : Depth11ObservedGraphStateSuffixOk (186 : State) rest

def depth11ObservedGraphStateSuffixProviderCount : Nat := 30

theorem depth11ObservedGraphStateSuffixProviderCount_audit :
    depth11ObservedGraphStateSuffixProviderCount = 30 := by
  decide

theorem graphBranchTableSuffixOk_of_depth11Observed
    {rank : Fin numPairWords} {graph : State} {rest : List Face}
    (h : Depth11ObservedGraphStateSuffixOk graph rest) :
    GraphBranchTableSuffixOk rank graph rest := by
  cases h with
  | class034_state0197 h => exact graphBranchTableSuffixOk_class034_state0197 h
  | class034_state0198 h => exact graphBranchTableSuffixOk_class034_state0198 h
  | class034_state0201 h => exact graphBranchTableSuffixOk_class034_state0201 h
  | class035_state0227 h => exact graphBranchTableSuffixOk_class035_state0227 h
  | class035_state0228 h => exact graphBranchTableSuffixOk_class035_state0228 h
  | class036_state0172 h => exact graphBranchTableSuffixOk_class036_state0172 h
  | class036_state0174 h => exact graphBranchTableSuffixOk_class036_state0174 h
  | class036_state0175 h => exact graphBranchTableSuffixOk_class036_state0175 h
  | class037_state0142 h => exact graphBranchTableSuffixOk_class037_state0142 h
  | class037_state0143 h => exact graphBranchTableSuffixOk_class037_state0143 h
  | class037_state0144 h => exact graphBranchTableSuffixOk_class037_state0144 h
  | class037_state0145 h => exact graphBranchTableSuffixOk_class037_state0145 h
  | class037_state0146 h => exact graphBranchTableSuffixOk_class037_state0146 h
  | class037_state0147 h => exact graphBranchTableSuffixOk_class037_state0147 h
  | class037_state0154 h => exact graphBranchTableSuffixOk_class037_state0154 h
  | class037_state0155 h => exact graphBranchTableSuffixOk_class037_state0155 h
  | class037_state0156 h => exact graphBranchTableSuffixOk_class037_state0156 h
  | class037_state0157 h => exact graphBranchTableSuffixOk_class037_state0157 h
  | class037_state0158 h => exact graphBranchTableSuffixOk_class037_state0158 h
  | class037_state0160 h => exact graphBranchTableSuffixOk_class037_state0160 h
  | class037_state0161 h => exact graphBranchTableSuffixOk_class037_state0161 h
  | class037_state0163 h => exact graphBranchTableSuffixOk_class037_state0163 h
  | class038_state0207 h => exact graphBranchTableSuffixOk_class038_state0207 h
  | class038_state0208 h => exact graphBranchTableSuffixOk_class038_state0208 h
  | class038_state0209 h => exact graphBranchTableSuffixOk_class038_state0209 h
  | class038_state0210 h => exact graphBranchTableSuffixOk_class038_state0210 h
  | class038_state0211 h => exact graphBranchTableSuffixOk_class038_state0211 h
  | class038_state0213 h => exact graphBranchTableSuffixOk_class038_state0213 h
  | class039_state0185 h => exact graphBranchTableSuffixOk_class039_state0185 h
  | class039_state0186 h => exact graphBranchTableSuffixOk_class039_state0186 h

theorem graphBranchTableSuffixOk_of_graphPathTo_append
    {rank : Fin numPairWords} {graph mid : State}
    {pre suffix : List Face}
    (hpath : GraphPathTo rank graph pre mid)
    (hsuffix : GraphBranchTableSuffixOk rank mid suffix) :
    GraphBranchTableSuffixOk rank graph (pre ++ suffix) := by
  induction hpath with
  | nil graph =>
      simpa using hsuffix
  | graph hbranch hrest ih =>
      simp [List.cons_append]
      refine GraphBranchTableSuffixOk.graph hbranch ?_
      intro graphNext gain hgraph
      exact ih graphNext gain hgraph hsuffix

theorem graphBranchTableSuffixOk_of_graphPathTo_depth11Observed
    {rank : Fin numPairWords} {graph mid : State}
    {pre suffix : List Face}
    (hpath : GraphPathTo rank graph pre mid)
    (hsuffix : Depth11ObservedGraphStateSuffixOk mid suffix) :
    GraphBranchTableSuffixOk rank graph (pre ++ suffix) :=
  graphBranchTableSuffixOk_of_graphPathTo_append hpath
    (graphBranchTableSuffixOk_of_depth11Observed hsuffix)

/--
Production target for the semantic depth-11 bridge.

A future generated theorem should prove this predicate from
`TopPairingStrengthenedClosedLanguageAtRank` using target-cursor,
schedule, pair-count, local-axis, and tri-source state facts.  It is
not allowed to use sampled ranks or selected-prefix trace ids as the
main membership coordinate.
-/
def Split10MDepth11GraphPathProducer (rank : Fin numPairWords) : Prop :=
  ∀ face₀ face₁ rest,
    topPairingRankFaceLabels rank =
      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
    Split10MPrefix4FrontierCons2 face₀ face₁ ->
    ∀ graph₁ gain₁ graph₂ gain₂,
      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
        some (graph₁, gain₁) ->
      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
        some (graph₂, gain₂) ->
      ∃ pre suffix depth11,
        rest = pre ++ suffix ∧
          GraphPathTo rank graph₂ pre depth11 ∧
            Depth11ObservedGraphStateSuffixOk depth11 suffix

theorem split10MGraphSuffixProducer_of_depth11GraphPathProducer
    {rank : Fin numPairWords}
    (hproducer : Split10MDepth11GraphPathProducer rank) :
    Split10MGraphSuffixProducer rank := by
  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rcases hproducer face₀ face₁ rest hlabels hfrontier
      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂ with
    ⟨pre, suffix, depth11, hrest, hpath, hsuffix⟩
  subst rest
  exact graphBranchTableSuffixOk_of_graphPathTo_depth11Observed
    hpath hsuffix

theorem depth11GraphStateSuffixSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
