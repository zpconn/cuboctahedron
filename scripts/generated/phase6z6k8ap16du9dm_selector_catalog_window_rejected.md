# Phase 6Z.6K.8AP.16DU.9DM Selector-Catalog Window Rejection

This checkpoint attempted a bounded `[0,3)` selector-catalog smoke using the
older compact GoodDirection membership route:

- rank `0` via the DU.9P rank-0 compact membership theorem and selector shard 0;
- rank `2` via the DU.9P rank-2 compact membership theorem and selector shard 1;
- rank `1` by contradiction from the nonidentity linear part.

The experimental Lean file was not kept because the guarded build exceeded the
memory cap.

Focused guarded build attempted:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dm_selector_catalog_window_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9SWindow000000000_000000003Smoke
```

Result:

- Exit: `-15`
- Elapsed: `15.53s`
- Peak tree RSS: `11267 MiB`
- Minimum available memory observed: `45565 MiB`
- Guard action: terminated after process-tree RSS exceeded the `8192 MiB` cap.

Decision:

Rejected as a next route. Even the tiny `[0,3)` compact-membership
selector-catalog build can exceed the memory cap because it imports the heavy
compact Walsh membership stack. Do not scale this path as a production
membership bridge.

The next route should avoid importing rank-local compact membership modules
into source-row/descriptor coverage roots. The target remains a lighter
semantic theorem deriving descriptor or source-row membership from
identity-linear `GoodDirectionAtRank`, with shared source/row facts but without
rank-local compact denominator roots.
