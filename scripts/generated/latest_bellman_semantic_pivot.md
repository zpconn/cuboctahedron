# Latest Bellman Semantic Pivot Audit

- status: `latest-bellman-semantic-pivot-has-graph183-direct-kill-route`
- files checked: `11`
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
- `closed_bellman_strengthened_semantic_gate_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket.lean`
  - required symbols: present

## Decision

Accepted:

- Bellman/potential remains the margin certificate route
- rank objects are semantic closed-language subtypes
- target-shadow cursor and transducer tail are the membership front door
- graph183 completion-tail membership is already semantic
- graph183 accepted branch has a tiny Lean-checked quotient raw-gain module
- the full graph183 quotient smoke is diagnostic, not a production import
- graph183 now exposes a direct semantic completion-tail killed route
- the generic sequenceBadFace quotient-margin carrier remains available as support
- strengthened closed Bellman now exposes step-run, graph-exact, and eval-family ingress surfaces
- the next graph183 target is layer-4 routing into the direct killed theorem

Rejected:

- selected-prefix membership as production coverage
- sampled-rank/path object membership
- accepted trace ids as production membership
- one branch per rank/path
- exact affine RHS or solved start-point keys as membership state
- claiming graph183 alone proves all layer-4 coverage
- whole-label exact-eval as the primary graph183 proof obligation

Next gate:

Route the layer-4 graph183 branch to nonIdentityRankKilled_of_acceptedSequenceGraph183SemanticCursor. If that proof demands sampled ranks, selected prefixes, accepted trace ids, exact affine RHS, solved start-point keys, or one branch per rank/path, stop graph183 scaling and strengthen the semantic state rather than reviving selected-prefix coverage.
