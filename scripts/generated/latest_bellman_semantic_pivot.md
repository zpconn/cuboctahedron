# Latest Bellman Semantic Pivot Audit

- status: `latest-bellman-semantic-pivot-has-graph183-sequencebadface-carrier`
- files checked: `10`
- forbidden hits: `0`

## Checked Surfaces

- `bellman_object`: `Cuboctahedron/Search/TopPairingBellmanObject.lean`
  - required symbols: present
- `target_cursor`: `Cuboctahedron/Search/TopPairingTargetCursor.lean`
  - required symbols: present
- `transducer_tail`: `Cuboctahedron/Search/TopPairingTransducerTail.lean`
  - required symbols: present
- `transducer_semantic_gate`: `Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean`
  - required symbols: present
- `terminal_eval_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTerminalStatePartialMachineEvalSocket.lean`
  - required symbols: present
- `graph183_lane`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183TerminalTailPrefixSmoke.lean`
  - required symbols: present
- `graph183_tail_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean`
  - required symbols: present
- `graph183_accepted_branch_quotient`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183AcceptedBranchQuotient.lean`
  - required symbols: present
- `graph183_quotient_smoke`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183CocycleQuotientSmoke.lean`
  - required symbols: present
- `graph183_quotient_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183QuotientMarginSocket.lean`
  - required symbols: present

## Decision

Accepted:

- Bellman/potential remains the margin certificate route
- rank objects are semantic closed-language subtypes
- target-shadow cursor and transducer tail are the membership front door
- graph183 completion-tail membership is already semantic
- graph183 accepted branch has a tiny Lean-checked quotient raw-gain module
- the full graph183 quotient smoke is diagnostic, not a production import
- graph183 now exposes a generic sequenceBadFace quotient-margin carrier
- the next graph183 target is an upstream semantic proof of that carrier

Rejected:

- selected-prefix membership as production coverage
- sampled-rank/path object membership
- accepted trace ids as production membership
- one branch per rank/path
- exact affine RHS or solved start-point keys as membership state
- claiming graph183 alone proves all layer-4 coverage
- whole-label exact-eval as the primary graph183 proof obligation

Next gate:

Prove Graph183TailQuotientMarginSequenceBadFace scaledMargin semantically for the upstream strengthened language, then feed it through graph183TailQuotientMarginFamily_of_sequenceBadFace. Pair it with the generic branch-local start-violation surface. If that proof demands sampled ranks, selected prefixes, accepted trace ids, exact affine RHS, solved start-point keys, or one branch per rank/path, stop graph183 scaling and switch to the cancellation-segment or stronger cocycle quotient state.
