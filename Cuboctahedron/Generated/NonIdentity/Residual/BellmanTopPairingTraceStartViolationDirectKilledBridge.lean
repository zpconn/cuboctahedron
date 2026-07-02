import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Direct killed bridge for accepted top-pairing start-violation traces.

The Bellman margin route packages an accepted trace, a nonpositive margin
bound, and a start-violation certificate.  The start-violation certificate is
stronger than a positive-margin witness: under `NonIdentityAxisConstraints` it
already contradicts the `X+` start-interior condition.  This module exposes
that direct semantic route without sampled rank/path objects and without an
exact affine-RHS table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders

def TraceIdStartViolationFamily
    (allowedTraceId : AcceptedTraceId -> Prop)
    (rank : Fin numPairWords) : Prop :=
  ∃ traceId : AcceptedTraceId,
    allowedTraceId traceId /\
      topPairingRankFaceLabels rank = acceptedTraceOfId traceId

theorem nonIdentityRankKilled_of_acceptedTraceId_startViolation
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  apply nonIdentityRankKilled_of_no_axis_constraints
  intro seq hRealize _hStart _hLinear hAxis
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  have hpos : 0 < (0 : Int) := by
    simpa [zeroMargin] using
      (objectStartViolationMarginCert_of_acceptedTraceId
        (scaledMargin := zeroMargin) traceId htrace).positive
          hRealize hAxis
  exact (lt_irrefl (0 : Int) hpos)

theorem nonIdentityRankKilled_of_traceIdStartViolationFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {rank : Fin numPairWords}
    (hrank : TraceIdStartViolationFamily allowedTraceId rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  rcases hrank with ⟨traceId, _hallowed, htrace⟩
  exact nonIdentityRankKilled_of_acceptedTraceId_startViolation htrace

def TerminalTraceIdBucketStartViolationFamily
    (allowedTraceId : AcceptedTraceId -> Prop)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank) /\
          ∀ traceId : AcceptedTraceId,
            topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
              allowedTraceId traceId

theorem traceIdStartViolationFamily_of_terminalTraceIdBucket
    {allowedTraceId : AcceptedTraceId -> Prop}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdBucketStartViolationFamily allowedTraceId rank) :
    TraceIdStartViolationFamily allowedTraceId rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hallowedForTrace⟩
  have hterminalOk :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank) :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      (TopPairingClosedLanguageAtRank.cancellationLabels hclosed)
      hterminal
  have hactualLabels :
      TopPairingActualFaceOmniLabels (topPairingRankFaceLabels rank) := by
    simpa [TopPairingActualFaceOmniAtRank] using hactual
  have hbadLabels :
      TopPairingTraceClassifier.Accepted.SequenceBadFaceLabels
        (topPairingRankFaceLabels rank) Face.ym := by
    simpa
      [Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank]
      using hbad
  have hgraph :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate.GraphAcceptedTraceLabels
        (topPairingRankFaceLabels rank) :=
    TopPairingTraceClassifier.Accepted.graphAcceptedTraceLabels_of_terminalOk_filters
      hterminalOk hactualLabels hbadLabels
  rcases acceptedTraceId_of_graphAcceptedTraceLabels hgraph with
    ⟨traceId, htrace⟩
  exact ⟨traceId, hallowedForTrace traceId htrace, htrace⟩

theorem nonIdentityRankKilled_of_terminalTraceIdBucketStartViolationFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdBucketStartViolationFamily allowedTraceId rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_traceIdStartViolationFamily
    (traceIdStartViolationFamily_of_terminalTraceIdBucket hrank)

def TerminalTracePrefixStartViolationFamily
    (pfx : List Face)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank) /\
          (topPairingRankFaceLabels rank).take pfx.length = pfx

theorem terminalTraceIdBucketStartViolationFamily_of_prefix
    {allowedTraceId : AcceptedTraceId -> Prop}
    {pfx : List Face}
    {rank : Fin numPairWords}
    (hprefixAllowed :
      forall traceId : AcceptedTraceId,
        (acceptedTraceOfId traceId).take pfx.length = pfx ->
          allowedTraceId traceId)
    (hrank :
      TerminalTracePrefixStartViolationFamily pfx rank) :
    TerminalTraceIdBucketStartViolationFamily allowedTraceId rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  intro traceId htrace
  rw [htrace] at hprefix
  exact hprefixAllowed traceId hprefix

theorem nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {pfx : List Face}
    {rank : Fin numPairWords}
    (hprefixAllowed :
      forall traceId : AcceptedTraceId,
        (acceptedTraceOfId traceId).take pfx.length = pfx ->
          allowedTraceId traceId)
    (hrank :
      TerminalTracePrefixStartViolationFamily pfx rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTraceIdBucketStartViolationFamily
    (terminalTraceIdBucketStartViolationFamily_of_prefix
      hprefixAllowed hrank)

theorem direct_trace_start_violation_killed_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge
