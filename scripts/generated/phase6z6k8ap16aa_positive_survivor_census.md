# Phase 6Z.6K.8AP.16AA AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `1`
- Checkpoint dir: `/tmp/cuboctahedron_ap16_positive_survivor_census`
- Windows completed/requested: `1` / `1`
- Completed sampled ranks: `2500`
- GoodDirection cases: `3415`
- Unique positive candidate groups: `102`
- Unique positive survivor signatures: `312`
- Max window RSS: `32012` KiB
- Window time mean/p50/p95/max: `218.21` / `218.21` / `218.21` / `218.21` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 2500]` | 3415 | 102 | 312 | 329 | 218.21 | 32012 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
