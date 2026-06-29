# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Plan

Diagnostic/planning only; not proof data and not generated Lean.

- source profile: `scripts/generated/phase6z6k8ap16dd_compact_walsh_cover_scaling.json`
- requested signature limit: `5`
- selected signatures: `5`
- selected subcubes total: `87`
- selected subcubes max: `24`
- selected word-impact union: `[0, 1, 3, 4, 6, 7, 8, 9, 10]`
- planned serial Lean targets: `51`
- accepted for next guarded emission: `True`

Memory/build policy for the next AP16DJ emission smoke:

```text
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
per-target timeout: 600s
build generated targets serially; stop on first failure
```

Representative AP16DI telemetry used for planning:

- uncached cover peak: `4309.70 MiB`
- root after cached leaves peak: `4031.95 MiB`

| index | rank | anchor mask | good masks | bad masks | selected subcubes | selected impacts | planned modules | key prefix |
| ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: | --- |
| 0 | 6000745 | 8 | 13 | 51 | 16 | `[0, 1, 3, 4, 7, 9, 10]` | 10 | `e378237f035fcae5` |
| 1 | 6000625 | 8 | 11 | 53 | 16 | `[0, 1, 3, 4, 6, 9, 10]` | 10 | `7640df3ffbdd5cb8` |
| 2 | 6000480 | 14 | 6 | 58 | 17 | `[0, 1, 3, 4, 6, 7, 9]` | 10 | `14931975d9969f8b` |
| 3 | 6000720 | 8 | 6 | 58 | 24 | `[0, 1, 3, 4, 7, 8, 10]` | 10 | `98a1a30835c91bc6` |
| 4 | 6000662 | 5 | 12 | 52 | 14 | `[0, 1, 3, 4, 7, 9, 10]` | 10 | `9ab594e6d0794512` |

Next safe implementation step:

1. Generalize the AP16DF generator to consume this batch manifest.
2. Generate only the selected AP16DJ signatures.
3. Build every generated target with the AP16DI-style serial memory guard.
4. Accept the batch only if every target stays under the RSS cap and the
   batch root stays small after leaves are cached.
