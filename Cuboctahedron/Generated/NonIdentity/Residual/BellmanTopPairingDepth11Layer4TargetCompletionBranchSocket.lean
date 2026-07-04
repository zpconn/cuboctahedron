import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket
import Cuboctahedron.Search.TopPairingTargetCompletionTail

/-!
Target-completion branch socket for the layer-4 mapped Bellman route.

The strengthened mapped branch surface lets future generated proofs use
`TopPairingActualFaceOmniAtRank`.  This file factors the next intended proof
one step further through `TopPairingTargetCompletionTail`, the semantic state
that tracks remaining actual faces and target-cancellation progress.

This is still only a theorem surface: it does not enumerate ranks, selected
prefixes, accepted traces, exact affine keys, or raw paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedBranchSocket

/--
Branch family factored through a target-completion semantic state.

The `tail` field is the membership theorem for the semantic state.  The
`classify` field proves the mapped depth-11 class case from that semantic
state.  This is the next generated proof shape to try before any broader
portfolio emission.
-/
structure StrengthenedDepth11Layer4TargetCompletionBranchFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (face₀ face₁ : Face)
    (state : TopPairingTargetCompletionState) : Prop where
  tail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          TopPairingTargetCompletionTail state rest
  classify :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          TopPairingTargetCompletionTail state rest ->
          Depth11Layer4MappedClassCase scaledMargin rank

theorem strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {face₀ face₁ : Face}
    {state : TopPairingTargetCompletionState}
    (hfamily :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin sequenceBadFace face₀ face₁ state) :
    StrengthenedDepth11Layer4MappedBranchPortfolioFamily
      scaledMargin sequenceBadFace face₀ face₁ where
  classify := by
    intro rank hstrengthened rest hprefix
    exact hfamily.classify rank hstrengthened rest hprefix
      (hfamily.tail rank hstrengthened rest hprefix)

theorem mappedEvalGateAtRank_of_targetCompletionBranchFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    {state : TopPairingTargetCompletionState}
    (hfamily :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin sequenceBadFace face₀ face₁ state)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank :=
  mappedEvalGateAtRank_of_strengthenedMappedBranchPortfolio
    (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
      hfamily)
    hfrontier hstrengthened hprefix

theorem graphExactEvalGateAtRank_of_targetCompletionBranchFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    {state : TopPairingTargetCompletionState}
    (hfamily :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin sequenceBadFace face₀ face₁ state)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_strengthenedMappedBranchPortfolio
    (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
      hfamily)
    hfrontier hstrengthened hprefix

theorem scaledMargin_nonpos_of_targetCompletionBranchFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    {face₀ face₁ : Face} {rest : List Face}
    {state : TopPairingTargetCompletionState}
    (hfamily :
      StrengthenedDepth11Layer4TargetCompletionBranchFamily
        scaledMargin sequenceBadFace face₀ face₁ state)
    (hfrontier : Depth11Layer4SemanticFrontierBranch face₀ face₁)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_strengthenedMappedBranchPortfolio
    (strengthenedMappedBranchPortfolio_of_targetCompletionBranchFamily
      hfamily)
    hfrontier hstrengthened hprefix

theorem depth11Layer4TargetCompletionBranchSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
