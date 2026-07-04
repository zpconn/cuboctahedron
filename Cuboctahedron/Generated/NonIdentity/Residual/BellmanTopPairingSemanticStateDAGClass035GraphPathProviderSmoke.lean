import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035ProviderSmoke

/-!
Class-035 graph-path provider smoke.

This module connects the existing class-035 graph-state suffix provider to the
newer `Split10MDepth11GraphPathProducer` socket.  It is intentionally tiny:
class 035 already lands directly in one of the checked depth-11 graph states,
so the graph path prefix is empty and the suffix is the whole remaining tail.

The point of this smoke is the theorem surface, not the class itself.  A
production emitter should prove the same `Split10MDepth11GraphPathProducer`
shape from closed semantic state, without selected-prefix ids, accepted trace
ids, sampled ranks, or exact affine RHS keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035GraphPathProviderSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035ProviderSmoke

/--
Class 035 as a graph-path producer.

This is the smallest nontrivial instance of the new provider boundary:
semantic class 035 has two possible depth-11 Bellman graph states, and each
state has its own checked suffix predicate.
-/
theorem split10MDepth11GraphPathProducer_of_class035
    {rank : Fin numPairWords}
    (hclass : Class035GraphSuffixProducer rank) :
    Split10MDepth11GraphPathProducer rank := by
  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rcases hclass face₀ face₁ rest hlabels hfrontier
      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂ with
    hstate227 | hstate228
  · rcases hstate227 with ⟨hgraph₂Eq, hsuffixClass⟩
    subst graph₂
    refine ⟨[], rest, (227 : State), ?_, ?_, ?_⟩
    · simp
    · exact GraphPathTo.nil (rank := rank) (227 : State)
    · exact Depth11ObservedGraphStateSuffixOk.class035_state0227 hsuffixClass
  · rcases hstate228 with ⟨hgraph₂Eq, hsuffixClass⟩
    subst graph₂
    refine ⟨[], rest, (228 : State), ?_, ?_, ?_⟩
    · simp
    · exact GraphPathTo.nil (rank := rank) (228 : State)
    · exact Depth11ObservedGraphStateSuffixOk.class035_state0228 hsuffixClass

theorem split10MGraphSuffixProducer_of_class035GraphPath
    {rank : Fin numPairWords}
    (hclass : Class035GraphSuffixProducer rank) :
    Split10MGraphSuffixProducer rank :=
  split10MGraphSuffixProducer_of_depth11GraphPathProducer
    (split10MDepth11GraphPathProducer_of_class035 hclass)

/--
Closed-only class-035 family routed through the graph-path socket.

This duplicates the old class-035 smoke consequence through the new graph-path
producer boundary, making the intended production path explicit.
-/
def ClosedClass035GraphPathMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym ∧
    Class035GraphSuffixProducer rank ∧
      Split10MFinalMarginProducer scaledMargin rank

theorem closedSplit10MSuffixMarginFamily_of_class035GraphPath
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphPathMarginFamily scaledMargin rank) :
    ClosedSplit10MSuffixMarginFamily scaledMargin rank := by
  rcases hfamily with ⟨hclosed, hclass, hfinish⟩
  exact
    { closed := hclosed
      graphSuffix := split10MGraphSuffixProducer_of_class035GraphPath hclass
      finalMargin := hfinish }

theorem evalLanguageAtRank_of_closedClass035GraphPathFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphPathMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_class035GraphPath hfamily)

theorem scaledMargin_nonpos_of_closedClass035GraphPathFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphPathMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_class035GraphPath hfamily)

theorem semanticStateDAGClass035GraphPathProviderSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035GraphPathProviderSmoke
