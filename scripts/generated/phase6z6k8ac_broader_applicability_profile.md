# Phase 6Z.6K.8AC Source-Position Applicability Scaling Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
whether the Phase 8AA source-position and row-template predicate surfaces
stay bounded over larger/disjoint rank windows.

- Status: `rejected-validation-failures`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- Total represented GoodDirection cases: `7112`
- Validation failures: `1`

## Union Signature Counts

| Signature surface | Union count |
| --- | ---: |
| descriptor/applicability | 193 |
| source-position | 189 |
| row-template | 21 |
| source/row pair | 193 |
| source-language obligation | 106 |
| source-language signature | 106 |

## Windows

| Range | GoodDirection cases | Descriptor | Source-position | Row-template | Source/row pairs | Source-language obligations | Failures |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 4693 | 125 | 122 | 12 | 125 | 68 | 0 |
| `[100000, 102500]` | 296 | 37 | 36 | 8 | 37 | 33 | 0 |
| `[1000000, 1002500]` | 50 | 12 | 12 | 4 | 12 | 16 | 0 |
| `[10000000, 10002500]` | 2069 | 135 | 134 | 19 | 135 | 79 | 1 |
| `[30000000, 30002500]` | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| `[60000000, 60002500]` | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| `[90000000, 90002500]` | 4 | 1 | 1 | 1 | 1 | 2 | 0 |

## Notes

- profile was external and emitted no Lean
- bounded parallelism was used through the existing collector
- at least one source-language validation mismatch occurred
