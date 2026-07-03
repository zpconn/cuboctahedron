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

theorem depth11Layer4ClassifierSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
