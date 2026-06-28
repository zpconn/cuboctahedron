# Phase 6Z.6K.8AP.16AF AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `2`
- Checkpoint dir: `/tmp/cuboctahedron_ap16af_positive_survivor_census`
- Windows completed/requested: `5` / `5`
- Completed sampled ranks: `5000`
- GoodDirection cases: `1485`
- Unique positive candidate groups: `85`
- Unique positive survivor signatures: `142`
- Max window RSS: `25960` KiB
- Window time mean/p50/p95/max: `4.95` / `2.12` / `15.72` / `18.84` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 1000]` | 1465 | 74 | 131 | 138 | 18.84 | 25960 |
| `[22500000, 22501000]` | 0 | 0 | 0 | 0 | 0.24 | 19816 |
| `[45000000, 45001000]` | 20 | 11 | 11 | 16 | 2.12 | 21160 |
| `[67500000, 67501000]` | 0 | 0 | 0 | 0 | 3.23 | 21352 |
| `[90000000, 90001000]` | 0 | 0 | 0 | 0 | 0.33 | 21352 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
