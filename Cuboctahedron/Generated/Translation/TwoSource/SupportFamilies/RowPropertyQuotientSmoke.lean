import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Tiny build smoke for the source-parametric row-property quotient.

This file intentionally proves only the generic bridge shape.  It contains no
rank/mask tables and no generated certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

private def smokeSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev smokeContains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees smokeSupport r mask /\
    EqEqPosVarFirstRows smokeSupport r mask

theorem smokeCovered
    {r : Nat} {mask : SignMask}
    (h : smokeContains r mask) :
    RowPropertyParametricCovered r mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst ⟨smokeSupport, h⟩

theorem smokeGoodCaseKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : smokeContains r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  RowPropertyParametricCovered.kills (smokeCovered h)

theorem rowPropertyQuotientSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientSmoke
