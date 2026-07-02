# Top-Pairing Transition Sharing Profile

This is exact diagnostic evidence, not proof. It profiles whether
semantic prefix transitions can share local-axis facts by finite
holonomy state.

| depth | parents | children | linear states | transition sigs | axis facts | axis rejects | max parents/sig | mismatches |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 8 | 595 | 1585 | 97 | 308 | 685 | 336 | 14 | 0 |
| 9 | 1585 | 3186 | 230 | 659 | 1275 | 606 | 24 | 0 |
| 10 | 3186 | 3082 | 463 | 1086 | 1263 | 604 | 32 | 0 |
| 11 | 3082 | 1631 | 493 | 901 | 823 | 437 | 74 | 0 |
| 12 | 1631 | 482 | 271 | 361 | 183 | 88 | 55 | 0 |
| 13 | 482 | 442 | 58 | 58 | 58 | 13 | 93 | 0 |

## Notes

- `transition sigs` are keyed by remaining pair counts, square-gap state, exact rational linear matrix, and computed child set.
- `axis facts` are exact `(linear state, face, dot value, sign)` facts.
- Mismatches compare the computed transition children against the existing exact semantic prefix enumerator.
