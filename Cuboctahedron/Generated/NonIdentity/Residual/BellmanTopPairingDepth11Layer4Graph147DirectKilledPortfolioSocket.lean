import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183Graph221DirectPortfolioSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectStartViolationBridge

/-!
Layer-4 mixed portfolio socket with graph147 target-tail direct kills.

The graph183 `tmpm,zm`, graph221 `zm,tmpp`, and graph147 `yp,zm`/`zm,yp`
lanes are now semantic direct-kill lanes.  The remaining layer-4 lanes keep the
existing split-10M mapped-branch producer shape:

* `tmpm,tppm`;
* `yp,tmmm`;
* `zm,zp`.

This socket is intentionally only an adapter over already checked semantic
branch theorems.  It introduces no sampled rank/path object, selected-prefix
id, accepted-trace membership table, exact affine RHS key, or stored path
table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectKilledPortfolioSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183QuotientMarginSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183DirectKilledPortfolioSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221DirectStartViolationBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectStartViolationBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket

structure AcceptedSequenceDepth11Layer4Graph147DirectMappedPortfolioFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.tmpm Face.tppm
  yp_tmmm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.yp Face.tmmm
  zm_zp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp

structure AcceptedSequenceDepth11Layer4Graph147DirectBranchGateFamily
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
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
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
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
  zm_zp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank

def acceptedSequenceGraph147DirectBranchGateFamily_of_mappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph147DirectMappedPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4Graph147DirectBranchGateFamily
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
    exact nonIdentityRankKilled_of_graph147_yp_zm_semantic_direct
      hstrengthened hprefix
  zm_tmpp := by
    intro rank rest hstrengthened hprefix
    exact nonIdentityRankKilled_of_graph221_zm_tmpp_semantic_direct
      hstrengthened hprefix
  zm_yp := by
    intro rank rest hstrengthened hprefix
    exact nonIdentityRankKilled_of_graph147_zm_yp_semantic_direct
      hstrengthened hprefix
  zm_zp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.zm_zp
      (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩))
      hstrengthened hprefix

theorem acceptedSequenceSplitNonposOrKilledAllFamily_of_graph147DirectBranchGateFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph147DirectBranchGateFamily
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
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.killed
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
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.killed
                (hfamily.zm_yp hstrengthened hprefix)
            · subst face₁
              exact AcceptedSequenceDepth11Layer4SplitNonposOrKilledAtRank.split
                (hfamily.zm_zp hstrengthened hprefix)

def acceptedSequenceMixedKilledAllFamily_of_graph147DirectMappedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      AcceptedSequenceDepth11Layer4StartViolationGate scaledMargin)
    (hfamily :
      AcceptedSequenceDepth11Layer4Graph147DirectMappedPortfolioFamily
        scaledMargin) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin where
  family := by
    intro rank hstrengthened
    exact nonIdentityRankKilled_of_splitNonposOrKilledAtRank
      startGate hstrengthened
      ((acceptedSequenceSplitNonposOrKilledAllFamily_of_graph147DirectBranchGateFamily
        (acceptedSequenceGraph147DirectBranchGateFamily_of_mappedPortfolio
          hfamily)).family rank hstrengthened)

def acceptedSequenceMixedKilledAllFamily_of_graph147DirectTargetCompletionPortfolio
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
    (zm_zp :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin AcceptedSequenceBadFaceAtRank Face.zm Face.zp
        state_zm_zp) :
    AcceptedSequenceDepth11Layer4MixedKilledAllFamily
      scaledMargin :=
  acceptedSequenceMixedKilledAllFamily_of_graph147DirectMappedPortfolio
    startGate
    { tmpm_tppm :=
        strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
          tmpm_tppm
      yp_tmmm :=
        strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
          yp_tmmm
      zm_zp :=
        strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
          zm_zp }

theorem graph147_direct_killed_portfolio_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectKilledPortfolioSocket
