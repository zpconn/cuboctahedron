# Phase 6Z.6K.8AP.16DC Compact Walsh Cover Smoke

Status: checked by focused guarded Lean build.

- rank: `100805`
- positive masks: `[4, 6, 11, 22, 30, 31, 59, 63]`
- covered bad masks: `[0, 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 60, 61, 62]`
- selected subcubes: `20`
- Walsh terms: `134`
- selected word-impact indices: `[0, 1, 3, 4, 5, 7, 9]`
- generated Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke.lean`

This smoke validates the all-subcube rank-100805 cover using compact
denominator dot equalities.  It intentionally remains bounded smoke
evidence rather than final generated coverage.

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dc_compact_walsh_cover_build.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 600s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke'
```

Result:

```text
passed
elapsed: 17.54s
peak tree RSS: 4396 MiB
minimum available memory: 45741 MiB
```
