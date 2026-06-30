# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[768,832)`
- Jobs: `4`
- Identity ranks: `11`
- Identity ranks with GoodDirection masks: `11`
- GoodDirection cases: `122`
- Not-GoodDirection masks: `582`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 790 | 7 | no | no | no | no | no |
| 798 | 7 | no | no | no | no | no |
| 800 | 8 | no | no | no | no | no |
| 808 | 11 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 790 | 7 | 57 | no | no | no |
| 798 | 7 | 57 | no | no | no |
| 800 | 8 | 56 | no | no | no |
| 808 | 11 | 53 | no | no | no |
| 810 | 16 | 48 | no | no | no |
| 812 | 13 | 51 | no | no | no |
| 813 | 13 | 51 | no | no | no |
| 815 | 16 | 48 | no | no | no |
| 819 | 13 | 51 | no | no | no |
| 821 | 11 | 53 | no | no | no |
| 827 | 7 | 57 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
