# Phase 6Z.6K.8AP.15 Descriptor Language Bridge

Status: `accepted-descriptor-language-bridge`

This is bridge infrastructure only. It does not prove nonempty generated
coverage.

## Artifacts

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguage.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguageSmoke.lean`

## What It Adds

`SourceIndexStateDescriptorGoodLanguageOnRange lo hi` is now an accepted AP
generator target. Its `Language` predicate ranges over
`SourceIndexStateFamilyDescriptor`, and its `applies` field proves the broad
semantic descriptor predicate:

```lean
desc.Applies rank mask
```

The bridge erases this descriptor language to
`SourceRowPredicateGoodLanguageOnRange lo hi`, then to
`SourceRowPredicateGoodBridgeOnRange lo hi`, and finally to
`AllTranslationGoodCoverageOnRange lo hi`.

The module also exposes a simpler direct AP.16 target:

```lean
SourceIndexStateDescriptorGoodCoverageOnRange lo hi
```

This direct target says every arbitrary identity-linear `GoodDirectionAtRank`
case in the range has some descriptor satisfying `desc.Applies rank mask`.
It can be erased to the same public bridge through:

```lean
SourceIndexStateDescriptorGoodCoverageOnRange.to_bridge
SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
```

Future generated membership chunks should prefer this direct coverage target
when they do not need a separate private `Language` predicate.

The module also provides descriptor-language root combinators:

```lean
SourceIndexStateDescriptorGoodLanguageOnRange.empty
SourceIndexStateDescriptorGoodLanguageOnRange.concat
```

These let future generated descriptor chunks compose structurally before
erasing to all-Good coverage, without global arrays or Boolean reductions.

The remaining proof-producing obligation is the `complete` field:

```lean
complete :
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank -> rank < hi ->
    totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) ->
    GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
    exists desc : SourceIndexStateFamilyDescriptor,
      Language desc rank mask
```

## Validation

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguageSmoke
```

- Status: passed
- Wall time: 5.93s
- Peak RSS: 3,321,928 KiB

## Decision

Accept this as the narrower AP.15 bridge target. Future generated membership
modules may now prove one descriptor-level membership theorem, or the direct
descriptor-coverage theorem, instead of separately producing source-position
and row-producer evidence. This is still not coverage proof until a nonempty
range proves descriptor coverage without rank/mask replay.
