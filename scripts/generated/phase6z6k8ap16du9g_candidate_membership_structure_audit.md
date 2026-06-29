# Phase 6Z.6K.8AP.16DU.9G candidate-membership structure audit

This report is not proof evidence.  It diagnoses the shape of the
bounded AP16DU candidate-completeness premise.

- Status: `reject-prefix-and-mask-only-membership`
- Range: `[0, 5000)`
- Candidate cases: `4693`
- Unique rank/mask pairs: `4693`
- Candidate keys: `125`

## Prefix Ambiguity

| Prefix length | Prefixes | Ambiguous prefixes | Max keys per prefix | Prefix/key groups |
| ---: | ---: | ---: | ---: | ---: |
| `1` | `1` | `1` | `125` | `125` |
| `2` | `1` | `1` | `125` | `125` |
| `3` | `1` | `1` | `125` | `125` |
| `4` | `1` | `1` | `125` | `125` |
| `5` | `2` | `2` | `103` | `187` |
| `6` | `6` | `6` | `73` | `374` |
| `7` | `24` | `24` | `43` | `706` |
| `8` | `70` | `70` | `28` | `1164` |

## Top Masks

| Mask | Cases | Candidate keys |
| ---: | ---: | ---: |
| `63` | `306` | `53` |
| `13` | `275` | `35` |
| `16` | `269` | `7` |
| `30` | `266` | `52` |
| `31` | `261` | `39` |
| `47` | `261` | `39` |
| `18` | `258` | `10` |
| `28` | `257` | `53` |
| `22` | `247` | `27` |
| `24` | `247` | `6` |
| `45` | `244` | `43` |
| `29` | `243` | `36` |
| `9` | `178` | `8` |
| `54` | `178` | `23` |
| `8` | `178` | `7` |
| `55` | `178` | `26` |
| `20` | `81` | `7` |
| `26` | `81` | `14` |
| `61` | `62` | `21` |
| `15` | `61` | `17` |

## Decision

Prefix-only and mask-only membership proofs are rejected for this range.
The next proof-producing route should use source-index/state or
source-position trace predicates that carry the actual two-row reason.
