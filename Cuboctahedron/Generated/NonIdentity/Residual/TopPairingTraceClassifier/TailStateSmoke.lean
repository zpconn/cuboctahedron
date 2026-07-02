import Cuboctahedron.Search.TopPairingTraceTail

/-!
Smoke checks for the top-pairing tail-state bridge.

These theorems deliberately avoid the old sampled-rank path.  They start from
the semantic `TopPairingClosedLanguageAtRank` predicate, expose the forced
`xm, ym` prefix, and advance the compact `TopPairingTraceTail` state one face
at a time.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TailStateSmoke

open Cuboctahedron

theorem closedRank_tail_after_xm
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    ∃ rest : List Face,
      topPairingRankFaceLabels rank = Face.xm :: rest ∧
        TopPairingTraceTail 1 (topPairingNextGap 0 Face.xm)
          (topPairingNextLinear (matId : Mat3 Rat) Face.xm) rest := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym h.schedule with ⟨rest, hlabels⟩
  refine ⟨Face.ym :: rest, hlabels, ?_⟩
  have htail0 : TopPairingTraceTail 0 0 (matId : Mat3 Rat)
      (Face.xm :: Face.ym :: rest) := by
    simpa [topPairingRankFaceLabels, hlabels] using TopPairingTraceTail.ofClosedRank h
  exact TopPairingTraceTail.cons_tail htail0

theorem closedRank_tail_after_xm_ym
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    ∃ rest : List Face,
      topPairingRankFaceLabels rank = [Face.xm, Face.ym] ++ rest ∧
        TopPairingTraceTail (1 + 1)
          (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym)
          (topPairingNextLinear
            (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
          rest := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym h.schedule with ⟨rest, hlabels⟩
  refine ⟨rest, by simpa [topPairingRankFaceLabels] using hlabels, ?_⟩
  have htail0 : TopPairingTraceTail 0 0 (matId : Mat3 Rat)
      (Face.xm :: Face.ym :: rest) := by
    simpa [topPairingRankFaceLabels, hlabels] using TopPairingTraceTail.ofClosedRank h
  have htail1 : TopPairingTraceTail 1 (topPairingNextGap 0 Face.xm)
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) (Face.ym :: rest) :=
    TopPairingTraceTail.cons_tail htail0
  exact TopPairingTraceTail.cons_tail htail1

theorem tailStateSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TailStateSmoke
