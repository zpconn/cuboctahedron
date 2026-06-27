# Phase 6Z.6K.8AP.8 Source/Row Language Bridge

Status: `accepted-api-smoke`.

This step adds the relation-based AP surface that should replace finite catalog
dispatch for production coverage.  Generated code can now define a private
semantic language over `SourceIndexStateKey`, prove source/row facts for
members of that language, and prove that every identity-linear
`GoodDirectionAtRank` case in a rank range belongs to some language member.
The exported theorem then immediately erases the private language into the
existing AP GoodDirection coverage target.

Added Lean surfaces:

- `SourceRowFactsGoodLanguageOnRange`
- `SourceRowPredicateGoodLanguageOnRange`
- `SourceRowFactsGoodLanguageOnRange.to_bridge`
- `SourceRowPredicateGoodLanguageOnRange.to_bridge`
- `SourceRowFactsGoodLanguageOnRange.to_allGoodCoverage`
- `SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage`

Added smoke module:

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceRowLanguageSmoke.lean`

The smoke defines an empty private predicate language on `[0,0)` and exports:

```lean
theorem smokePredicateBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0
```

Focused validation passes:

```text
lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowLanguageSmoke
```

- Wall time: `1.01s`
- Peak RSS: `852,772 KiB`

This is accepted as a bridge/API smoke only.  It is empty coverage and does
not prove any nonempty source/row membership theorem.  The next AP step is to
generate a nonempty `SourceRowPredicateGoodLanguageOnRange` or
`SourceRowFactsGoodLanguageOnRange` over meaningful rank ranges without
`interval_cases r` plus `fin_cases mask` replay.
