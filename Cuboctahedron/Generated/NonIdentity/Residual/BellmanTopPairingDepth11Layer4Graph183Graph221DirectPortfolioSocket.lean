import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221DirectStartViolationBridge

/-!
Layer-4 mixed portfolio socket with graph183 and graph221 direct-killed lanes.

`BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket` already
removes the graph183 `tmpm,zm` lane from the Bellman-margin burden.  The
graph221 direct start-violation bridge now does the same for the `zm,tmpp`
lane.  This socket exposes the combined layer-4 consumer:

* `tmpm,zm` is killed directly by the graph183 semantic cursor;
* `zm,tmpp` is killed directly by the graph221 semantic suffix split;
* graph147 lanes expose nonpositive margin step-run gates;
* the remaining split-10M lanes keep the existing mapped-branch portfolios.

No sampled rank/path object, selected-prefix id, accepted-trace dispatcher,
exact affine RHS key, or stored path table is introduced.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183Graph221DirectPortfolioSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221DirectStartViolationBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

/--
Branch-local checked result after both graph183 and graph221 have been moved
to direct start-violation consumers.
-/
structure AcceptedSequenceDepth11Layer4Graph183Graph221DirectBranchGateFamily
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
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
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

structure AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily
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
  zm_zp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp

def acceptedSequenceGraph183Graph221DirectBranchGateFamily_of_stepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4Graph183Graph221DirectBranchGateFamily
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
    exact nonIdentityRankKilled_of_graph221_zm_tmpp_semantic_direct
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

theorem acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectBranchGateFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183Graph221DirectBranchGateFamily
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
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.killed
                (hfamily.zm_tmpp hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.nonpos
                (hfamily.zm_yp hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.zm_zp hstrengthened hprefix)

def acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4SplitNonposOrKilledAllFamily
      scaledMargin :=
  acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectBranchGateFamily
    (acceptedSequenceGraph183Graph221DirectBranchGateFamily_of_stepRunPortfolio
      hfamily)

def acceptedSequenceMixedKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    exact nonIdentityRankKilled_of_splitNonposOrKilledAtRank
      startGate hstrengthened
      ((acceptedSequenceSplitNonposOrKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio
        hfamily).family rank hstrengthened)

def acceptedSequenceGraph183Graph221DirectStepRunPortfolioFamily_of_rootMarginBundle
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
    (zm_zp :
      StrengthenedDepth11Layer4MappedBranchPortfolioFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp) :
    AcceptedSequenceDepth11Layer4Graph183Graph221DirectStepRunPortfolioFamily
      scaledMargin where
  tmpm_tppm := tmpm_tppm
  yp_tmmm := yp_tmmm
  graph147 := stepRunBranchBundle_of_rootMarginBundle graph147
  zm_zp := zm_zp

/--
Target-completion producer ingress after both direct-killed pivots.

Compared with the graph183-only socket, this surface removes the `zm,tmpp`
mapped-branch producer entirely.  Downstream generation only needs split-10M
mapped producers for `tmpm,tppm`, `yp,tmmm`, and `zm,zp`, plus the graph147
step-run bundle and the ordinary start-violation gate for remaining nonpositive
branches.
-/
def acceptedSequenceMixedKilledAllFamily_of_graph183Graph221DirectTargetCompletionStepRunPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    {state_tmpm_tppm state_yp_tmmm state_zm_zp :
      TopPairingTargetCompletionState}
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (tmpm_tppm :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.tmpm Face.tppm
        state_tmpm_tppm)
    (yp_tmmm :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.yp Face.tmmm
        state_yp_tmmm)
    (graph147 :
      StrengthenedGraph147RootMarginBundle
        scaledMargin AcceptedSequenceBadFaceAtRank)
    (zm_zp :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp
        state_zm_zp) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin :=
  acceptedSequenceMixedKilledAllFamily_of_graph183Graph221DirectStepRunPortfolio
    startGate
    (acceptedSequenceGraph183Graph221DirectStepRunPortfolioFamily_of_rootMarginBundle
      (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
        tmpm_tppm)
      (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
        yp_tmmm)
      graph147
      (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
        zm_zp))

theorem graph183_graph221_direct_portfolio_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183Graph221DirectPortfolioSocket
