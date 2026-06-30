# Phase 6Z.6K.8Q Source-Index/State Fact Production Profile

This diagnostic is not trusted as proof and emits no Lean. It measures
whether descriptor-key facts can be split into reusable source-fact and
row-fact theorem obligations.

- Status: `accepted-next-lean-smoke`
- Rank window: `[896, 960)`
- Source key surface: `kind_impact`
- Source-index/state families: `19`
- GoodDirection cases: `75`

## Obligation Counts

| Surface | Obligations |
| --- | ---: |
| explicit member replay | 75 |
| descriptor key | 19 |
| source facts | 19 |
| row facts | 7 |
| source/row glue pairs | 19 |
| total split-fact obligations | 45 |

## Ambiguity

| Surface | Ambiguous groups | Ambiguous cases |
| --- | ---: | ---: |
| source facts alone | 0 | 0 |
| row facts alone | 5 | 72 |

## Notes

- source and row facts can be stated independently
- descriptor glue remains necessary because row/source groups are ambiguous alone

## Top Row Groups

| Cases | Descriptor count | First descriptor |
| ---: | ---: | --- |
| 34 | 7 | `eq_eq_pos_var_first [23, 0]` |
| 13 | 2 | `eq_eq_pos_var_second [0, 7]` |
| 12 | 2 | `opp_1m_var_first [24, 1]` |
| 8 | 3 | `opp_m1_var_first [84, 2]` |
| 5 | 3 | `opp_1m_var_second [1, 14]` |
| 2 | 1 | `eq_eq_neg_var_first [26, 3]` |
| 1 | 1 | `axis_a_only [44, 5]` |
