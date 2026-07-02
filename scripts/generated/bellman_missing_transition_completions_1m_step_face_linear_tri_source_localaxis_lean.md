# Bellman Missing-Transition Completion Audit

Graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
Closure input: `scripts/generated/bellman_target_pairing_closure_1m_step_face_linear_tri_source_localaxis_lean.json`

Decision: `canonical_bad_face_filter_would_close`

Every remaining completion is excluded solely by canonical bad-face mismatch.  A canonical-bad-face compatibility predicate is the next Bellman membership invariant to test/formalize.

## Summary

| Metric | Value |
| --- | ---: |
| `gap_count` | `1` |
| `total_completions` | `1` |
| `total_matched_top_family` | `0` |
| `truncated_gaps` | `0` |
| `canonical_bad_face_filter_would_close` | `True` |
| `max_completions_per_gap` | `100000` |

## Aggregate Reasons

| Reason | Count |
| --- | ---: |
| `canonical_bad_face_mismatch` | `1` |

## Missing Transition Rows

| State | Missing face | Completions | Matched top family | Truncated | Top reasons |
| ---: | --- | ---: | ---: | --- | --- |
| `19` | `tmmp` | `1` | `0` | `False` | `[('canonical_bad_face_mismatch', 1)]` |
