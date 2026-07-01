# Bellman Split Smoke Metrics [0,37)

This report is untrusted diagnostic aggregation only. It reads existing guarded smoke JSON files; it does not invoke Lean and is not proof evidence for exhaustive coverage.

## Guard Status

- status: `accepted`
- paths seen: `37` of `37`
- commands seen: `74`
- errors: none
- plan report: `scripts/generated/bellman_split_smoke_batch_plan_000_037.json`
  - summary: `{'entries_over_budget': 0, 'fresh_split_artifacts': 37, 'fresh_trace_artifacts': 37, 'planned_entries': 37, 'total_split_source_kib': 74, 'total_trace_source_kib': 1184}`
- selector report: `scripts/generated/bellman_split_single_path_candidate_000_037.json`
  - status: `no-candidate`
- guard report: `scripts/generated/bellman_split_batch_guard_000_016.json`
  - status: `accepted-dry-run`
  - summary: `{'blocked_entries': 0, 'entries': 16, 'total_blockers': 0, 'total_split_source_kib': 32, 'total_trace_source_kib': 512}`

## Timing

| stage | count | total s | mean s | median s | p95 s | max s |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `trace` | `37` | `273.003` | `7.378` | `7.507` | `10.511` | `11.01` |
| `split` | `37` | `82.173` | `2.221` | `2.003` | `2.037` | `11.511` |

- total guarded elapsed time: `355.176s` (`5.92 min`)
- mean path elapsed time: `9.599s`; p95 path elapsed time: `13.013s`

## Memory

| stage | max RSS MiB | min available MiB | max source KiB | worst RSS path |
| --- | ---: | ---: | ---: | --- |
| `trace` | `4044.3` | `46060.2` | `32` | `25` / rank `946779` |
| `split` | `3975.1` | `46138.6` | `2` | `26` / rank `947437` |

- overall max RSS: `4044.3 MiB`
- hard RSS guard cap: `4500.0 MiB`; headroom to cap: `455.7 MiB`
- minimum MemAvailable observed by guards: `46060.2 MiB`

## Diagnostic Projection

These projections are scale heuristics only. They do not establish coverage and should not be used as proof evidence.

- serial guarded CPU-hours per 1000 sampled paths: `2.666`
- ideal wall-hours per 1000 sampled paths at four independent workers: `0.667`

