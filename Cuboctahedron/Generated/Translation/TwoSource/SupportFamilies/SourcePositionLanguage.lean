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
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

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

theorem listGet?_flatMap_const_length {α β : Type} {xs : List α}
    {f : α -> List β} {m k n : Nat} {x : α}
    (hlen : ∀ y, y ∈ xs -> (f y).length = m)
    (hx : listGet? xs k = some x)
    (hn : n < m) :
    listGet? (xs.flatMap f) (m * k + n) = listGet? (f x) n := by
  induction xs generalizing k with
  | nil =>
      simp [listGet?] at hx
  | cons a xs ih =>
      cases k with
      | zero =>
          have hfa : (f a).length = m := hlen a (by simp)
          simp [listGet?] at hx
          subst x
          simpa [List.flatMap, hfa] using
            (listGet?_append_left (f a) (xs.flatMap f) n (by simpa [hfa] using hn))
      | succ k =>
          have hfa : (f a).length = m := hlen a (by simp)
          have htail : ∀ y, y ∈ xs -> (f y).length = m := by
            intro y hy
            exact hlen y (by simp [hy])
          have hxTail : listGet? xs k = some x := by
            simpa [listGet?] using hx
          have hge : (f a).length <= m * (k + 1) + n := by
            rw [hfa]
            have hone : 1 <= k + 1 := Nat.succ_le_succ (Nat.zero_le k)
            have hmle : m <= m * (k + 1) := by
              simpa [Nat.mul_one] using Nat.mul_le_mul_left m hone
            exact Nat.le_trans hmle (Nat.le_add_right (m * (k + 1)) n)
          have hright := listGet?_append_right (f a) (xs.flatMap f)
            (m * (k + 1) + n) hge
          have hindex :
              (m * (k + 1) + n) - (f a).length = m * k + n := by
            rw [hfa]
            rw [Nat.mul_succ]
            omega
          have hih := ih htail hxTail
          have hright' :
              listGet? (f a ++ xs.flatMap f) (m * (k + 1) + n) =
                listGet? (xs.flatMap f) (m * k + n) := by
            simpa [hindex] using hright
          simpa [List.flatMap] using hright'.trans hih

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

theorem lookup_nonStartImpacts
    (i : Impact15) (hi : i ≠ 0) :
    listGet? nonStartImpacts (i.val - 1) = some i := by
  fin_cases i <;> simp [nonStartImpacts_eq, listGet?] at hi ⊢

theorem slot_lt_of_mem_interiorExcludedFacesForSlot
    {face excluded : Face} {slot : Nat}
    (h : excluded ∈ interiorExcludedFacesForSlot face slot) :
    slot < 13 := by
  fin_cases face <;> fin_cases excluded <;>
    simp [interiorExcludedFacesForSlot, interiorSlot?, faceIndex, allFacesList] at h ⊢ <;>
    omega

theorem lookup_impactInteriorSources_of_excluded_slot
    (seq : Step14 -> Face) (i : Impact15) (face : Face) (slot : Nat)
    (himpact : impactFace seq i ∈ interiorExcludedFacesForSlot face slot) :
    listGet? (impactInteriorSources seq i) slot =
      some (TranslationConstraintSource.interior i face) := by
  generalize hhit : impactFace seq i = excluded at himpact ⊢
  fin_cases face <;> fin_cases excluded <;>
    simp [interiorExcludedFacesForSlot, interiorSlot?, faceIndex, allFacesList] at himpact <;>
    subst slot <;>
    simp [impactInteriorSources, allFacesList, listGet?, hhit]

theorem lookup_interiorSources_of_excluded_slot
    (seq : Step14 -> Face) (i : Impact15) (face : Face) (slot : Nat)
    (hi : i ≠ 0)
    (himpact : impactFace seq i ∈ interiorExcludedFacesForSlot face slot) :
    listGet? (interiorSources seq) (13 * (i.val - 1) + slot) =
      some (TranslationConstraintSource.interior i face) := by
  have hslot : slot < 13 :=
    slot_lt_of_mem_interiorExcludedFacesForSlot himpact
  have hblock := listGet?_flatMap_const_length
    (xs := nonStartImpacts)
    (f := fun i : Impact15 => impactInteriorSources seq i)
    (m := 13)
    (k := i.val - 1)
    (n := slot)
    (x := i)
    (hlen := by
      intro y hy
      exact impactInteriorSources_length seq y)
    (hx := lookup_nonStartImpacts i hi)
    (hn := hslot)
  have hwithin :=
    lookup_impactInteriorSources_of_excluded_slot seq i face slot himpact
  simpa [interiorSources, hwithin] using hblock

theorem lookup_interior_of_excluded_slot
    (seq : Step14 -> Face) (i : Impact15) (face : Face) (slot : Nat)
    (hi : i ≠ 0)
    (himpact : impactFace seq i ∈ interiorExcludedFacesForSlot face slot) :
    listGet? (translationConstraintSources seq) (interiorSourceIndex i slot) =
      some (TranslationConstraintSource.interior i face) := by
  have hlookup :=
    lookup_interiorSources_of_excluded_slot seq i face slot hi himpact
  simpa [translationConstraintSources, xpStartSources_eq, orderingSources_eq,
    interiorSourceIndex, listGet?, Nat.add_assoc, Nat.add_left_comm,
    Nat.add_comm] using hlookup

/--
Semantic description of one source position in `translationConstraintSources`.

This is the reusable source-language building block for AP membership proofs:
generated code can prove `Holds` for a source position, then use `lookup` to
obtain the concrete list-index fact without replaying bounded ranks or masks.
-/
inductive SourcePositionSpec
  | xpStart (i : Fin 4)
  | ordering (i : Step14)
  | interior (i : Impact15) (face : Face) (slot : Nat)
deriving Repr

def SourcePositionSpec.index : SourcePositionSpec -> Nat
  | .xpStart i => i.val
  | .ordering i => 4 + i.val
  | .interior i _ slot => interiorSourceIndex i slot

def SourcePositionSpec.source : SourcePositionSpec -> TranslationConstraintSource
  | .xpStart i => TranslationConstraintSource.xpStart i
  | .ordering i => TranslationConstraintSource.ordering i
  | .interior i face _ => TranslationConstraintSource.interior i face

def SourcePositionSpec.Holds
    (spec : SourcePositionSpec) (seq : Step14 -> Face) : Prop :=
  match spec with
  | .xpStart _ => True
  | .ordering _ => True
  | .interior i face slot =>
      i ≠ 0 /\ impactFace seq i ∈ interiorExcludedFacesForSlot face slot

theorem SourcePositionSpec.lookup
    (spec : SourcePositionSpec) (seq : Step14 -> Face)
    (h : spec.Holds seq) :
    listGet? (translationConstraintSources seq) spec.index =
      some spec.source := by
  cases spec with
  | xpStart i =>
      exact lookup_xpStart seq i
  | ordering i =>
      exact lookup_ordering seq i
  | interior i face slot =>
      exact lookup_interior_of_excluded_slot seq i face slot h.1 h.2

/--
Semantic description of a two-source support by source-list positions.

The `Predicate` field is intentionally rank/mask-generic.  It states only the
source-position obligations and `SourceChecks`; the generic theorem below turns
that into `SourceIndexStateSourceFacts`.
-/
structure SourcePairPositionSpec where
  first : SourcePositionSpec
  second : SourcePositionSpec

def SourcePairPositionSpec.support
    (spec : SourcePairPositionSpec) : TwoSourceFarkasSupport where
  first := spec.first.source
  second := spec.second.source

def SourcePairPositionSpec.Predicate
    (spec : SourcePairPositionSpec) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
    spec.first.Holds seq /\
      spec.second.Holds seq /\
        SourceChecks spec.support r hlt mask

theorem SourcePairPositionSpec.sourceFacts
    (spec : SourcePairPositionSpec)
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (h : spec.Predicate r mask) :
    SourceIndexStateSourceFacts key r mask := by
  exact {
    firstSource := fun hlt => by
      have hlookup := spec.first.lookup
        (translationSeqAtRankMask ⟨r, hlt⟩ mask) (h hlt).1
      simpa [hfirst, hsupport, SourcePairPositionSpec.support] using hlookup
    secondSource := fun hlt => by
      have hlookup := spec.second.lookup
        (translationSeqAtRankMask ⟨r, hlt⟩ mask) (h hlt).2.1
      simpa [hsecond, hsupport, SourcePairPositionSpec.support] using hlookup
    sourceChecks := fun hlt => by
      simpa [hsupport, SourcePairPositionSpec.support] using (h hlt).2.2
  }

theorem SourcePairPositionSpec.sourcePredicate
    (spec : SourcePairPositionSpec)
    {r : Nat} {mask : SignMask}
    (h : spec.Predicate r mask) :
    SourceIndexStateSourcePredicate
      spec.first.index spec.second.index spec.support r mask := by
  intro hlt
  exact ⟨
    spec.first.lookup (translationSeqAtRankMask ⟨r, hlt⟩ mask) (h hlt).1,
    ⟨
      spec.second.lookup (translationSeqAtRankMask ⟨r, hlt⟩ mask) (h hlt).2.1,
      (h hlt).2.2
    ⟩
  ⟩

def SourcePairPositionSpec.sourceProducer
    (spec : SourcePairPositionSpec) : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = spec.first.index /\
      key.secondIndex = spec.second.index /\
      key.support = spec.support /\
      spec.Predicate r mask
  sourceFacts := by
    intro key r mask h
    exact spec.sourceFacts h.1 h.2.1 h.2.2.1 h.2.2.2

theorem SourcePairPositionSpec.sourceProducerApplies
    (spec : SourcePairPositionSpec)
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (h : spec.Predicate r mask) :
    spec.sourceProducer.Applies key r mask := by
  exact ⟨hfirst, ⟨hsecond, ⟨hsupport, h⟩⟩⟩

theorem sourcePositionLanguage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
