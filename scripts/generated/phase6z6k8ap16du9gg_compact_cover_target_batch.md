# Phase 6Z.6K.8AP.16DU.9GG Compact Cover Target Batch

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-profile-batch`
- Source profile: `scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`
- Jobs: `4`
- Target ranks: `[5, 9, 11, 17, 24, 27]`
- Total GoodDirection masks: `67`
- Total bad masks: `317`
- Total selected subcubes: `102`
- Total uncovered masks: `0`
- All Walsh validated: `True`

| Rank | Anchor mask | Good masks | Bad masks | Candidates | Selected subcubes | Uncovered | Walsh validated |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | :---: |
| 5 | 8 | 16 | 48 | 201 | 17 | 0 | yes |
| 9 | 9 | 13 | 51 | 197 | 16 | 0 | yes |
| 11 | 8 | 11 | 53 | 212 | 16 | 0 | yes |
| 17 | 16 | 7 | 57 | 235 | 16 | 0 | yes |
| 24 | 8 | 7 | 57 | 227 | 18 | 0 | yes |
| 27 | 8 | 13 | 51 | 173 | 19 | 0 | yes |

## Decision Notes

- diagnostic only: compact cover profiles are not Lean proof evidence
- next step is rank-slice preparation and guarded Lean emission for this target batch
