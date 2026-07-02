import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

/-!
Graph-accepted prefix frontier to split-10M graph-suffix bridge.

This module is the split-10M counterpart of the older 1M suffix bridge.  It
uses the strengthened terminal/frontier filter to expose the actual prefix-4
branch, then delegates the remaining suffix to graph-only
`GraphBranchTableSuffixOk` evidence.  The final theorem feeds that suffix into
the deterministic transducer/evaluator bridge for the split-10M graph.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def Split10MPrefix4FrontierCons2 (face₀ face₁ : Face) : Prop :=
  (face₀ = Face.tmpm ∧ (face₁ = Face.tppm ∨ face₁ = Face.zm)) ∨
  (face₀ = Face.yp ∧ (face₁ = Face.tmmm ∨ face₁ = Face.zm)) ∨
  (face₀ = Face.zm ∧
    (face₁ = Face.tmpp ∨ face₁ = Face.yp ∨ face₁ = Face.zp))

theorem graphPrefix4FrontierLabels_of_cons2
    {labels : List Face} {face₀ face₁ : Face} {rest : List Face}
    (hlabels : labels = Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier : GraphPrefix4FrontierLabels labels) :
      Split10MPrefix4FrontierCons2 face₀ face₁ := by
  subst labels
  unfold GraphPrefix4FrontierLabels at hfrontier
  unfold Split10MPrefix4FrontierCons2
  simp at hfrontier
  rcases hfrontier with htmpmTppm | htmpmZm | hypTmmm | hypZm |
    hzmTmpp | hzmYp | hzmZp
  · exact Or.inl ⟨htmpmTppm.1, Or.inl htmpmTppm.2⟩
  · exact Or.inl ⟨htmpmZm.1, Or.inr htmpmZm.2⟩
  · exact Or.inr (Or.inl ⟨hypTmmm.1, Or.inl hypTmmm.2⟩)
  · exact Or.inr (Or.inl ⟨hypZm.1, Or.inr hypZm.2⟩)
  · exact Or.inr (Or.inr ⟨hzmTmpp.1, Or.inl hzmTmpp.2⟩)
  · exact Or.inr (Or.inr ⟨hzmYp.1, Or.inr (Or.inl hzmYp.2)⟩)
  · exact Or.inr (Or.inr ⟨hzmZp.1, Or.inr (Or.inr hzmZp.2)⟩)

theorem graphPrefix4FrontierLabels_exists_cons2
    {labels : List Face}
    (hfrontier : GraphPrefix4FrontierLabels labels) :
    ∃ face₀ face₁ rest,
      labels = Face.xm :: Face.ym :: face₀ :: face₁ :: rest ∧
        Split10MPrefix4FrontierCons2 face₀ face₁ := by
  unfold GraphPrefix4FrontierLabels at hfrontier
  rcases hfrontier with htmpmTppm | htmpmZm | hypTmmm | hypZm |
    hzmTmpp | hzmYp | hzmZp
  · refine ⟨Face.tmpm, Face.tppm, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [htmpmTppm] at hdecomp
      simpa using hdecomp
    · exact Or.inl ⟨rfl, Or.inl rfl⟩
  · refine ⟨Face.tmpm, Face.zm, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [htmpmZm] at hdecomp
      simpa using hdecomp
    · exact Or.inl ⟨rfl, Or.inr rfl⟩
  · refine ⟨Face.yp, Face.tmmm, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [hypTmmm] at hdecomp
      simpa using hdecomp
    · exact Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩)
  · refine ⟨Face.yp, Face.zm, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [hypZm] at hdecomp
      simpa using hdecomp
    · exact Or.inr (Or.inl ⟨rfl, Or.inr rfl⟩)
  · refine ⟨Face.zm, Face.tmpp, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [hzmTmpp] at hdecomp
      simpa using hdecomp
    · exact Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩)
  · refine ⟨Face.zm, Face.yp, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [hzmYp] at hdecomp
      simpa using hdecomp
    · exact Or.inr (Or.inr ⟨rfl, Or.inr (Or.inl rfl)⟩)
  · refine ⟨Face.zm, Face.zp, labels.drop 4, ?_, ?_⟩
    · have hdecomp : labels = labels.take 4 ++ labels.drop 4 :=
        (List.take_append_drop 4 labels).symm
      rw [hzmZp] at hdecomp
      simpa using hdecomp
    · exact Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩)

theorem graphBranchTableSuffixOk_of_strengthenedTerminalFrontier
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (hsuffix :
      ∀ face₀ face₁ rest,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
        Split10MPrefix4FrontierCons2 face₀ face₁ ->
        ∀ graph₁ gain₁ graph₂ gain₂,
          graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
            some (graph₁, gain₁) ->
          graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
            some (graph₂, gain₂) ->
          GraphBranchTableSuffixOk rank graph₂ rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  have hfrontier :=
    graphPrefix4Frontier_of_strengthened_terminal hstrengthened hterm
  rcases graphPrefix4FrontierLabels_exists_cons2 hfrontier with
    ⟨face₀, face₁, rest, hlabels, hfrontierCons⟩
  exact branchTableSuffixOk_root_of_closedPrefix2
    (rank := rank) (rest := face₀ :: face₁ :: rest)
    hlabels
    (branchTableSuffixOk_of_graphBranchTableSuffixOk
      (state := closedPrefix2EvalState)
      (graphBranchTableSuffixOk_closedPrefix2_branch_of_closed
        hstrengthened.closed hlabels
        (fun graph₁ gain₁ hgraph₁ =>
          graphBranchTableSuffixOk_closedPrefix3_branch_of_closed
            hstrengthened.closed hlabels hgraph₁
            (fun graph₂ gain₂ hgraph₂ =>
              hsuffix face₀ face₁ rest hlabels hfrontierCons
                graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂))))

theorem evalLanguageAtRank_of_strengthenedTerminalFrontier
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (hsuffix :
      ∀ face₀ face₁ rest,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
        Split10MPrefix4FrontierCons2 face₀ face₁ ->
        ∀ graph₁ gain₁ graph₂ gain₂,
          graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
            some (graph₁, gain₁) ->
          graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
            some (graph₂, gain₂) ->
          GraphBranchTableSuffixOk rank graph₂ rest)
    (hfinish :
      forall {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        BranchInv finish ->
        BranchTableSuffixOk rank finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_branchTableSuffixOk hstrengthened.closed
    (graphBranchTableSuffixOk_of_strengthenedTerminalFrontier
      hstrengthened hterm hsuffix)
    hfinish

def Split10MGraphSuffixProducer (rank : Fin numPairWords) : Prop :=
  ∀ face₀ face₁ rest,
    topPairingRankFaceLabels rank =
      Face.xm :: Face.ym :: face₀ :: face₁ :: rest ->
    Split10MPrefix4FrontierCons2 face₀ face₁ ->
    ∀ graph₁ gain₁ graph₂ gain₂,
      graphSmokeNext (610 : State) (smokeLabelOfFace face₀) =
        some (graph₁, gain₁) ->
      graphSmokeNext graph₁ (smokeLabelOfFace face₁) =
        some (graph₂, gain₂) ->
      GraphBranchTableSuffixOk rank graph₂ rest

def Split10MFinalMarginProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  forall {finish : FaceEvalState} {gain : Int},
    evalLabelStepFn faceEvalNext
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) = some (finish, gain) ->
    finish.Tail [] ->
    BranchInv finish ->
    BranchTableSuffixOk rank finish [] ->
      0 <= graphPotential finish.graph ∧
        scaledMargin rank <= (176 : Int) + gain

def Split10MGraphSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∃ _ :
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym,
    TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧
      Split10MGraphSuffixProducer rank ∧
        Split10MFinalMarginProducer scaledMargin rank

theorem evalLanguageAtRank_of_split10MGraphSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : Split10MGraphSuffixMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases hfamily with ⟨hstrengthened, hterm, hsuffix, hfinish⟩
  exact evalLanguageAtRank_of_strengthenedTerminalFrontier
    hstrengthened hterm hsuffix hfinish

theorem split10MGraphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  change (176 : Int) + (-176 : Int) <= 0
  norm_num

theorem split10MGraphStartInRange :
    rootState < stateCount := by
  change (0 : Nat) < 970
  decide

theorem scaledMargin_nonpos_of_split10MGraphSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : Split10MGraphSuffixMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 := by
  have hevalLanguage :=
    evalLanguageAtRank_of_split10MGraphSuffixMarginFamily hfamily
  exact scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (hnext := by
      intro s label t gain hs hnext
      exact _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
        hs hnext)
    (hstart := split10MGraphStartInRange)
    (hroot := split10MGraphRootBound)
    (heval := hevalLanguage.eval_accepts)

theorem graphAcceptedSuffixSplit10MBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
