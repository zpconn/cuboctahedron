# Closed Bellman Strengthened Reachable Frontier Profile

Diagnostic-only profile.  This does not prove coverage; it identifies
the next bounded graph states that should receive semantic eval states
and local branch tables.

- decision: `next-frontier-ready-for-semantic-state-emission`
- graph source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedShardedSmoke/All.lean`
- input: `scripts/generated/closed_bellman_strengthened_local_branch_table_shard000_input.json`, `scripts/generated/closed_bellman_strengthened_used_face_local_branch_table_shard000_input.json`
- semantic source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke.lean`
- checked graph edges: `229`
- checked graph states with outgoing edges: `194`
- covered graph states: `5`
- mismatch count: `0`
- next frontier states: `7`
- next frontier terminal states: `0`
- next frontier states with existing semantic eval states: `0`
- next frontier states missing semantic eval states: `7`

## Covered State Audit

| constructor | table kind | graph | input branches | graph branches | matches |
| --- | --- | ---: | ---: | ---: | ---: |
| `prefix2` | `graph-only` | `143` | `3` | `3` | `True` |
| `prefix3Tmpm` | `graph-only` | `146` | `2` | `2` | `True` |
| `prefix3Yp` | `graph-only` | `144` | `2` | `2` | `True` |
| `prefix3Zm` | `graph-only` | `145` | `3` | `3` | `True` |
| `prefix4YpTmmm` | `used-face` | `148` | `2` | `2` | `True` |

## Next Frontier

| graph | outgoing branches | outgoing |
| ---: | ---: | --- |
| `147` | `2` | tmmp -> 155 (-124), zp -> 153 (-10) |
| `149` | `2` | tmpm -> 158 (-124), yp -> 153 (-73) |
| `150` | `1` | zp -> 157 (114) |
| `151` | `1` | tppp -> 159 (96) |
| `152` | `2` | tpmm -> 161 (-36), zp -> 160 (-18) |
| `154` | `2` | tpmp -> 164 (96), zp -> 162 (114) |
| `156` | `2` | tppm -> 167 (-36), zp -> 165 (-18) |

## Semantic Eval-State Availability

- existing next-frontier semantic graph states: `[]`
- missing next-frontier semantic graph states: `[147, 149, 150, 151, 152, 154, 156]`

## Proof Status

Diagnostic only. The checked graph source gives local graph edges, but the next frontier still needs semantic eval-state definitions and Lean local branch tables.
