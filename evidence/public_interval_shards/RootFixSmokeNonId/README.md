# Public Interval Shard [1, 2)

This directory contains proof-carrying Lean leaves for one bounded
rank interval. The leaves are outside the default Lake package source
tree so `lake build` will not compile them in parallel.

Memory rule:

- Check heavy leaves serially.
- Do not run a broad parallel build over this directory.
- The current VM has 47 GB RAM; treat 45 GB as the safe ceiling.

Suggested serial check commands:

```bash
lake env lean evidence/public_interval_shards/RootFixSmokeNonId/NonIdentity/Rank000000001.lean
lake env lean evidence/public_interval_shards/RootFixSmokeNonId/Index.lean

# Or use the helper to compile external modules serially and then
# check the composable verified root:
python3 scripts/check_public_interval_shard.py evidence/public_interval_shards/RootFixSmokeNonId/manifest.json --compile-external --include-rank-roots --include-verified-root
```

Machine-readable manifest:

- `evidence/public_interval_shards/RootFixSmokeNonId/manifest.json`
