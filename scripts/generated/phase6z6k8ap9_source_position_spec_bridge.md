# Phase 6Z.6K.8AP.9 Source-Position Spec Bridge

Status: `accepted-source-language-building-block`.

This step adds a reusable source-position language for the AP source/row
membership route.  It does not prove full nonempty coverage, but it removes a
class of bespoke generated source-list lookup proofs.

New Lean surfaces in `SourcePositionLanguage.lean`:

- `SourcePositionSpec`
- `SourcePositionSpec.index`
- `SourcePositionSpec.source`
- `SourcePositionSpec.Holds`
- `SourcePositionSpec.lookup`
- `SourcePairPositionSpec`
- `SourcePairPositionSpec.support`
- `SourcePairPositionSpec.Predicate`
- `SourcePairPositionSpec.sourceFacts`
- `SourcePairPositionSpec.sourceProducer`

`SourcePositionSpec` covers:

- static `xpStart` source positions;
- static ordering source positions;
- dynamic interior source positions, with the required excluded-face-set
  obligation.

The smoke module now checks two generic instantiations:

- `generic_source_000_sourceFacts`, for the largest dynamic interior source
  pattern from the earlier language profile;
- `generic_source_004_sourceFacts`, for a static `xpStart` plus ordering source
  pattern.

Focused validation:

```text
lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguageSmoke
```

- Status: passed
- Wall time: `12.80s`
- Peak RSS: `3,649,176 KiB`

The first build attempt failed because `SourceChecks` was not in scope from
`RowRelationTemplates`; after opening that namespace, the focused build passed.

Remaining gap: use this source-position spec together with row producers and a
nonempty `complete` theorem to build real
`SourceRowPredicateGoodLanguageOnRange` / `SourceRowFactsGoodLanguageOnRange`
coverage over meaningful rank ranges, without `interval_cases r` plus
`fin_cases mask` replay.
