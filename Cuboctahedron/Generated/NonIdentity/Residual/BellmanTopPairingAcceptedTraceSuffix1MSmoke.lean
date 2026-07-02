import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke

/-!
Bounded suffix-membership socket for graph-accepted top-pairing traces.

This smoke checks that the existing 37 terminal graph-accepted trace
representatives run through the aligned 1M `with-step-face-linear-tri-source`
Bellman table.  The theorem remains trace-class based, not rank-sampled: it is
only a bounded bridge from the generated terminal classifier to the
suffix-carrying deterministic evaluator.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedTraceSuffix1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

theorem suffixOk_of_graphAcceptedTraceLabels
    {labels : List Face}
    (haccepted : GraphAcceptedTraceLabels labels) :
    SuffixOk (TopPairingTransducerEvalState.start rootState) labels := by
  unfold GraphAcceptedTraceLabels at haccepted
  rcases haccepted with
    h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 |
    h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 |
    h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 |
    h32 | h33 | h34 | h35 | h36
  all_goals
    subst labels
    simp only [acceptedFaceTrace_000, acceptedFaceTrace_001,
      acceptedFaceTrace_002, acceptedFaceTrace_003, acceptedFaceTrace_004,
      acceptedFaceTrace_005, acceptedFaceTrace_006, acceptedFaceTrace_007,
      acceptedFaceTrace_008, acceptedFaceTrace_009, acceptedFaceTrace_010,
      acceptedFaceTrace_011, acceptedFaceTrace_012, acceptedFaceTrace_013,
      acceptedFaceTrace_014, acceptedFaceTrace_015, acceptedFaceTrace_016,
      acceptedFaceTrace_017, acceptedFaceTrace_018, acceptedFaceTrace_019,
      acceptedFaceTrace_020, acceptedFaceTrace_021, acceptedFaceTrace_022,
      acceptedFaceTrace_023, acceptedFaceTrace_024, acceptedFaceTrace_025,
      acceptedFaceTrace_026, acceptedFaceTrace_027, acceptedFaceTrace_028,
      acceptedFaceTrace_029, acceptedFaceTrace_030, acceptedFaceTrace_031,
      acceptedFaceTrace_032, acceptedFaceTrace_033, acceptedFaceTrace_034,
      acceptedFaceTrace_035, acceptedFaceTrace_036]
    repeat
      first
      | exact SuffixOk.nil _
      | refine SuffixOk.cons (by rfl) ?_

theorem suffixOk_of_strengthenedTerminalOk
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    SuffixOk (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) :=
  suffixOk_of_graphAcceptedTraceLabels
    (graphAcceptedTraceLabels_of_strengthenedTerminalOk hstrengthened hterm)

private theorem start_tail_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    (TopPairingTransducerEvalState.start rootState).Tail
      (topPairingRankFaceLabels rank) := by
  simpa [TopPairingTransducerEvalState.Tail, TopPairingTransducerEvalState.start,
    TopPairingTransducerState.Tail] using
      TopPairingTransducerState.start_tail_of_closed hclosed

theorem eval_exists_of_strengthenedTerminalOk
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank) =
          some (finish, gain) ∧
        finish.Tail [] ∧ Inv finish ∧ SuffixOk finish [] :=
  eval_exists_of_suffixOk
    start_inv
    (start_tail_of_closed hstrengthened.closed)
    (suffixOk_of_strengthenedTerminalOk hstrengthened hterm)

theorem acceptedTraceSuffix1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedTraceSuffix1MSmoke
