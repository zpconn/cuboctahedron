import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Bellman eval-language socket for accepted length-13 prefix states.

This module is a bounded semantic-membership experiment for the top-pairing
Bellman route.  A closed rank whose labels agree with one accepted length-13
prefix has only one possible remaining scheduled face, `X+`, so the full trace
is exactly the accepted trace id.  The existing trace-margin socket then turns
that trace id plus a semantic margin inequality into `TopPairingBellmanEval...`.

No sampled rank/path object or exact affine-RHS lookup is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

theorem acceptedTrace_eq_of_acceptedPrefix13State
    {id : AcceptedTraceId} {rank : Fin numPairWords}
    (hstate : ClosedRankInAcceptedPrefix13State id rank) :
    topPairingRankFaceLabels rank = acceptedTraceOfId id := by
  rcases hstate with ⟨hclosed, rest, hlabels⟩
  cases rest with
  | nil =>
      have hlen : (topPairingRankFaceLabels rank).length = 14 := by
        simpa [topPairingRankFaceLabels] using hclosed.schedule.1
      rw [hlabels] at hlen
      simp [acceptedPrefix13_length] at hlen
  | cons face rest =>
      cases rest with
      | nil =>
          have hfaceMem :
              face ∈ topPairingAllowedFacesAtStep (AcceptedPrefix13 id).length :=
            topPairingStepScheduleLabels_allows_next_of_prefix
              hclosed.schedule hlabels
          have hface : face = Face.xp := by
            have hfaceMem13 :
                face ∈ topPairingAllowedFacesAtStep 13 := by
              simpa [acceptedPrefix13_length] using hfaceMem
            simpa [topPairingAllowedFacesAtStep] using hfaceMem13
          subst face
          calc
            topPairingRankFaceLabels rank = AcceptedPrefix13 id ++ [Face.xp] := by
              simpa using hlabels
            _ = acceptedTraceOfId id :=
              acceptedPrefix13_append_xp id
      | cons _face' _rest' =>
          have hlen : (topPairingRankFaceLabels rank).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels] at hlen
          simp [acceptedPrefix13_length] at hlen
          omega

theorem evalLanguage_of_acceptedPrefix13State_components
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {id : AcceptedTraceId}
    (hstate : ClosedRankInAcceptedPrefix13State id rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain id) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceId_components
    hstate.1 hactual
    (acceptedTrace_eq_of_acceptedPrefix13State hstate)
    hmargin

theorem scaledMargin_nonpos_of_acceptedPrefix13State_components
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {id : AcceptedTraceId}
    (hstate : ClosedRankInAcceptedPrefix13State id rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain id) :
    scaledMargin rank <= 0 :=
  traceId_scaledMargin_nonpos_of_components
    hstate.1 hactual
    (acceptedTrace_eq_of_acceptedPrefix13State hstate)
    hmargin

theorem accepted_prefix_eval_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
