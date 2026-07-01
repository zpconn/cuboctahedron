# Bellman Missing-Transition Completion Audit

Graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
Closure input: `scripts/generated/bellman_target_pairing_observed_step_square_gap_closure_1M_step_face_linear_tri_source.json`

Decision: `missing_transitions_are_overapproximation`

The sampled missing transitions do not produce exact top-family completions.  Use the reason histogram to identify the next invariant to add to the membership theorem.

## Summary

| Metric | Value |
| --- | ---: |
| `gap_count` | `15` |
| `total_completions` | `42` |
| `total_matched_top_family` | `0` |
| `truncated_gaps` | `0` |
| `max_completions_per_gap` | `100000` |

## Aggregate Reasons

| Reason | Count |
| --- | ---: |
| `forced_sequence_mismatch` | `41` |
| `canonical_bad_face_mismatch` | `1` |

## Missing Transition Rows

| State | Missing face | Completions | Matched top family | Truncated | Top reasons |
| ---: | --- | ---: | ---: | --- | --- |
| `161` | `tmmm` | `20` | `0` | `False` | `[('forced_sequence_mismatch', 20)]` |
| `161` | `zm` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `19` | `tmmp` | `1` | `0` | `False` | `[('canonical_bad_face_mismatch', 1)]` |
| `144` | `zp` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
| `146` | `zp` | `3` | `0` | `False` | `[('forced_sequence_mismatch', 3)]` |
| `148` | `zp` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `152` | `zm` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `156` | `zm` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
| `167` | `zm` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
| `173` | `zm` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `180` | `zm` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
| `187` | `zm` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `195` | `zm` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
| `203` | `zm` | `2` | `0` | `False` | `[('forced_sequence_mismatch', 2)]` |
| `222` | `zp` | `1` | `0` | `False` | `[('forced_sequence_mismatch', 1)]` |
