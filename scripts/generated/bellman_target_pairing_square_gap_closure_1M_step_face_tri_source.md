# Bellman Target-Pairing Transition-Closure Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_tri_source_graph.json`

Schedule mode: `observed-square-gap`

Decision: `target-pairing-language-not-closed`

The target pairing alone is still not enough; inspect missing and illegal transitions to identify the next state component.

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `states_with_face_counts` | `223` |
| `total_target_legal_transitions` | `326` |
| `total_observed_face_transitions` | `229` |
| `total_missing_transitions` | `97` |
| `total_illegal_transitions` | `0` |
| `states_with_missing_transitions` | `78` |
| `states_with_illegal_transitions` | `0` |

## Top Problem States

| State | Legal | Observed | Missing | Illegal |
| ---: | ---: | ---: | --- | --- |
| `0` | `5` | `1` | `['ym', 'yp', 'zm', 'zp']` | `[]` |
| `142` | `4` | `1` | `['yp', 'zm', 'zp']` | `[]` |
| `22` | `4` | `2` | `['xp', 'zp']` | `[]` |
| `42` | `3` | `1` | `['xp', 'zp']` | `[]` |
| `43` | `3` | `1` | `['xp', 'zp']` | `[]` |
| `44` | `3` | `1` | `['xp', 'zp']` | `[]` |
| `143` | `5` | `3` | `['tpmp', 'zp']` | `[]` |
| `144` | `4` | `2` | `['tppp', 'zp']` | `[]` |
| `146` | `4` | `2` | `['tmmp', 'zp']` | `[]` |
| `148` | `4` | `2` | `['tmpp', 'zp']` | `[]` |

## Allowed Square Faces By Triangular Gap

| Gap | Faces |
| ---: | --- |
| `0` | `['xm', 'ym', 'yp', 'zm', 'zp']` |
| `1` | `['zm', 'zp']` |
| `2` | `['zm', 'zp']` |
| `3` | `['zm', 'zp']` |
| `4` | `['zm', 'zp']` |
| `5` | `['zm', 'zp']` |
| `6` | `['yp', 'zm', 'zp']` |
| `7` | `['zm', 'zp']` |
| `8` | `['xp', 'yp', 'zm', 'zp']` |
