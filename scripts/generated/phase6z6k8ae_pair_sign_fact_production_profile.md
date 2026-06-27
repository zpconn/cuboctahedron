# Phase 6Z.6K.8Q Source-Index/State Fact Production Profile

This diagnostic is not trusted as proof and emits no Lean. It measures
whether descriptor-key facts can be split into reusable source-fact and
row-fact theorem obligations.

- Status: `needs-smaller-fact-surface`
- Rank window: `[10000000, 10002500)`
- Source key surface: `pair_sign`
- Source-index/state families: `136`
- GoodDirection cases: `2069`

## Obligation Counts

| Surface | Obligations |
| --- | ---: |
| explicit member replay | 2069 |
| descriptor key | 136 |
| source facts | 135 |
| row facts | 19 |
| source/row glue pairs | 136 |
| total split-fact obligations | 290 |

## Ambiguity

| Surface | Ambiguous groups | Ambiguous cases |
| --- | ---: | ---: |
| source facts alone | 1 | 15 |
| row facts alone | 14 | 2056 |

## Notes

- source and row facts can be stated independently
- descriptor glue remains necessary because row/source groups are ambiguous alone
- obligation count exceeds gate 200

## Top Row Groups

| Cases | Descriptor count | First descriptor |
| ---: | ---: | --- |
| 901 | 27 | `eq_eq_pos_var_first [52, 0]` |
| 373 | 25 | `opp_1m_var_first [51, 1]` |
| 245 | 17 | `opp_m1_var_first [50, 2]` |
| 199 | 7 | `eq_eq_pos_var_second [0, 11]` |
| 119 | 6 | `opp_1m_var_second [1, 15]` |
| 112 | 6 | `opp_m1_var_second [2, 10]` |
| 47 | 10 | `eq_eq_neg_var_first [49, 3]` |
| 14 | 3 | `exact_two_source_valid [5, 8]` |
| 13 | 8 | `exact_two_source_valid [5, 8]` |
| 11 | 5 | `eq_eq_neg_var_second [3, 11]` |
