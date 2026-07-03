import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

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

theorem layer4Classifier_of_branchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin) :
    Depth11Layer4GraphExactEvalAllFamily scaledMargin where
  classify := by
    intro rank hclosed face₀ face₁ rest hprefix
    exact hfamily.classify rank hclosed face₀ face₁ rest hprefix
      (depth11Layer4BranchAllowed_of_closed_prefix hclosed hprefix)

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

theorem scaledMargin_nonpos_of_layer4BranchClassifier
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11Layer4BranchGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_layer4Classifier
    (layer4Classifier_of_branchClassifier hfamily)
    hclosed

theorem depth11Layer4ClassifierSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
