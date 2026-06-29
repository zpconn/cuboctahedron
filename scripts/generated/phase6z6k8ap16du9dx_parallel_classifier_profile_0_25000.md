# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
the rejected bounded replay surface with a GoodDirection-only reflected
classifier target over source-index/state families.

- Status: `accepted-next-smoke`
- Rank window: `[0, 25000)`
- Jobs: `4`
- Pair words scanned: `25000`
- Identity words: `1423`
- Nonidentity words: `23577`
- Translation sign assignments: `91072`
- Not-GoodDirection masks: `79545`
- GoodDirection survivors: `11527`
- Covered two-source cases: `11527`
- Source-index/state families: `177`
- Largest family: `3036`

## Candidate Surfaces

| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |
| --- | --- | ---: | ---: | ---: | --- |
| `bounded_replay_current` | `rejected` | 114649 | 11527 | 79545 | This is the rejected Phase 6Z.6K.8I proof surface. It scales with concrete survivors plus bad-direction masks. It should not be used for production generated coverage. |
| `source_index_state_good_direction_classifier` | `accepted-next-smoke` | 177 | 0 | 0 | This surface removes concrete bad-direction contradictions from generated coverage. The final theorem should consume a GoodDirection premise and prove only GoodDirection cases. The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership. |
| `template_only_classifier` | `rejected` | 9 | 0 | 0 | Template id alone is too coarse: source indices and source checks are part of Applies. Keep template-only as a rejected lower bound, not a Lean target. template_count=9 |

## Top Source-Index/State Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 3036 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 1287 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 661 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47, r24/m61, r42/m45 |
| 513 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 260 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 247 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13, r8222/m29, r8244/m13 |
| 219 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13, r177/m22, r315/m13 |
| 192 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7, r561/m7, r582/m7 |
| 168 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13, r125/m22, r125/m29 |
| 154 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47, r605/m55, r657/m22 |
| 151 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29, r62/m31, r65/m13 |
| 149 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16, r387/m18, r501/m8 |
| 143 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31, r810/m55, r812/m30 |
| 135 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22, r630/m30, r635/m22 |
| 133 | `eq_eq_pos_var_first` | `[161, 0]` | r857/m45, r857/m54, r857/m63, r869/m47, r869/m55 |
| 130 | `eq_eq_pos_var_first` | `[71, 0]` | r13458/m31, r13463/m31, r13509/m31, r13511/m31, r13527/m31 |
| 126 | `eq_eq_neg_var_first` | `[26, 3]` | r137/m7, r185/m7, r251/m7, r263/m7, r269/m7 |
| 121 | `opp_1m_var_first` | `[70, 1]` | r3179/m29, r3180/m63, r3182/m29, r3182/m63, r3190/m63 |
| 120 | `opp_1m_var_second` | `[1, 7]` | r3/m63, r45/m63, r60/m63, r78/m63, r129/m39 |
| 111 | `opp_1m_var_first` | `[83, 1]` | r633/m28, r633/m63, r639/m25, r641/m25, r641/m61 |

## Guarded Run

Command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4096 \
  --min-available-mib 16384 \
  --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du9dx_parallel_classifier_profile_0_25000_guard.json \
  -- python3 scripts/profile_source_index_state_computable_classifier.py \
    --rank-start 0 \
    --limit 25000 \
    --jobs 4 \
    --max-rule-count 300 \
    --top-limit 20 \
    --json scripts/generated/phase6z6k8ap16du9dx_parallel_classifier_profile_0_25000.json \
    --md scripts/generated/phase6z6k8ap16du9dx_parallel_classifier_profile_0_25000.md
```

Result:

- Exit: `0`
- Elapsed: `72.06s`
- Peak tree RSS: `160.59 MiB`
- Minimum available memory observed: `46296.13 MiB`

Decision: accepted as the next bounded parallel scaling smoke.  Compared with
the `[0,10000)` checkpoint, the window grows 2.5x while source-index/state
families grow from `146` to `177`, and peak RSS remains below `161 MiB`.
