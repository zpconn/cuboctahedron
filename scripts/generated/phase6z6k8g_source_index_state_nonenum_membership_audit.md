# Phase 6Z.6K.8G Source-Index/State Non-Enumerative Membership Audit

This diagnostic is not trusted as proof. It audits whether bounded
source-index/state membership can be represented without rank/mask
member enumeration.

- Decision: `needs-nonenum-lean-smoke`
- Chosen candidate: `source_index_state`
- Rank window: `[0, 1000)`
- Pair words scanned: `1000`
- Identity words: `138`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Uncovered/non-two-source cases: `0`

## Candidate Results

| Candidate | Families | Largest | Source unstable | Row unstable | Exact-row unstable | Fact-free | Member-list-free | Gate |
| --- | ---: | ---: | ---: | ---: | ---: | --- | --- | --- |
| `source_index_state` | 74 | 421 | 0 | 0 | 59 | `True` | `True` | `True` |
| `prefix_count_state_row_property` | 74 | 421 | 10 | 0 | 45 | `True` | `True` | `False` |
| `source_pair_sign_skeleton_row_property` | 53 | 421 | 4 | 0 | 40 | `True` | `True` | `False` |
| `source_pair_skeleton_row_property` | 43 | 421 | 14 | 0 | 38 | `True` | `True` | `False` |
| `source_kind_impact_row_property` | 33 | 421 | 16 | 0 | 31 | `True` | `True` | `False` |
| `source_kind_row_property` | 11 | 711 | 8 | 0 | 10 | `True` | `True` | `False` |
| `local_word_window_row_property` | 151 | 348 | 11 | 0 | 70 | `True` | `True` | `False` |

## Decision Notes

- source_index_state is stable, fact-free, and member-list-free in the bounded window
- next step should prove a small Lean smoke for this predicate without enumerating members

## Top Families for Chosen Candidate

| Cases | Template | Source signatures | Row signatures | Exact-row signatures | Samples |
| ---: | --- | ---: | ---: | ---: | --- |
| 421 | `eq_eq_pos_var_first` | 1 | 1 | 89 | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 134 | `opp_1m_var_first` | 1 | 1 | 65 | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 128 | `eq_eq_pos_var_first` | 1 | 1 | 25 | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 102 | `opp_m1_var_first` | 1 | 1 | 52 | r3/m45, r5/m45, r5/m47, r24/m61, r42/m45 |
| 79 | `eq_eq_pos_var_second` | 1 | 1 | 11 | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 44 | `opp_1m_var_first` | 1 | 1 | 18 | r633/m28, r633/m63, r639/m25, r641/m25, r641/m61 |
| 30 | `eq_eq_pos_var_second` | 1 | 1 | 24 | r123/m13, r123/m22, r125/m13, r125/m22, r125/m29 |
| 29 | `eq_eq_pos_var_second` | 1 | 1 | 21 | r129/m22, r129/m31, r177/m13, r177/m22, r315/m13 |
| 23 | `eq_eq_pos_var_second` | 1 | 1 | 11 | r60/m22, r62/m22, r62/m29, r62/m31, r65/m13 |
| 22 | `eq_eq_pos_var_second` | 1 | 1 | 10 | r498/m7, r501/m23, r519/m7, r561/m7, r582/m7 |
