import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Target-shadow cursor for the top-pairing Bellman language.

The production Bellman route should not prove membership by selected prefixes
or sampled paths.  This module starts the smaller semantic route: a closed
top-pairing word should drive a deterministic cursor through the fixed
triangular target shadow, while square faces update only square parity.

The hard theorem from `TopPairingClosedLanguageAtRank` to this cursor is still
future work; the definitions here provide the compact theorem surface for that
proof and for generated deterministic transducer leaves.
-/

namespace Cuboctahedron

def topPairingTargetShadowLength : Nat :=
  topPairingTargetShadow.length

theorem topPairingTargetShadowLength_eq : topPairingTargetShadowLength = 8 := by
  rfl

theorem topPairingTargetShadow_length_of_summary
    {shadow : List TriLetter}
    (hsummary :
      triangularCancellationSummaryOfShadow shadow =
        topPairingTargetSummary) :
    shadow.length = topPairingTargetShadow.length := by
  have hcount := triangularCancellationSummaryOfShadow_count shadow
  rw [hsummary] at hcount
  have hlen : 8 = shadow.length := by
    simpa [topPairingTargetSummary] using hcount
  simpa [topPairingTargetShadow] using hlen.symm

def triLetterOfFace? (face : Face) : Option TriLetter :=
  TriLetter.ofPairId? (pairOfFace face)

def actedTriLetterOfFace? (parity : SqParity) (face : Face) :
    Option TriLetter :=
  (triLetterOfFace? face).map fun tri => tri.act parity

theorem triLetterOfFace?_eq_none_iff_square (face : Face) :
    triLetterOfFace? face = none ↔
      isSquarePair (pairOfFace face) = true := by
  cases face <;> decide

theorem triLetterOfFace?_eq_some_iff_tri {face : Face} {tri : TriLetter} :
    triLetterOfFace? face = some tri →
      isSquarePair (pairOfFace face) = false := by
  intro h
  cases face <;> cases tri <;> simp [triLetterOfFace?, isSquarePair, pairOfFace,
    TriLetter.ofPairId?] at h ⊢

/--
`TopPairingTriCursorFrom k p labels` means that, starting with square parity
`p`, the remaining face labels advance exactly from triangular target-shadow
position `k` to the end of `topPairingTargetShadow`.

Square faces do not consume a target-shadow position; they only update square
parity.  Triangular faces consume one position after applying the current
square parity to the underlying triangular pair.
-/
inductive TopPairingTriCursorFrom : Nat -> SqParity -> List Face -> Prop
  | nil {parity : SqParity} :
      TopPairingTriCursorFrom topPairingTargetShadowLength parity []
  | square
      {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
      (hsquare : triLetterOfFace? face = none)
      (hrest :
        TopPairingTriCursorFrom k
          (parity.applyPair (pairOfFace face)) rest) :
      TopPairingTriCursorFrom k parity (face :: rest)
  | tri
      {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
      {tri : TriLetter}
      (htri : triLetterOfFace? face = some tri)
      (hk : k < topPairingTargetShadowLength)
      (hletter :
        tri.act parity = topPairingTargetShadow.get ⟨k, hk⟩)
      (hrest : TopPairingTriCursorFrom (k + 1) parity rest) :
      TopPairingTriCursorFrom k parity (face :: rest)

namespace TopPairingTriCursorFrom

theorem nil_id :
    TopPairingTriCursorFrom topPairingTargetShadowLength SqParity.id [] :=
  TopPairingTriCursorFrom.nil

theorem square_of_isSquare
    {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
    (hsquare : isSquarePair (pairOfFace face) = true)
    (hrest :
      TopPairingTriCursorFrom k
        (parity.applyPair (pairOfFace face)) rest) :
    TopPairingTriCursorFrom k parity (face :: rest) := by
  apply TopPairingTriCursorFrom.square
  · exact (triLetterOfFace?_eq_none_iff_square face).2 hsquare
  · exact hrest

theorem tri_of_acted
    {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
    {tri : TriLetter}
    (htri : triLetterOfFace? face = some tri)
    (hk : k < topPairingTargetShadowLength)
    (hletter :
      tri.act parity = topPairingTargetShadow.get ⟨k, hk⟩)
    (hrest : TopPairingTriCursorFrom (k + 1) parity rest) :
    TopPairingTriCursorFrom k parity (face :: rest) :=
  TopPairingTriCursorFrom.tri htri hk hletter hrest

theorem cons_square_tail
    {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
    (h : TopPairingTriCursorFrom k parity (face :: rest))
    (hsquare : triLetterOfFace? face = none) :
    TopPairingTriCursorFrom k
      (parity.applyPair (pairOfFace face)) rest := by
  cases h with
  | square hsquare' hrest =>
      exact hrest
  | tri htri _hk _hletter _hrest =>
      rw [hsquare] at htri
      contradiction

theorem cons_tri_tail
    {k : Nat} {parity : SqParity} {face : Face} {rest : List Face}
    {tri : TriLetter}
    (h : TopPairingTriCursorFrom k parity (face :: rest))
    (htri : triLetterOfFace? face = some tri) :
    ∃ hk : k < topPairingTargetShadowLength,
      tri.act parity = topPairingTargetShadow.get ⟨k, hk⟩ ∧
        TopPairingTriCursorFrom (k + 1) parity rest := by
  cases h with
  | square hsquare _hrest =>
      rw [htri] at hsquare
      contradiction
  | tri htri' hk hletter hrest =>
      cases htri.symm.trans htri'
      exact ⟨hk, hletter, hrest⟩

end TopPairingTriCursorFrom

abbrev TopPairingTargetCursorAtRank (rank : Fin numPairWords) : Prop :=
  TopPairingTriCursorFrom 0 SqParity.id (topPairingRankFaceLabels rank)

end Cuboctahedron
