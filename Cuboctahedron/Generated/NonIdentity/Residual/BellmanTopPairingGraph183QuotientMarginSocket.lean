import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
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

theorem acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin where
  final_margin_of_quotient_gain := by
    intro rank hstrengthened hlabels
    have hmargin :=
      hfamily.final_margin_of_labels rank hstrengthened hlabels
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin
    (acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval
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

theorem acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    have hmargin :=
      hfamily.final_margin_yp_branch rank hstrengthened hprefix
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin
    (acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin
      hfamily)

theorem acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin :=
  acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin
    (acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval
      hfamily)

/--
Generic graph183 accepted-tail quotient-margin target, parameterized by the
strengthened language's `sequenceBadFace` predicate.

This is the production-safe surface for the current Bellman pivot: an upstream
semantic language may choose a `sequenceBadFace` carrier that stores exactly the
branch-local quotient-margin fact needed here.  The older
`AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily` remains as a
compatibility specialization to `AcceptedSequenceBadFaceAtRank`.
-/
structure Graph183TailQuotientMarginFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  final_margin_yp_branch_quotient :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + graph183AcceptedBranchRawGain

theorem acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph183TailQuotientMarginFamily
        AcceptedSequenceBadFaceAtRank scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    exact hfamily.final_margin_yp_branch_quotient rank hstrengthened hprefix

/--
Semantic `sequenceBadFace` carrier for graph183 accepted-tail quotient-margin
bounds.

This predicate is intentionally a carrier, not proof evidence by itself.  A
production upstream proof of this predicate must be semantic, for example from
a deterministic closed-language evaluator or cocycle-quotient margin theorem.
Selected prefixes, sampled ranks, accepted trace ids, exact affine RHS keys, or
per-observed-path branches are not acceptable ways to prove this carrier.
-/
def Graph183TailQuotientMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym ∧
    (Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + graph183AcceptedBranchRawGain)

/--
If the strengthened language already carries the graph183 quotient-margin
sequence-bad-face predicate, the generic margin family is immediate.

This theorem is the small semantic-membership socket the current strategy
needs: it factors graph183 production through `sequenceBadFace_ok` instead of
through sampled path membership.
-/
def graph183TailQuotientMarginFamily_of_sequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    Graph183TailQuotientMarginFamily
      (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
      scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, hmargin⟩
    exact hmargin hprefix

/--
Deterministic-evaluator production target for graph183 accepted-tail quotient
margins.

This is intentionally narrower than a full exact-eval gate.  A semantic
transducer or cocycle producer only needs to prove that the strengthened closed
rank evaluates through `closedBellmanNext` and that the geometric scaled margin
is bounded by the evaluator gain.  The graph183 branch prefix already identifies
that evaluator gain with the checked accepted-branch quotient raw gain.
-/
structure Graph183TailQuotientMarginEvalFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  eval_margin_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      ∃ result : Nat × Int,
        evalLabelStepFn closedBellmanNext graphRoot
            (topPairingRankFaceLabels rank) = some result ∧
          scaledMargin rank <= graphConst + result.2

/--
Turn the deterministic-evaluator margin target into the graph183 quotient
margin family.

The only graph-specific step is uniqueness of the deterministic evaluator
result: the graph183 tail-table prefix theorem gives the accepted branch result
`(126, graph183AcceptedBranchRawGain)`, so any semantic eval-margin proof for
the same rank/prefix becomes the exact quotient-margin carrier.
-/
def graph183TailQuotientMarginFamily_of_evalMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph183TailQuotientMarginEvalFamily sequenceBadFace scaledMargin) :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    rcases hfamily.eval_margin_yp_branch rank hstrengthened hprefix with
      ⟨result, heval, hmargin⟩
    have hbranch :
        evalLabelStepFn closedBellmanNext graphRoot
            (topPairingRankFaceLabels rank) =
          some (126, ((194 : Int) + (-542 : Int))) :=
      graph183AcceptedBranchEval_of_prefix hprefix
    have hsame : result = (126, ((194 : Int) + (-542 : Int))) := by
      have hsome :
          some result =
            some (126, ((194 : Int) + (-542 : Int))) :=
        heval.symm.trans hbranch
      cases hsome
      rfl
    cases hsame
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      Graph183TailQuotientMarginEvalFamily sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym := by
  refine ⟨rfl, ?_⟩
  intro hprefix
  exact
    (graph183TailQuotientMarginFamily_of_evalMarginFamily
      hfamily).final_margin_yp_branch_quotient
        rank hstrengthened hprefix

theorem graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym := by
  refine ⟨rfl, ?_⟩
  intro hprefix
  exact hfamily.final_margin_yp_branch_quotient
    rank hstrengthened hprefix

theorem strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
      rank Face.ym :=
  TopPairingStrengthenedClosedLanguageAtRank.ofComponents
    hstrengthened.closed hstrengthened.actualFaceOmni
    (graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily
      hfamily hstrengthened)

theorem strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
      rank Face.ym :=
  TopPairingStrengthenedClosedLanguageAtRank.ofComponents
    hstrengthened.closed hstrengthened.actualFaceOmni
    (by
      refine ⟨rfl, ?_⟩
      intro hprefix
      exact hfamily.final_margin_yp_branch_quotient
        rank hstrengthened hprefix)

theorem scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)) :
    scaledMargin rank <= 0 := by
  rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, hmargin⟩
  have htail := hmargin hprefix
  have hbound :
      graphConst + graph183AcceptedBranchRawGain <= 0 := by
    rw [graph183AcceptedBranchRawGain_contract]
    change (176 : Int) + ((194 : Int) + (-542 : Int)) <= 0
    decide
  exact le_trans htail hbound

theorem nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail))
    (hstartViolation :
      ObjectStartViolationMarginCert rank (scaledMargin rank)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_nonpos_startViolationMarginCert
    (scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace
      hstrengthened hprefix)
    hstartViolation

/--
Branch-local exact-evaluator target for the graph183 accepted tail.

This is the closest socket to the intended semantic state-DAG producer: it
does not ask for a whole-label equality or a selected-prefix object.  It asks
for the exact evaluator result only on the same `yp` tail branch consumed by
`AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily`.
-/
structure AcceptedSequenceGraph183AcceptedTailExactEvalFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  exact_eval_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      TopPairingGraphExactEvalGateResult
        graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym
      126 ((194 : Int) + (-542 : Int))

/--
Generic graph183 accepted-tail exact-evaluator target, parameterized by the
strengthened language's `sequenceBadFace` predicate.

This is only an adapter surface: the preferred proof obligation remains the
semantic carrier `Graph183TailQuotientMarginSequenceBadFace`, but any future
deterministic closed-language evaluator theorem can pass through this family
without hard-coding `AcceptedSequenceBadFaceAtRank`.
-/
structure Graph183TailExactEvalFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  exact_eval_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      TopPairingGraphExactEvalGateResult
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin rank Face.ym
        126 ((194 : Int) + (-542 : Int))

/--
Semantic `sequenceBadFace` carrier for graph183 branch-local deterministic
exact-eval evidence.

This is the evaluator-shaped sibling of
`Graph183TailQuotientMarginSequenceBadFace`: an upstream semantic producer may
prove the evaluator result first, then lower it to the quotient-margin carrier
through the adapters below.  As with the margin carrier, sampled ranks,
selected prefixes, accepted trace ids, and per-observed-path proofs are not
production evidence for this predicate.
-/
def Graph183TailExactEvalSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym ∧
    (Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      TopPairingGraphExactEvalGateResult
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin rank Face.ym
        126 ((194 : Int) + (-542 : Int)))

theorem graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin sequenceBadFace Face.ym)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailExactEvalSequenceBadFace scaledMargin rank Face.ym := by
  refine ⟨rfl, ?_⟩
  intro hprefix
  rcases hgate rank hstrengthened with ⟨finish, gain, hresult⟩
  have hresultEval :
      evalLabelStepFn closedBellmanNext graphRoot
          (topPairingRankFaceLabels rank) =
        some (finish, gain) := by
    simpa [topPairingRankFaceLabels] using hresult.eval_eq
  have hbranchEval :
      evalLabelStepFn closedBellmanNext graphRoot
          (topPairingRankFaceLabels rank) =
        some (126, ((194 : Int) + (-542 : Int))) :=
    graph183AcceptedBranchEval_of_prefix hprefix
  have hsame :
      (finish, gain) = (126, ((194 : Int) + (-542 : Int))) := by
    have hsome :
        some (finish, gain) =
          some (126, ((194 : Int) + (-542 : Int))) :=
      hresultEval.symm.trans hbranchEval
    cases hsome
    rfl
  cases hsame
  exact hresult

def graph183TailExactEvalFamily_of_sequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    Graph183TailExactEvalFamily
      (Graph183TailExactEvalSequenceBadFace scaledMargin)
      scaledMargin where
  exact_eval_yp_branch := by
    intro rank hstrengthened hprefix
    rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, hgate⟩
    exact hgate hprefix

theorem acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_graph183TailExactEvalFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph183TailExactEvalFamily
        AcceptedSequenceBadFaceAtRank scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailExactEvalFamily scaledMargin where
  exact_eval_yp_branch := by
    intro rank hstrengthened hprefix
    exact hfamily.exact_eval_yp_branch rank hstrengthened hprefix

theorem graph183TailQuotientMarginSequenceBadFace_of_exactEvalGateResult
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hgate :
      TopPairingGraphExactEvalGateResult
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin rank Face.ym
        126 ((194 : Int) + (-542 : Int))) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym := by
  refine ⟨rfl, ?_⟩
  intro _hprefix
  simpa [graph183AcceptedBranchRawGain_contract] using hgate.margin_bound

theorem graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hbad :
      Graph183TailExactEvalSequenceBadFace scaledMargin rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym := by
  rcases hbad with ⟨_hface, hgate⟩
  refine ⟨rfl, ?_⟩
  intro hprefix
  have hresult := hgate hprefix
  simpa [graph183AcceptedBranchRawGain_contract] using hresult.margin_bound

theorem graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin sequenceBadFace Face.ym)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym :=
  graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace
    (graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate
      hgate hstrengthened)

theorem graph183TailQuotientMarginFamily_of_tailExactEval
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph183TailExactEvalFamily sequenceBadFace scaledMargin) :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    have hgate := hfamily.exact_eval_yp_branch rank hstrengthened hprefix
    simpa [graph183AcceptedBranchRawGain_contract] using hgate.margin_bound

def graph183TailQuotientMarginFamily_of_exactEvalSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    Graph183TailQuotientMarginFamily
      (Graph183TailExactEvalSequenceBadFace scaledMargin)
      scaledMargin :=
  graph183TailQuotientMarginFamily_of_tailExactEval
    (graph183TailExactEvalFamily_of_sequenceBadFace scaledMargin)

def graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin sequenceBadFace Face.ym) :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    have hcarrier :=
      graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate
        hgate hstrengthened
    exact hcarrier.2 hprefix

def graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanGraphExactFamily
        sequenceBadFace scaledMargin) :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin :=
  graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate
    hfamily.gate

theorem graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      StrengthenedClosedBellmanGraphExactFamily
        sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym :=
  graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate
    hfamily.gate hstrengthened

def graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanStepRunFamily
        sequenceBadFace scaledMargin) :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    rcases hfamily.run rank hstrengthened with
      ⟨finish, gain, hrun, _hfinal, hmargin⟩
    have heval :
        evalLabelStepFn closedBellmanNext graphRoot
            (topPairingRankFaceLabels rank) =
          some (finish, gain) :=
      evalLabelStepFn_of_bellmanLabelStepRun
        (next := closedBellmanNext)
        (hnext := by
          intro state face nextState gain hstep
          exact closedBellmanStep_next hstep)
        hrun
    have hbranch :
        evalLabelStepFn closedBellmanNext graphRoot
            (topPairingRankFaceLabels rank) =
          some (126, ((194 : Int) + (-542 : Int))) :=
      graph183AcceptedBranchEval_of_prefix hprefix
    have hsame :
        (finish, gain) = (126, ((194 : Int) + (-542 : Int))) := by
      have hsome :
          some (finish, gain) =
            some (126, ((194 : Int) + (-542 : Int))) :=
        heval.symm.trans hbranch
      cases hsome
      rfl
    cases hsame
    simpa [graph183AcceptedBranchRawGain_contract] using hmargin

theorem graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      StrengthenedClosedBellmanStepRunFamily
        sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym :=
  graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily
    (graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily
      hfamily)
    hstrengthened

theorem graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hmargin :
      Graph183TailQuotientMarginSequenceBadFace scaledMargin rank Face.ym) :
    Graph183TailExactEvalSequenceBadFace scaledMargin rank Face.ym := by
  refine ⟨rfl, ?_⟩
  intro hprefix
  rcases hmargin with ⟨_hface, hmarginTail⟩
  have hmarginChecked :
      scaledMargin rank <= graphConst + ((194 : Int) + (-542 : Int)) := by
    simpa [graph183AcceptedBranchRawGain_contract] using
      hmarginTail hprefix
  exact graph183AcceptedBranchEvalGateResult_of_labels
    hclosed (graph183AcceptedBranchLabels_eq_of_prefix hprefix)
    hmarginChecked

theorem graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    Graph183TailExactEvalFamily
      (Graph183TailQuotientMarginSequenceBadFace scaledMargin)
      scaledMargin where
  exact_eval_yp_branch := by
    intro rank hstrengthened hprefix
    have hseq :=
      graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace
        hstrengthened.toTopPairingClosedLanguageAtRank
        hstrengthened.sequenceBadFace_ok
    exact hseq.2 hprefix

theorem acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_branchExactEval
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailExactEvalFamily scaledMargin where
  exact_eval_yp_branch := by
    intro rank hstrengthened hprefix
    exact hfamily.exact_eval_of_labels rank hstrengthened
      (graph183AcceptedBranchLabels_eq_of_prefix hprefix)

theorem acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailExactEval
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedTailExactEvalFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin where
  final_margin_yp_branch_quotient := by
    intro rank hstrengthened hprefix
    have hgate :=
      hfamily.exact_eval_yp_branch rank hstrengthened hprefix
    simpa [graph183AcceptedBranchRawGain_contract] using hgate.margin_bound

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

theorem scaledMargin_nonpos_of_graph183TailQuotientMargin
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
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

structure AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily
    (scaledMargin : Fin numPairWords -> Int) : Type where
  margin :
    AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily scaledMargin
  startViolation_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

def acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_global
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183TailQuotientStartViolationFamily scaledMargin) :
    AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily
      scaledMargin where
  margin := hfamily.margin
  startViolation_yp_branch := by
    intro rank hstrengthened _hprefix
    exact hfamily.startViolation rank hstrengthened

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

theorem nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily
        scaledMargin)
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
    (hfamily.startViolation_yp_branch rank hstrengthened hprefix)

structure Graph183TailBranchQuotientStartViolationFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Type where
  margin :
    Graph183TailQuotientMarginFamily sequenceBadFace scaledMargin
  startViolation_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

def acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_graph183TailBranch
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph183TailBranchQuotientStartViolationFamily
        AcceptedSequenceBadFaceAtRank scaledMargin) :
    AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily
      scaledMargin where
  margin :=
    acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily
      hfamily.margin
  startViolation_yp_branch := by
    intro rank hstrengthened hprefix
    exact hfamily.startViolation_yp_branch rank hstrengthened hprefix

theorem nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily :
      Graph183TailBranchQuotientStartViolationFamily
        sequenceBadFace scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_nonpos_startViolationMarginCert
    (scaledMargin_nonpos_of_graph183TailQuotientMargin
      hfamily.margin hstrengthened hprefix)
    (hfamily.startViolation_yp_branch rank hstrengthened hprefix)

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
