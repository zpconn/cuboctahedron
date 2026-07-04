# Closed Bellman Strengthened Reachable Frontier Profile

Diagnostic-only profile.  This does not prove coverage; it identifies
the next bounded graph states that should receive semantic eval states
and local branch tables.

- decision: `next-frontier-ready-for-semantic-state-emission`
- graph source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedShardedSmoke/All.lean`
- input: `scripts/generated/closed_bellman_strengthened_local_branch_table_shard000_input.json`, `scripts/generated/closed_bellman_strengthened_used_face_local_branch_table_shard000_input.json`, `scripts/generated/closed_bellman_strengthened_next_frontier_local_branch_table_shard001_input.json`
- semantic source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke.lean`
- checked graph edges: `229`
- checked graph states with outgoing edges: `194`
- covered graph states: `7`
- mismatch count: `0`
- next frontier states: `8`
- next frontier terminal states: `0`
- next frontier states with existing semantic eval states: `0`
- next frontier states missing semantic eval states: `8`

## Covered State Audit

| constructor | table kind | graph | input branches | graph branches | matches |
| --- | --- | ---: | ---: | ---: | ---: |
| `prefix2` | `graph-only` | `143` | `3` | `3` | `True` |
| `prefix3Tmpm` | `graph-only` | `146` | `2` | `2` | `True` |
| `prefix3Yp` | `graph-only` | `144` | `2` | `2` | `True` |
| `prefix3Zm` | `graph-only` | `145` | `3` | `3` | `True` |
| `prefix4YpTmmm` | `used-face` | `148` | `2` | `2` | `True` |
| `prefix4ZmZp` | `used-face` | `149` | `2` | `2` | `True` |
| `prefix4YpZm` | `graph-only` | `147` | `2` | `2` | `True` |

## Next Frontier

| graph | outgoing branches | outgoing |
| ---: | ---: | --- |
| `150` | `1` | zp -> 157 (114) |
| `151` | `1` | tppp -> 159 (96) |
| `152` | `2` | tpmm -> 161 (-36), zp -> 160 (-18) |
| `153` | `1` | tmmm -> 163 (-124) |
| `154` | `2` | tpmp -> 164 (96), zp -> 162 (114) |
| `155` | `1` | tpmp -> 166 (96) |
| `156` | `2` | tppm -> 167 (-36), zp -> 165 (-18) |
| `158` | `1` | tppm -> 170 (96) |

## Semantic Eval-State Availability

- existing next-frontier semantic graph states: `[]`
- missing next-frontier semantic graph states: `[150, 151, 152, 153, 154, 155, 156, 158]`

## Proof Status

Diagnostic only. The checked graph source gives local graph edges, but the next frontier still needs semantic eval-state definitions and Lean local branch tables.
