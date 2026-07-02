import Cuboctahedron.Search.TopPairingTargetCursor
import Cuboctahedron.Search.TopPairingTraceTail

/-!
Combined semantic tail state for the top-pairing deterministic transducer.

`TopPairingTraceTail` carries the existing schedule, square-gap, and local-axis
suffix facts.  `TopPairingTriCursorFrom` carries the target-shadow cursor added
for the semantic Bellman membership pivot.  This module packages them together
so generated evaluator gates can advance one local face transition at a time
without selected-prefix or sampled-rank membership.
-/

namespace Cuboctahedron

structure TopPairingTransducerTail
    (step gap k : Nat) (parity : SqParity) (linear : Mat3 Rat)
    (labels : List Face) : Prop where
  trace : TopPairingTraceTail step gap linear labels
  cursor : TopPairingTriCursorFrom k parity labels

namespace TopPairingTransducerTail

theorem ofClosedRank
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingTransducerTail 0 0 0 SqParity.id (matId : Mat3 Rat)
      (topPairingRankFaceLabels rank) where
  trace := TopPairingTraceTail.ofClosedRank h
  cursor := topPairingTriCursor_of_closed h

theorem ofClosedObj
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    TopPairingTransducerTail 0 0 0 SqParity.id (matId : Mat3 Rat)
      (TopPairingBellmanObj.labels (fun f : Face => f) obj) := by
  simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
    topPairingRankFaceLabels] using ofClosedRank obj.closed

theorem cons_square_tail
    {step gap k : Nat} {parity : SqParity} {linear : Mat3 Rat}
    {face : Face} {rest : List Face}
    (h :
      TopPairingTransducerTail step gap k parity linear (face :: rest))
    (hsquare : triLetterOfFace? face = none) :
    TopPairingTransducerTail (step + 1) (topPairingNextGap gap face) k
      (parity.applyPair (pairOfFace face))
      (topPairingNextLinear linear face) rest where
  trace := TopPairingTraceTail.cons_tail h.trace
  cursor := TopPairingTriCursorFrom.cons_square_tail h.cursor hsquare

theorem cons_tri_tail
    {step gap k : Nat} {parity : SqParity} {linear : Mat3 Rat}
    {face : Face} {rest : List Face} {tri : TriLetter}
    (h :
      TopPairingTransducerTail step gap k parity linear (face :: rest))
    (htri : triLetterOfFace? face = some tri) :
    ∃ hk : k < topPairingTargetShadowLength,
      tri.act parity = topPairingTargetShadow.get ⟨k, hk⟩ ∧
        TopPairingTransducerTail (step + 1) (topPairingNextGap gap face)
          (k + 1) parity (topPairingNextLinear linear face) rest := by
  rcases TopPairingTriCursorFrom.cons_tri_tail h.cursor htri with
    ⟨hk, hletter, hcursor⟩
  exact ⟨hk, hletter,
    { trace := TopPairingTraceTail.cons_tail h.trace
      cursor := hcursor }⟩

theorem cons
    {step gap k : Nat} {parity : SqParity} {linear : Mat3 Rat}
    {face : Face} {rest : List Face}
    (h :
      TopPairingTransducerTail step gap k parity linear (face :: rest)) :
    face ∈ topPairingAllowedFacesAtStep step ∧
      TopPairingLocalAxisAllows linear face ∧
        match triLetterOfFace? face with
        | none =>
            TopPairingTransducerTail (step + 1)
              (topPairingNextGap gap face) k
              (parity.applyPair (pairOfFace face))
              (topPairingNextLinear linear face) rest
        | some tri =>
            ∃ hk : k < topPairingTargetShadowLength,
              tri.act parity = topPairingTargetShadow.get ⟨k, hk⟩ ∧
                TopPairingTransducerTail (step + 1)
                  (topPairingNextGap gap face) (k + 1) parity
                  (topPairingNextLinear linear face) rest := by
  have htrace := TopPairingTraceTail.cons h.trace
  refine ⟨htrace.1, htrace.2.1, ?_⟩
  cases htri : triLetterOfFace? face with
  | none =>
      exact cons_square_tail h htri
  | some tri =>
      exact cons_tri_tail h htri

end TopPairingTransducerTail

end Cuboctahedron
