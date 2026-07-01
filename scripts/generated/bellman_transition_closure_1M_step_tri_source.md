# Bellman Transition-Closure Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json`

Decision: `no-face-count-state-keys`

This graph state key does not expose signed-face counts, so the naive closure audit is not applicable.

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `label_count` | `14` |
| `states_with_face_counts` | `0` |
| `states_with_missing_transitions` | `0` |
| `states_with_illegal_observed_transitions` | `0` |
| `total_legal_transitions` | `0` |
| `total_observed_label_transitions` | `0` |
| `total_missing_transitions` | `0` |
| `malformed_edges_without_labels` | `0` |
