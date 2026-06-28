# Phase 6Z.6K.8AP.16AG AP.16 Density Map

This diagnostic is not trusted as proof and emits no Lean.

- Status: `density-map-complete`
- Workers: `4`
- Checkpoint dir: `/tmp/cuboctahedron_ap16ag_density_map`
- Windows completed/requested: `12` / `12`
- Completed sampled ranks: `12000`
- Identity words: `341`
- GoodDirection masks: `1677`
- Ranks with GoodDirection: `236`
- Max window RSS: `17172` KiB
- Window time mean/p50/p95/max: `1.60` / `0.91` / `4.54` / `6.84` seconds

## Windows

| Range | Identity | GoodDirection | Ranks w/Good | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[0, 1000]` | 138 | 1465 | 138 | 6.84 | 17172 |
| `[8000000, 8001000]` | 3 | 7 | 3 | 0.39 | 17172 |
| `[16000000, 16001000]` | 5 | 3 | 3 | 0.48 | 17172 |
| `[24000000, 24001000]` | 17 | 21 | 14 | 1.05 | 17172 |
| `[32000000, 32001000]` | 51 | 28 | 23 | 2.67 | 17172 |
| `[40000000, 40001000]` | 6 | 3 | 3 | 0.54 | 17172 |
| `[48000000, 48001000]` | 0 | 0 | 0 | 0.25 | 17172 |
| `[56000000, 56001000]` | 38 | 0 | 0 | 2.04 | 17172 |
| `[64000000, 64001000]` | 4 | 4 | 3 | 0.45 | 17172 |
| `[72000000, 72001000]` | 15 | 16 | 9 | 0.97 | 17172 |
| `[80000000, 80001000]` | 51 | 123 | 37 | 2.67 | 17172 |
| `[88000000, 88001000]` | 13 | 7 | 3 | 0.86 | 17172 |

## Densest Windows

| Range | Identity | GoodDirection | Seconds |
| --- | ---: | ---: | ---: |
| `[0, 1000]` | 138 | 1465 | 6.84 |
| `[80000000, 80001000]` | 51 | 123 | 2.67 |
| `[32000000, 32001000]` | 51 | 28 | 2.67 |
| `[24000000, 24001000]` | 17 | 21 | 1.05 |
| `[72000000, 72001000]` | 15 | 16 | 0.97 |
| `[8000000, 8001000]` | 3 | 7 | 0.39 |
| `[88000000, 88001000]` | 13 | 7 | 0.86 |
| `[64000000, 64001000]` | 4 | 4 | 0.45 |
| `[16000000, 16001000]` | 5 | 3 | 0.48 |
| `[40000000, 40001000]` | 6 | 3 | 0.54 |

## Mask Histogram

- `1` GoodDirection masks/rank: `40` ranks
- `2` GoodDirection masks/rank: `26` ranks
- `3` GoodDirection masks/rank: `16` ranks
- `4` GoodDirection masks/rank: `10` ranks
- `5` GoodDirection masks/rank: `4` ranks
- `6` GoodDirection masks/rank: `2` ranks
- `7` GoodDirection masks/rank: `30` ranks
- `8` GoodDirection masks/rank: `25` ranks
- `11` GoodDirection masks/rank: `30` ranks
- `13` GoodDirection masks/rank: `41` ranks
- `16` GoodDirection masks/rank: `12` ranks

## Decision Notes

- diagnostic only: density map is not Lean proof
- counts identity-linear words and GoodDirection masks only
- does not compute source/Farkas candidate families
