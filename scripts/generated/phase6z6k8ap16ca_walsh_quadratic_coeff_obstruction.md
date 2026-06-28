# Phase 6Z.6K.8AP.16CA Walsh Quadratic Coefficient Obstruction

Status: accepted.

AP16CA pivots the Walsh denominator path away from `WalshPoly.eval`.

## What Changed

`WalshQuadratic.coeffEval` now lives in:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshQuadratic.lean
```

That module also adds:

```lean
WalshQuadratic.boundSum
WalshQuadraticSubcubeUpperBound
WalshQuadraticSubcubeUpperBound.coeffEval_le_bound
WalshQuadraticSubcubeUpperBound.coeffEval_nonpos
WalshQuadraticImpactObstruction
WalshQuadraticImpactObstruction.nonpos
WalshQuadraticImpactObstruction.toImpactSubcubeObstruction
```

This gives generated quadratic denominator leaves a production-facing target:

```lean
impactDenomAtRank ... = poly.coeffEval mask
```

instead of:

```lean
impactDenomAtRank ... = poly.toPoly.eval mask
```

## Rejected Probe

AP16CA also tried a concrete bridge for one AP16BY polynomial:

```lean
ap16byImpact1_Expected.coeffEval mask =
  ap16byImpact1_Expected.eval mask
```

Both the direct proof and an explicit `Finset.univ : Finset (Fin 22)`
enumeration timed out at `whnf` with the default heartbeat limit.  That
confirms the AP16BZ diagnosis: the expensive surface is `WalshPoly.eval`, not
only the generic theorem quantification.

## Guarded Builds

Quadratic core:

```text
passed
elapsed: 4.50s
peak tree RSS: 4079 MiB
minimum available memory: 46002 MiB
```

Symbolic core rerun:

```text
passed
elapsed: 1.00s
peak tree RSS: 792 MiB
minimum available memory: 46439 MiB
```

All-selected symbolic smoke:

```text
passed
elapsed: 14.02s
peak tree RSS: 4291 MiB
minimum available memory: 44806 MiB
```

## Parallelism Note

A concurrent build of overlapping Lean targets produced a transient `.olean`
write failure.  The same targets built when run serially or through the
aggregate target.  Do not run parallel Lake invocations that share dependency
outputs; keep Lean builds serial unless a single Lake process controls the job
graph.

## Next Step

Generate a small `WalshQuadraticImpactObstruction` smoke using:

- coefficient-level denominator equality;
- coefficient upper bounds;
- no `WalshPoly.eval` bridge.

