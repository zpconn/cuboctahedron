# Phase 6Z.6K.8AP.16DU.9DN: positive classifier erases to source-row bridge

DU.9DN adds direct erasure adapters from the positive-survivor classifier
interfaces to the preferred `SourceRowFactsGoodBridgeOnRange` public surface.

The new theorem surfaces are:

```lean
theorem SourcePositionRowProducerGoodCoverageOnRange.to_bridge
    {lo hi : Nat}
    (coverage : SourcePositionRowProducerGoodCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem PositiveSurvivorClassifierOnRange.to_bridge
    {lo hi : Nat}
    (classifier : PositiveSurvivorClassifierOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem PositiveSurvivorSignatureClassifierOnRange.to_bridge
    {lo hi : Nat}
    (classifier : PositiveSurvivorSignatureClassifierOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem PositiveSurvivorBoolClassifierOnRange.to_bridge
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolClassifierOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem PositiveSurvivorBoolSignatureClassifierOnRange.to_bridge
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolSignatureClassifierOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dn_positive_classifier_to_bridge_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
```

Result:

- Exit: `0`
- Elapsed: `11.52s`
- Peak tree RSS: `4076.57 MiB`
- Minimum available memory observed: `46075.45 MiB`

Decision: accepted.  The positive-survivor classifier route can now export the
same source-row facts bridge as descriptor coverage, without detouring through
rank-local compact membership roots.  This does not by itself prove the missing
GoodDirection-to-classifier membership theorem, but it gives the production
emitter a lightweight target once that semantic membership theorem is available.
