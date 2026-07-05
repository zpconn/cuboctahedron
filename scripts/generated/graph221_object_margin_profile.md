# Graph221 Object-Margin Profile Audit

Untrusted diagnostic audit.  This file is not Lean proof evidence.

- Profile range: `[0, 10000000]`
- State key mode: `with-step-tri-source`
- Total graph path classes: `273`
- Graph221 classes: `3`
- Graph221 observed count: `3`
- All classes recognized: `True`
- All margins <= expected bounds: `True`
- All margins equal expected bounds: `True`

## Classes

| class | count | margin | expected gain | expected bound | faces |
| ---: | ---: | ---: | ---: | ---: | --- |
| `16` | `1` | `-420` | `-596` | `-420` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm yp tmpm tmmm zp xp` |
| `17` | `1` | `-200` | `-376` | `-200` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm tmpm yp zp xp` |
| `18` | `1` | `-200` | `-376` | `-200` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm tmpm zp yp xp` |

## Next Target

Graph221ZmTmppSplit10MRootMarginObjectBound; prove the same margin inequalities semantically over closed graph221 objects, not by importing this diagnostic path-class table as evidence.
