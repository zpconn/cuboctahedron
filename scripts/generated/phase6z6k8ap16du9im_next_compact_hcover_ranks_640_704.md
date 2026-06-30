# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[640,704)`
- Jobs: `4`
- Identity ranks: `5`
- Identity ranks with GoodDirection masks: `5`
- GoodDirection cases: `53`
- Not-GoodDirection masks: `267`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 641 | 13 | no | no | no | no | no |
| 647 | 8 | no | no | no | no | no |
| 654 | 8 | no | no | no | no | no |
| 657 | 11 | no | no | no | no | no |
| 659 | 13 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 641 | 13 | 51 | no | no | no |
| 647 | 8 | 56 | no | no | no |
| 654 | 8 | 56 | no | no | no |
| 657 | 11 | 53 | no | no | no |
| 659 | 13 | 51 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
