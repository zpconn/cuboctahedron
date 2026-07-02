import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginAdapter

/-!
Strengthened-language socket for the selected-prefix trace-margin family.

The future production classifier should prove the sequence/bad-face predicate
defined here.  This module then routes that semantic membership through the
selected-prefix trace-margin adapter to the Bellman eval-language and
nonpositive-margin conclusions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginAdapter

def SelectedPrefixTraceMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    SelectedPrefixTraceMarginFamily scaledMargin rank

theorem selectedPrefixTraceMarginFamily_of_sequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym) :
    SelectedPrefixTraceMarginFamily scaledMargin rank :=
  h.2

theorem evalLanguage_of_strengthenedSelectedPrefixTraceMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  selectedPrefixTraceMarginFamily_evalLanguage
    (selectedPrefixTraceMarginFamily_of_sequenceBadFace h.sequenceBadFace_ok)

theorem strengthenedSelectedPrefixTraceMargin_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  selectedPrefixTraceMarginFamily_scaledMargin_nonpos
    (selectedPrefixTraceMarginFamily_of_sequenceBadFace h.sequenceBadFace_ok)

theorem selected_prefix_trace_margin_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginSocket
