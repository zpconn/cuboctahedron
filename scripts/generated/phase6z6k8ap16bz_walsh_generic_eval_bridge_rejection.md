# Phase 6Z.6K.8AP.16BZ Generic Walsh Eval Bridge Rejection

Status: rejected.

## Target

AP16BZ tried to prove a generic theorem:

```lean
theorem WalshQuadratic.coeffEval_eq_eval
    (q : WalshQuadratic) (mask : SignMask) :
    q.coeffEval mask = q.eval mask
```

This would have connected the algebra-friendly coefficient evaluator to the
existing `WalshQuadratic.toPoly.eval` surface used by
`WalshImpactObstruction`.

## Result

The first attempt hit the default `maxHeartbeats = 200000`. After a scoped bump
to `800000`, the build still timed out:

```text
deterministic timeout at whnf, maximum number of heartbeats (800000) has been reached
```

Guarded build telemetry for the failed attempt:

```text
exit code: 1
elapsed: 30.03s
peak tree RSS: 4387 MiB
minimum available memory: 45664 MiB
```

The theorem was removed. The accepted symbolic support module was rebuilt:

```text
passed
elapsed: 11.51s
peak tree RSS: 4375 MiB
minimum available memory: 45677 MiB
```

## Decision

Do not use a generic `WalshQuadratic.coeffEval_eq_eval` theorem as the
production bridge. It is heartbeat-expensive despite safe memory usage.

The next route should be one of:

- concrete per-polynomial bridges generated only for the needed
  `WalshQuadratic` records;
- a new obstruction surface whose polynomial evaluator is definitionally the
  coefficient evaluator;
- a smaller structural proof that avoids `WalshPoly.eval`/`Finset.univ`
  normalization over 22 terms.
