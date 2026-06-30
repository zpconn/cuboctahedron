# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[384,448)`
- Jobs: `4`
- Identity ranks: `6`
- Identity ranks with GoodDirection masks: `6`
- GoodDirection cases: `57`
- Not-GoodDirection masks: `327`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 384 | 8 | no | no | no | no | no |
| 387 | 11 | no | no | no | no | no |
| 389 | 13 | no | no | no | no | no |
| 413 | 7 | no | no | no | no | no |
| 444 | 11 | no | no | no | no | no |
| 447 | 7 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 384 | 8 | 56 | no | no | no |
| 387 | 11 | 53 | no | no | no |
| 389 | 13 | 51 | no | no | no |
| 413 | 7 | 57 | no | no | no |
| 444 | 11 | 53 | no | no | no |
| 447 | 7 | 57 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
