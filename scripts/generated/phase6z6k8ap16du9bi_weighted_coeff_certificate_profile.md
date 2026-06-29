# Phase 6Z.6K.8AP.16DU.9BI Weighted Coefficient Certificate Profile

This is telemetry/design data only, not proof data.

- rank: `6000745`
- word: `['x', 'd1m1', 'd1m1', 'dm11', 'd111', 'd111', 'dm11', 'd11m', 'd11m', 'y', 'z', 'y', 'z']`
- selected weighted cubes: `11`
- all weighted values validated on 64 masks: `True`
- all cubes nonpositive: `True`
- term-bound cubes: `5`
- vertex-split cubes: `6`
- max coefficient denominator scale: `9`
- max absolute scaled coefficient: `216`
- total nonzero scaled coefficients: `105`
- estimated Lean lines for this rank-local certificate surface: `942`

| # | cube | masks | support | weights | scale | nonzero | max | method | est. lines |
| ---: | --- | ---: | --- | --- | ---: | ---: | ---: | --- | ---: |
| 0 | `***00*` | 16 | `1, 2, 8` | `2, 1, 1` | 9 | 14 | `0` | `vertex_split` | 90 |
| 1 | `**0**1` | 16 | `1, 4, 5` | `6, 1, 3` | 3 | 14 | `0` | `vertex_split` | 90 |
| 2 | `**011*` | 8 | `5` | `1` | 9 | 7 | `-20/9` | `term_bound` | 91 |
| 3 | `*0**11` | 8 | `2, 4, 11` | `1, 1, 2` | 9 | 14 | `0` | `vertex_split` | 81 |
| 4 | `0*1*0*` | 8 | `2, 10` | `1, 1` | 9 | 10 | `0` | `vertex_split` | 81 |
| 5 | `1**010` | 4 | `10` | `1` | 9 | 5 | `-28/9` | `term_bound` | 85 |
| 6 | `*1*100` | 4 | `11` | `1` | 9 | 5 | `-28/9` | `term_bound` | 85 |
| 7 | `*010**` | 8 | `8, 11` | `1, 1` | 9 | 10 | `0` | `vertex_split` | 81 |
| 8 | `*10*10` | 4 | `5` | `1` | 9 | 7 | `-4/3` | `term_bound` | 91 |
| 9 | `0**111` | 4 | `4, 8` | `1, 1` | 9 | 12 | `-8/9` | `vertex_split` | 76 |
| 10 | `1*01*0` | 4 | `5` | `1` | 9 | 7 | `-4/3` | `term_bound` | 91 |

Lean-facing implication:

- A future checker should consume `coeff_scale` and the integer
  `scaled_coefficients` record, prove it corresponds to the weighted
  Walsh coefficient record, and separately prove cube nonpositivity by
  either term bounds or vertex splitting.
- Generated leaves should not unfold `translationVectorWalshOfChoice` or
  `translationPrefixWalshVectorNat`; DU.9BH showed that recurrence replay
  exceeds the current per-leaf memory target even on one cube.
