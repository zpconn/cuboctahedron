import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginAdapter
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge

/-!
Bridge from the bounded selected-prefix trace-margin family into the
accepted-prefix Bellman eval socket.

The selected-prefix family is already semantic: each branch is a terminal
prefix/shared-gain family, not a sampled rank/path table.  This module routes
that existing generated family through the accepted-prefix eval surface so the
Bellman object-cover experiment can reuse it directly.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixAcceptedPrefixEvalBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginAdapter
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover

theorem acceptedPrefix13EvalFamily_of_selectedPrefixTraceMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixTraceMarginFamily scaledMargin rank) :
    AcceptedPrefix13EvalFamily scaledMargin rank := by
  unfold SelectedPrefixTraceMarginFamily at hrank
  rcases hrank with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 |
      h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 |
      h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 |
      h29 | h30
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group000.Prefix000Allowed)
        (pfx := Group000.Prefix000Prefix)
        (gain := (-376 : Int))
        Group000.Prefix000Prefix_gain
        h0
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group000.Prefix001Allowed)
        (pfx := Group000.Prefix001Prefix)
        (gain := (-552 : Int))
        Group000.Prefix001Prefix_gain
        h1
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group000.Prefix002Allowed)
        (pfx := Group000.Prefix002Prefix)
        (gain := (-552 : Int))
        Group000.Prefix002Prefix_gain
        h2
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group000.Prefix003Allowed)
        (pfx := Group000.Prefix003Prefix)
        (gain := (-304 : Int))
        Group000.Prefix003Prefix_gain
        h3
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group000.Prefix004Allowed)
        (pfx := Group000.Prefix004Prefix)
        (gain := (-376 : Int))
        Group000.Prefix004Prefix_gain
        h4
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group001.Prefix000Allowed)
        (pfx := Group001.Prefix000Prefix)
        (gain := (-348 : Int))
        Group001.Prefix000Prefix_gain
        h5
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group001.Prefix001Allowed)
        (pfx := Group001.Prefix001Prefix)
        (gain := (-552 : Int))
        Group001.Prefix001Prefix_gain
        h6
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group001.Prefix002Allowed)
        (pfx := Group001.Prefix002Prefix)
        (gain := (-568 : Int))
        Group001.Prefix002Prefix_gain
        h7
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group001.Prefix003Allowed)
        (pfx := Group001.Prefix003Prefix)
        (gain := (-640 : Int))
        Group001.Prefix003Prefix_gain
        h8
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group001.Prefix004Allowed)
        (pfx := Group001.Prefix004Prefix)
        (gain := (-352 : Int))
        Group001.Prefix004Prefix_gain
        h9
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group002.Prefix000Allowed)
        (pfx := Group002.Prefix000Prefix)
        (gain := (-640 : Int))
        Group002.Prefix000Prefix_gain
        h10
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group002.Prefix001Allowed)
        (pfx := Group002.Prefix001Prefix)
        (gain := (-612 : Int))
        Group002.Prefix001Prefix_gain
        h11
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group002.Prefix002Allowed)
        (pfx := Group002.Prefix002Prefix)
        (gain := (-612 : Int))
        Group002.Prefix002Prefix_gain
        h12
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group002.Prefix003Allowed)
        (pfx := Group002.Prefix003Prefix)
        (gain := (-596 : Int))
        Group002.Prefix003Prefix_gain
        h13
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group002.Prefix004Allowed)
        (pfx := Group002.Prefix004Prefix)
        (gain := (-568 : Int))
        Group002.Prefix004Prefix_gain
        h14
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group003.Prefix000Allowed)
        (pfx := Group003.Prefix000Prefix)
        (gain := (-684 : Int))
        Group003.Prefix000Prefix_gain
        h15
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group003.Prefix001Allowed)
        (pfx := Group003.Prefix001Prefix)
        (gain := (-684 : Int))
        Group003.Prefix001Prefix_gain
        h16
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group003.Prefix002Allowed)
        (pfx := Group003.Prefix002Prefix)
        (gain := (-612 : Int))
        Group003.Prefix002Prefix_gain
        h17
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group003.Prefix003Allowed)
        (pfx := Group003.Prefix003Prefix)
        (gain := (-612 : Int))
        Group003.Prefix003Prefix_gain
        h18
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group003.Prefix004Allowed)
        (pfx := Group003.Prefix004Prefix)
        (gain := (-596 : Int))
        Group003.Prefix004Prefix_gain
        h19
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group004.Prefix000Allowed)
        (pfx := Group004.Prefix000Prefix)
        (gain := (-596 : Int))
        Group004.Prefix000Prefix_gain
        h20
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group004.Prefix001Allowed)
        (pfx := Group004.Prefix001Prefix)
        (gain := (-552 : Int))
        Group004.Prefix001Prefix_gain
        h21
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group004.Prefix002Allowed)
        (pfx := Group004.Prefix002Prefix)
        (gain := (-464 : Int))
        Group004.Prefix002Prefix_gain
        h22
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group004.Prefix003Allowed)
        (pfx := Group004.Prefix003Prefix)
        (gain := (-464 : Int))
        Group004.Prefix003Prefix_gain
        h23
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group004.Prefix004Allowed)
        (pfx := Group004.Prefix004Prefix)
        (gain := (-396 : Int))
        Group004.Prefix004Prefix_gain
        h24
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group005.Prefix000Allowed)
        (pfx := Group005.Prefix000Prefix)
        (gain := (-392 : Int))
        Group005.Prefix000Prefix_gain
        h25
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group005.Prefix001Allowed)
        (pfx := Group005.Prefix001Prefix)
        (gain := (-392 : Int))
        Group005.Prefix001Prefix_gain
        h26
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group005.Prefix002Allowed)
        (pfx := Group005.Prefix002Prefix)
        (gain := (-376 : Int))
        Group005.Prefix002Prefix_gain
        h27
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group005.Prefix003Allowed)
        (pfx := Group005.Prefix003Prefix)
        (gain := (-348 : Int))
        Group005.Prefix003Prefix_gain
        h28
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group005.Prefix004Allowed)
        (pfx := Group005.Prefix004Prefix)
        (gain := (-304 : Int))
        Group005.Prefix004Prefix_gain
        h29
  · exact
      acceptedPrefix13EvalFamily_of_terminalTracePrefixSharedGainClosedMarginFamily
        (allowedTraceId := Group006.Prefix000Allowed)
        (pfx := Group006.Prefix000Prefix)
        (gain := (-176 : Int))
        Group006.Prefix000Prefix_gain
        h30

theorem evalLanguage_of_selectedPrefixTraceMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixTraceMarginFamily scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_selectedPrefixTraceMarginFamily hrank)
    hactual

theorem scaledMargin_nonpos_of_selectedPrefixTraceMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixTraceMarginFamily scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_selectedPrefixTraceMarginFamily hrank)
    hactual

theorem acceptedPrefix13EvalFamily_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    AcceptedPrefix13EvalFamily scaledMargin rank :=
  acceptedPrefix13EvalFamily_of_selectedPrefixTraceMarginFamily
    (selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily hrank)

theorem evalLanguage_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_selectedPrefixCoverFamily hrank)
    hactual

theorem scaledMargin_nonpos_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_selectedPrefixCoverFamily hrank)
    hactual

theorem selected_prefix_accepted_prefix_eval_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixAcceptedPrefixEvalBridge
