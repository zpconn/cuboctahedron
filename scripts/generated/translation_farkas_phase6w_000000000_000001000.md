# Phase 6W Source-Support Farkas Audit

This is an untrusted profiling report. It emits no Lean evidence.

## Counts

- Pair words scanned: 1,000
- Identity-linear words: 138
- Translation sign assignments: 8,832
- GoodDirection survivor masks: 1,465
- Source-support classes: 72
- Max cases per source support: 421
- Singleton source-support classes: 12

## Multiplier Variation

- Scalar-normalized multiplier histogram: `{1: 18, 2: 10, 3: 10, 4: 7, 5: 2, 6: 4, 7: 5, 8: 2, 9: 1, 10: 4, 11: 3, 12: 1, 14: 1, 18: 2, 19: 1, 25: 1}`
- Exact multiplier histogram: `{1: 18, 2: 10, 3: 10, 4: 7, 5: 2, 6: 4, 7: 5, 8: 2, 9: 1, 10: 4, 11: 3, 12: 1, 14: 1, 18: 2, 19: 1, 25: 1}`
- Normalized Farkas-shape histogram: `{1: 12, 2: 6, 3: 6, 4: 2, 5: 3, 6: 6, 7: 4, 8: 1, 9: 4, 10: 3, 11: 2, 12: 1, 13: 1, 14: 1, 15: 1, 17: 1, 18: 1, 19: 4, 20: 1, 21: 1, 22: 2, 23: 1, 29: 1, 30: 1, 44: 1, 74: 1, 102: 1, 122: 1, 134: 1, 421: 1}`
- Classes with one scalar pattern: 18
- Classes with one exact multiplier pattern: 18

## Top Source-Support Classes

| Support digest | Cases | Scalar patterns | Exact patterns | Shape patterns |
| --- | ---: | ---: | ---: | ---: |
| `8fbb8d2e5508...` | 421 | 1 | 1 | 421 |
| `64e4aa0288d6...` | 134 | 1 | 1 | 134 |
| `2ffa6ccbdfcc...` | 128 | 25 | 25 | 122 |
| `730cc124c88c...` | 102 | 1 | 1 | 102 |
| `b6cc79018aef...` | 79 | 11 | 11 | 74 |
| `66f79c28598c...` | 44 | 18 | 18 | 44 |
| `b6a6d380938d...` | 30 | 18 | 18 | 30 |
| `b89c8cbe0582...` | 29 | 19 | 19 | 29 |
| `d61a0dbab507...` | 23 | 11 | 11 | 23 |
| `6d14225c9c2c...` | 22 | 10 | 10 | 22 |
| `f5a97fbe38c6...` | 22 | 1 | 1 | 22 |
| `0ec477e3c9d9...` | 21 | 7 | 7 | 21 |

## Decision

- Status: `blocked_parametric`
- source-support count is within the leaf gate, but multiplier variation still needs a parametric theorem
- not all source-support classes have one scalar-normalized multiplier pattern
