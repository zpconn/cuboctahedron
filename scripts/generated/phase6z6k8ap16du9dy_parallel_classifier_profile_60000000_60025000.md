# Phase 6Z.6K.8J Source-Index/State Computable Classifier Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
the rejected bounded replay surface with a GoodDirection-only reflected
classifier target over source-index/state families.

- Status: `accepted-next-smoke`
- Rank window: `[60000000, 60025000)`
- Jobs: `4`
- Pair words scanned: `25000`
- Identity words: `318`
- Nonidentity words: `24682`
- Translation sign assignments: `20352`
- Not-GoodDirection masks: `20237`
- GoodDirection survivors: `115`
- Covered two-source cases: `115`
- Source-index/state families: `32`
- Largest family: `31`

## Candidate Surfaces

| Candidate | Status | Obligations | Survivor branches | Bad-direction branches | Notes |
| --- | --- | ---: | ---: | ---: | --- |
| `bounded_replay_current` | `rejected` | 45034 | 115 | 20237 | This is the rejected Phase 6Z.6K.8I proof surface. It scales with concrete survivors plus bad-direction masks. It should not be used for production generated coverage. |
| `source_index_state_good_direction_classifier` | `accepted-next-smoke` | 32 | 0 | 0 | This surface removes concrete bad-direction contradictions from generated coverage. The final theorem should consume a GoodDirection premise and prove only GoodDirection cases. The next Lean smoke should prove a reflected descriptor classifier, not per-rank/mask membership. |
| `template_only_classifier` | `rejected` | 4 | 0 | 0 | Template id alone is too coarse: source indices and source checks are part of Applies. Keep template-only as a rejected lower bound, not a Lean target. template_count=4 |

## Top Source-Index/State Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 31 | `opp_1m_var_first` | `[18, 1]` | r60017164/m11, r60017318/m11, r60017326/m11, r60017329/m11, r60017446/m11 |
| 12 | `opp_1m_var_first` | `[175, 1]` | r60017164/m19, r60018214/m19, r60018223/m19, r60018271/m19, r60018283/m17 |
| 8 | `exact_two_source_valid` | `[15, 5]` | r60017479/m52, r60017872/m52, r60018175/m52, r60018175/m53, r60023149/m52 |
| 7 | `exact_two_source_valid` | `[15, 6]` | r60020101/m52, r60020101/m53, r60020281/m52, r60020281/m53, r60020341/m52 |
| 7 | `opp_1m_var_first` | `[28, 1]` | r60017316/m52, r60017318/m52, r60020101/m18, r60020281/m18, r60020341/m18 |
| 5 | `exact_two_source_valid` | `[16, 5]` | r60017863/m18, r60018859/m16, r60019039/m16, r60023533/m18, r60024259/m18 |
| 4 | `exact_two_source_valid` | `[15, 6]` | r60017251/m54, r60022921/m54, r60024181/m54, r60024259/m54 |
| 4 | `exact_two_source_valid` | `[49, 5]` | r60017251/m18, r60020161/m18, r60022921/m18, r60024181/m18 |
| 3 | `exact_two_source_valid` | `[22, 6]` | r60020170/m52, r60020509/m53, r60021235/m53 |
| 3 | `exact_two_source_valid` | `[14, 6]` | r60017863/m54, r60020161/m54, r60023533/m54 |
| 3 | `exact_two_source_valid` | `[14, 5]` | r60017164/m18, r60022834/m18, r60024094/m18 |
| 2 | `eq_eq_pos_var_first` | `[161, 0]` | r60017316/m11, r60022986/m11 |
| 2 | `exact_two_source_valid` | `[6, 13]` | r60020515/m52, r60020515/m53 |
| 2 | `exact_two_source_valid` | `[14, 6]` | r60018861/m6, r60019041/m6 |
| 2 | `exact_two_source_valid` | `[179, 5]` | r60017863/m52, r60023533/m52 |
| 2 | `exact_two_source_valid` | `[5, 12]` | r60018271/m18, r60018285/m16 |
| 2 | `exact_two_source_valid` | `[23, 6]` | r60017479/m43, r60023149/m43 |
| 2 | `opp_m1_var_first` | `[173, 2]` | r60018861/m16, r60019041/m16 |
| 1 | `eq_eq_pos_var_first` | `[115, 0]` | r60024259/m52 |
| 1 | `exact_two_source_valid` | `[94, 6]` | r60017446/m52 |

## Guarded Run

Command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4096 \
  --min-available-mib 16384 \
  --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du9dy_parallel_classifier_profile_60000000_60025000_guard.json \
  -- python3 scripts/profile_source_index_state_computable_classifier.py \
    --rank-start 60000000 \
    --limit 25000 \
    --jobs 4 \
    --max-rule-count 300 \
    --top-limit 20 \
    --json scripts/generated/phase6z6k8ap16du9dy_parallel_classifier_profile_60000000_60025000.json \
    --md scripts/generated/phase6z6k8ap16du9dy_parallel_classifier_profile_60000000_60025000.md
```

Result:

- Exit: `0`
- Elapsed: `13.01s`
- Peak tree RSS: `104.66 MiB`
- Minimum available memory observed: `46387.26 MiB`

Decision: accepted as a disjoint-window scaling sample.  This mid-space window
is much sparser than `[0,25000)`: it contains `318` identity words, `115`
GoodDirection survivors, and `32` source-index/state families.
