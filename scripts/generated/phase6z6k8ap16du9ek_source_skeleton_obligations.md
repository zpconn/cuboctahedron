# Phase 6Z.6K.8AP.16DU.9EK Source-Skeleton Obligations

This diagnostic is not trusted as proof. It groups checkpointed
source-index/state classifier families by `template + source skeletons +
row property`, then reports what concrete source-index variation remains
inside those quotient groups.

- Reports: `3`
- Concrete families: `649`
- GoodDirection cases represented: `63642`
- Source-skeleton quotient groups: `138`
- Groups with multiple source-index pairs: `112`
- Cases in multi-source-index-pair groups: `63498`
- Max source-index pairs per group: `20`
- Median source-index pairs per group: `4.0`

## Distribution

| Source-index pairs per group | Groups |
| ---: | ---: |
| 1 | 26 |
| 2 | 27 |
| 3 | 13 |
| 4 | 13 |
| 5 | 9 |
| 6 | 14 |
| 7 | 12 |
| 8 | 6 |
| 9 | 2 |
| 10 | 4 |
| 11 | 6 |
| 12 | 2 |
| 13 | 1 |
| 16 | 1 |
| 20 | 2 |

## Groups By Template

| Template | Groups |
| --- | ---: |
| `exact_two_source_valid` | 46 |
| `axis_a_only` | 20 |
| `axis_b_only` | 16 |
| `eq_eq_pos_var_first` | 13 |
| `opp_1m_var_first` | 13 |
| `opp_m1_var_first` | 13 |
| `eq_eq_neg_var_first` | 13 |
| `eq_eq_pos_var_second` | 1 |
| `opp_1m_var_second` | 1 |
| `opp_m1_var_second` | 1 |
| `eq_eq_neg_var_second` | 1 |

## Largest Multi-Index Obligations

| Cases | Source-index pairs | Template | Source skeletons | Top source-index pairs |
| ---: | ---: | --- | --- | --- |
| 11573 | 4 | `eq_eq_pos_var_first` | `["{\"impact\": \"1\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(23,0):11163, (19,0):350, (18,0):51, (27,0):9` |
| 7287 | 11 | `eq_eq_pos_var_second` | `["{\"impact\": \"index:0\", \"kind\": \"xpStart\"}", "{\"impact\": \"none\", \"kind\": \"ordering\"}"]` | `(0,5):1051, (0,9):984, (0,15):885, (0,10):808, (0,13):742, (0,11):734` |
| 4784 | 4 | `opp_1m_var_first` | `["{\"impact\": \"1\", \"kind\": \"interior\"}", "{\"impact\": \"index:1\", \"kind\": \"xpStart\"}"]` | `(24,1):4611, (18,1):127, (28,1):33, (19,1):13` |
| 3770 | 5 | `eq_eq_pos_var_first` | `["{\"impact\": \"3\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(52,0):2726, (44,0):490, (48,0):323, (47,0):124, (53,0):107` |
| 3032 | 11 | `opp_1m_var_second` | `["{\"impact\": \"index:1\", \"kind\": \"xpStart\"}", "{\"impact\": \"none\", \"kind\": \"ordering\"}"]` | `(1,15):525, (1,10):422, (1,13):348, (1,12):333, (1,11):323, (1,14):316` |
| 2799 | 4 | `opp_m1_var_first` | `["{\"impact\": \"1\", \"kind\": \"interior\"}", "{\"impact\": \"index:2\", \"kind\": \"xpStart\"}"]` | `(25,2):2770, (29,2):18, (19,2):8, (18,2):3` |
| 2405 | 8 | `eq_eq_pos_var_first` | `["{\"impact\": \"5\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(70,0):1600, (75,0):289, (71,0):225, (79,0):122, (77,0):82, (78,0):76` |
| 2044 | 11 | `opp_m1_var_second` | `["{\"impact\": \"index:2\", \"kind\": \"xpStart\"}", "{\"impact\": \"none\", \"kind\": \"ordering\"}"]` | `(2,15):291, (2,13):250, (2,10):227, (2,8):226, (2,11):222, (2,12):217` |
| 1731 | 6 | `eq_eq_pos_var_first` | `["{\"impact\": \"4\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(57,0):895, (58,0):401, (63,0):283, (69,0):76, (61,0):67, (66,0):9` |
| 1678 | 6 | `opp_1m_var_first` | `["{\"impact\": \"3\", \"kind\": \"interior\"}", "{\"impact\": \"index:1\", \"kind\": \"xpStart\"}"]` | `(51,1):1182, (54,1):176, (47,1):130, (44,1):104, (45,1):61, (53,1):25` |
| 1506 | 9 | `eq_eq_pos_var_first` | `["{\"impact\": \"6\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(83,0):987, (84,0):131, (94,0):118, (93,0):84, (90,0):56, (95,0):53` |
| 1441 | 7 | `eq_eq_pos_var_first` | `["{\"impact\": \"12\", \"kind\": \"interior\"}", "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"]` | `(161,0):652, (162,0):500, (167,0):121, (172,0):79, (171,0):66, (168,0):20` |

## Interpretation

The source-skeleton quotient is promising only if Lean can prove that
concrete list positions are incidental: for a fixed source skeleton pair,
row property, and template, the selected rows still satisfy the same
semantic contradiction.  The generated theorem surface should therefore
target a fact like:

```lean
sourceSkeletonFacts + rowNormalFormFacts -> RowPropertyParametricCovered r mask
```

not a theorem keyed by concrete `firstIndex` and `secondIndex`.

## Notes

- source-skeleton quotient groups are not proof obligations by themselves
- a Lean bridge must replace concrete list indices by semantic source skeleton facts
- if skeleton facts cannot determine SourceChecks and row predicates, refine with row-normal-form data before returning to concrete source indices
