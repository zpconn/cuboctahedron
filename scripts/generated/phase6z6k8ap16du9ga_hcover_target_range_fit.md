# Phase 6Z.6K.8AP.16DU.9GA Hcover Target Range-Fit Audit

This proof-neutral audit checks whether the selected 9FZ quotient targets
cover the complete GoodDirection survivor set for their sample ranks.

## `baseline`

- Sample ranks: `[0]`
- Target family keys: `1`
- Covers all sample ranks: `False`

| Rank | GoodDirection cases | Target cases | Concrete keys needed | Covers rank |
| ---: | ---: | ---: | ---: | --- |
| `0` | `16` | `5` | `6` | `False` |

## `mixed`

- Sample ranks: `[0, 45000184, 45003885, 95000493]`
- Target family keys: `4`
- Covers all sample ranks: `False`

| Rank | GoodDirection cases | Target cases | Concrete keys needed | Covers rank |
| ---: | ---: | ---: | ---: | --- |
| `0` | `16` | `5` | `6` | `False` |
| `45000184` | `2` | `1` | `2` | `False` |
| `45003885` | `2` | `1` | `2` | `False` |
| `95000493` | `5` | `1` | `4` | `False` |

## Recommended Range Smoke

- Rank: `0`
- Candidate-union key count: `6`

## Decision

- Status: `quotient-targets-not-range-hcover-by-themselves`.
- Next gate: Emit the first range-level smoke as a singleton rank whose domain is the union of all concrete/source-position candidate groups needed by that rank.  Use the quotient targets as member bridge components, not as complete hcover ranges by themselves.
