# Phase 6Z.6K.8AP.1 Pair-Sign Good Membership Bridge

This report is not trusted as proof of global coverage. It records the
hand-written bridge adapters that let generated pair-sign membership chunks
target the GoodDirection-survivor predicate before producing the full
`Cuboctahedron.Generated.Translation.KilledBridge`.

- Status: `accepted-good-survivor-bridge`
- Lean module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Focused build command: `/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Wall time: `2.74s`
- Peak RSS: `853684` KiB
- Exit status: `0`

## Exported Bridge Shapes

- `ResidualTranslationGoodRankKilled`
- `ResidualTranslationGoodCoverageOnRange`
- `SourceRowFactsBridgeOnRange.to_residualGoodCoverage`
- `ResidualTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange`
- `SourceRowPredicateBridgeOnRange.to_residualGoodCoverage`
- `SourceRowPredicateBridgeOnRange.to_killedBridge_of_fullGoodRange`

## Interpretation

Generated membership chunks can now prove
`ResidualTranslationGoodCoverageOnRange lo hi`, which is the cheaper semantic
target:

```lean
CoversInterval ResidualTranslationGoodRankKilled lo hi
```

This keeps the source/row producer membership proof focused on GoodDirection
survivors. The hand-written adapter then applies
`TranslationGoodCaseKilled.killed`, so the final full-range root still feeds
`Cuboctahedron.Generated.Translation.complete_killed_of_bridge` without
ordinary `TranslationCert` values.

This does not prove the membership classification itself. Full Phase 6Z.6K.8AP
still requires generated range chunks that prove one of:

- `SourceRowPredicateBridgeOnRange lo hi`;
- `SourceRowFactsBridgeOnRange lo hi`; or
- directly `ResidualTranslationGoodCoverageOnRange lo hi`.

The preferred production path is direct GoodDirection-survivor coverage first,
then full-range bridge assembly.
