# Phase 6Z.6K.8AJ Pair-Sign Producer-Coverage Census

This diagnostic is not trusted as proof and emits no Lean. It is a
resumable checkpointed census for the accepted pair-sign producer
coverage route.

- Status: `accepted-resumable-census-candidate`
- Workers: `4`
- Checkpoint dir: `/tmp/cuboctahedron_pair_sign_producer_census`
- Windows completed/requested: `10` / `10`
- Completed sampled ranks: `25000`
- GoodDirection cases: `6048`
- Descriptor families: `232`
- Source groups: `225`
- Row groups: `22`
- Source-row edges: `232`
- Source+row producer obligations: `247`
- Source-language validation failures: `0`
- Max window RSS: `29528` KiB
- Window time mean/p50/p95/max: `44.31` / `18.27` / `181.19` / `218.12` seconds

## Windows

| Range | GoodDirection | Descriptor | Source | Row | Producer | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 2500]` | 3415 | 102 | 99 | 12 | 111 | 218.12 | 29528 |
| `[10000000, 10002500]` | 2069 | 136 | 135 | 19 | 154 | 136.05 | 26456 |
| `[20000000, 20002500]` | 0 | 0 | 0 | 0 | 0 | 1.04 | 20120 |
| `[30000000, 30002500]` | 0 | 0 | 0 | 0 | 0 | 16.73 | 20120 |
| `[40000000, 40002500]` | 3 | 2 | 2 | 2 | 4 | 2.16 | 21272 |
| `[50000000, 50002500]` | 171 | 37 | 37 | 8 | 45 | 20.26 | 21848 |
| `[60000000, 60002500]` | 0 | 0 | 0 | 0 | 0 | 3.92 | 20120 |
| `[70000000, 70002500]` | 223 | 61 | 61 | 11 | 72 | 23.52 | 22040 |
| `[80000000, 80002500]` | 163 | 42 | 41 | 9 | 50 | 19.82 | 21848 |
| `[90000000, 90002500]` | 4 | 1 | 1 | 1 | 2 | 1.43 | 21848 |

## Decision Notes

- resumable checkpointed census stayed below producer and descriptor gates
- next step can extend the census or emit a bounded scaling Lean smoke
