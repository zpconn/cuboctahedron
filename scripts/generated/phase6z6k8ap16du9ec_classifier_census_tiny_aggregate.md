# Phase 6Z.6K.8AP.16DU.9EC Checkpointed Classifier Census

This diagnostic is not trusted as proof and emits no Lean. It runs the
source-index/state GoodDirection classifier in checkpointed windows and
aggregates only compact family keys/counts.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Workers: `2`
- Sampled ranks: `200`
- GoodDirection cases: `360`
- Merged families: `33`
- Family gate: `1000`
- Elapsed seconds: `0.00`
- Max worker RSS KiB: `21712`
- Checkpoint dir: `/tmp/cuboctahedron_source_index_state_classifier_census_tiny`

## Windows

| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[0, 100]` | 30 | 360 | 33 | 4.30 | 21712 |
| `[100000, 100100]` | 0 | 0 | 0 | 0.03 | 19408 |

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 122 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16 |
| 54 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31 |
| 31 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13 |
| 24 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54 |
| 23 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29 |
| 16 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 7 | `opp_1m_var_second` | `[1, 15]` | r27/m28, r59/m54, r59/m55 |
| 6 | `eq_eq_pos_var_first` | `[105, 0]` | r3/m30, r24/m22, r24/m30 |
| 6 | `eq_eq_pos_var_first` | `[148, 0]` | r5/m54, r47/m45, r62/m54 |
| 6 | `eq_eq_pos_var_first` | `[175, 0]` | r60/m29, r60/m30, r65/m29 |

## Decision Notes

- merged family count is within the current diagnostic gate
- diagnostic only: checkpoints and reports are not proof
