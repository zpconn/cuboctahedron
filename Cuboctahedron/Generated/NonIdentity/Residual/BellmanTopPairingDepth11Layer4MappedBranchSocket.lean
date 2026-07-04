import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish

/-!
Branch-level socket for the layer-4 mapped top-pairing Bellman portfolio.

The production target is
`Depth11Layer4SevenBranchMappedPortfolioAllFamily`, but future generated
membership proofs should be checked branch-by-branch before being bundled.
This file exposes that smaller theorem surface without selected-prefix covers,
sampled ranks, accepted-trace ids, exact affine keys, or raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish

/--
One semantic first-four branch of the mapped depth-11 portfolio.

The branch proof still has to provide a checked mapped class case, but it can
do so for one branch at a time.  This keeps future generated membership leaves
small and lets them fail locally if the semantic state is too weak.
-/
structure Depth11Layer4MappedBranchPortfolioFamily
    (scaledMargin : Fin numPairWords -> Int)
    (face₀ face₁ : Face) : Prop where
  classify :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          Depth11Layer4MappedClassCase scaledMargin rank

theorem mappedEvalGateAtRank_of_mappedBranchPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    (hfamily :
      Depth11Layer4MappedBranchPortfolioFamily
        scaledMargin face₀ face₁)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank :=
  mappedLayer4Result_of_mappedClassCase hclosed
    (hfamily.classify rank hclosed rest hprefix)
    hprefix hfrontier

theorem graphExactEvalGateAtRank_of_mappedBranchPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    (hfamily :
      Depth11Layer4MappedBranchPortfolioFamily
        scaledMargin face₀ face₁)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
    (mappedEvalGateAtRank_of_mappedBranchPortfolio
      hfamily hfrontier hclosed hprefix)

theorem scaledMargin_nonpos_of_mappedBranchPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    (hfamily :
      Depth11Layer4MappedBranchPortfolioFamily
        scaledMargin face₀ face₁)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalGate
    (graphExactEvalGateAtRank_of_mappedBranchPortfolio
      hfamily hfrontier hclosed hprefix)

/-- Seven independently checkable branch families for the mapped portfolio. -/
structure Depth11Layer4MappedBranchPortfolioBundle
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.tmpm Face.tppm
  tmpm_zm :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.tmpm Face.zm
  yp_tmmm :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.yp Face.tmmm
  yp_zm :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.yp Face.zm
  zm_tmpp :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.zm Face.tmpp
  zm_yp :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.zm Face.yp
  zm_zp :
    Depth11Layer4MappedBranchPortfolioFamily
      scaledMargin Face.zm Face.zp

theorem mappedPortfolio_of_mappedBranchPortfolioBundle
    {scaledMargin : Fin numPairWords -> Int}
    (hbundle :
      Depth11Layer4MappedBranchPortfolioBundle scaledMargin) :
    Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin where
  tmpm_tppm := by
    intro rank hclosed rest hprefix
    exact hbundle.tmpm_tppm.classify rank hclosed rest hprefix
  tmpm_zm := by
    intro rank hclosed rest hprefix
    exact hbundle.tmpm_zm.classify rank hclosed rest hprefix
  yp_tmmm := by
    intro rank hclosed rest hprefix
    exact hbundle.yp_tmmm.classify rank hclosed rest hprefix
  yp_zm := by
    intro rank hclosed rest hprefix
    exact hbundle.yp_zm.classify rank hclosed rest hprefix
  zm_tmpp := by
    intro rank hclosed rest hprefix
    exact hbundle.zm_tmpp.classify rank hclosed rest hprefix
  zm_yp := by
    intro rank hclosed rest hprefix
    exact hbundle.zm_yp.classify rank hclosed rest hprefix
  zm_zp := by
    intro rank hclosed rest hprefix
    exact hbundle.zm_zp.classify rank hclosed rest hprefix

theorem scaledMargin_nonpos_of_mappedBranchPortfolioBundle
    {scaledMargin : Fin numPairWords -> Int}
    (hbundle :
      Depth11Layer4MappedBranchPortfolioBundle scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4MappedPortfolio
    (mappedPortfolio_of_mappedBranchPortfolioBundle hbundle)
    hclosed

theorem depth11Layer4MappedBranchSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
