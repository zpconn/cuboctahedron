# Phase 6Z.6K.8D Source-Agreement Theorem Shapes

This diagnostic is not trusted as proof. It compares theorem surfaces
for closing the source-agreement part of `RowPropertyParametricCovered`
without carrying concrete facts inside `Applies`.

- Decision: `needs-source-index-lean-smoke`
- Chosen surface: `source_index_state_row_property`
- Rank window: `[0, 1000)`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Family gate: `200`
- Lean file emitted: `False`

## Surface Results

| Surface | Status | Families | Largest | Source unstable | Row unstable | Fact-free Applies |
| --- | --- | ---: | ---: | ---: | ---: | --- |
| `source_index_state_row_property` | `needs-formal-source-index-lean-smoke` | 74 | 421 | 0 | 0 | `False` |
| `source_agreement_row_property` | `needs-formal-source-agreement-partition-smoke` | 74 | 421 | 0 | 0 | `False` |

## Selected Families

### `source_index_state_row_property`

| Cases | Template | Source signatures | Row signatures | Exact-row signatures |
| ---: | --- | ---: | ---: | ---: |
| 421 | `eq_eq_pos_var_first` | 1 | 1 | 89 |
| 134 | `opp_1m_var_first` | 1 | 1 | 65 |
| 1 | `opp_1m_var_first` | 1 | 1 | 1 |

- the bounded surface is stable, but no fact-free Lean source-index predicate exists yet

### `source_agreement_row_property`

| Cases | Template | Source signatures | Row signatures | Exact-row signatures |
| ---: | --- | ---: | ---: | ---: |
| 421 | `eq_eq_pos_var_first` | 1 | 1 | 89 |
| 134 | `opp_1m_var_first` | 1 | 1 | 65 |
| 1 | `opp_1m_var_first` | 1 | 1 | 1 |

- the fallback partition is stable and small, but still needs a cheap semantic source predicate

## Decision Notes

- source-index/state is the preferred surface if a formal Lean predicate is added
- do not emit production coverage until that predicate proves SourceAgrees without carrying facts
