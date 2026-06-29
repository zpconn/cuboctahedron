# Phase 6Z.6K.8AP.16DU.9AJ row-property semantics audit

This report is not proof evidence. It reconstructs the semantic row
payload behind each bounded DU.9 `RowPropertyDigest`.

- Status: `row-property-digests-match-semantic-payloads`
- Range: `[0, 5000)`
- Source-index/state families: `125`
- Row-property digests: `12`
- Digest mismatches: `0`
- Nonsemantic payloads: `0`

## Template Digest Counts

| Template | Digest count |
| --- | ---: |
| `axis_a_only` | `4` |
| `eq_eq_neg_var_first` | `1` |
| `eq_eq_neg_var_second` | `1` |
| `eq_eq_pos_var_first` | `1` |
| `eq_eq_pos_var_second` | `1` |
| `opp_1m_var_first` | `1` |
| `opp_1m_var_second` | `1` |
| `opp_m1_var_first` | `1` |
| `opp_m1_var_second` | `1` |

## Top Role Shapes

| Template | First role | Second role | Cases |
| --- | --- | --- | ---: |
| `eq_eq_pos_var_first` | `eq_eq_pos` | `fixed(1,1)` | `2046` |
| `opp_1m_var_first` | `opp_pos` | `fixed(1,-1)` | `894` |
| `eq_eq_pos_var_second` | `fixed(1,1)` | `eq_eq_pos` | `738` |
| `opp_m1_var_first` | `opp_neg` | `fixed(-1,1)` | `439` |
| `opp_1m_var_second` | `fixed(1,-1)` | `opp_pos` | `287` |
| `opp_m1_var_second` | `fixed(-1,1)` | `opp_neg` | `146` |
| `eq_eq_neg_var_first` | `eq_eq_neg` | `fixed(-1,-1)` | `102` |
| `axis_a_only` | `axis_a_only:pos` | `axis_a_only:neg` | `14` |
| `eq_eq_neg_var_second` | `fixed(-1,-1)` | `eq_eq_neg` | `14` |
| `axis_a_only` | `axis_a_only:neg` | `axis_a_only:pos` | `13` |

## Decision

The digest is a profiling label for a small row-property payload: row
roles plus the weighted Farkas facts. The next theorem surface should
make those row-property predicates explicit in Lean and use them to
produce `SourceIndexStateRowFacts` or `SourceIndexTemplate.Rows`.
