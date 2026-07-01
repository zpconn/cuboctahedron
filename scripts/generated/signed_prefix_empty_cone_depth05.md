# Signed Prefix Empty-Cone Profile

- Max depth: `5`
- Min check depth: `2`
- Max support: `4`
- Jobs: `4`
- Split depth: `1`
- Elapsed seconds: `17.136`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Summary

| metric | value |
| --- | ---: |
| total signed started itineraries | `6,227,020,800` |
| nodes visited | `125,905` |
| pruned nodes | `27,560` |
| frontier nodes | `84,560` |
| killed signed completions | `2,817,561,600` |
| frontier signed completions | `3,409,459,200` |
| killed fraction | `1747/3861` |
| frontier fraction | `2114/3861` |

## Depth Histograms

| depth | visited | pruned | frontier |
| ---: | ---: | ---: | ---: |
| `1` | `13` | `0` | `0` |
| `2` | `156` | `4` | `0` |
| `3` | `1,672` | `188` | `0` |
| `4` | `14,840` | `2,704` | `0` |
| `5` | `109,224` | `24,664` | `84,560` |

## Support Sizes

| support size | count |
| ---: | ---: |
| `2` | `4,648` |
| `3` | `11,952` |
| `4` | `10,960` |

## Top Certificate Keys

| key | count |
| --- | ---: |
| `support=2|weights=1,1` | `4,648` |
| `support=3|weights=6,1,3` | `3,224` |
| `support=3|weights=3,1,6` | `2,000` |
| `support=3|weights=3,4,9` | `1,168` |
| `support=3|weights=1,2,1` | `856` |
| `support=3|weights=3,2,3` | `856` |
| `support=3|weights=2,1,1` | `700` |
| `support=4|weights=1,1,1,1` | `456` |
| `support=4|weights=3,1,3,3` | `440` |
| `support=3|weights=12,11,9` | `384` |
| `support=3|weights=1,4,3` | `336` |
| `support=3|weights=18,11,3` | `296` |
| `support=4|weights=6,6,5,3` | `280` |
| `support=3|weights=1,1,2` | `280` |
| `support=3|weights=3,1,2` | `264` |
| `support=3|weights=3,11,18` | `264` |
| `support=4|weights=6,1,6,3` | `240` |
| `support=3|weights=2,1,3` | `232` |
| `support=4|weights=6,1,2,3` | `200` |
| `support=4|weights=6,4,1,3` | `176` |
| `support=4|weights=6,1,1,6` | `168` |
| `support=3|weights=1,6,3` | `160` |
| `support=4|weights=6,12,7,9` | `152` |
| `support=4|weights=12,6,7,9` | `144` |
| `support=4|weights=3,3,1,3` | `136` |

## Examples

- depth `5` prefix `ym xm yp zp tmpp` support `[0, 1, 4, 5]` weights `[1, 1, 1, 1]`
  normals: `-1,0,0; 0,-1,0; 0,0,1; 1,1,-1`
- depth `5` prefix `ym xm yp zm tmpm` support `[0, 1, 4, 5]` weights `[1, 1, 1, 1]`
  normals: `-1,0,0; 0,-1,0; 0,0,-1; 1,1,1`
- depth `5` prefix `ym xm yp tmmm tmpp` support `[0, 4, 5]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,-1,-1; 5/3,1/3,1/3`
- depth `5` prefix `ym xm yp tmmp tmpm` support `[0, 4, 5]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,-1,1; 5/3,1/3,-1/3`
- depth `5` prefix `ym xm yp tmpm zp` support `[0, 1, 4, 5]` weights `[3, 3, 1, 3]`
  normals: `-1,0,0; 0,-1,0; 1,1,-1; 2/3,2/3,1/3`
- depth `5` prefix `ym xm yp tmpm tmmp` support `[0, 4, 5]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,-1; 5/3,-1/3,1/3`
- depth `5` prefix `ym xm yp tmpm tmpp` support `[0, 1, 4, 5]` weights `[6, 6, 5, 3]`
  normals: `-1,0,0; 0,-1,0; 1,1,-1; 1/3,1/3,5/3`
- depth `5` prefix `ym xm yp tmpm tppp` support `[1, 4, 5]` weights `[6, 1, 3]`
  normals: `0,-1,0; 1,1,-1; -1/3,5/3,1/3`

## Decision Hint

If pruning removes most signed completions by shallow depth with few certificate families, formalize signed-state Gordan certificates next. If not, combine this with holonomy/axis signatures rather than emitting local axis certificates.
