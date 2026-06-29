# Phase 6Z.6K.8AP.16DQ five-rank sparse root guard

Status: accepted as bounded sparse smoke evidence.

AP16DQ composes the five AP16DO singleton all-Good coverage theorems into a
sparse rank-list theorem:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/
  CompactWalshBatchClassifierFactsFiveRankSmoke.lean
```

The exported theorem is:

```lean
theorem fiveRankAllGoodCoverage :
    CoversRanks AllTranslationGoodRankKilled
      [6000745, 6000625, 6000480, 6000720, 6000662]
```

This is intentionally not an interval theorem: these ranks are not contiguous.

## Guarded build

Command:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6500 \
  --min-available-mib 20000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dq_five_rank_sparse_root_guard.json \
  --verbose \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 300s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsFiveRankSmoke'
```

Result:

```text
passed
elapsed: 3.00s
peak process-tree RSS: 4103 MiB
minimum MemAvailable seen: 46124 MiB
```

Raw guard JSON:

```text
scripts/generated/phase6z6k8ap16dq_five_rank_sparse_root_guard.json
```

Decision: accepted.  The sparse root can import the five singleton AP16DO
modules safely in the current cached/focused build path.  It remains smoke
evidence only; production coverage still needs a range/state membership layer,
not a sparse list of individual ranks.
