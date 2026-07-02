import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Search.TopPairingTransducerTail

/-!
First deterministic terminal-state socket for the top-pairing classifier.

This module starts the replacement for grouped prefix-disjunction classifiers:
closed top-pairing ranks are advanced into a compact semantic tail state after
the forced `xm, ym` prefix.  The state is not a sampled path and does not carry
an accepted trace id; it contains only the remaining label suffix together with
the `TopPairingTransducerTail` cursor/tail invariant.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix2Socket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

inductive TopPairingPrefix2State
  | afterXmYm

namespace TopPairingPrefix2State

def Contains (state : TopPairingPrefix2State)
    (rank : Fin numPairWords) : Prop :=
  match state with
  | afterXmYm =>
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = [Face.xm, Face.ym] ++ rest ∧
          TopPairingTransducerTail (1 + 1)
            (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) 0
            ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
              (pairOfFace Face.ym))
            (topPairingNextLinear
              (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
            rest

end TopPairingPrefix2State

def Prefix2TerminalStateFamily (rank : Fin numPairWords) : Prop :=
  TopPairingPrefix2State.Contains TopPairingPrefix2State.afterXmYm rank

theorem prefix2State_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Prefix2TerminalStateFamily rank := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨rest, ?_, ?_⟩
  · simpa [topPairingRankFaceLabels] using hlabels
  ·
    have htail0 :
        TopPairingTransducerTail 0 0 0 SqParity.id
          (matId : Mat3 Rat) (Face.xm :: Face.ym :: rest) := by
      simpa [topPairingRankFaceLabels, hlabels] using
        TopPairingTransducerTail.ofClosedRank hclosed
    have htail1 :
        TopPairingTransducerTail 1 (topPairingNextGap 0 Face.xm) 0
          (SqParity.id.applyPair (pairOfFace Face.xm))
          (topPairingNextLinear (matId : Mat3 Rat) Face.xm)
          (Face.ym :: rest) :=
      TopPairingTransducerTail.cons_square_tail htail0 (by decide)
    exact TopPairingTransducerTail.cons_square_tail htail1 (by decide)

theorem prefix2State_of_strengthenedClosed
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    Prefix2TerminalStateFamily rank :=
  prefix2State_of_closed hstrengthened.closed

theorem terminalStatePrefix2Socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix2Socket
