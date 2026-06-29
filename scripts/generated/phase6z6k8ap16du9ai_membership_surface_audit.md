# Phase 6Z.6K.8AP.16DU.9AI Membership Surface Audit

This audit is planning telemetry only, not proof evidence.

- Status: `accepted-surfaces-present`
- Missing expected surfaces: `0`
- Selected remaining obligation: `semantic_classifier_key_source_row_membership`

## Surface Check

| Surface | Present | File |
| --- | --- | --- |
| `classifier facts catalog to allGood` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `classifier predicate catalog to allGood` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `classifier facts catalog to descriptor` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `classifier predicate catalog to descriptor` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `classifier key facts to descriptor` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `classifier key predicates to descriptor` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `selector catalog to allGood` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9RRangeAdapter.lean` |
| `selector catalog to descriptor` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9RRangeAdapter.lean` |
| `row-property existential source/row` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/RowPropertyAllGoodBridge.lean` |
| `descriptor coverage to allGood` | `True` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguage.lean` |

## Remaining Theorem Shape

```lean
forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
  0 <= rank ->
    rank < 5000 ->
      totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
          (matId : Mat3 Rat) ->
        GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
          exists key : ClassifierKey,
            SourceIndexStateSourceFacts
              key.toSourceIndexStateKey rank mask /\
            SourceIndexStateRowFacts
              key.toSourceIndexStateKey rank mask
```

## Decision

Endpoint bridge work is complete enough for the bounded AP16DU classifier. The next useful work must prove the semantic membership theorem itself, preferably by a shared source-index/state family classifier, not by adding more endpoint wrappers.

## Rejected Next Moves

- Do not add more all-Good/descriptor wrapper theorems unless a generated emitter actually needs a different premise shape.
- Do not prove membership by fin_cases over all masks or by replaying bad-direction masks.
- Do not scale DU.9P compact-Walsh rank-local membership covers as production evidence.
- Do not build a giant rank/mask table of classifier keys in Lean.
- Do not run broad lake builds; use focused guarded checks only.
