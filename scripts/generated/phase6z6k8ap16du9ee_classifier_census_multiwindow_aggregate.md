# Phase 6Z.6K.8AP.16DU.9EE Checkpointed Classifier Census

This diagnostic is not trusted as proof and emits no Lean. It runs the
source-index/state GoodDirection classifier in checkpointed windows and
aggregates only compact family keys/counts.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Workers: `4`
- Sampled ranks: `175000`
- GoodDirection cases: `39338`
- Merged families: `405`
- Family gate: `1000`
- Elapsed seconds: `0.00`
- Max worker RSS KiB: `49480`
- Checkpoint dir: `/tmp/cuboctahedron_source_index_state_classifier_census_9ee`

## Windows

| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[0, 25000]` | 1423 | 11527 | 177 | 176.41 | 46216 |
| `[100000, 125000]` | 1603 | 13079 | 185 | 199.69 | 49480 |
| `[1000000, 1025000]` | 512 | 2678 | 104 | 58.32 | 26824 |
| `[10000000, 10025000]` | 1434 | 11889 | 283 | 180.78 | 46988 |
| `[30000000, 30025000]` | 686 | 0 | 0 | 51.47 | 26824 |
| `[60000000, 60025000]` | 318 | 115 | 32 | 28.54 | 26824 |
| `[90000000, 90025000]` | 154 | 50 | 15 | 16.83 | 26824 |

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 7024 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16 |
| 3023 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54 |
| 2667 | `eq_eq_pos_var_first` | `[52, 0]` | r10000075/m16, r10000083/m16, r10000085/m16 |
| 1573 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 1182 | `opp_1m_var_first` | `[51, 1]` | r10000009/m29, r10000051/m29, r10000075/m29 |
| 1075 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13 |
| 845 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31 |
| 720 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13 |
| 668 | `opp_m1_var_first` | `[50, 2]` | r10000009/m47, r10000051/m47, r10000075/m47 |
| 591 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7 |
| 569 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13 |
| 534 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29 |
| 513 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13 |
| 490 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47 |
| 489 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31 |
| 489 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22 |
| 482 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16 |
| 468 | `eq_eq_pos_var_first` | `[161, 0]` | r857/m45, r857/m54, r857/m63 |
| 466 | `eq_eq_pos_var_second` | `[0, 9]` | r10347/m25, r10347/m27, r10347/m29 |
| 435 | `opp_1m_var_first` | `[70, 1]` | r3179/m29, r3180/m63, r3182/m29 |

## Decision Notes

- merged family count is within the current diagnostic gate
- diagnostic only: checkpoints and reports are not proof
