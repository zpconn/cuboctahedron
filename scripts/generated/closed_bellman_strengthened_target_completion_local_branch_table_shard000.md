# Closed Bellman Strengthened Local Branch Table Shard 000

- Lean output: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000.lean`
- State count: `2`
- Branch count: `2`

This is generated local-transition evidence, not rank coverage.

## States

### `prefix4TmpmZm`

- Eval state: `strengthenedClosedPrefix4TmpmZmEvalState`
- Completion state: `graph150TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix4Graph150TargetCompletionLocalBranchTable`
- Branch count: `1`

- zp -> graph 157, gain 114

### `prefix4ZmTmpp`

- Eval state: `strengthenedClosedPrefix4ZmTmppEvalState`
- Completion state: `graph151TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix4Graph151TargetCompletionLocalBranchTable`
- Branch count: `1`

- tppp -> graph 159, gain 96

## Proof Shape

Each generated table is a StrengthenedTargetCompletionLocalBranchTable instance; localTransition is proved by the generic target-completion table theorem from transducer tail plus target-completion tail, not by rank/path enumeration.

## Forbidden Coordinates

- sampled ranks
- selected prefixes
- accepted trace ids
- exact affine RHS keys
