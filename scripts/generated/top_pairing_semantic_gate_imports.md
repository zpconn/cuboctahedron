# Top-Pairing Bellman Semantic Gate Import Audit

This audit is diagnostic status evidence, not proof.  It follows Lean
`import` lines for key Bellman semantic-gate modules and reports whether
a target is lightweight enough to sit on a public/residual bridge path.

- overall decision: `keep-semantic-gate-lightweight-and-producer-roots-downstream`

| target | decision | modules | generated residual | split graph smoke | terminal trace shards | root trace-margin |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `search_semantic_gate` | `lightweight-boundary-ok` | `40` | `0` | `0` | `0` | `0` |
| `terminal_accepted_gate` | `reject-as-lightweight-public-bridge` | `54` | `14` | `1` | `8` | `0` |
| `terminal_direct_socket` | `reject-as-lightweight-public-bridge` | `227` | `182` | `124` | `8` | `0` |
| `selected_prefix_residual_bridge` | `reject-as-lightweight-public-bridge` | `247` | `197` | `124` | `8` | `0` |
| `state_dag_prefix_socket` | `semantic-socket-ok` | `182` | `141` | `124` | `8` | `0` |
| `state_dag_selected_prefix_group` | `bounded-semantic-producer-group` | `183` | `142` | `124` | `8` | `0` |
| `state_dag_selected_prefix_cover` | `semantic-producer-root-serial-build-required` | `190` | `149` | `124` | `8` | `0` |
| `root_trace_margin_bridge` | `heavy-producer-root-keep-downstream` | `246` | `200` | `124` | `8` | `1` |

## Interpretation

- `search_semantic_gate` should remain the preferred public theorem
  surface for Bellman membership plumbing.
- `terminal_accepted_gate` is acceptable as a generated leaf/socket
  consumer when its imports remain already-built and bounded.
- `root_trace_margin_bridge` is a producer-root adapter, not a module to
  import from the public residual bridge.
- `state_dag_prefix_socket` is the accepted semantic Bellman terminal
  socket.  It is theorem-facing and small enough for focused checks.
- `state_dag_selected_prefix_cover` is the accepted bounded semantic
  producer root for the current top-pairing selected-prefix subproblem,
  but it must be compiled with serial group scheduling before the root.
- Any future public/residual bridge target with split graph smoke shards
  or many terminal shards in its closure should be rejected or moved
  behind a separate measured producer root.

## `search_semantic_gate`

- module: `Cuboctahedron.Search.TopPairingBellmanSemanticGate`
- decision: `lightweight-boundary-ok`
- missing imports: `11`
- generated residual modules: `0`
- split graph smoke modules: `0`
- terminal trace modules: `0`

## `terminal_accepted_gate`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge`
- decision: `reject-as-lightweight-public-bridge`
- missing imports: `11`
- generated residual modules: `14`
- split graph smoke modules: `1`
- terminal trace modules: `8`

## `terminal_direct_socket`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket`
- decision: `reject-as-lightweight-public-bridge`
- missing imports: `11`
- generated residual modules: `182`
- split graph smoke modules: `124`
- terminal trace modules: `8`

## `selected_prefix_residual_bridge`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixResidualBridge`
- decision: `reject-as-lightweight-public-bridge`
- missing imports: `11`
- generated residual modules: `197`
- split graph smoke modules: `124`
- terminal trace modules: `8`

## `state_dag_prefix_socket`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke`
- decision: `semantic-socket-ok`
- missing imports: `11`
- generated residual modules: `141`
- split graph smoke modules: `124`
- terminal trace modules: `8`

## `state_dag_selected_prefix_group`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixGroup`
- decision: `bounded-semantic-producer-group`
- missing imports: `11`
- generated residual modules: `142`
- split graph smoke modules: `124`
- terminal trace modules: `8`

## `state_dag_selected_prefix_cover`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover.All`
- decision: `semantic-producer-root-serial-build-required`
- missing imports: `11`
- generated residual modules: `149`
- split graph smoke modules: `124`
- terminal trace modules: `8`

## `root_trace_margin_bridge`

- module: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingRootTraceMarginSelectedPrefixBridge`
- decision: `heavy-producer-root-keep-downstream`
- missing imports: `11`
- generated residual modules: `200`
- split graph smoke modules: `124`
- terminal trace modules: `8`

