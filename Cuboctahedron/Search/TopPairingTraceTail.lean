import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Tail-state interface for top-pairing trace classifiers.

The rejected depth-by-depth classifier re-simplified the full
`TopPairingLocalAxisLabels` prefix at every generated split.  This module
provides the smaller semantic step shape needed by the next classifier route:
carry the schedule, square-gap, and local-axis predicates on the remaining
suffix, then consume one head face at a time.
-/

namespace Cuboctahedron

def topPairingNextGap (gap : Nat) (face : Face) : Nat :=
  if isSquarePair (pairOfFace face) then gap else gap + 1

def topPairingNextLinear (linear : Mat3 Rat) (face : Face) : Mat3 Rat :=
  matMul linear (reflM (normalQ face))

structure TopPairingTraceTail
    (step gap : Nat) (linear : Mat3 Rat) (labels : List Face) : Prop where
  schedule : TopPairingStepScheduleFrom step labels
  squareGap : TopPairingSquareGapFrom gap labels
  localAxis : TopPairingLocalAxisFrom linear labels

namespace TopPairingTraceTail

theorem ofClosedRank
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingTraceTail 0 0 (matId : Mat3 Rat) (topPairingRankFaceLabels rank) where
  schedule := h.schedule.2
  squareGap := h.squareGap
  localAxis := h.localAxis

theorem ofClosedObj
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    TopPairingTraceTail 0 0 (matId : Mat3 Rat)
      (TopPairingBellmanObj.labels (fun f : Face => f) obj) := by
  simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
    topPairingRankFaceLabels] using ofClosedRank obj.closed

theorem cons
    {step gap : Nat} {linear : Mat3 Rat} {face : Face} {rest : List Face}
    (h : TopPairingTraceTail step gap linear (face :: rest)) :
    face ∈ topPairingAllowedFacesAtStep step ∧
      TopPairingLocalAxisAllows linear face ∧
        TopPairingTraceTail (step + 1) (topPairingNextGap gap face)
          (topPairingNextLinear linear face) rest := by
  rcases h with ⟨hs, hg, ha⟩
  unfold TopPairingStepScheduleFrom at hs
  rcases hs with ⟨hfaceSchedule, hscheduleRest⟩
  unfold TopPairingLocalAxisFrom at ha
  rcases ha with ⟨hfaceAxis, haxisRest⟩
  refine ⟨hfaceSchedule, hfaceAxis, ?_⟩
  refine ⟨hscheduleRest, ?_, ?_⟩
  · unfold topPairingNextGap
    unfold TopPairingSquareGapFrom at hg
    by_cases hsquare : isSquarePair (pairOfFace face) = true
    · rw [hsquare] at hg
      simp [hsquare]
      exact hg.2
    · have hnotSquare : isSquarePair (pairOfFace face) = false := by
        cases h : isSquarePair (pairOfFace face)
        · rfl
        · exact False.elim (hsquare h)
      rw [hnotSquare] at hg
      simp [hnotSquare]
      exact hg
  · unfold topPairingNextLinear
    exact haxisRest

theorem cons_tail
    {step gap : Nat} {linear : Mat3 Rat} {face : Face} {rest : List Face}
    (h : TopPairingTraceTail step gap linear (face :: rest)) :
    TopPairingTraceTail (step + 1) (topPairingNextGap gap face)
      (topPairingNextLinear linear face) rest :=
  (cons h).2.2

end TopPairingTraceTail

end Cuboctahedron
