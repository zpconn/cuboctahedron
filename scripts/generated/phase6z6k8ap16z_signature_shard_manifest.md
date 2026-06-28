# AP.16Z Signature Shard Manifest

This report is diagnostic only. It schedules whole positive-survivor
signature shards for the current AP.16 shared-candidate emitter.
It is not proof evidence.

## Counts

- positive_survivor_signatures: 757
- representative_good_mask_facts: 6845
- represented_good_direction_cases: 7112
- profile_total_good_direction_cases: 7112

## Calibration

- lines_per_fact: 191.415
- seconds_per_fact: 1.053
- base_rss_kib: 3320000
- rss_per_fact_kib: 71905.268
- max_jobs: 4

## Manifest

- budget_good_masks_per_shard: 20
- shards: 498
- largest_shard_good_masks: 20
- estimated_source_lines: 1310234
- estimated_serial_wall_hours: 2.002
- estimated_peak_rss_per_shard_kib: 4758106
- safe_parallel_jobs_45gib: 4
- estimated_wall_hours_at_safe_parallelism: 0.500

## First Shards

- shard 000: signatures [0, 2), good_masks=19, represented_cases=46
- shard 001: signatures [2, 3), good_masks=11, represented_cases=22
- shard 002: signatures [3, 4), good_masks=11, represented_cases=22
- shard 003: signatures [4, 5), good_masks=11, represented_cases=22
- shard 004: signatures [5, 6), good_masks=11, represented_cases=22
- shard 005: signatures [6, 7), good_masks=11, represented_cases=22
- shard 006: signatures [7, 8), good_masks=11, represented_cases=22
- shard 007: signatures [8, 9), good_masks=11, represented_cases=22
- shard 008: signatures [9, 10), good_masks=11, represented_cases=22
- shard 009: signatures [10, 12), good_masks=20, represented_cases=40
- shard 010: signatures [12, 13), good_masks=9, represented_cases=18
- shard 011: signatures [13, 14), good_masks=16, represented_cases=16
- shard 012: signatures [14, 15), good_masks=8, represented_cases=16
- shard 013: signatures [15, 16), good_masks=16, represented_cases=16
- shard 014: signatures [16, 17), good_masks=16, represented_cases=16
- shard 015: signatures [17, 18), good_masks=16, represented_cases=16
- shard 016: signatures [18, 19), good_masks=8, represented_cases=16
- shard 017: signatures [19, 20), good_masks=16, represented_cases=16
- shard 018: signatures [20, 21), good_masks=16, represented_cases=16
- shard 019: signatures [21, 22), good_masks=16, represented_cases=16

## Decision

Use the signature manifest with budget 20 for the next bounded group-emitter smoke.  This manifest budgets representative signature GoodDirection masks, not global production proof coverage; the same manifest logic must later run on the production survivor catalog before any final generated API is emitted.
