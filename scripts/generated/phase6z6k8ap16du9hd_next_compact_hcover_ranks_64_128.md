# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[64,128)`
- Jobs: `4`
- Identity ranks: `12`
- Identity ranks with GoodDirection masks: `12`
- GoodDirection cases: `138`
- Not-GoodDirection masks: `630`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 65 | 7 | no | no | no | no | no |
| 72 | 7 | no | no | no | no | no |
| 78 | 11 | no | no | no | no | no |
| 80 | 13 | no | no | no | no | no |
| 84 | 16 | no | no | no | no | no |
| 86 | 13 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 65 | 7 | 57 | no | no | no |
| 72 | 7 | 57 | no | no | no |
| 78 | 11 | 53 | no | no | no |
| 80 | 13 | 51 | no | no | no |
| 84 | 16 | 48 | no | no | no |
| 86 | 13 | 51 | no | no | no |
| 87 | 13 | 51 | no | no | no |
| 89 | 16 | 48 | no | no | no |
| 120 | 13 | 51 | no | no | no |
| 122 | 8 | 56 | no | no | no |
| 123 | 8 | 56 | no | no | no |
| 125 | 13 | 51 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
