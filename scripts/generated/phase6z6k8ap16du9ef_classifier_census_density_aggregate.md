# Phase 6Z.6K.8AP.16DU.9EF Checkpointed Classifier Census

This diagnostic is not trusted as proof and emits no Lean. It runs the
source-index/state GoodDirection classifier in checkpointed windows and
aggregates only compact family keys/counts.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Workers: `4`
- Sampled ranks: `50000`
- GoodDirection cases: `7110`
- Merged families: `218`
- Family gate: `1000`
- Elapsed seconds: `0.00`
- Max worker RSS KiB: `28340`
- Checkpoint dir: `/tmp/cuboctahedron_source_index_state_classifier_census_9ef`

## Windows

| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[25000, 30000]` | 429 | 3244 | 119 | 50.50 | 28340 |
| `[50000, 55000]` | 232 | 1630 | 71 | 27.51 | 24884 |
| `[250000, 255000]` | 0 | 0 | 0 | 1.23 | 19508 |
| `[500000, 505000]` | 102 | 421 | 39 | 10.89 | 22196 |
| `[2000000, 2005000]` | 124 | 262 | 27 | 11.30 | 21812 |
| `[5000000, 5005000]` | 241 | 1253 | 102 | 25.55 | 24116 |
| `[15000000, 15005000]` | 70 | 0 | 0 | 5.88 | 21812 |
| `[20000000, 20005000]` | 125 | 0 | 0 | 9.44 | 21812 |
| `[40000000, 40005000]` | 16 | 3 | 2 | 2.30 | 24884 |
| `[80000000, 80005000]` | 168 | 297 | 53 | 14.51 | 22004 |

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 2096 | `eq_eq_pos_var_first` | `[23, 0]` | r25009/m26, r25045/m24, r25069/m26 |
| 656 | `opp_1m_var_first` | `[24, 1]` | r25112/m6, r25114/m6, r25152/m22 |
| 363 | `opp_m1_var_first` | `[25, 2]` | r25009/m37, r25069/m37, r25164/m37 |
| 321 | `eq_eq_pos_var_first` | `[57, 0]` | r25069/m21, r25164/m21, r25198/m21 |
| 178 | `opp_1m_var_first` | `[57, 1]` | r50148/m15, r50150/m15, r50153/m11 |
| 155 | `eq_eq_pos_var_first` | `[70, 0]` | r27720/m28, r27722/m28, r27725/m28 |
| 153 | `opp_m1_var_second` | `[2, 5]` | r5000202/m11, r5000880/m11, r5000880/m15 |
| 151 | `eq_eq_pos_var_first` | `[48, 0]` | r27551/m29, r27569/m29, r27720/m13 |
| 118 | `eq_eq_pos_var_second` | `[0, 9]` | r29610/m13, r29610/m14, r29610/m15 |
| 87 | `eq_eq_pos_var_first` | `[44, 0]` | r2000333/m31, r2000344/m28, r2000345/m28 |
| 73 | `eq_eq_pos_var_first` | `[148, 0]` | r25114/m5, r25114/m37, r25198/m5 |
| 73 | `opp_1m_var_second` | `[1, 15]` | r27540/m28, r27545/m22, r27747/m63 |
| 68 | `eq_eq_pos_var_first` | `[162, 0]` | r50400/m31, r50409/m31, r50790/m30 |
| 68 | `opp_1m_var_second` | `[1, 5]` | r5000940/m49, r5000942/m49, r5000950/m53 |
| 67 | `eq_eq_pos_var_first` | `[61, 0]` | r5000202/m53, r5001362/m57, r5001387/m57 |
| 62 | `opp_1m_var_first` | `[84, 1]` | r28982/m63, r28990/m63, r28999/m63 |
| 61 | `eq_eq_pos_var_first` | `[79, 0]` | r27723/m28, r27744/m28, r27760/m45 |
| 60 | `opp_1m_var_second` | `[1, 14]` | r26036/m22, r27729/m54, r27729/m55 |
| 57 | `eq_eq_neg_var_first` | `[26, 3]` | r26098/m53, r26980/m53, r27460/m53 |
| 57 | `opp_1m_var_first` | `[161, 1]` | r27809/m47, r27851/m47, r27899/m47 |

## Decision Notes

- merged family count is within the current diagnostic gate
- diagnostic only: checkpoints and reports are not proof
