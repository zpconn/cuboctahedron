# Closed Bellman Strengthened Local Branch Table Shard 000

- Lean output: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedUsedFaceLocalBranchTableShard000.lean`
- State count: `2`
- Branch count: `4`

This is generated local-transition evidence, not rank coverage.

## States

### `prefix4YpTmmm`

- Eval state: `strengthenedClosedPrefix4YpTmmmUsedEvalState`
- Table kind: `used-face`
- Table: `strengthenedPrefix4Graph148UsedFaceLocalBranchTable`
- Branch count: `2`

- zm -> graph 154, gain 114
- tpmm -> graph 156, gain 96

### `prefix4ZmZp`

- Eval state: `strengthenedClosedPrefix4ZmZpUsedEvalState`
- Table kind: `used-face`
- Table: `strengthenedPrefix4Graph149UsedFaceLocalBranchTable`
- Branch count: `2`

- yp -> graph 153, gain -73
- tmpm -> graph 158, gain -124

## Proof Shape

Each generated table is a StrengthenedUsedFaceLocalBranchTable instance; localTransition is proved by the generic used-face table theorem, not by rank/path enumeration.

## Forbidden Coordinates

- sampled ranks
- selected prefixes
- accepted trace ids
- exact affine RHS keys
