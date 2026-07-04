import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientSmoke
import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

/-!
Quotient-gain margin socket for the graph183 accepted branch.

The graph183 accepted branch now has a Lean-checked cocycle quotient run whose
raw gain is exported as `graph183AcceptedBranchRawGain`.  Future production
margin families should prove their integer margin bound against that checked
branch gain, then use this adapter to feed the existing graph183 label-margin
and exact-eval sockets.

This file is still a socket: it introduces no rank table, sampled path
membership, selected-prefix cover, exact affine-RHS key, or solved start-point
key.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

/--
Graph183 accepted-branch margin target phrased against the checked cocycle
quotient raw gain.

This is the cleaner next target for a semantic margin producer: prove
`scaledMargin <= graphConst + graph183AcceptedBranchRawGain` from strengthened
closed-language semantics and the accepted branch labels.  The adapter below
rewrites the checked raw gain to the existing graph183 socket's evaluator gain
`194 + -542`.
-/
structure AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  final_margin_of_quotient_gain :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      topPairingRankFaceLabels rank = graph183AcceptedBranchLabels ->
      scaledMargin rank <= graphConst + graph183AcceptedBranchRawGain

theorem acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_quotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily scaledMargin where
  final_margin_of_labels := by
    intro rank hstrengthened hlabels
    have hmargin :=
      hfamily.final_margin_of_quotient_gain rank hstrengthened hlabels
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_quotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_labelMargin
    (acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_quotientMargin
      hfamily)

theorem acceptedSequenceGraph183AcceptedTailMarginFamily_of_quotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin
    (acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_quotientMargin
      hfamily)

/--
Graph183 accepted-tail margin target phrased directly in the semantic branch
where the `yp` tail is known.

This is the sharper production-facing target for the next margin producer: it
receives the strengthened closed-language proof plus the branch prefix used by
the graph183 tail table, and proves the margin against the checked quotient
raw gain.  It avoids making the producer prove a whole-label equality as its
front door.
-/
structure AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  final_margin_yp_branch_quotient :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + graph183AcceptedBranchRawGain

theorem acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin where
  final_margin_yp_branch := by
    intro rank hstrengthened hprefix
    have hmargin :=
      hfamily.final_margin_yp_branch_quotient rank hstrengthened hprefix
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components
    acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor
    (acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin
      hfamily)

theorem graph169ContinuationFamily_of_acceptedSequenceGraph183TailQuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin) :
    StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
      scaledMargin AcceptedSequenceBadFaceAtRank :=
  graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedBranch
    (acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin
      hfamily)

theorem graphExactEvalGateAtRank_of_acceptedSequenceGraph183TailQuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch
    (acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin
      hfamily)
    hstrengthened hprefix

theorem scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)) :
    scaledMargin rank <= 0 := by
  have hmargin :=
    hfamily.final_margin_yp_branch_quotient rank hstrengthened hprefix
  have hbound :
      graphConst + graph183AcceptedBranchRawGain <= 0 := by
    rw [graph183AcceptedBranchRawGain_contract]
    change (176 : Int) + ((194 : Int) + (-542 : Int)) <= 0
    decide
  exact le_trans hmargin hbound

structure AcceptedSequenceGraph183TailQuotientStartViolationFamily
    (scaledMargin : Fin numPairWords -> Int) : Type where
  margin :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin
  startViolation :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

theorem nonIdentityRankKilled_of_acceptedSequenceGraph183TailQuotientStartViolation
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      AcceptedSequenceGraph183TailQuotientStartViolationFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_nonpos_startViolationMarginCert
    (scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin
      hfamily.margin hstrengthened hprefix)
    (hfamily.startViolation rank hstrengthened)

/--
Graph183 final-margin family from the checked quotient-gain margin target.

The completion-tail component is already semantic
(`acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor`); this theorem
makes the remaining graph183 production premise exactly the quotient-margin
family above.
-/
theorem acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_quotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components
    acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor
    (acceptedSequenceGraph183AcceptedTailMarginFamily_of_quotientMargin
      hfamily)

theorem graph169ContinuationFamily_of_acceptedSequenceGraph183QuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin) :
    StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
      scaledMargin AcceptedSequenceBadFaceAtRank :=
  graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedBranch
    (acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_quotientMargin
      hfamily)

theorem graphExactEvalGateAtRank_of_acceptedSequenceGraph183QuotientMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch
    (acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_quotientMargin
      hfamily)
    hstrengthened hprefix

theorem graph183QuotientMarginSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket
