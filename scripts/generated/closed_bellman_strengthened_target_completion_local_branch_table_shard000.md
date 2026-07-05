# Closed Bellman Strengthened Local Branch Table Shard 000

- Lean output: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000.lean`
- State count: `7`
- Branch count: `8`

This is generated local-transition evidence, not rank coverage.

## States

### `prefix4YpZm`

- Eval state: `strengthenedClosedPrefix4YpZmEvalState`
- Completion state: `graph147TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix4Graph147TargetCompletionLocalBranchTable`
- Branch count: `2`

- zp -> graph 153, gain -10
- tmmp -> graph 155, gain -124

### `prefix5YpZmZp`

- Eval state: `strengthenedClosedPrefix5YpZmZpEvalState`
- Completion state: `graph153TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix5Graph153TargetCompletionLocalBranchTable`
- Branch count: `1`

- tmmm -> graph 163, gain -124

### `prefix6YpZmZpTmmm`

- Eval state: `strengthenedClosedPrefix6YpZmZpTmmmEvalState`
- Completion state: `graph163TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix6Graph163TargetCompletionLocalBranchTable`
- Branch count: `1`

- tpmm -> graph 176, gain 96

### `prefix6YpZmTmmpTpmp`

- Eval state: `strengthenedClosedPrefix6YpZmTmmpTpmpEvalState`
- Completion state: `graph166TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix6Graph166TargetCompletionLocalBranchTable`
- Branch count: `1`

- tppp -> graph 178, gain -36

### `prefix5YpZmTmmp`

- Eval state: `strengthenedClosedPrefix5YpZmTmmpEvalState`
- Completion state: `graph155TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix5Graph155TargetCompletionLocalBranchTable`
- Branch count: `1`

- tpmp -> graph 166, gain 96

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
