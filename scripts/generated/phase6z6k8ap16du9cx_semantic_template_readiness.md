# Phase 6Z.6K.8AP.16DU.9CX Semantic Template Readiness Audit

This report is planning telemetry only, not proof evidence.

- Status: `current-adapters-cover-window`
- Range: `[0, 5000)`
- GoodDirection survivors: `4693`
- Source-index/state families: `125`
- Unsupported cases: `0`
- Unsupported families: `0`

## Cases By Template

| Template | Cases | Families | Status |
| --- | ---: | ---: | --- |
| `axis_a_only` | 27 | 4 | `supported_nonexact` |
| `eq_eq_neg_var_first` | 102 | 9 | `supported_nonexact` |
| `eq_eq_neg_var_second` | 14 | 6 | `supported_nonexact` |
| `eq_eq_pos_var_first` | 2046 | 37 | `supported_nonexact` |
| `eq_eq_pos_var_second` | 738 | 8 | `supported_nonexact` |
| `opp_1m_var_first` | 894 | 27 | `supported_nonexact` |
| `opp_1m_var_second` | 287 | 8 | `supported_nonexact` |
| `opp_m1_var_first` | 439 | 18 | `supported_nonexact` |
| `opp_m1_var_second` | 146 | 8 | `supported_nonexact` |

## Cases By Status

| Status | Cases | Families |
| --- | ---: | ---: |
| `supported_nonexact` | 4693 | 125 |

## Unsupported Examples

No unsupported examples in this window.

## Decision

Generate a bounded semantic row-membership range module for the full audited window using the current non-exact adapters.
