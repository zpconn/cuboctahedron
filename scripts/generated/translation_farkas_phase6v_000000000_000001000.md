# Phase 6V Translation Farkas Audit

This is an untrusted profiling report. It emits no Lean evidence.

## Counts

- Pair words scanned: 1,000
- Identity-linear words: 138
- Translation sign assignments: 8,832
- GoodDirection survivor masks: 1,465
- Denominator-nonpositive masks: 7,367
- Source Farkas reconstruction failures: 0

## Best Layers

- Best proof-ready layer: `raw_survivor_shape_map` with 138 unique obligations
- Best diagnostic layer: `raw_source_farkas_support` with 72 unique obligations

## Proof-Ready Layer Counts

| Layer | Unique lower bound | Max reuse | Requirement |
| --- | ---: | ---: | --- |
| `normalized_shape_plus_source_terms` | 1,454 | 2 | exact normalized shape plus exact source-indexed Farkas terms |
| `raw_normalized_farkas_shape` | 1,452 | 3 | direct exact normalized translation constraint system |
| `raw_row_multiset` | 1,465 | 1 | row permutation and positive row scaling only |
| `raw_source_farkas_terms` | 369 | 421 | exact source rows and multipliers for SourceFarkasCert |
| `raw_survivor_shape_map` | 138 | 1 | direct exact survivor mask to raw shape map |

## Diagnostic-Only Layer Counts

| Layer | Unique lower bound | Max reuse | Missing theorem |
| --- | ---: | ---: | --- |
| `d4_normalized_farkas_shape` | 870 | 4 | requires Lean D4 translation/Farkas transport theorem |
| `d4_reversal_normalized_farkas_shape` | 876 | 2 | requires Lean D4 plus reversal transport theorem |
| `d4_survivor_shape_map` | 138 | 1 | requires Lean D4 translation/Farkas transport theorem |
| `denominator_signature` | 138 | 1 | requires theorem from denominator signature to survivor Farkas system |
| `raw_row_support_skeleton` | 1,465 | 1 | requires theorem that support skeleton determines reusable Farkas proof |
| `raw_source_farkas_support` | 72 | 421 | same source rows only; exact multipliers are still required |
| `reversal_normalized_farkas_shape` | 1,452 | 3 | requires Lean reversal transport theorem |
| `signed_variable_survivor_shape_map` | 138 | 1 | requires sign-bit renaming/complement transport theorem |
| `survivor_bitset` | 77 | 12 | diagnostic only; bitset alone does not prove Farkas unsat |

## Source Farkas Diagnostics

- Source term count histogram: `{2: 1465}`
- Support/exact-term shape count: 1,454

## Decision

- Status: `accepted`
- best proof-ready layer raw_survivor_shape_map is within the 2000 leaf gate
