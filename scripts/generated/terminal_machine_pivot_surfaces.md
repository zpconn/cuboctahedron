# Terminal Machine Pivot Surface Audit

- status: `machine-pivot-surfaces-present`
- forbidden hits: `0`

## Surfaces

- `target_cursor`: `Cuboctahedron/Search/TopPairingTargetCursor.lean`
  - required symbols: present
- `terminal_eval_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTerminalStatePartialMachineEvalSocket.lean`
  - required symbols: present
- `terminal_frontier`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTerminalStateFrontierSmoke.lean`
  - required symbols: present
- `closed_transducer_socket`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedTransducerProducerSocket.lean`
  - required symbols: present
- `depth11_graph_path`: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSemanticStateDAGDepth11GraphPathProvidersSmoke.lean`
  - required symbols: present

## Boundary

- remaining gap: instantiate a full generated terminal machine with Layer4ReachablePrefixMachine and prove terminal continuations from its after4 third fourth states for reachable Split10MPrefix4FrontierCons2 pairs
- next slice: generate or prove terminal continuation gates from layer-4 frontier states inside a full generated terminal machine satisfying Layer4ReachablePrefixMachine, then compose them with terminalContainedEvalPrefixGate_of_layer4PrefixMachineContinuationFromContainsAll
