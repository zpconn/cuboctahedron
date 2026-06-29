# DU.9P Compact-Cover Emission Plan

This report is planning telemetry, not proof evidence.

- Bounded range: `[0,4)`
- Positive survivors: `42`
- Ranks to cover: `[0, 2, 3]`
- Accepted for Lean emission: `yes`
- Projected Lean targets for all ranks: `75`

## Rank Plans

| Rank | Good masks | Bad masks | Selected subcubes | Selected impacts | Targets | Accepted |
| ---: | ---: | ---: | ---: | --- | ---: | :---: |
| 0 | 16 | 48 | 17 | `[0, 1, 3, 5, 7, 9, 11]` | 25 | yes |
| 2 | 13 | 51 | 21 | `[0, 1, 3, 5, 7, 9, 10]` | 25 | yes |
| 3 | 13 | 51 | 21 | `[0, 1, 3, 5, 7, 9, 10]` | 25 | yes |

## Decision

All three DU.9P profiles are accepted as generator telemetry: the DU.9M
good-mask language matches the compact-Walsh profile language, Walsh
validation passed, and every bad mask is covered by selected subcubes.

The next proof-producing move is intentionally one-rank only:

1. Emit the split-trace compact-cover stack for rank `0`.
2. Build only that focused stack through the memory guard.
3. If rank 0 passes, emit ranks `2` and `3` plus the bounded membership root.

Memory guard for the next Lean check:

```text
max_tree_rss_mib=5000
min_available_mib=12000
LEAN_NUM_THREADS=1
LAKE_JOBS=1
```

Rejected routes:

- all-mask fin_cases membership proof
- single monolithic compact-Walsh trace module
- broad lake build before rank-0 guard passes
