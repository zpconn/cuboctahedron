# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[320,384)`
- Jobs: `4`
- Identity ranks: `9`
- Identity ranks with GoodDirection masks: `9`
- GoodDirection cases: `92`
- Not-GoodDirection masks: `484`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 323 | 11 | no | no | no | no | no |
| 357 | 7 | no | no | no | no | no |
| 360 | 13 | no | no | no | no | no |
| 362 | 8 | no | no | no | no | no |
| 363 | 8 | no | no | no | no | no |
| 365 | 13 | no | no | no | no | no |
| 369 | 11 | no | no | no | no | no |
| 371 | 13 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 323 | 11 | 53 | no | no | no |
| 357 | 7 | 57 | no | no | no |
| 360 | 13 | 51 | no | no | no |
| 362 | 8 | 56 | no | no | no |
| 363 | 8 | 56 | no | no | no |
| 365 | 13 | 51 | no | no | no |
| 369 | 11 | 53 | no | no | no |
| 371 | 13 | 51 | no | no | no |
| 377 | 8 | 56 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
