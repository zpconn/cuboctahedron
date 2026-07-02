import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSmoke

/-!
Semantic bad-face socket for the top-pairing Bellman route.

The transducer proof must not be assembled from sampled rank/path objects.  This
small module records the intended production premise instead: a strengthened
closed-language rank carries the generated sequence-bad-face classifier, and
that classifier is precisely what removes the bad-face rejected trace from the
terminal trace classifier.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingCanonicalBadFaceSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

theorem rejectedBadFaceTrace004_not_sequenceBadFace :
    ¬ SequenceBadFaceLabels rejectedGraphTrace_004 Face.ym := by
  intro hbad
  exact hbad.2 rfl

theorem strengthened_sequenceBadFaceLabels
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    SequenceBadFaceLabels (topPairingRankFaceLabels rank) Face.ym :=
  hstrengthened.sequenceBadFace_ok

theorem strengthened_notRejectedBadFaceTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    ¬ GraphRejectedBadFaceTraceLabels (topPairingRankFaceLabels rank) :=
  (strengthened_sequenceBadFaceLabels hstrengthened).2

theorem strengthened_terminalOk_graphAcceptedTraceLabels
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TerminalOkTraceLabels (topPairingRankFaceLabels rank)) :
    GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) :=
  graphAcceptedTraceLabels_of_strengthenedTerminalOk hstrengthened hterm

theorem strengthened_prefix2_faceEval
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    ∃ rest : List Face, ∃ finish :
      BellmanTopPairingTransducerFaceEvalSmoke.FaceEvalState,
      topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest ∧
        evalLabelStepFn
          BellmanTopPairingTransducerFaceEvalSmoke.faceEvalNext
          (TopPairingTransducerEvalState.start
            BellmanTopPairingGraphEvalSplit10MSmoke.Base.rootState)
          [Face.xm, Face.ym] = some (finish, (30 : Int)) ∧
        finish.graph =
          (610 : State) ∧
        finish.Tail rest :=
  BellmanTopPairingTransducerFaceEvalSmoke.closed_prefix2_faceEval
    hstrengthened.closed

theorem strengthened_prefix2_branch_faceEval
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest) :
    ∃ nextState :
      BellmanTopPairingTransducerFaceEvalSmoke.FaceEvalState,
      ∃ gain : Int,
        BellmanTopPairingTransducerFaceEvalSmoke.faceEvalNext
          BellmanTopPairingTransducerFaceEvalSmoke.closedPrefix2EvalState
          face = some (nextState, gain) ∧
          nextState.Tail rest :=
  BellmanTopPairingTransducerFaceEvalSmoke.closed_prefix2_branch_faceEval
    hstrengthened.closed hlabels

theorem canonicalBadFaceSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingCanonicalBadFaceSocket
