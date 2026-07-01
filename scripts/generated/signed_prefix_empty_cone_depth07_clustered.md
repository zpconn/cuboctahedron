# Signed Prefix Empty-Cone Profile

- Max depth: `7`
- Min check depth: `2`
- Max support: `4`
- Jobs: `8`
- Split depth: `2`
- Elapsed seconds: `857.151`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Summary

| metric | value |
| --- | ---: |
| total signed started itineraries | `6,227,020,800` |
| nodes visited | `4,331,716` |
| pruned nodes | `1,161,608` |
| frontier nodes | `2,567,584` |
| killed signed completions | `4,378,360,320` |
| frontier signed completions | `1,848,660,480` |
| killed fraction | `190033/270270` |
| frontier fraction | `80237/270270` |

## Depth Histograms

| depth | visited | pruned | frontier |
| ---: | ---: | ---: | ---: |
| `2` | `156` | `4` | `0` |
| `3` | `1,672` | `188` | `0` |
| `4` | `14,840` | `2,704` | `0` |
| `5` | `109,224` | `24,664` | `0` |
| `6` | `676,480` | `172,288` | `0` |
| `7` | `3,529,344` | `961,760` | `2,567,584` |

## Support Sizes

| support size | count |
| ---: | ---: |
| `2` | `181,600` |
| `3` | `482,560` |
| `4` | `497,448` |

## Top Certificate Keys

| key | count |
| --- | ---: |
| `support=2|weights=1,1` | `181,600` |
| `support=3|weights=6,1,3` | `80,768` |
| `support=3|weights=3,1,6` | `75,440` |
| `support=3|weights=3,2,3` | `40,080` |
| `support=3|weights=3,4,9` | `34,952` |
| `support=3|weights=1,2,1` | `32,312` |
| `support=3|weights=2,1,1` | `22,500` |
| `support=3|weights=1,4,3` | `18,536` |
| `support=3|weights=3,11,18` | `15,536` |
| `support=3|weights=12,11,9` | `14,720` |
| `support=3|weights=1,1,2` | `14,504` |
| `support=3|weights=6,5,9` | `12,560` |
| `support=3|weights=2,1,3` | `11,384` |
| `support=3|weights=1,6,3` | `9,192` |
| `support=3|weights=30,13,27` | `8,784` |
| `support=3|weights=18,11,3` | `8,360` |
| `support=4|weights=3,1,3,3` | `7,376` |
| `support=3|weights=3,1,2` | `7,304` |
| `support=3|weights=4,1,3` | `6,868` |
| `support=4|weights=1,1,1,1` | `6,064` |
| `support=3|weights=1,2,3` | `4,884` |
| `support=3|weights=9,10,9` | `4,848` |
| `support=3|weights=33,10,27` | `4,804` |
| `support=3|weights=18,23,27` | `4,672` |
| `support=3|weights=9,11,12` | `4,360` |

## Frontier Clusters

### `frontier_holonomy_keys`

- Exact distinct count stored: `False`
- Stored distinct keys: `50,000`
- Overflow cases: `963,456,480`

| key | signed completions |
| --- | ---: |
| `remaining=tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `1,088,640` |
| `remaining=tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1` | `1,088,640` |
| `remaining=tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `1,088,640` |
| `remaining=tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1` | `1,088,640` |
| `remaining=zp,zm,tmmm,tmmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `541,440` |
| `remaining=yp,ym,tmmp,tmpp,tpmm,tppm|lin=-1,0,0;0,1,0;0,0,1` | `541,440` |
| `remaining=zp,zm,tmpm,tmpp,tpmm,tpmp|lin=-1,0,0;0,1,0;0,0,1` | `541,440` |
| `remaining=yp,ym,tmmm,tmpm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1` | `541,440` |
| `remaining=xm,tmmp,tmpm,tpmp,tppm,tppp|lin=1/3,-2/3,-2/3;-2/3,1/3,-2/3;-2/3,-2/3,1/3` | `509,760` |
| `remaining=xm,tmmp,tmpm,tpmm,tpmp,tppm|lin=1/3,2/3,2/3;2/3,1/3,-2/3;2/3,-2/3,1/3` | `509,760` |
| `remaining=xm,tmmm,tmpp,tpmm,tppm,tppp|lin=1/3,-2/3,2/3;-2/3,1/3,2/3;2/3,2/3,1/3` | `509,760` |
| `remaining=xm,tmmm,tmpp,tpmm,tpmp,tppp|lin=1/3,2/3,-2/3;2/3,1/3,2/3;-2/3,2/3,1/3` | `509,760` |
| `remaining=zp,zm,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=zp,zm,tmmp,tmpp,tpmm,tppm|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=yp,ym,tmmm,tmmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=yp,ym,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=zp,zm,tmmm,tmpm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=yp,ym,tmpm,tmpp,tpmm,tpmp|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=zp,zm,tmmp,tmpm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=yp,ym,tmmp,tmpm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1` | `505,440` |
| `remaining=xm,tmpm,tmpp,tpmm,tpmp,tppp|lin=1/3,-2/3,-2/3;-2/3,1/3,-2/3;-2/3,-2/3,1/3` | `463,680` |
| `remaining=xm,tmmp,tmpp,tpmm,tppm,tppp|lin=1/3,-2/3,-2/3;-2/3,1/3,-2/3;-2/3,-2/3,1/3` | `463,680` |
| `remaining=xm,tmpm,tmpp,tpmm,tpmp,tppm|lin=1/3,-2/3,2/3;-2/3,1/3,2/3;2/3,2/3,1/3` | `463,680` |
| `remaining=xm,tmmp,tmpp,tpmm,tpmp,tppm|lin=1/3,2/3,-2/3;2/3,1/3,2/3;-2/3,2/3,1/3` | `463,680` |
| `remaining=xm,tmmm,tmpm,tpmp,tppm,tppp|lin=1/3,-2/3,2/3;-2/3,1/3,2/3;2/3,2/3,1/3` | `463,680` |

### `frontier_cone_keys`

- Exact distinct count stored: `False`
- Stored distinct keys: `50,000`
- Overflow cases: `1,726,660,800`

| key | signed completions |
| --- | ---: |
| `remaining=tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,-1;1,1,-1` | `272,160` |
| `remaining=tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0` | `272,160` |
| `remaining=tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,1;1,1,1` | `272,160` |
| `remaining=tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0` | `272,160` |
| `remaining=tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,1;1,1,1` | `272,160` |
| `remaining=tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0` | `272,160` |
| `remaining=tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0` | `272,160` |
| `remaining=tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,-1;1,1,-1` | `272,160` |
| `remaining=tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0` | `181,440` |
| `remaining=tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0` | `181,440` |
| `remaining=tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,1;1,1,1` | `181,440` |
| `remaining=tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,-1;1,1,-1` | `181,440` |
| `remaining=tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,1;1,1,1` | `181,440` |
| `remaining=tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0` | `181,440` |
| `remaining=tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0` | `181,440` |
| `remaining=tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0;1,0,0;1,1,-1;1,1,-1` | `181,440` |
| `remaining=ym,zm,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0;1,1,-1;1,1,-1` | `95,040` |
| `remaining=yp,zp,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0;1,1,-1;1,1,-1` | `95,040` |
| `remaining=ym,zp,tmmp,tmpm,tpmp,tppm|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0;1,1,1;1,1,1` | `95,040` |
| `remaining=yp,zm,tmmp,tmpm,tpmp,tppm|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0;1,1,1;1,1,1` | `95,040` |
| `remaining=yp,zm,tmmp,tmpp,tpmm,tppm|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0;1,1,1;1,1,1` | `95,040` |
| `remaining=yp,zm,tmmm,tmmp,tppm,tppp|lin=-1,0,0;0,-1,0;0,0,-1|cone=0,0,1;0,1,0;1,-1,-1;1,-1,-1;1,-1,1;1,-1,1;1,0,0;1,0,0` | `95,040` |
| `remaining=zp,zm,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0;1,0,0;1,1,-1;1,1,-1` | `86,400` |
| `remaining=yp,ym,tmmm,tmpp,tpmm,tppp|lin=-1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;1,-1,1;1,-1,1;1,0,0;1,0,0;1,1,-1;1,1,-1` | `86,400` |
| `remaining=zp,zm,tmmp,tmpm,tpmp,tppm|lin=-1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0;1,0,0;1,1,1;1,1,1` | `86,400` |


## Examples

- depth `7` prefix `xm tmpm yp ym zp zm tmmm` support `[2, 3, 7]` weights `[1, 2, 1]`
  normals: `1,1,-1; -2/3,1/3,2/3; 1/3,-5/3,-1/3`
- depth `7` prefix `xm tmpm yp ym zp zm tmmp` support `[0, 2, 7]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,-1; 5/3,-1/3,1/3`
- depth `6` prefix `xm tmpm yp ym zp tmmm` support `[0, 2, 6]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,-1; 5/3,-1/3,1/3`
- depth `6` prefix `xm tmpm yp ym zp tmmp` support `[2, 3, 6]` weights `[1, 2, 1]`
  normals: `1,1,-1; -2/3,1/3,2/3; 1/3,-5/3,-1/3`
- depth `6` prefix `xm tmpm yp ym zp tmpp` support `[2, 6]` weights `[1, 1]`
  normals: `1,1,-1; -1,-1,1`
- depth `7` prefix `xm tmpm yp ym zp tpmm tmmm` support `[0, 2, 7]` weights `[2, 1, 1]`
  normals: `-1,0,0; 1,1,-1; 1,-1,1`
- depth `7` prefix `xm tmpm yp ym zp tpmm tmmp` support `[2, 3, 7]` weights `[1, 6, 3]`
  normals: `1,1,-1; -2/3,1/3,2/3; 1,-1,-1`
- depth `7` prefix `xm tmpm yp ym zp tpmp tmmm` support `[3, 6, 7]` weights `[6, 1, 3]`
  normals: `-2/3,1/3,2/3; -1/3,-1/3,-5/3; 13/9,-5/9,-7/9`

## Decision Hint

If pruning removes most signed completions by shallow depth with few certificate families, formalize signed-state Gordan certificates next. If not, combine this with holonomy/axis signatures rather than emitting local axis certificates.
