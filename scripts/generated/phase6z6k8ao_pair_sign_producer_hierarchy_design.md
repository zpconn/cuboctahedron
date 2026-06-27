# Phase 6Z.6K.8AO Pair-Sign Producer Hierarchy Design

This report is not trusted as proof. It combines the measured split
Lean smoke root with the sampled growth projection to design the
next production generated hierarchy.

- Status: `accepted-production-hierarchy-design`
- Anchor descriptor families: `315`
- Projected descriptor families: `862`
- Anchor source groups: `298`
- Projected source groups: `722`
- Anchor row groups: `22`
- Projected row groups: `26`
- Projected source+row producers: `748`
- Projected descriptor chunks: `14` at chunk size `64`
- Projected generated source: `57827` lines / `2362` KiB
- Projected CPU check budget: `58s`
- Projected wall check budget at 4 jobs: `1.2m`
- Projected peak RSS: `3.93` GiB

## Estimated Source Layout

| Surface | Anchor | Projected |
| --- | ---: | ---: |
| Source producer module lines | 5087 | 12325 |
| Row producer module lines | 263 | 311 |
| Descriptor chunk lines total | 16500 | 45153 |
| Descriptor chunk max lines | 3352 | 3352 |
| Root lines | 20 | 38 |
| Total lines | 21870 | 57827 |
| Source size KiB | 893 | 2362 |

## Proposed Production Modules

- Root: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Production.All`
- Source producers: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Production/Source.lean`
- Row producers: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Production/Row.lean`
- Descriptor chunks: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Production/Chunks/ChunkNNN.lean`
- Membership core: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Production/Membership/Core.lean`
- Membership root: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Production.Membership.All`
- Translation bridge target: `Cuboctahedron.Generated.Translation.KilledBridge`

## Remaining Lean Bridge

- Name: `pairSignProducerCoverage_killedBridge`
- Target: `forall {r : Fin numPairWords} {mask : SignMask}, translationEarlyFamilyClassOfChoice r mask = TranslationFamilyClass.needsFarkas -> totalLinearOfPairWord (unrankPairWord r) = matId -> Coverage.TranslationCaseKilled r mask`
- Obligation: derive a matching SourceIndexStateSourcePredicate and row predicate for each GoodDirection residual case, then apply the generated source/row producer theorem and TranslationGoodCaseKilled.killed

The production descriptor hierarchy is small enough under the current
projection. The unclosed proof obligation is membership: for an
arbitrary GoodDirection residual translation case, generated Lean must
derive the matching source predicate and row predicate, then invoke the
appropriate producer theorem and `TranslationGoodCaseKilled.killed`.

## Decision Notes

- diagnostic only: this design report is not proof evidence
- source/row producer projection stays below configured gates
- split-source/chunk/root layout remains comfortably below the build budget
- next proof step is the generated membership bridge, not more per-case leaves

## Forbidden Production Patterns

- raw per-rank TranslationCert witnesses
- global rank/mask arrays
- packed blobs or byte-list decoders
- large Boolean checker reductions
