# Signed Prefix Empty-Cone Profile

- Max depth: `4`
- Min check depth: `2`
- Max support: `4`
- Jobs: `1`
- Split depth: `0`
- Elapsed seconds: `4.185`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Summary

| metric | value |
| --- | ---: |
| total signed started itineraries | `6,227,020,800` |
| nodes visited | `16,682` |
| pruned nodes | `2,896` |
| frontier nodes | `12,136` |
| killed signed completions | `1,823,109,120` |
| frontier signed completions | `4,403,911,680` |
| killed fraction | `628/2145` |
| frontier fraction | `1517/2145` |

## Depth Histograms

| depth | visited | pruned | frontier |
| ---: | ---: | ---: | ---: |
| `0` | `1` | `0` | `0` |
| `1` | `13` | `0` | `0` |
| `2` | `156` | `4` | `0` |
| `3` | `1,672` | `188` | `0` |
| `4` | `14,840` | `2,704` | `12,136` |

## Support Sizes

| support size | count |
| ---: | ---: |
| `2` | `504` |
| `3` | `1,312` |
| `4` | `1,080` |

## Top Certificate Keys

| key | count |
| --- | ---: |
| `support=2|weights=1,1` | `504` |
| `support=3|weights=6,1,3` | `500` |
| `support=3|weights=3,1,6` | `240` |
| `support=3|weights=3,4,9` | `136` |
| `support=3|weights=1,2,1` | `96` |
| `support=4|weights=1,1,1,1` | `88` |
| `support=3|weights=3,2,3` | `88` |
| `support=3|weights=2,1,1` | `76` |
| `support=4|weights=6,6,5,3` | `64` |
| `support=4|weights=6,1,6,3` | `64` |

## Frontier Clusters

### `frontier_holonomy_keys`

- Exact distinct count stored: `True`
- Stored distinct keys: `5,371`
- Overflow cases: `0`

| key | signed completions |
| --- | ---: |
| `remaining=zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,-1` | `8,709,120` |
| `remaining=zp,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,-1` | `8,709,120` |
| `remaining=ym,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,-1,0;0,0,1` | `8,709,120` |
| `remaining=yp,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,-1,0;0,0,1` | `8,709,120` |
| `remaining=xm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=1,0,0;0,1,0;0,0,1` | `8,709,120` |
| `remaining=xm,zp,zm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=1,0,0;0,1,0;0,0,1` | `5,806,080` |
| `remaining=xm,zp,zm,tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=1,0,0;0,1,0;0,0,1` | `5,806,080` |
| `remaining=xm,zp,zm,tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=1,0,0;0,1,0;0,0,1` | `5,806,080` |
| `remaining=xm,zp,zm,tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=1,0,0;0,1,0;0,0,1` | `5,806,080` |
| `remaining=xm,yp,ym,tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=1,0,0;0,1,0;0,0,1` | `5,806,080` |

### `frontier_cone_keys`

- Exact distinct count stored: `True`
- Stored distinct keys: `7,995`
- Overflow cases: `0`

| key | signed completions |
| --- | ---: |
| `remaining=zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,-1|cone=0,0,1;0,1,0;0,1,0;1,0,0;1,0,0` | `8,709,120` |
| `remaining=zp,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,1,0;0,0,-1|cone=0,0,1;0,1,0;0,1,0;1,0,0;1,0,0` | `8,709,120` |
| `remaining=ym,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,-1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;1,0,0;1,0,0` | `8,709,120` |
| `remaining=yp,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=-1,0,0;0,-1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;1,0,0;1,0,0` | `8,709,120` |
| `remaining=xm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp|lin=1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;0,1,0;0,1,0;1,0,0` | `8,709,120` |
| `remaining=xm,zp,zm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,0,0;1,1,1;1,1,1` | `2,903,040` |
| `remaining=xm,zp,zm,tmmm,tmpm,tmpp,tpmm,tpmp,tppp|lin=1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,0,0;1,1,-1;1,1,-1` | `2,903,040` |
| `remaining=xm,zp,zm,tmmm,tmmp,tmpp,tpmm,tppm,tppp|lin=1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,-1,1;1,-1,1;1,0,0` | `2,903,040` |
| `remaining=xm,zp,zm,tmmm,tmmp,tmpm,tpmp,tppm,tppp|lin=1,0,0;0,1,0;0,0,1|cone=0,1,0;0,1,0;1,-1,-1;1,-1,-1;1,0,0` | `2,903,040` |
| `remaining=xm,yp,ym,tmmp,tmpm,tmpp,tpmm,tpmp,tppm|lin=1,0,0;0,1,0;0,0,1|cone=0,0,1;0,0,1;1,0,0;1,1,1;1,1,1` | `2,903,040` |


## Examples

- depth `4` prefix `xm yp zp tmpp` support `[0, 2, 3, 4]` weights `[1, 1, 1, 1]`
  normals: `-1,0,0; 0,1,0; 0,0,1; 1,-1,-1`
- depth `4` prefix `xm yp zm tmpm` support `[0, 2, 3, 4]` weights `[1, 1, 1, 1]`
  normals: `-1,0,0; 0,1,0; 0,0,-1; 1,-1,1`
- depth `4` prefix `xm yp tmmm tmpp` support `[0, 3, 4]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,-1; 5/3,-1/3,1/3`
- depth `4` prefix `xm yp tmmp tmpm` support `[0, 3, 4]` weights `[6, 1, 3]`
  normals: `-1,0,0; 1,1,1; 5/3,-1/3,-1/3`

## Decision Hint

If pruning removes most signed completions by shallow depth with few certificate families, formalize signed-state Gordan certificates next. If not, combine this with holonomy/axis signatures rather than emitting local axis certificates.
