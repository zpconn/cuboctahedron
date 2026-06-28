# Phase 6Z.6K.8AP.16AN Top-5 Manifest Group Smoke

This diagnostic Lean smoke is not global proof coverage.

## Input

- Materialized profile: `scripts/generated/phase6z6k8ap16am_top5_materialized_profile.json`
- Windows: `5`
- Sampled ranks: `5000`
- GoodDirection cases: `4342`
- Candidate groups: `191`
- Survivor signatures: `494`

## Emitted Lean

The manifest-driven wrapper emitted the first two AP.16AM top-5 shards with a
distinct module prefix:

- Candidate fact shards: `2`
- Routing shards: `2`
- Survivor signatures represented: `3`
- Positive-mask facts represented: `30`
- Total source lines: `6548`

Line counts:

| Module | Lines |
| --- | ---: |
| `PositiveSurvivorSharedTop5ManifestCandidateFactsShard000Smoke` | 2588 |
| `PositiveSurvivorSharedTop5ManifestCandidateFactsShard001Smoke` | 3328 |
| `PositiveSurvivorSharedTop5ManifestRoutingShard000Smoke` | 258 |
| `PositiveSurvivorSharedTop5ManifestRoutingShard001Smoke` | 357 |
| `PositiveSurvivorSharedTop5ManifestGroup000Smoke` | 17 |

## Build Results

The first Lake attempt used the older `ulimit -v` recipe and failed:

```text
exit code:       1
elapsed:         99.12s
peak tree RSS:   3979 MiB
minimum memory:  46243 MiB available
failure:         Lean failed to create thread under ulimit -v 20971520
```

This was not an OOM; the virtual-memory cap was too blunt for this generated
target.

The corrected focused build removed `ulimit -v` and kept the RSS guard:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 16000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16an_top5_manifest_group_lake_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 240s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5ManifestGroup000Smoke'
```

Result:

```text
exit code:       0
elapsed:         38.57s
peak tree RSS:   5462 MiB
minimum memory:  44496 MiB available
```

## Decision

Accepted as a bounded top-5 manifest/group smoke.  The AP.16AL catalog can feed
the shared-candidate manifest emitter, and the generated shards build safely
when protected by the RSS guard.  Future generated Lean checks should prefer the
RSS guard over a low virtual-memory `ulimit`; `ulimit -v` can cause false
thread-creation failures before RSS approaches the machine limit.
