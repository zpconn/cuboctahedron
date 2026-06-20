# Public Interval Shard [0, 2)

This directory contains proof-carrying Lean leaves for one bounded
rank interval. The leaves are outside the default Lake package source
tree so `lake build` will not compile them in parallel.

Memory rule:

- Check heavy leaves serially.
- Do not run a broad parallel build over this directory.
- The current VM has 47 GB RAM; treat 45 GB as the safe ceiling.

Suggested serial check commands:

```bash
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask00.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask01.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask02.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask03.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask04.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask05.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask06.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask07.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask08.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask09.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask10.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask11.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask12.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask13.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask14.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask15.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask16.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask17.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask18.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask19.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask20.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask21.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask22.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask23.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask24.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask25.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask26.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask27.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask28.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask29.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask30.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask31.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask32.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask33.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask34.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask35.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask36.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask37.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask38.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask39.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask40.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask41.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask42.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask43.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask44.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask45.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask46.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask47.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask48.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask49.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask50.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask51.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask52.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask53.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask54.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask55.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask56.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask57.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask58.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask59.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask60.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask61.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask62.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Translation/Rank000000000/Mask63.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/NonIdentity/Rank000000001.lean
lake env lean evidence/public_interval_shards/Shard000000000_000000002/Index.lean
```

Machine-readable manifest:

- `evidence/public_interval_shards/Shard000000000_000000002/manifest.json`
