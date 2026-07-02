import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginObjectCover

/-!
Killed-predicate socket for the selected-prefix trace-margin Bellman route.

The selected-prefix trace-margin object cover proves `scaledMargin rank <= 0`.
The public nonidentity coverage predicate additionally needs a positive-margin
certificate tying that same scaled margin to the nonidentity axis constraints.
This module instantiates the generic Bellman killed bridge at the
selected-prefix object-cover surface.

No sampled rank/path objects are introduced here.  The remaining production
obligation is a semantic family theorem that supplies the `certOf` argument.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginKilledSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginObjectCover
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginSocket

abbrev SelectedPrefixTraceMarginObj
    (scaledMargin : Fin numPairWords -> Int) : Type :=
  TopPairingBellmanEvalObj
    graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
    scaledMargin Face.ym

abbrev selectedPrefixTraceMarginRankOf
    {scaledMargin : Fin numPairWords -> Int}
    (obj : SelectedPrefixTraceMarginObj scaledMargin) : Fin numPairWords :=
  TopPairingBellmanEvalObj.rankOf obj

abbrev selectedPrefixTraceMarginAccepts
    {scaledMargin : Fin numPairWords -> Int}
    (obj : SelectedPrefixTraceMarginObj scaledMargin) : Prop :=
  TopPairingBellmanEvalObj.Accepts obj

theorem selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation
    {scaledMargin : Fin numPairWords -> Int}
    (certOf :
      forall obj : SelectedPrefixTraceMarginObj scaledMargin,
        selectedPrefixTraceMarginAccepts obj ->
          ObjectStartViolationMarginCert
            (selectedPrefixTraceMarginRankOf obj)
            (scaledMargin (selectedPrefixTraceMarginRankOf obj)))
    {rank : Fin numPairWords}
    (hrank :
      TopPairingStrengthenedClosedContainsRank
        (SelectedPrefixTraceMarginSequenceBadFace scaledMargin) Face.ym rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    (cover := selectedPrefixTraceMarginObjectCover (scaledMargin := scaledMargin))
    certOf
    hrank

theorem selected_prefix_trace_margin_killed_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginKilledSocket
