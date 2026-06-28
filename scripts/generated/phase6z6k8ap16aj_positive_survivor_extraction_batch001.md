# Phase 6Z.6K.8AP.16AJ.batch001 AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `1`
- Checkpoint dir: `/tmp/cuboctahedron_ap16aj_positive_survivor_extraction/batch_001_6000000_6001000`
- Windows completed/requested: `1` / `1`
- Completed sampled ranks: `1000`
- GoodDirection cases: `863`
- Unique positive candidate groups: `53`
- Unique positive survivor signatures: `71`
- Max window RSS: `24128` KiB
- Window time mean/p50/p95/max: `14.95` / `14.95` / `14.95` / `14.95` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[6000000, 6001000]` | 863 | 53 | 71 | 137 | 14.95 | 24128 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
