# Phase 6Z.6K.8C Enriched Membership Smoke

This diagnostic is not trusted as proof. It checks whether enriched
membership coordinates can prove `RowPropertyParametricCovered` without
carrying concrete `SourceAgrees` and row-property facts inside the
family predicate.

- Decision: `reject-enriched-membership-coordinates`
- Rank window: `[0, 1000)`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Lean file emitted: `False`

## Coordinate Results

| Coordinate | Status | Families | Largest | Source unstable | Row unstable | Exact-row unstable |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `source_kind_impact_row_property` | `reject-ambiguous-membership-coordinate` | 33 | 421 | 16 | 0 | 31 |
| `source_pair_skeleton_row_property` | `reject-ambiguous-membership-coordinate` | 43 | 421 | 14 | 0 | 38 |

## Selected Representative Families

### `source_kind_impact_row_property`

| Cases | Template | Source signatures | Row signatures | Exact-row signatures |
| ---: | --- | ---: | ---: | ---: |
| 421 | `eq_eq_pos_var_first` | 1 | 1 | 89 |
| 240 | `eq_eq_pos_var_second` | 8 | 1 | 105 |
| 1 | `opp_m1_var_first` | 1 | 1 | 1 |

- some coordinate families contain multiple concrete source agreements
- some coordinate families contain multiple exact row shapes
- the coordinate does not determine the facts needed by RowPropertyParametricCovered

### `source_pair_skeleton_row_property`

| Cases | Template | Source signatures | Row signatures | Exact-row signatures |
| ---: | --- | ---: | ---: | ---: |
| 421 | `eq_eq_pos_var_first` | 1 | 1 | 89 |
| 240 | `eq_eq_pos_var_second` | 8 | 1 | 105 |
| 1 | `opp_1m_var_first` | 1 | 1 | 1 |

- some coordinate families contain multiple concrete source agreements
- some coordinate families contain multiple exact row shapes
- the coordinate does not determine the facts needed by RowPropertyParametricCovered

## Decision Notes

- neither enriched coordinate can currently prove RowPropertyParametricCovered without carrying concrete facts
- do not emit full Lean coverage from these coordinates
