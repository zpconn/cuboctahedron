# Bellman Transition-Closure Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_tri_source_graph.json`

Decision: `naive-face-count-language-not-closed`

Do not use signed-face remaining counts alone as the Bellman language predicate.  Add cancellation-pairing / tri-source constraints before attempting a Lean transition-closure theorem.

| Metric | Value |
| --- | ---: |
| `state_count` | `223` |
| `edge_count` | `229` |
| `label_count` | `14` |
| `states_with_face_counts` | `223` |
| `states_with_missing_transitions` | `165` |
| `states_with_illegal_observed_transitions` | `0` |
| `total_legal_transitions` | `867` |
| `total_observed_label_transitions` | `229` |
| `total_missing_transitions` | `638` |
| `malformed_edges_without_labels` | `0` |

## Top Missing States

| State | Legal | Observed | Missing | First missing labels |
| ---: | ---: | ---: | ---: | --- |
| `0` | `14` | `1` | `13` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11']` |
| `142` | `13` | `1` | `12` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11']` |
| `143` | `12` | `3` | `9` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `144` | `11` | `2` | `9` | `['face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `146` | `11` | `2` | `9` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `150` | `10` | `1` | `9` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `151` | `10` | `1` | `9` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `145` | `11` | `3` | `8` | `['face=tmmm|pair=d111', 'face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `147` | `10` | `2` | `8` | `['face=tmmm|pair=d111', 'face=tmpm|pair=d1m1', 'face=tmpp|pair=dm11', 'face=tpmm|pair=dm11', 'face=tpmp|pair=d1m1']` |
| `148` | `10` | `2` | `8` | `['face=tmmp|pair=d11m', 'face=tmpm|pair=d1m1', 'face=tmpp|pair=dm11', 'face=tpmp|pair=d1m1', 'face=tppm|pair=d11m']` |
