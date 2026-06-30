# Phase 6Z.6K.8V Source-Index/State Language Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
the semantic source-position obligations needed to replace bounded
rank/mask replay in the producer-membership bridge.

- Status: `accepted-next-lean-smoke`
- Rank window: `[0, 5000)`
- Jobs: `4`
- Source-index/state families: `125`
- Source groups: `122`
- Source occurrences: `244`
- Source-language obligations: `68`
- Static obligations: `13`
- Dynamic interior obligations: `55`
- Max interior excluded-face set size: `13`
- Validation failures: `0`

## Top Obligations

| Cases | Occurrences | Kind | Dynamic | Obligation |
| ---: | ---: | --- | --- | --- |
| 2784 | 45 | `xpStart` | `False` | `xpStart:0` |
| 1237 | 1 | `interior` | `True` | `interior:1:tmmm:slot5:excluded=xp,xm,yp,ym,zp,zm` |
| 1181 | 35 | `xpStart` | `False` | `xpStart:1` |
| 585 | 26 | `xpStart` | `False` | `xpStart:2` |
| 519 | 1 | `interior` | `True` | `interior:1:tmmp:slot6:excluded=xp,xm,yp,ym,zp,zm,tmmm` |
| 372 | 4 | `ordering` | `False` | `ordering:3` |
| 304 | 1 | `interior` | `True` | `interior:1:tmpm:slot7:excluded=xp,xm,yp,ym,zp,zm,tmmm,tmmp` |
| 263 | 4 | `interior` | `True` | `interior:6:xp:slot0:excluded=xm,yp,ym,zp,zm,tmmm,tmmp,tmpm,tmpp,tpmm,tpmp,tppm,tppp` |
| 172 | 4 | `ordering` | `False` | `ordering:11` |
| 153 | 4 | `ordering` | `False` | `ordering:6` |
| 129 | 4 | `ordering` | `False` | `ordering:9` |
| 118 | 4 | `ordering` | `False` | `ordering:7` |

## Notes

- source lookup splits into static xpStart/ordering facts and interior face-position facts
- no sampled source group needs rank/mask finite replay at this abstraction level
