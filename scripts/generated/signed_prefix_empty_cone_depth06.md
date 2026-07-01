# Signed Prefix Empty-Cone Profile

- Max depth: `6`
- Min check depth: `2`
- Max support: `4`
- Jobs: `8`
- Split depth: `2`
- Elapsed seconds: `92.159`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Summary

| metric | value |
| --- | ---: |
| total signed started itineraries | `6,227,020,800` |
| nodes visited | `802,372` |
| pruned nodes | `199,848` |
| frontier nodes | `504,192` |
| killed signed completions | `3,685,893,120` |
| frontier signed completions | `2,541,127,680` |
| killed fraction | `293/495` |
| frontier fraction | `202/495` |

## Depth Histograms

| depth | visited | pruned | frontier |
| ---: | ---: | ---: | ---: |
| `2` | `156` | `4` | `0` |
| `3` | `1,672` | `188` | `0` |
| `4` | `14,840` | `2,704` | `0` |
| `5` | `109,224` | `24,664` | `0` |
| `6` | `676,480` | `172,288` | `504,192` |

## Support Sizes

| support size | count |
| ---: | ---: |
| `2` | `31,696` |
| `3` | `85,352` |
| `4` | `82,800` |

## Top Certificate Keys

| key | count |
| --- | ---: |
| `support=2|weights=1,1` | `31,696` |
| `support=3|weights=6,1,3` | `17,384` |
| `support=3|weights=3,1,6` | `13,608` |
| `support=3|weights=3,4,9` | `7,016` |
| `support=3|weights=3,2,3` | `6,904` |
| `support=3|weights=1,2,1` | `6,264` |
| `support=3|weights=2,1,1` | `4,492` |
| `support=3|weights=1,4,3` | `3,184` |
| `support=3|weights=12,11,9` | `2,816` |
| `support=3|weights=3,11,18` | `2,456` |
| `support=3|weights=1,1,2` | `2,304` |
| `support=4|weights=3,1,3,3` | `1,952` |
| `support=3|weights=2,1,3` | `1,920` |
| `support=3|weights=18,11,3` | `1,840` |
| `support=4|weights=1,1,1,1` | `1,704` |
| `support=3|weights=3,1,2` | `1,704` |
| `support=3|weights=6,5,9` | `1,544` |
| `support=3|weights=1,6,3` | `1,328` |
| `support=3|weights=30,13,27` | `1,280` |
| `support=4|weights=6,6,5,3` | `1,024` |
| `support=4|weights=6,1,6,3` | `976` |
| `support=4|weights=6,12,7,9` | `960` |
| `support=3|weights=4,1,3` | `932` |
| `support=4|weights=12,6,7,9` | `880` |
| `support=3|weights=33,10,27` | `804` |
| `support=3|weights=1,2,3` | `804` |
| `support=4|weights=6,1,2,3` | `728` |
| `support=3|weights=3,2,1` | `724` |
| `support=4|weights=3,1,1,3` | `712` |
| `support=4|weights=6,4,1,3` | `712` |

## Examples

- depth `6` prefix `xm tmpp yp ym zp tmmm` support `[2, 3, 6]` weights `[1, 2, 1]`
  normals: `1,1,1; -2/3,1/3,-2/3; 1/3,-5/3,1/3`
- depth `6` prefix `xm tmpp yp ym zp tmmp` support `[0, 2, 6]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,1; 5/3,-1/3,-1/3`
- depth `6` prefix `xm tmpp yp ym zp tmpm` support `[2, 6]` weights `[1, 1]`
  normals: `1,1,1; -1,-1,-1`
- depth `6` prefix `xm tmpp yp ym zm tmmm` support `[2, 3, 6]` weights `[1, 2, 1]`
  normals: `1,1,1; -2/3,1/3,-2/3; 1/3,-5/3,1/3`
- depth `6` prefix `xm tmpp yp ym zm tmmp` support `[0, 2, 6]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,1; 5/3,-1/3,-1/3`
- depth `6` prefix `xm tmpp yp ym zm tmpm` support `[2, 6]` weights `[1, 1]`
  normals: `1,1,1; -1,-1,-1`
- depth `5` prefix `xm tmpp yp ym tmmm` support `[0, 2, 5]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,1; 5/3,-1/3,-1/3`
- depth `5` prefix `xm tmpp yp ym tmmp` support `[2, 3, 5]` weights `[1, 2, 1]`
  normals: `1,1,1; -2/3,1/3,-2/3; 1/3,-5/3,1/3`

## Decision Hint

If pruning removes most signed completions by shallow depth with few certificate families, formalize signed-state Gordan certificates next. If not, combine this with holonomy/axis signatures rather than emitting local axis certificates.
