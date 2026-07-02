import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSuffixEmitter1MSmoke

/-!
Graph-accepted prefix frontier to graph-suffix bridge.

The graph-accepted classifier proves a prefix-4 frontier using `List.take`.
The graph-suffix emitter consumes the same information as a local
`face₀`/`face₁` disjunction.  This module is the small adapter between those
two theorem surfaces; it does not enumerate ranks, selected prefixes, or
sampled paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSuffixEmitter1MSmoke

theorem graphPrefix4FrontierLabels_of_cons2
    {labels : List Face} {face₀ face₁ : Face} {rest : List Face}
    (hlabels : labels = Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier : GraphPrefix4FrontierLabels labels) :
      (face₀ = Face.tmpm ∧ (face₁ = Face.tppm ∨ face₁ = Face.zm)) ∨
      (face₀ = Face.yp ∧ (face₁ = Face.tmmm ∨ face₁ = Face.zm)) ∨
      (face₀ = Face.zm ∧
        (face₁ = Face.tmpp ∨ face₁ = Face.yp ∨ face₁ = Face.zp)) := by
  subst labels
  unfold GraphPrefix4FrontierLabels at hfrontier
  simp at hfrontier
  rcases hfrontier with htmpmTppm | htmpmZm | hypTmmm | hypZm |
    hzmTmpp | hzmYp | hzmZp
  · rcases htmpmTppm with ⟨hface₀, hface₁⟩
    exact Or.inl ⟨hface₀, Or.inl hface₁⟩
  · rcases htmpmZm with ⟨hface₀, hface₁⟩
    exact Or.inl ⟨hface₀, Or.inr hface₁⟩
  · rcases hypTmmm with ⟨hface₀, hface₁⟩
    exact Or.inr (Or.inl ⟨hface₀, Or.inl hface₁⟩)
  · rcases hypZm with ⟨hface₀, hface₁⟩
    exact Or.inr (Or.inl ⟨hface₀, Or.inr hface₁⟩)
  · rcases hzmTmpp with ⟨hface₀, hface₁⟩
    exact Or.inr (Or.inr ⟨hface₀, Or.inl hface₁⟩)
  · rcases hzmYp with ⟨hface₀, hface₁⟩
    exact Or.inr (Or.inr ⟨hface₀, Or.inr (Or.inl hface₁)⟩)
  · rcases hzmZp with ⟨hface₀, hface₁⟩
    exact Or.inr (Or.inr ⟨hface₀, Or.inr (Or.inr hface₁)⟩)

theorem graphBranchTableSuffixOk_s0143_depth2_of_graphPrefix4Frontier
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier :
      GraphPrefix4FrontierLabels (topPairingRankFaceLabels rank))
    (hsuffix :
      ∀ graph₁ gain₁ graph₂ gain₂,
        graphSmokeNext (143 : State) (smokeLabelOfFace face₀) =
          some (graph₁, gain₁) ->
        graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
          some (graph₂, gain₂) ->
        GraphBranchTableSuffixOk rank graph₂ rest) :
    GraphBranchTableSuffixOk rank (143 : State) (face₀ :: face₁ :: rest) :=
  graphBranchTableSuffixOk_s0143_depth2_of_frontier
    (graphPrefix4FrontierLabels_of_cons2 hlabels hfrontier)
    hsuffix

theorem graphBranchTableSuffixOk_s0143_depth2_of_strengthenedTerminal
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
          rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank))
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hsuffix :
      ∀ graph₁ gain₁ graph₂ gain₂,
        graphSmokeNext (143 : State) (smokeLabelOfFace face₀) =
          some (graph₁, gain₁) ->
        graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
          some (graph₂, gain₂) ->
        GraphBranchTableSuffixOk rank graph₂ rest) :
    GraphBranchTableSuffixOk rank (143 : State) (face₀ :: face₁ :: rest) :=
  graphBranchTableSuffixOk_s0143_depth2_of_graphPrefix4Frontier
    hlabels
    (graphPrefix4Frontier_of_strengthened_terminal hstrengthened hterm)
    hsuffix

theorem graphAcceptedSuffixBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixBridge
