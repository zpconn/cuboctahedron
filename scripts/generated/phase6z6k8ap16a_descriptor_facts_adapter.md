# Phase 6Z.6K.8AP.16A Descriptor/Facts Adapter

Status: `accepted-descriptor-facts-adapter`

This is bridge infrastructure only. It does not prove nonempty generated
coverage.

## Artifacts

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguage.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguageSmoke.lean`

## What It Adds

AP.15 introduced the direct descriptor coverage target:

```lean
SourceIndexStateDescriptorGoodCoverageOnRange lo hi
```

AP.16A connects that target to the older facts/predicate/language surfaces.
Generated chunks may now prove one of:

```lean
SourceRowFactsGoodBridgeOnRange lo hi
SourceRowPredicateGoodBridgeOnRange lo hi
SourceRowFactsGoodLanguageOnRange lo hi
SourceRowPredicateGoodLanguageOnRange lo hi
SourceRowProducerGoodLanguageOnRange lo hi
```

and erase it to direct descriptor coverage through:

```lean
SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage
SourceRowFactsGoodLanguageOnRange.to_descriptorCoverage
SourceRowPredicateGoodLanguageOnRange.to_descriptorCoverage
SourceRowProducerGoodLanguageOnRange.to_descriptorCoverage
```

This gives the next generated emitter two equivalent semantic targets:
prove descriptor coverage directly, or prove source/row facts and let the
small hand-written adapter create the descriptor witness.

## Validation

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguageSmoke
```

- Status: passed
- Wall time: 8.68s
- Peak RSS: 3,296,324 KiB

## Decision

Accept AP.16A as bridge infrastructure. It reduces the next proof-producing
task to the real hard core: prove a nonempty `SourceRowFactsGoodBridgeOnRange`
or `SourceIndexStateDescriptorGoodCoverageOnRange` over meaningful rank ranges
from arbitrary identity-linear `GoodDirectionAtRank` cases, without finite
rank/mask replay.
