# Phase 6Z.6K.8B Source-Kind Membership Smoke

This generated smoke is not production coverage. It checks whether the
`source_kind_row_property` coordinate has a useful Lean interface.

- Decision: `interface-only-source-kind`
- Rank window: `[0, 1000)`
- Selected families: `3`

## Selected Families

| Family key | Cases | Template | Source kinds |
| --- | ---: | --- | --- |
| `275a8c6e355659afe955918277d524438e785d419ceceeae937fa060290b9734` | 711 | `eq_eq_pos_var_first` | `interior -> xpStart` |
| `9f4152d21342c1684f1829b586a4cdff09186e05d8c029643c20aa601fa1c478` | 240 | `eq_eq_pos_var_second` | `xpStart -> ordering` |
| `dc273dda7321ad8928cd5014ac39f2932da81d69cb1f07d2e50b34aaede94fe0` | 2 | `axis_a_only` | `interior -> ordering` |

## Decision Notes

- the smoke tests the source-kind family interface
- the witness predicate still contains SourceAgrees and row-property facts
- do not scale source_kind_row_property until a later phase proves those facts from source kind alone or enriches the coordinate
