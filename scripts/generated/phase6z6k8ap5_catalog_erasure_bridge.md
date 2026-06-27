# Phase 6Z.6K.8AP.5 Catalog-Erasure Bridge

Status: `accepted-bridge-surface`.

This phase adds a small hand-written AP adapter for generated membership
chunks.  A generated module may now keep a finite key catalog private, prove a
catalog membership theorem, and immediately erase the private catalog into one
of the public AP range bridge targets.

Added Lean declarations:

- `SourceRowFactsGoodCatalogOnRange`
- `SourceRowPredicateGoodCatalogOnRange`
- `SourceRowFactsGoodCatalogOnRange.to_bridge`
- `SourceRowPredicateGoodCatalogOnRange.to_bridge`
- `SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage`
- `SourceRowPredicateGoodCatalogOnRange.to_allGoodCoverage`

Focused validation:

```bash
/usr/bin/time -v lake build \
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
```

Result:

- Exit status: `0`
- Wall time: `2.32s`
- Peak RSS: `3,301,828 KiB`

This does not prove global AP membership coverage.  It only makes the next
generated route cleaner: catalog data can stay private and the exported theorem
surface can remain semantic, e.g. `SourceRowPredicateGoodBridgeOnRange lo hi`
or `AllTranslationGoodCoverageOnRange lo hi`.

The next step is a tiny catalog-membership smoke that proves
`SourceRowPredicateGoodCatalogOnRange` for a deliberately small
non-enumerative family and exports only the erased AP range theorem.
