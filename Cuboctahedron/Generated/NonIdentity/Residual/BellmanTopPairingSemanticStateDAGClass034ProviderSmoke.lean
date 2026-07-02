import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGRepresentativeSmoke

/-!
Semantic state-DAG class-034 provider smoke.

This module plugs the representative class-034 suffix proof into the
all-family producer socket.  It is not full top-pairing coverage.  It checks
the intended production shape for one nontrivial semantic suffix class:

* the strengthened closed-language predicate carries the accepted bad-face
  filter, terminal-ok fact, a class-034 graph-suffix producer, and a final
  margin producer;
* the class-034 graph-suffix producer supplies only semantic suffix membership
  after the split-10M prefix/frontier split;
* the socket turns those fields into `StrengthenedSemanticStateDAGFamily` and
  the existing deterministic Bellman nonpositive conclusion.

No sampled rank/path index, selected-prefix cover, exact affine RHS key, or
full Bellman trace equality is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass034ProviderSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGRepresentativeSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

/--
Semantic class-034 suffix producer after the split-10M prefix/frontier split.

The predicate is rank-parametric only because the branch-table suffix theorem is
rank-parametric.  It asserts that every possible prefix-4 decomposition
selected by the strengthened terminal/frontier bridge reaches graph state
`197`, and its remaining labels lie in the class-034 semantic suffix language.
-/
def Class034GraphSuffixProducer (rank : Fin numPairWords) : Prop :=
  ∀ face₀ face₁ rest,
    topPairingRankFaceLabels rank =
      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
    Split10MPrefix4FrontierCons2 face₀ face₁ ->
    ∀ graph₁ gain₁ graph₂ gain₂,
      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
        some (graph₁, gain₁) ->
      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
        some (graph₂, gain₂) ->
      graph₂ = (197 : State) ∧ Class034Suffix rest

/--
Class-034 sequence/bad-face predicate for the provider smoke.

The final-margin producer remains a separate semantic obligation.  This smoke
only validates that a compact suffix class can supply the graph-suffix producer
field consumed by the all-family socket.
-/
def Class034SequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  AcceptedSequenceBadFaceAtRank rank badFace ∧
    TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧
      Class034GraphSuffixProducer rank ∧
        Split10MFinalMarginProducer scaledMargin rank

theorem split10MGraphSuffixProducer_of_class034
    {rank : Fin numPairWords}
    (hclass : Class034GraphSuffixProducer rank) :
    Split10MGraphSuffixProducer rank := by
  intro face₀ face₁ rest hlabels hfrontier graph₁ gain₁ graph₂ gain₂
    hgraph₁ hgraph₂
  rcases hclass face₀ face₁ rest hlabels hfrontier
      graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂ with
    ⟨hgraph₂Eq, hsuffixClass⟩
  subst graph₂
  exact graphBranchTableSuffixOk_class034 hsuffixClass

theorem semanticStateDAGFamily_of_class034
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (Class034SequenceBadFace scaledMargin) rank Face.ym) :
    StrengthenedSemanticStateDAGFamily scaledMargin rank := by
  rcases hstrengthened.sequenceBadFace_ok with
    ⟨hbad, hterminal, hclass, hfinalMargin⟩
  refine
    { strengthened :=
        TopPairingStrengthenedClosedLanguageAtRank.ofComponents
          hstrengthened.closed hstrengthened.actualFaceOmni hbad
      terminalOk := hterminal
      graphSuffix := split10MGraphSuffixProducer_of_class034 hclass
      finalMargin := hfinalMargin }

theorem semanticStateDAGAllFamily_of_class034
    {scaledMargin : Fin numPairWords -> Int}
    (hclass :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
        TopPairingStrengthenedClosedLanguageAtRank
          (Class034SequenceBadFace scaledMargin) rank Face.ym) :
    StrengthenedSemanticStateDAGAllFamily scaledMargin where
  family := by
    intro rank hstrengthened
    exact semanticStateDAGFamily_of_class034 (hclass rank hstrengthened)

theorem scaledMargin_nonpos_of_class034AllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hclass :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
        TopPairingStrengthenedClosedLanguageAtRank
          (Class034SequenceBadFace scaledMargin) rank Face.ym)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_semanticStateDAGAllFamily
    (semanticStateDAGAllFamily_of_class034 hclass) hstrengthened

theorem semanticStateDAGClass034ProviderSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGClass034ProviderSmoke
