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

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 62 | 13 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 0 | 16 | 48 | yes | yes | no |
| 2 | 13 | 51 | yes | yes | no |
| 3 | 13 | 51 | yes | yes | no |
| 5 | 16 | 48 | yes | no | yes |
| 9 | 13 | 51 | yes | no | yes |
| 11 | 11 | 53 | yes | no | yes |
| 17 | 7 | 57 | yes | no | yes |
| 24 | 7 | 57 | yes | no | yes |
| 27 | 13 | 51 | yes | no | yes |
| 29 | 11 | 53 | yes | no | yes |
| 30 | 13 | 51 | yes | no | yes |
| 32 | 11 | 53 | yes | no | yes |
| 40 | 7 | 57 | yes | no | yes |
| 42 | 16 | 48 | yes | no | yes |
| 44 | 13 | 51 | yes | no | yes |
| 45 | 13 | 51 | yes | no | yes |
| 47 | 16 | 48 | yes | no | yes |
| 49 | 7 | 57 | yes | no | yes |
| 57 | 11 | 53 | yes | no | yes |
| 59 | 13 | 51 | yes | no | yes |
| 60 | 11 | 53 | yes | no | yes |
| 62 | 13 | 51 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
