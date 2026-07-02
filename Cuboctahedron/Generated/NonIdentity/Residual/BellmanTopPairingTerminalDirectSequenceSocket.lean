import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectStartViolationKilledBridge

/-!
Producer-facing socket for the terminal direct start-violation route.

The accepted-trace direct bridge already kills a top-pairing residual rank from
semantic components, without asking for a sampled rank/path object or a Bellman
margin replay.  This module gives the remaining generated producer a compact
target predicate: a closed top-pairing rank with actual omnihedral face usage,
accepted bad-face labels, and terminal classifier membership.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectStartViolationKilledBridge

def TerminalDirectClosedFamily (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      AcceptedSequenceBadFaceAtRank rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank)

theorem strengthenedTerminalDirect_of_terminalDirectClosedFamily
    {rank : Fin numPairWords}
    (h : TerminalDirectClosedFamily rank) :
    TopPairingStrengthenedClosedLanguageAtRank
      TerminalDirectSequenceBadFace rank Face.ym := by
  rcases h with ⟨hclosed, hactual, hbad, hterm⟩
  exact
    TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      hclosed hactual ⟨hbad, hterm⟩

theorem nonIdentityRankKilled_of_terminalDirectClosedFamily
    {rank : Fin numPairWords}
    (h : TerminalDirectClosedFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_strengthenedTerminalDirect
    (strengthenedTerminalDirect_of_terminalDirectClosedFamily h)

theorem terminal_direct_sequence_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
