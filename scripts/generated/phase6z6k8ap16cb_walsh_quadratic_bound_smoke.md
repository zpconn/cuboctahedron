# Phase 6Z.6K.8AP.16CB WalshQuadratic Bound Smoke

Status: accepted.

- rank: `100805`
- selected subcube: `0`
- label: `*000**`
- impact: `1`
- term count: `6`
- bound sum: `-4/27`
- generated Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshQuadraticBoundSmoke.lean`

This smoke proves `generatedPoly.coeffEval mask <= 0` over the
selected subcube using `WalshQuadraticSubcubeUpperBound`.
It does not yet prove equality with `impactDenomAtRank`.

## Guarded Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16cb_quadratic_bound_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadraticBoundSmoke'
```

Result:

```text
passed
elapsed: 7.51s
peak tree RSS: 4062 MiB
minimum available memory: 46026 MiB
```
