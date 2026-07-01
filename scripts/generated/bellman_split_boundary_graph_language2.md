# Bellman Split Boundary Audit

- Status: `passed`
- Graph file: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2GraphSmoke.lean`
- Terminal file: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2TerminalSmoke.lean`
- Graph lines: `24369`
- Terminal lines: `740`
- Graph `PositiveCert` mentions: `0`
- Terminal `NonIdCert` payloads: `2`

## Boundary Checks

| check | count | entries |
| --- | ---: | --- |
| `graph_required_missing` | `0` | - |
| `graph_forbidden_present` | `0` | - |
| `terminal_required_missing` | `0` | - |
| `terminal_forbidden_present` | `0` | - |

## Decision Notes

- Graph shards should expose object-level Bellman surfaces only.
- Terminal shards should own local start-violation payloads.
- This audit is a source-level engineering guard, not proof evidence.
