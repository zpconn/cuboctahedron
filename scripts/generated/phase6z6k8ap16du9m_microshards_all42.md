# Phase 6Z.6K.8AP.16DU.9M DU.9L Selector Micro-Shards

This is bounded telemetry, not final coverage.  The generated shards
prove selector lookup and public source/row facts for emitted
GoodDirection survivor cases only.

- Range: `[0, 4)`
- GoodDirection survivors in range: `42`
- Emitted survivors: `42`
- Max survivors per shard: `16`
- Shard count: `3`
- Local families in collected window: `12`
- Global classifier keys touched: `12`

## Shards

| Shard | Cases | Module |
| --- | ---: | --- |
| `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000` | 16 | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9LMicro/Shard000.lean` |
| `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001` | 16 | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9LMicro/Shard001.lean` |
| `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002` | 10 | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9LMicro/Shard002.lean` |

## Guarded Leaf Builds

Each leaf was built serially with `LEAN_NUM_THREADS=1`, `LAKE_JOBS=1`, and a
6.5 GiB process-tree RSS cap.

| Shard | Result | Elapsed | Peak tree RSS |
| --- | --- | ---: | ---: |
| `Shard000` | passed | 19.02s | 5.262 GiB |
| `Shard001` | passed | 18.03s | 5.326 GiB |
| `Shard002` | passed | 13.01s | 4.952 GiB |

Decision: persistent GoodDirection-only public-support micro-shards are viable
on this bounded `[0,4)` window.  The next step is not a broad root import yet;
it is either a membership theorem that turns identity-linear `GoodDirectionAtRank`
into `SelectorPositiveCase`, or another bounded window with the same serial
leaf-guard workflow.
