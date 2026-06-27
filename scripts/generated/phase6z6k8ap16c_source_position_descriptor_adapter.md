# Phase 6Z.6K.8AP.16C Source-Position Descriptor Adapter

Status: `accepted-source-position-descriptor-adapter`

This is bridge infrastructure only. It emits no nonempty generated coverage and
is not trusted as proof of exhaustiveness.

## Lean Surface

The descriptor bridge now accepts the strongest current source-position
producer language directly:

```lean
SourcePositionRowProducerGoodLanguageOnRange.to_descriptorCoverage
```

This erases a generated
`SourcePositionRowProducerGoodLanguageOnRange lo hi` theorem to:

```lean
SourceIndexStateDescriptorGoodCoverageOnRange lo hi
```

without requiring additional generated rank/mask data.

## Validation

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguageSmoke
```

- Status: `passed`
- Wall time: `10.56s`
- Peak RSS: `3,308,884 KiB`

## Decision

Accept this as AP.16C bridge infrastructure. The actual AP.16 production gap
remains: a generated module must still prove a nonempty membership theorem such
as:

```lean
SourcePositionRowProducerGoodLanguageOnRange lo hi
```

or a direct descriptor coverage theorem, for arbitrary identity-linear
`GoodDirectionAtRank` cases over meaningful ranges, without rank/mask replay.
