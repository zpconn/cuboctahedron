# Phase 6Z.6K.8AP.16DU.9DQ: descriptor Boolean window smoke

DU.9DQ adds a tiny smoke module:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorBoolWindowSmoke
```

The smoke reuses the accepted `[0,3)` semantic survivor window and checks that
the DU.9DO/DU.9DP Boolean descriptor surface composes to the same source-row
facts and all-Good coverage targets:

```lean
theorem windowDescriptorBoolCoverage_of_survivor :
    ... ->
    SourceIndexStateDescriptorBoolCoverageOnRange 0 3

theorem windowSourceRowFactsBridge_of_survivor_via_bool :
    ... ->
    SourceRowFactsGoodBridgeOnRange 0 3

theorem windowAllGoodCoverage_of_survivor_via_bool :
    ... ->
    AllTranslationGoodCoverageOnRange 0 3
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dq_descriptor_bool_window_smoke_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorBoolWindowSmoke
```

Result:

- Exit: `0`
- Elapsed: `29.56s`
- Peak tree RSS: `5931.61 MiB`
- Minimum available memory observed: `43862.61 MiB`

Decision: accepted.  The Boolean descriptor surface can be used on the
accepted survivor-window proof path without importing the rejected compact
selector/rank-local membership stack.  The production rule remains: Boolean
membership proofs must be decomposed into safe family facts, not giant
rank/mask Boolean reductions.
