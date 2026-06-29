# Phase 6Z.6K.8AP.16DU.9EG Classifier Census Union

This diagnostic is not trusted as proof. It summarizes family-key growth
across checkpointed source-index/state classifier census reports.

- Reports: `2`
- Sampled ranks: `225000`
- GoodDirection cases: `46448`
- Union families: `470`
- Projected Lean lines for this union family count: `17473`

## Report Growth

| Report | Phase | Ranks | GoodDirection | Families | New | Reused | Cumulative | Reuse |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `scripts/generated/phase6z6k8ap16du9ee_classifier_census_multiwindow.json` | `6Z.6K.8AP.16DU.9EE` | 175000 | 39338 | 405 | 405 | 0 | 405 | 0.00% |
| `scripts/generated/phase6z6k8ap16du9ef_classifier_census_density.json` | `6Z.6K.8AP.16DU.9EF` | 50000 | 7110 | 218 | 65 | 153 | 470 | 70.18% |

## Top Union Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 9120 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16 |
| 3679 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54 |
| 2667 | `eq_eq_pos_var_first` | `[52, 0]` | r10000075/m16, r10000083/m16, r10000085/m16 |
| 1936 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 1230 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13 |
| 1182 | `opp_1m_var_first` | `[51, 1]` | r10000009/m29, r10000051/m29, r10000075/m29 |
| 857 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31 |
| 752 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13 |
| 670 | `opp_m1_var_first` | `[50, 2]` | r10000009/m47, r10000051/m47, r10000075/m47 |
| 624 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13 |
| 600 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7 |
| 584 | `eq_eq_pos_var_second` | `[0, 9]` | r10347/m25, r10347/m27, r10347/m29 |
| 577 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29 |
| 563 | `eq_eq_pos_var_first` | `[57, 0]` | r22680/m13, r22680/m29, r22682/m13 |
| 518 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47 |
| 515 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16 |
| 513 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13 |
| 512 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31 |
| 505 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22 |
| 485 | `eq_eq_pos_var_first` | `[161, 0]` | r857/m45, r857/m54, r857/m63 |

## Notes

- family-key union is diagnostic and not proof
- use this to choose whether to profile more windows or strengthen the quotient
