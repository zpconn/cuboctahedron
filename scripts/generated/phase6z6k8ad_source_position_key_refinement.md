# Phase 6Z.6K.8AD Source-Position Key Refinement Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
source-position key surfaces after Phase 8AC found a concrete face
variation inside the older kind/impact source key.

- Status: `accepted-refined-source-key-candidate`
- Preferred surface: `pair_sign`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`

## Aggregate

| Surface | Max descriptor signatures | Max source-position signatures | Max source occurrences | Validation failures |
| --- | ---: | ---: | ---: | ---: |
| `kind_impact` | 135 | 134 | 89 | 1 |
| `pair` | 135 | 134 | 89 | 1 |
| `pair_sign` | 136 | 135 | 90 | 0 |
| `full_source` | 136 | 135 | 90 | 0 |

## Windows

| Range | Surface | GoodDirection cases | Descriptor | Source-position | Source occurrences | Failures |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `[0, 5000]` | `kind_impact` | 4693 | 125 | 122 | 72 | 0 |
| `[0, 5000]` | `pair` | 4693 | 125 | 122 | 72 | 0 |
| `[0, 5000]` | `pair_sign` | 4693 | 125 | 122 | 72 | 0 |
| `[0, 5000]` | `full_source` | 4693 | 125 | 122 | 72 | 0 |
| `[100000, 102500]` | `kind_impact` | 296 | 37 | 36 | 35 | 0 |
| `[100000, 102500]` | `pair` | 296 | 37 | 36 | 35 | 0 |
| `[100000, 102500]` | `pair_sign` | 296 | 37 | 36 | 35 | 0 |
| `[100000, 102500]` | `full_source` | 296 | 37 | 36 | 35 | 0 |
| `[1000000, 1002500]` | `kind_impact` | 50 | 12 | 12 | 16 | 0 |
| `[1000000, 1002500]` | `pair` | 50 | 12 | 12 | 16 | 0 |
| `[1000000, 1002500]` | `pair_sign` | 50 | 12 | 12 | 16 | 0 |
| `[1000000, 1002500]` | `full_source` | 50 | 12 | 12 | 16 | 0 |
| `[10000000, 10002500]` | `kind_impact` | 2069 | 135 | 134 | 89 | 1 |
| `[10000000, 10002500]` | `pair` | 2069 | 135 | 134 | 89 | 1 |
| `[10000000, 10002500]` | `pair_sign` | 2069 | 136 | 135 | 90 | 0 |
| `[10000000, 10002500]` | `full_source` | 2069 | 136 | 135 | 90 | 0 |
| `[30000000, 30002500]` | `kind_impact` | 0 | 0 | 0 | 0 | 0 |
| `[30000000, 30002500]` | `pair` | 0 | 0 | 0 | 0 | 0 |
| `[30000000, 30002500]` | `pair_sign` | 0 | 0 | 0 | 0 | 0 |
| `[30000000, 30002500]` | `full_source` | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | `kind_impact` | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | `pair` | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | `pair_sign` | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | `full_source` | 0 | 0 | 0 | 0 | 0 |
| `[90000000, 90002500]` | `kind_impact` | 4 | 1 | 1 | 2 | 0 |
| `[90000000, 90002500]` | `pair` | 4 | 1 | 1 | 2 | 0 |
| `[90000000, 90002500]` | `pair_sign` | 4 | 1 | 1 | 2 | 0 |
| `[90000000, 90002500]` | `full_source` | 4 | 1 | 1 | 2 | 0 |

## Failure Samples

- `[10000000, 10002500]` `kind_impact` `source-varies-within-occurrence-group` rank `10001513` mask `15`
- `[10000000, 10002500]` `pair` `source-varies-within-occurrence-group` rank `10001513` mask `15`

## Notes

- preferred zero-failure key surface is pair_sign
- profile emits no Lean and is not trusted as proof
