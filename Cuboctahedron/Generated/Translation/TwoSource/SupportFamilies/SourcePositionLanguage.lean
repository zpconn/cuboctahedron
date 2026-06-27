import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Source-position lookup lemmas for the source-index/state producer path.

The rejected 8U smoke tried to prove producer membership by replaying bounded
rank/mask cases.  This module factors out the source-list part instead:
static `xpStart` and ordering sources are proved by small fixed-index lemmas,
while interior sources are described by the face that is excluded from the
interior list at a given impact.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

def faceIndex : Face -> Nat
  | Face.xp => 0
  | Face.xm => 1
  | Face.yp => 2
  | Face.ym => 3
  | Face.zp => 4
  | Face.zm => 5
  | Face.tmmm => 6
  | Face.tmmp => 7
  | Face.tmpm => 8
  | Face.tmpp => 9
  | Face.tpmm => 10
  | Face.tpmp => 11
  | Face.tppm => 12
  | Face.tppp => 13

def interiorSlot? (face excluded : Face) : Option Nat :=
  if face = excluded then
    none
  else if faceIndex face < faceIndex excluded then
    some (faceIndex face)
  else
    some (faceIndex face - 1)

def interiorExcludedFacesForSlot (face : Face) (slot : Nat) : List Face :=
  allFacesList.filter fun excluded : Face =>
    decide (interiorSlot? face excluded = some slot)

def interiorSourceIndex (i : Impact15) (slot : Nat) : Nat :=
  18 + 13 * (i.val - 1) + slot

@[simp] theorem listGet?_append_left {α : Type} (xs ys : List α) (n : Nat)
    (h : n < xs.length) :
    listGet? (xs ++ ys) n = listGet? xs n := by
  induction xs generalizing n with
  | nil =>
      simp at h
  | cons x xs ih =>
      cases n with
      | zero =>
          simp [listGet?]
      | succ n =>
          simp [listGet?, ih n (Nat.lt_of_succ_lt_succ h)]

@[simp] theorem listGet?_append_right {α : Type} (xs ys : List α) (n : Nat)
    (h : xs.length <= n) :
    listGet? (xs ++ ys) n = listGet? ys (n - xs.length) := by
  induction xs generalizing n with
  | nil =>
      simp
  | cons x xs ih =>
      cases n with
      | zero =>
          exact False.elim (Nat.not_succ_le_zero xs.length h)
      | succ n =>
          simp [listGet?, ih n (Nat.le_of_succ_le_succ h)]

@[simp] theorem impactInteriorSources_length
    (seq : Step14 -> Face) (i : Impact15) :
    (impactInteriorSources seq i).length = 13 := by
  unfold impactInteriorSources
  generalize hface : impactFace seq i = f
  fin_cases f <;> simp [allFacesList]

private theorem xpStartSources_eq :
    xpStartSources =
      [TranslationConstraintSource.xpStart ⟨0, by decide⟩,
       TranslationConstraintSource.xpStart ⟨1, by decide⟩,
       TranslationConstraintSource.xpStart ⟨2, by decide⟩,
       TranslationConstraintSource.xpStart ⟨3, by decide⟩] := by
  rfl

private theorem orderingSources_eq :
    orderingSources =
      [TranslationConstraintSource.ordering ⟨0, by decide⟩,
       TranslationConstraintSource.ordering ⟨1, by decide⟩,
       TranslationConstraintSource.ordering ⟨2, by decide⟩,
       TranslationConstraintSource.ordering ⟨3, by decide⟩,
       TranslationConstraintSource.ordering ⟨4, by decide⟩,
       TranslationConstraintSource.ordering ⟨5, by decide⟩,
       TranslationConstraintSource.ordering ⟨6, by decide⟩,
       TranslationConstraintSource.ordering ⟨7, by decide⟩,
       TranslationConstraintSource.ordering ⟨8, by decide⟩,
       TranslationConstraintSource.ordering ⟨9, by decide⟩,
       TranslationConstraintSource.ordering ⟨10, by decide⟩,
       TranslationConstraintSource.ordering ⟨11, by decide⟩,
       TranslationConstraintSource.ordering ⟨12, by decide⟩,
       TranslationConstraintSource.ordering ⟨13, by decide⟩] := by
  rfl

private theorem nonStartImpacts_eq :
    nonStartImpacts =
      [⟨1, by decide⟩, ⟨2, by decide⟩, ⟨3, by decide⟩,
       ⟨4, by decide⟩, ⟨5, by decide⟩, ⟨6, by decide⟩,
       ⟨7, by decide⟩, ⟨8, by decide⟩, ⟨9, by decide⟩,
       ⟨10, by decide⟩, ⟨11, by decide⟩, ⟨12, by decide⟩,
       ⟨13, by decide⟩, ⟨14, by decide⟩] := by
  rfl

theorem lookup_xpStart
    (seq : Step14 -> Face) (i : Fin 4) :
    listGet? (translationConstraintSources seq) i.val =
      some (TranslationConstraintSource.xpStart i) := by
  fin_cases i <;>
    simp [translationConstraintSources, xpStartSources_eq, orderingSources_eq,
      interiorSources, listGet?]

theorem lookup_ordering
    (seq : Step14 -> Face) (i : Step14) :
    listGet? (translationConstraintSources seq) (4 + i.val) =
      some (TranslationConstraintSource.ordering i) := by
  fin_cases i <;>
    simp [translationConstraintSources, xpStartSources_eq, orderingSources_eq,
      interiorSources, listGet?]

theorem lookup_interior_impact1_tmmm_slot5
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm]) :
    listGet? (translationConstraintSources seq) 23 =
      some (TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm) := by
  simp [translationConstraintSources, xpStartSources_eq, orderingSources_eq,
    interiorSources, nonStartImpacts_eq, impactInteriorSources, allFacesList,
    listGet?] at himpact ⊢
  rcases himpact with h | h | h | h | h | h <;> simp [listGet?, h]

theorem sourcePositionLanguage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
