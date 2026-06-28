# Phase 6Z.6K.8AP.16AL AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `2`
- Checkpoint dir: `/tmp/cuboctahedron_ap16al_top5_manifest_extraction`
- Windows completed/requested: `5` / `5`
- Completed sampled ranks: `5000`
- GoodDirection cases: `4342`
- Unique positive candidate groups: `191`
- Unique positive survivor signatures: `494`
- Max window RSS: `27308` KiB
- Window time mean/p50/p95/max: `14.12` / `13.66` / `18.25` / `19.00` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 1000]` | 1465 | 74 | 131 | 138 | 19.00 | 26348 |
| `[6000000, 6001000]` | 863 | 53 | 71 | 137 | 15.25 | 24432 |
| `[54000000, 54001000]` | 721 | 83 | 116 | 132 | 13.66 | 24816 |
| `[44000000, 44001000]` | 711 | 63 | 79 | 96 | 11.18 | 27308 |
| `[3000000, 3001000]` | 582 | 51 | 97 | 110 | 11.49 | 25200 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
