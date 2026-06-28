# Phase 6Z.6K.8AP.16AP Global Shared Manifest Smoke

This diagnostic smoke is not proof evidence.

- Status: `global-shared-manifest-smoke-emitted`
- Shards emitted: `2`
- Signatures represented: `3`
- Shared candidate groups: `13`
- Positive-mask facts: `30`
- Shared module: `PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke`
- Group module: `PositiveSurvivorSharedTop5GlobalGroup000Smoke`

## Source Size

| Module | Lines |
| --- | ---: |
| `PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke` | 5797 |
| `PositiveSurvivorSharedTop5GlobalRoutingShard000Smoke` | 258 |
| `PositiveSurvivorSharedTop5GlobalRoutingShard001Smoke` | 357 |
| `PositiveSurvivorSharedTop5GlobalGroup000Smoke` | 16 |
| Total | 6428 |

For the same two manifest shards, AP.16AN emitted 6548 total lines.  The global-shared layout saves only 120 lines at this tiny scale because the first two shards share limited candidate facts.

## Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 16000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16ap_top5_global_group_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 240s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalGroup000Smoke'
```

Result:

```text
status: passed
elapsed: 40.58s
peak tree RSS: 6169 MiB
minimum available memory: 43597 MiB
```

## Decision

Accepted as a bounded layout smoke, but not yet accepted as a scaling win.  At two shards, global sharing is slightly smaller in source but slightly slower and higher-RSS than AP.16AN.  The next useful test is a larger shard slice where high-reuse candidates can amortize the shared module cost, or a more aggressive candidate-fact factoring that avoids one proof block per positive mask.
