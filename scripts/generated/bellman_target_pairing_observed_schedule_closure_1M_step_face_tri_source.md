# Bellman Target-Pairing Transition-Closure Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_tri_source_graph.json`

Schedule mode: `observed`

Decision: `target-pairing-language-not-closed`

The target pairing alone is still not enough; inspect missing and illegal transitions to identify the next state component.

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `states_with_face_counts` | `223` |
| `total_target_legal_transitions` | `245` |
| `total_observed_face_transitions` | `229` |
| `total_missing_transitions` | `16` |
| `total_illegal_transitions` | `0` |
| `states_with_missing_transitions` | `14` |
| `states_with_illegal_transitions` | `0` |

## Top Problem States

| State | Legal | Observed | Missing | Illegal |
| ---: | ---: | ---: | --- | --- |
| `152` | `4` | `2` | `['yp', 'zm']` | `[]` |
| `161` | `4` | `2` | `['tmmm', 'zm']` | `[]` |
| `19` | `2` | `1` | `['tmmp']` | `[]` |
| `144` | `3` | `2` | `['zp']` | `[]` |
| `146` | `3` | `2` | `['zp']` | `[]` |
| `148` | `3` | `2` | `['zp']` | `[]` |
| `156` | `3` | `2` | `['zm']` | `[]` |
| `167` | `3` | `2` | `['zm']` | `[]` |
| `173` | `3` | `2` | `['zm']` | `[]` |
| `180` | `3` | `2` | `['zm']` | `[]` |

## Allowed Faces By Step

| Step | Faces |
| ---: | --- |
| `0` | `['xm']` |
| `1` | `['ym']` |
| `2` | `['tmpm', 'yp', 'zm']` |
| `3` | `['tmmm', 'tmpp', 'tppm', 'yp', 'zm', 'zp']` |
| `4` | `['tmmp', 'tmpm', 'tpmm', 'tppp', 'yp', 'zm', 'zp']` |
| `5` | `['tmmm', 'tpmp', 'tppm', 'tppp', 'zm', 'zp']` |
| `6` | `['tmmm', 'tpmm', 'tpmp', 'tppm', 'tppp', 'zm', 'zp']` |
| `7` | `['tmmp', 'tmpm', 'tpmm', 'tpmp', 'tppm', 'tppp', 'zm', 'zp']` |
| `8` | `['tmmm', 'tmmp', 'tmpp', 'tpmm', 'tpmp', 'tppp', 'yp', 'zm', 'zp']` |
| `9` | `['tmmm', 'tmpm', 'tmpp', 'tpmp', 'tppm', 'yp', 'zm', 'zp']` |
| `10` | `['tmmp', 'tmpm', 'tppp', 'yp', 'zm']` |
| `11` | `['tmmm', 'tmpp', 'yp', 'zm', 'zp']` |
| `12` | `['tmmp', 'yp', 'zp']` |
| `13` | `['xp']` |
