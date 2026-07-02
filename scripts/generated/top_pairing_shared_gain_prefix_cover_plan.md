# Top-Pairing Shared-Gain Prefix Cover Plan

This is diagnostic-only evidence, not Lean proof.  It computes a
minimum-cardinality cover of graph-accepted top-pairing trace ids by
face-label prefixes whose compatible accepted traces all have the same
Bellman gain.  These are candidates for
`TerminalTracePrefixSharedGainClosedMarginFamily`.

- source: `scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json`
- accepted traces: `37`
- homogeneous prefix candidates: `43`
- minimum bucket cover size: `31`
- singleton buckets: `26`
- largest bucket size: `3`

## Cover

| # | depth | gain | count | accepted indices | prefix |
| ---: | ---: | ---: | ---: | --- | --- |
| `0` | `9` | `-376` | `3` | `0, 1, 2` | `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp` |
| `1` | `4` | `-552` | `2` | `27, 28` | `xm ym yp zm` |
| `2` | `4` | `-552` | `2` | `32, 33` | `xm ym zm yp` |
| `3` | `5` | `-304` | `2` | `25, 26` | `xm ym yp tmmm zm` |
| `4` | `10` | `-376` | `2` | `29, 30` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm` |
| `5` | `4` | `-348` | `1` | `17` | `xm ym tmpm zm` |
| `6` | `5` | `-552` | `1` | `36` | `xm ym zm zp yp` |
| `7` | `6` | `-568` | `1` | `24` | `xm ym yp tmmm tpmm zp` |
| `8` | `7` | `-640` | `1` | `23` | `xm ym yp tmmm tpmm tppm zp` |
| `9` | `8` | `-352` | `1` | `22` | `xm ym yp tmmm tpmm tppm tpmp zp` |
| `10` | `9` | `-640` | `1` | `21` | `xm ym yp tmmm tpmm tppm tpmp tmpm zp` |
| `11` | `10` | `-612` | `1` | `5` | `xm ym tmpm tppm tpmm tppp tmmm tpmp yp zp` |
| `12` | `10` | `-612` | `1` | `6` | `xm ym tmpm tppm tpmm tppp tmmm tpmp zp yp` |
| `13` | `10` | `-596` | `1` | `31` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm yp` |
| `14` | `10` | `-568` | `1` | `20` | `xm ym yp tmmm tpmm tppm tpmp tmpm tppp zp` |
| `15` | `11` | `-684` | `1` | `10` | `xm ym tmpm tppm tpmm tppp tmmm zp zm tpmp yp` |
| `16` | `11` | `-684` | `1` | `14` | `xm ym tmpm tppm tpmm zp zm tppp tmmm tpmp yp` |
| `17` | `11` | `-612` | `1` | `8` | `xm ym tmpm tppm tpmm tppp tmmm tpmp zp zm yp` |
| `18` | `11` | `-612` | `1` | `16` | `xm ym tmpm tppm zp zm tpmm tppp tmmm tpmp yp` |
| `19` | `11` | `-596` | `1` | `3` | `xm ym tmpm tppm tpmm tppp tmmm tpmp yp tmpp tmmp` |
| `20` | `11` | `-596` | `1` | `35` | `xm ym zm zp tmpm tppm tpmm tppp tmmm tpmp yp` |
| `21` | `11` | `-552` | `1` | `18` | `xm ym yp tmmm tpmm tppm tpmp tmpm tppp tmpp tmmp` |
| `22` | `11` | `-464` | `1` | `9` | `xm ym tmpm tppm tpmm tppp tmmm zp zm tpmp tmmp` |
| `23` | `11` | `-464` | `1` | `13` | `xm ym tmpm tppm tpmm zp zm tppp tmmm tpmp tmmp` |
| `24` | `11` | `-396` | `1` | `12` | `xm ym tmpm tppm tpmm tppp zp zm tmmm tpmp yp` |
| `25` | `11` | `-392` | `1` | `7` | `xm ym tmpm tppm tpmm tppp tmmm tpmp zp zm tmmp` |
| `26` | `11` | `-392` | `1` | `15` | `xm ym tmpm tppm zp zm tpmm tppp tmmm tpmp tmmp` |
| `27` | `11` | `-376` | `1` | `34` | `xm ym zm zp tmpm tppm tpmm tppp tmmm tpmp tmmp` |
| `28` | `11` | `-348` | `1` | `4` | `xm ym tmpm tppm tpmm tppp tmmm tpmp yp tmpp zm` |
| `29` | `11` | `-304` | `1` | `19` | `xm ym yp tmmm tpmm tppm tpmp tmpm tppp tmpp zm` |
| `30` | `11` | `-176` | `1` | `11` | `xm ym tmpm tppm tpmm tppp zp zm tmmm tpmp tmmp` |

## Decision Hint

A small cover is useful only if each bucket's prefix condition and
margin inequality can be proved from semantic cancellation/source-position
state facts.  If these buckets require rank-indexed affine RHS tables or
one proof per full trace/rank, reject this Bellman production route.

