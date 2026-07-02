import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Shared-gain prefix-bucket smoke for the top-pairing Bellman route.

This module checks the next non-sampled semantic-membership shape after the
trace-id bucket socket: a generated family may prove that a closed terminal
rank has labels in a semantic prefix bucket, and that all accepted trace ids
compatible with that bucket share one Bellman gain.  The rank object remains
`rank + TopPairingClosedLanguageAtRank`; there are no sampled ranks or path
objects here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSharedGainPrefixBucketSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def Trace000001002Allowed (traceId : AcceptedTraceId) : Prop :=
  traceId = AcceptedTraceId.t000 \/
    traceId = AcceptedTraceId.t001 \/
      traceId = AcceptedTraceId.t002

def Trace000001002Prefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.tmmm, Face.tpmp, Face.tmmp]

theorem trace000001002Prefix_gain
    (traceId : AcceptedTraceId)
    (hprefix :
      (acceptedTraceOfId traceId).take 9 = Trace000001002Prefix) :
    Trace000001002Allowed traceId /\
      acceptedTraceGain traceId = (-376 : Int) := by
  cases traceId
  · exact ⟨Or.inl rfl, rfl⟩
  · exact ⟨Or.inr (Or.inl rfl), rfl⟩
  · exact ⟨Or.inr (Or.inr rfl), rfl⟩
  all_goals
    exfalso
    revert hprefix
    decide

def Trace000001002PrefixSharedGainFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank) /\
          (topPairingRankFaceLabels rank).take 9 = Trace000001002Prefix /\
            scaledMargin rank <= (176 : Int) + (-376 : Int)

theorem sharedGainBucket_of_trace000001002Prefix
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      Trace000001002PrefixSharedGainFamily scaledMargin rank) :
    TerminalTraceIdSharedGainBucketClosedMarginFamily
      Trace000001002Allowed (-376) scaledMargin rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, hmargin⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_, hmargin⟩
  intro traceId htrace
  rw [htrace] at hprefix
  exact trace000001002Prefix_gain traceId hprefix

theorem trace000001002PrefixFamily_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      Trace000001002PrefixSharedGainFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_terminalTraceIdSharedGainBucketClosedMarginFamily
    (sharedGainBucket_of_trace000001002Prefix hrank)

theorem trace000001002PrefixFamily_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      Trace000001002PrefixSharedGainFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  terminalTraceIdSharedGainBucketClosedMarginFamily_scaledMargin_nonpos
    (sharedGainBucket_of_trace000001002Prefix hrank)

theorem shared_gain_prefix_bucket_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSharedGainPrefixBucketSmoke
