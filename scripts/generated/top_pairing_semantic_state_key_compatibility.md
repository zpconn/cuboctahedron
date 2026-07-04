# Top-Pairing Semantic State-Key Compatibility Audit

Decision: `semantic-state-key-transition-compatible`

Graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
Linear comparison graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`

## Transition Key Audit

| Metric | Value |
| --- | ---: |
| `state_count` | `970` |
| `edge_count` | `1054` |
| `multi_label_edges` | `0` |
| `parse_error_count` | `0` |
| `stack_mismatch_count` | `0` |
| `transition_mismatch_count` | `0` |
| `deterministic_conflict_count` | `0` |

## Linear Projection Audit

| Projection | Keys | Collisions | Max Linear Values |
| --- | ---: | ---: | ---: |
| `fine_face_counts` | `223` | `0` | `1` |
| `pair_remainders` | `223` | `0` | `1` |

## Interpretation

The graph key is internally deterministic for the audited transition table: replaying `triSrc` reconstructs `stack`, every observed edge matches the local pair-remainder/parity/stack/triSrc update, and state plus label has a unique destination/gain.

This audit is diagnostic only; it does not trust the graph as proof.
