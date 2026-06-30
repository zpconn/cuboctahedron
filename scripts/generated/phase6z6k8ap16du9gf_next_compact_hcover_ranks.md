# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[0,64)`
- Jobs: `4`
- Identity ranks: `22`
- Identity ranks with GoodDirection masks: `22`
- GoodDirection cases: `264`
- Not-GoodDirection masks: `1144`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: |
| 5 | 16 | no | no | no | no |
| 9 | 13 | no | no | no | no |
| 11 | 11 | no | no | no | no |
| 17 | 7 | no | no | no | no |
| 24 | 7 | no | no | no | no |
| 27 | 13 | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch |
| ---: | ---: | ---: | :---: | :---: |
| 0 | 16 | 48 | yes | yes |
| 2 | 13 | 51 | yes | yes |
| 3 | 13 | 51 | yes | yes |
| 5 | 16 | 48 | no | no |
| 9 | 13 | 51 | no | no |
| 11 | 11 | 53 | no | no |
| 17 | 7 | 57 | no | no |
| 24 | 7 | 57 | no | no |
| 27 | 13 | 51 | no | no |
| 29 | 11 | 53 | no | no |
| 30 | 13 | 51 | no | no |
| 32 | 11 | 53 | no | no |
| 40 | 7 | 57 | no | no |
| 42 | 16 | 48 | no | no |
| 44 | 13 | 51 | no | no |
| 45 | 13 | 51 | no | no |
| 47 | 16 | 48 | no | no |
| 49 | 7 | 57 | no | no |
| 57 | 11 | 53 | no | no |
| 59 | 13 | 51 | no | no |
| 60 | 11 | 53 | no | no |
| 62 | 13 | 51 | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
