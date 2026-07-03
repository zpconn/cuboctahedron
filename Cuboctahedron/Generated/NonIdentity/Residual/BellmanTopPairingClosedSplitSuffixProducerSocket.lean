import Cuboctahedron.Search.TopPairingTransducerSemanticGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke

/-!
Closed split-suffix producer socket for the top-pairing Bellman route.

This file factors the newer closed-language theorem boundary out of the
class-specific smoke modules.  A generated suffix family should prove:

* the rank is in the plain closed top-pairing language;
* the split-10M graph suffix producer holds after the deterministic
  prefix/frontier split;
* the final margin producer holds.

The socket then supplies the Bellman eval-language theorem and the
nonpositive scaled-margin conclusion.  It deliberately avoids strengthened
accepted-sequence predicates, terminal trace ids, sampled ranks, selected
prefix covers, and exact affine keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke

/--
Rank-local closed-language producer obligation for the split-10M Bellman graph.

This is the smallest semantic package currently needed by the closed-only
frontier bridge.  Future generated suffix-class modules can target this socket
directly after proving their class-specific graph suffix and final margin
facts.
-/
structure ClosedSplit10MSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank Face.ym
  graphSuffix :
    Split10MGraphSuffixProducer rank
  finalMargin :
    Split10MFinalMarginProducer scaledMargin rank

theorem evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : ClosedSplit10MSuffixMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MGraphSuffixProducer
    hfamily.closed hfamily.graphSuffix hfamily.finalMargin

theorem scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : ClosedSplit10MSuffixMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 := by
  have hevalLanguage :=
    evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily hfamily
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

/--
All-rank closed-language producer obligation for generated suffix coverage.

This theorem surface is intentionally semantic: the input predicate should be
proved from the closed holonomy/cancellation language plus a deterministic
suffix-class recognizer, not from sampled traces.
-/
structure ClosedSplit10MSuffixMarginAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ClosedSplit10MSuffixMarginFamily scaledMargin rank

theorem closedToEvalGate_of_closedSplit10MSuffixMarginAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : ClosedSplit10MSuffixMarginAllFamily scaledMargin) :
    TopPairingClosedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin Face.ym := by
  intro rank hclosed
  exact evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (hfamily.family rank hclosed)

theorem scaledMargin_nonpos_of_closedSplit10MSuffixMarginAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : ClosedSplit10MSuffixMarginAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (hfamily.family rank hclosed)

theorem closedSplitSuffixProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket
