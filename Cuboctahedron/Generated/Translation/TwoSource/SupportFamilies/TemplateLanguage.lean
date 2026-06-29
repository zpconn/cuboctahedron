import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Template-language surface for two-source translation coverage.

The production compression target for the translation good-direction branch is
not a concrete source/support catalog.  It is a semantic theorem saying that
every identity-linear, good-direction case in a range satisfies one of the
parametric row-property templates from `RowPropertyQuotient`.

This module deliberately adds no generated data.  It fixes the small public
surface that future generated or hand-written template-language proofs should
produce, and provides the erasure theorem consumed by the all-good coverage
API.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/--
The semantic witness for one translation good-direction case.

This is intentionally just the row-property quotient predicate: it hides the
particular support/source coordinates and exposes only the reusable row-template
fact needed to kill the case.
-/
abbrev TemplateLanguageWitness (r : Nat) (mask : SignMask) : Prop :=
  RowPropertyParametricCovered r mask

/--
Generator-facing predicate for one of the 11 row templates.

This keeps the template tag first-class while hiding the concrete support in an
existential.  A production algebraic bridge may prove this predicate directly
from identity-linear GoodDirection hypotheses, then erase it to
`TemplateLanguageWitness`.
-/
def TemplateWitnessFor
    (template : SourceIndexTemplate) (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ template.Rows support r mask

/-- A first-class source-index template witness erases to the template language. -/
theorem TemplateWitnessFor.to_templateLanguageWitness
    {template : SourceIndexTemplate} {r : Nat} {mask : SignMask}
    (h : TemplateWitnessFor template r mask) :
    TemplateLanguageWitness r mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact template.covered hsource hrows

/--
Template-tagged membership target for one case.

This is equivalent to proving that at least one of the 11 row templates applies,
but leaves the concrete support private to the proof.
-/
def TemplateLanguageMember (r : Nat) (mask : SignMask) : Prop :=
  exists template : SourceIndexTemplate, TemplateWitnessFor template r mask

/-- Template-tagged membership erases to the row-property quotient witness. -/
theorem TemplateLanguageMember.to_templateLanguageWitness
    {r : Nat} {mask : SignMask}
    (h : TemplateLanguageMember r mask) :
    TemplateLanguageWitness r mask := by
  rcases h with ⟨template, htemplate⟩
  exact TemplateWitnessFor.to_templateLanguageWitness htemplate

/-- A template-language witness kills the corresponding good-direction case. -/
theorem TemplateLanguageWitness.kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : TemplateLanguageWitness r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  RowPropertyParametricCovered.kills h

/--
Range coverage target for the production template-language backend.

Generated modules should export theorems of this shape, or theorem-valued
aliases of this shape.  They should not expose rank/mask tables or concrete
certificate literals.
-/
abbrev TemplateLanguageCoverageOnIdentityRange (lo hi : Nat) : Prop :=
  RowPropertyParametricCoverageOnIdentityRange lo hi

/-- Empty range coverage, useful for balanced generated interval assembly. -/
theorem TemplateLanguageCoverageOnIdentityRange.empty
    {lo hi : Nat}
    (h : hi <= lo) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.empty h

/-- Singleton constructor for direct template-language coverage. -/
theorem TemplateLanguageCoverageOnIdentityRange.single
    {rank : Nat}
    (h :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            TemplateLanguageWitness rank mask) :
    TemplateLanguageCoverageOnIdentityRange rank (rank + 1) :=
  RowPropertyParametricCoverageOnIdentityRange.single h

/--
Singleton constructor from template-tagged membership.

Generated smoke modules can use this to demonstrate the intended production
shape: prove a `TemplateLanguageMember` under the identity-linear
GoodDirection hypotheses, without exposing a concrete support table in the
public theorem.
-/
theorem TemplateLanguageCoverageOnIdentityRange.single_member
    {rank : Nat}
    (h :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            TemplateLanguageMember rank mask) :
    TemplateLanguageCoverageOnIdentityRange rank (rank + 1) :=
  TemplateLanguageCoverageOnIdentityRange.single
    (fun hlt hM hgood =>
      TemplateLanguageMember.to_templateLanguageWitness (h hlt hM hgood))

/-- Concatenate adjacent template-language coverage ranges. -/
theorem TemplateLanguageCoverageOnIdentityRange.concat
    {lo mid hi : Nat}
    (left : TemplateLanguageCoverageOnIdentityRange lo mid)
    (right : TemplateLanguageCoverageOnIdentityRange mid hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.concat left right

/-- Erase template-language coverage to the all-good translation range target. -/
theorem TemplateLanguageCoverageOnIdentityRange.to_allGoodCoverage
    {lo hi : Nat}
    (hcoverage : TemplateLanguageCoverageOnIdentityRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage hcoverage

theorem templateLanguage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
