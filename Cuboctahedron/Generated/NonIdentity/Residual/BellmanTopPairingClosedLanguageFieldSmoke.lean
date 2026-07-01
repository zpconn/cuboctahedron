import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Tiny constructor-surface smoke for the closed top-pairing Bellman language.

The rejected concrete smoke tried to prove sampled memberships by reducing the
entire semantic language.  This file validates the intended generated shape
instead: a generated shard supplies explicit proofs of each component, and the
closed-language theorem is assembled without any global `Decidable` instances
or whole-language Boolean reduction.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke

open Cuboctahedron

theorem closedLanguageOfGeneratedFields
    {rank : Fin numPairWords} {badFace : Face}
    (cancellation :
      TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation schedule squareGap localAxis canonicalBadFace

theorem closedLanguageOfGeneratedTraces
    {rank : Fin numPairWords} {badFace : Face}
    (cancellation :
      TopPairingLanguageAtRank rank)
    (scheduleLength :
      (faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14)
    (scheduleTrace :
      TopPairingStepScheduleFrom 0
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGapTrace :
      TopPairingSquareGapFrom 0
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat)
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (topPairingStepScheduleLabels_ofFrom scheduleLength scheduleTrace)
    (topPairingSquareGapLabels_ofFrom squareGapTrace)
    (topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem closedLanguageFieldSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke
