# Phase 6Z.6K.8AP.16AQ Four-Shard Global Shared Manifest Smoke

This diagnostic smoke is not proof evidence.

- Status: `global-shared-manifest-smoke-emitted`
- Shards emitted: `4`
- Signatures represented: `6`
- Shared candidate groups: `17`
- Positive-mask facts: `60`
- Shared module: `PositiveSurvivorSharedTop5Global4CandidateFactsSmoke`
- Group module: `PositiveSurvivorSharedTop5Global4Group000Smoke`

## Source Size

| Module | Lines |
| --- | ---: |
| `PositiveSurvivorSharedTop5Global4CandidateFactsSmoke` | 11411 |
| `PositiveSurvivorSharedTop5Global4RoutingShard000Smoke` | 258 |
| `PositiveSurvivorSharedTop5Global4RoutingShard001Smoke` | 357 |
| `PositiveSurvivorSharedTop5Global4RoutingShard002Smoke` | 372 |
| `PositiveSurvivorSharedTop5Global4RoutingShard003Smoke` | 243 |
| `PositiveSurvivorSharedTop5Global4Group000Smoke` | 18 |
| Total | 12659 |

## Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 16000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16aq_top5_global4_group_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 300s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5Global4Group000Smoke'
```

Result:

```text
status: passed
elapsed: 69.68s
peak tree RSS: 8015 MiB
minimum available memory: 40748 MiB
```

## Decision

Accepted as a bounded scaling smoke.  Compared with AP.16AP, doubling the represented positive-mask facts from 30 to 60 roughly doubles source size but less than doubles wall time.  Peak RSS grows from about 6.17 GiB to about 8.02 GiB, so future larger global-shared candidate modules need tighter shard-size gates or deeper candidate-fact factoring before production use.
