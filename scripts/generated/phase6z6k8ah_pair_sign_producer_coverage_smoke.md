# Phase 6Z.6K.8AH Pair-Sign Producer-Coverage Smoke

This generated smoke is not global coverage. It proves that the
representative pair-sign descriptor keys can be killed from reusable
source-producer predicates and exact row producer predicates, without
raw rank/mask member replay.

- Status: `pair-sign-producer-coverage-smoke-emitted`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- Source groups: `191`
- Row groups: `21`
- Descriptor families: `195`
- Represented GoodDirection cases: `7112`
- Lean module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageSmoke.lean`

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 125 | 4693 | 487 | 31168 |
| `[100000, 102500]` | 37 | 296 | 66 | 4224 |
| `[1000000, 1002500]` | 12 | 50 | 11 | 704 |
| `[10000000, 10002500]` | 136 | 2069 | 235 | 15040 |
| `[30000000, 30002500]` | 0 | 0 | 127 | 8128 |
| `[60000000, 60002500]` | 0 | 0 | 27 | 1728 |
| `[90000000, 90002500]` | 1 | 4 | 5 | 320 |

## Notes

- the Lean module contains no concrete rank/mask branches
- source facts are produced from reusable source-index predicates
- row facts are produced from reusable row-template predicates
- descriptor keys compose through SourceIndexStateKey.goodKilled_of_source_row
