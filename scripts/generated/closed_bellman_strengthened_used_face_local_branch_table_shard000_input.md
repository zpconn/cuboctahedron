# Closed Bellman Strengthened Local Branch Table Shard 000 Input

- JSON output: `scripts/generated/closed_bellman_strengthened_used_face_local_branch_table_shard000_input.json`
- Decision: `source-derived-bounded-frontier-ready-for-emitter`
- Source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke.lean`
- State count: `2`
- Branch count: `4`

This input is a source-derived bounded frontier contract for generated StrengthenedLocalBranchTable shards. It is not rank coverage.

## States

### `prefix4YpTmmm`

- Eval state: `strengthenedClosedPrefix4YpTmmmUsedEvalState`
- Graph state: `148`
- Table kind: `used-face`
- Table class: `StrengthenedUsedFaceLocalBranchTable`
- Table: `strengthenedPrefix4Graph148UsedFaceLocalBranchTable`
- Branch type: `StrengthenedPrefix4Graph148Branch`
- Branch count: `2`

- zm -> graph 154, gain 114
- tpmm -> graph 156, gain 96

### `prefix4ZmZp`

- Eval state: `strengthenedClosedPrefix4ZmZpUsedEvalState`
- Graph state: `149`
- Table kind: `used-face`
- Table class: `StrengthenedUsedFaceLocalBranchTable`
- Table: `strengthenedPrefix4Graph149UsedFaceLocalBranchTable`
- Branch type: `StrengthenedPrefix4Graph149Branch`
- Branch count: `2`

- yp -> graph 153, gain -73
- tmpm -> graph 158, gain -124

## Next Profiler Requirement

Replace this static frontier with discovered reachable semantic states whose tables are proved by the same local-transition API.
