# Bellman Semantic Next-Completion Audit

Decision: `semantic-next-completion-matches-graph`

Promote the semantic completion state into the Lean suffix predicate: the graph-local next-face set is explained by target-pairing completion plus schedule/square-gap data.

## Target

- Graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- State audit input: `scripts/generated/bellman_state150_tppp_explicit_transition_audit.json`
- State: `150`
- Schedule mode: `observed+square-gap`
- Target pairing: `pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`

## Semantic State

- Step: `4`
- Parity: `111`
- Stack: `['dm11@0']`
- Cancellations: `[]`
- Shadow length: `1`

## Next Faces

| Set | Faces |
| --- | --- |
| semantic legal | `['zp']` |
| graph outgoing | `['zp']` |
| missing in graph | `[]` |
| extra in graph | `[]` |

## Rejected Candidate

- Candidate: `tppp`
- Semantically illegal: `True`
