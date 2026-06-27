# Phase 6Z.6K.8AP.12: Source-Position Predicate Adapter

Status: accepted as bridge infrastructure only.

This step adds direct source-position adapters:

- `SourcePairPositionSpec.sourcePredicate`
- `SourcePairPositionSpec.sourceProducerApplies`

These lemmas let generated modules prove `SourcePairPositionSpec.Predicate`
once and then use it through either the older
`SourceIndexStateSourcePredicate` bridge or the newer
`spec.sourceProducer.Applies` bridge.

Smoke validation added dynamic and static examples:

- `generic_source_000_sourcePredicate`
- `generic_source_000_sourceProducerApplies`
- `generic_source_004_sourcePredicate`
- `generic_source_004_sourceProducerApplies`

Focused validation command:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguageSmoke
```

Result:

- passed: yes
- elapsed: 18.76s
- user: 20.92s
- system: 2.42s
- peak RSS: 3,636,984 KiB
- swaps: 0

This does not prove nonempty generated coverage. The next AP target is to
instantiate `SourcePositionRowProducerGoodLanguageOnRange` or a compatible
source/row language over meaningful nonempty rank ranges without finite
rank/mask replay.
