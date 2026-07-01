# Bellman Missing-Transition Completion Audit

Graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
Closure input: `scripts/generated/bellman_target_pairing_observed_step_square_gap_axis_forced_closure_negaxis_1M_step_face_linear_tri_source.json`

Decision: `missing_transitions_are_overapproximation`

The sampled missing transitions do not produce exact top-family completions.  Use the reason histogram to identify the next invariant to add to the membership theorem.

## Summary

| Metric | Value |
| --- | ---: |
| `gap_count` | `1` |
| `total_completions` | `1` |
| `total_matched_top_family` | `0` |
| `truncated_gaps` | `0` |
| `max_completions_per_gap` | `100000` |

## Aggregate Reasons

| Reason | Count |
| --- | ---: |
| `canonical_bad_face_mismatch` | `1` |

## Missing Transition Rows

| State | Missing face | Completions | Matched top family | Truncated | Top reasons |
| ---: | --- | ---: | ---: | --- | --- |
| `19` | `tmmp` | `1` | `0` | `False` | `[('canonical_bad_face_mismatch', 1)]` |
