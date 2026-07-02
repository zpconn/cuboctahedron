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

/--
The dominant top-pairing cancellation summary is rigid: any triangular shadow
with that summary is exactly the eight-letter target shadow.  This is the
specialized semantic inverse needed by the deterministic Bellman cursor route.
-/
theorem topPairingTargetShadow_of_summary
    {shadow : List TriLetter}
    (hsummary :
      triangularCancellationSummaryOfShadow shadow =
        topPairingTargetSummary) :
    shadow = topPairingTargetShadow := by
  have hlen := topPairingTargetShadow_length_of_summary hsummary
  have h0 : shadow[0]? = some TriLetter.dm11 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 0, tri := TriLetter.dm11 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h1 : shadow[1]? = some TriLetter.d111 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 1, tri := TriLetter.d111 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h2 : shadow[2]? = some TriLetter.d1m1 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 2, tri := TriLetter.d1m1 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h3 : shadow[3]? = some TriLetter.d11m := by
    exact triangularCancellationSummaryOfShadow_cancellation_left_sound
      (shadow := shadow)
      (pair := { left := 3, right := 4, tri := TriLetter.d11m }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h4 : shadow[4]? = some TriLetter.d11m := by
    exact triangularCancellationSummaryOfShadow_cancellation_right_sound
      (shadow := shadow)
      (pair := { left := 3, right := 4, tri := TriLetter.d11m }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h5 : shadow[5]? = some TriLetter.dm11 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 5, tri := TriLetter.dm11 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h6 : shadow[6]? = some TriLetter.d111 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 6, tri := TriLetter.d111 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  have h7 : shadow[7]? = some TriLetter.d1m1 := by
    exact triangularCancellationSummaryOfShadow_survivor_sound
      (shadow := shadow) (survivor := { index := 7, tri := TriLetter.d1m1 }) (by
    rw [hsummary]
    simp [topPairingTargetSummary])
  apply List.ext_getElem?
  intro i
  cases i with
  | zero =>
      simpa [topPairingTargetShadow] using h0
  | succ i =>
      cases i with
      | zero =>
          simpa [topPairingTargetShadow] using h1
      | succ i =>
          cases i with
          | zero =>
              simpa [topPairingTargetShadow] using h2
          | succ i =>
              cases i with
              | zero =>
                  simpa [topPairingTargetShadow] using h3
              | succ i =>
                  cases i with
                  | zero =>
                      simpa [topPairingTargetShadow] using h4
                  | succ i =>
                      cases i with
                      | zero =>
                          simpa [topPairingTargetShadow] using h5
                      | succ i =>
                          cases i with
                          | zero =>
                              simpa [topPairingTargetShadow] using h6
                          | succ i =>
                              cases i with
                              | zero =>
                                  simpa [topPairingTargetShadow] using h7
                              | succ i =>
                                  simp [topPairingTargetShadow, hlen]

theorem topPairingTriShadow_eq_target
    {rank : Fin numPairWords}
    (h : TopPairingLanguageAtRank rank) :
    triangularShadowOfPairWord (unrankPairWord rank) =
      topPairingTargetShadow := by
  apply topPairingTargetShadow_of_summary
  simpa [TopPairingLanguageAtRank, triangularCancellationSummaryOfPairWord] using h

theorem topPairingTriShadow_eq_target_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    triangularShadowOfPairWord (unrankPairWord rank) =
      topPairingTargetShadow :=
  topPairingTriShadow_eq_target h.cancellation

def triLetterOfFace? (face : Face) : Option TriLetter :=
  TriLetter.ofPairId? (pairOfFace face)

def actedTriLetterOfFace? (parity : SqParity) (face : Face) :
    Option TriLetter :=
  (triLetterOfFace? face).map fun tri => tri.act parity

def actedTriLettersFrom : SqParity -> List Face -> List TriLetter
  | _parity, [] => []
  | parity, face :: rest =>
      match triLetterOfFace? face with
      | some tri => tri.act parity :: actedTriLettersFrom parity rest
      | none =>
          actedTriLettersFrom (parity.applyPair (pairOfFace face)) rest

theorem foldl_scanPair_shadow_eq_append_acted
    (state : ShadowState) (labels : List Face) :
    ((labels.map pairOfFace).foldl ShadowState.scanPair state).shadow =
      state.shadow ++ actedTriLettersFrom state.parity labels := by
  induction labels generalizing state with
  | nil =>
      simp [actedTriLettersFrom, ShadowState.shadow]
  | cons face rest ih =>
      cases state with
      | mk parity shadowRev reducedRev =>
          cases face <;>
            simp [actedTriLettersFrom, triLetterOfFace?, pairOfFace,
              TriLetter.ofPairId?, ShadowState.scanPair, ih]
          all_goals
            simp [ShadowState.shadow, List.append_assoc]

theorem actedTriLettersFrom_eq_shadowStateOfFaceLabels
    (labels : List Face) :
    actedTriLettersFrom SqParity.id labels =
      (shadowStateOfPairList (labels.map pairOfFace)).shadow := by
  have h :=
    foldl_scanPair_shadow_eq_append_acted ShadowState.initial labels
  simpa [shadowStateOfPairList, ShadowState.initial, ShadowState.shadow] using h.symm

theorem topPairingActedTriLetters_eq_target_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    actedTriLettersFrom SqParity.id (topPairingRankFaceLabels rank) =
      topPairingTargetShadow := by
  rw [actedTriLettersFrom_eq_shadowStateOfFaceLabels]
  have hshadow := topPairingTriShadow_eq_target_of_closed h
  unfold topPairingRankFaceLabels
  rw [map_pairOfFace_faceLabelsInContributionOrder]
  rw [canonicalContributionPairs_eq_startedPairFactors]
  exact hshadow

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

theorem of_actedTriLetters_eq_drop
    {labels : List Face} {parity : SqParity} {k : Nat}
    (hk : k ≤ topPairingTargetShadowLength)
    (hacted :
      actedTriLettersFrom parity labels = topPairingTargetShadow.drop k) :
    TopPairingTriCursorFrom k parity labels := by
  induction labels generalizing parity k with
  | nil =>
      have hk8 : k ≤ 8 := by
        simpa [topPairingTargetShadowLength, topPairingTargetShadow] using hk
      interval_cases k <;>
        simp [actedTriLettersFrom, topPairingTargetShadow] at hacted
      exact TopPairingTriCursorFrom.nil
  | cons face rest ih =>
      unfold actedTriLettersFrom at hacted
      cases hface : triLetterOfFace? face with
      | none =>
          simp [hface] at hacted
          exact TopPairingTriCursorFrom.square hface (ih hk hacted)
      | some tri =>
          simp [hface] at hacted
          have hk8 : k ≤ 8 := by
            simpa [topPairingTargetShadowLength, topPairingTargetShadow] using hk
          interval_cases k <;>
            simp [topPairingTargetShadow] at hacted
          all_goals
            first
            | contradiction
            | exact TopPairingTriCursorFrom.tri hface
                (by decide)
                hacted.1
                (ih (by decide)
                  (by simpa [topPairingTargetShadow] using hacted.2))

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

theorem topPairingTriCursor_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingTargetCursorAtRank rank := by
  unfold TopPairingTargetCursorAtRank
  apply TopPairingTriCursorFrom.of_actedTriLetters_eq_drop
  · decide
  · simpa using topPairingActedTriLetters_eq_target_of_closed h

end Cuboctahedron
