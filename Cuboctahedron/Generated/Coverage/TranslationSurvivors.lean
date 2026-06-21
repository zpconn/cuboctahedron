import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.TranslationGoodDirection

/-!
Semantic survivor predicates for the translation branch.

Generated translation evidence should target masks that satisfy the
GoodDirection necessary condition.  This adapter recovers the ordinary
`TranslationCaseKilled` predicate used by the public coverage layer.
-/

namespace Cuboctahedron.Generated.Coverage

def TranslationGoodCaseKilled
    (r : Fin numPairWords) (mask : SignMask) : Prop :=
  GoodDirectionAtRank r mask -> TranslationCaseKilled r mask

theorem TranslationGoodCaseKilled.killed
    {r : Fin numPairWords} {mask : SignMask}
    (hgoodKilled : TranslationGoodCaseKilled r mask) :
    TranslationCaseKilled r mask := by
  intro hM hbad
  exact hgoodKilled
    (goodDirection_of_translation_feasible_at_rank hbad) hM hbad

def TranslationGoodCaseKilledNat (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask

theorem TranslationGoodCaseKilledNat.killed
    {r : Nat} {mask : SignMask}
    (hgoodKilled : TranslationGoodCaseKilledNat r mask) :
    TranslationCaseKilledNat r mask := by
  intro hlt
  exact TranslationGoodCaseKilled.killed (hgoodKilled hlt)

end Cuboctahedron.Generated.Coverage
