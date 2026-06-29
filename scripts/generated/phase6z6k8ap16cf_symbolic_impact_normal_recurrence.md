# Phase 6Z.6K.8AP.16CF Symbolic Impact-Normal Recurrence

This report is diagnostic profile evidence, not final proof evidence.

- status: `accepted_profile`
- rank: `100805`
- selected impacts: `[1, 2, 4, 5, 6, 8, 10]`
- construction uses mask interpolation: `False`
- validation replays all 64 masks externally: `True`
- all normal matches against AP16BY: `True`
- all dot products match AP16BY expected polynomials: `True`
- all exact mask evaluations match: `True`

## Impact Summary

| impact | normal terms by axis | dot terms | dot max degree |
| ---: | --- | ---: | ---: |
| 1 | `x=1, y=0, z=0` | 6 | 1 |
| 2 | `x=0, y=1, z=0` | 6 | 2 |
| 4 | `x=1, y=1, z=1` | 7 | 2 |
| 5 | `x=1, y=1, z=1` | 7 | 2 |
| 6 | `x=1, y=1, z=1` | 7 | 2 |
| 8 | `x=1, y=1, z=1` | 7 | 2 |
| 10 | `x=1, y=1, z=1` | 7 | 2 |

## Interpretation

AP16CF confirms that AP16CD's symbolic normal/vector records can be
recovered by direct symbolic recurrences for both sides of the dot
product.  The next proof step is no longer a search for coefficients;
it is a Lean checker/theorem that connects these recurrences to
`impactDenomAtRank` without bounded mask replay.

Next: Port the vector and normal recurrences into a small Lean symbolic/scaled denominator evaluator so AP16CD can replace bounded mask replay with a semantic theorem.
