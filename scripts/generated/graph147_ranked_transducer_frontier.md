# Graph147 Ranked Transducer Frontier

- status: `ready_for_ranked_transducer_invariant_producer`
- socket file: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket.lean`
- forbidden hits: `none`

## Socket Symbols

- `StrengthenedGraph147RankedTransducerInvariantFamily`: `true`
- `graphExactEvalGate_of_rankedTransducerInvariantFamily`: `true`
- `rootMarginBundle_of_rankedTransducerInvariantFamily`: `true`

## Semantic Inputs

### target_cursor

- file: `Cuboctahedron/Search/TopPairingTargetCursor.lean`
- `topPairingTargetShadow_of_summary`: `true`
- `topPairingTriShadow_eq_target_of_closed`: `true`
- `topPairingTriCursor_of_closed`: `true`
- `TopPairingTargetCursorAtRank`: `true`

### transducer_tail

- file: `Cuboctahedron/Search/TopPairingTransducerTail.lean`
- `structure TopPairingTransducerTail`: `true`
- `theorem ofClosedRank`: `true`
- `theorem cons`: `true`

### transducer_eval

- file: `Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean`
- `theorem start_tail_of_closed`: `true`
- `theorem next?_tail`: `true`
- `theorem evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix`: `true`

### transducer_gate

- file: `Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean`
- `strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix`: `true`

## Remaining Producer Fields

- `start`: the generated invariant holds at the strengthened closed evaluator start
- `suffixStart`: every strengthened closed graph147 rank starts with the rank-indexed suffix certificate
- `localStep`: every semantic state/face head transition advances the deterministic evaluator and preserves the invariant and suffix certificate
- `finish`: every accepted final state has nonnegative potential and proves the full-root margin bound

## Next Step

Generate or prove StrengthenedGraph147RankedTransducerInvariantFamily from target-shadow cursor, schedule/square-gap/local-axis tail, pair-count/used-face facts, and graph147 Bellman state semantics. Do not use sampled ranks, selected prefixes, accepted trace ids, exact affine keys, or per-observed-path membership.
