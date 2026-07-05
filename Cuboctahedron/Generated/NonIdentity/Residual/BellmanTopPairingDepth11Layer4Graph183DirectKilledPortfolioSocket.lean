import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MixedPortfolioSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket

/-!
Layer-4 mixed portfolio socket with a direct-killed graph183 branch.

The older mixed layer-4 socket routes every branch to an evaluator gate.  That
is still useful for branches whose obstruction is a Bellman margin bound, but
the graph183 `tmpm,zm` branch is now stronger: the semantic completion-tail
theorem routes it either to the checked graph183 start-violation trace or to an
impossible `tmmp` branch.  This module exposes that production split directly:

* five non-graph147/non-graph183 branches still produce split-10M eval gates;
* the two graph147 branches still produce strengthened graph147 eval gates;
* the graph183 `tmpm,zm` branch exports `NonIdentityRankKilled` directly.

No selected-prefix membership, sampled rank object, accepted trace id, exact
affine RHS key, or solved start-point key is introduced.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MixedPortfolioSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

/--
Root-facing result for the graph183-direct mixed layer-4 portfolio.

A rank is either still represented by one of the evaluator gates used by the
existing mixed portfolio, or it is already killed by a semantic direct
start-violation theorem.
-/
inductive AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop
  | eval :
      StrengthenedDepth11Layer4MixedEvalGateAtRank scaledMargin rank ->
        AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank scaledMargin rank
  | killed :
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank ->
        AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank scaledMargin rank

/--
Production target for the accepted-sequence layer-4 mix after the graph183
direct-kill pivot.

The `tmpm,zm` branch is intentionally absent: it is discharged semantically by
`nonIdentityRankKilled_of_acceptedSequenceGraph183SemanticCursor` instead of by
a mapped-branch Bellman-margin producer.
-/
structure AcceptedSequenceDepth11Layer4Graph183DirectPortfolioFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.tmpm Face.tppm
  yp_tmmm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.yp Face.tmmm
  graph147 :
    StrengthenedDepth11Layer4Graph147GraphExactBranchFamily
      scaledMargin AcceptedSequenceBadFaceAtRank
  zm_tmpp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.tmpp
  zm_zp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp

/--
Branch-local checked result for the graph183-direct mixed portfolio.
-/
structure AcceptedSequenceDepth11Layer4MixedEvalOrKilledBranchGateFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.tppm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  tmpm_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
  yp_tmmm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.tmmm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym
  zm_tmpp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_yp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym
  zm_zp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank

def acceptedSequenceMixedEvalOrKilledBranchGateFamily_of_graph183DirectPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedEvalOrKilledBranchGateFamily
      scaledMargin where
  tmpm_tppm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.tmpm_tppm
      (Or.inl ⟨rfl, Or.inl rfl⟩)
      hstrengthened hprefix
  tmpm_zm := by
    intro rank rest hstrengthened hprefix
    exact nonIdentityRankKilled_of_acceptedSequenceGraph183SemanticCursor
      hstrengthened hprefix
  yp_tmmm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.yp_tmmm
      (Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩))
      hstrengthened hprefix
  yp_zm := by
    intro rank rest hstrengthened hprefix
    exact hfamily.graph147.yp_zm hstrengthened hprefix
  zm_tmpp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.zm_tmpp
      (Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩))
      hstrengthened hprefix
  zm_yp := by
    intro rank rest hstrengthened hprefix
    exact hfamily.graph147.zm_yp hstrengthened hprefix
  zm_zp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.zm_zp
      (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩))
      hstrengthened hprefix

/--
All-rank accepted-sequence classifier for the graph183-direct mixed portfolio.
-/
structure AcceptedSequenceDepth11Layer4MixedEvalOrKilledAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank : Fin numPairWords,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
        AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank
          scaledMargin rank

theorem acceptedSequenceMixedEvalOrKilledAllFamily_of_branchGateFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4MixedEvalOrKilledBranchGateFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedEvalOrKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    rcases topPairingStepScheduleLabels_prefix3
        hstrengthened.closed.schedule with htmpm | hyp | hzm
    · rcases htmpm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.tmpm face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · rcases htmpmBranch with ⟨_hface₀, htppm | hzm⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                  (hfamily.tmpm_tppm hstrengthened hprefix))
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.killed
                (hfamily.tmpm_zm hstrengthened hprefix)
          · cases hypBranch.1
          · cases hzmBranch.1
    · rcases hyp with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.yp face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · cases htmpmBranch.1
          · rcases hypBranch with ⟨_hface₀, htmmm | hzm⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                  (hfamily.yp_tmmm hstrengthened hprefix))
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.graph147
                  (hfamily.yp_zm hstrengthened hprefix))
          · cases hzmBranch.1
    · rcases hzm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.zm face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · cases htmpmBranch.1
          · cases hypBranch.1
          · rcases hzmBranch with ⟨_hface₀, htmpp | hyp | hzp⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                  (hfamily.zm_tmpp hstrengthened hprefix))
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.graph147
                  (hfamily.zm_yp hstrengthened hprefix))
            · subst face₁
              exact AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank.eval
                (StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                  (hfamily.zm_zp hstrengthened hprefix))

def acceptedSequenceMixedEvalOrKilledAllFamily_of_graph183DirectPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedEvalOrKilledAllFamily
      scaledMargin :=
  acceptedSequenceMixedEvalOrKilledAllFamily_of_branchGateFamily
    (acceptedSequenceMixedEvalOrKilledBranchGateFamily_of_graph183DirectPortfolio
      hfamily)

/--
The remaining nontrivial nonpositive-margin bridge for the heterogeneous
layer-4 consumer.

Split-10M branches already have a local nonpositive theorem; graph147 branches
are kept as an explicit semantic bridge so this socket does not import or
replay graph147 transition internals.
-/
abbrev AcceptedSequenceGraph147EvalNonposGate
    (scaledMargin : Fin numPairWords -> Int) : Prop :=
  forall {rank : Fin numPairWords},
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ->
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext (fun face : Face => face)
      strengthenedClosedEvalStart (176 : Int)
      scaledMargin rank Face.ym ->
    scaledMargin rank <= 0

/--
Graph-local potential bound for the strengthened closed evaluator.

This is the small finite-graph theorem needed to turn graph147 exact-eval gates
into nonpositive-margin facts.  It is deliberately graph-local: no rank,
selected prefix, sampled trace, or affine key appears in the statement.
-/
abbrev StrengthenedClosedEvalNextBound : Prop :=
  forall state face nextState gain,
    strengthenedClosedEvalNext state face = some (nextState, gain) ->
      gain + graphPotential nextState.graph <= graphPotential state.graph

def acceptedSequenceGraph147EvalNonposGate_of_strengthenedClosedEvalNextBound
    {scaledMargin : Fin numPairWords -> Int}
    (hnext : StrengthenedClosedEvalNextBound) :
    AcceptedSequenceGraph147EvalNonposGate scaledMargin := by
  intro rank _hstrengthened gate
  have hevalLanguage :=
    evalLanguageAtRank_of_graphExactEvalGate gate
  exact
    scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
      (V := fun state : StrengthenedClosedEvalState =>
        graphPotential state.graph)
      (next := strengthenedClosedEvalNext)
      (InRange := fun _state : StrengthenedClosedEvalState => True)
      (start := strengthenedClosedEvalStart)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (wordOf := fun rank : Fin numPairWords =>
        faceLabelsInContributionOrder (fun face : Face => face)
          (canonicalSeqOfPairWord (unrankPairWord rank)))
      (hnext := by
        intro state face nextState gain _hrange hnextEq
        exact ⟨True.intro, hnext state face nextState gain hnextEq⟩)
      (hstart := True.intro)
      (hroot := by
        simpa [strengthenedClosedEvalStart, TopPairingTransducerEvalState.start,
          graphConst] using
          strengthenedBellmanRootBound)
      hevalLanguage.eval_accepts

/--
Alternative graph147 nonpositive bridge using the semantic step-run surface.

This is the preferred production shape after the deterministic-transducer
pivot: a branch-local producer should build a
`StrengthenedClosedBellmanStepRunFamily` directly from closed-language /
cursor / suffix invariants, avoiding the heartbeat-heavy inverse theorem from
unknown `strengthenedClosedEvalNext` equalities back to graph edges.

The exact-eval gate argument is intentionally unused; it remains in the
consumer signature only because existing graph147 branch sockets expose that
surface today.
-/
def acceptedSequenceGraph147EvalNonposGate_of_strengthenedClosedBellmanStepRunFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanStepRunFamily
        AcceptedSequenceBadFaceAtRank scaledMargin) :
    AcceptedSequenceGraph147EvalNonposGate scaledMargin := by
  intro rank hstrengthened _gate
  exact
    scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily
      hfamily hstrengthened

abbrev AcceptedSequenceDepth11Layer4StartViolationGate
    (scaledMargin : Fin numPairWords -> Int) : Type :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ->
    ObjectStartViolationMarginCert rank (scaledMargin rank)

theorem scaledMargin_nonpos_of_mixedEvalGateAtRank
    {scaledMargin : Fin numPairWords -> Int}
    (graph147Nonpos :
      AcceptedSequenceGraph147EvalNonposGate scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hgate :
      StrengthenedDepth11Layer4MixedEvalGateAtRank scaledMargin rank) :
    scaledMargin rank <= 0 := by
  cases hgate with
  | split10M gate =>
      exact scaledMargin_nonpos_of_split10MGraphExactEvalGate gate
  | graph147 gate =>
      exact graph147Nonpos hstrengthened gate

theorem nonIdentityRankKilled_of_mixedEvalOrKilledAtRank
    {scaledMargin : Fin numPairWords -> Int}
    (graph147Nonpos :
      AcceptedSequenceGraph147EvalNonposGate scaledMargin)
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hgate :
      AcceptedSequenceDepth11Layer4MixedEvalOrKilledAtRank
        scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  cases hgate with
  | killed hkilled =>
      exact hkilled
  | eval heval =>
      exact nonIdentityRankKilled_of_nonpos_startViolationMarginCert
        (scaledMargin_nonpos_of_mixedEvalGateAtRank
          graph147Nonpos hstrengthened heval)
        (startGate rank hstrengthened)

/--
All-rank killed surface obtained from the heterogeneous layer-4 portfolio.

This is the consumer that prevents downstream assembly from demanding a
`scaledMargin <= 0` proof for graph183 ranks that are already killed directly.
-/
structure AcceptedSequenceDepth11Layer4MixedKilledAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank

def acceptedSequenceMixedKilledAllFamily_of_evalOrKilledAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (graph147Nonpos :
      AcceptedSequenceGraph147EvalNonposGate scaledMargin)
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (hfamily :
      AcceptedSequenceDepth11Layer4MixedEvalOrKilledAllFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    exact nonIdentityRankKilled_of_mixedEvalOrKilledAtRank
      graph147Nonpos startGate hstrengthened
      (hfamily.family rank hstrengthened)

def acceptedSequenceMixedKilledAllFamily_of_graph183DirectPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (graph147Nonpos :
      AcceptedSequenceGraph147EvalNonposGate scaledMargin)
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin :=
  acceptedSequenceMixedKilledAllFamily_of_evalOrKilledAllFamily
    graph147Nonpos startGate
    (acceptedSequenceMixedEvalOrKilledAllFamily_of_graph183DirectPortfolio
      hfamily)

/--
Graph183-direct layer-4 portfolio whose graph147 branches expose semantic
step-run gates instead of graph-exact evaluator gates.

This is the preferred carrier after the deterministic-transducer pivot because
the graph147 branch context is preserved until the local step-run theorem is
turned into `scaledMargin <= 0`.
-/
structure AcceptedSequenceDepth11Layer4Graph183DirectStepRunPortfolioFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.tmpm Face.tppm
  yp_tmmm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.yp Face.tmmm
  graph147 :
    StrengthenedGraph147StepRunBranchBundle
      scaledMargin AcceptedSequenceBadFaceAtRank
  zm_tmpp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.tmpp
  zm_zp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp

def acceptedSequenceGraph183DirectStepRunPortfolioFamily_of_rootMarginBundle
    {scaledMargin : Fin numPairWords -> Int}
    (tmpm_tppm :
      StrengthenedDepth11Layer4MappedBranchPortfolioFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.tmpm Face.tppm)
    (yp_tmmm :
      StrengthenedDepth11Layer4MappedBranchPortfolioFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.yp Face.tmmm)
    (graph147 :
      StrengthenedGraph147RootMarginBundle
        scaledMargin AcceptedSequenceBadFaceAtRank)
    (zm_tmpp :
      StrengthenedDepth11Layer4MappedBranchPortfolioFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.tmpp)
    (zm_zp :
      StrengthenedDepth11Layer4MappedBranchPortfolioFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp) :
    AcceptedSequenceDepth11Layer4Graph183DirectStepRunPortfolioFamily
      scaledMargin where
  tmpm_tppm := tmpm_tppm
  yp_tmmm := yp_tmmm
  graph147 := stepRunBranchBundle_of_rootMarginBundle graph147
  zm_tmpp := zm_tmpp
  zm_zp := zm_zp

/--
Rank-local result for the step-run graph147 portfolio.

Graph147 branches are represented only by their nonpositive margin conclusion;
split-10M branches remain exact-eval gates, and graph183 remains directly
killed.
-/
inductive AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop
  | split :
      Split10MGraphExactEvalGateAtRank scaledMargin rank ->
        AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
          scaledMargin rank
  | nonpos :
      scaledMargin rank <= 0 ->
        AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
          scaledMargin rank
  | killed :
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank ->
        AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
          scaledMargin rank

structure AcceptedSequenceDepth11Layer4SplitNonposOrKilledBranchGateFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.tppm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  tmpm_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
  yp_tmmm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.tmmm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
      scaledMargin rank <= 0
  zm_tmpp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_yp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
      scaledMargin rank <= 0
  zm_zp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank

def acceptedSequenceSplitNonposOrKilledBranchGateFamily_of_graph183DirectStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4SplitNonposOrKilledBranchGateFamily
      scaledMargin where
  tmpm_tppm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.tmpm_tppm
      (Or.inl ⟨rfl, Or.inl rfl⟩)
      hstrengthened hprefix
  tmpm_zm := by
    intro rank rest hstrengthened hprefix
    exact nonIdentityRankKilled_of_acceptedSequenceGraph183SemanticCursor
      hstrengthened hprefix
  yp_tmmm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.yp_tmmm
      (Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩))
      hstrengthened hprefix
  yp_zm := by
    intro rank rest hstrengthened hprefix
    exact scaledMargin_nonpos_of_graph147RootStepRunGate
      (hfamily.graph147.yp_zm hstrengthened hprefix)
  zm_tmpp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.zm_tmpp
      (Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩))
      hstrengthened hprefix
  zm_yp := by
    intro rank rest hstrengthened hprefix
    exact scaledMargin_nonpos_of_graph147RootStepRunGate
      (hfamily.graph147.zm_yp hstrengthened hprefix)
  zm_zp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.zm_zp
      (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩))
      hstrengthened hprefix

structure AcceptedSequenceDepth11Layer4SplitNonposOrKilledAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank : Fin numPairWords,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
        AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
          scaledMargin rank

theorem acceptedSequenceSplitNonposOrKilledAllFamily_of_branchGateFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4SplitNonposOrKilledBranchGateFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4SplitNonposOrKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    rcases topPairingStepScheduleLabels_prefix3
        hstrengthened.closed.schedule with htmpm | hyp | hzm
    · rcases htmpm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.tmpm face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · rcases htmpmBranch with ⟨_hface₀, htppm | hzm⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.tmpm_tppm hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.killed
                (hfamily.tmpm_zm hstrengthened hprefix)
          · cases hypBranch.1
          · cases hzmBranch.1
    · rcases hyp with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.yp face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · cases htmpmBranch.1
          · rcases hypBranch with ⟨_hface₀, htmmm | hzm⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.yp_tmmm hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.nonpos
                (hfamily.yp_zm hstrengthened hprefix)
          · cases hzmBranch.1
    · rcases hzm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using
              hstrengthened.closed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          have hprefix :
              Depth11Layer4PrefixAtRank rank Face.zm face₁ rest := by
            dsimp [Depth11Layer4PrefixAtRank]
            simpa [topPairingRankFaceLabels] using hlabels3
          have hfrontier :=
            semanticFrontierBranch_of_closed_layer4_prefix
              hstrengthened.closed hprefix
          rcases hfrontier with htmpmBranch | hypBranch | hzmBranch
          · cases htmpmBranch.1
          · cases hypBranch.1
          · rcases hzmBranch with ⟨_hface₀, htmpp | hyp | hzp⟩
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.zm_tmpp hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.nonpos
                (hfamily.zm_yp hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.zm_zp hstrengthened hprefix)

def acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183DirectStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4SplitNonposOrKilledAllFamily
      scaledMargin :=
  acceptedSequenceSplitNonposOrKilledAllFamily_of_branchGateFamily
    (acceptedSequenceSplitNonposOrKilledBranchGateFamily_of_graph183DirectStepRunPortfolio
      hfamily)

theorem nonIdentityRankKilled_of_splitNonposOrKilledAtRank
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hgate :
      AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank
        scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  cases hgate with
  | killed hkilled =>
      exact hkilled
  | nonpos hnonpos =>
      exact nonIdentityRankKilled_of_nonpos_startViolationMarginCert
        hnonpos (startGate rank hstrengthened)
  | split heval =>
      exact nonIdentityRankKilled_of_nonpos_startViolationMarginCert
        (scaledMargin_nonpos_of_split10MGraphExactEvalGate heval)
        (startGate rank hstrengthened)

def acceptedSequenceMixedKilledAllFamily_of_graph183DirectStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    exact nonIdentityRankKilled_of_splitNonposOrKilledAtRank
      startGate hstrengthened
      ((acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183DirectStepRunPortfolio
        hfamily).family rank hstrengthened)

theorem graph183DirectKilledPortfolioSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket
