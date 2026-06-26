# Phase 6Z.6K.8A Row-Property Membership Signatures

This diagnostic is not trusted as proof. It profiles candidate
state/signature coordinates for proving `RowPropertyParametricCovered`
without per-rank row reconstruction.

- Rank window: `[0, 1000)`
- Pair words scanned: `1000`
- Identity words: `138`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Uncovered/non-two-source cases: `0`
- Family gate: `200`

## Decision

- Status: `needs-targeted-lean-pilot`
- Best pilot coordinate: `source_kind_row_property` with `11` families
- a non-exact membership coordinate is below the configured family gate
- next step should prove a small Lean smoke for that coordinate before scaling

## Coordinate Counts

| Coordinate | Families | Largest | Mean cases/family | Role |
| --- | ---: | ---: | ---: | --- |
| `theorem_constructor` | 9 | 711 | 162.78 | baseline |
| `row_property_parametric` | 11 | 711 | 133.18 | baseline |
| `source_kind_row_property` | 11 | 711 | 133.18 | pilot |
| `source_kind_impact_row_property` | 33 | 421 | 44.39 | pilot |
| `source_pair_skeleton_row_property` | 43 | 421 | 34.07 | pilot |
| `source_pair_sign_skeleton_row_property` | 53 | 421 | 27.64 | pilot |
| `source_agreement` | 72 | 421 | 20.35 | baseline |
| `prefix_count_state_row_property` | 74 | 421 | 19.80 | pilot |
| `source_index_row_property` | 74 | 421 | 19.80 | pilot |
| `source_row_property` | 74 | 421 | 19.80 | baseline |
| `local_word_window_row_property` | 151 | 348 | 9.70 | pilot |
| `exact_row_shape` | 574 | 53 | 2.55 | baseline |
