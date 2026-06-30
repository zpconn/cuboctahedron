# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[896,960)`
- Jobs: `4`
- Identity ranks: `7`
- Identity ranks with GoodDirection masks: `7`
- GoodDirection cases: `75`
- Not-GoodDirection masks: `373`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 896 | 13 | no | no | no | no | no |
| 897 | 13 | no | no | no | no | no |
| 899 | 16 | no | no | no | no | no |
| 903 | 7 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 896 | 13 | 51 | no | no | no |
| 897 | 13 | 51 | no | no | no |
| 899 | 16 | 48 | no | no | no |
| 903 | 7 | 57 | no | no | no |
| 905 | 8 | 56 | no | no | no |
| 911 | 11 | 53 | no | no | no |
| 955 | 7 | 57 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
