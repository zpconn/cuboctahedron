import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Terminal smoke for the top-pairing trace classifier.

The prefix classifiers narrow the semantic language to a bounded set of full
traces.  The remaining production classifier must reject every terminal trace
whose triangular cancellation summary is not the top-pairing target.  This file
checks that proof shape on one concrete rejected terminal trace, without using
sampled rank/path objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalSmoke

open Cuboctahedron

def ClosedTraceOr (obj : TopPairingBellmanObj Face.ym) : Prop :=
  TopPairingBellmanObj.labels (fun f : Face => f) obj =
      topPairingClosedFaceTraceA \/
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
      topPairingClosedFaceTraceB

def rejectedTrace0 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp,
    Face.tmmm, Face.tppp, Face.tpmm, Face.tmpp, Face.yp, Face.zm,
    Face.zp, Face.xp]

theorem rejectedTrace0_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels rejectedTrace0 ≠
      topPairingTargetSummary := by
  decide

theorem rejectedTrace0_absurd
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hlabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        rejectedTrace0) :
    False := by
  have hc := TopPairingClosedLanguageAtRank.cancellationLabels hclosed
  rw [hlabels] at hc
  exact rejectedTrace0_cancellation_ne hc

theorem rejectedTrace0_obj_absurd
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace)
    (hlabels :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        rejectedTrace0) :
    False := by
  exact rejectedTrace0_absurd obj.closed hlabels

theorem acceptedTraceA_closedTraceOr
    (obj : TopPairingBellmanObj Face.ym)
    (hlabels :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        topPairingClosedFaceTraceA) :
    ClosedTraceOr obj := by
  exact Or.inl hlabels

theorem acceptedTraceB_closedTraceOr
    (obj : TopPairingBellmanObj Face.ym)
    (hlabels :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        topPairingClosedFaceTraceB) :
    ClosedTraceOr obj := by
  exact Or.inr hlabels

theorem terminalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalSmoke
