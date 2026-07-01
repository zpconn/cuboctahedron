import Cuboctahedron.Search.TopPairingBellmanObject

/-!
First generated-shape smoke for the top-pairing closed trace classifier.

The full classifier should prove that a semantic closed top-pairing object has
one of the two accepted closed face traces.  This file checks the intended
proof surface on the first deterministic prefix: it consumes only
`TopPairingClosedLanguageAtRank` / `TopPairingBellmanObj` facts and introduces
no sampled rank or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

open Cuboctahedron

theorem closedRank_prefix_xm_ym
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    ∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        Face.xm :: Face.ym :: rest :=
  topPairingStepScheduleLabels_prefix_xm_ym h.schedule

theorem closedObj_prefix_xm_ym
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    ∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        Face.xm :: Face.ym :: rest :=
  closedRank_prefix_xm_ym obj.closed

theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
