import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke

/-!
Closed-only semantic state-DAG class-035 provider smoke.

This module checks a second split-suffix class against the reusable
`ClosedSplit10MSuffixMarginFamily` socket.  Unlike the class-034 smoke, this
class has two possible depth-11 graph states, so the provider surface exercises
a small semantic disjunction without using graph-accepted trace ids, selected
prefixes, sampled ranks, or exact affine keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035ProviderSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke

/--
Semantic class-035 suffix producer after the split-10M prefix/frontier split.

The class may reach depth-11 graph state `227` or `228`; each branch is
certified by the corresponding depth-11 suffix predicate.  This is still a
rank-parametric predicate because the final generated family theorem will need
to prove it from semantic closed-language state, but the proof payload here is
only a small graph-state suffix disjunction.
-/
def Class035GraphSuffixProducer (rank : Fin numPairWords) : Prop :=
  ∀ face₀ face₁ rest,
    topPairingRankFaceLabels rank =
      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
    Split10MPrefix4FrontierCons2 face₀ face₁ ->
    ∀ graph₁ gain₁ graph₂ gain₂,
      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
        some (graph₁, gain₁) ->
      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
        some (graph₂, gain₂) ->
      (graph₂ = (227 : State) ∧ Depth11Class035State0227Suffix rest) ∨
        (graph₂ = (228 : State) ∧ Depth11Class035State0228Suffix rest)

theorem split10MGraphSuffixProducer_of_class035
    {rank : Fin numPairWords}
    (hclass : Class035GraphSuffixProducer rank) :
    Split10MGraphSuffixProducer rank := by
  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rcases hclass face₀ face₁ rest hlabels hfrontier
      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂ with
    hstate227 | hstate228
  · rcases hstate227 with ⟨hgraph₂Eq, hsuffixClass⟩
    subst graph₂
    exact graphBranchTableSuffixOk_class035_state0227 hsuffixClass
  · rcases hstate228 with ⟨hgraph₂Eq, hsuffixClass⟩
    subst graph₂
    exact graphBranchTableSuffixOk_class035_state0228 hsuffixClass

/--
Closed-only class-035 family predicate for the split-suffix socket.

The final-margin producer remains separate because this smoke is only checking
the graph-suffix class conversion.  A production emitter should generate both
the suffix class proof and the final margin producer from the same semantic
family.
-/
def ClosedClass035GraphSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym ∧
    Class035GraphSuffixProducer rank ∧
      Split10MFinalMarginProducer scaledMargin rank

theorem closedSplit10MSuffixMarginFamily_of_class035
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphSuffixMarginFamily scaledMargin rank) :
    ClosedSplit10MSuffixMarginFamily scaledMargin rank := by
  rcases hfamily with ⟨hclosed, hclass, hfinish⟩
  exact
    { closed := hclosed
      graphSuffix := split10MGraphSuffixProducer_of_class035 hclass
      finalMargin := hfinish }

theorem evalLanguageAtRank_of_closedClass035Family
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphSuffixMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_class035 hfamily)

theorem scaledMargin_nonpos_of_closedClass035Family
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      ClosedClass035GraphSuffixMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_class035 hfamily)

theorem semanticStateDAGClass035ProviderSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass035ProviderSmoke
