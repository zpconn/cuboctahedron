# Phase 6Z.6K.8AP.16DU.9K selector positive-survivor slice

Tiny proof-producing smoke for the DU.9K selector-coordinate bridge.

- Range: `[0, 1)`
- GoodDirection survivors: `16`
- Emitted positive survivors: `1`
- Not-GoodDirection masks: `48`
- Local families: `6`
- Global classifier keys touched: `1`
- Lean module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9KSlice.lean`

The module proves:

```lean
inductive SelectorPositiveMask : SignMask -> Prop

theorem selectorPositiveLookup
  {mask : SignMask} (hmask : SelectorPositiveMask mask) :
  ∃ key : ClassifierKey,
    keyOfSelectorCoordinate? (selectorCoordAt 0 mask) = some key

theorem selectorPositiveSourceRowFacts
  {mask : SignMask} (hmask : SelectorPositiveMask mask) :
  SelectorCoordinateSourceRowFacts (selectorCoordAt 0 mask) 0 mask
```

This is not production coverage. A full catalog attempt on the same
slice replayed 48 bad-direction masks and was killed by the memory
guard at 7.88 GiB RSS; an all-positive-survivor version was also
killed under the same guard. After exposing the classifier supports
publicly, the one-survivor public source/row-fact slice builds under
the guard. Scaling still needs bounded micro-shards or a stronger
membership theorem before this becomes production coverage.
