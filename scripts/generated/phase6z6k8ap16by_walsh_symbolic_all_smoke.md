# Phase 6Z.6K.8AP.16BY Walsh Symbolic All-Selected Smoke

This report describes generated Lean smoke data; it is not final proof evidence.

- rank: `100805`
- selected impacts: `[1, 2, 4, 5, 6, 8, 10]`
- generated Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicAllSmoke.lean`

| impact | normal max degree | vector max degree | expected terms |
| ---: | ---: | ---: | ---: |
| 1 | 0 | 1 | 6 |
| 2 | 1 | 1 | 6 |
| 4 | 1 | 1 | 7 |
| 5 | 1 | 1 | 7 |
| 6 | 1 | 1 | 7 |
| 8 | 1 | 1 | 7 |
| 10 | 1 | 1 | 7 |

The generated module checks coefficient equality through symbolic
`WalshAffineVec3.dot`; it does not unfold `impactDenomAtRank`.

## Guarded Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16by_walsh_symbolic_all_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicAllSmoke'
```

Result:

```text
passed
elapsed: 8.01s
peak tree RSS: 4079 MiB
minimum available memory: 46068 MiB
```

Decision: accepted as an all-selected-impact coefficient smoke.  It validates
that the AP16BW symbolic-dot route scales from one AP16BS impact to all seven
selected impacts without the AP16BT replay memory shape.
