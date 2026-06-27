# Phase 6Z.6K.8AB Source-Position Applicability Scaling Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
whether the Phase 8AA source-position and row-template predicate surfaces
stay bounded over larger/disjoint rank windows.

- Status: `accepted-next-broader-profile`
- Jobs: `4`
- Ranges: `[[0, 1000], [0, 2500], [10000, 11000], [90000, 91000]]`
- Total represented GoodDirection cases: `6310`
- Validation failures: `0`

## Union Signature Counts

| Signature surface | Union count |
| --- | ---: |
| descriptor/applicability | 146 |
| source-position | 143 |
| row-template | 12 |
| source/row pair | 146 |
| source-language obligation | 83 |
| source-language signature | 83 |

## Windows

| Range | GoodDirection cases | Descriptor | Source-position | Row-template | Source/row pairs | Source-language obligations | Failures |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 1000]` | 1465 | 74 | 72 | 11 | 74 | 44 | 0 |
| `[0, 2500]` | 3415 | 102 | 99 | 12 | 102 | 53 | 0 |
| `[10000, 11000]` | 371 | 52 | 52 | 8 | 52 | 40 | 0 |
| `[90000, 91000]` | 1059 | 79 | 78 | 10 | 79 | 50 | 0 |

## Notes

- profile was external and emitted no Lean
- bounded parallelism was used through the existing collector
