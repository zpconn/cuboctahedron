# Phase 6Z.6K.8AP.16DU.9EH Checkpointed Classifier Census

This diagnostic is not trusted as proof and emits no Lean. It runs the
source-index/state GoodDirection classifier in checkpointed windows and
aggregates only compact family keys/counts.

- Status: `accepted-scaling-candidate`
- Source key surface: `kind_impact`
- Workers: `4`
- Sampled ranks: `100000`
- GoodDirection cases: `17194`
- Merged families: `427`
- Family gate: `1000`
- Elapsed seconds: `147.39`
- Max worker RSS KiB: `29664`
- Checkpoint dir: `/tmp/cuboctahedron_source_index_state_classifier_census_9eh`

## Windows

| Range | Identity | GoodDirection | Families | Elapsed s | Max RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[75000, 80000]` | 145 | 736 | 57 | 15.78 | 22752 |
| `[150000, 155000]` | 219 | 1718 | 101 | 26.76 | 25056 |
| `[175000, 180000]` | 142 | 674 | 72 | 15.00 | 22752 |
| `[750000, 755000]` | 223 | 388 | 58 | 18.17 | 21984 |
| `[1500000, 1505000]` | 482 | 3735 | 119 | 57.57 | 29472 |
| `[3000000, 3005000]` | 463 | 2922 | 87 | 50.56 | 27552 |
| `[7500000, 7505000]` | 238 | 1825 | 133 | 28.84 | 25248 |
| `[12500000, 12505000]` | 58 | 0 | 0 | 5.11 | 25056 |
| `[17500000, 17505000]` | 150 | 0 | 0 | 10.94 | 25056 |
| `[25000000, 25005000]` | 333 | 635 | 87 | 27.05 | 25632 |
| `[35000000, 35005000]` | 201 | 0 | 0 | 14.16 | 25440 |
| `[45000000, 45005000]` | 112 | 158 | 38 | 9.80 | 25440 |
| `[55000000, 55005000]` | 74 | 301 | 96 | 8.36 | 27744 |
| `[65000000, 65005000]` | 55 | 63 | 24 | 5.31 | 25632 |
| `[70000000, 70005000]` | 181 | 365 | 79 | 15.39 | 25440 |
| `[75000000, 75005000]` | 19 | 0 | 0 | 2.53 | 29472 |
| `[85000000, 85005000]` | 155 | 0 | 0 | 11.25 | 27744 |
| `[90025000, 90030000]` | 10 | 5 | 5 | 1.97 | 29472 |
| `[95000000, 95005000]` | 69 | 102 | 33 | 6.52 | 25632 |
| `[97000000, 97005000]` | 694 | 3567 | 110 | 70.30 | 29664 |

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 2043 | `eq_eq_pos_var_first` | `[23, 0]` | r75026/m58, r75308/m26, r75510/m24 |
| 1038 | `eq_eq_pos_var_second` | `[0, 5]` | r3000000/m16, r3000000/m40, r3000000/m42 |
| 932 | `opp_1m_var_first` | `[24, 1]` | r75520/m56, r75582/m55, r75584/m23 |
| 834 | `opp_m1_var_first` | `[25, 2]` | r75044/m13, r75308/m13, r75314/m13 |
| 410 | `eq_eq_pos_var_first` | `[38, 0]` | r7500132/m61, r7500135/m61, r7500137/m61 |
| 400 | `eq_eq_pos_var_second` | `[0, 9]` | r78072/m13, r78072/m29, r78074/m13 |
| 372 | `eq_eq_pos_var_first` | `[31, 0]` | r3000010/m62, r3000022/m46, r3000063/m14 |
| 370 | `eq_eq_pos_var_first` | `[70, 0]` | r150021/m30, r150351/m30, r150399/m30 |
| 351 | `eq_eq_pos_var_first` | `[37, 0]` | r97001157/m41, r97001158/m41, r97001159/m41 |
| 350 | `eq_eq_pos_var_first` | `[19, 0]` | r95000493/m34, r95000625/m34, r95000626/m34 |
| 332 | `eq_eq_pos_var_first` | `[57, 0]` | r175062/m59 |
| 289 | `eq_eq_pos_var_first` | `[75, 0]` | r97002360/m16, r97002362/m16, r97002362/m18 |
| 280 | `opp_m1_var_first` | `[44, 2]` | r25000438/m34, r25000439/m34, r25000918/m34 |
| 245 | `opp_m1_var_first` | `[45, 2]` | r25004882/m30, r25004892/m30, r25004904/m30 |
| 226 | `opp_m1_var_second` | `[2, 8]` | r78122/m26, r78130/m58, r78174/m58 |
| 208 | `eq_eq_pos_var_second` | `[0, 10]` | r152145/m25, r152145/m28, r152145/m29 |
| 201 | `opp_1m_var_second` | `[1, 8]` | r78122/m11, r78174/m47, r78192/m52 |
| 188 | `opp_1m_var_first` | `[39, 1]` | r7500111/m10, r7500111/m11, r7500132/m10 |
| 176 | `opp_1m_var_first` | `[54, 1]` | r97001867/m36, r97002051/m39, r97002052/m39 |
| 167 | `eq_eq_pos_var_first` | `[161, 0]` | r78197/m47, r78209/m47 |

## Decision Notes

- merged family count is within the current diagnostic gate
- diagnostic only: checkpoints and reports are not proof
