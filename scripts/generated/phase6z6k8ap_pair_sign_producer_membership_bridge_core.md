# Phase 6Z.6K.8AP.0 Pair-Sign Producer Membership Bridge Core

This report is not trusted as proof of global coverage. It records the
hand-written bridge core that turns a future generated membership root into
`Cuboctahedron.Generated.Translation.KilledBridge`.

- Status: `accepted-bridge-core`
- Lean module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Focused build command: `/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Wall time: `1.24s`
- Peak RSS: `838220` KiB
- Exit status: `0`

## Exported Bridge Shapes

- `SourceRowFactsBridge`
- `SourceRowFactsBridgeOnRange`
- `SourceRowPredicateBridge`
- `SourceRowPredicateBridgeOnRange`
- `ResidualTranslationRankKilled`
- `ResidualTranslationCoverageOnRange`
- `SourceRowFactsBridge.to_killedBridge`
- `SourceRowFactsBridge.of_rangeAll`
- `SourceRowFactsBridgeOnRange.to_residualCoverage`
- `SourceRowPredicateBridge.to_factsBridge`
- `SourceRowPredicateBridgeOnRange.to_factsBridgeOnRange`
- `SourceRowPredicateBridge.of_rangeAll`
- `SourceRowPredicateBridgeOnRange.to_residualCoverage`
- `SourceRowPredicateBridge.to_killedBridge`
- `SourceRowPredicateBridgeOnRange.to_killedBridge_of_fullRange`

## Interpretation

The module proves that if generated membership evidence can classify every
`needsFarkas` residual translation case into one source/row producer key, then
the public semantic translation bridge follows without producing ordinary
`TranslationCert` values.

This does not prove the membership classification itself. The next step must
generate or prove production membership chunks that supply either:

- `SourceRowPredicateBridgeOnRange lo hi`, by deriving a
  `SourceIndexStateSourcePredicate` and `key.template.Rows` for each residual
  case in the chunk; or
- `SourceRowFactsBridgeOnRange lo hi`, by deriving
  `SourceIndexStateSourceFacts` and `SourceIndexStateRowFacts` directly.

Chunk and group modules can expose `ResidualTranslationCoverageOnRange lo hi`
with `SourceRowPredicateBridgeOnRange.to_residualCoverage` or
`SourceRowFactsBridgeOnRange.to_residualCoverage`. A full-range root can use
`SourceRowPredicateBridgeOnRange.to_killedBridge_of_fullRange` or
`SourceRowFactsBridge.of_rangeAll` followed by
`SourceRowFactsBridge.to_killedBridge` to feed
`Cuboctahedron.Generated.Translation.complete_killed_of_bridge`.

## Forbidden Fallbacks

- no raw per-rank `TranslationCert` witnesses;
- no global rank/mask member arrays;
- no packed blobs or byte-list decoders;
- no giant Boolean checker reductions.
