import Cuboctahedron.Search.TopPairingTraceTail
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

/-!
Semantic producer smoke for accepted terminal-prefix membership.

The membership smoke shows that an accepted length-13 prefix forces terminal
trace membership.  This module adds the producer-side shape needed by a future
state DAG: from a closed rank and a prefix equality, Lean derives the suffix
`TopPairingTraceTail` state by consuming the prefix.  The resulting state feeds
the all-accepted-prefix direct killed socket without sampled ranks.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

def prefixGap (pfx : List Face) : Nat :=
  pfx.foldl topPairingNextGap 0

def prefixLinear (pfx : List Face) : Mat3 Rat :=
  pfx.foldl topPairingNextLinear (matId : Mat3 Rat)

theorem traceTail_after_prefix_from_tail
    {step gap : Nat} {linear : Mat3 Rat}
    {pfx rest : List Face}
    (h : TopPairingTraceTail step gap linear (pfx ++ rest)) :
    TopPairingTraceTail (step + pfx.length)
      (pfx.foldl topPairingNextGap gap)
      (pfx.foldl topPairingNextLinear linear)
      rest := by
  induction pfx generalizing step gap linear with
  | nil =>
      simpa using h
  | cons face pfx ih =>
      have htail :
          TopPairingTraceTail (step + 1)
            (topPairingNextGap gap face)
            (topPairingNextLinear linear face)
            (pfx ++ rest) := by
        simpa using TopPairingTraceTail.cons_tail h
      have hres := ih htail
      simpa [List.foldl_cons, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
        using hres

theorem traceTail_after_prefix_of_closed_labels
    {rank : Fin numPairWords}
    {pfx rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels : topPairingRankFaceLabels rank = pfx ++ rest) :
    TopPairingTraceTail pfx.length
      (prefixGap pfx)
      (prefixLinear pfx)
      rest := by
  have htail0 :
      TopPairingTraceTail 0 0 (matId : Mat3 Rat) (pfx ++ rest) := by
    simpa [hlabels] using TopPairingTraceTail.ofClosedRank hclosed
  have htail := traceTail_after_prefix_from_tail htail0
  simpa [prefixGap, prefixLinear] using htail

def ClosedRankInAcceptedPrefix13ProducerState
    (id : AcceptedTraceId) (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    ∃ rest : List Face,
      topPairingRankFaceLabels rank = AcceptedPrefix13 id ++ rest /\
        TopPairingTraceTail (AcceptedPrefix13 id).length
          (prefixGap (AcceptedPrefix13 id))
          (prefixLinear (AcceptedPrefix13 id))
          rest

def ClosedRankInAnyAcceptedPrefix13ProducerState
    (rank : Fin numPairWords) : Prop :=
  ∃ id : AcceptedTraceId,
    ClosedRankInAcceptedPrefix13ProducerState id rank

theorem acceptedPrefix13ProducerState_of_prefix13State
    {id : AcceptedTraceId} {rank : Fin numPairWords}
    (hstate : ClosedRankInAcceptedPrefix13State id rank) :
    ClosedRankInAcceptedPrefix13ProducerState id rank := by
  rcases hstate with ⟨hclosed, rest, hlabels⟩
  exact
    ⟨hclosed, rest, hlabels,
      traceTail_after_prefix_of_closed_labels hclosed hlabels⟩

theorem acceptedPrefix13State_of_producerState
    {id : AcceptedTraceId} {rank : Fin numPairWords}
    (hstate : ClosedRankInAcceptedPrefix13ProducerState id rank) :
    ClosedRankInAcceptedPrefix13State id rank := by
  rcases hstate with ⟨hclosed, rest, hlabels, _htail⟩
  exact ⟨hclosed, rest, hlabels⟩

theorem anyAcceptedPrefix13State_of_producerState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInAnyAcceptedPrefix13ProducerState rank) :
    ClosedRankInAnyAcceptedPrefix13State rank := by
  rcases hstate with ⟨id, hproducer⟩
  exact ⟨id, acceptedPrefix13State_of_producerState hproducer⟩

theorem terminalDirectClosedFamily_of_anyAcceptedPrefix13ProducerState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInAnyAcceptedPrefix13ProducerState rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_anyAcceptedPrefix13State
    (anyAcceptedPrefix13State_of_producerState hstate)
    hactual hbad

theorem nonIdentityRankKilled_of_anyAcceptedPrefix13ProducerState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInAnyAcceptedPrefix13ProducerState rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_anyAcceptedPrefix13State
    (anyAcceptedPrefix13State_of_producerState hstate)
    hactual hbad

theorem terminal_producer_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
