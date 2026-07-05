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

- remaining gap: prove TerminalContainedEvalPrefixGate machine start rank, not just TerminalContainedEvalProgressGate to the layer-4 frontier, from TopPairingStrengthenedClosedLanguageAtRank
- next slice: extend the terminal frontier emitter from layer-4 progress to a terminal contained eval-prefix gate, or add a compositional frontier-to-terminal machine theorem if a full terminal gate is still too large
