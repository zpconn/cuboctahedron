# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[128,192)`
- Jobs: `4`
- Identity ranks: `9`
- Identity ranks with GoodDirection masks: `9`
- GoodDirection cases: `90`
- Not-GoodDirection masks: `486`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 129 | 11 | no | no | no | no | no |
| 131 | 13 | no | no | no | no | no |
| 137 | 8 | no | no | no | no | no |
| 144 | 8 | no | no | no | no | no |
| 147 | 11 | no | no | no | no | no |
| 149 | 13 | no | no | no | no | no |
| 177 | 7 | no | no | no | no | no |
| 179 | 8 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 129 | 11 | 53 | no | no | no |
| 131 | 13 | 51 | no | no | no |
| 137 | 8 | 56 | no | no | no |
| 144 | 8 | 56 | no | no | no |
| 147 | 11 | 53 | no | no | no |
| 149 | 13 | 51 | no | no | no |
| 177 | 7 | 57 | no | no | no |
| 179 | 8 | 56 | no | no | no |
| 185 | 11 | 53 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
