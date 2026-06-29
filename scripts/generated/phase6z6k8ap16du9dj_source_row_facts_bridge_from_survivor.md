# Phase 6Z.6K.8AP.16DU.9DJ Source-Row Facts Bridge From Survivor Smoke

This checkpoint composes the DU.9DG survivor-language descriptor smoke with
the DU.9DI source-row facts bridge target.  It emits no new concrete survivor
case proofs.

- Lean module:
  `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeFromSurvivorWindowSmoke`
- Main bridge theorem:
  `windowSourceRowFactsBridge_of_survivor`
- All-Good theorem:
  `windowAllGoodCoverage_of_survivor_via_sourceRowFacts`
- Range: `[0, 3)`

The smoke proves that the existing survivor-language premise:

```lean
GoodDirectionAtRank r mask -> WindowSurvivor r mask
```

is enough to produce the accepted DU.9DH/DU.9DI bridge surface:

```lean
SourceRowFactsGoodBridgeOnRange 0 3
```

and therefore:

```lean
AllTranslationGoodCoverageOnRange 0 3
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dj_source_row_facts_bridge_from_survivor_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeFromSurvivorWindowSmoke
```

Result:

- Exit: `0`
- Elapsed: `5.51s`
- Peak tree RSS: `4009.64 MiB`
- Minimum available memory observed: `46095.90 MiB`

Decision: accepted as a composition smoke.  The remaining blocker is still the
first premise, namely a compact proof of `GoodDirectionAtRank -> WindowSurvivor`
or, preferably, a direct proof of `SourceRowFactsGoodBridgeOnRange` without
going through `WindowSurvivor`.
