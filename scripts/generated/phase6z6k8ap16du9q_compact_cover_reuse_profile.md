# DU.9Q Compact-Cover Reuse Profile

This report is planning telemetry, not proof evidence.

- Status: `rejected-rank-local-compact-cover-sample`
- Jobs: `4`
- Windows: `[(0, 1000), (100000, 1000), (6000000, 1000)]`
- Ranks with GoodDirection masks in windows: `297`
- Profiled ranks: `12`
- Unique good-mask sets: `10`
- Unique structural cover patterns: `12`
- Unique impact patterns: `5`
- Selected subcubes mean/max: `17.42` / `21`
- Uncovered ranks: `0`
- Elapsed seconds: `40.72`

## Profiled Ranks

| Rank | Good masks | Bad masks | Candidates | Selected | Uncovered | Impact pattern |
| ---: | ---: | ---: | ---: | ---: | ---: | --- |
| 0 | 16 | 48 | 201 | 17 | 0 | `[1, 2, 4, 6, 8, 10, 12]` |
| 2 | 13 | 51 | 173 | 21 | 0 | `[1, 2, 4, 6, 8, 10, 11]` |
| 3 | 13 | 51 | 173 | 21 | 0 | `[1, 2, 4, 6, 8, 10, 11]` |
| 5 | 16 | 48 | 201 | 17 | 0 | `[1, 2, 4, 6, 8, 10, 12]` |
| 9 | 13 | 51 | 197 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 12]` |
| 11 | 11 | 53 | 212 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 11]` |
| 17 | 7 | 57 | 235 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 10]` |
| 24 | 7 | 57 | 227 | 18 | 0 | `[1, 2, 4, 6, 8, 9, 10]` |
| 27 | 13 | 51 | 173 | 19 | 0 | `[1, 2, 4, 6, 8, 9, 12]` |
| 29 | 11 | 53 | 212 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 11]` |
| 30 | 13 | 51 | 197 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 12]` |
| 32 | 11 | 53 | 212 | 16 | 0 | `[1, 2, 4, 6, 8, 9, 11]` |

## Decision

This emits no Lean and is not trusted as proof.
A low structural-pattern count supports a reusable compact-cover template route.
A high structural-pattern count means DU.9P rank-local compact covers should remain bounded smoke only.
