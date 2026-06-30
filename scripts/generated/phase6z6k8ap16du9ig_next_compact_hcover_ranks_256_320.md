# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[256,320)`
- Jobs: `4`
- Identity ranks: `5`
- Identity ranks with GoodDirection masks: `5`
- GoodDirection cases: `41`
- Not-GoodDirection masks: `279`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 261 | 7 | no | no | no | no | no |
| 263 | 8 | no | no | no | no | no |
| 269 | 11 | no | no | no | no | no |
| 315 | 7 | no | no | no | no | no |
| 317 | 8 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 261 | 7 | 57 | no | no | no |
| 263 | 8 | 56 | no | no | no |
| 269 | 11 | 53 | no | no | no |
| 315 | 7 | 57 | no | no | no |
| 317 | 8 | 56 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
