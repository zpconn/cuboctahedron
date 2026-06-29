# Phase 6Z.6K.8AP.16DU.9DI Source-Row Facts Bridge Window Smoke

This checkpoint adds a tiny hand-written Lean adapter smoke for the accepted
DU.9DH bridge surface.  It emits no generated certificate data and is not an
exhaustive proof.

- Lean module:
  `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke`
- Main theorem:
  `windowDescriptorCoverage_of_sourceRowFactsBridge`
- All-Good theorem:
  `windowAllGoodCoverage_of_sourceRowFactsBridge`
- Range: `[0, 3)`

The smoke proves that if generated evidence supplies:

```lean
SourceRowFactsGoodBridgeOnRange 0 3
```

then Lean immediately obtains:

```lean
SourceIndexStateDescriptorGoodCoverageOnRange 0 3
AllTranslationGoodCoverageOnRange 0 3
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9di_source_row_facts_bridge_window_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke
```

Result:

- Exit: `0`
- Elapsed: `8.01s`
- Peak tree RSS: `3868.77 MiB`
- Minimum available memory observed: `46087.96 MiB`

Decision: accepted as the clean adapter target.  The next proof-producing
emitter should produce `SourceRowFactsGoodBridgeOnRange lo hi` directly, rather
than emitting `WindowSurvivor` constructors or bad-direction mask proofs.
