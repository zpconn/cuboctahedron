# Phase 6Z.6K.8V Source-Index/State Language Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
the semantic source-position obligations needed to replace bounded
rank/mask replay in the producer-membership bridge.

- Status: `accepted-next-lean-smoke`
- Rank window: `[0, 1000)`
- Jobs: `4`
- Source-index/state families: `74`
- Source groups: `72`
- Source occurrences: `144`
- Source-language obligations: `44`
- Static obligations: `13`
- Dynamic interior obligations: `31`
- Max interior excluded-face set size: `13`
- Validation failures: `0`

## Top Obligations

| Cases | Occurrences | Kind | Dynamic | Obligation |
| ---: | ---: | --- | --- | --- |
| 951 | 27 | `xpStart` | `False` | `xpStart:0` |
| 421 | 1 | `interior` | `True` | `interior:1:tmmm:slot5:excluded=xp,xm,yp,ym,zp,zm` |
| 300 | 26 | `xpStart` | `False` | `xpStart:1` |
| 172 | 2 | `interior` | `True` | `interior:6:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 170 | 14 | `xpStart` | `False` | `xpStart:2` |
| 134 | 1 | `interior` | `True` | `interior:1:tmmp:slot6:excluded=xp,xm,yp,ym,zp,zm,tmmm` |
| 111 | 3 | `ordering` | `False` | `ordering:3` |
| 102 | 1 | `interior` | `True` | `interior:1:tmpm:slot7:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp` |
| 50 | 3 | `ordering` | `False` | `ordering:11` |
| 43 | 4 | `ordering` | `False` | `ordering:7` |
| 43 | 3 | `ordering` | `False` | `ordering:9` |
| 35 | 4 | `xpStart` | `False` | `xpStart:3` |
| 33 | 3 | `ordering` | `False` | `ordering:10` |
| 29 | 3 | `ordering` | `False` | `ordering:6` |
| 26 | 4 | `ordering` | `False` | `ordering:8` |
| 25 | 2 | `ordering` | `False` | `ordering:12` |
| 24 | 2 | `interior` | `True` | `interior:6:xm:slot1:excluded=yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 23 | 2 | `interior` | `True` | `interior:8:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 22 | 1 | `interior` | `True` | `interior:1:tmpp:slot8:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp,tmpm` |
| 22 | 2 | `interior` | `True` | `interior:9:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |

## Notes

- source lookup splits into static xpStart/ordering facts and interior face-position facts
- no sampled source group needs rank/mask finite replay at this abstraction level
