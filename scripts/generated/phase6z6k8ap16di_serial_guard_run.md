# Phase 6Z.6K.8AP.16DI Serial Guard Run

Status: passed.

This is operational build telemetry, not final generated proof coverage.

The AP16DI runner was used to regenerate the AP16DF two-signature compact
cover smoke and build its targets serially under:

```text
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
per-target timeout: 600s
Lean/Lake parallelism: LEAN_NUM_THREADS=1, LAKE_JOBS=1
```

The final cached end-to-end serial run passed all 12 targets:

```text
existing rank-100805 cover
rank-101105 trace
rank-101105 selected impacts: 1, 3, 5, 6, 7, 8, 11
rank-101105 selected-impact root
rank-101105 cover
two-signature root
```

The cached replay pass peaked at `794.04 MiB` process-tree RSS.

Two uncached/fixed focused checks are more representative of the actual leaf
cost:

```text
rank101105 cover:
  elapsed: 12.52s
  peak tree RSS: 4309.70 MiB

two-signature root after cached leaves:
  elapsed: 2.50s
  peak tree RSS: 4031.95 MiB
```

Conclusion: the AP16DF two-signature smoke is buildable when selected-impact
modules are built serially under a guard. This does not make the compact-cover
route production-ready, but it removes the earlier OOM failure and leaves a
safe retry harness for future bounded scaling tests.
