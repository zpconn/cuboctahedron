# Phase 6Z.6K.8AP.16D Source-Position Direct Coverage Target

Status: `accepted-source-position-direct-coverage-target`

This is bridge infrastructure only. It emits no nonempty generated coverage and
is not trusted as proof of exhaustiveness.

## Lean Surface

The source-position producer layer now has a direct coverage target:

```lean
SourcePositionRowProducerGoodCoverageOnRange lo hi
```

This asks a generated chunk to prove the smallest useful existential statement:
for every arbitrary identity-linear `GoodDirectionAtRank` survivor in the
range, produce:

- a `SourcePairPositionSpec`;
- a `SourceIndexStateRowProducer`;
- a `SourceIndexStateKey`; and
- the source-position predicate plus row-producer `Applies` facts.

The generic adapter packages that direct coverage as:

```lean
SourcePositionRowProducerGoodLanguageOnRange.of_coverage
```

and erases it to both:

```lean
AllTranslationGoodCoverageOnRange lo hi
SourceIndexStateDescriptorGoodCoverageOnRange lo hi
```

## Validation

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke
```

- Status: `passed`
- Wall time: `8.27s`
- Peak RSS: `3,296,632 KiB`

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguageSmoke
```

- Status: `passed`
- Wall time: `3.26s`
- Peak RSS: `3,328,084 KiB`

## Decision

Accept this as AP.16D bridge infrastructure. The actual AP.16 production gap
remains: a generated module must still prove a nonempty theorem of this direct
coverage type, or an equivalent descriptor coverage theorem, over meaningful
ranges without rank/mask replay.
