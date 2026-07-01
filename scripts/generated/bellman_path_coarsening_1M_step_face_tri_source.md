# Bellman Path Coarsening Profile

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_tri_source_graph.json`

| Metric | Value |
| --- | ---: |
| Paths | `37` |
| States | `223` |
| Edges | `229` |
| Labels | `14` |

## Signature Summary

| Mode | Groups | Multi groups | Max group | Max margin spread |
| --- | ---: | ---: | ---: | ---: |
| `label-multiset` | `1` | `1` | `37` | `508` |
| `label-multiset-margin` | `14` | `11` | `6` | `0` |
| `final-label-multiset` | `29` | `5` | `3` | `0` |
| `final-label-multiset-margin` | `29` | `5` | `3` | `0` |
| `label-sequence` | `37` | `0` | `1` | `0` |
| `label-sequence-margin` | `37` | `0` | `1` | `0` |
| `state-multiset-no-stack-triSrc` | `37` | `0` | `1` | `0` |
| `state-multiset-no-triSrc` | `37` | `0` | `1` | `0` |
| `state-path-no-stack-triSrc` | `37` | `0` | `1` | `0` |
| `state-path-no-triSrc` | `37` | `0` | `1` | `0` |
| `state-path-step-rem-parity` | `37` | `0` | `1` | `0` |
| `step-label-pair-multiset` | `37` | `0` | `1` | `0` |

## Top Groups By Mode

### `label-multiset`

| Size | Rank samples | Margin min/max/spread | Finals | Distinct label seqs |
| ---: | --- | --- | --- | ---: |
| `37` | `[517, 10613, 23197, 25555, 40387, 42247, 42943, 43171, 43195, 43203, 43205, 113917]` | `-508/0/508` | `[113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141]` | `37` |

### `label-multiset-margin`

| Size | Rank samples | Margin min/max/spread | Finals | Distinct label seqs |
| ---: | --- | --- | --- | ---: |
| `6` | `[517, 10613, 43205, 113917, 124013, 136597]` | `-376/-376/0` | `[129, 138, 141]` | `6` |
| `6` | `[151569, 312772, 312773, 947625, 947626, 947627]` | `-200/-200/0` | `[115, 137, 139]` | `6` |
| `4` | `[914497, 947581, 947593, 947599]` | `-436/-436/0` | `[114, 125]` | `4` |
| `3` | `[23197, 25555, 43203]` | `-128/-128/0` | `[130, 134, 135]` | `3` |
| `3` | `[151567, 312761, 947591]` | `-420/-420/0` | `[116, 136, 140]` | `3` |

### `final-label-multiset`

| Size | Rank samples | Margin min/max/spread | Finals | Distinct label seqs |
| ---: | --- | --- | --- | ---: |
| `3` | `[517, 113917, 136597]` | `-376/-376/0` | `[141]` | `3` |
| `3` | `[947581, 947593, 947599]` | `-436/-436/0` | `[114]` | `3` |
| `3` | `[947625, 947626, 947627]` | `-200/-200/0` | `[115]` | `3` |
| `2` | `[10613, 124013]` | `-376/-376/0` | `[138]` | `2` |
| `2` | `[312772, 312773]` | `-200/-200/0` | `[137]` | `2` |

### `final-label-multiset-margin`

| Size | Rank samples | Margin min/max/spread | Finals | Distinct label seqs |
| ---: | --- | --- | --- | ---: |
| `3` | `[517, 113917, 136597]` | `-376/-376/0` | `[141]` | `3` |
| `3` | `[947581, 947593, 947599]` | `-436/-436/0` | `[114]` | `3` |
| `3` | `[947625, 947626, 947627]` | `-200/-200/0` | `[115]` | `3` |
| `2` | `[10613, 124013]` | `-376/-376/0` | `[138]` | `2` |
| `2` | `[312772, 312773]` | `-200/-200/0` | `[137]` | `2` |
