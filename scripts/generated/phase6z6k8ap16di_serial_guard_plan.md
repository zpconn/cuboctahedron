# Phase 6Z.6K.8AP.16DI Serial Guard Plan

Status: plan-only; no Lean build was run by this step.

This adds `scripts/run_ap16df_serial_guarded.py`, an operational runner for
AP16DF-style compact-denominator experiments.  It is not proof evidence.  Its
purpose is to avoid a monolithic `lake build` of the two-signature root by
building each selected-impact dependency under a strict memory guard first.

Default safety settings:

```text
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
per-target timeout: 600s
Lean/Lake parallelism: LEAN_NUM_THREADS=1, LAKE_JOBS=1
```

Plan-only command:

```text
python3 scripts/run_ap16df_serial_guarded.py \
  --plan-only \
  --json scripts/generated/phase6z6k8ap16di_serial_guard_plan.json
```

Actual guarded run, only when we choose to retry AP16DF safely:

```text
python3 scripts/run_ap16df_serial_guarded.py \
  --generate \
  --json /tmp/ap16df_serial_guarded/summary.json
```

The generated target sequence is:

1. existing rank-100805 cover;
2. rank-101105 trace;
3. each rank-101105 selected-impact module, one at a time;
4. rank-101105 selected-impact root;
5. rank-101105 cover;
6. two-signature root.

If any target exceeds the guard or fails, the runner stops immediately and
writes the partial telemetry JSON.  This preserves the AP16DF diagnostic while
avoiding the OOM-prone broad root build shape.
