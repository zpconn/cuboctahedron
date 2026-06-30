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
| 87 | 13 | no | no | yes | yes | yes |
| 89 | 16 | no | no | yes | yes | yes |
| 120 | 13 | no | no | yes | yes | yes |
| 122 | 8 | no | no | yes | yes | yes |
| 123 | 8 | no | no | yes | yes | yes |
| 125 | 13 | no | no | yes | yes | yes |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 65 | 7 | 57 | yes | no | yes |
| 72 | 7 | 57 | yes | no | yes |
| 78 | 11 | 53 | yes | no | yes |
| 80 | 13 | 51 | yes | no | yes |
| 84 | 16 | 48 | yes | no | yes |
| 86 | 13 | 51 | yes | no | yes |
| 87 | 13 | 51 | no | no | yes |
| 89 | 16 | 48 | no | no | yes |
| 120 | 13 | 51 | no | no | yes |
| 122 | 8 | 56 | no | no | yes |
| 123 | 8 | 56 | no | no | yes |
| 125 | 13 | 51 | no | no | yes |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
