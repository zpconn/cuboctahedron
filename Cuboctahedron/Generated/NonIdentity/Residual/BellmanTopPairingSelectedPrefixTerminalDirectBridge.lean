import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

/-!
Bridge from the bounded selected-prefix cover to the terminal-direct provider.

This is a semantic-provider smoke: each selected-prefix trace-margin branch
already carries the four fields required by `TerminalDirectClosedFamily`
(`closed`, actual-face omnihedrality, accepted bad-face labels, and terminal
trace labels).  The bridge forgets the extra prefix and margin data.  It does
not introduce sampled ranks, sampled paths, exact affine RHS keys, or a broad
Boolean checker.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginAdapter
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

theorem terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
    {pfx : List Face}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTracePrefixSharedGainClosedMarginFamily
        pfx gain scaledMargin rank) :
    TerminalDirectClosedFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, _hprefix, _hmargin⟩
  exact ⟨hclosed, hactual, hbad, hterminal⟩

theorem terminalDirectClosedFamily_of_selectedPrefixTraceMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixTraceMarginFamily scaledMargin rank) :
    TerminalDirectClosedFamily rank := by
  unfold SelectedPrefixTraceMarginFamily at hrank
  rcases hrank with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 |
      h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 |
      h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 |
      h29 | h30
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h0
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h1
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h2
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h3
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h4
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h5
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h6
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h7
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h8
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h9
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h10
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h11
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h12
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h13
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h14
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h15
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h16
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h17
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h18
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h19
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h20
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h21
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h22
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h23
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h24
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h25
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h26
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h27
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h28
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h29
  · exact
      terminalDirectClosedFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        h30

theorem terminalDirectClosedFamily_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_selectedPrefixTraceMarginFamily
    (selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily hrank)

theorem nonIdentityRankKilled_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalDirectClosedFamily
    (terminalDirectClosedFamily_of_selectedPrefixCoverFamily hrank)

theorem selected_prefix_terminal_direct_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge
