# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
the rejected bounded replay surface with a GoodDirection-only reflected
classifier target over source-index/state families.

- Status: `accepted-next-smoke`
- Rank window: `[0, 25)`
- Pair words scanned: `25`
- Identity words: `8`
- Nonidentity words: `17`
- Translation sign assignments: `512`
- Not-GoodDirection masks: `416`
- GoodDirection survivors: `96`
- Covered two-source cases: `96`
- Source-index/state families: `18`
- Largest family: `33`

## Candidate Surfaces

| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |
| --- | --- | ---: | ---: | ---: | --- |
| `bounded_replay_current` | `rejected` | 529 | 96 | 416 | This is the rejected Phase 6Z.6K.8I proof surface. It scales with concrete survivors plus bad-direction masks. It should not be used for production generated coverage. |
| `source_index_state_good_direction_classifier` | `accepted-next-smoke` | 18 | 0 | 0 | This surface removes concrete bad-direction contradictions from generated coverage. The final theorem should consume a GoodDirection premise and prove only GoodDirection cases. The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership. |
| `template_only_classifier` | `rejected` | 7 | 0 | 0 | Template id alone is too coarse: source indices and source checks are part of Applies. Keep template-only as a rejected lower bound, not a Lean target. template_count=7 |

## Top Source-Index/State Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 33 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 22 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 8 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 7 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 4 | `opp_1m_var_first` | `[109, 1]` | r3/m28, r5/m28, r11/m28, r11/m61 |
| 4 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47, r24/m61 |
| 3 | `eq_eq_pos_var_first` | `[105, 0]` | r3/m30, r24/m22, r24/m30 |
| 3 | `opp_m1_var_second` | `[2, 13]` | r0/m45, r0/m47, r2/m47 |
| 2 | `eq_eq_pos_var_first` | `[167, 0]` | r0/m28, r9/m28 |
| 2 | `opp_1m_var_second` | `[1, 14]` | r9/m54, r9/m55 |
| 1 | `eq_eq_neg_var_first` | `[84, 3]` | r24/m28 |
| 1 | `eq_eq_pos_var_first` | `[147, 0]` | r5/m55 |
