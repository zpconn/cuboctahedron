# AP.16Y Candidate Shard Plan

This report is diagnostic only. It estimates shard sizes for the AP.16
shared candidate-facts layer using AP.16W/AP.16X smoke measurements.
It is not proof evidence.

## Calibration

- lines_per_fact: 191.415
- seconds_per_fact: 1.053
- base_rss_kib: 3320000
- rss_per_fact_kib: 71905.268
- max_jobs: 4

## Plans

### budget 20 facts/shard

- shards: 356
- largest shard facts: 20
- estimated source lines: 1361341
- estimated serial wall seconds: 7486.7
- estimated serial wall hours: 2.080
- estimated peak RSS per shard KiB: 4758106
- safe parallel jobs at 45 GiB: 4
- estimated wall hours at safe parallelism: 0.520

### budget 40 facts/shard

- shards: 178
- largest shard facts: 40
- estimated source lines: 1361341
- estimated serial wall seconds: 7486.7
- estimated serial wall hours: 2.080
- estimated peak RSS per shard KiB: 6196211
- safe parallel jobs at 45 GiB: 4
- estimated wall hours at safe parallelism: 0.520

### budget 60 facts/shard

- shards: 119
- largest shard facts: 60
- estimated source lines: 1361341
- estimated serial wall seconds: 7486.7
- estimated serial wall hours: 2.080
- estimated peak RSS per shard KiB: 7634317
- safe parallel jobs at 45 GiB: 4
- estimated wall hours at safe parallelism: 0.520

### budget 80 facts/shard

- shards: 89
- largest shard facts: 80
- estimated source lines: 1361341
- estimated serial wall seconds: 7486.7
- estimated serial wall hours: 2.080
- estimated peak RSS per shard KiB: 9072422
- safe parallel jobs at 45 GiB: 4
- estimated wall hours at safe parallelism: 0.520

## Decision

Use budget 20 as the next bounded emission target unless a focused Lean shard exceeds the RSS/wall projection.  The AP.16X calibration suggests the candidate-facts layer is buildable if shards are capped by positive-mask fact count and compiled with memory-safe parallelism; routing chunks should stay separate and thin.
