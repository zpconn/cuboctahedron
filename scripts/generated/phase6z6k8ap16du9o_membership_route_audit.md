# DU.9O Membership Route Audit

This report is planning telemetry, not proof evidence.

- Positive survivors from DU.9M: `42`
- Bounded range: `[0,4)`
- Ranks with positive survivors: `[0, 2, 3]`

## Rank Status

| Rank | Good masks | Compact cover exists | Split trace exists | Selected impacts exists |
| ---: | ---: | :---: | :---: | :---: |
| 0 | 16 | no | no | no |
| 2 | 13 | no | no | no |
| 3 | 13 | no | no | no |

## Decision

Generate compact-Walsh GoodDirection-to-good-mask cover modules for the missing ranks, then emit a bounded membership root that maps each good-mask disjunction into the combined DU9M SelectorPositiveCase constructors.

Rejected route:

Do not prove membership by fin_cases over all 64 masks with rank-local denominator replay; AP16H already showed that route recreates the bad-direction evidence burden.

Missing compact-cover ranks:

`[0, 2, 3]`
