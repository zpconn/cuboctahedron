# Phase 6Z.6K.8AP.16AK AP.16 Positive-Survivor Census

This diagnostic is not trusted as proof and emits no Lean.

- Status: `checkpointed-census-smoke-complete`
- Workers: `1`
- Checkpoint dir: `/tmp/cuboctahedron_ap16ak_manifest_smoke`
- Windows completed/requested: `1` / `1`
- Completed sampled ranks: `1000`
- GoodDirection cases: `0`
- Unique positive candidate groups: `0`
- Unique positive survivor signatures: `0`
- Max window RSS: `20012` KiB
- Window time mean/p50/p95/max: `0.24` / `0.24` / `0.24` / `0.24` seconds

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[22500000, 22501000]` | 0 | 0 | 0 | 0 | 0.24 | 20012 |

## Decision Notes

- diagnostic only: checkpointed census is not Lean proof
- per-window checkpoints contain detailed AP.16I-style catalogs outside the repo
- tracked aggregate keeps only compact counts and key summaries
