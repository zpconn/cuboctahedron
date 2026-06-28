# Phase 6Z.6K.8AP.16AS Pair-Sign Bridge Inspection

This report is not proof evidence.  It records the exact Lean surfaces that
the AP16AO pair-sign producer hierarchy must connect to.

- Status: `accepted-bridge-inspection`
- Public bridge target:
  `Cuboctahedron.Generated.Translation.KilledBridge`
- Local erasure point:
  `SourceIndexStateKey.goodKilled_of_source_row`
- Safety: no broad Lean build was run.

## Public Translation Bridge

File:

```text
Cuboctahedron/Generated/Translation/Complete.lean
```

Target:

```lean
abbrev KilledBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    translationEarlyFamilyClassOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        Coverage.TranslationCaseKilled r mask
```

The public assembly theorem `complete_killed_of_bridge` already consumes this
surface.

## Local Erasure Point

File:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexState.lean
```

The local route from producer facts to semantic killed coverage is:

```lean
SourceIndexStateKeyFacts.of_source_row
SourceIndexStateKey.covered_of_source_row
SourceIndexStateKey.goodKilled_of_source_row
```

The main theorem shape is:

```lean
theorem SourceIndexStateKey.goodKilled_of_source_row
    {key : SourceIndexStateKey} {r : Nat} {hlt : r < numPairWords}
    {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hrows : SourceIndexStateRowFacts key r mask) :
    Coverage.TranslationGoodCaseKilled ⟨r, hlt⟩ mask
```

## Producer Surfaces

The generated hierarchy should keep producers private and export semantic
coverage:

```lean
structure SourceIndexStateSourceProducer where
  Applies : SourceIndexStateKey -> Nat -> SignMask -> Prop
  sourceFacts :
    Applies key r mask -> SourceIndexStateSourceFacts key r mask

structure SourceIndexStateRowProducer where
  Applies : SourceIndexStateKey -> Nat -> SignMask -> Prop
  rowFacts :
    Applies key r mask -> SourceIndexStateRowFacts key r mask
```

The current bounded split producer smoke root:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/All.lean
```

only imports chunks and proves a `True` build marker.  It does not yet export
the production membership bridge.

## Next Step

Create a small nonempty membership root that uses private source and row
producers to prove `Translation.KilledBridge` on the sampled range, then
generalize that layout to the AP16AO production hierarchy.  The bridge should
not replay concrete positive-mask proofs or import the AP16 candidate-fact
modules.
