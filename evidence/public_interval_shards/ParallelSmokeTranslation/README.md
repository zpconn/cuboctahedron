# Public Interval Shard [0, 1)

This directory contains proof-carrying Lean leaves for one bounded
rank interval. The leaves are outside the default Lake package source
tree so `lake build` will not compile them in parallel.

Memory rule:

- Check heavy leaves serially.
- Or use the helper's RAM-bounded parallel scheduler.
- Do not run a broad parallel build over this directory.
- The current VM has 47 GB RAM; treat 45 GB as the safe ceiling.
- External `.olean` files are cached outside this source tree under
  `evidence/.external_olean_cache/`.

Suggested check commands:

```bash
lake env lean evidence/public_interval_shards/ParallelSmokeTranslation/Translation/Rank000000000/Mask00.lean
lake env lean evidence/public_interval_shards/ParallelSmokeTranslation/Translation/Rank000000000/Mask01.lean
lake env lean evidence/public_interval_shards/ParallelSmokeTranslation/Translation/Rank000000000/Mask02.lean
lake env lean evidence/public_interval_shards/ParallelSmokeTranslation/Index.lean

# Or use the helper to compile external modules serially and then
# check the composable verified root:
python3 scripts/check_public_interval_shard.py evidence/public_interval_shards/ParallelSmokeTranslation/manifest.json --compile-external --include-rank-roots --include-verified-root

# Faster, still memory-bounded on this VM:
python3 scripts/check_public_interval_shard.py evidence/public_interval_shards/ParallelSmokeTranslation/manifest.json --compile-external --include-rank-roots --include-verified-root --jobs auto --memory-budget-gib 45 --time
```

Machine-readable manifest:

- `evidence/public_interval_shards/ParallelSmokeTranslation/manifest.json`
