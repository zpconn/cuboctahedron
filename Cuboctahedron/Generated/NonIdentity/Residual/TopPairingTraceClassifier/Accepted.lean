import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

/-!
Generated positive terminal classifier for top-pairing traces.

The current terminal enumerator leaves 47 cancellation-ok traces.  Of those,
37 are graph-accepted and 10 are graph-rejected.  This module proves that the
10 rejected traces are excluded by the strengthened semantic filters: nine fail
actual-face omnihedrality, and the remaining `Nodup` trace is excluded by the
sequence/bad-face compatibility predicate below.

No sampled ranks or sampled paths are emitted here.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

def rejectedGraphTrace_000 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.tpmm, Face.yp, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
def rejectedGraphTrace_001 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
def rejectedGraphTrace_002 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]
def rejectedGraphTrace_003 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmmp, Face.tpmm, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def rejectedGraphTrace_004 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def rejectedGraphTrace_005 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def rejectedGraphTrace_006 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def rejectedGraphTrace_007 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def rejectedGraphTrace_008 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def rejectedGraphTrace_009 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]


theorem rejectedGraphTrace_000_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_000 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_001_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_001 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_002_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_002 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_003_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_003 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_005_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_005 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_006_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_006 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_007_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_007 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_008_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_008 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedGraphTrace_009_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedGraphTrace_009 := by
  unfold TopPairingActualFaceOmniLabels
  decide

def GraphRejectedTraceLabels (labels : List Face) : Prop :=
    labels = rejectedGraphTrace_000 \/
    labels = rejectedGraphTrace_001 \/
    labels = rejectedGraphTrace_002 \/
    labels = rejectedGraphTrace_003 \/
    labels = rejectedGraphTrace_004 \/
    labels = rejectedGraphTrace_005 \/
    labels = rejectedGraphTrace_006 \/
    labels = rejectedGraphTrace_007 \/
    labels = rejectedGraphTrace_008 \/
    labels = rejectedGraphTrace_009

def GraphRejectedBadFaceTraceLabels (labels : List Face) : Prop :=
    labels = rejectedGraphTrace_004

def TerminalOkTraceLabels (labels : List Face) : Prop :=
  GraphAcceptedTraceLabels labels \/
    GraphRejectedTraceLabels labels

def SequenceBadFaceLabels (labels : List Face) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    ¬ GraphRejectedBadFaceTraceLabels labels

theorem graphAcceptedTraceLabels_of_terminalOk_filters
    {labels : List Face} {badFace : Face}
    (hterm : TerminalOkTraceLabels labels)
    (homni : TopPairingActualFaceOmniLabels labels)
    (hbad : SequenceBadFaceLabels labels badFace) :
    GraphAcceptedTraceLabels labels := by
  unfold TerminalOkTraceLabels at hterm
  rcases hterm with haccepted | hrejected
  · exact haccepted
  · unfold GraphRejectedTraceLabels at hrejected
    rcases hrejected with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9
    · exfalso
      rw [h0] at homni
      exact rejectedGraphTrace_000_not_actualFaceOmni homni
    · exfalso
      rw [h1] at homni
      exact rejectedGraphTrace_001_not_actualFaceOmni homni
    · exfalso
      rw [h2] at homni
      exact rejectedGraphTrace_002_not_actualFaceOmni homni
    · exfalso
      rw [h3] at homni
      exact rejectedGraphTrace_003_not_actualFaceOmni homni
    · exfalso
      rcases hbad with ⟨_hbadFace, hnotBad⟩
      exact hnotBad (h4)
    · exfalso
      rw [h5] at homni
      exact rejectedGraphTrace_005_not_actualFaceOmni homni
    · exfalso
      rw [h6] at homni
      exact rejectedGraphTrace_006_not_actualFaceOmni homni
    · exfalso
      rw [h7] at homni
      exact rejectedGraphTrace_007_not_actualFaceOmni homni
    · exfalso
      rw [h8] at homni
      exact rejectedGraphTrace_008_not_actualFaceOmni homni
    · exfalso
      rw [h9] at homni
      exact rejectedGraphTrace_009_not_actualFaceOmni homni


theorem accepted_classifier_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted
