# Phase 6Z.6E Translation Row-Template Family Profile

This report is diagnostic only; Lean must check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Selected windows | 5 |
| Scanned rank mass | 25,000 |
| Pair words scanned | 25,000 |
| Identity-linear words | 24 |
| GoodDirection survivors | 50 |
| Covered cases | 50 |
| Uncovered cases | 0 |
| Invalid cases | 0 |
| Non-two-source cases | 0 |
| Elapsed seconds | 3.32 |

Decision: **needs_more_samples**
Best variant: `template_only`

- Best observed variant is `template_only` with 6 families.
- Tail discovery for best variant added 1 families (16.67%).
- Family discovery tail is still too active for Lean emission.

## Family Variant Summary

- `d4_diamond_then_template_source`: 26 families, largest=7, singletons=16 (32.00% case mass)
- `diamond_then_template_source`: 14 families, largest=23, singletons=8 (16.00% case mass)
- `exact_row_shape_reference`: 44 families, largest=4, singletons=42 (84.00% case mass)
- `template_only`: 6 families, largest=28, singletons=2 (4.00% case mass)
- `template_source`: 14 families, largest=23, singletons=8 (16.00% case mass)

## Selected Windows

- `[255,000,260,000)`: width=5,000, checkpoint_good=1, checkpoint_seconds=2.00
- `[300,000,305,000)`: width=5,000, checkpoint_good=11, checkpoint_seconds=2.61
- `[2,530,000,2,535,000)`: width=5,000, checkpoint_good=6, checkpoint_seconds=2.84
- `[2,585,000,2,590,000)`: width=5,000, checkpoint_good=25, checkpoint_seconds=3.18
- `[2,735,000,2,740,000)`: width=5,000, checkpoint_good=7, checkpoint_seconds=2.55
