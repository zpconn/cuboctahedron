# Phase 6Z.6K.8AF Pair-Sign Descriptor/Glue Compression Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
whether the refined pair-sign descriptor/glue layer merges across
representative windows or still behaves like a growing edge set.

- Status: `accepted-generic-glue-candidate`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- Total represented GoodDirection cases: `7112`
- Validation failures: `0`
- Descriptor reuse ratio: `1.595`

## Union Signature Counts

| Signature surface | Union count |
| --- | ---: |
| descriptor / current glue edge | 195 |
| source-position producer | 191 |
| row-template producer | 21 |
| source skeleton without indices | 149 |
| source index pair only | 189 |
| descriptor without source indices | 159 |
| descriptor without source skeletons | 193 |
| source/row edge | 195 |

## Projected Obligation Surfaces

| Surface | Obligations |
| --- | ---: |
| current descriptor/glue edges | 195 |
| fact producers only | 212 |
| source/row edges plus fact producers | 407 |
| generic glue plus descriptor membership | 195 |

## Windows

| Range | GoodDirection cases | Descriptor | Source | Row | Source/row edges | No-index descriptor | Validation failures |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 4693 | 125 | 122 | 12 | 125 | 99 | 0 |
| `[100000, 102500]` | 296 | 37 | 36 | 8 | 37 | 29 | 0 |
| `[1000000, 1002500]` | 50 | 12 | 12 | 4 | 12 | 12 | 0 |
| `[10000000, 10002500]` | 2069 | 136 | 135 | 19 | 136 | 110 | 0 |
| `[30000000, 30002500]` | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| `[90000000, 90002500]` | 4 | 1 | 1 | 1 | 1 | 1 | 0 |

## Notes

- pair-sign validation remained clean
- generic source-row composition can remove per-descriptor composition theorems, but coverage still needs descriptor membership unless a state-language classifier replaces it
