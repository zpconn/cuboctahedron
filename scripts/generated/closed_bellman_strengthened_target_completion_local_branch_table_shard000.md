# Closed Bellman Strengthened Local Branch Table Shard 000

- Lean output: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000.lean`
- State count: `13`
- Branch count: `14`

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

### `prefix9YpZmZpTmmmTpmmTppmTpmp`

- Eval state: `strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState`
- Completion state: `graph208TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix9Graph208TargetCompletionLocalBranchTable`
- Branch count: `1`

- tmpm -> graph 6, gain -144

### `prefix9YpZmTmmpTpmpTpppTpmmTmpp`

- Eval state: `strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState`
- Completion state: `graph211TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix9Graph211TargetCompletionLocalBranchTable`
- Branch count: `1`

- tppm -> graph 11, gain -36

### `prefix8YpZmZpTmmmTpmmTppm`

- Eval state: `strengthenedClosedPrefix8YpZmZpTmmmTpmmTppmEvalState`
- Completion state: `graph191TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix8Graph191TargetCompletionLocalBranchTable`
- Branch count: `1`

- tpmp -> graph 208, gain -144

### `prefix8YpZmTmmpTpmpTpppTpmm`

- Eval state: `strengthenedClosedPrefix8YpZmTmmpTpmpTpppTpmmEvalState`
- Completion state: `graph194TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix8Graph194TargetCompletionLocalBranchTable`
- Branch count: `1`

- tmpp -> graph 211, gain -144

### `prefix7YpZmZpTmmmTpmm`

- Eval state: `strengthenedClosedPrefix7YpZmZpTmmmTpmmEvalState`
- Completion state: `graph176TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix7Graph176TargetCompletionLocalBranchTable`
- Branch count: `1`

- tppm -> graph 191, gain -36

### `prefix7YpZmTmmpTpmpTppp`

- Eval state: `strengthenedClosedPrefix7YpZmTmmpTpmpTpppEvalState`
- Completion state: `graph178TargetCompletionState`
- Table kind: `target-completion`
- Table: `strengthenedPrefix7Graph178TargetCompletionLocalBranchTable`
- Branch count: `1`

- tpmm -> graph 194, gain -144

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
