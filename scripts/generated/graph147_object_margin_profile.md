# Graph147 Object-Margin Profile Audit

Untrusted diagnostic audit.  This file is not Lean proof evidence.

- Profile range: `[0, 10000000]`
- State key mode: `with-step-tri-source`
- Total graph path classes: `273`
- Graph147 classes: `4`
- Graph147 observed count: `4`
- All prefix gains match socket: `True`
- All margins <= expected bounds: `True`
- All margins equal expected bounds: `True`

## Branch Summary

| branch | classes | observed | prefix ok | bounds ok | exact |
| --- | ---: | ---: | --- | --- | --- |
| `yp_zm` | `2` | `2` | `True` | `True` | `True` |
| `zm_yp` | `2` | `2` | `True` | `True` | `True` |

## Classes

| class | branch | count | margin | suffix gain | expected bound | faces |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| `0` | `yp_zm` | `1` | `-376` | `-499` | `-376` | `xm ym yp zm zp tmmm tpmm tppm tpmp tmpm tppp tmpp tmmp xp` |
| `1` | `yp_zm` | `1` | `-376` | `-499` | `-376` | `xm ym yp zm tmmp tpmp tppp tpmm tmpp tppm tmpm tmmm zp xp` |
| `11` | `zm_yp` | `1` | `-376` | `-499` | `-376` | `xm ym zm yp zp tmmm tpmm tppm tpmp tmpm tppp tmpp tmmp xp` |
| `12` | `zm_yp` | `1` | `-376` | `-499` | `-376` | `xm ym zm yp tmmp tpmp tppp tpmm tmpp tppm tmpm tmmm zp xp` |

## Next Target

StrengthenedGraph147RankedEvalTargetTailObjectFamily; prove the same suffix-gain margin inequalities semantically over Graph147YpZmRankedEvalMarginObj and Graph147ZmYpRankedEvalMarginObj using the derived Graph147TargetCompletionTail fact, not by importing this diagnostic path-class table.
