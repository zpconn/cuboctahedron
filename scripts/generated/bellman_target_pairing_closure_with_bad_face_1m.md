# Bellman Target-Pairing Closure With Sequence Bad-Face Filter

Decision: `closed-after-sequence-bad-face`

The target-pairing/schedule/local-axis language becomes closed after filtering the sole remaining over-approximate transitions by the generated sequence bad-face predicate.  The next Lean step can emit a finite invariant table for the face evaluator with this strengthened semantic premise.

## Inputs

- Closure: `scripts/generated/bellman_target_pairing_closure_1m_step_face_linear_tri_source_localaxis_lean.json`
- Missing-transition completions: `scripts/generated/bellman_missing_transition_completions_1m_step_face_linear_tri_source_localaxis_lean.json`

## Target

- Pairing: `pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- Schedule mode: `observed+square-gap`
- Forced axis: `-1,-1,-3`

## Adjusted Closure Metrics

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `observed_transitions` | `229` |
| `legal_before_sequence_bad_face` | `230` |
| `missing_before_sequence_bad_face` | `1` |
| `illegal_before_sequence_bad_face` | `0` |
| `missing_completion_count` | `1` |
| `missing_completion_matches_top_family` | `0` |
| `missing_completion_truncated_gaps` | `0` |
| `sequence_bad_face_filter_sound_for_gaps` | `True` |
| `legal_after_sequence_bad_face` | `229` |
| `missing_after_sequence_bad_face` | `0` |
| `illegal_after_sequence_bad_face` | `0` |
| `closed_after_sequence_bad_face` | `True` |
