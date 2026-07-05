import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

/-!
Layer-4 semantic classifier socket for the graph-exact Bellman producer.

The preferred producer target is a closed-language-to-evaluator theorem.  This
module factors that target through the first four contribution-order faces
derived from `TopPairingClosedLanguageAtRank`.  A future generated classifier
can work from the closed-language-derived prefix branch instead of introducing
sampled ranks, accepted traces, selected-prefix covers, exact affine RHS keys,
or raw graph paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def Depth11Layer4PrefixAtRank
    (rank : Fin numPairWords) (face₀ face₁ : Face) (rest : List Face) :
    Prop :=
  topPairingRankFaceLabels rank =
    Face.xm :: Face.ym :: face₀ :: face₁ :: rest

def Depth11Layer4ThirdAllowed (face₀ : Face) : Prop :=
  face₀ = Face.tmpm ∨ face₀ = Face.yp ∨ face₀ = Face.zm

def Depth11Layer4FourthAllowed (face₁ : Face) : Prop :=
  face₁ = Face.tmmm ∨ face₁ = Face.tmpp ∨ face₁ = Face.tppm ∨
    face₁ = Face.yp ∨ face₁ = Face.zm ∨ face₁ = Face.zp

def Depth11Layer4BranchAllowed (face₀ face₁ : Face) : Prop :=
  Depth11Layer4ThirdAllowed face₀ ∧ Depth11Layer4FourthAllowed face₁

def Depth11Layer4SemanticFrontierBranch (face₀ face₁ : Face) : Prop :=
  (face₀ = Face.tmpm ∧ (face₁ = Face.tppm ∨ face₁ = Face.zm)) ∨
  (face₀ = Face.yp ∧ (face₁ = Face.tmmm ∨ face₁ = Face.zm)) ∨
  (face₀ = Face.zm ∧
    (face₁ = Face.tmpp ∨ face₁ = Face.yp ∨ face₁ = Face.zp))

private theorem depth11Layer4BranchAllowed_of_closed_prefix
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Depth11Layer4BranchAllowed face₀ face₁ := by
  have hlabels :
      faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
    simpa [Depth11Layer4PrefixAtRank, topPairingRankFaceLabels] using
      hprefix
  rcases hclosed.schedule with ⟨_hlen, hfrom⟩
  rw [hlabels] at hfrom
  unfold TopPairingStepScheduleFrom at hfrom
  rcases hfrom with ⟨_h0, hfrom1⟩
  unfold TopPairingStepScheduleFrom at hfrom1
  rcases hfrom1 with ⟨_h1, hfrom2⟩
  unfold TopPairingStepScheduleFrom at hfrom2
  rcases hfrom2 with ⟨hface₀, hfrom3⟩
  unfold TopPairingStepScheduleFrom at hfrom3
  rcases hfrom3 with ⟨hface₁, _hrest⟩
  simp [topPairingAllowedFacesAtStep] at hface₀ hface₁
  exact ⟨hface₀, hface₁⟩

set_option maxHeartbeats 800000 in
private theorem depth11Layer4SemanticFrontierBranch_of_closed_prefix
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Depth11Layer4SemanticFrontierBranch face₀ face₁ := by
  let step0 : TerminalStepState := TerminalStepState.initial
  let step1 : TerminalStepState := step0.nextStep Face.xm
  let step2 : TerminalStepState := step1.nextStep Face.ym
  let step3 : TerminalStepState := step2.nextStep face₀
  have hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
    exact hprefix
  have hcontains0 : TerminalStepState.Contains step0 rank := by
    simpa [step0] using initial_contains_of_closed hclosed
  have hcontains1 : TerminalStepState.Contains step1 rank := by
    refine contains_nextStep
      (rank := rank) (state := step0) (face := Face.xm)
      (rest := Face.ym :: face₀ :: face₁ :: rest)
      hcontains0 ?_
    simp [step0, hlabels, TerminalStepState.initial]
  have hcontains2 : TerminalStepState.Contains step2 rank := by
    refine contains_nextStep
      (rank := rank) (state := step1) (face := Face.ym)
      (rest := face₀ :: face₁ :: rest)
      hcontains1 ?_
    simp [step0, step1, hlabels, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      triLetterOfFace?, pairOfFace,
      TriLetter.ofPairId?]
  have hcontains3 : TerminalStepState.Contains step3 rank := by
    refine contains_nextStep
      (rank := rank) (state := step2) (face := face₀)
      (rest := face₁ :: rest)
      hcontains2 ?_
    simp [step0, step1, step2, hlabels,
      TerminalStepState.initial, TerminalStepState.nextStep,
      TerminalStepState.squareStep,
      triLetterOfFace?, pairOfFace, TriLetter.ofPairId?]
  have hpfx3 : step3.pfx = [Face.xm, Face.ym, face₀] := by
    cases face₀ <;>
      simp [step0, step1, step2, step3, TerminalStepState.initial,
        TerminalStepState.nextStep, TerminalStepState.squareStep,
        TerminalStepState.triStep, triLetterOfFace?, pairOfFace,
        TriLetter.ofPairId?]
  have hhead :
      TerminalStepState.Head step3 rank face₁ rest := by
    refine ⟨hcontains3, ?_⟩
    rw [hpfx3]
    simp [hlabels]
  have hcons := hhead.transducer_cons
  have hbranch := depth11Layer4BranchAllowed_of_closed_prefix
    hclosed hprefix
  cases face₀ <;> cases face₁ <;>
    simp [Depth11Layer4SemanticFrontierBranch,
      Depth11Layer4BranchAllowed, Depth11Layer4ThirdAllowed,
      Depth11Layer4FourthAllowed,
      step0, step1, step2, step3, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      TerminalStepState.triStep, TopPairingLocalAxisAllows,
      topPairingNextLinear, topPairingNextGap, topPairingLocalAxis,
      triLetterOfFace?, TriLetter.ofPairId?, TriLetter.act,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      topPairingTargetShadow, pairOfFace, isSquarePair,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id, normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at hbranch hcons ⊢
  all_goals
    try norm_num at hcons

theorem semanticFrontierBranch_of_closed_layer4_prefix
    {rank : Fin numPairWords} {face₀ face₁ : Face} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank face₀ face₁ rest) :
    Depth11Layer4SemanticFrontierBranch face₀ face₁ :=
  depth11Layer4SemanticFrontierBranch_of_closed_prefix hclosed hprefix

/--
Emitter-facing first-four classifier obligation.

The generated proof should use semantic closed-language data plus the first
four contribution-order labels to produce the graph-exact eval gate.  This is a
deterministic transducer obligation, not a rank/path lookup obligation.
-/
structure Depth11Layer4GraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  classify :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ face₀ face₁ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank

/--
Sharper emitter-facing obligation that also receives the schedule-allowed
first-four branch.  This is the better production target when the generated
classifier wants to case-split by the local semantic branch.
-/
structure Depth11Layer4BranchGraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  classify :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ face₀ face₁ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          Depth11Layer4BranchAllowed face₀ face₁ ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank

structure Depth11Layer4SemanticFrontierGraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  classify :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ face₀ face₁ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          Depth11Layer4SemanticFrontierBranch face₀ face₁ ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank

structure Depth11Layer4SevenBranchGraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.tppm rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  tmpm_zm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_tmmm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.tmmm rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  yp_zm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_tmpp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_yp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank
  zm_zp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
          Split10MGraphExactEvalGateAtRank scaledMargin rank

/--
Mapped-label graph-exact result for the split-10M graph.

Generated graph modules usually compute on
`(topPairingRankFaceLabels rank).map smokeLabelOfFace`.  This structure keeps
that emitter-facing equation while the adapter below rewrites it to the public
Bellman label word once.
-/
structure Depth11Layer4MappedGraphExactEvalResult
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finish : State) (gain : Int) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank Face.ym
  eval_eq :
    evalLabelStepFn graphSmokeNext rootState
      ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finish, gain)
  final_nonneg :
    0 <= graphPotential finish
  margin_bound :
    scaledMargin rank <= (176 : Int) + gain

abbrev Depth11Layer4MappedGraphExactEvalGateAtRank
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∃ finish gain,
    Depth11Layer4MappedGraphExactEvalResult
      scaledMargin rank finish gain

structure Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  tmpm_tppm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.tppm rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  tmpm_zm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  yp_tmmm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.tmmm rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  yp_zm :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  zm_tmpp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  zm_yp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank
  zm_zp :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.zp rest ->
          Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank

theorem layer4Classifier_of_branchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin) :
    Depth11Layer4GraphExactEvalAllFamily scaledMargin where
  classify := by
    intro rank hclosed face₀ face₁ rest hprefix
    exact hfamily.classify rank hclosed face₀ face₁ rest hprefix
      (depth11Layer4BranchAllowed_of_closed_prefix hclosed hprefix)

theorem layer4BranchClassifier_of_semanticFrontierClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SemanticFrontierGraphExactEvalAllFamily scaledMargin) :
    Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin where
  classify := by
    intro rank hclosed face₀ face₁ rest hprefix _hbranch
    exact hfamily.classify rank hclosed face₀ face₁ rest hprefix
      (depth11Layer4SemanticFrontierBranch_of_closed_prefix hclosed hprefix)

theorem split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hresult :
      Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank := by
  rcases hresult with ⟨finish, gain, hresult⟩
  exact graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_mappedRankLabelsGraphExact
      (V := graphPotential)
      (next := graphSmokeNext)
      (labelOfFace := smokeLabelOfFace)
      (start := rootState)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (rank := rank)
      (badFace := Face.ym)
      (finish := finish)
      (gain := gain)
      hresult.closed
      hresult.eval_eq
      hresult.final_nonneg
      hresult.margin_bound)

theorem sevenBranchClassifier_of_mappedSevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily scaledMargin) :
    Depth11Layer4SevenBranchGraphExactEvalAllFamily scaledMargin where
  tmpm_tppm := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.tmpm_tppm rank hclosed rest hprefix)
  tmpm_zm := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.tmpm_zm rank hclosed rest hprefix)
  yp_tmmm := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.yp_tmmm rank hclosed rest hprefix)
  yp_zm := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.yp_zm rank hclosed rest hprefix)
  zm_tmpp := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.zm_tmpp rank hclosed rest hprefix)
  zm_yp := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.zm_yp rank hclosed rest hprefix)
  zm_zp := by
    intro rank hclosed rest hprefix
    exact split10MGraphExactEvalGateAtRank_of_mappedLayer4Result
      (hfamily.zm_zp rank hclosed rest hprefix)

theorem semanticFrontierClassifier_of_sevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4SevenBranchGraphExactEvalAllFamily scaledMargin) :
    Depth11Layer4SemanticFrontierGraphExactEvalAllFamily scaledMargin where
  classify := by
    intro rank hclosed face₀ face₁ rest hprefix hfrontier
    rcases hfrontier with htmpm | hyp | hzm
    · rcases htmpm with ⟨rfl, htppm | hzm⟩
      · subst face₁
        exact hfamily.tmpm_tppm rank hclosed rest hprefix
      · subst face₁
        exact hfamily.tmpm_zm rank hclosed rest hprefix
    · rcases hyp with ⟨rfl, htmmm | hzm⟩
      · subst face₁
        exact hfamily.yp_tmmm rank hclosed rest hprefix
      · subst face₁
        exact hfamily.yp_zm rank hclosed rest hprefix
    · rcases hzm with ⟨rfl, htmpp | hyp | hzp⟩
      · subst face₁
        exact hfamily.zm_tmpp rank hclosed rest hprefix
      · subst face₁
        exact hfamily.zm_yp rank hclosed rest hprefix
      · subst face₁
        exact hfamily.zm_zp rank hclosed rest hprefix

theorem split10MGraphExactEvalAllFamily_of_layer4Classifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4GraphExactEvalAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin where
  family := by
    intro rank hclosed
    rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
      htmpm | hyp | hzm
    · rcases htmpm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          exact hfamily.classify rank hclosed Face.tmpm face₁ rest
            (by
              dsimp [Depth11Layer4PrefixAtRank]
              simpa [topPairingRankFaceLabels] using hlabels3)
    · rcases hyp with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          exact hfamily.classify rank hclosed Face.yp face₁ rest
            (by
              dsimp [Depth11Layer4PrefixAtRank]
              simpa [topPairingRankFaceLabels] using hlabels3)
    · rcases hzm with ⟨rest3, hlabels3⟩
      cases rest3 with
      | nil =>
          have hlenRank :
              (faceLabelsInContributionOrder (fun f => f)
                (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels3] at hlenRank
          norm_num at hlenRank
      | cons face₁ rest =>
          exact hfamily.classify rank hclosed Face.zm face₁ rest
            (by
              dsimp [Depth11Layer4PrefixAtRank]
              simpa [topPairingRankFaceLabels] using hlabels3)

theorem scaledMargin_nonpos_of_layer4Classifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4GraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalAllFamily
    (split10MGraphExactEvalAllFamily_of_layer4Classifier hfamily)
    hclosed

theorem split10MGraphExactEvalAllFamily_of_layer4BranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin :=
  split10MGraphExactEvalAllFamily_of_layer4Classifier
    (layer4Classifier_of_branchClassifier hfamily)

theorem split10MGraphExactEvalAllFamily_of_layer4SemanticFrontierClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SemanticFrontierGraphExactEvalAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin :=
  split10MGraphExactEvalAllFamily_of_layer4BranchClassifier
    (layer4BranchClassifier_of_semanticFrontierClassifier hfamily)

theorem split10MGraphExactEvalAllFamily_of_layer4SevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4SevenBranchGraphExactEvalAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin :=
  split10MGraphExactEvalAllFamily_of_layer4SemanticFrontierClassifier
    (semanticFrontierClassifier_of_sevenBranchClassifier hfamily)

theorem split10MGraphExactEvalAllFamily_of_mappedLayer4SevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin :=
  split10MGraphExactEvalAllFamily_of_layer4SevenBranchClassifier
    (sevenBranchClassifier_of_mappedSevenBranchClassifier hfamily)

theorem scaledMargin_nonpos_of_layer4BranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4Classifier
    (layer4Classifier_of_branchClassifier hfamily)
    hclosed

theorem scaledMargin_nonpos_of_layer4SemanticFrontierClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SemanticFrontierGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4BranchClassifier
    (layer4BranchClassifier_of_semanticFrontierClassifier hfamily)
    hclosed

theorem scaledMargin_nonpos_of_layer4SevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4SevenBranchGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4SemanticFrontierClassifier
    (semanticFrontierClassifier_of_sevenBranchClassifier hfamily)
    hclosed

theorem scaledMargin_nonpos_of_mappedLayer4SevenBranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Depth11Layer4SevenBranchMappedGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4SevenBranchClassifier
    (sevenBranchClassifier_of_mappedSevenBranchClassifier hfamily)
    hclosed

theorem depth11Layer4ClassifierSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
