# Latest Bellman Semantic Pivot Audit

- status: `latest-bellman-semantic-pivot-one-lane-validated`
- files checked: `6`
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

## Decision

Accepted:

- Bellman/potential remains the margin certificate route
- rank objects are semantic closed-language subtypes
- target-shadow cursor and transducer tail are the membership front door
- graph183 tmpm_zm is one validated semantic terminal-machine lane

Rejected:

- selected-prefix membership as production coverage
- sampled-rank/path object membership
- one branch per rank/path
- exact affine RHS or solved start-point keys as membership state
- claiming graph183 alone proves all layer-4 coverage

Next gate:

Instantiate the graph183 four-piece terminal-machine pattern for one additional layer-4 lane, or make the generator emit the same semantic progress/completion/suffix/eval surface for all seven lanes. If that demands exact affine data, stop and run the cocycle/cancellation-summary quotient experiment first.
