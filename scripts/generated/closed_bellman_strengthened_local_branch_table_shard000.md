# Closed Bellman Strengthened Local Branch Table Shard 000

- Lean output: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard000.lean`
- State count: `4`
- Branch count: `10`

This is generated local-transition evidence, not rank coverage.

## States

### `prefix2`

- Eval state: `strengthenedClosedPrefix2EvalState`
- Table kind: `graph-only`
- Table: `strengthenedPrefix2LocalBranchTable`
- Branch count: `3`

- tmpm -> graph 146, gain -124
- yp -> graph 144, gain -73
- zm -> graph 145, gain -10

### `prefix3Tmpm`

- Eval state: `strengthenedClosedPrefix3TmpmEvalState`
- Table kind: `graph-only`
- Table: `strengthenedPrefix3TmpmLocalBranchTable`
- Branch count: `2`

- zm -> graph 150, gain 114
- tppm -> graph 152, gain 96

### `prefix3Yp`

- Eval state: `strengthenedClosedPrefix3YpEvalState`
- Table kind: `graph-only`
- Table: `strengthenedPrefix3YpLocalBranchTable`
- Branch count: `2`

- zm -> graph 147, gain -10
- tmmm -> graph 148, gain -124

### `prefix3Zm`

- Eval state: `strengthenedClosedPrefix3ZmEvalState`
- Table kind: `graph-only`
- Table: `strengthenedPrefix3ZmLocalBranchTable`
- Branch count: `3`

- yp -> graph 147, gain -73
- zp -> graph 149, gain -10
- tmpp -> graph 151, gain -124

## Proof Shape

Each generated table is a StrengthenedLocalBranchTable instance; localTransition is proved by the generic table theorem, not by rank/path enumeration.

## Forbidden Coordinates

- sampled ranks
- selected prefixes
- accepted trace ids
- exact affine RHS keys
