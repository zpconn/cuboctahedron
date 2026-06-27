# Phase 6Z.6K.8AP.11 Source-Position Producer Language Bridge

Status: accepted API smoke.

Purpose: add a source-position plus row-producer language bridge that erases
semantic source-position membership and row-producer `Applies` evidence to the
AP.10 producer-language surface.

Lean files:

- Added
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguage.lean`.
- Added
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguageSmoke.lean`.

New API:

```lean
structure SourcePositionRowProducerGoodLanguageOnRange (lo hi : Nat)

def SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage :
  SourcePositionRowProducerGoodLanguageOnRange lo hi ->
    SourceRowProducerGoodLanguageOnRange lo hi

def SourcePositionRowProducerGoodLanguageOnRange.to_factsLanguage :
  SourcePositionRowProducerGoodLanguageOnRange lo hi ->
    SourceRowFactsGoodLanguageOnRange lo hi

theorem SourcePositionRowProducerGoodLanguageOnRange.to_bridge :
  SourcePositionRowProducerGoodLanguageOnRange lo hi ->
    SourceRowFactsGoodBridgeOnRange lo hi

theorem SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage :
  SourcePositionRowProducerGoodLanguageOnRange lo hi ->
    AllTranslationGoodCoverageOnRange lo hi
```

Focused validation:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke
```

Result: passed.

Telemetry:

- Wall time: 8.41s
- Peak RSS: 3,302,808 KiB

Scope caveat: this is an empty-range API smoke only.  It does not prove
nonempty coverage.  The next proof-producing target is a nonempty
`SourcePositionRowProducerGoodLanguageOnRange lo hi` over meaningful rank
ranges, using `SourcePairPositionSpec.Predicate` for the source side and
row-producer `Applies` facts for the row side, without finite rank/mask replay.
