# Phase 6Z.6K.8AP.16DU.9DA Membership Compression Surface

This profile is planning telemetry only. It emits no Lean and is not
trusted as proof evidence.

- Status: `family-surface-promising`
- Range: `[0, 5000)`
- Identity ranks: `487`
- Nonidentity ranks: `4513`
- GoodDirection survivors: `4693`
- Not-GoodDirection masks: `26475`
- Source-index/state families: `125`
- Unique GoodDirection mask bitsets: `226`
- Unique rank -> family maps: `464`
- Largest rank-family-map class: `4`

## Histograms

### Good Masks Per Identity Rank

| Good masks | Identity ranks |
| ---: | ---: |
| 1 | 4 |
| 2 | 12 |
| 3 | 8 |
| 4 | 11 |
| 5 | 8 |
| 6 | 18 |
| 7 | 95 |
| 8 | 79 |
| 9 | 12 |
| 11 | 83 |
| 12 | 6 |
| 13 | 119 |
| 16 | 32 |

### Families Per Identity Rank

| Families | Identity ranks |
| ---: | ---: |
| 1 | 6 |
| 2 | 10 |
| 3 | 20 |
| 4 | 47 |
| 5 | 103 |
| 6 | 129 |
| 7 | 98 |
| 8 | 57 |
| 9 | 14 |
| 10 | 2 |
| 11 | 1 |

## Coordinate Rank-Map Compression

| Coordinate | Unique rank maps | Largest class |
| --- | ---: | ---: |
| `descriptor` | 464 | 4 |
| `template_source_indices_row_property` | 464 | 4 |
| `template_source_indices` | 464 | 4 |
| `template` | 460 | 4 |

## Cases By Template

| Template | GoodDirection cases |
| --- | ---: |
| `axis_a_only` | 27 |
| `eq_eq_neg_var_first` | 102 |
| `eq_eq_neg_var_second` | 14 |
| `eq_eq_pos_var_first` | 2046 |
| `eq_eq_pos_var_second` | 738 |
| `opp_1m_var_first` | 894 |
| `opp_1m_var_second` | 287 |
| `opp_m1_var_first` | 439 |
| `opp_m1_var_second` | 146 |

## Top Good Mask Bitsets

| Bitset | Identity ranks |
| --- | ---: |
| `0x80c0a000f1452300` | 24 |
| `0x80c0800071052300` | 6 |
| `0x80c02000d0452300` | 6 |
| `0x80c02000f1450200` | 6 |
| `0x8080a00071450300` | 6 |
| `0x8040a000f1042300` | 6 |
| `0x8040a000b0452300` | 6 |
| `0x00c0a000b1442300` | 6 |
| `0x0080808091c4a280` | 6 |
| `0x00c0a000d1452200` | 6 |
| `0x00808000f1452300` | 6 |
| `0x80c0a000e1410300` | 6 |

## Top Rank-Family Map Examples

| Signature | Rank count | Sample ranks |
| --- | ---: | --- |
| `1329f6aa15ed4489920f80977afdb11d364154216a7158f8b385fd0647b22550` | 4 | 3898, 3940, 4674, 4950 |
| `3124003279b87faca249a5371335bfa76a939346622c358530602a013bf6df00` | 3 | 3874, 3958, 4554 |
| `0631780dce47cd18ca68830ea015d3fdc794f85b7836223a865cc53da4296e15` | 2 | 1312, 1433 |
| `0fe99afdcc6d08617d90aae102c0730b3eb04584b9f75859d67170d2c7a471fc` | 2 | 2075, 2196 |
| `13237504c7bafb59510db76fb0fa87aa0fe29e46b20a5479707b8b37bcd3af5c` | 2 | 129, 369 |
| `1b26967764e34ba940b72ac9134d6e0fa455b230d32b2803512352be96f06525` | 2 | 654, 1215 |

## Decision

Generate a small bounded membership smoke that proves the descriptor coordinate from identity-linear plus GoodDirection for selected families, then measure Lean build cost.
