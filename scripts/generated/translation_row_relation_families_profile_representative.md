# Phase 6Z.6E Translation Row-Template Family Profile

This report is diagnostic only; Lean must check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Selected windows | 9 |
| Scanned rank mass | 140,000 |
| Pair words scanned | 140,000 |
| Identity-linear words | 2,410 |
| GoodDirection survivors | 4,779 |
| Covered cases | 4,779 |
| Uncovered cases | 0 |
| Invalid cases | 0 |
| Non-two-source cases | 0 |
| Cache hits | 0 |
| Cache misses | 9 |
| Elapsed seconds | 233.04 |

Decision: **accepted_for_family_smoke**
Best variant: `template_source`

Proof-relevant variants: `template_source`, `diamond_then_template_source`

- Best observed variant is `template_source` with 123 families.
- `template_only` is diagnostic only and cannot unlock Lean emission (9 observed families).
- Tail discovery for best variant added 0 families (0.00%).
- Observed family coordinate is small enough for a Lean smoke.

## Family Variant Summary

- `d4_diamond_then_template_source`: 462 families, largest=290, singletons=151 (3.16% case mass)
- `diamond_then_template_source`: 124 families, largest=1,260, singletons=12 (0.25% case mass)
- `exact_row_shape_reference`: 1,641 families, largest=150, singletons=780 (16.32% case mass)
- `template_only`: 9 families, largest=2,173, singletons=0 (0.00% case mass)
- `template_source`: 123 families, largest=1,260, singletons=12 (0.25% case mass)

## Selected Windows

- `[160,000,165,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.73, profile_seconds=1.26
- `[355,000,360,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.68, profile_seconds=1.28
- `[590,000,595,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.74, profile_seconds=1.29
- `[1,025,000,1,030,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.70, profile_seconds=1.29
- `[1,270,000,1,275,000)`: width=5,000, checkpoint_good=4,779, profile_good=4,779, cache=miss, checkpoint_seconds=238.09, profile_seconds=233.03
- `[1,385,000,1,390,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.65, profile_seconds=1.28
- `[1,820,000,1,825,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.65, profile_seconds=1.27
- `[2,095,000,2,100,000)`: width=5,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=1.69, profile_seconds=1.28
- `[30,000,000,30,100,000)`: width=100,000, checkpoint_good=0, profile_good=0, cache=miss, checkpoint_seconds=261.22, profile_seconds=222.92

## Discovery Curve

- after `[160,000,165,000)`: diamond_then_template_source=0, template_source=0
- after `[355,000,360,000)`: diamond_then_template_source=0, template_source=0
- after `[590,000,595,000)`: diamond_then_template_source=0, template_source=0
- after `[1,025,000,1,030,000)`: diamond_then_template_source=0, template_source=0
- after `[1,270,000,1,275,000)`: diamond_then_template_source=124, template_source=123
- after `[1,385,000,1,390,000)`: diamond_then_template_source=124, template_source=123
- after `[1,820,000,1,825,000)`: diamond_then_template_source=124, template_source=123
- after `[2,095,000,2,100,000)`: diamond_then_template_source=124, template_source=123
- after `[30,000,000,30,100,000)`: diamond_then_template_source=124, template_source=123
