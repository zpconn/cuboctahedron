# Phase 6Z.6K.8AP.16AU Source-Position Killed Bridge

This is hand-written Lean infrastructure, not generated proof evidence.

- Status: `accepted-source-position-bridge-adapter`
- Changed file:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguage.lean`

## Theorems Added

```lean
SourcePositionRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
SourcePositionRowProducerGoodCoverageOnRange.to_killedBridge_of_fullRange
```

These adapters let the source-position plus row-producer production surface
erase directly to:

```lean
Cuboctahedron.Generated.Translation.KilledBridge
```

## Focused Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16au_source_position_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage'
```

Result:

```text
status: passed
elapsed: 6.51s
peak tree RSS: 3,882 MiB
minimum available memory: 46,226 MiB
```

## Decision

Accepted.  A production generator can target
`SourcePositionRowProducerGoodCoverageOnRange 0 numPairWords` directly and
erase it to the public translation killed bridge, without emitting concrete
positive-mask candidate facts.
