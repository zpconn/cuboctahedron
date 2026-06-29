import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Position-free source-skeleton interface for two-source row-property families.

`SourceIndexState` is useful but its public key includes concrete positions in
`translationConstraintSources`.  The Phase 6Z.6K.8AP.16DU.9EJ/9EK diagnostics
show that those positions are the main source of family fragmentation.

This module defines the next theorem surface: generated coverage should prove
semantic source-skeleton facts and row facts, then compose through
`RowPropertyParametricCovered`, without mentioning `firstIndex` or
`secondIndex`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceSkeletonState

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-- A coarse semantic source class.  Ordering sources deliberately forget their
ordering index; the row facts must recover any needed specificity. -/
inductive SourceSkeleton
  | xpStart (i : Fin 4)
  | ordering
  | interior (i : Impact15)
deriving DecidableEq, Repr

def SourceSkeleton.Matches :
    SourceSkeleton -> TranslationConstraintSource -> Prop
  | .xpStart i, TranslationConstraintSource.xpStart j => i = j
  | .ordering, TranslationConstraintSource.ordering _ => True
  | .interior i, TranslationConstraintSource.interior j _ => i = j
  | _, _ => False

def SourceSkeleton.ofSource : TranslationConstraintSource -> SourceSkeleton
  | TranslationConstraintSource.xpStart i => .xpStart i
  | TranslationConstraintSource.ordering _ => .ordering
  | TranslationConstraintSource.interior i _ => .interior i

theorem SourceSkeleton.ofSource_matches
    (source : TranslationConstraintSource) :
    (SourceSkeleton.ofSource source).Matches source := by
  cases source <;> simp [SourceSkeleton.ofSource, SourceSkeleton.Matches]

structure SourceSkeletonStateKey where
  firstSkeleton : SourceSkeleton
  secondSkeleton : SourceSkeleton
  support : TwoSourceFarkasSupport
  template : SourceIndexTemplate

/-- Semantic facts sufficient for coverage at the source-skeleton surface.
The skeleton matches are bookkeeping; the actual proof power is in
`sourceAgrees` and `rows`, which are intentionally position-free. -/
structure SourceSkeletonStateFacts
    (key : SourceSkeletonStateKey) (r : Nat) (mask : SignMask) : Prop where
  firstMatches : key.firstSkeleton.Matches key.support.first
  secondMatches : key.secondSkeleton.Matches key.support.second
  sourceAgrees : SourceAgrees key.support r mask
  rows : key.template.Rows key.support r mask

def SourceSkeletonStateKey.Applies
    (key : SourceSkeletonStateKey) (r : Nat) (mask : SignMask) : Prop :=
  SourceSkeletonStateFacts key r mask

theorem SourceSkeletonStateKey.covered_of_facts
    {key : SourceSkeletonStateKey} {r : Nat} {mask : SignMask}
    (h : SourceSkeletonStateFacts key r mask) :
    RowPropertyParametricCovered r mask :=
  key.template.covered h.sourceAgrees h.rows

theorem SourceSkeletonStateKey.goodKilled_of_facts
    {key : SourceSkeletonStateKey} {r : Nat} {hlt : r < numPairWords}
    {mask : SignMask}
    (h : SourceSkeletonStateFacts key r mask) :
    Cuboctahedron.Generated.Coverage.TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  RowPropertyParametricCovered.kills (key.covered_of_facts h)

def SourceSkeletonStateKey.family
    (key : SourceSkeletonStateKey) : RowPropertyMembershipFamily where
  Applies := key.Applies
  covered := by
    intro r mask h
    exact key.covered_of_facts h

/-- Adapter from the older source-index/state facts.  This is only a migration
lemma: production coverage should avoid using concrete indices as the primary
family key. -/
theorem SourceSkeletonStateFacts.of_sourceIndexStateFacts
    {sourceKey : SourceIndexStateKey}
    {skeletonKey : SourceSkeletonStateKey}
    {r : Nat} {mask : SignMask}
    (hfirstSkeleton :
      skeletonKey.firstSkeleton.Matches sourceKey.support.first)
    (hsecondSkeleton :
      skeletonKey.secondSkeleton.Matches sourceKey.support.second)
    (hsupport : skeletonKey.support = sourceKey.support)
    (htemplate : skeletonKey.template = sourceKey.template)
    (h : SourceIndexStateKeyFacts sourceKey r mask) :
    SourceSkeletonStateFacts skeletonKey r mask := by
  exact {
    firstMatches := by
      simpa [hsupport] using hfirstSkeleton
    secondMatches := by
      simpa [hsupport] using hsecondSkeleton
    sourceAgrees := by
      intro hlt
      simpa [hsupport] using h.sourceChecks hlt
    rows := by
      simpa [hsupport, htemplate] using h.rows
  }

theorem sourceSkeletonState_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceSkeletonState
