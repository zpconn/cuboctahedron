# Semantic Tail Branch Emitter Scale Estimate

- Decision: `local-tail-branch-layer-projected-safe-if-sharded`
- Full branch table: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingStrengthenedBranchTableSplit10MSmoke.lean`
- Generated smoke: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSemanticTailBranchEmitterSmoke.lean`
- Smoke guard: `scripts/generated/semantic_tail_branch_emitter_smoke_guard.json`

## Observed Smoke

- Constructors used: `10`
- Theorems: `10`
- Elapsed seconds: `8.00`
- Peak tree RSS MiB: `3960`
- Source KiB: `13.9`

## Projection

- Full graph branch constructors: `1054`
- Observed seconds per constructor: `0.800`
- Projected serial minutes: `14.1`
- Projected source MiB: `1.4`

| constructors/shard | shards | est. seconds/shard | est. serial minutes |
|---:|---:|---:|---:|
| 10 | 106 | 8.0 | 14.1 |
| 20 | 53 | 16.0 | 14.1 |
| 30 | 36 | 24.0 | 14.1 |
| 40 | 27 | 32.0 | 14.1 |
| 50 | 22 | 40.0 | 14.1 |

## Caveat

This estimates only the local tail-facing branch-table layer.  It does not prove closed-language suffix coverage or terminal margin finish facts.
