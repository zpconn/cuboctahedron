# Phase 6Z.6K.8AP.16BU Walsh Quadratic Core

Status: accepted.

AP16BU adds:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshQuadratic.lean
```

The module defines `WalshQuadratic`, a fixed coefficient-level surface for the
degree-at-most-two Walsh denominator polynomials seen in AP16BS.  This is not
final generated coverage.  It is a small trusted API target for the next
symbolic/scaled denominator evaluator.

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bu_walsh_quadratic_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic'
```

Result:

```text
exit code: 0
elapsed: 2.50s
peak tree RSS: 4022 MiB
minimum available memory: 46057 MiB
```

Decision: coefficient-level Walsh checking is memory-safe.  Generated six-bit
unfolding of the full translation geometry is not.  The next AP16 equality
bridge should target `WalshQuadratic` coefficients with a symbolic or
integer/scaled denominator evaluator.
