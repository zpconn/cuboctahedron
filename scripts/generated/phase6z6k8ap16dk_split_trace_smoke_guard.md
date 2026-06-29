# Phase 6Z.6K.8AP.16DK Split Trace Guard

Status: accepted as a memory-safe trace-layout repair.

The AP16DK split trace root for rank `6000745` built under the original
5 GiB process-tree RSS production gate.

Command:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 5000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dk_split_trace_rank6000745_cap5000.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 900s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745SplitSmoke'
```

Result:

```text
exit code:              0
elapsed:                73.60s
peak process-tree RSS:  4249 MiB
minimum MemAvailable:   45780 MiB
guard kill:             no
```

Decision:

The monolithic rank-`6000745` Walsh-vector trace was buildable only below a
6.5 GiB cap and exceeded the current 5 GiB AP16DJ production gate.  Splitting
the trace into a data module, thirteen local step modules, one final-vector
module, and a tiny root keeps the same theorem surface while reducing peak RSS
below 5 GiB.  Future AP16DJ-style compact denominator batch emission should use
this split trace layout instead of the monolithic AP16CM trace module.
