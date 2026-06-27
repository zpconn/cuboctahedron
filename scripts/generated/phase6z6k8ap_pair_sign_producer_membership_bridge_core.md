# Phase 6Z.6K.8AP.0 Pair-Sign Producer Membership Bridge Core

This report is not trusted as proof of global coverage. It records the
hand-written bridge core that turns a future generated membership root into
`Cuboctahedron.Generated.Translation.KilledBridge`.

- Status: `accepted-bridge-core`
- Lean module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Focused build command: `/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge`
- Wall time: `2.50s`
- Peak RSS: `3285448` KiB
- Exit status: `0`

## Exported Bridge Shapes

- `SourceRowFactsBridge`
- `SourceRowPredicateBridge`
- `SourceRowFactsBridge.to_killedBridge`
- `SourceRowPredicateBridge.to_factsBridge`
- `SourceRowPredicateBridge.to_killedBridge`

## Interpretation

The module proves that if generated membership evidence can classify every
`needsFarkas` residual translation case into one source/row producer key, then
the public semantic translation bridge follows without producing ordinary
`TranslationCert` values.

This does not prove the membership classification itself. The next step must
generate or prove a production membership root that supplies either:

- `SourceRowPredicateBridge`, by deriving a `SourceIndexStateSourcePredicate`
  and `key.template.Rows` for each residual case; or
- `SourceRowFactsBridge`, by deriving `SourceIndexStateSourceFacts` and
  `SourceIndexStateRowFacts` directly.

## Forbidden Fallbacks

- no raw per-rank `TranslationCert` witnesses;
- no global rank/mask member arrays;
- no packed blobs or byte-list decoders;
- no giant Boolean checker reductions.
