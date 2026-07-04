# Closed Bellman Strengthened Local Branch Table Shard 000 Input

- JSON output: `scripts/generated/closed_bellman_strengthened_local_branch_table_shard000_input.json`
- Decision: `source-derived-bounded-frontier-ready-for-emitter`
- Source: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke.lean`
- State count: `4`
- Branch count: `10`

This input is a source-derived bounded frontier contract for generated StrengthenedLocalBranchTable shards. It is not rank coverage.

## States

### `prefix2`

- Eval state: `strengthenedClosedPrefix2EvalState`
- Graph state: `143`
- Table kind: `graph-only`
- Table class: `StrengthenedLocalBranchTable`
- Table: `strengthenedPrefix2LocalBranchTable`
- Branch type: `StrengthenedPrefix2Branch`
- Branch count: `3`

- tmpm -> graph 146, gain -124
- yp -> graph 144, gain -73
- zm -> graph 145, gain -10

### `prefix3Tmpm`

- Eval state: `strengthenedClosedPrefix3TmpmEvalState`
- Graph state: `146`
- Table kind: `graph-only`
- Table class: `StrengthenedLocalBranchTable`
- Table: `strengthenedPrefix3TmpmLocalBranchTable`
- Branch type: `StrengthenedPrefix3TmpmBranch`
- Branch count: `2`

- zm -> graph 150, gain 114
- tppm -> graph 152, gain 96

### `prefix3Yp`

- Eval state: `strengthenedClosedPrefix3YpEvalState`
- Graph state: `144`
- Table kind: `graph-only`
- Table class: `StrengthenedLocalBranchTable`
- Table: `strengthenedPrefix3YpLocalBranchTable`
- Branch type: `StrengthenedPrefix3YpBranch`
- Branch count: `2`

- zm -> graph 147, gain -10
- tmmm -> graph 148, gain -124

### `prefix3Zm`

- Eval state: `strengthenedClosedPrefix3ZmEvalState`
- Graph state: `145`
- Table kind: `graph-only`
- Table class: `StrengthenedLocalBranchTable`
- Table: `strengthenedPrefix3ZmLocalBranchTable`
- Branch type: `StrengthenedPrefix3ZmBranch`
- Branch count: `3`

- yp -> graph 147, gain -73
- zp -> graph 149, gain -10
- tmpp -> graph 151, gain -124

## Next Profiler Requirement

Replace this static frontier with discovered reachable semantic states whose tables are proved by the same local-transition API.
