# Phase 6Z.6K.8V Source-Index/State Language Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
the semantic source-position obligations needed to replace bounded
rank/mask replay in the producer-membership bridge.

- Status: `accepted-next-lean-smoke`
- Rank window: `[896, 960)`
- Jobs: `4`
- Source-index/state families: `19`
- Source groups: `19`
- Source occurrences: `38`
- Source-language obligations: `24`
- Static obligations: `10`
- Dynamic interior obligations: `14`
- Max interior excluded-face set size: `13`
- Validation failures: `0`

## Top Obligations

| Cases | Occurrences | Kind | Dynamic | Obligation |
| ---: | ---: | --- | --- | --- |
| 47 | 9 | `xpStart` | `False` | `xpStart:0` |
| 20 | 1 | `interior` | `True` | `interior:1:tmmm:slot5:excluded=xp,xm,yp,ym,zp,zm` |
| 17 | 5 | `xpStart` | `False` | `xpStart:1` |
| 9 | 1 | `interior` | `True` | `interior:1:tmmp:slot6:excluded=xp,xm,yp,ym,zp,zm,tmmm` |
| 8 | 3 | `xpStart` | `False` | `xpStart:2` |
| 7 | 1 | `ordering` | `False` | `ordering:3` |
| 6 | 1 | `ordering` | `False` | `ordering:9` |
| 3 | 1 | `interior` | `True` | `interior:1:tmpm:slot7:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp` |
| 3 | 1 | `interior` | `True` | `interior:6:xm:slot1:excluded=yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 3 | 1 | `interior` | `True` | `interior:6:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 3 | 1 | `interior` | `True` | `interior:8:xm:slot1:excluded=yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 3 | 1 | `interior` | `True` | `interior:8:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 3 | 1 | `interior` | `True` | `interior:9:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 2 | 1 | `interior` | `True` | `interior:10:xm:slot1:excluded=yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 2 | 1 | `interior` | `True` | `interior:12:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 2 | 1 | `interior` | `True` | `interior:1:tmpp:slot8:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp,tmpm` |
| 2 | 1 | `interior` | `True` | `interior:8:tppp:slot12:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm` |
| 2 | 1 | `ordering` | `False` | `ordering:10` |
| 2 | 1 | `ordering` | `False` | `ordering:6` |
| 2 | 1 | `xpStart` | `False` | `xpStart:3` |

## Notes

- source lookup splits into static xpStart/ordering facts and interior face-position facts
- no sampled source group needs rank/mask finite replay at this abstraction level
