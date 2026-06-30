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

/-- Build template-language membership from source agreement and row facts. -/
theorem TemplateLanguageMember.of_source_rows
    {template : SourceIndexTemplate}
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : template.Rows support r mask) :
    TemplateLanguageMember r mask :=
  ⟨template, support, hsource, hrows⟩

/-- Build template-language membership from existing source-index/state facts. -/
theorem TemplateLanguageMember.of_sourceIndexState_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hrows : SourceIndexStateRowFacts key r mask) :
    TemplateLanguageMember r mask :=
  TemplateLanguageMember.of_source_rows
    (template := key.template) (support := key.support)
    hsource.sourceChecks hrows.rows

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

/--
The preferred production obligation for a compressed template-language proof.

Unlike catalog-oriented bridges, this predicate asks directly for
template-tagged membership for every identity-linear GoodDirection case in a
range.  Generated state-language or algebraic-family modules should target
this shape when they can keep the concrete support data private.
-/
abbrev TemplateLanguageMemberBridgeOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            TemplateLanguageMember rank mask

/-- Erase the preferred membership bridge to template-language coverage. -/
theorem TemplateLanguageMemberBridgeOnRange.to_coverage
    {lo hi : Nat}
    (bridge : TemplateLanguageMemberBridgeOnRange lo hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  exact TemplateLanguageMember.to_templateLanguageWitness
    (bridge hlt hlo hhi hM hgood)

/-- Erase an existing source/row facts bridge to the preferred member bridge. -/
theorem TemplateLanguageMemberBridgeOnRange.of_sourceRowFactsBridge
    {lo hi : Nat}
    (bridge : SourceRowFactsGoodBridgeOnRange lo hi) :
    TemplateLanguageMemberBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases bridge hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  exact TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows

/-- Erase an existing source/row predicate bridge to the preferred member bridge. -/
theorem TemplateLanguageMemberBridgeOnRange.of_sourceRowPredicateBridge
    {lo hi : Nat}
    (bridge : SourceRowPredicateGoodBridgeOnRange lo hi) :
    TemplateLanguageMemberBridgeOnRange lo hi :=
  TemplateLanguageMemberBridgeOnRange.of_sourceRowFactsBridge
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange bridge)

/--
A compressed semantic domain over translation cases.

This is the state-language escape hatch from rank/mask tables: the domain may
represent a symbolic recurrence state, a quotient class, a D4 transport class,
or any other small semantic family over `(rank, mask)`.
-/
abbrev TemplateLanguageDomain := Nat -> SignMask -> Prop

/--
The domain covers every identity-linear GoodDirection case in a range.

This keeps rank intervals as an outer accountability boundary only; the actual
compression coordinate is the arbitrary semantic domain.
-/
abbrev TemplateLanguageDomainCoversIdentityRange
    (domain : TemplateLanguageDomain) (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            domain rank mask

theorem TemplateLanguageDomainCoversIdentityRange.empty
    {domain : TemplateLanguageDomain} {lo hi : Nat}
    (h : hi <= lo) :
    TemplateLanguageDomainCoversIdentityRange domain lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim ((Nat.not_lt_of_ge h) (lt_of_le_of_lt hlo hhi))

theorem TemplateLanguageDomainCoversIdentityRange.single
    {domain : TemplateLanguageDomain} {anchor : Nat}
    (hcase :
      forall {mask : SignMask} (hlt : anchor < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨anchor, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨anchor, hlt⟩ mask ->
            domain anchor mask) :
    TemplateLanguageDomainCoversIdentityRange domain anchor (anchor + 1) := by
  intro rank mask hlt hlo hhi hM hgood
  have hleAnchor : rank <= anchor := Nat.le_of_lt_succ hhi
  have hrank : rank = anchor := Nat.le_antisymm hleAnchor hlo
  subst rank
  exact hcase hlt hM hgood

theorem TemplateLanguageDomainCoversIdentityRange.concat
    {domain : TemplateLanguageDomain} {lo mid hi : Nat}
    (left : TemplateLanguageDomainCoversIdentityRange domain lo mid)
    (right : TemplateLanguageDomainCoversIdentityRange domain mid hi) :
    TemplateLanguageDomainCoversIdentityRange domain lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  by_cases hmid : rank < mid
  · exact left hlt hlo hmid hM hgood
  · exact right hlt (Nat.le_of_not_lt hmid) hhi hM hgood

theorem TemplateLanguageDomainCoversIdentityRange.mono
    {domain superdomain : TemplateLanguageDomain} {lo hi : Nat}
    (hsub : forall {rank : Nat} {mask : SignMask},
      domain rank mask -> superdomain rank mask)
    (hcover : TemplateLanguageDomainCoversIdentityRange domain lo hi) :
    TemplateLanguageDomainCoversIdentityRange superdomain lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact hsub (hcover hlt hlo hhi hM hgood)

theorem TemplateLanguageDomainCoversIdentityRange.or_left
    {left right : TemplateLanguageDomain} {lo hi : Nat}
    (hcover : TemplateLanguageDomainCoversIdentityRange left lo hi) :
    TemplateLanguageDomainCoversIdentityRange
      (fun rank mask => left rank mask \/ right rank mask) lo hi :=
  TemplateLanguageDomainCoversIdentityRange.mono
    (fun h => Or.inl h) hcover

theorem TemplateLanguageDomainCoversIdentityRange.or_right
    {left right : TemplateLanguageDomain} {lo hi : Nat}
    (hcover : TemplateLanguageDomainCoversIdentityRange right lo hi) :
    TemplateLanguageDomainCoversIdentityRange
      (fun rank mask => left rank mask \/ right rank mask) lo hi :=
  TemplateLanguageDomainCoversIdentityRange.mono
    (fun h => Or.inr h) hcover

/-- The domain proves template membership for every case it contains. -/
abbrev TemplateLanguageMemberBridgeOnDomain
    (domain : TemplateLanguageDomain) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    domain rank mask ->
      totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
          (matId : Mat3 Rat) ->
        GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
          TemplateLanguageMember rank mask

/-- A covered semantic domain yields the preferred range member bridge. -/
theorem TemplateLanguageMemberBridgeOnDomain.to_range
    {domain : TemplateLanguageDomain} {lo hi : Nat}
    (hcover : TemplateLanguageDomainCoversIdentityRange domain lo hi)
    (hmember : TemplateLanguageMemberBridgeOnDomain domain) :
    TemplateLanguageMemberBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact hmember hlt (hcover hlt hlo hhi hM hgood) hM hgood

/-- Restrict a domain bridge along a semantic subset relation. -/
theorem TemplateLanguageMemberBridgeOnDomain.mono
    {domain subdomain : TemplateLanguageDomain}
    (hsub : forall {rank : Nat} {mask : SignMask},
      subdomain rank mask -> domain rank mask)
    (hmember : TemplateLanguageMemberBridgeOnDomain domain) :
    TemplateLanguageMemberBridgeOnDomain subdomain := by
  intro rank mask hlt hsubmem hM hgood
  exact hmember hlt (hsub hsubmem) hM hgood

/-- Combine two semantic domain bridges by case analysis. -/
theorem TemplateLanguageMemberBridgeOnDomain.or
    {left right : TemplateLanguageDomain}
    (hleft : TemplateLanguageMemberBridgeOnDomain left)
    (hright : TemplateLanguageMemberBridgeOnDomain right) :
    TemplateLanguageMemberBridgeOnDomain
      (fun rank mask => left rank mask \/ right rank mask) := by
  intro rank mask hlt hmem hM hgood
  cases hmem with
  | inl h => exact hleft hlt h hM hgood
  | inr h => exact hright hlt h hM hgood

/--
Two semantic domains that cover a range by disjunction yield the preferred
range member bridge.
-/
theorem TemplateLanguageMemberBridgeOnRange.of_domain_or
    {left right : TemplateLanguageDomain} {lo hi : Nat}
    (hcover :
      TemplateLanguageDomainCoversIdentityRange
        (fun rank mask => left rank mask \/ right rank mask) lo hi)
    (hleft : TemplateLanguageMemberBridgeOnDomain left)
    (hright : TemplateLanguageMemberBridgeOnDomain right) :
    TemplateLanguageMemberBridgeOnRange lo hi :=
  TemplateLanguageMemberBridgeOnDomain.to_range hcover
    (TemplateLanguageMemberBridgeOnDomain.or hleft hright)

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

/--
Singleton constructor from existential source/row facts.

This is the smallest generated-leaf shape still compatible with the
template-language target.  The generated theorem proves that some template and
some private support have the semantic source and row facts; this constructor
erases those details before the public coverage theorem leaves the module.
-/
theorem TemplateLanguageCoverageOnIdentityRange.single_source_rows
    {rank : Nat}
    (h :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists template : SourceIndexTemplate,
              exists support : TwoSourceFarkasSupport,
                SourceAgrees support rank mask /\
                  template.Rows support rank mask) :
    TemplateLanguageCoverageOnIdentityRange rank (rank + 1) :=
  TemplateLanguageCoverageOnIdentityRange.single_member
    (fun hlt hM hgood =>
      let ⟨template, support, hsource, hrows⟩ := h hlt hM hgood
      TemplateLanguageMember.of_source_rows
        (template := template) (support := support) hsource hrows)

/--
Range constructor from existential source/row facts.

This is the intended production theorem shape for generated range or
state-language modules: for each identity-linear GoodDirection case in the
range, prove that some private support realizes one of the 11 row templates.
-/
theorem TemplateLanguageCoverageOnIdentityRange.of_source_rows
    {lo hi : Nat}
    (h :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists template : SourceIndexTemplate,
                  exists support : TwoSourceFarkasSupport,
                    SourceAgrees support rank mask /\
                      template.Rows support rank mask) :
    TemplateLanguageCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  let ⟨template, support, hsource, hrows⟩ := h hlt hlo hhi hM hgood
  exact TemplateLanguageMember.to_templateLanguageWitness
    (TemplateLanguageMember.of_source_rows
      (template := template) (support := support) hsource hrows)

/--
Range constructor from existing source-index/state fact producers.

This is the direct migration path for current generated source/row fact
modules: keep `keyAt` private, prove source facts and row facts for that key,
and export only `TemplateLanguageCoverageOnIdentityRange`.
-/
theorem TemplateLanguageCoverageOnIdentityRange.of_keyAt_source_row
    {keyAt : Nat -> SignMask -> SourceIndexStateKey}
    {lo hi : Nat}
    (h :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                SourceIndexStateSourceFacts (keyAt rank mask) rank mask /\
                  SourceIndexStateRowFacts (keyAt rank mask) rank mask) :
    TemplateLanguageCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  rcases h hlt hlo hhi hM hgood with ⟨hsource, hrows⟩
  exact TemplateLanguageMember.to_templateLanguageWitness
    (TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows)

/-- Erase an existing source/row facts bridge to template-language coverage. -/
theorem TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsBridge
    {lo hi : Nat}
    (bridge : SourceRowFactsGoodBridgeOnRange lo hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (TemplateLanguageMemberBridgeOnRange.of_sourceRowFactsBridge bridge)

/-- Erase an existing source/row predicate bridge to template-language coverage. -/
theorem TemplateLanguageCoverageOnIdentityRange.of_sourceRowPredicateBridge
    {lo hi : Nat}
    (bridge : SourceRowPredicateGoodBridgeOnRange lo hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsBridge
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange bridge)

/-- Erase an existing finite source/row facts catalog to template-language coverage. -/
theorem TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsCatalog
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowFactsGoodCatalogOnRange keyAt lo hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsBridge
    (SourceRowFactsGoodCatalogOnRange.to_bridge catalog)

/-- Erase an existing finite source/row predicate catalog to template-language coverage. -/
theorem TemplateLanguageCoverageOnIdentityRange.of_sourceRowPredicateCatalog
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowPredicateGoodCatalogOnRange keyAt lo hi) :
    TemplateLanguageCoverageOnIdentityRange lo hi :=
  TemplateLanguageCoverageOnIdentityRange.of_sourceRowPredicateBridge
    (SourceRowPredicateGoodCatalogOnRange.to_bridge catalog)

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
