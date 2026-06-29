# Phase 6Z.6K.8AP.16DU.9DZ Classifier Multi-Window Profile

This diagnostic is not trusted as proof and emits no Lean. It aggregates
source-index/state classifier families across disjoint sampled rank
windows using the current GoodDirection-only classifier surface.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Jobs per window: `4`
- Window count: `7`
- Sampled ranks: `175000`
- GoodDirection cases: `39338`
- Merged families: `405`
- Template ids: `11`
- Source-index pairs: `362`
- Largest family: `7024`
- Family gate: `1000`

## Window Growth

| Range | Identity | GoodDirection | Not-Good | Family | Template | Source-index pair | Largest | Cumulative family |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 25000]` | 1423 | 11527 | 79545 | 177 | 9 | 174 | 3036 | 177 |
| `[100000, 125000]` | 1603 | 13079 | 89513 | 185 | 9 | 181 | 3286 | 207 |
| `[1000000, 1025000]` | 512 | 2678 | 30090 | 104 | 9 | 103 | 702 | 240 |
| `[10000000, 10025000]` | 1434 | 11889 | 79887 | 283 | 11 | 256 | 2667 | 372 |
| `[30000000, 30025000]` | 686 | 0 | 43904 | 0 | 0 | 0 | 0 | 372 |
| `[60000000, 60025000]` | 318 | 115 | 20237 | 32 | 4 | 26 | 31 | 398 |
| `[90000000, 90025000]` | 154 | 50 | 9806 | 15 | 6 | 15 | 13 | 405 |

## Top Merged Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 7024 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 3023 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 2667 | `eq_eq_pos_var_first` | `[52, 0]` | r10000075/m16, r10000083/m16, r10000085/m16, r10000142/m16, r10000160/m16 |
| 1573 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47, r24/m61, r42/m45 |
| 1182 | `opp_1m_var_first` | `[51, 1]` | r10000009/m29, r10000051/m29, r10000075/m29, r10000145/m29, r10000158/m29 |
| 1075 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13, r8222/m29, r8244/m13 |
| 845 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 720 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13, r177/m22, r315/m13 |
| 668 | `opp_m1_var_first` | `[50, 2]` | r10000009/m47, r10000051/m47, r10000075/m47, r10000083/m47, r10000152/m47 |
| 591 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7, r561/m7, r582/m7 |
| 569 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13, r125/m22, r125/m29 |
| 534 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29, r62/m31, r65/m13 |
| 513 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 490 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47, r605/m55, r657/m22 |
| 489 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31, r810/m55, r812/m30 |
| 489 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22, r630/m30, r635/m22 |
| 482 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16, r387/m18, r501/m8 |
| 468 | `eq_eq_pos_var_first` | `[161, 0]` | r857/m45, r857/m54, r857/m63, r869/m47, r869/m55 |
| 466 | `eq_eq_pos_var_second` | `[0, 9]` | r10347/m25, r10347/m27, r10347/m29, r10349/m27, r10349/m61 |
| 435 | `opp_1m_var_first` | `[70, 1]` | r3179/m29, r3180/m63, r3182/m29, r3182/m63, r3190/m63 |

## Decision Notes

- merged source-index/state classifier family count stayed within the gate
- diagnostic only: this is not proof and emits no Lean
- next step should either sample more windows or emit a bounded Lean smoke over merged families

## Guarded Run

Command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4096 \
  --min-available-mib 16384 \
  --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du9dz_classifier_multiwindow_profile_guard.json \
  -- python3 scripts/profile_source_index_state_classifier_windows.py \
    --jobs 4 \
    --family-gate 1000 \
    --top-limit 20 \
    --json scripts/generated/phase6z6k8ap16du9dz_classifier_multiwindow_profile.json \
    --md scripts/generated/phase6z6k8ap16du9dz_classifier_multiwindow_profile.md
```

Result:

- Exit: `0`
- Elapsed: `301.64s`
- Peak tree RSS: `619.33 MiB`
- Minimum available memory observed: `46148.14 MiB`

Decision: accepted as a multi-window diagnostic.  The merged family count is
`405` across seven disjoint 25k windows and `39,338` sampled GoodDirection
cases, below the current `1000`-family gate.  This remains profiling evidence
only; it does not prove coverage.
