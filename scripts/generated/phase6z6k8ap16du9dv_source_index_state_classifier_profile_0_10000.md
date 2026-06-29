# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
the rejected bounded replay surface with a GoodDirection-only reflected
classifier target over source-index/state families.

- Status: `accepted-next-smoke`
- Rank window: `[0, 10000)`
- Pair words scanned: `10000`
- Identity words: `712`
- Nonidentity words: `9288`
- Translation sign assignments: `45568`
- Not-GoodDirection masks: `39179`
- GoodDirection survivors: `6389`
- Covered two-source cases: `6389`
- Source-index/state families: `146`
- Largest family: `1709`

## Candidate Surfaces

| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |
| --- | --- | ---: | ---: | ---: | --- |
| `bounded_replay_current` | `rejected` | 54856 | 6389 | 39179 | This is the rejected Phase 6Z.6K.8I proof surface. It scales with concrete survivors plus bad-direction masks. It should not be used for production generated coverage. |
| `source_index_state_good_direction_classifier` | `accepted-next-smoke` | 146 | 0 | 0 | This surface removes concrete bad-direction contradictions from generated coverage. The final theorem should consume a GoodDirection premise and prove only GoodDirection cases. The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership. |
| `template_only_classifier` | `rejected` | 9 | 0 | 0 | Template id alone is too coarse: source indices and source checks are part of Applies. Keep template-only as a rejected lower bound, not a Lean target. template_count=9 |

## Top Source-Index/State Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 1709 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 668 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 426 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47, r24/m61, r42/m45 |
| 346 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 161 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 128 | `eq_eq_pos_var_first` | `[70, 0]` | r8220/m13, r8220/m29, r8222/m13, r8222/m29, r8244/m13 |
| 127 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7, r561/m7, r582/m7 |
| 125 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13, r177/m22, r315/m13 |
| 116 | `opp_1m_var_first` | `[70, 1]` | r3179/m29, r3180/m63, r3182/m29, r3182/m63, r3190/m63 |
| 95 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13, r125/m22, r125/m29 |
| 91 | `eq_eq_neg_var_first` | `[26, 3]` | r137/m7, r185/m7, r251/m7, r263/m7, r269/m7 |
| 83 | `eq_eq_pos_var_second` | `[0, 12]` | r600/m47, r600/m55, r605/m47, r605/m55, r657/m22 |
| 82 | `opp_1m_var_first` | `[83, 1]` | r633/m28, r633/m63, r639/m25, r641/m25, r641/m61 |
| 81 | `eq_eq_pos_var_second` | `[0, 14]` | r147/m8, r147/m9, r387/m16, r387/m18, r501/m8 |
| 78 | `eq_eq_pos_var_first` | `[109, 0]` | r810/m22, r810/m30, r810/m31, r810/m55, r812/m30 |
| 74 | `eq_eq_pos_var_first` | `[96, 0]` | r617/m22, r624/m13, r630/m22, r630/m30, r635/m22 |
| 73 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29, r62/m31, r65/m13 |
| 72 | `opp_1m_var_second` | `[1, 15]` | r27/m28, r59/m54, r59/m55, r84/m28, r89/m45 |
| 72 | `opp_1m_var_second` | `[1, 7]` | r3/m63, r45/m63, r60/m63, r78/m63, r129/m39 |
| 67 | `opp_m1_var_first` | `[71, 2]` | r3190/m62, r3195/m30, r3199/m30, r3230/m30, r3237/m30 |

## Guarded Run

Command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du9dv_source_index_state_classifier_profile_0_10000_guard.json \
  -- python3 scripts/profile_source_index_state_computable_classifier.py \
    --rank-start 0 \
    --limit 10000 \
    --max-rule-count 300 \
    --top-limit 20 \
    --json scripts/generated/phase6z6k8ap16du9dv_source_index_state_classifier_profile_0_10000.json \
    --md scripts/generated/phase6z6k8ap16du9dv_source_index_state_classifier_profile_0_10000.md
```

Result:

- Exit: `0`
- Elapsed: `240.27s`
- Peak tree RSS: `79.78 MiB`
- Minimum available memory observed: `42830.22 MiB`

Decision: accepted as a classifier-scaling diagnostic.  The source-index/state
GoodDirection classifier remains below the 300-family gate on `[0,10000)`, but
the serial profiler runtime is already high enough that larger windows should
use a parallel profiler before further scaling.
