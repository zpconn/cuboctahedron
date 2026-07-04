import Cuboctahedron.Search.TopPairingTransducerEvalBridge

/-!
Used-face suffix state for strengthened top-pairing transducers.

`TopPairingTransducerTail` deliberately tracks schedule, square-gap,
target-shadow cursor, and local-axis data.  The graph-148 frontier shows that
this is not quite enough for strengthened closed-language membership: after a
prefix has already consumed an actual face, the remaining suffix must not use
that face again.

This module packages the tiny reusable invariant needed for that next semantic
state refinement.
-/

namespace Cuboctahedron

structure TopPairingUsedFaceTail (used : List Face) (labels : List Face) :
    Prop where
  nodup : labels.Nodup
  disjoint : ∀ face, face ∈ labels -> face ∉ used

namespace TopPairingUsedFaceTail

theorem nil (used : List Face) : TopPairingUsedFaceTail used [] where
  nodup := by simp
  disjoint := by simp

theorem head_not_used
    {used : List Face} {face : Face} {rest : List Face}
    (h : TopPairingUsedFaceTail used (face :: rest)) :
    face ∉ used :=
  h.disjoint face (by simp)

theorem cons_tail
    {used : List Face} {face : Face} {rest : List Face}
    (h : TopPairingUsedFaceTail used (face :: rest)) :
    TopPairingUsedFaceTail (face :: used) rest where
  nodup := h.nodup.tail
  disjoint := by
    intro f hf hused
    have hnotUsed : f ∉ used :=
      h.disjoint f (by simp [hf])
    have hnotHead : f ≠ face := by
      intro hEq
      subst f
      have hn := h.nodup
      simp only [List.nodup_cons] at hn
      exact hn.1 hf
    simp [hnotHead, hnotUsed] at hused

theorem of_nodup_append :
    ∀ {used labels : List Face},
      (used ++ labels).Nodup -> TopPairingUsedFaceTail used labels
  | [], labels, h => by
      exact
        { nodup := by simpa using h
          disjoint := by simp }
  | face :: used, labels, h => by
      have htail : (used ++ labels).Nodup := by
        simpa [List.cons_append] using h.tail
      have ih := of_nodup_append (used := used) (labels := labels) htail
      exact
        { nodup := ih.nodup
          disjoint := by
            intro f hf hmem
            have hnotUsed : f ∉ used :=
              ih.disjoint f hf
            have hnotTail : face ∉ used ++ labels := by
              have hn := h
              simp only [List.cons_append, List.nodup_cons] at hn
              exact hn.1
            have hnotHead : f ≠ face := by
              intro hEq
              subst f
              exact hnotTail (by simp [hf])
            simp [hnotHead, hnotUsed] at hmem }

theorem of_actualFaceOmni_append
    {used labels : List Face}
    (h : TopPairingActualFaceOmniLabels (used ++ labels)) :
    TopPairingUsedFaceTail used labels :=
  of_nodup_append h

end TopPairingUsedFaceTail

structure TopPairingUsedFaceEvalState (State : Type) where
  eval : TopPairingTransducerEvalState State
  used : List Face

namespace TopPairingUsedFaceEvalState

def Tail {State : Type} (state : TopPairingUsedFaceEvalState State)
    (labels : List Face) : Prop :=
  state.eval.Tail labels ∧ TopPairingUsedFaceTail state.used labels

def next? {State Label : Type}
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (state : TopPairingUsedFaceEvalState State)
    (face : Face) : Option (TopPairingUsedFaceEvalState State × Int) :=
  match TopPairingTransducerEvalState.next? next labelOfFace state.eval face with
  | none => none
  | some (evalNext, gain) =>
      some
        ({ eval := evalNext
           used := face :: state.used }, gain)

theorem tail_eval
    {State : Type} {state : TopPairingUsedFaceEvalState State}
    {labels : List Face} (h : state.Tail labels) :
    state.eval.Tail labels :=
  h.1

theorem tail_used
    {State : Type} {state : TopPairingUsedFaceEvalState State}
    {labels : List Face} (h : state.Tail labels) :
    TopPairingUsedFaceTail state.used labels :=
  h.2

theorem next?_tail
    {State Label : Type}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {state : TopPairingUsedFaceEvalState State}
    {face : Face} {rest : List Face} {graphNext : State} {gain : Int}
    (htail : state.Tail (face :: rest))
    (hgraph : next state.eval.graph (labelOfFace face) = some (graphNext, gain)) :
    ∃ nextState : TopPairingUsedFaceEvalState State,
      next? next labelOfFace state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ nextState.eval.graph = graphNext ∧
          nextState.used = face :: state.used := by
  rcases TopPairingTransducerEvalState.next?_tail
      (state := state.eval) (face := face) (rest := rest)
      (graphNext := graphNext) (gain := gain)
      (tail_eval htail) hgraph with
    ⟨evalNext, hnext, htailNext, hgraphNext⟩
  refine
    ⟨{ eval := evalNext, used := face :: state.used }, ?_, ?_, hgraphNext, rfl⟩
  · simp [next?, hnext]
  · exact ⟨htailNext, TopPairingUsedFaceTail.cons_tail (tail_used htail)⟩

end TopPairingUsedFaceEvalState

end Cuboctahedron
