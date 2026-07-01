# Bellman Target-Pairing Transition-Closure Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_tri_source_graph.json`

Schedule mode: `none`

Decision: `target-pairing-language-not-closed`

The target pairing alone is still not enough; inspect missing and illegal transitions to identify the next state component.

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `states_with_face_counts` | `223` |
| `total_target_legal_transitions` | `420` |
| `total_observed_face_transitions` | `229` |
| `total_missing_transitions` | `191` |
| `total_illegal_transitions` | `0` |
| `states_with_missing_transitions` | `102` |
| `states_with_illegal_transitions` | `0` |

## Top Problem States

| State | Legal | Observed | Missing | Illegal |
| ---: | ---: | ---: | --- | --- |
| `0` | `8` | `1` | `['tmpp', 'tpmm', 'xp', 'ym', 'yp', 'zm', 'zp']` | `[]` |
| `142` | `7` | `1` | `['tmmm', 'tppp', 'xp', 'yp', 'zm', 'zp']` | `[]` |
| `146` | `6` | `2` | `['tmmp', 'xp', 'yp', 'zp']` | `[]` |
| `150` | `5` | `1` | `['tmmm', 'tppp', 'xp', 'yp']` | `[]` |
| `151` | `5` | `1` | `['tmmm', 'xp', 'yp', 'zp']` | `[]` |
| `152` | `6` | `2` | `['tmpp', 'xp', 'yp', 'zm']` | `[]` |
| `160` | `5` | `1` | `['tmpm', 'xp', 'yp', 'zp']` | `[]` |
| `161` | `6` | `2` | `['tmmm', 'xp', 'yp', 'zm']` | `[]` |
| `172` | `5` | `1` | `['tmmp', 'xp', 'yp', 'zp']` | `[]` |
| `222` | `5` | `1` | `['xp', 'yp', 'zm', 'zp']` | `[]` |
