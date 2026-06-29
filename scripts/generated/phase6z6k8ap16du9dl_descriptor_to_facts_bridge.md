# Phase 6Z.6K.8AP.16DU.9DL Descriptor-to-Facts Bridge

This checkpoint adds a small hand-written adapter, not generated proof data.

New theorem surfaces:

```lean
theorem SourceIndexStateDescriptorGoodLanguageOnRange.to_factsBridge
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_factsBridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi
```

The DU.9DJ smoke now uses this adapter instead of manually rebuilding
`SourceIndexStateSourceFacts` and `SourceIndexStateRowFacts` from descriptor
coverage.

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dl_descriptor_to_facts_bridge_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeFromSurvivorWindowSmoke
```

Result:

- Exit: `0`
- Elapsed: `39.63s`
- Peak tree RSS: `7126.21 MiB`
- Minimum available memory observed: `43076.22 MiB`

Decision:

Accepted as a bridge cleanup. Future generated modules may prove
`SourceIndexStateDescriptorGoodCoverageOnRange lo hi` and then erase directly
to the preferred `SourceRowFactsGoodBridgeOnRange lo hi` surface. This does not
solve the remaining membership theorem:

```lean
GoodDirectionAtRank r mask -> descriptor/source-row membership
```

but it removes adapter duplication from the next proof-producing route.
