# Phase 6Z.6K.8Q Source-Index/State Fact Production Profile

This diagnostic is not trusted as proof and emits no Lean. It measures
whether descriptor-key facts can be split into reusable source-fact and
row-fact theorem obligations.

- Status: `accepted-next-lean-smoke`
- Rank window: `[0, 1000)`
- Source-index/state families: `74`
- GoodDirection cases: `1465`

## Obligation Counts

| Surface | Obligations |
| --- | ---: |
| explicit member replay | 1465 |
| descriptor key | 74 |
| source facts | 72 |
| row facts | 11 |
| source/row glue pairs | 74 |
| total split-fact obligations | 157 |

## Ambiguity

| Surface | Ambiguous groups | Ambiguous cases |
| --- | ---: | ---: |
| source facts alone | 1 | 9 |
| row facts alone | 8 | 1456 |

## Notes

- source and row facts can be stated independently
- descriptor glue remains necessary because row/source groups are ambiguous alone

## Top Row Groups

| Cases | Descriptor count | First descriptor |
| ---: | ---: | --- |
| 711 | 19 | `eq_eq_pos_var_first [23, 0]` |
| 240 | 8 | `eq_eq_pos_var_second [0, 7]` |
| 227 | 18 | `opp_1m_var_first [24, 1]` |
| 126 | 7 | `opp_m1_var_first [25, 2]` |
| 73 | 8 | `opp_1m_var_second [1, 7]` |
| 44 | 7 | `opp_m1_var_second [2, 7]` |
| 32 | 2 | `eq_eq_neg_var_first [26, 3]` |
| 4 | 1 | `axis_a_only [44, 5]` |
| 3 | 1 | `axis_a_only [44, 5]` |
| 3 | 2 | `eq_eq_neg_var_second [3, 11]` |
