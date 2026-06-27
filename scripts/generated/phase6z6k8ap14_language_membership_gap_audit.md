# Phase 6Z.6K.8AP.14 Language Membership Gap Audit

Status: `membership-gap-confirmed`

## Inputs

- Source module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Source.lean`
- Row module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Row.lean`
- Chunk directory: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks`
- Parallel jobs: `4`

## Counts

- Source producers: `298`
- Row producers: `22`
- Chunk files: `5`
- Source-apply implication theorems: `315`
- Row-apply implication theorems: `315`
- Key-facts implication theorems: `315`
- Good-killed implication theorems: `315`
- Chunks exporting accepted language targets: `0`
- Chunks exporting nonempty language `complete` fields: `0`

## Interpretation

The split producer chunks contain source/row implication theorems, including `fam_*_goodKilled_of_sourcePredicate_rows`, but no chunk exports an accepted nonempty language-completeness theorem. This confirms that AP.13 projection is only preflight: the next emitter must prove language membership from arbitrary identity-linear `GoodDirectionAtRank` cases.

## Next Required Proof Surface

A production AP chunk must prove one of these theorem surfaces over a
meaningful rank range without `interval_cases r` plus `fin_cases mask` replay:

```lean
SourceIndexStateDescriptorGoodLanguageOnRange lo hi
SourcePositionRowProducerGoodLanguageOnRange lo hi
SourceRowProducerGoodLanguageOnRange lo hi
SourceRowPredicateGoodLanguageOnRange lo hi
SourceRowFactsGoodLanguageOnRange lo hi
```

The critical field is the membership theorem:

```lean
complete :
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank -> rank < hi ->
    totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) ->
    GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
    exists ..., Language ... rank mask
```

The current split chunks provide the implication side after source/row
membership has been supplied; they do not supply this `complete` field.

## Timing

- Wall seconds: `0.029`
