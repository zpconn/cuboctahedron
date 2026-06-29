# Phase 6Z.6K.8AP.16DU.9ED Checkpointed Classifier Census

This diagnostic is not trusted as proof and emits no Lean. It runs the
source-index/state GoodDirection classifier in checkpointed windows and
aggregates only compact family keys/counts.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Workers: `2`
- Sampled ranks: `1000`
- GoodDirection cases: `1465`
- Merged families: `74`
- Family gate: `1000`
- Elapsed seconds: `0.00`
- Max worker RSS KiB: `22188`
- Checkpoint dir: `/tmp/cuboctahedron_source_index_state_classifier_census_1k`

## Windows

| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[0, 250]` | 44 | 499 | 41 | 6.16 | 22188 |
| `[250, 500]` | 23 | 216 | 24 | 2.99 | 21612 |
| `[500, 750]` | 31 | 300 | 42 | 4.06 | 21804 |
| `[750, 1000]` | 40 | 450 | 46 | 5.56 | 22188 |

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 421 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16 |
| 134 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54 |
| 128 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31 |
| 102 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 79 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13 |
| 44 | `opp_1m_var_first` | `[83, 1]` | r633/m28, r633/m63, r639/m25 |
| 30 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13 |
| 29 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13 |
| 23 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29 |
| 22 | `eq_eq_neg_var_first` | `[26, 3]` | r137/m7, r185/m7 |
| 22 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7 |
| 21 | `eq_eq_pos_var_first` | `[183, 0]` | r149/m39, r149/m47, r185/m45 |
| 20 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9 |
| 19 | `eq_eq_pos_var_first` | `[148, 0]` | r5/m54, r47/m45, r62/m54 |
| 19 | `eq_eq_pos_var_first` | `[122, 0]` | r86/m54, r86/m55, r87/m45 |

## Decision Notes

- merged family count is within the current diagnostic gate
- diagnostic only: checkpoints and reports are not proof
