import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Small transition-surface smoke for the top-pairing trace classifier.

This file does not classify the full terminal language.  It checks the next
proof-engineering surface after the rejected depth-9 shard shape: from a known
semantic prefix and the closed-language components, extract the next-face
schedule, square-gap, and local-axis obligations without recomputing the
rational local-axis arithmetic in the transition theorem itself.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TransitionSmoke

open Cuboctahedron

def depth8Parent000Prefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp,
    Face.tmmm, Face.tpmm]

def Depth8Parent000Labels (labels : List Face) : Prop :=
  ∃ rest : List Face, labels = depth8Parent000Prefix ++ rest

theorem depth8_parent000_next_obligations
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hparent : Depth8Parent000Labels labels) :
    ∃ nextFace rest,
      labels = depth8Parent000Prefix ++ nextFace :: rest ∧
        nextFace ∈
          topPairingAllowedFacesAtStep depth8Parent000Prefix.length ∧
        (isSquarePair (pairOfFace nextFace) = true ->
          nextFace ∈ topPairingAllowedSquareFacesAtGap
            (topPairingSquareGapAfter 0 depth8Parent000Prefix)) ∧
        TopPairingLocalAxisAllows
          (topPairingLinearAfterFaces (matId : Mat3 Rat)
            depth8Parent000Prefix)
          nextFace := by
  rcases hparent with ⟨rest0, hlabels⟩
  cases rest0 with
  | nil =>
      subst labels
      rcases hs with ⟨hlen, _hfrom⟩
      norm_num [depth8Parent000Prefix] at hlen
  | cons nextFace rest =>
      subst labels
      refine ⟨nextFace, rest, rfl, ?_, ?_, ?_⟩
      · exact topPairingStepScheduleLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) hs rfl
      · intro hpair
        exact topPairingSquareGapLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) hg rfl hpair
      · exact topPairingLocalAxisLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) ha rfl

theorem transitionSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TransitionSmoke
