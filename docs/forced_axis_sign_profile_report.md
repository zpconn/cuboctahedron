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
| `[10000000,10100000)` | 4 | 100,000 | 3,278 | 96,722 | 0 | 57,652 | 26,682 | 4,143 | 6.772s | 30,800 kB |
| `[30000000,30100000)` | 4 | 100,000 | 1,928 | 98,072 | 0 | 62,683 | 23,857 | 961 | 6.910s | 25,812 kB |
| `[60000000,60100000)` | 4 | 100,000 | 1,420 | 98,580 | 0 | 73,573 | 19,573 | 1,471 | 6.401s | 23,040 kB |
| `[90000000,90100000)` | 4 | 100,000 | 1,029 | 98,971 | 0 | 52,135 | 36,342 | 2,251 | 7.027s | 24,520 kB |

The `[0,10000)` serial and 4-worker runs agree on all headline counts.  The
4-worker `[0,100000)` run reproduces the older diagnostic counts for forced
zero denominators and forced-balance survivors while using bounded memory.
The four disjoint 100k windows also have zero shadow/linear mismatches and
remain memory-light.

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
- `scripts/generated/forced_axis_sign_profile_010000000_010100000.json`
- `scripts/generated/forced_axis_sign_profile_010000000_010100000.md`
- `scripts/generated/forced_axis_sign_profile_030000000_030100000.json`
- `scripts/generated/forced_axis_sign_profile_030000000_030100000.md`
- `scripts/generated/forced_axis_sign_profile_060000000_060100000.json`
- `scripts/generated/forced_axis_sign_profile_060000000_060100000.md`
- `scripts/generated/forced_axis_sign_profile_090000000_090100000.json`
- `scripts/generated/forced_axis_sign_profile_090000000_090100000.md`

## Decision

Track 2 profiling infrastructure is accepted as a diagnostic surface.  The
forced-axis sign filter is cheap enough to run in bounded parallel windows and
is consistent with the Lean-checked Track 1 classifier on the calibration
range.

The result does **not** show that the forced-axis sign filter alone finishes
the nontranslation branch.  In `[0,100000)`, it leaves `9,036` forced-balance
survivors.  The disjoint 100k windows leave between `961` and `4,143`
survivors, so survivor density is highly position-dependent.  Those survivors
need residual axis-family certificates or a stronger semantic quotient.

Next nontranslation work:

1. Add survivor clustering by terminal affine-axis failure kind, reusing the
   existing exact residual classifier where possible.
2. Decide whether residual families are small enough under the keys
   `(reduced shadow, primitive axis, forced signs, terminal failure)` or
   whether the plan should promote empty-cone / Gordan prefix pruning before
   residual Lean emission.
