# Phase 6Z.6K.8AP.16AE AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `2`
- Checkpoint dir: `/tmp/cuboctahedron_ap16ae_positive_survivor_census`
- Windows completed/requested: `2` / `2`
- Completed sampled ranks: `5000`
- GoodDirection cases: `4693`
- Unique positive candidate groups: `125`
- Unique positive survivor signatures: `464`
- Max window RSS: `32204` KiB
- Window time mean/p50/p95/max: `32.52` / `32.52` / `44.05` / `45.33` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 2500]` | 3415 | 102 | 312 | 329 | 45.33 | 32204 |
| `[2500, 5000]` | 1278 | 89 | 152 | 158 | 19.72 | 25484 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
