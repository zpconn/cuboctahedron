# Phase 6Z.6K.8AP.16DU.9GF Next Compact Hcover Ranks

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-next-targets`
- Rank range: `[576,640)`
- Jobs: `4`
- Identity ranks: `18`
- Identity ranks with GoodDirection masks: `18`
- GoodDirection cases: `185`
- Not-GoodDirection masks: `967`
- Uncovered masks: `0`
- Non-two-source masks: `0`

## Recommended Missing Targets

| Rank | Good masks | Compact cover | DU9P batch | Guarded batch | Split trace | Selected impacts |
| ---: | ---: | :---: | :---: | :---: | :---: | :---: |
| 582 | 11 | no | no | no | no | no |
| 585 | 7 | no | no | no | no | no |
| 587 | 8 | no | no | no | no | no |
| 600 | 13 | no | no | no | no | no |
| 602 | 8 | no | no | no | no | no |
| 603 | 8 | no | no | no | no | no |
| 605 | 13 | no | no | no | no | no |
| 609 | 11 | no | no | no | no | no |

## Identity Rank Status

| Rank | Good masks | Not-Good | Compact cover | DU9P batch | Guarded batch |
| ---: | ---: | ---: | :---: | :---: | :---: |
| 582 | 11 | 53 | no | no | no |
| 585 | 7 | 57 | no | no | no |
| 587 | 8 | 56 | no | no | no |
| 600 | 13 | 51 | no | no | no |
| 602 | 8 | 56 | no | no | no |
| 603 | 8 | 56 | no | no | no |
| 605 | 13 | 51 | no | no | no |
| 609 | 11 | 53 | no | no | no |
| 611 | 13 | 51 | no | no | no |
| 617 | 8 | 56 | no | no | no |
| 624 | 8 | 56 | no | no | no |
| 627 | 11 | 53 | no | no | no |
| 629 | 13 | 51 | no | no | no |
| 630 | 13 | 51 | no | no | no |
| 632 | 8 | 56 | no | no | no |
| 633 | 8 | 56 | no | no | no |
| 635 | 13 | 51 | no | no | no |
| 639 | 11 | 53 | no | no | no |

## Decision Notes

- diagnostic only: this is not proof evidence
- compact cover roots should still be generated and Lean-checked separately
