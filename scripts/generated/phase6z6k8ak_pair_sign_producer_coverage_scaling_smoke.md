# Phase 6Z.6K.8AK Pair-Sign Producer-Coverage Smoke

This generated smoke is not global coverage. It proves that the
representative pair-sign descriptor keys can be killed from reusable
source-producer predicates and exact row producer predicates, without
raw rank/mask member replay.

- Status: `pair-sign-producer-coverage-smoke-emitted`
- Jobs: `4`
- Ranges: `[[0, 2500], [10000000, 10002500], [20000000, 20002500], [30000000, 30002500], [40000000, 40002500], [50000000, 50002500], [60000000, 60002500], [70000000, 70002500], [80000000, 80002500], [90000000, 90002500]]`
- Source groups: `225`
- Row groups: `22`
- Descriptor families: `232`
- Represented GoodDirection cases: `6048`
- Lean module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSmoke.lean`

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[0, 2500]` | 102 | 3415 | 329 | 21056 |
| `[10000000, 10002500]` | 136 | 2069 | 235 | 15040 |
| `[20000000, 20002500]` | 0 | 0 | 4 | 256 |
| `[30000000, 30002500]` | 0 | 0 | 127 | 8128 |
| `[40000000, 40002500]` | 2 | 3 | 11 | 704 |
| `[50000000, 50002500]` | 37 | 171 | 91 | 5824 |
| `[60000000, 60002500]` | 0 | 0 | 27 | 1728 |
| `[70000000, 70002500]` | 61 | 223 | 94 | 6016 |
| `[80000000, 80002500]` | 42 | 163 | 85 | 5440 |
| `[90000000, 90002500]` | 1 | 4 | 5 | 320 |

## Notes

- the Lean module contains no concrete rank/mask branches
- source facts are produced from reusable source-index predicates
- row facts are produced from reusable row-template predicates
- descriptor keys compose through SourceIndexStateKey.goodKilled_of_source_row
