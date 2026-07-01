# Forced-Axis Sign Profile Report

This report tracks the first exact external validation of the nontranslation
forced-axis sign filter after the Lean-checked shadow normal-form split.

The profiler is:

```text
scripts/forced_axis_sign_profile.py
```

It is not trusted proof.  It is an exact arithmetic diagnostic used to decide
whether the nontranslation branch should be organized by reduced shadow,
primitive axis, and forced signed-lift signatures.

## Convention

The product order matches the shadow normal-form classifier:

```text
R(w[0]) * R(w[1]) * ... * R(w[12]) * R(x)
```

The profiler uses nonempty reduced triangular shadow as the nontranslation
classifier.  It also recomputes the exact linear matrix as a diagnostic and
reports shadow/linear mismatches.

For a nontranslation word it computes the exact one-dimensional fixed axis of
`M - I`, checks both orientations, requires the final `X+` return dot to be
positive, then classifies the positive orientation as:

- final-axis zero;
- forced zero denominator;
- bad pair/face balance;
- forced-balance survivor.

## Calibration Runs

| range | jobs | scanned | shadow identity | shadow nonidentity | mismatches | forced zero | bad balance | survivors | elapsed | max RSS |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0,100)` | 1 | 100 | 30 | 70 | 0 | 52 | 0 | 6 | 0.017s | n/a |
| `[0,10000)` | 1 | 10,000 | 712 | 9,288 | 0 | 5,601 | 2,078 | 1,014 | 2.31s | 20,352 kB |
| `[0,10000)` | 4 | 10,000 | 712 | 9,288 | 0 | 5,601 | 2,078 | 1,014 | 0.616s | 21,120 kB |
| `[0,100000)` | 4 | 100,000 | 5,565 | 94,435 | 0 | 54,794 | 24,364 | 9,036 | 5.883s | 29,840 kB |

The `[0,10000)` serial and 4-worker runs agree on all headline counts.  The
4-worker `[0,100000)` run reproduces the older diagnostic counts for forced
zero denominators and forced-balance survivors while using bounded memory.

## Artifacts

- `scripts/forced_axis_sign_profile.py`
- `scripts/generated/forced_axis_sign_profile_000000000_000000100.json`
- `scripts/generated/forced_axis_sign_profile_000000000_000000100.md`
- `scripts/generated/forced_axis_sign_profile_000000000_000010000_serial.json`
- `scripts/generated/forced_axis_sign_profile_000000000_000010000_serial.md`
- `scripts/generated/forced_axis_sign_profile_000000000_000010000_parallel.json`
- `scripts/generated/forced_axis_sign_profile_000000000_000010000_parallel.md`
- `scripts/generated/forced_axis_sign_profile_000000000_000100000.json`
- `scripts/generated/forced_axis_sign_profile_000000000_000100000.md`

## Decision

Track 2 profiling infrastructure is accepted as a diagnostic surface.  The
forced-axis sign filter is cheap enough to run in bounded parallel windows and
is consistent with the Lean-checked Track 1 classifier on the calibration
range.

The result does **not** show that the forced-axis sign filter alone finishes
the nontranslation branch.  In `[0,100000)`, it leaves `9,036` forced-balance
survivors.  Those survivors need residual axis-family certificates or a
stronger semantic quotient.

Next nontranslation work:

1. Run this profiler on disjoint calibration windows away from rank zero.
2. Add survivor clustering by terminal affine-axis failure kind, reusing the
   existing exact residual classifier where possible.
3. Decide whether residual families are small enough under the keys
   `(reduced shadow, primitive axis, forced signs, terminal failure)` or
   whether the plan should promote empty-cone / Gordan prefix pruning before
   residual Lean emission.
