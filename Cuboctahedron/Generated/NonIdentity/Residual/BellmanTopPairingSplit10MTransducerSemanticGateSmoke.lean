import Cuboctahedron.Search.TopPairingTransducerSemanticGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

/-!
Split-10M transducer semantic-gate smoke.

This module verifies that the production-shaped split-10M suffix producer can
feed the generic ranked transducer semantic gate.  The theorem surface remains
semantic: generated code supplies terminal/frontier, graph-suffix, and final
margin producers for the strengthened closed language; this file packages them
as a ranked suffix predicate consumed by
`strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def Split10MSemanticSuffixOk
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (state : FaceEvalState) (suffix : List Face) : Prop :=
  ∃ _hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym,
    TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧
      Split10MGraphSuffixProducer rank ∧
        Split10MFinalMarginProducer scaledMargin rank ∧
          BranchTableSuffixOk rank state suffix

theorem split10MSemanticSuffixOk_start
    {scaledMargin : Fin numPairWords -> Int}
    (terminal :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (suffix :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MGraphSuffixProducer rank)
    (finish :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MFinalMarginProducer scaledMargin rank)
    (rank : Fin numPairWords)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    Split10MSemanticSuffixOk scaledMargin rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  refine ⟨hstrengthened, terminal rank hstrengthened,
    suffix rank hstrengthened, finish rank hstrengthened, ?_⟩
  exact graphBranchTableSuffixOk_of_strengthenedTerminalFrontier
    hstrengthened (terminal rank hstrengthened) (suffix rank hstrengthened)

theorem split10MSemanticSuffixOk_local
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : BranchInv state)
    (htail : state.Tail (face :: rest))
    (hsuffix :
      Split10MSemanticSuffixOk scaledMargin rank state (face :: rest)) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ BranchInv nextState ∧
          Split10MSemanticSuffixOk scaledMargin rank nextState rest := by
  rcases hsuffix with
    ⟨hstrengthened, hterminal, hsuffixProducer, hfinishProducer,
      hbranchSuffix⟩
  rcases branchTableSuffixOk_local hinv htail hbranchSuffix with
    ⟨nextState, gain, hnext, htailNext, hinvNext, hbranchNext⟩
  exact ⟨nextState, gain, hnext, htailNext, hinvNext,
    ⟨hstrengthened, hterminal, hsuffixProducer, hfinishProducer,
      hbranchNext⟩⟩

theorem split10MSemanticSuffixOk_finish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finish : FaceEvalState} {gain : Int}
    (heval :
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank) = some (finish, gain))
    (htail : finish.Tail [])
    (hinv : BranchInv finish)
    (hsuffix : Split10MSemanticSuffixOk scaledMargin rank finish []) :
    0 <= graphPotential finish.graph ∧
      scaledMargin rank <= (176 : Int) + gain := by
  rcases hsuffix with
    ⟨_hstrengthened, _hterminal, _hsuffixProducer, hfinishProducer,
      hbranchSuffix⟩
  exact hfinishProducer heval htail hinv hbranchSuffix

theorem strengthenedToEvalGate_of_split10MProducers
    {scaledMargin : Fin numPairWords -> Int}
    (terminal :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (suffix :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MGraphSuffixProducer rank)
    (finish :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MFinalMarginProducer scaledMargin rank) :
    TopPairingStrengthenedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin AcceptedSequenceBadFaceAtRank Face.ym :=
  strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    (V := graphPotential) (next := graphSmokeNext)
    (labelOfFace := smokeLabelOfFace) (graphStart := rootState)
    (const := (176 : Int)) (scaledMargin := scaledMargin)
    BranchInv (Split10MSemanticSuffixOk scaledMargin)
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke.start_inv
    (split10MSemanticSuffixOk_start terminal suffix finish)
    (split10MSemanticSuffixOk_local (scaledMargin := scaledMargin))
    (split10MSemanticSuffixOk_finish (scaledMargin := scaledMargin))

theorem scaledMargin_nonpos_of_split10MProducers
    {scaledMargin : Fin numPairWords -> Int}
    (terminal :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (suffix :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MGraphSuffixProducer rank)
    (finish :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MFinalMarginProducer scaledMargin rank)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLanguage :=
    strengthenedToEvalGate_of_split10MProducers
      (scaledMargin := scaledMargin) terminal suffix finish rank hstrengthened
  exact scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (hnext := by
      intro s label t gain hs hnext
      exact _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
        hs hnext)
    (hstart := split10MGraphStartInRange)
    (hroot := split10MGraphRootBound)
    (heval := hevalLanguage.eval_accepts)

theorem split10MTransducerSemanticGateSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke
