# Phase 6V Translation Farkas Audit

This is an untrusted profiling report. It emits no Lean evidence.

## Counts

- Pair words scanned: 100,000
- Identity-linear words: 5,565
- Translation sign assignments: 356,160
- GoodDirection survivor masks: 39,710
- Denominator-nonpositive masks: 316,450
- Source Farkas reconstruction failures: 0

## Best Layers

- Best proof-ready layer: `raw_survivor_shape_map` with 5,521 unique obligations
- Best diagnostic layer: `raw_source_farkas_support` with 235 unique obligations

## Proof-Ready Layer Counts

| Layer | Unique lower bound | Max reuse | Requirement |
| --- | ---: | ---: | --- |
| `normalized_shape_plus_source_terms` | 39,614 | 3 | exact normalized shape plus exact source-indexed Farkas terms |
| `raw_normalized_farkas_shape` | 39,582 | 3 | direct exact normalized translation constraint system |
| `raw_row_multiset` | 39,710 | 1 | row permutation and positive row scaling only |
| `raw_source_farkas_terms` | 8,939 | 10,435 | exact source rows and multipliers for SourceFarkasCert |
| `raw_survivor_shape_map` | 5,521 | 1 | direct exact survivor mask to raw shape map |

## Diagnostic-Only Layer Counts

| Layer | Unique lower bound | Max reuse | Missing theorem |
| --- | ---: | ---: | --- |
| `d4_normalized_farkas_shape` | 11,478 | 8 | requires Lean D4 translation/Farkas transport theorem |
| `d4_reversal_normalized_farkas_shape` | 11,484 | 8 | requires Lean D4 plus reversal transport theorem |
| `d4_survivor_shape_map` | 5,521 | 1 | requires Lean D4 translation/Farkas transport theorem |
| `denominator_signature` | 5,565 | 1 | requires theorem from denominator signature to survivor Farkas system |
| `raw_row_support_skeleton` | 39,682 | 2 | requires theorem that support skeleton determines reusable Farkas proof |
| `raw_source_farkas_support` | 235 | 10,435 | same source rows only; exact multipliers are still required |
| `reversal_normalized_farkas_shape` | 39,582 | 3 | requires Lean reversal transport theorem |
| `signed_variable_survivor_shape_map` | 5,521 | 1 | requires sign-bit renaming/complement transport theorem |
| `survivor_bitset` | 1,479 | 96 | diagnostic only; bitset alone does not prove Farkas unsat |

## Source Farkas Diagnostics

- Source term count histogram: `{2: 39710}`
- Support/exact-term shape count: 39,614

## Decision

- Status: `blocked_on_transport_theorem`
- best diagnostic layer raw_source_farkas_support is within the 2000 leaf gate but requires: same source rows only; exact multipliers are still required
- best proof-ready layer raw_survivor_shape_map exceeds warning threshold 900
