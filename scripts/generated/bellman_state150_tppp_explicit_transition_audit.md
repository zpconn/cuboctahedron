# Bellman Explicit Transition Completion Audit

Decision: `explicit_transition_has_no_target_pairing_completions`

The target-pairing/schedule language has no completions after this transition.  The next Lean socket should prove the corresponding semantic contradiction, not add a graph edge.

## Target

- Graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- State: `150`
- Face: `tppp`
- Schedule mode: `observed+square-gap`
- State-key mode: `with-step-face-linear-tri-source`
- Target pairing: `pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`

## Summary

| Metric | Value |
| --- | ---: |
| `prefix_count` | `1` |
| `max_completions` | `100000` |
| `total_completions` | `0` |
| `total_matched_top_family` | `0` |
| `truncated` | `False` |

## Reasons

| Reason | Count |
| --- | ---: |

## Prefix Samples

- `xm ym tmpm zm`
