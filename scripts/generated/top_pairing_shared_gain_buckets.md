# Top-Pairing Shared-Gain Buckets

This is exact diagnostic evidence, not Lean proof.  It reads the
already-generated accepted top-pairing traces and groups them by
Bellman gain and by homogeneous-gain prefixes.  The intended Lean
consumer is `TerminalTraceIdSharedGainBucketClosedMarginFamily`.

- source: `scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json`
- accepted traces: `37`
- distinct gains: `14`
- homogeneous prefix buckets with size > 1: `8`

## Gain Buckets

| gain | count | accepted indices |
| ---: | ---: | --- |
| `-552` | `6` | `18, 27, 28, 32, 33, 36` |
| `-376` | `6` | `0, 1, 2, 29, 30, 34` |
| `-612` | `4` | `5, 6, 8, 16` |
| `-596` | `3` | `3, 31, 35` |
| `-304` | `3` | `19, 25, 26` |
| `-684` | `2` | `10, 14` |
| `-640` | `2` | `21, 23` |
| `-568` | `2` | `20, 24` |
| `-464` | `2` | `9, 13` |
| `-392` | `2` | `7, 15` |
| `-348` | `2` | `4, 17` |
| `-396` | `1` | `12` |
| `-352` | `1` | `22` |
| `-176` | `1` | `11` |

## Largest Homogeneous Prefix Buckets

| depth | gain | count | accepted indices | prefix |
| ---: | ---: | ---: | --- | --- |
| `9` | `-376` | `3` | `0, 1, 2` | `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp` |
| `10` | `-376` | `3` | `0, 1, 2` | `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp tmpp` |
| `4` | `-552` | `2` | `27, 28` | `xm ym yp zm` |
| `4` | `-552` | `2` | `32, 33` | `xm ym zm yp` |
| `5` | `-304` | `2` | `25, 26` | `xm ym yp tmmm zm` |
| `10` | `-376` | `2` | `29, 30` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm` |
| `11` | `-376` | `2` | `1, 2` | `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp tmpp zm` |
| `11` | `-376` | `2` | `29, 30` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm tmpm` |

## Decision Hint

Use a homogeneous prefix bucket only if its prefix condition can be
proved from the semantic terminal/source-position language without
enumerating accepted ranks.  If the margin proof for the bucket still
requires exact rank-indexed affine RHS data, this Bellman production
route should be rejected in favor of the cancellation-tree summary
automaton.
