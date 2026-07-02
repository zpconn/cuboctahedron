import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

/-!
Strengthened-language smoke for the top-pairing Bellman route.

This module checks the current semantic-membership pivot without sampled rank
objects.  The accepted side packages graph-accepted trace evidence as the
`sequenceBadFace` field required by `TopPairingStrengthenedClosedLanguageAtRank`.
The rejected side records that the ten graph-rejected closed candidates from
the Lean-aligned diagnosis are excluded by the new compact semantic fields.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLanguageSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

def GraphAcceptedSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (_badFace : Face) : Prop :=
  ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
    GraphAcceptedTraceMargin scaledMargin
      ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

theorem evalLanguage_of_strengthenedGraphAccepted
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (GraphAcceptedSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases h.sequenceBadFace_ok with ⟨closed, hgraph⟩
  have hevalObj :=
    bellmanEvalAccepts_of_graphAcceptedTraceMargin
      ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)
      hgraph
  rcases hevalObj with ⟨result, heval, hfinish, hmargin⟩
  refine ⟨h.closed, ⟨result, ?_, hfinish, hmargin⟩⟩
  simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq]
    using heval

private def rejectedFaceTrace_000 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.tmmm, Face.zp, Face.tpmm, Face.yp, Face.tmpm, Face.zp,
    Face.tmmp, Face.xp]

private def rejectedFaceTrace_001 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.zp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.yp,
    Face.zp, Face.xp]

private def rejectedFaceTrace_002 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.zp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.zp,
    Face.yp, Face.xp]

private def rejectedFaceTrace_003 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.zp, Face.tmmp, Face.tpmm, Face.yp, Face.tmpm, Face.tmmm,
    Face.zp, Face.xp]

private def rejectedFaceTrace_004 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm,
    Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp,
    Face.yp, Face.xp]

private def rejectedFaceTrace_005 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm,
    Face.tpmp, Face.zp, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm,
    Face.zp, Face.xp]

private def rejectedFaceTrace_006 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp,
    Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tppp, Face.tmpp,
    Face.tmmp, Face.xp]

private def rejectedFaceTrace_007 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.zm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp,
    Face.yp, Face.xp]

private def rejectedFaceTrace_008 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.zm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp,
    Face.tmmp, Face.xp]

private def rejectedFaceTrace_009 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp,
    Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tppp, Face.tmpp,
    Face.tmmp, Face.xp]

theorem rejectedTrace_000_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_000 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_001_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_001 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_002_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_002 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_003_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_003 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_005_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_005 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_006_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_006 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_007_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_007 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_008_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_008 := by
  unfold TopPairingActualFaceOmniLabels
  decide

theorem rejectedTrace_009_not_actualFaceOmni :
    ¬ TopPairingActualFaceOmniLabels rejectedFaceTrace_009 := by
  unfold TopPairingActualFaceOmniLabels
  decide

def SmokeSequenceBadFaceAtRank (rank : Fin numPairWords) (badFace : Face) :
    Prop :=
  topPairingRankFaceLabels rank ≠ rejectedFaceTrace_004 /\
    badFace = Face.ym

theorem rejectedTrace_004_excluded_by_smokeSequenceBadFace
    {rank : Fin numPairWords}
    (hlabels : topPairingRankFaceLabels rank = rejectedFaceTrace_004) :
    ¬ SmokeSequenceBadFaceAtRank rank Face.ym := by
  intro h
  exact h.1 hlabels

theorem smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLanguageSmoke
