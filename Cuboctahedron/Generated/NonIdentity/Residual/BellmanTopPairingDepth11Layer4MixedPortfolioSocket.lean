import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket

/-!
Mixed layer-4 portfolio socket for the top-pairing Bellman route.

The mapped portfolio remains useful for the non-graph147 layer-4 lanes, while
the graph147 lanes now have a stronger direct semantic margin route.  This file
packages that intended production split:

* five layer-4 lanes may be discharged by the existing strengthened mapped
  branch portfolio surface;
* the two graph147 lanes are discharged by
  `StrengthenedGraph147GraphExactBranchBundle`.

This is still branch-local.  A later root classifier must route strengthened
closed ranks into one of these seven branches using semantic closed-language
state, not sampled ranks, selected prefixes, accepted trace ids, or affine keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MixedPortfolioSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

/--
Local graph147 branch producer used by the mixed layer-4 portfolio.

This repeats the branch-level shape in this module so the mixed portfolio can
be checked against already compiled graph147 root-margin adapters.  The source
graph147 socket also exposes an equivalent branch bundle for future imports.
-/
structure StrengthenedDepth11Layer4Graph147GraphExactBranchFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym
  zm_yp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym

def graph147GraphExactBranchFamily_of_rootMarginBundle
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hbundle :
      StrengthenedGraph147RootMarginBundle
        scaledMargin sequenceBadFace) :
    StrengthenedDepth11Layer4Graph147GraphExactBranchFamily
      scaledMargin sequenceBadFace where
  yp_zm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_rootMarginBundle_yp_zm
      hbundle hstrengthened hprefix
  zm_yp := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_rootMarginBundle_zm_yp
      hbundle hstrengthened hprefix

/--
Mixed production target for layer-4.

The two graph147 branches are supplied by the direct graph147 semantic route.
The remaining branches use the strengthened mapped-branch portfolio surface.
-/
structure StrengthenedDepth11Layer4MixedGraphExactPortfolioFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tmpm_tppm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace Face.tmpm Face.tppm
  tmpm_zm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace Face.tmpm Face.zm
  yp_tmmm :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace Face.yp Face.tmmm
  graph147 :
    StrengthenedDepth11Layer4Graph147GraphExactBranchFamily
      scaledMargin sequenceBadFace
  zm_tmpp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace Face.zm Face.tmpp
  zm_zp :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace Face.zm Face.zp

/--
The checked result of a mixed layer-4 branch portfolio.

The result type intentionally records two different gate surfaces.  The five
mapped branches still target the split-10M graph; the two graph147 branches
target the strengthened graph147 evaluator.  A later root theorem can combine
these at the semantic nonpos/killed layer without pretending the evaluator
states are identical.
-/
structure StrengthenedDepth11Layer4MixedBranchGateFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tmpm_tppm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.tppm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  tmpm_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_tmmm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.tmmm rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_zm :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym
  zm_tmpp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_yp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym
  zm_zp :
    ∀ {rank : Fin numPairWords} {rest : List Face},
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
      Split10MGraphExactEvalGateAtRank scaledMargin rank

theorem mixedBranchGateFamily_of_mixedPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedDepth11Layer4MixedGraphExactPortfolioFamily
        scaledMargin sequenceBadFace) :
    StrengthenedDepth11Layer4MixedBranchGateFamily
      scaledMargin sequenceBadFace where
  tmpm_tppm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.tmpm_tppm
      (Or.inl ⟨rfl, Or.inl rfl⟩)
      hstrengthened hprefix
  tmpm_zm := by
    intro rank rest hstrengthened hprefix
    exact graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
      hfamily.tmpm_zm
      (Or.inl ⟨rfl, Or.inr rfl⟩)
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
Heterogeneous layer-4 gate for the mixed portfolio.

This is the right root-facing result until the two evaluator surfaces are
combined at a later semantic nonpositive/killed layer.  A rank is routed either
to a split-10M graph gate or to the strengthened graph147 gate; no selected
prefix, accepted trace id, sampled rank object, or affine key is introduced.
-/
inductive StrengthenedDepth11Layer4MixedEvalGateAtRank
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop
  | split10M :
      Split10MGraphExactEvalGateAtRank scaledMargin rank ->
        StrengthenedDepth11Layer4MixedEvalGateAtRank scaledMargin rank
  | graph147 :
      TopPairingGraphExactEvalGateAtRank
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext (fun face : Face => face)
        strengthenedClosedEvalStart (176 : Int)
        scaledMargin rank Face.ym ->
          StrengthenedDepth11Layer4MixedEvalGateAtRank scaledMargin rank

/--
All-rank strengthened closed-language classifier for the mixed layer-4
portfolio.  The result remains heterogeneous on purpose.
-/
structure StrengthenedDepth11Layer4MixedEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  family :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        StrengthenedDepth11Layer4MixedEvalGateAtRank scaledMargin rank

theorem mixedEvalAllFamily_of_mixedBranchGateFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedDepth11Layer4MixedBranchGateFamily
        scaledMargin sequenceBadFace) :
    StrengthenedDepth11Layer4MixedEvalAllFamily
      scaledMargin sequenceBadFace where
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
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                (hfamily.tmpm_tppm hstrengthened hprefix)
            · subst face₁
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
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
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                (hfamily.yp_tmmm hstrengthened hprefix)
            · subst face₁
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.graph147
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
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                (hfamily.zm_tmpp hstrengthened hprefix)
            · subst face₁
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.graph147
                (hfamily.zm_yp hstrengthened hprefix)
            · subst face₁
              exact StrengthenedDepth11Layer4MixedEvalGateAtRank.split10M
                (hfamily.zm_zp hstrengthened hprefix)

theorem depth11Layer4MixedPortfolioSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MixedPortfolioSocket
