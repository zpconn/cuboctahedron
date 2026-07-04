# Closed Bellman Strengthened Reachable Frontier Profile

Diagnostic-only profile.  This does not prove coverage; it identifies
the next bounded graph states that should receive semantic eval states
and local branch tables.

- decision: `next-frontier-ready-for-semantic-state-emission`
- graph source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedShardedSmoke/All.lean`
- input: `scripts/generated/closed_bellman_strengthened_local_branch_table_shard000_input.json`
- checked graph edges: `229`
- checked graph states with outgoing edges: `194`
- covered graph states: `4`
- mismatch count: `0`
- next frontier states: `6`
- next frontier terminal states: `0`

## Covered State Audit

| constructor | graph | input branches | graph branches | matches |
| --- | ---: | ---: | ---: | ---: |
| `prefix2` | `143` | `3` | `3` | `True` |
| `prefix3Tmpm` | `146` | `2` | `2` | `True` |
| `prefix3Yp` | `144` | `2` | `2` | `True` |
| `prefix3Zm` | `145` | `3` | `3` | `True` |

## Next Frontier

| graph | outgoing branches | outgoing |
| ---: | ---: | --- |
| `147` | `2` | tmmp -> 155 (-124), zp -> 153 (-10) |
| `148` | `2` | tpmm -> 156 (96), zm -> 154 (114) |
| `149` | `2` | tmpm -> 158 (-124), yp -> 153 (-73) |
| `150` | `1` | zp -> 157 (114) |
| `151` | `1` | tppp -> 159 (96) |
| `152` | `2` | tpmm -> 161 (-36), zp -> 160 (-18) |

## Proof Status

Diagnostic only. The checked graph source gives local graph edges, but the next frontier still needs semantic eval-state definitions and Lean local branch tables.
