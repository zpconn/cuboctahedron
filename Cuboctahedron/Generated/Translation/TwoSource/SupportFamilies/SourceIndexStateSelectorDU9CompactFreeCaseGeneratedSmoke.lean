import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticCaseSmoke

/-!
Generated compact-free selector source/row case smoke.

This module intentionally imports the semantic case smoke only.  It does
not import `SourceIndexStateSelectorDU9PCompactMembership` and does not
use rank-local compact GoodDirection membership.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeCaseGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

abbrev rank0Mask8 : SignMask := ⟨8, by decide⟩

theorem rank0Mask8_selectorCoordinateSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k000) 0 rank0Mask8 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticCaseSmoke.rank0Mask8_selectorCoordinateSourceRowFacts

abbrev rank0Mask13 : SignMask := ⟨13, by decide⟩

theorem rank0Mask13_selectorCoordinateSourceRowFacts :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey ClassifierKey.k003) 0 rank0Mask13 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticCaseSmoke.rank0Mask13_selectorCoordinateSourceRowFacts

theorem sourceIndexStateSelectorDU9CompactFreeCaseGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeCaseGeneratedSmoke
