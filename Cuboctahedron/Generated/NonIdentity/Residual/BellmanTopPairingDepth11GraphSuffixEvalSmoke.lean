import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke

/-!
Depth-11 graph suffix eval smoke for top-pairing Bellman.

This module checks the next local ingredient for graph-exact final-margin
families: a semantic depth-11 suffix class determines the Bellman graph
evaluator result for that suffix.  It deliberately proves only class `034` as
the first small slice.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke

/--
Exact graph-evaluator finish for a class-034 depth-11 suffix.

The start graph is the graph state reached after the split prefix; the suffix
labels are the remaining face labels.  The result records only Bellman graph
state and gain, which is the coordinate consumed by the graph-exact
final-margin socket.
-/
def Class034Depth11GraphFinish
    (graph : State) (rest : List Face)
    (finalGraph : State) (suffixGain : Int) : Prop :=
  (graph = (197 : State) ∧
    Depth11Class034State0197Suffix rest ∧
    finalGraph = (558 : State) ∧ suffixGain = (-93 : Int)) ∨
  (graph = (198 : State) ∧
    Depth11Class034State0198Suffix rest ∧
    finalGraph = (559 : State) ∧ suffixGain = (-93 : Int)) ∨
  (graph = (201 : State) ∧
    Depth11Class034State0201Suffix rest ∧
    finalGraph = (590 : State) ∧ suffixGain = (-93 : Int))

theorem class034Depth11GraphFinish_of_suffix
    {graph : State} {rest : List Face}
    (hclass : Class034Depth11Suffix graph rest) :
    ∃ finalGraph suffixGain,
      Class034Depth11GraphFinish graph rest finalGraph suffixGain := by
  rcases hclass with hstate0197 | htail
  · rcases hstate0197 with ⟨hgraph, hsuffix⟩
    exact ⟨(558 : State), (-93 : Int),
      Or.inl ⟨hgraph, hsuffix, rfl, rfl⟩⟩
  rcases htail with hstate0198 | hstate0201
  · rcases hstate0198 with ⟨hgraph, hsuffix⟩
    exact ⟨(559 : State), (-93 : Int),
      Or.inr (Or.inl ⟨hgraph, hsuffix, rfl, rfl⟩)⟩
  · rcases hstate0201 with ⟨hgraph, hsuffix⟩
    exact ⟨(590 : State), (-93 : Int),
      Or.inr (Or.inr ⟨hgraph, hsuffix, rfl, rfl⟩)⟩

theorem graphEval_of_class034Depth11GraphFinish
    {graph : State} {rest : List Face}
    {finalGraph : State} {suffixGain : Int}
    (hfinish :
      Class034Depth11GraphFinish graph rest finalGraph suffixGain) :
    evalLabelStepFn graphSmokeNext graph (rest.map smokeLabelOfFace) =
      some (finalGraph, suffixGain) := by
  rcases hfinish with hstate0197 | htail
  · rcases hstate0197 with ⟨hgraph, hsuffix, hfinal, hgain⟩
    subst graph
    subst finalGraph
    subst suffixGain
    cases hsuffix
    rfl
  rcases htail with hstate0198 | hstate0201
  · rcases hstate0198 with ⟨hgraph, hsuffix, hfinal, hgain⟩
    subst graph
    subst finalGraph
    subst suffixGain
    cases hsuffix
    rfl
  · rcases hstate0201 with ⟨hgraph, hsuffix, hfinal, hgain⟩
    subst graph
    subst finalGraph
    subst suffixGain
    cases hsuffix
    rfl

theorem graphEval_exists_of_class034Depth11Suffix
    {graph : State} {rest : List Face}
    (hclass : Class034Depth11Suffix graph rest) :
    ∃ finalGraph suffixGain,
      evalLabelStepFn graphSmokeNext graph (rest.map smokeLabelOfFace) =
        some (finalGraph, suffixGain) := by
  rcases class034Depth11GraphFinish_of_suffix hclass with
    ⟨finalGraph, suffixGain, hfinish⟩
  exact ⟨finalGraph, suffixGain,
    graphEval_of_class034Depth11GraphFinish hfinish⟩

theorem depth11GraphSuffixEvalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke
