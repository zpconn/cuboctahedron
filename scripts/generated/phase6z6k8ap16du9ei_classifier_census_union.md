# Phase 6Z.6K.8AP.16DU.9EI Classifier Census Union

This diagnostic is not trusted as proof. It summarizes family-key growth
across checkpointed source-index/state classifier census reports.

- Reports: `3`
- Sampled ranks: `325000`
- GoodDirection cases: `63642`
- Union families: `649`
- Projected Lean lines for this union family count: `24127`

## Report Growth

| Report | Phase | Ranks | GoodDirection | Families | New | Reused | Cumulative | Reuse |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `scripts/generated/phase6z6k8ap16du9ee_classifier_census_multiwindow.json` | `6Z.6K.8AP.16DU.9EE` | 175000 | 39338 | 405 | 405 | 0 | 405 | 0.00% |
| `scripts/generated/phase6z6k8ap16du9ef_classifier_census_density.json` | `6Z.6K.8AP.16DU.9EF` | 50000 | 7110 | 218 | 65 | 153 | 470 | 70.18% |
| `scripts/generated/phase6z6k8ap16du9eh_classifier_census_stratified.json` | `6Z.6K.8AP.16DU.9EH` | 100000 | 17194 | 427 | 179 | 248 | 649 | 58.08% |

## Top Union Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 11163 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16 |
| 4611 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54 |
| 2770 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 2726 | `eq_eq_pos_var_first` | `[52, 0]` | r10000075/m16, r10000083/m16, r10000085/m16 |
| 1600 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13 |
| 1182 | `opp_1m_var_first` | `[51, 1]` | r10000009/m29, r10000051/m29, r10000075/m29 |
| 1051 | `eq_eq_pos_var_second` | `[0, 5]` | r90008079/m51, r90008199/m51, r90009018/m49 |
| 987 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31 |
| 984 | `eq_eq_pos_var_second` | `[0, 9]` | r10347/m25, r10347/m27, r10347/m29 |
| 895 | `eq_eq_pos_var_first` | `[57, 0]` | r22680/m13, r22680/m29, r22682/m13 |
| 885 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13 |
| 808 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7 |
| 742 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13 |
| 734 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29 |
| 670 | `opp_m1_var_first` | `[50, 2]` | r10000009/m47, r10000051/m47, r10000075/m47 |
| 661 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31 |
| 652 | `eq_eq_pos_var_first` | `[161, 0]` | r857/m45, r857/m54, r857/m63 |
| 626 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47 |
| 616 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16 |
| 616 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22 |

## Notes

- family-key union is diagnostic and not proof
- use this to choose whether to profile more windows or strengthen the quotient
