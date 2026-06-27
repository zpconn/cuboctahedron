# Phase 6Z.6K.8AP.10 Source/Row Producer Language Bridge

Status: accepted API smoke.

Purpose: add a producer-level GoodDirection language bridge so generated
modules can keep source and row producer definitions private, prove membership
once, and export only erased all-Good translation coverage.

Lean changes:

- Modified
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerMembershipBridge.lean`.
- Added
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceRowProducerLanguageSmoke.lean`.

New API:

```lean
structure SourceRowProducerGoodLanguageOnRange (lo hi : Nat)

def SourceRowProducerGoodLanguageOnRange.to_factsLanguage :
  SourceRowProducerGoodLanguageOnRange lo hi ->
    SourceRowFactsGoodLanguageOnRange lo hi

theorem SourceRowProducerGoodLanguageOnRange.to_bridge :
  SourceRowProducerGoodLanguageOnRange lo hi ->
    SourceRowFactsGoodBridgeOnRange lo hi

theorem SourceRowProducerGoodLanguageOnRange.to_allGoodCoverage :
  SourceRowProducerGoodLanguageOnRange lo hi ->
    AllTranslationGoodCoverageOnRange lo hi
```

Focused validation:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowProducerLanguageSmoke
```

Result: passed.

Telemetry:

- Wall time: 2.08s
- Peak RSS: 3,300,380 KiB

Two small Lean declaration-shape issues were fixed during validation:

- `SourceRowProducerGoodLanguageOnRange.to_factsLanguage` returns a structure,
  so it must be a `def`, not a `theorem`.
- `smokeFactsLanguage` returns a structure, so it must also be a `def`.

Scope caveat: this is an empty-range API smoke only. It does not claim
nonempty coverage. The next proof-producing target is a nonempty
`SourceRowProducerGoodLanguageOnRange lo hi` over meaningful rank ranges,
derived from semantic source-position predicates, row producer `Applies`
facts, identity linearity, and `GoodDirectionAtRank`, without bounded
rank/mask replay.
