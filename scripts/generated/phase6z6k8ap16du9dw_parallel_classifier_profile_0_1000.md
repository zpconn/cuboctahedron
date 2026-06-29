# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
the rejected bounded replay surface with a GoodDirection-only reflected
classifier target over source-index/state families.

- Status: `accepted-next-smoke`
- Rank window: `[0, 1000)`
- Jobs: `4`
- Pair words scanned: `1000`
- Identity words: `138`
- Nonidentity words: `862`
- Translation sign assignments: `8832`
- Not-GoodDirection masks: `7367`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Source-index/state families: `74`
- Largest family: `421`

## Candidate Surfaces

| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |
| --- | --- | ---: | ---: | ---: | --- |
| `bounded_replay_current` | `rejected` | 9694 | 1465 | 7367 | This is the rejected Phase 6Z.6K.8I proof surface. It scales with concrete survivors plus bad-direction masks. It should not be used for production generated coverage. |
| `source_index_state_good_direction_classifier` | `accepted-next-smoke` | 74 | 0 | 0 | This surface removes concrete bad-direction contradictions from generated coverage. The final theorem should consume a GoodDirection premise and prove only GoodDirection cases. The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership. |
| `template_only_classifier` | `rejected` | 9 | 0 | 0 | Template id alone is too coarse: source indices and source checks are part of Applies. Keep template-only as a rejected lower bound, not a Lean target. template_count=9 |

## Top Source-Index/State Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 421 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 134 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 128 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 102 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47, r24/m61, r42/m45 |
| 79 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 44 | `opp_1m_var_first` | `[83, 1]` | r633/m28, r633/m63, r639/m25, r641/m25, r641/m61 |
| 30 | `eq_eq_pos_var_second` | `[0, 13]` | r123/m13, r123/m22, r125/m13, r125/m22, r125/m29 |
| 29 | `eq_eq_pos_var_second` | `[0, 15]` | r129/m22, r129/m31, r177/m13, r177/m22, r315/m13 |
| 23 | `eq_eq_pos_var_second` | `[0, 11]` | r60/m22, r62/m22, r62/m29, r62/m31, r65/m13 |
| 22 | `eq_eq_neg_var_first` | `[26, 3]` | r137/m7, r185/m7, r251/m7, r263/m7, r269/m7 |
| 22 | `eq_eq_pos_var_second` | `[0, 10]` | r498/m7, r501/m23, r519/m7, r561/m7, r582/m7 |
| 21 | `eq_eq_pos_var_first` | `[183, 0]` | r149/m39, r149/m47, r185/m45, r185/m47, r209/m7 |

## Guarded Run

Command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4096 \
  --min-available-mib 16384 \
  --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du9dw_parallel_classifier_profile_0_1000_guard.json \
  -- python3 scripts/profile_source_index_state_computable_classifier.py \
    --rank-start 0 \
    --limit 1000 \
    --jobs 4 \
    --max-rule-count 100 \
    --top-limit 12 \
    --json scripts/generated/phase6z6k8ap16du9dw_parallel_classifier_profile_0_1000.json \
    --md scripts/generated/phase6z6k8ap16du9dw_parallel_classifier_profile_0_1000.md
```

Result:

- Exit: `0`
- Elapsed: `7.00s`
- Peak tree RSS: `115.74 MiB`
- Minimum available memory observed: `46346 MiB`

Decision: accepted as the parallel parity smoke.  It reproduces the known
`[0,1000)` 74-family result while using the new jobs-aware aggregate collector.
