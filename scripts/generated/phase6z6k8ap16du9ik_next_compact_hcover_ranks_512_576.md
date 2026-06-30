# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[512,576)`
- Jobs: `4`
- Identity ranks: `2`
- Identity ranks with GoodDirection masks: `2`
- GoodDirection cases: `14`
- Not-GoodDirection masks: `114`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 519 | 7 | no | no | no | no | no |
| 561 | 7 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 519 | 7 | 57 | no | no | no |
| 561 | 7 | 57 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
