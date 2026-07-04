# Closed Bellman Strengthened Reachable Frontier Profile

Diagnostic-only profile.  This does not prove coverage; it identifies
the next bounded graph states that should receive semantic eval states
and local branch tables.

- decision: `next-frontier-ready-for-semantic-state-emission`
- graph source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedShardedSmoke/All.lean`
- input: `scripts/generated/closed_bellman_strengthened_local_branch_table_shard000_input.json`, `scripts/generated/closed_bellman_strengthened_used_face_local_branch_table_shard000_input.json`, `scripts/generated/closed_bellman_strengthened_target_completion_local_branch_table_shard000_input.json`
- semantic source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke.lean`
- checked graph edges: `229`
- checked graph states with outgoing edges: `194`
- covered graph states: `7`
- mismatch count: `0`
- next frontier states: `8`
- next frontier terminal states: `0`
- next frontier states with existing semantic eval states: `3`
- next frontier states missing semantic eval states: `5`

## Covered State Audit

| constructor | table kind | graph | input branches | graph branches | matches |
| --- | --- | ---: | ---: | ---: | ---: |
| `prefix2` | `graph-only` | `143` | `3` | `3` | `True` |
| `prefix3Tmpm` | `graph-only` | `146` | `2` | `2` | `True` |
| `prefix3Yp` | `graph-only` | `144` | `2` | `2` | `True` |
| `prefix3Zm` | `graph-only` | `145` | `3` | `3` | `True` |
| `prefix4YpTmmm` | `used-face` | `148` | `2` | `2` | `True` |
| `prefix4ZmZp` | `used-face` | `149` | `2` | `2` | `True` |
| `prefix4TmpmZm` | `target-completion` | `150` | `1` | `1` | `True` |

## Next Frontier

| graph | outgoing branches | outgoing |
| ---: | ---: | --- |
| `147` | `2` | tmmp -> 155 (-124), zp -> 153 (-10) |
| `151` | `1` | tppp -> 159 (96) |
| `152` | `2` | tpmm -> 161 (-36), zp -> 160 (-18) |
| `153` | `1` | tmmm -> 163 (-124) |
| `154` | `2` | tpmp -> 164 (96), zp -> 162 (114) |
| `156` | `2` | tppm -> 167 (-36), zp -> 165 (-18) |
| `157` | `1` | tppm -> 169 (96) |
| `158` | `1` | tppm -> 170 (96) |

## Semantic Eval-State Availability

- existing next-frontier semantic graph states: `[147, 151, 152]`
- missing next-frontier semantic graph states: `[153, 154, 156, 157, 158]`

## Proof Status

Diagnostic only. The checked graph source gives local graph edges, but the next frontier still needs semantic eval-state definitions and Lean local branch tables.
