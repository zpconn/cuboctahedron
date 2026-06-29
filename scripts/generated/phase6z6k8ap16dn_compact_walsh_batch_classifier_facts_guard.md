# Phase 6Z.6K.8AP.16DN Compact Walsh Classifier Facts Guard

This guarded build checks the AP16DN bridge from compact-Walsh GoodDirection
membership to actual all-Good translation coverage for rank `6000480`.

Command:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4800 \
  --min-available-mib 20000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dn_compact_walsh_batch_classifier_facts_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 300s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsSmoke'
```

Result:

```text
status: passed
elapsed: 2.50s
peak process-tree RSS: 4098 MiB
minimum MemAvailable seen: 46095 MiB
RSS cap: 4800 MiB
```

The first attempt used the larger top-5 global shared candidate-facts import
and was intentionally killed by the memory guard at 4825 MiB under a 4800 MiB
cap.  The accepted path uses a rank-local candidate-facts shard instead.

