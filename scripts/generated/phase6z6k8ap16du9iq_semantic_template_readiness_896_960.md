# Phase 6Z.6K.8AP.16DU.9CX Semantic Template Readiness Audit

This report is planning telemetry only, not proof evidence.

- Status: `current-adapters-cover-window`
- Range: `[896, 960)`
- GoodDirection survivors: `75`
- Source-index/state families: `19`
- Unsupported cases: `0`
- Unsupported families: `0`

## Cases By Template

| Template | Cases | Families | Status |
| --- | ---: | ---: | --- |
| `axis_a_only` | 1 | 1 | `supported_nonexact` |
| `eq_eq_neg_var_first` | 2 | 1 | `supported_nonexact` |
| `eq_eq_pos_var_first` | 34 | 7 | `supported_nonexact` |
| `eq_eq_pos_var_second` | 13 | 2 | `supported_nonexact` |
| `opp_1m_var_first` | 12 | 2 | `supported_nonexact` |
| `opp_1m_var_second` | 5 | 3 | `supported_nonexact` |
| `opp_m1_var_first` | 8 | 3 | `supported_nonexact` |

## Cases By Status

| Status | Cases | Families |
| --- | ---: | ---: |
| `supported_nonexact` | 75 | 19 |

## Unsupported Examples

No unsupported examples in this window.

## Decision

Generate a bounded semantic row-membership range module for the full audited window using the current non-exact adapters.
