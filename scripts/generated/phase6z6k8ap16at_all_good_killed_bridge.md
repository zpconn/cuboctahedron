# Phase 6Z.6K.8AP.16AT All-Good Killed Bridge

This is hand-written Lean infrastructure, not generated proof evidence.

- Status: `accepted-core-bridge-adapter`
- Changed file:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerMembershipBridge.lean`

## Theorems Added

```lean
AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
SourceRowFactsGoodBridgeOnRange.to_killedBridge_of_fullRange
SourceRowPredicateGoodBridgeOnRange.to_killedBridge_of_fullRange
SourceRowFactsGoodLanguageOnRange.to_killedBridge_of_fullRange
SourceRowPredicateGoodLanguageOnRange.to_killedBridge_of_fullRange
SourceRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
```

These adapters let the preferred generated membership surfaces erase directly
to:

```lean
Cuboctahedron.Generated.Translation.KilledBridge
```

## Focused Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16at_bridge_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge'
```

Result:

```text
status: passed
elapsed: 10.01s
peak tree RSS: 3,969 MiB
minimum available memory: 46,152 MiB
```

## Decision

Accepted as a memory-safe core bridge adapter.  Production generated membership
can now target a full-range `SourceRowProducerGoodLanguageOnRange`,
`SourceRowPredicateGoodLanguageOnRange`, or `AllTranslationGoodCoverageOnRange`
and erase directly to the public translation killed bridge.
