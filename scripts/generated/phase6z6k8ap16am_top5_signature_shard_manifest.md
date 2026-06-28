# AP.16Z Signature Shard Manifest

This report is diagnostic only. It schedules whole positive-survivor
signature shards for the current AP.16 shared-candidate emitter.
It is not proof evidence.

## Counts

- positive_survivor_signatures: 494
- representative_good_mask_facts: 3612
- represented_good_direction_cases: 4342
- profile_total_good_direction_cases: 4342

## Calibration

- lines_per_fact: 191.415
- seconds_per_fact: 1.053
- base_rss_kib: 3320000
- rss_per_fact_kib: 71905.268
- max_jobs: 4

## Manifest

- budget_good_masks_per_shard: 20
- shards: 241
- largest_shard_good_masks: 20
- estimated_source_lines: 691390
- estimated_serial_wall_hours: 1.056
- estimated_peak_rss_per_shard_kib: 4758106
- safe_parallel_jobs_45gib: 4
- estimated_wall_hours_at_safe_parallelism: 0.264

## First Shards

- shard 000: signatures [0, 1), good_masks=13, represented_cases=52
- shard 001: signatures [1, 3), good_masks=17, represented_cases=80
- shard 002: signatures [3, 5), good_masks=18, represented_cases=72
- shard 003: signatures [5, 6), good_masks=12, represented_cases=36
- shard 004: signatures [6, 7), good_masks=16, represented_cases=32
- shard 005: signatures [7, 8), good_masks=16, represented_cases=32
- shard 006: signatures [8, 11), good_masks=17, represented_cases=88
- shard 007: signatures [11, 13), good_masks=18, represented_cases=54
- shard 008: signatures [13, 14), good_masks=13, represented_cases=26
- shard 009: signatures [14, 15), good_masks=13, represented_cases=26
- shard 010: signatures [15, 16), good_masks=13, represented_cases=26
- shard 011: signatures [16, 18), good_masks=17, represented_cases=50
- shard 012: signatures [18, 20), good_masks=17, represented_cases=46
- shard 013: signatures [20, 21), good_masks=11, represented_cases=22
- shard 014: signatures [21, 22), good_masks=11, represented_cases=22
- shard 015: signatures [22, 23), good_masks=11, represented_cases=22
- shard 016: signatures [23, 25), good_masks=20, represented_cases=40
- shard 017: signatures [25, 26), good_masks=9, represented_cases=18
- shard 018: signatures [26, 27), good_masks=16, represented_cases=16
- shard 019: signatures [27, 28), good_masks=16, represented_cases=16

## Decision

Use the signature manifest with budget 20 for the next bounded group-emitter smoke.  This manifest budgets representative signature GoodDirection masks, not global production proof coverage; the same manifest logic must later run on the production survivor catalog before any final generated API is emitted.
